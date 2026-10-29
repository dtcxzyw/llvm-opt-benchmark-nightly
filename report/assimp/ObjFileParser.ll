Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/ObjFileParser?download=true
inline.NumInlined: 2070
inline.NumDeleted: 754
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_ZN6Assimp13ObjFileParser15getMaterialDescEv:bb.a
  %i.p = icmp eq ptr %i.o, %.sroa.08.0.copyload
  %i.q = icmp eq ptr %i.o, %i.e
  %.0.i.i9.i = select i1 %i.p, i1 true, i1 %i.q
  br i1 %.0.i.i9.i, label %_ZN6Assimp12getNextTokenIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit, label %.lr.ph.i8.i, !llvm.loop !3

_ZN6Assimp12getNextTokenIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit: ; preds = %.lr.ph.i8.i, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i, %_ZN6Assimp16getNextDelimiterIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i
  %.promoted = phi ptr [ %.sroa.0.0.lcssa.i.i, %_ZN6Assimp16getNextDelimiterIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i ], [ %.sroa.0.07.i.i, %.lr.ph.i8.i ], [ %i.o, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i ] ; 6 uses
  store ptr %.promoted, ptr %0, align 8
  %i.r = icmp eq ptr %.promoted, %.sroa.08.0.copyload
  br i1 %i.r, label %bb.aq, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN6Assimp12getNextTokenIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit, %_ZN6Assimp9IsLineEndIcEEbT_.exit
  %i.s = phi ptr [ %i.u, %_ZN6Assimp9IsLineEndIcEEbT_.exit ], [ %.promoted, %_ZN6Assimp12getNextTokenIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit ] ; 6 uses
  %i.t = load i8, ptr %i.s, align 1
  switch i8 %i.t, label %_ZN6Assimp9IsLineEndIcEEbT_.exit [
    i8 13, label %.critedge
    i8 10, label %.critedge
    i8 0, label %.critedge
    i8 12, label %.critedge
  ]

_ZN6Assimp9IsLineEndIcEEbT_.exit:                 ; preds = %.lr.ph
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 1 ; 3 uses
  store ptr %i.u, ptr %0, align 8
  %.not60 = icmp eq ptr %i.u, %.sroa.08.0.copyload
  br i1 %.not60, label %.critedge, label %.lr.ph, !llvm.loop !55

.critedge:                                        ; preds = %_ZN6Assimp9IsLineEndIcEEbT_.exit, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph
  %.lcssa.ph = phi ptr [ %.sroa.08.0.copyload, %_ZN6Assimp9IsLineEndIcEEbT_.exit ], [ %i.s, %.lr.ph ], [ %i.s, %.lr.ph ], [ %i.s, %.lr.ph ], [ %i.s, %.lr.ph ]
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 9 uses
  store ptr %i.v, ptr %1, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 11 uses
  store i64 0, ptr %i.w, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  %i.x = ptrtoint ptr %.lcssa.ph to i64
  %i.y = ptrtoint ptr %.promoted to i64
  %i.z = sub i64 %i.x, %i.y                       ; 4 uses
  store i64 %i.z, ptr %i.c, align 8
  %i.aa = icmp ugt i64 %i.z, 15
  br i1 %i.aa, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %.critedge
  %i.ab = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0) ; 2 uses
  store ptr %i.ab, ptr %1, align 8
  %i.ac = load i64, ptr %i.c, align 8
  store i64 %i.ac, ptr %i.v, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %.critedge
  %i.ad = phi ptr [ %i.ab, %.noexc.i ], [ %i.v, %.critedge ] ; 2 uses
  switch i64 %i.z, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.ae = load i8, ptr %.promoted, align 1
  store i8 %i.ae, ptr %i.ad, align 1
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ad, ptr nonnull align 1 %.promoted, i64 %i.z, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i
  %i.af = load i64, ptr %i.c, align 8             ; 2 uses
  store i64 %i.af, ptr %i.w, align 8
  %i.ag = load ptr, ptr %1, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.af
  store i8 0, ptr %i.ah, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  invoke void @_Z7ai_trimRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.e unwind label %bb.k

bb.e:                                             ; preds = %bb.d
  %i.ai = load ptr, ptr %1, align 8               ; 6 uses
  %i.aj = icmp eq ptr %i.ai, %i.v
  %i.ak = load ptr, ptr %2, align 8               ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.am = icmp eq ptr %i.ak, %i.al                ; 2 uses
  br i1 %i.aj, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.e
  br i1 %i.am, label %bb.f, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.e
  br i1 %i.am, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8            ; 3 uses
  %i.ap = icmp ult i64 %i.ao, 16
  call void @llvm.assume(i1 %i.ap)
  switch i64 %i.ao, label %bb.h [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f
  %i.aq = load i8, ptr %i.ak, align 1
  store i8 %i.aq, ptr %i.ai, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.h:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ai, ptr align 1 %i.ak, i64 %i.ao, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.h, %bb.g, %bb.f
  %i.ar = load i64, ptr %i.an, align 8            ; 2 uses
  store i64 %i.ar, ptr %i.w, align 8
  %i.as = load ptr, ptr %1, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.ar
  store i8 0, ptr %i.at, align 1
  %.pre.i = load ptr, ptr %2, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.ak, ptr %1, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.av = load <2 x i64>, ptr %i.au, align 8
  store <2 x i64> %i.av, ptr %i.w, align 8
  br label %bb.j

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.aw = load i64, ptr %i.v, align 8
  store ptr %i.ak, ptr %1, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ay = load <2 x i64>, ptr %i.ax, align 8
  store <2 x i64> %i.ay, ptr %i.w, align 8
  %.not.i = icmp eq ptr %i.ai, null
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.ai, ptr %2, align 8
  store i64 %i.aw, ptr %i.al, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.al, ptr %2, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.i, %bb.j
  %i.az = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.ai, %bb.i ], [ %i.al, %bb.j ]
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.ba, align 8
  store i8 0, ptr %i.az, align 1
  %i.bb = load ptr, ptr %2, align 8               ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.be = load i64, ptr %i.bc, align 8
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.bf) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  %i.bg = load i64, ptr %i.w, align 8             ; 7 uses
  %i.bh = icmp eq i64 %i.bg, 0
  br i1 %i.bh, label %bb.an, label %bb.l

