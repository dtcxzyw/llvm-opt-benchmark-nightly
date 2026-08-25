Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/block_cache_trace_analyzer?download=true
inline.NumInlined: 8970
inline.NumDeleted: 3445
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_ZN7rocksdb23BlockCacheTraceAnalyzerC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_S8_bbbOSt10unique_ptrINS_24BlockCacheTraceSimulatorESt14default_deleteISA_EE:bb.a
    i64 0, label %bb.j
  ]

bb.h:                                             ; preds = %._crit_edge.i.i11
  %i.aa = load i8, ptr %i.r, align 1, !tbaa !17
  store i8 %i.aa, ptr %i.z, align 1, !tbaa !17
  br label %bb.j

bb.i:                                             ; preds = %._crit_edge.i.i11
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.z, ptr align 1 %i.r, i64 %i.t, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %._crit_edge.i.i11
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.t, ptr %i.ab, align 8, !tbaa !26
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.t
  store i8 0, ptr %i.ac, align 1, !tbaa !17
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  store ptr %i.ae, ptr %i.ad, align 8, !tbaa !81
  %i.af = load ptr, ptr %3, align 8, !tbaa !12    ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !26 ; 8 uses
  %i.ai = icmp ugt i64 %i.ah, 15
  br i1 %i.ai, label %bb.k, label %._crit_edge.i.i18

bb.k:                                             ; preds = %bb.j
  %i.aj = icmp slt i64 %i.ah, 0
  br i1 %i.aj, label %.noexc.i21, label %bb.l

.noexc.i21:                                       ; preds = %bb.k
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.243) #32
          to label %.noexc22 unwind label %bb.q

.noexc22:                                         ; preds = %.noexc.i21
  unreachable

bb.l:                                             ; preds = %bb.k
  %i.ak = add nuw i64 %i.ah, 1                    ; 2 uses
  %i.al = icmp slt i64 %i.ak, 0
  br i1 %i.al, label %.noexc6.i20, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i19, !prof !234

.noexc6.i20:                                      ; preds = %bb.l
  invoke void @_ZSt17__throw_bad_allocv() #32
          to label %.noexc23 unwind label %bb.q

.noexc23:                                         ; preds = %.noexc6.i20
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i19: ; preds = %bb.l
  %i.am = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ak) #31
          to label %.noexc24 unwind label %bb.q   ; 2 uses

.noexc24:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i19
  store ptr %i.am, ptr %i.ad, align 8, !tbaa !12
  store i64 %i.ah, ptr %i.ae, align 8, !tbaa !17
  br label %._crit_edge.i.i18

._crit_edge.i.i18:                                ; preds = %.noexc24, %bb.j
  %i.an = phi ptr [ %i.am, %.noexc24 ], [ %i.ae, %bb.j ] ; 3 uses
  switch i64 %i.ah, label %bb.n [
    i64 1, label %bb.m
    i64 0, label %bb.o
  ]

bb.m:                                             ; preds = %._crit_edge.i.i18
  %i.ao = load i8, ptr %i.af, align 1, !tbaa !17
  store i8 %i.ao, ptr %i.an, align 1, !tbaa !17
  br label %bb.o

bb.n:                                             ; preds = %._crit_edge.i.i18
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.an, ptr align 1 %i.af, i64 %i.ah, i1 false)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %._crit_edge.i.i18
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 %i.ah, ptr %i.ap, align 8, !tbaa !26
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ah
  store i8 0, ptr %i.aq, align 1, !tbaa !17
  %i.ar = zext i1 %6 to i8
  %i.as = zext i1 %5 to i8
  %i.at = zext i1 %4 to i8
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i8 %i.at, ptr %i.au, align 8, !tbaa !618
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 105
  store i8 %i.as, ptr %i.av, align 1, !tbaa !619
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 106
  store i8 %i.ar, ptr %i.aw, align 2, !tbaa !620
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ay = load i64, ptr %7, align 8, !tbaa !24
  store i64 %i.ay, ptr %i.ax, align 8, !tbaa !24
  store ptr null, ptr %7, align 8, !tbaa !24
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  store i32 0, ptr %i.az, align 8, !tbaa !156
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 152
  store ptr null, ptr %i.ba, align 8, !tbaa !19
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %i.az, ptr %i.bb, align 8, !tbaa !121
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 168
  store ptr %i.az, ptr %i.bc, align 8, !tbaa !157
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i64 0, ptr %i.bd, align 8, !tbaa !158
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 3 uses
  store i32 0, ptr %i.be, align 8, !tbaa !156
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 200
  store ptr null, ptr %i.bf, align 8, !tbaa !19
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 208
  store ptr %i.be, ptr %i.bg, align 8, !tbaa !121
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 216
  store ptr %i.be, ptr %i.bh, align 8, !tbaa !157
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 224
  store i64 0, ptr %i.bi, align 8, !tbaa !158
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 280
  store ptr %i.bk, ptr %i.bj, align 8, !tbaa !621
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 240
  store i64 1, ptr %i.bl, align 8, !tbaa !622
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 264
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bm, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.bn, align 8, !tbaa !623
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 3 uses
  store i32 0, ptr %i.bp, align 8, !tbaa !156
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 360
  store ptr null, ptr %i.bq, align 8, !tbaa !19
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 368
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.bo, i8 0, i64 72, i1 false)
  store ptr %i.bp, ptr %i.br, align 8, !tbaa !121
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 376
  store ptr %i.bp, ptr %i.bs, align 8, !tbaa !157
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 384
  store i64 0, ptr %i.bt, align 8, !tbaa !158
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 3 uses
  store i32 0, ptr %i.bu, align 8, !tbaa !156
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 408
  store ptr null, ptr %i.bv, align 8, !tbaa !19
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 416
  store ptr %i.bu, ptr %i.bw, align 8, !tbaa !121
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 424
  store ptr %i.bu, ptr %i.bx, align 8, !tbaa !157
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 432
  store i64 0, ptr %i.by, align 8, !tbaa !158
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 3 uses
  store i32 0, ptr %i.bz, align 8, !tbaa !156
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 456
  store ptr null, ptr %i.ca, align 8, !tbaa !19
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 464
  store ptr %i.bz, ptr %i.cb, align 8, !tbaa !121
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 472
  store ptr %i.bz, ptr %i.cc, align 8, !tbaa !157
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 480
  store i64 0, ptr %i.cd, align 8, !tbaa !158
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 488
  store i64 1, ptr %i.ce, align 8, !tbaa !624
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 496
  store i64 1, ptr %i.cf, align 8, !tbaa !625
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 1049080
  store ptr null, ptr %i.cg, align 8, !tbaa !626
  ret void

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i12, %.noexc6.i13, %.noexc.i14
  %i.ch = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i19, %.noexc6.i20, %.noexc.i21
  %i.ci = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cj = load ptr, ptr %i.p, align 8, !tbaa !12  ; 2 uses
  %i.ck = icmp eq ptr %i.cj, %i.q
  br i1 %i.ck, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.q
  %i.cl = load i64, ptr %i.q, align 8, !tbaa !17
  %i.cm = add i64 %i.cl, 1
  tail call void @_ZdlPvm(ptr noundef %i.cj, i64 noundef %i.cm) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.p
  %.pn = phi { ptr, i32 } [ %i.ch, %bb.p ], [ %i.ci, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.ci, %bb.q ]
  %i.cn = load ptr, ptr %i.b, align 8, !tbaa !12  ; 2 uses
  %i.co = icmp eq ptr %i.cn, %i.c
  br i1 %i.co, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cp = load i64, ptr %i.c, align 8, !tbaa !17
  %i.cq = add i64 %i.cp, 1
  tail call void @_ZdlPvm(ptr noundef %i.cn, i64 noundef %i.cq) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26
  resume { ptr, i32 } %.pn
}