bb.k:                                             ; preds = %bb.d
  %i.bi = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br label %bb.ar

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  %i.bk = load ptr, ptr %i.bj, align 8            ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 64 ; 2 uses
  %i.bm = load ptr, ptr %i.bl, align 8            ; 3 uses
  %.not = icmp eq ptr %i.bm, null
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  br i1 %.not, label %.sink.split, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bn = trunc i64 %i.bg to i32
  %i.bo = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %i.bo, i8 0, i64 1024, i1 false)
  %i.bp = and i64 %i.bg, 4294966272
  %.not.i24.a = icmp eq i64 %i.bp, 0
  %spec.select.i = select i1 %.not.i24.a, i32 %i.bn, i32 1023 ; 3 uses
  store i32 %spec.select.i, ptr %3, align 4
  %i.bq = load ptr, ptr %1, align 8
  %i.br = zext i32 %spec.select.i to i64          ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.bo, ptr align 1 %i.bq, i64 %i.br, i1 false)
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.br
  store i8 0, ptr %i.bs, align 1
  %i.bt = load i32, ptr %i.bm, align 4
  %i.bu = icmp eq i32 %i.bt, %spec.select.i
  br i1 %i.bu, label %_ZNK8aiStringeqERKS_.exit, label %.sink.split

_ZNK8aiStringeqERKS_.exit:                        ; preds = %bb.m
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bm, i64 4
  %bcmp.i = call i32 @bcmp(ptr nonnull %i.bv, ptr nonnull %i.bo, i64 %i.br)
  %i.bw = icmp eq i32 %bcmp.i, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br i1 %i.bw, label %bb.an, label %bb.n

.sink.split:                                      ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %bb.n

bb.n:                                             ; preds = %.sink.split, %_ZNK8aiStringeqERKS_.exit
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bk, i64 344
  %i.by = load ptr, ptr %i.bx, align 8            ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bk, i64 336 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.by, null
  br i1 %.not10.i.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN6Assimp7ObjFile8MaterialESt4lessIS5_ESaISt4pairIKS5_S9_EEE4findERSD_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.n
  %i.ca = load ptr, ptr %1, align 8               ; 2 uses
  br label %bb.o

bb.o:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.by, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %i.bz, %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ]
  %i.cb = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.cc = load i64, ptr %i.cb, align 8            ; 3 uses
  %i.cd = icmp eq i64 %i.cc, 0
  br i1 %i.cd, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.o
  %.sroa.speculated.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.bg, i64 %i.cc)
  %i.ce = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.cf = load ptr, ptr %i.ce, align 8
  %i.cg = call i32 @memcmp(ptr noundef %i.cf, ptr noundef %i.ca, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #28 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.cg, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.o
  %i.ch = sub i64 %i.cc, %i.bg
  %spec.select7.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.ch, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.cg, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.ci = icmp slt i32 %.0.i.i.i.i.i.i, 0         ; 2 uses
  %.19.i.i.i = select i1 %i.ci, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 5 uses
  %.1.in.v.i.i.i = select i1 %i.ci, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN6Assimp7ObjFile8MaterialEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE14_M_lower_boundEPSt13_Rb_tree_nodeISC_EPSt18_Rb_tree_node_baseRS7_.exit.i.i, label %bb.o, !llvm.loop !0

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN6Assimp7ObjFile8MaterialEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE14_M_lower_boundEPSt13_Rb_tree_nodeISC_EPSt18_Rb_tree_node_baseRS7_.exit.i.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.cj = icmp eq ptr %.19.i.i.i, %i.bz
  br i1 %i.cj, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN6Assimp7ObjFile8MaterialESt4lessIS5_ESaISt4pairIKS5_S9_EEE4findERSD_.exit.thread, label %bb.p

bb.p:                                             ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN6Assimp7ObjFile8MaterialEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE14_M_lower_boundEPSt13_Rb_tree_nodeISC_EPSt18_Rb_tree_node_baseRS7_.exit.i.i
  %i.ck = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.cl = load i64, ptr %i.ck, align 8            ; 3 uses
  %i.cm = icmp eq i64 %i.cl, 0
  br i1 %i.cm, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.p
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.cl, i64 %i.bg)
  %i.cn = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.co = load ptr, ptr %i.cn, align 8
  %i.cp = call i32 @memcmp(ptr noundef %i.ca, ptr noundef %i.co, i64 noundef %.sroa.speculated.i.i.i.i.i) #28 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.cp, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN6Assimp7ObjFile8MaterialESt4lessIS5_ESaISt4pairIKS5_S9_EEE4findERSD_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %bb.p
  %i.cq = sub i64 %i.bg, %i.cl
  %spec.select7.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.cq, i64 -2147483648)
  %.08.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i to i32
  br label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN6Assimp7ObjFile8MaterialESt4lessIS5_ESaISt4pairIKS5_S9_EEE4findERSD_.exit

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN6Assimp7ObjFile8MaterialESt4lessIS5_ESaISt4pairIKS5_S9_EEE4findERSD_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i
  %.0.i.i.i.i.i = phi i32 [ %i.cp, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i ]
  %i.cr = icmp slt i32 %.0.i.i.i.i.i, 0
  br i1 %i.cr, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN6Assimp7ObjFile8MaterialESt4lessIS5_ESaISt4pairIKS5_S9_EEE4findERSD_.exit.thread, label %bb.aa

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN6Assimp7ObjFile8MaterialESt4lessIS5_ESaISt4pairIKS5_S9_EEE4findERSD_.exit.thread: ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN6Assimp7ObjFile8MaterialEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE14_M_lower_boundEPSt13_Rb_tree_nodeISC_EPSt18_Rb_tree_node_baseRS7_.exit.i.i, %bb.n, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN6Assimp7ObjFile8MaterialESt4lessIS5_ESaISt4pairIKS5_S9_EEE4findERSD_.exit
  %i.cs = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.q unwind label %bb.z