declare noundef ptr @_ZN7rocksdb3Env7DefaultEv() local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define void @_ZNK7rocksdb23BlockCacheTraceAnalyzer20ComputeReuseDistanceEPNS_15BlockAccessInfoE(ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(1049088) %0, ptr noundef %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load i64, ptr %i.b, align 8, !tbaa !627
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 272
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 296 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !121  ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 280 ; 5 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %._crit_edge.a, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !19   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 4 uses
  %.not10.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not10.i.i.i, label %.lr.ph.split.us, label %.lr.ph.i.i.i

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !628
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.p = load i64, ptr %i.o, align 8, !tbaa !631
  br label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN7rocksdb15BlockAccessInfoESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit.us

_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN7rocksdb15BlockAccessInfoESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit.us: ; preds = %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN7rocksdb15BlockAccessInfoESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit.us, %.lr.ph.split.us
  %.sroa.010.013.us = phi ptr [ %i.g, %.lr.ph.split.us ], [ %i.s, %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN7rocksdb15BlockAccessInfoESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit.us ]
  %i.q = phi i64 [ 0, %.lr.ph.split.us ], [ %i.r, %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN7rocksdb15BlockAccessInfoESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit.us ]
  %i.r = add i64 %i.q, %i.p                       ; 2 uses
  %i.s = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.010.013.us) #33 ; 2 uses
  %i.t = icmp eq ptr %i.s, %i.h
  br i1 %i.t, label %._crit_edge.a, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN7rocksdb15BlockAccessInfoESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit.us

._crit_edge.a:                                    ; preds = %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN7rocksdb15BlockAccessInfoESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit, %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN7rocksdb15BlockAccessInfoESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit.us, %bb.b
  %.lcssa = phi i64 [ 0, %bb.b ], [ %i.r, %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN7rocksdb15BlockAccessInfoESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit.us ], [ %i.be, %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN7rocksdb15BlockAccessInfoESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit ]
  store i64 %.lcssa, ptr %i.a, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 320
  %i.v = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEEixERS3_(ptr noundef nonnull align 8 dereferenceable(48) %i.u, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !143
  %i.x = add i64 %i.w, 1
  store i64 %i.x, ptr %i.v, align 8, !tbaa !143
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 288 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !19
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr noundef %i.z)
          to label %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE5clearEv.exit unwind label %bb.c

bb.c:                                             ; preds = %._crit_edge.a
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  %i.ab = extractvalue { ptr, i32 } %i.aa, 0
  call void @__clang_call_terminate(ptr %i.ab) #29
  unreachable

_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE5clearEv.exit: ; preds = %._crit_edge.a
  store ptr null, ptr %i.y, align 8, !tbaa !19
  store ptr %i.h, ptr %i.f, align 8, !tbaa !121
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 304
  store ptr %i.h, ptr %i.ac, align 8, !tbaa !157
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 312
  store i64 0, ptr %i.ad, align 8, !tbaa !158
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  br label %bb.f

.lr.ph.i.i.i:                                     ; preds = %.lr.ph, %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN7rocksdb15BlockAccessInfoESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit
  %.sroa.010.013 = phi ptr [ %i.bf, %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN7rocksdb15BlockAccessInfoESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit ], [ %i.g, %.lr.ph ] ; 3 uses
  %i.ae = phi i64 [ %i.be, %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN7rocksdb15BlockAccessInfoESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit ], [ 0, %.lr.ph ]
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.010.013, i64 32
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.010.013, i64 40
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !26 ; 4 uses
  %i.ai = load ptr, ptr %i.af, align 8            ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.k, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %i.l, %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ]
  %i.aj = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !26 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.ah, i64 %i.ak) ; 2 uses
  %i.al = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.al, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.d
  %i.am = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !12
  %i.ao = tail call i32 @memcmp(ptr noundef %i.an, ptr noundef %i.ai, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #30 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.ao, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.d
  %i.ap = sub i64 %i.ak, %i.ah
  %spec.select7.i.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.ap, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.ao, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.aq = icmp slt i32 %.0.i.i.i.i.i.i, 0         ; 2 uses
  %.19.i.i.i = select i1 %i.aq, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 5 uses
  %.1.in.v.i.i.i = select i1 %i.aq, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !151 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN7rocksdb15BlockAccessInfoEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISB_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i, label %bb.d, !llvm.loop !632

_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN7rocksdb15BlockAccessInfoEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISB_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.ar = icmp eq ptr %.19.i.i.i, %i.l
  br i1 %i.ar, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN7rocksdb15BlockAccessInfoESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit, label %bb.e

bb.e:                                             ; preds = %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN7rocksdb15BlockAccessInfoEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISB_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.at = load i64, ptr %i.as, align 8, !tbaa !26 ; 2 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.at, i64 %i.ah) ; 2 uses
  %i.au = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.au, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.e
  %i.av = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !12
  %i.ax = tail call i32 @memcmp(ptr noundef %i.ai, ptr noundef %i.aw, i64 noundef %.sroa.speculated.i.i.i.i.i) #30 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.ax, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %bb.e
  %i.ay = sub i64 %i.ah, %i.at
  %spec.select7.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.ay, i64 -2147483648)
  %.08.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i
  %.0.i.i.i.i.i = phi i32 [ %i.ax, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i ]
  %i.az = icmp slt i32 %.0.i.i.i.i.i, 0
  %spec.select.i.i = select i1 %i.az, ptr %i.l, ptr %.19.i.i.i
  br label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN7rocksdb15BlockAccessInfoESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit

_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN7rocksdb15BlockAccessInfoESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit: ; preds = %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN7rocksdb15BlockAccessInfoEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISB_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i
  %.sroa.0.0.i.i = phi ptr [ %spec.select.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i ], [ %i.l, %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN7rocksdb15BlockAccessInfoEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISB_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i ]
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 64
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !628
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !631
  %i.be = add i64 %i.ae, %i.bd                    ; 2 uses
  %i.bf = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.010.013) #33 ; 2 uses
  %i.bg = icmp eq ptr %i.bf, %i.h
  br i1 %i.bg, label %._crit_edge.a, label %.lr.ph.i.i.i

bb.f:                                             ; preds = %bb.a, %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE5clearEv.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb23BlockCacheTraceAnalyzer12RecordAccessERKNS_21BlockCacheTraceRecordE(ptr dead_on_unwind noalias writable sret(%"class.rocksdb::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(1049088) %1, ptr noundef nonnull align 8 dereferenceable(185) %2) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::tuple.597", align 8    ; 4 uses
  %4 = alloca %"class.std::tuple.461", align 1    ; 3 uses
  %5 = alloca %"class.std::tuple.530", align 8    ; 4 uses
  %6 = alloca %"class.std::tuple.461", align 1    ; 3 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %8 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.c = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7rocksdb31ColumnFamilyAccessInfoAggregateESt4lessIS5_ESaISt4pairIKS5_S7_EEEixERSB_(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.b) ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !19   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %.not10.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not10.i.i.i.i, label %.critedge.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a
  %i.h = load i64, ptr %i.d, align 8, !tbaa !143  ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.f, %.lr.ph.i.i.i.i ], [ %.1.i.i.i.i, %bb.b ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %i.g, %.lr.ph.i.i.i.i ], [ %.19.i.i.i.i, %bb.b ]
  %i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.j = load i64, ptr %i.i, align 8, !tbaa !143
  %i.k = icmp ult i64 %i.j, %i.h                  ; 2 uses
  %.19.i.i.i.i = select i1 %i.k, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 6 uses
  %.1.in.v.i.i.i.i = select i1 %i.k, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !151 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt3mapImN7rocksdb26SSTFileAccessInfoAggregateESt4lessImESaISt4pairIKmS1_EEE11lower_boundERS5_.exit.i, label %bb.b, !llvm.loop !633

_ZNSt3mapImN7rocksdb26SSTFileAccessInfoAggregateESt4lessImESaISt4pairIKmS1_EEE11lower_boundERS5_.exit.i: ; preds = %bb.b
  %i.l = icmp eq ptr %.19.i.i.i.i, %i.g
  br i1 %i.l, label %.critedge.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt3mapImN7rocksdb26SSTFileAccessInfoAggregateESt4lessImESaISt4pairIKmS1_EEE11lower_boundERS5_.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.n = load i64, ptr %i.m, align 8, !tbaa !143
  %i.o = icmp ult i64 %i.h, %i.n
  br i1 %i.o, label %.critedge.i, label %_ZNSt3mapImN7rocksdb26SSTFileAccessInfoAggregateESt4lessImESaISt4pairIKmS1_EEEixERS5_.exit

.critedge.i:                                      ; preds = %bb.c, %_ZNSt3mapImN7rocksdb26SSTFileAccessInfoAggregateESt4lessImESaISt4pairIKmS1_EEE11lower_boundERS5_.exit.i, %bb.a
  %.08.lcssa.i.i.i11.i = phi ptr [ %.19.i.i.i.i, %bb.c ], [ %.19.i.i.i.i, %_ZNSt3mapImN7rocksdb26SSTFileAccessInfoAggregateESt4lessImESaISt4pairIKmS1_EEE11lower_boundERS5_.exit.i ], [ %i.g, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  store ptr %i.d, ptr %5, align 8, !tbaa !148
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  %i.p = call ptr @_ZNSt8_Rb_treeImSt4pairIKmN7rocksdb26SSTFileAccessInfoAggregateEESt10_Select1stIS4_ESt4lessImESaIS4_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESF_IJEEEEESt17_Rb_tree_iteratorIS4_ESt23_Rb_tree_const_iteratorIS4_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr %.08.lcssa.i.i.i11.i, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 1 dereferenceable(1) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br label %_ZNSt3mapImN7rocksdb26SSTFileAccessInfoAggregateESt4lessImESaISt4pairIKmS1_EEEixERS5_.exit

_ZNSt3mapImN7rocksdb26SSTFileAccessInfoAggregateESt4lessImESaISt4pairIKmS1_EEEixERS5_.exit: ; preds = %bb.c, %.critedge.i
  %.sroa.06.0.i = phi ptr [ %i.p, %.critedge.i ], [ %.19.i.i.i.i, %bb.c ] ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 40
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.s = load i32, ptr %i.r, align 8, !tbaa !634
  store i32 %i.s, ptr %i.q, align 8, !tbaa !636
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 48
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 64
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !19   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 56 ; 3 uses
  %.not10.i.i.i.i44 = icmp eq ptr %i.w, null
  br i1 %.not10.i.i.i.i44, label %.critedge.i54, label %.lr.ph.i.i.i.i45

.lr.ph.i.i.i.i45:                                 ; preds = %_ZNSt3mapImN7rocksdb26SSTFileAccessInfoAggregateESt4lessImESaISt4pairIKmS1_EEEixERS5_.exit
  %i.y = load i8, ptr %i.u, align 8, !tbaa !300   ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i.i.i.i45
  %.012.i.i.i.i46 = phi ptr [ %i.w, %.lr.ph.i.i.i.i45 ], [ %.1.i.i.i.i51, %bb.d ] ; 3 uses
  %.0811.i.i.i.i47 = phi ptr [ %i.x, %.lr.ph.i.i.i.i45 ], [ %.19.i.i.i.i48, %bb.d ]
  %i.z = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i46, i64 32
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !300
  %i.ab = icmp slt i8 %i.aa, %i.y                 ; 2 uses
  %.19.i.i.i.i48 = select i1 %i.ab, ptr %.0811.i.i.i.i47, ptr %.012.i.i.i.i46 ; 6 uses
  %.1.in.v.i.i.i.i49 = select i1 %i.ab, i64 24, i64 16
  %.1.in.i.i.i.i50 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i46, i64 %.1.in.v.i.i.i.i49
  %.1.i.i.i.i51 = load ptr, ptr %.1.in.i.i.i.i50, align 8, !tbaa !151 ; 2 uses
  %.not.i.i.i.i52 = icmp eq ptr %.1.i.i.i.i51, null
  br i1 %.not.i.i.i.i52, label %_ZNSt3mapIN7rocksdb9TraceTypeENS0_28BlockTypeAccessInfoAggregateESt4lessIS1_ESaISt4pairIKS1_S2_EEE11lower_boundERS6_.exit.i, label %bb.d, !llvm.loop !637

_ZNSt3mapIN7rocksdb9TraceTypeENS0_28BlockTypeAccessInfoAggregateESt4lessIS1_ESaISt4pairIKS1_S2_EEE11lower_boundERS6_.exit.i: ; preds = %bb.d
  %i.ac = icmp eq ptr %.19.i.i.i.i48, %i.x
  br i1 %i.ac, label %.critedge.i54, label %bb.e

bb.e:                                             ; preds = %_ZNSt3mapIN7rocksdb9TraceTypeENS0_28BlockTypeAccessInfoAggregateESt4lessIS1_ESaISt4pairIKS1_S2_EEE11lower_boundERS6_.exit.i
  %i.ad = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i48, i64 32
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !300
  %i.af = icmp slt i8 %i.y, %i.ae
  br i1 %i.af, label %.critedge.i54, label %_ZNSt3mapIN7rocksdb9TraceTypeENS0_28BlockTypeAccessInfoAggregateESt4lessIS1_ESaISt4pairIKS1_S2_EEEixERS6_.exit

.critedge.i54:                                    ; preds = %bb.e, %_ZNSt3mapIN7rocksdb9TraceTypeENS0_28BlockTypeAccessInfoAggregateESt4lessIS1_ESaISt4pairIKS1_S2_EEE11lower_boundERS6_.exit.i, %_ZNSt3mapImN7rocksdb26SSTFileAccessInfoAggregateESt4lessImESaISt4pairIKmS1_EEEixERS5_.exit
  %.08.lcssa.i.i.i11.i55 = phi ptr [ %.19.i.i.i.i48, %bb.e ], [ %.19.i.i.i.i48, %_ZNSt3mapIN7rocksdb9TraceTypeENS0_28BlockTypeAccessInfoAggregateESt4lessIS1_ESaISt4pairIKS1_S2_EEE11lower_boundERS6_.exit.i ], [ %i.x, %_ZNSt3mapImN7rocksdb26SSTFileAccessInfoAggregateESt4lessImESaISt4pairIKmS1_EEEixERS5_.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  store ptr %i.u, ptr %3, align 8, !tbaa !304
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.ag = call ptr @_ZNSt8_Rb_treeIN7rocksdb9TraceTypeESt4pairIKS1_NS0_28BlockTypeAccessInfoAggregateEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS3_EESG_IJEEEEESt17_Rb_tree_iteratorIS5_ESt23_Rb_tree_const_iteratorIS5_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.t, ptr %.08.lcssa.i.i.i11.i55, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %_ZNSt3mapIN7rocksdb9TraceTypeENS0_28BlockTypeAccessInfoAggregateESt4lessIS1_ESaISt4pairIKS1_S2_EEEixERS6_.exit

_ZNSt3mapIN7rocksdb9TraceTypeENS0_28BlockTypeAccessInfoAggregateESt4lessIS1_ESaISt4pairIKS1_S2_EEEixERS6_.exit: ; preds = %bb.e, %.critedge.i54
  %.sroa.06.0.i53 = phi ptr [ %i.ag, %.critedge.i54 ], [ %.19.i.i.i.i48, %bb.e ] ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i53, i64 40 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 8 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i53, i64 56
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !19 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i53, i64 48 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.ak, null
  br i1 %.not10.i.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7rocksdb15BlockAccessInfoESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt3mapIN7rocksdb9TraceTypeENS0_28BlockTypeAccessInfoAggregateESt4lessIS1_ESaISt4pairIKS1_S2_EEEixERS6_.exit
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.an = load i64, ptr %i.am, align 8, !tbaa !26 ; 4 uses
  %i.ao = load ptr, ptr %i.ai, align 8            ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !26 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.an, i64 %i.aq) ; 2 uses
  %i.ar = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.ar, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.f
  %i.as = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !12
  %i.au = call i32 @memcmp(ptr noundef %i.at, ptr noundef %i.ao, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #30 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.au, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.f
  %i.av = sub i64 %i.aq, %i.an
  %spec.select7.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.av, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.au, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.aw = icmp slt i32 %.0.i.i.i.i.i.i, 0         ; 2 uses
  %.19.i.i.i = select i1 %i.aw, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 4 uses
  %.1.in.v.i.i.i = select i1 %i.aw, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !151 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7rocksdb15BlockAccessInfoEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_.exit.i.i, label %bb.f, !llvm.loop !638

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7rocksdb15BlockAccessInfoEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_.exit.i.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.ax = icmp eq ptr %.19.i.i.i, %i.al
  br i1 %i.ax, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7rocksdb15BlockAccessInfoESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit.thread, label %bb.g

bb.g:                                             ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7rocksdb15BlockAccessInfoEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_.exit.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !26 ; 2 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.az, i64 %i.an) ; 2 uses
  %i.ba = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.ba, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.g
  %i.bb = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !12
  %i.bd = call i32 @memcmp(ptr noundef %i.ao, ptr noundef %i.bc, i64 noundef %.sroa.speculated.i.i.i.i.i) #30 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.bd, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7rocksdb15BlockAccessInfoESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %bb.g
  %i.be = sub i64 %i.an, %i.az
  %spec.select7.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.be, i64 -2147483648)
  %.08.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i to i32
  br label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7rocksdb15BlockAccessInfoESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7rocksdb15BlockAccessInfoESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i
  %.0.i.i.i.i.i = phi i32 [ %i.bd, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i ]
  %i.bf = icmp slt i32 %.0.i.i.i.i.i, 0
  br i1 %i.bf, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7rocksdb15BlockAccessInfoESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit.thread, label %bb.h

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7rocksdb15BlockAccessInfoESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit.thread: ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7rocksdb15BlockAccessInfoEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_.exit.i.i, %_ZNSt3mapIN7rocksdb9TraceTypeENS0_28BlockTypeAccessInfoAggregateESt4lessIS1_ESaISt4pairIKS1_S2_EEEixERS6_.exit, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7rocksdb15BlockAccessInfoESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 488 ; 3 uses
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !624
  %i.bi = call noundef nonnull align 8 dereferenceable(512) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7rocksdb15BlockAccessInfoESt4lessIS5_ESaISt4pairIKS5_S7_EEEixERSB_(ptr noundef nonnull align 8 dereferenceable(48) %i.ah, ptr noundef nonnull align 8 dereferenceable(32) %i.ai)
  store i64 %i.bh, ptr %i.bi, align 8, !tbaa !639
  %i.bj = load i64, ptr %i.bg, align 8, !tbaa !624
  %i.bk = add i64 %i.bj, 1
  store i64 %i.bk, ptr %i.bg, align 8, !tbaa !624
  br label %bb.h
end_hunk_0
begin_hunk_1_@_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St3mapIN7rocksdb9TraceTypeENS9_13HistogramStatESt4lessISA_ESaIS6_IKSA_SB_EEEESt10_Select1stISI_ESC_IS5_ESaISI_EE17_M_construct_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESS_IJEEEEEvPSt13_Rb_tree_nodeISI_EDpOT_:bb.a
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i: ; preds = %bb.c
  %i.l = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #31
          to label %.noexc9 unwind label %bb.f    ; 2 uses

.noexc9:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i
  store ptr %i.l, ptr %i.a, align 8, !tbaa !12
  store i64 %i.g, ptr %i.d, align 8, !tbaa !17
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.noexc9, %bb.a
  %i.m = phi ptr [ %i.l, %.noexc9 ], [ %i.d, %bb.a ] ; 3 uses
  switch i64 %i.g, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.h
  ]