bb.q:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN6Assimp7ObjFile8MaterialESt4lessIS5_ESaISt4pairIKS5_S9_EEE4findERSD_.exit.thread
  invoke void @_ZN6Assimp6Logger5errorIJRA32_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA24_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.cs, ptr noundef nonnull align 1 dereferenceable(32) @.str.10, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 1 dereferenceable(24) @.str.11)
          to label %bb.r unwind label %bb.z

bb.r:                                             ; preds = %bb.q
  %i.ct = invoke noalias noundef nonnull dereferenceable(20776) ptr @_Znwm(i64 noundef 20776) #30
          to label %bb.s unwind label %bb.z       ; 24 uses

bb.s:                                             ; preds = %bb.r
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 20580
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20776) %i.ct, i8 0, i64 20560, i1 false)
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 6.000000e-01>, ptr %i.cu, align 4
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 20596
  store <2 x float> splat (float 6.000000e-01), ptr %i.cv, align 4
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ct, i64 20604
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ct, i64 20628
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.cw, i8 0, i64 24, i1 false)
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %i.cx, align 4
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ct, i64 20636
  store i32 1, ptr %i.cy, align 4
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ct, i64 20640
  store <4 x float> splat (float 1.000000e+00), ptr %i.cz, align 4
  %i.da = getelementptr inbounds nuw i8, ptr %i.ct, i64 20660
  store i8 0, ptr %i.da, align 4
  %i.db = getelementptr inbounds nuw i8, ptr %i.ct, i64 20668
  store i8 0, ptr %i.db, align 4
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ct, i64 20676
  store i8 0, ptr %i.dc, align 4
  %i.dd = getelementptr inbounds nuw i8, ptr %i.ct, i64 20680
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(13) %i.dd, i8 0, i64 13, i1 false)
  %i.de = getelementptr inbounds nuw i8, ptr %i.ct, i64 20700
  store i8 0, ptr %i.de, align 4
  %i.df = getelementptr inbounds nuw i8, ptr %i.ct, i64 20708
  store i8 0, ptr %i.df, align 4
  %i.dg = getelementptr inbounds nuw i8, ptr %i.ct, i64 20716
  store i8 0, ptr %i.dg, align 4
  %i.dh = getelementptr inbounds nuw i8, ptr %i.ct, i64 20724
  store i8 0, ptr %i.dh, align 4
  %i.di = getelementptr inbounds nuw i8, ptr %i.ct, i64 20732
  store i8 0, ptr %i.di, align 4
  %i.dj = getelementptr inbounds nuw i8, ptr %i.ct, i64 20740
  store i8 0, ptr %i.dj, align 4
  %i.dk = getelementptr inbounds nuw i8, ptr %i.ct, i64 20744
  store float 0.000000e+00, ptr %i.dk, align 4
  %i.dl = getelementptr inbounds nuw i8, ptr %i.ct, i64 20752
  store i8 0, ptr %i.dl, align 4
  %i.dm = getelementptr inbounds nuw i8, ptr %i.ct, i64 20760
  store i8 0, ptr %i.dm, align 4
  %i.dn = getelementptr inbounds nuw i8, ptr %i.ct, i64 20768
  store i8 0, ptr %i.dn, align 4
  %i.do = getelementptr inbounds nuw i8, ptr %i.ct, i64 20772
  store float 1.000000e+00, ptr %i.do, align 4
  %i.dp = getelementptr inbounds nuw i8, ptr %i.ct, i64 20560
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.dp, i8 0, i64 20, i1 false)
  %i.dq = load ptr, ptr %i.bj, align 8
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 64
  store ptr %i.ct, ptr %i.dr, align 8
  %i.ds = load i64, ptr %i.w, align 8             ; 4 uses
  %i.dt = icmp ugt i64 %i.ds, 1023
  br i1 %i.dt, label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.du = load ptr, ptr %i.bj, align 8
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 64
  %i.dw = load ptr, ptr %i.dv, align 8            ; 2 uses
  %i.dx = trunc nuw nsw i64 %i.ds to i32
  store i32 %i.dx, ptr %i.dw, align 4
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dw, i64 4 ; 2 uses
  %i.dz = load ptr, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.dy, ptr align 1 %i.dz, i64 %i.ds, i1 false)
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dy, i64 %i.ds
  store i8 0, ptr %i.ea, align 1
  br label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.s, %bb.t
  %i.eb = load ptr, ptr %i.bj, align 8            ; 3 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 88 ; 3 uses
  %i.ed = load ptr, ptr %i.ec, align 8            ; 8 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.eb, i64 96
  %i.ef = load ptr, ptr %i.ee, align 8
  %.not.i25 = icmp eq ptr %i.ed, %i.ef
  br i1 %.not.i25, label %bb.x, label %bb.u