bb.d:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.n = load i8, ptr %i.e, align 1, !tbaa !17
  store i8 %i.n, ptr %i.m, align 1, !tbaa !17
  br label %bb.h

bb.e:                                             ; preds = %._crit_edge.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.m, ptr align 1 %i.e, i64 %i.g, i1 false)
  br label %bb.h

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i, %.noexc6.i.i.i.i, %.noexc.i.i.i.i
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  %i.q = tail call ptr @__cxa_begin_catch(ptr %i.p) #30 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %1, i64 noundef 112) #28
  invoke void @__cxa_rethrow() #32
          to label %bb.k unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.i unwind label %bb.j

bb.h:                                             ; preds = %._crit_edge.i.i.i.i.i, %bb.d, %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i64 %i.g, ptr %i.s, align 8, !tbaa !26
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.g
  store i8 0, ptr %i.t, align 1, !tbaa !17
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 88
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, i8 0, i64 24, i1 false)
  store ptr %i.v, ptr %i.w, align 8, !tbaa !121
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 96
  store ptr %i.v, ptr %i.x, align 8, !tbaa !157
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 104
  store i64 0, ptr %i.y, align 8, !tbaa !158
  ret void

bb.i:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.r

bb.j:                                             ; preds = %bb.g
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  %i.aa = extractvalue { ptr, i32 } %i.z, 0
  tail call void @__clang_call_terminate(ptr %i.aa) #29
  unreachable

bb.k:                                             ; preds = %bb.f
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St3mapIN7rocksdb9TraceTypeENS9_13HistogramStatESt4lessISA_ESaIS6_IKSA_SB_EEEESt10_Select1stISI_ESC_IS5_ESaISI_EE24_M_get_insert_unique_posERS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.02931 = load ptr, ptr %i.a, align 8, !tbaa !151 ; 2 uses
  %.not32 = icmp eq ptr %.02931, null
  br i1 %.not32, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !26   ; 2 uses
  %i.e = load ptr, ptr %1, align 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
  %.02933 = phi ptr [ %.02931, %.lr.ph ], [ %.029, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ] ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.02933, i64 40
  %i.g = load i64, ptr %i.f, align 8, !tbaa !26   ; 2 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.g, i64 %i.d) ; 2 uses
  %i.h = icmp eq i64 %.sroa.speculated.i.i.i, 0
  br i1 %i.h, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %.02933, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !12
  %i.k = tail call i32 @memcmp(ptr noundef %i.e, ptr noundef %i.j, i64 noundef %.sroa.speculated.i.i.i) #30 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.k, 0
  br i1 %.not.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %bb.b
  %i.l = sub i64 %i.d, %i.g
  %spec.select7.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.l, i64 -2147483648)
  %.08.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i = trunc nsw i64 %.08.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i
  %.0.i.i.i = phi i32 [ %i.k, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i ], [ %.0.i6.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i ]
  %i.m = icmp slt i32 %.0.i.i.i, 0                ; 2 uses
  %.in.v = select i1 %i.m, i64 16, i64 24
  %.in = getelementptr inbounds nuw i8, ptr %.02933, i64 %.in.v
  %.029 = load ptr, ptr %.in, align 8, !tbaa !151 ; 2 uses
  %.not = icmp eq ptr %.029, null
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !1256

._crit_edge:                                      ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
  br i1 %i.m, label %._crit_edge.thread, label %bb.d

._crit_edge.thread:                               ; preds = %bb.a, %._crit_edge
  %.028.lcssa39 = phi ptr [ %.02933, %._crit_edge ], [ %i.b, %bb.a ] ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !121
  %i.p = icmp eq ptr %.028.lcssa39, %i.o
  br i1 %i.p, label %bb.e, label %bb.c

bb.c:                                             ; preds = %._crit_edge.thread
  %i.q = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.028.lcssa39) #33
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge
  %.028.lcssa38 = phi ptr [ %.028.lcssa39, %bb.c ], [ %.02933, %._crit_edge ]
  %.sroa.014.0 = phi ptr [ %i.q, %bb.c ], [ %.02933, %._crit_edge ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.014.0, i64 40
  %i.s = load i64, ptr %i.r, align 8, !tbaa !26   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !26   ; 2 uses
  %.sroa.speculated.i.i.i5 = tail call i64 @llvm.umin.i64(i64 %i.u, i64 %i.s) ; 2 uses
  %i.v = icmp eq i64 %.sroa.speculated.i.i.i5, 0
  br i1 %i.v, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6: ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.014.0, i64 32
  %i.x = load ptr, ptr %1, align 8, !tbaa !12
  %i.y = load ptr, ptr %i.w, align 8, !tbaa !12
  %i.z = tail call i32 @memcmp(ptr noundef %i.y, ptr noundef %i.x, i64 noundef %.sroa.speculated.i.i.i5) #30 ; 2 uses
  %.not.i.i.i7 = icmp eq i32 %i.z, 0
  br i1 %.not.i.i.i7, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6, %bb.d
  %i.aa = sub i64 %i.s, %i.u
  %spec.select7.i.i.i.i10 = tail call i64 @llvm.smax.i64(i64 %i.aa, i64 -2147483648)
  %.08.i.i.i.i11 = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i10, i64 2147483647)
  %.0.i6.i.i.i12 = trunc nsw i64 %.08.i.i.i.i11 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9
  %.0.i.i.i8 = phi i32 [ %i.z, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6 ], [ %.0.i6.i.i.i12, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9 ]
  %i.ab = icmp slt i32 %.0.i.i.i8, 0              ; 2 uses
  %spec.select = select i1 %i.ab, ptr null, ptr %.sroa.014.0
  %spec.select30 = select i1 %i.ab, ptr %.028.lcssa38, ptr null
  br label %bb.e