bb.u:                                             ; preds = %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ed, i64 16 ; 3 uses
  store ptr %i.eg, ptr %i.ed, align 8
  %i.eh = load ptr, ptr %1, align 8               ; 2 uses
  %i.ei = load i64, ptr %i.w, align 8             ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  store i64 %i.ei, ptr %i.b, align 8
  %i.ej = icmp ugt i64 %i.ei, 15
  br i1 %i.ej, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.u
  %i.ek = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.ed, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc26 unwind label %bb.z   ; 2 uses

.noexc26:                                         ; preds = %.noexc.i.i
  store ptr %i.ek, ptr %i.ed, align 8
  %i.el = load i64, ptr %i.b, align 8
  store i64 %i.el, ptr %i.eg, align 8
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc26, %bb.u
  %i.em = phi ptr [ %i.ek, %.noexc26 ], [ %i.eg, %bb.u ] ; 2 uses
  switch i64 %i.ei, label %bb.w [
    i64 1, label %bb.v
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  ]

bb.v:                                             ; preds = %._crit_edge.i.i.i
  %i.en = load i8, ptr %i.eh, align 1
  store i8 %i.en, ptr %i.em, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

end_hunk_0
begin_hunk_1_@_ZN6Assimp13ObjFileParser15getMaterialDescEv:bb.a
  %.not.i.i = icmp eq ptr %i.fl, %i.fm
  br i1 %.not.i.i, label %_ZN6Assimp13ObjFileParser16getMaterialIndexERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i, label %.lr.ph.i.i28

.lr.ph.i.i28:                                     ; preds = %.preheader.i.i
  %i.fn = ptrtoint ptr %i.fl to i64
  %i.fo = ptrtoint ptr %i.fm to i64
  %i.fp = sub i64 %i.fn, %i.fo
  %i.fq = ashr exact i64 %i.fp, 5
  %i.fr = load ptr, ptr %1, align 8
  br label %bb.ad

bb.ad:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i, %.lr.ph.i.i28
  %.012.i.i = phi i64 [ 0, %.lr.ph.i.i28 ], [ %i.fz, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i ] ; 3 uses
  %i.fs = getelementptr inbounds nuw [32 x i8], ptr %i.fm, i64 %.012.i.i ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 8
  %i.fu = load i64, ptr %i.ft, align 8
  %i.fv = icmp eq i64 %i.fh, %i.fu
  br i1 %i.fv, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i: ; preds = %bb.ad
  %i.fw = load ptr, ptr %i.fs, align 8
  %bcmp.i.i.i = call i32 @bcmp(ptr %i.fr, ptr %i.fw, i64 %i.fh)
  %i.fx = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.fx, label %bb.ae, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i

bb.ae:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i
  %i.fy = trunc i64 %.012.i.i to i32
  br label %_ZN6Assimp13ObjFileParser16getMaterialIndexERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i, %bb.ad
  %i.fz = add nuw i64 %.012.i.i, 1                ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.fz, %i.fq
  br i1 %exitcond.not.i.i, label %_ZN6Assimp13ObjFileParser16getMaterialIndexERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i, label %bb.ad, !llvm.loop !7