bb.e:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13, %._crit_edge.thread
  %.sroa.027.0 = phi ptr [ %spec.select, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13 ], [ null, %._crit_edge.thread ]
  %.sroa.4.0 = phi ptr [ %spec.select30, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13 ], [ %.028.lcssa39, %._crit_edge.thread ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.027.0, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.4.0, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZNSt17_Function_handlerIFvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmjN7rocksdb9TraceTypeES7_mRKNS8_15BlockAccessInfoEEZNKS8_23BlockCacheTraceAnalyzer21PrintAccessCountStatsEbjjE3$_0E9_M_invokeERKSt9_Any_dataS7_OmOjOS9_S7_SK_SC_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr nofree nonnull readonly align 8 captures(none) %2, ptr nofree nonnull readonly align 4 captures(none) %3, ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr nofree nonnull readonly align 8 captures(none) %6, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(512) %7) #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"class.std::tuple.597", align 8    ; 4 uses
  %9 = alloca %"class.std::tuple.461", align 1    ; 3 uses
  %10 = alloca %"class.std::tuple.597", align 8   ; 4 uses
  %11 = alloca %"class.std::tuple.461", align 1   ; 3 uses
  %12 = alloca %"class.std::tuple.530", align 8   ; 4 uses
  %13 = alloca %"class.std::tuple.461", align 1   ; 3 uses
  %i.a = alloca i8, align 1                       ; 6 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !304   ; 5 uses
  %.val10 = load i8, ptr %4, align 1, !tbaa !300  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %.val10, ptr %i.a, align 1, !tbaa !300
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 200
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !121  ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 184 ; 3 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %"_ZSt10__invoke_rIvRZNK7rocksdb23BlockCacheTraceAnalyzer21PrintAccessCountStatsEbjjE3$_0JRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmjNS0_9TraceTypeESB_mRKNS0_15BlockAccessInfoEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESH_E4typeEOSI_DpOSJ_.exit", label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.g = load ptr, ptr %.val, align 8, !tbaa !1257, !nonnull !460
  %i.h = load i8, ptr %i.g, align 1, !tbaa !454, !range !459, !noundef !460
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %.lr.ph.split.us.i.i.i, label %.lr.ph.split.i.i.i

.lr.ph.split.us.i.i.i:                            ; preds = %.lr.ph.i.i.i, %bb.c
  %.sroa.034.037.us.i.i.i = phi ptr [ %i.q, %bb.c ], [ %i.d, %.lr.ph.i.i.i ] ; 3 uses
  %i.j = phi i64 [ %i.p, %bb.c ], [ 0, %.lr.ph.i.i.i ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.034.037.us.i.i.i, i64 32
  %i.l = load i8, ptr %i.k, align 8, !tbaa !729
  %.off.i.us.i.i.i = add i8 %i.l, -1
  %switch.i.us.i.i.i = icmp ult i8 %.off.i.us.i.i.i, 5
  br i1 %switch.i.us.i.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.split.us.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.034.037.us.i.i.i, i64 40
  %i.n = load i64, ptr %i.m, align 8, !tbaa !731
  %i.o = add i64 %i.n, %i.j
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.split.us.i.i.i
  %i.p = phi i64 [ %i.o, %bb.b ], [ %i.j, %.lr.ph.split.us.i.i.i ] ; 2 uses
  %i.q = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.034.037.us.i.i.i) #33 ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.e
  br i1 %i.r, label %._crit_edge.i.i.i, label %.lr.ph.split.us.i.i.i

._crit_edge.i.i.i:                                ; preds = %.lr.ph.split.i.i.i, %bb.c
  %.lcssa.i.i.i = phi i64 [ %i.p, %bb.c ], [ %i.w, %.lr.ph.split.i.i.i ] ; 4 uses
  store i64 %.lcssa.i.i.i, ptr %i.b, align 8
  %i.s = icmp eq i64 %.lcssa.i.i.i, 0
  br i1 %i.s, label %"_ZSt10__invoke_rIvRZNK7rocksdb23BlockCacheTraceAnalyzer21PrintAccessCountStatsEbjjE3$_0JRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmjNS0_9TraceTypeESB_mRKNS0_15BlockAccessInfoEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESH_E4typeEOSI_DpOSJ_.exit", label %bb.d

.lr.ph.split.i.i.i:                               ; preds = %.lr.ph.i.i.i, %.lr.ph.split.i.i.i
  %.sroa.034.037.i.i.i = phi ptr [ %i.x, %.lr.ph.split.i.i.i ], [ %i.d, %.lr.ph.i.i.i ] ; 2 uses
  %i.t = phi i64 [ %i.w, %.lr.ph.split.i.i.i ], [ 0, %.lr.ph.i.i.i ]
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.034.037.i.i.i, i64 40
  %i.v = load i64, ptr %i.u, align 8, !tbaa !731
  %i.w = add i64 %i.v, %i.t                       ; 2 uses
  %i.x = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.034.037.i.i.i) #33 ; 2 uses
  %i.y = icmp eq ptr %i.x, %i.e
  br i1 %i.y, label %._crit_edge.i.i.i, label %.lr.ph.split.i.i.i

bb.d:                                             ; preds = %._crit_edge.i.i.i
  %i.z = icmp eq i8 %.val10, 9
  br i1 %i.z, label %bb.e, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !1259, !nonnull !460, !align !858 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !19 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 3 uses
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not10.i.i.i.i.i.i.i, label %.critedge.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.e, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ], [ %i.ad, %bb.e ] ; 3 uses
  %.0811.i.i.i.i.i.i.i = phi ptr [ %.19.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ], [ %i.ae, %bb.e ]
  %i.af = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 32
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !143
  %i.ah = icmp ult i64 %i.ag, %.lcssa.i.i.i       ; 2 uses
  %.19.i.i.i.i.i.i.i = select i1 %i.ah, ptr %.0811.i.i.i.i.i.i.i, ptr %.012.i.i.i.i.i.i.i ; 6 uses
  %.1.in.v.i.i.i.i.i.i.i = select i1 %i.ah, i64 24, i64 16
  %.1.in.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 %.1.in.v.i.i.i.i.i.i.i
  %.1.i.i.i.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i.i.i.i, align 8, !tbaa !151 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %.1.i.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt3mapImSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EESt4lessImESaISt4pairIKmS8_EEE11lower_boundERSC_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1073