_ZN6Assimp13ObjFileParser16getMaterialIndexERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i, %bb.ae, %.preheader.i.i, %bb.ac
  %.010.i.i = phi i32 [ -1, %bb.ac ], [ %i.fy, %bb.ae ], [ -1, %.preheader.i.i ], [ -1, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i ]
  %i.ga = getelementptr inbounds nuw i8, ptr %i.ff, i64 100
  %i.gb = load i32, ptr %i.ga, align 4            ; 2 uses
  %.not.i29 = icmp eq i32 %i.gb, -1
  %.not8.i = icmp eq i32 %i.gb, %.010.i.i
  %or.cond.i = or i1 %.not.i29, %.not8.i
  br i1 %or.cond.i, label %_ZN6Assimp13ObjFileParser12needsNewMeshERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread57, label %_ZN6Assimp13ObjFileParser12needsNewMeshERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN6Assimp13ObjFileParser12needsNewMeshERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %_ZN6Assimp13ObjFileParser16getMaterialIndexERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  %i.gc = getelementptr inbounds nuw i8, ptr %i.ff, i64 32
  %i.gd = load ptr, ptr %i.gc, align 8
  %i.ge = getelementptr inbounds nuw i8, ptr %i.ff, i64 40
  %i.gf = load ptr, ptr %i.ge, align 8
  %.not61 = icmp eq ptr %i.gd, %i.gf
  br i1 %.not61, label %_ZN6Assimp13ObjFileParser12needsNewMeshERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread57, label %_ZN6Assimp13ObjFileParser12needsNewMeshERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread

_ZN6Assimp13ObjFileParser12needsNewMeshERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread: ; preds = %bb.ab, %_ZN6Assimp13ObjFileParser12needsNewMeshERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fd, i64 232
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fd, i64 240
  %i.gi = load i64, ptr %i.gh, align 8
  %i.gj = icmp eq i64 %i.gi, 0                    ; 2 uses
  %spec.select59 = select i1 %i.gj, ptr %1, ptr %i.gg
  %i.gk = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.gk, ptr %4, align 8
  %i.gl = load ptr, ptr %spec.select59, align 8   ; 2 uses
  %.sroa.gep75 = getelementptr inbounds nuw i8, ptr %i.fd, i64 240
  %.val = load i64, ptr %i.w, align 8
  %.sroa.gep75.val = load i64, ptr %.sroa.gep75, align 8
  %i.gm = select i1 %i.gj, i64 %.val, i64 %.sroa.gep75.val ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i64 %i.gm, ptr %i.a, align 8
  %i.gn = icmp ugt i64 %i.gm, 15
  br i1 %i.gn, label %.noexc.i31, label %._crit_edge.i.i30

.noexc.i31:                                       ; preds = %_ZN6Assimp13ObjFileParser12needsNewMeshERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread
  %i.go = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc32 unwind label %bb.aj  ; 2 uses

.noexc32:                                         ; preds = %.noexc.i31
  store ptr %i.go, ptr %4, align 8
  %i.gp = load i64, ptr %i.a, align 8
  store i64 %i.gp, ptr %i.gk, align 8
  br label %._crit_edge.i.i30

._crit_edge.i.i30:                                ; preds = %.noexc32, %_ZN6Assimp13ObjFileParser12needsNewMeshERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread
  %i.gq = phi ptr [ %i.go, %.noexc32 ], [ %i.gk, %_ZN6Assimp13ObjFileParser12needsNewMeshERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread ] ; 2 uses
  switch i64 %i.gm, label %bb.ag [
    i64 1, label %bb.af
    i64 0, label %bb.ah
  ]

bb.af:                                            ; preds = %._crit_edge.i.i30
  %i.gr = load i8, ptr %i.gl, align 1
  store i8 %i.gr, ptr %i.gq, align 1
  br label %bb.ah

bb.ag:                                            ; preds = %._crit_edge.i.i30
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gq, ptr align 1 %i.gl, i64 %i.gm, i1 false)
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af, %._crit_edge.i.i30
  %i.gs = load i64, ptr %i.a, align 8             ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.gs, ptr %i.gt, align 8
  %i.gu = load ptr, ptr %4, align 8
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 %i.gs
  store i8 0, ptr %i.gv, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  invoke void @_ZN6Assimp13ObjFileParser10createMeshERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(4184) %0, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.ai unwind label %bb.ak

bb.ai:                                            ; preds = %bb.ah
  %i.gw = load ptr, ptr %4, align 8               ; 2 uses
  %i.gx = icmp eq ptr %i.gw, %i.gk
  br i1 %i.gx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33: ; preds = %bb.ai
  %i.gy = load i64, ptr %i.gk, align 8
  %i.gz = add i64 %i.gy, 1
  call void @_ZdlPvm(ptr noundef %i.gw, i64 noundef %i.gz) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35: ; preds = %bb.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  %.pre = load i64, ptr %i.w, align 8
  %.pre76.pre = load ptr, ptr %i.bj, align 8
  br label %_ZN6Assimp13ObjFileParser12needsNewMeshERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread57

bb.aj:                                            ; preds = %.noexc.i31
  %i.ha = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38