_ZNSt3mapImSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EESt4lessImESaISt4pairIKmS8_EEE11lower_boundERSC_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.ai = icmp eq ptr %.19.i.i.i.i.i.i.i, %i.ae
  br i1 %i.ai, label %.critedge.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt3mapImSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EESt4lessImESaISt4pairIKmS8_EEE11lower_boundERSC_.exit.i.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i.i.i, i64 32
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !143
  %i.al = icmp ult i64 %.lcssa.i.i.i, %i.ak
  br i1 %i.al, label %.critedge.i.i.i.i, label %_ZNSt3mapImSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EESt4lessImESaISt4pairIKmS8_EEEixERSC_.exit.i.i.i

.critedge.i.i.i.i:                                ; preds = %bb.f, %_ZNSt3mapImSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EESt4lessImESaISt4pairIKmS8_EEE11lower_boundERSC_.exit.i.i.i.i, %bb.e
  %.08.lcssa.i.i.i11.i.i.i.i = phi ptr [ %.19.i.i.i.i.i.i.i, %bb.f ], [ %.19.i.i.i.i.i.i.i, %_ZNSt3mapImSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EESt4lessImESaISt4pairIKmS8_EEE11lower_boundERSC_.exit.i.i.i.i ], [ %i.ae, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #30
  store ptr %i.b, ptr %12, align 8, !tbaa !148
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #30
  %i.am = call ptr @_ZNSt8_Rb_treeImSt4pairIKmSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESt10_Select1stISB_ESt4lessImESaISB_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESM_IJEEEEESt17_Rb_tree_iteratorISB_ESt23_Rb_tree_const_iteratorISB_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.ab, ptr %.08.lcssa.i.i.i11.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 1 dereferenceable(1) %13)
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #30
  br label %_ZNSt3mapImSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EESt4lessImESaISt4pairIKmS8_EEEixERSC_.exit.i.i.i

_ZNSt3mapImSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EESt4lessImESaISt4pairIKmS8_EEEixERSC_.exit.i.i.i: ; preds = %.critedge.i.i.i.i, %bb.f
  %.sroa.06.0.i.i.i.i = phi ptr [ %i.am, %.critedge.i.i.i.i ], [ %.19.i.i.i.i.i.i.i, %bb.f ] ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i.i, i64 48 ; 3 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !739 ; 6 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i.i, i64 56
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !837
  %.not.i.i.i.i = icmp eq ptr %i.ao, %i.aq
  br i1 %.not.i.i.i.i, label %bb.l, label %bb.g

bb.g:                                             ; preds = %_ZNSt3mapImSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EESt4lessImESaISt4pairIKmS8_EEEixERSC_.exit.i.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 16 ; 3 uses
  store ptr %i.ar, ptr %i.ao, align 8, !tbaa !81
  %i.as = load ptr, ptr %5, align 8, !tbaa !12    ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.au = load i64, ptr %i.at, align 8, !tbaa !26 ; 8 uses
  %i.av = icmp ugt i64 %i.au, 15
  br i1 %i.av, label %bb.h, label %._crit_edge.i.i.i.i.i.i.i

bb.h:                                             ; preds = %bb.g
  %i.aw = icmp slt i64 %i.au, 0
  br i1 %i.aw, label %.noexc.i.i.i.i.i.i, label %bb.i

.noexc.i.i.i.i.i.i:                               ; preds = %bb.h
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.243) #32
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.ax = add nuw i64 %i.au, 1                    ; 2 uses
  %i.ay = icmp slt i64 %i.ax, 0
  br i1 %i.ay, label %.noexc6.i.i.i.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i.i, !prof !234

.noexc6.i.i.i.i.i.i:                              ; preds = %bb.i
  call void @_ZSt17__throw_bad_allocv() #32
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i.i: ; preds = %bb.i
  %i.az = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ax) #31 ; 2 uses
  store ptr %i.az, ptr %i.ao, align 8, !tbaa !12
  store i64 %i.au, ptr %i.ar, align 8, !tbaa !17
  br label %._crit_edge.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i.i, %bb.g
  %i.ba = phi ptr [ %i.az, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i.i ], [ %i.ar, %bb.g ] ; 3 uses
  switch i64 %i.au, label %bb.k [
    i64 1, label %bb.j
    i64 0, label %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i.i.i.i
  ]

bb.j:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i
  %i.bb = load i8, ptr %i.as, align 1, !tbaa !17
  store i8 %i.bb, ptr %i.ba, align 1, !tbaa !17
  br label %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i.i.i.i

bb.k:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ba, ptr align 1 %i.as, i64 %i.au, i1 false)
  br label %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i.i.i.i

_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i.i.i.i: ; preds = %bb.k, %bb.j, %._crit_edge.i.i.i.i.i.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store i64 %i.au, ptr %i.bc, align 8, !tbaa !26
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.au
  store i8 0, ptr %i.bd, align 1, !tbaa !17
  %i.be = load ptr, ptr %i.an, align 8, !tbaa !739
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 32
  store ptr %i.bf, ptr %i.an, align 8, !tbaa !739
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit.i.i.i

bb.l:                                             ; preds = %_ZNSt3mapImSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EESt4lessImESaISt4pairIKmS8_EEEixERSC_.exit.i.i.i
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i.i, i64 40
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.bg, ptr %i.ao, ptr noundef nonnull align 8 dereferenceable(32) %5)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit.i.i.i

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit.i.i.i: ; preds = %bb.l, %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i.i.i.i, %bb.d
  %i.bh = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !1260, !nonnull !460, !align !858
  %i.bj = load i64, ptr %i.b, align 8, !tbaa !143
  call void @_ZN7rocksdb13HistogramStat3AddEm(ptr noundef nonnull align 8 dereferenceable(920) %i.bi, i64 noundef %i.bj)
  %i.bk = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !1261, !nonnull !460, !align !858 ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !19 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 3 uses
  %.not10.i.i.i.i8.i.i.i = icmp eq ptr %i.bn, null
  br i1 %.not10.i.i.i.i8.i.i.i, label %.critedge.i18.i.i.i, label %.lr.ph.i.i.i.i9.i.i.i