bb.ak:                                            ; preds = %bb.ah
  %i.hb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hc = load ptr, ptr %4, align 8               ; 2 uses
  %i.hd = icmp eq ptr %i.hc, %i.gk
  br i1 %i.hd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36: ; preds = %bb.ak
  %i.he = load i64, ptr %i.gk, align 8
  %i.hf = add i64 %i.he, 1
  call void @_ZdlPvm(ptr noundef %i.hc, i64 noundef %i.hf) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38: ; preds = %bb.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36, %bb.aj
  %.pn = phi { ptr, i32 } [ %i.ha, %bb.aj ], [ %i.hb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36 ], [ %i.hb, %bb.ak ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %bb.ar

_ZN6Assimp13ObjFileParser12needsNewMeshERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread57: ; preds = %_ZN6Assimp13ObjFileParser16getMaterialIndexERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, %_ZN6Assimp13ObjFileParser12needsNewMeshERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %.pre76 = phi ptr [ %i.fd, %_ZN6Assimp13ObjFileParser16getMaterialIndexERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i ], [ %.pre76.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35 ], [ %i.fd, %_ZN6Assimp13ObjFileParser12needsNewMeshERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ] ; 3 uses
  %i.hg = phi i64 [ %i.fh, %_ZN6Assimp13ObjFileParser16getMaterialIndexERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i ], [ %.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35 ], [ %i.fh, %_ZN6Assimp13ObjFileParser12needsNewMeshERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ] ; 3 uses
  %i.hh = icmp eq i64 %i.hg, 0
  br i1 %i.hh, label %_ZN6Assimp13ObjFileParser16getMaterialIndexERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %.preheader.i

.preheader.i:                                     ; preds = %_ZN6Assimp13ObjFileParser12needsNewMeshERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread57
  %i.hi = getelementptr inbounds nuw i8, ptr %.pre76, i64 80
  %i.hj = getelementptr inbounds nuw i8, ptr %.pre76, i64 88
  %i.hk = load ptr, ptr %i.hj, align 8            ; 2 uses
  %i.hl = load ptr, ptr %i.hi, align 8            ; 3 uses
  %.not.i39.a = icmp eq ptr %i.hk, %i.hl
  br i1 %.not.i39.a, label %_ZN6Assimp13ObjFileParser16getMaterialIndexERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.hm = ptrtoint ptr %i.hk to i64
  %i.hn = ptrtoint ptr %i.hl to i64
  %i.ho = sub i64 %i.hm, %i.hn
  %i.hp = ashr exact i64 %i.ho, 5
  %i.hq = load ptr, ptr %1, align 8
  br label %bb.al

bb.al:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i, %.lr.ph.i
  %.012.i = phi i64 [ 0, %.lr.ph.i ], [ %i.hy, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i ] ; 3 uses
  %i.hr = getelementptr inbounds nuw [32 x i8], ptr %i.hl, i64 %.012.i ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 8
  %i.ht = load i64, ptr %i.hs, align 8
  %i.hu = icmp eq i64 %i.hg, %i.ht
  br i1 %i.hu, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i: ; preds = %bb.al
  %i.hv = load ptr, ptr %i.hr, align 8
  %bcmp.i.i = call i32 @bcmp(ptr %i.hq, ptr %i.hv, i64 %i.hg)
  %i.hw = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.hw, label %bb.am, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i

bb.am:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i
  %i.hx = trunc i64 %.012.i to i32
  br label %_ZN6Assimp13ObjFileParser16getMaterialIndexERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i, %bb.al
  %i.hy = add nuw i64 %.012.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.hy, %i.hp
  br i1 %exitcond.not.i, label %_ZN6Assimp13ObjFileParser16getMaterialIndexERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %bb.al, !llvm.loop !7

_ZN6Assimp13ObjFileParser16getMaterialIndexERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i, %_ZN6Assimp13ObjFileParser12needsNewMeshERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread57, %.preheader.i, %bb.am
  %.010.i = phi i32 [ -1, %_ZN6Assimp13ObjFileParser12needsNewMeshERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread57 ], [ %i.hx, %bb.am ], [ -1, %.preheader.i ], [ -1, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i ]
  %i.hz = getelementptr inbounds nuw i8, ptr %.pre76, i64 296
  %i.ia = load ptr, ptr %i.hz, align 8
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 100
  store i32 %.010.i, ptr %i.ib, align 4
  br label %bb.an

bb.an:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZN6Assimp13ObjFileParser16getMaterialIndexERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZNK8aiStringeqERKS_.exit
  %.sroa.03.0.copyload = load ptr, ptr %0, align 8 ; 5 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.d, align 8 ; 7 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.id = ptrtoaddr ptr %.sroa.0.0.copyload to i64
  %.not.i40 = icmp ult ptr %.sroa.03.0.copyload, %.sroa.0.0.copyload
  br i1 %.not.i40, label %.preheader.i41, label %_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit

.preheader.i41:                                   ; preds = %bb.an
  %i.ie = getelementptr inbounds i8, ptr %.sroa.0.0.copyload, i64 -1 ; 2 uses
  %i.if = icmp eq ptr %.sroa.03.0.copyload, %i.ie
  br i1 %i.if, label %.critedge.i, label %.lr.ph.i42

.lr.ph.i42:                                       ; preds = %.preheader.i41, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i
  %.sroa.010.021.i = phi ptr [ %i.ih, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i ], [ %.sroa.03.0.copyload, %.preheader.i41 ] ; 6 uses
  %i.ig = load i8, ptr %.sroa.010.021.i, align 1
  switch i8 %i.ig, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i [
    i8 13, label %.critedge.i
    i8 10, label %.critedge.i
    i8 0, label %.critedge.i
    i8 12, label %.critedge.i
  ]

_ZN6Assimp9IsLineEndIcEEbT_.exit.i:               ; preds = %.lr.ph.i42
  %i.ih = getelementptr inbounds nuw i8, ptr %.sroa.010.021.i, i64 1 ; 4 uses
  %i.ii = icmp eq ptr %i.ih, %.sroa.0.0.copyload
  %i.ij = icmp eq ptr %i.ih, %i.ie
  %.0.i.i = or i1 %i.ii, %i.ij
  br i1 %.0.i.i, label %.critedge.i, label %.lr.ph.i42, !llvm.loop !1

.critedge.i:                                      ; preds = %_ZN6Assimp9IsLineEndIcEEbT_.exit.i, %.lr.ph.i42, %.lr.ph.i42, %.lr.ph.i42, %.lr.ph.i42, %.preheader.i41
  %.sroa.010.0.lcssa.i = phi ptr [ %.sroa.03.0.copyload, %.preheader.i41 ], [ %i.ih, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i ], [ %.sroa.010.021.i, %.lr.ph.i42 ], [ %.sroa.010.021.i, %.lr.ph.i42 ], [ %.sroa.010.021.i, %.lr.ph.i42 ], [ %.sroa.010.021.i, %.lr.ph.i42 ] ; 3 uses
  %.not19.i = icmp eq ptr %.sroa.010.0.lcssa.i, %.sroa.0.0.copyload
  br i1 %.not19.i, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %.critedge.i
  %i.ik = getelementptr inbounds nuw i8, ptr %.sroa.010.0.lcssa.i, i64 1
  %i.il = load i32, ptr %i.ic, align 8
  %i.im = add i32 %i.il, 1
  store i32 %i.im, ptr %i.ic, align 8
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %.critedge.i
  %.sroa.010.1.i = phi ptr [ %i.ik, %bb.ao ], [ %.sroa.010.0.lcssa.i, %.critedge.i ] ; 5 uses
  %.not2030.i = icmp eq ptr %.sroa.010.1.i, %.sroa.0.0.copyload
  br i1 %.not2030.i, label %_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit, label %.lr.ph32.preheader.i

.lr.ph32.preheader.i:                             ; preds = %bb.ap
  %.sroa.010.136.i = ptrtoaddr ptr %.sroa.010.1.i to i64
  %i.in = sub i64 %i.id, %.sroa.010.136.i
  %scevgep.i = getelementptr i8, ptr %.sroa.010.1.i, i64 %i.in
  br label %.lr.ph32.i

.lr.ph32.i:                                       ; preds = %.critedge4.i, %.lr.ph32.preheader.i
  %.sroa.010.231.i = phi ptr [ %i.ip, %.critedge4.i ], [ %.sroa.010.1.i, %.lr.ph32.preheader.i ] ; 3 uses
  %i.io = load i8, ptr %.sroa.010.231.i, align 1
  switch i8 %i.io, label %_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit [
    i8 9, label %.critedge4.i
    i8 32, label %.critedge4.i
  ]

.critedge4.i:                                     ; preds = %.lr.ph32.i, %.lr.ph32.i
  %i.ip = getelementptr inbounds nuw i8, ptr %.sroa.010.231.i, i64 1 ; 2 uses
  %.not20.i = icmp eq ptr %i.ip, %.sroa.0.0.copyload
  br i1 %.not20.i, label %_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit, label %.lr.ph32.i, !llvm.loop !2

_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit: ; preds = %.critedge4.i, %.lr.ph32.i, %bb.ap, %bb.an
  %.sroa.010.3.i = phi ptr [ %.sroa.03.0.copyload, %bb.an ], [ %.sroa.010.1.i, %bb.ap ], [ %.sroa.010.231.i, %.lr.ph32.i ], [ %scevgep.i, %.critedge4.i ]
  store ptr %.sroa.010.3.i, ptr %0, align 8
  %i.iq = load ptr, ptr %1, align 8               ; 2 uses
  %i.ir = icmp eq ptr %i.iq, %i.v
  br i1 %i.ir, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43: ; preds = %_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit
  %i.is = load i64, ptr %i.v, align 8
  %i.it = add i64 %i.is, 1
  call void @_ZdlPvm(ptr noundef %i.iq, i64 noundef %i.it) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45: ; preds = %_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  br label %bb.aq

bb.aq:                                            ; preds = %_ZN6Assimp12getNextTokenIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45
  ret void

bb.ar:                                            ; preds = %bb.z, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, %bb.k
  %.pn20 = phi { ptr, i32 } [ %i.fa, %bb.z ], [ %i.bi, %bb.k ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38 ]
  %i.iu = load ptr, ptr %1, align 8               ; 2 uses
  %i.iv = icmp eq ptr %i.iu, %i.v
  br i1 %i.iv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46: ; preds = %bb.ar
  %i.iw = load i64, ptr %i.v, align 8
  %i.ix = add i64 %i.iw, 1
  call void @_ZdlPvm(ptr noundef %i.iu, i64 noundef %i.ix) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48: ; preds = %bb.ar, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  resume { ptr, i32 } %.pn20
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN6Assimp13ObjFileParser27getGroupNumberAndResolutionEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(4184) %0) local_unnamed_addr #11 align 2 {
bb.a:
  %.sroa.01.0.copyload = load ptr, ptr %0, align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.copyload = load ptr, ptr %i.a, align 8 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = ptrtoaddr ptr %.sroa.0.0.copyload to i64
  %.not.i = icmp ult ptr %.sroa.01.0.copyload, %.sroa.0.0.copyload
  br i1 %.not.i, label %.preheader.i, label %_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit

.preheader.i:                                     ; preds = %bb.a
  %i.d = getelementptr inbounds i8, ptr %.sroa.0.0.copyload, i64 -1 ; 2 uses
  %i.e = icmp eq ptr %.sroa.01.0.copyload, %i.d
  br i1 %i.e, label %.critedge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i
  %.sroa.010.021.i = phi ptr [ %i.g, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i ], [ %.sroa.01.0.copyload, %.preheader.i ] ; 6 uses
  %i.f = load i8, ptr %.sroa.010.021.i, align 1
  switch i8 %i.f, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i [
    i8 13, label %.critedge.i
    i8 10, label %.critedge.i
    i8 0, label %.critedge.i
    i8 12, label %.critedge.i
  ]

_ZN6Assimp9IsLineEndIcEEbT_.exit.i:               ; preds = %.lr.ph.i
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.010.021.i, i64 1 ; 4 uses
  %i.h = icmp eq ptr %i.g, %.sroa.0.0.copyload
  %i.i = icmp eq ptr %i.g, %i.d
  %.0.i.i = or i1 %i.h, %i.i
  br i1 %.0.i.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !1

.critedge.i:                                      ; preds = %_ZN6Assimp9IsLineEndIcEEbT_.exit.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.preheader.i
  %.sroa.010.0.lcssa.i = phi ptr [ %.sroa.01.0.copyload, %.preheader.i ], [ %i.g, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i ], [ %.sroa.010.021.i, %.lr.ph.i ], [ %.sroa.010.021.i, %.lr.ph.i ], [ %.sroa.010.021.i, %.lr.ph.i ], [ %.sroa.010.021.i, %.lr.ph.i ] ; 3 uses
  %.not19.i = icmp eq ptr %.sroa.010.0.lcssa.i, %.sroa.0.0.copyload
  br i1 %.not19.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.critedge.i
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.010.0.lcssa.i, i64 1
  %i.k = load i32, ptr %i.b, align 8
  %i.l = add i32 %i.k, 1
  store i32 %i.l, ptr %i.b, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.critedge.i
  %.sroa.010.1.i = phi ptr [ %i.j, %bb.b ], [ %.sroa.010.0.lcssa.i, %.critedge.i ] ; 5 uses
  %.not2030.i = icmp eq ptr %.sroa.010.1.i, %.sroa.0.0.copyload
  br i1 %.not2030.i, label %_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit, label %.lr.ph32.preheader.i