.lr.ph.i.i.i.i9.i.i.i:                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit.i.i.i, %.lr.ph.i.i.i.i9.i.i.i
  %.012.i.i.i.i10.i.i.i = phi ptr [ %.1.i.i.i.i15.i.i.i, %.lr.ph.i.i.i.i9.i.i.i ], [ %i.bn, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit.i.i.i ] ; 3 uses
  %.0811.i.i.i.i11.i.i.i = phi ptr [ %.19.i.i.i.i12.i.i.i, %.lr.ph.i.i.i.i9.i.i.i ], [ %i.bo, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit.i.i.i ]
  %i.bp = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i10.i.i.i, i64 32
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !300
  %i.br = icmp slt i8 %i.bq, %.val10              ; 2 uses
  %.19.i.i.i.i12.i.i.i = select i1 %i.br, ptr %.0811.i.i.i.i11.i.i.i, ptr %.012.i.i.i.i10.i.i.i ; 6 uses
  %.1.in.v.i.i.i.i13.i.i.i = select i1 %i.br, i64 24, i64 16
  %.1.in.i.i.i.i14.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i10.i.i.i, i64 %.1.in.v.i.i.i.i13.i.i.i
  %.1.i.i.i.i15.i.i.i = load ptr, ptr %.1.in.i.i.i.i14.i.i.i, align 8, !tbaa !151 ; 2 uses
  %.not.i.i.i.i16.i.i.i = icmp eq ptr %.1.i.i.i.i15.i.i.i, null
  br i1 %.not.i.i.i.i16.i.i.i, label %_ZNSt3mapIN7rocksdb9TraceTypeENS0_13HistogramStatESt4lessIS1_ESaISt4pairIKS1_S2_EEE11lower_boundERS6_.exit.i.i.i.i, label %.lr.ph.i.i.i.i9.i.i.i, !llvm.loop !1246

_ZNSt3mapIN7rocksdb9TraceTypeENS0_13HistogramStatESt4lessIS1_ESaISt4pairIKS1_S2_EEE11lower_boundERS6_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i9.i.i.i
  %i.bs = icmp eq ptr %.19.i.i.i.i12.i.i.i, %i.bo
  br i1 %i.bs, label %.critedge.i18.i.i.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt3mapIN7rocksdb9TraceTypeENS0_13HistogramStatESt4lessIS1_ESaISt4pairIKS1_S2_EEE11lower_boundERS6_.exit.i.i.i.i
  %i.bt = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i12.i.i.i, i64 32
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !300
  %i.bv = icmp slt i8 %.val10, %i.bu
  br i1 %i.bv, label %.critedge.i18.i.i.i, label %_ZNSt3mapIN7rocksdb9TraceTypeENS0_13HistogramStatESt4lessIS1_ESaISt4pairIKS1_S2_EEEixERS6_.exit.i.i.i

.critedge.i18.i.i.i:                              ; preds = %bb.m, %_ZNSt3mapIN7rocksdb9TraceTypeENS0_13HistogramStatESt4lessIS1_ESaISt4pairIKS1_S2_EEE11lower_boundERS6_.exit.i.i.i.i, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit.i.i.i
  %.08.lcssa.i.i.i11.i19.i.i.i = phi ptr [ %.19.i.i.i.i12.i.i.i, %bb.m ], [ %.19.i.i.i.i12.i.i.i, %_ZNSt3mapIN7rocksdb9TraceTypeENS0_13HistogramStatESt4lessIS1_ESaISt4pairIKS1_S2_EEE11lower_boundERS6_.exit.i.i.i.i ], [ %i.bo, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #30
  store ptr %i.a, ptr %10, align 8, !tbaa !304
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #30
  %i.bw = call ptr @_ZNSt8_Rb_treeIN7rocksdb9TraceTypeESt4pairIKS1_NS0_13HistogramStatEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS3_EESG_IJEEEEESt17_Rb_tree_iteratorIS5_ESt23_Rb_tree_const_iteratorIS5_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.bl, ptr %.08.lcssa.i.i.i11.i19.i.i.i, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 1 dereferenceable(1) %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  br label %_ZNSt3mapIN7rocksdb9TraceTypeENS0_13HistogramStatESt4lessIS1_ESaISt4pairIKS1_S2_EEEixERS6_.exit.i.i.i

_ZNSt3mapIN7rocksdb9TraceTypeENS0_13HistogramStatESt4lessIS1_ESaISt4pairIKS1_S2_EEEixERS6_.exit.i.i.i: ; preds = %.critedge.i18.i.i.i, %bb.m
  %.sroa.06.0.i17.i.i.i = phi ptr [ %i.bw, %.critedge.i18.i.i.i ], [ %.19.i.i.i.i12.i.i.i, %bb.m ]
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i17.i.i.i, i64 40
  %i.by = load i64, ptr %i.b, align 8, !tbaa !143
  call void @_ZN7rocksdb13HistogramStat3AddEm(ptr noundef nonnull align 8 dereferenceable(920) %i.bx, i64 noundef %i.by)
  %i.bz = getelementptr inbounds nuw i8, ptr %.val, i64 32
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !1262, !nonnull !460, !align !858
  %i.cb = call noundef nonnull align 8 dereferenceable(48) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES_IN7rocksdb9TraceTypeENS6_13HistogramStatESt4lessIS7_ESaISt4pairIKS7_S8_EEES9_IS5_ESaISB_IKS5_SF_EEEixERSH_(ptr noundef nonnull align 8 dereferenceable(48) %i.ca, ptr noundef nonnull align 8 dereferenceable(32) %1) ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !19 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 8 ; 3 uses
  %.not10.i.i.i.i20.i.i.i = icmp eq ptr %i.cd, null
  br i1 %.not10.i.i.i.i20.i.i.i, label %.critedge.i31.i.i.i, label %.lr.ph.i.i.i.i21.i.i.i

.lr.ph.i.i.i.i21.i.i.i:                           ; preds = %_ZNSt3mapIN7rocksdb9TraceTypeENS0_13HistogramStatESt4lessIS1_ESaISt4pairIKS1_S2_EEEixERS6_.exit.i.i.i
  %i.cf = load i8, ptr %i.a, align 1, !tbaa !300  ; 2 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %.lr.ph.i.i.i.i21.i.i.i
  %.012.i.i.i.i22.i.i.i = phi ptr [ %i.cd, %.lr.ph.i.i.i.i21.i.i.i ], [ %.1.i.i.i.i27.i.i.i, %bb.n ] ; 3 uses
  %.0811.i.i.i.i23.i.i.i = phi ptr [ %i.ce, %.lr.ph.i.i.i.i21.i.i.i ], [ %.19.i.i.i.i24.i.i.i, %bb.n ]
  %i.cg = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i22.i.i.i, i64 32
end_hunk_1