.lr.ph32.preheader.i:                             ; preds = %bb.c
  %.sroa.010.136.i = ptrtoaddr ptr %.sroa.010.1.i to i64
  %i.m = sub i64 %i.c, %.sroa.010.136.i
  %scevgep.i = getelementptr i8, ptr %.sroa.010.1.i, i64 %i.m
  br label %.lr.ph32.i

.lr.ph32.i:                                       ; preds = %.critedge4.i, %.lr.ph32.preheader.i
  %.sroa.010.231.i = phi ptr [ %i.o, %.critedge4.i ], [ %.sroa.010.1.i, %.lr.ph32.preheader.i ] ; 3 uses
  %i.n = load i8, ptr %.sroa.010.231.i, align 1
  switch i8 %i.n, label %_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit [
    i8 9, label %.critedge4.i
    i8 32, label %.critedge4.i
  ]

.critedge4.i:                                     ; preds = %.lr.ph32.i, %.lr.ph32.i
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.010.231.i, i64 1 ; 2 uses
  %.not20.i = icmp eq ptr %i.o, %.sroa.0.0.copyload
  br i1 %.not20.i, label %_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit, label %.lr.ph32.i, !llvm.loop !2

_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit: ; preds = %.lr.ph32.i, %.critedge4.i, %bb.a, %bb.c
  %.sroa.010.3.i = phi ptr [ %.sroa.01.0.copyload, %bb.a ], [ %.sroa.010.1.i, %bb.c ], [ %.sroa.010.231.i, %.lr.ph32.i ], [ %scevgep.i, %.critedge4.i ]
  store ptr %.sroa.010.3.i, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6Assimp13ObjFileParser14getMaterialLibEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(4184) %0) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %8 = alloca %"class.std::vector.30", align 8    ; 10 uses
  %9 = alloca %"class.Assimp::ObjFileMtlImporter", align 8 ; 8 uses
  %.sroa.06.0.copyload = load ptr, ptr %0, align 8 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sroa.05.0.copyload = load ptr, ptr %i.d, align 8 ; 8 uses
  %i.e = getelementptr inbounds i8, ptr %.sroa.05.0.copyload, i64 -1 ; 4 uses
  %i.f = icmp eq ptr %.sroa.06.0.copyload, %.sroa.05.0.copyload
  %i.g = icmp eq ptr %.sroa.06.0.copyload, %i.e
  %.0.i5.i.i = select i1 %i.f, i1 true, i1 %i.g
  br i1 %.0.i5.i.i, label %_ZN6Assimp16getNextDelimiterIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i, label %.lr.ph.i.i
end_hunk_1
