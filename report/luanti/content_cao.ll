Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/content_cao?download=true
inline.NumInlined: 3123
inline.NumDeleted: 1535
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN10GenericCAO13setAttachmentEtRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4core8vector3dIfEESA_b:bb.a

_ZNKSt3mapItSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS1_EESt4lessItESaISt4pairIKtS4_EEE4findERS8_.exit17.i.i.i: ; preds = %_ZNKSt8_Rb_treeItSt4pairIKtSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS3_EEESt10_Select1stIS7_ESt4lessItESaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i14.i.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.19.i.i.i9.i.i.i, i64 32
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !259
  %i.ad = icmp ult i16 %1, %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %.19.i.i.i9.i.i.i, i64 40
  %spec.select.i.i.i = select i1 %i.ad, ptr @_ZN13ModifySafeMapItSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS1_EEE10null_valueE, ptr %i.ae
  br label %_ZN17ClientEnvironment15getActiveObjectEt.exit

_ZN17ClientEnvironment15getActiveObjectEt.exit:   ; preds = %bb.c, %.thread.i.i.i, %_ZNKSt8_Rb_treeItSt4pairIKtSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS3_EEESt10_Select1stIS7_ESt4lessItESaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i14.i.i.i, %_ZNKSt3mapItSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS1_EESt4lessItESaISt4pairIKtS4_EEE4findERS8_.exit17.i.i.i
  %.2.i.i.i = phi ptr [ %i.t, %bb.c ], [ @_ZN13ModifySafeMapItSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS1_EEE10null_valueE, %_ZNKSt8_Rb_treeItSt4pairIKtSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS3_EEESt10_Select1stIS7_ESt4lessItESaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i14.i.i.i ], [ %spec.select.i.i.i, %_ZNKSt3mapItSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS1_EESt4lessItESaISt4pairIKtS4_EEE4findERS8_.exit17.i.i.i ], [ @_ZN13ModifySafeMapItSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS1_EEE10null_valueE, %.thread.i.i.i ]
  %i.af = load ptr, ptr %.2.i.i.i, align 8, !tbaa !294 ; 4 uses
  %i.ag = icmp eq ptr %i.af, %0
  br i1 %i.ag, label %.critedge.thread, label %bb.d

bb.d:                                             ; preds = %_ZN17ClientEnvironment15getActiveObjectEt.exit
  %.not = icmp eq ptr %i.af, null
  br i1 %.not, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ah = load ptr, ptr %i.af, align 8, !tbaa !55
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 160
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = tail call noundef ptr %i.aj(ptr noundef nonnull align 8 dereferenceable(32) %i.af) ; 2 uses
  %.not2899 = icmp eq ptr %i.ak, null
  br i1 %.not2899, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e, %bb.f
  %.023100 = phi ptr [ %i.ap, %bb.f ], [ %i.ak, %bb.e ] ; 3 uses
  %i.al = icmp eq ptr %.023100, %0
  br i1 %i.al, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.am = load ptr, ptr %.023100, align 8, !tbaa !55
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 160
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = tail call noundef ptr %i.ao(ptr noundef nonnull align 8 dereferenceable(32) %.023100) ; 2 uses
  %.not28 = icmp eq ptr %i.ap, null
  br i1 %.not28, label %.critedge, label %.lr.ph, !llvm.loop !704

bb.g:                                             ; preds = %.lr.ph
  %.not.i = icmp eq ptr @_ZTH13warningstream, null
  br i1 %.not.i, label %_ZTW13warningstream.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZTH13warningstream()
  br label %_ZTW13warningstream.exit

_ZTW13warningstream.exit:                         ; preds = %bb.g, %bb.h
  %i.aq = tail call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @warningstream) ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !170, !nonnull !47, !align !171 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !55
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = tail call noundef zeroext i1 %i.at(ptr noundef nonnull align 8 dereferenceable(8) %i.ar), !inline_history !705
  %.v.i = select i1 %i.au, i64 976, i64 984
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.v.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr @.str.3, ptr %i.d, align 8, !tbaa !172
  %i.aw = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.av, ptr noundef nonnull align 8 dereferenceable(8) %i.d) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr @.str.4, ptr %i.c, align 8, !tbaa !172
  %i.ax = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.av, ptr noundef nonnull align 8 dereferenceable(8) %i.c) ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.az = load ptr, ptr %i.ax, align 8, !tbaa !173 ; 5 uses
  %.not.i32 = icmp eq ptr %i.az, null
  br i1 %.not.i32, label %_ZN11StreamProxylsIRtEERS_OT_.exit, label %bb.i

bb.i:                                             ; preds = %_ZTW13warningstream.exit
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !55
  %i.bb = getelementptr i8, ptr %i.ba, i64 -24
  %i.bc = load i64, ptr %i.bb, align 8
  %i.bd = getelementptr inbounds i8, ptr %i.az, i64 %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 32
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !159
  %i.bg = icmp eq i32 %i.bf, 0
  br i1 %i.bg, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.az)
  %.pre.i = load ptr, ptr %i.ax, align 8, !tbaa !173
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.bh = phi ptr [ %.pre.i, %bb.j ], [ %i.az, %bb.i ]
  %i.bi = load i16, ptr %i.ay, align 8, !tbaa !259
  %i.bj = zext i16 %i.bi to i64
  %i.bk = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.bh, i64 noundef %i.bj) ; 0 uses
  br label %_ZN11StreamProxylsIRtEERS_OT_.exit

_ZN11StreamProxylsIRtEERS_OT_.exit:               ; preds = %_ZTW13warningstream.exit, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @.str.5, ptr %i.b, align 8, !tbaa !172
  %i.bl = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ax, ptr noundef nonnull align 8 dereferenceable(8) %i.b) ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !173 ; 5 uses
  %.not.i33 = icmp eq ptr %i.bm, null
  br i1 %.not.i33, label %_ZN11StreamProxylsIRtEERS_OT_.exit35, label %bb.l

bb.l:                                             ; preds = %_ZN11StreamProxylsIRtEERS_OT_.exit
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !55
  %i.bo = getelementptr i8, ptr %i.bn, i64 -24
  %i.bp = load i64, ptr %i.bo, align 8
  %i.bq = getelementptr inbounds i8, ptr %i.bm, i64 %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 32
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !159
  %i.bt = icmp eq i32 %i.bs, 0
  br i1 %i.bt, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.bm)
  %.pre.i34 = load ptr, ptr %i.bl, align 8, !tbaa !173
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bu = phi ptr [ %.pre.i34, %bb.m ], [ %i.bm, %bb.l ]
  %i.bv = zext i16 %1 to i64
  %i.bw = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.bu, i64 noundef %i.bv) ; 0 uses
  br label %_ZN11StreamProxylsIRtEERS_OT_.exit35

_ZN11StreamProxylsIRtEERS_OT_.exit35:             ; preds = %_ZN11StreamProxylsIRtEERS_OT_.exit, %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @.str.6, ptr %i.a, align 8, !tbaa !172
  %i.bx = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.bl, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !173 ; 5 uses
  %.not.i36 = icmp eq ptr %i.by, null
  br i1 %.not.i36, label %.critedge.thread, label %bb.o

bb.o:                                             ; preds = %_ZN11StreamProxylsIRtEERS_OT_.exit35
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !55
  %i.ca = getelementptr i8, ptr %i.bz, i64 -24
  %i.cb = load i64, ptr %i.ca, align 8            ; 2 uses
  %i.cc = getelementptr inbounds i8, ptr %i.by, i64 %i.cb
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 32
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !159
  %i.cf = icmp eq i32 %i.ce, 0
  br i1 %i.cf, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.by)
  %.pre.i37 = load ptr, ptr %i.bx, align 8, !tbaa !173 ; 2 uses
  %.pre = load ptr, ptr %.pre.i37, align 8, !tbaa !55
  %.phi.trans.insert = getelementptr i8, ptr %.pre, i64 -24
  %.pre101 = load i64, ptr %.phi.trans.insert, align 8
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.cg = phi i64 [ %.pre101, %bb.p ], [ %i.cb, %bb.o ]
  %i.ch = phi ptr [ %.pre.i37, %bb.p ], [ %i.by, %bb.o ] ; 2 uses
  %i.ci = getelementptr inbounds i8, ptr %i.ch, i64 %i.cg
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 240
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !179 ; 6 uses
  %.not.i.i.i92 = icmp eq ptr %i.ck, null
  br i1 %.not.i.i.i92, label %bb.r, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.r:                                             ; preds = %bb.q
  call void @_ZSt16__throw_bad_castv() #36
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.q
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 56
  %i.cm = load i8, ptr %i.cl, align 8, !tbaa !185
  %.not.i1.i.i = icmp eq i8 %i.cm, 0
  br i1 %.not.i1.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ck, i64 67
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !61
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

bb.t:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ck)
  %i.cp = load ptr, ptr %i.ck, align 8, !tbaa !55
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 48
  %i.cr = load ptr, ptr %i.cq, align 8
  %i.cs = call noundef signext i8 %i.cr(ptr noundef nonnull align 8 dereferenceable(570) %i.ck, i8 noundef signext 10), !inline_history !7
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.s, %bb.t
  %.0.i.i.i = phi i8 [ %i.co, %bb.s ], [ %i.cs, %bb.t ]
  %i.ct = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ch, i8 noundef signext %.0.i.i.i)
  %i.cu = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ct) ; 0 uses
  br label %.critedge.thread

.critedge:                                        ; preds = %bb.f, %bb.e, %bb.d
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 816 ; 2 uses
  %i.cw = load i16, ptr %i.cv, align 8, !tbaa !295 ; 6 uses
  store i16 %1, ptr %i.cv, align 8, !tbaa !295
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 880
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.cx, ptr noundef nonnull align 8 dereferenceable(32) %2)
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 912
  store <2 x float> %3, ptr %i.cy, align 8, !tbaa !48
  %.sroa.221.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 920
  store float %4, ptr %.sroa.221.0..sroa_idx, align 8, !tbaa !48
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 924
  store <2 x float> %5, ptr %i.cz, align 4, !tbaa !48
  %.sroa.217.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 932
  store float %6, ptr %.sroa.217.0..sroa_idx, align 4, !tbaa !48
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 937 ; 2 uses
  store i8 %i.e, ptr %i.da, align 1, !tbaa !290
  %i.db = load ptr, ptr %i.f, align 8, !tbaa !187 ; 9 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 232
  %i.dd = load i32, ptr %i.dc, align 8, !tbaa !291
  %.not.i.i.i38 = icmp eq i32 %i.dd, 0            ; 2 uses
  br i1 %.not.i.i.i38, label %.thread.i.i.i51, label %bb.u

bb.u:                                             ; preds = %.critedge
  %i.de = getelementptr inbounds nuw i8, ptr %i.db, i64 200
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !292 ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.db, i64 192 ; 2 uses
  %.not10.i.i.i.i.i.i39 = icmp eq ptr %i.df, null
  br i1 %.not10.i.i.i.i.i.i39, label %.thread.i.i.i51, label %.lr.ph.i.i.i.i.i.i40

.lr.ph.i.i.i.i.i.i40:                             ; preds = %bb.u, %.lr.ph.i.i.i.i.i.i40
  %.012.i.i.i.i.i.i41 = phi ptr [ %.1.i.i.i.i.i.i46, %.lr.ph.i.i.i.i.i.i40 ], [ %i.df, %bb.u ] ; 3 uses
  %.0811.i.i.i.i.i.i42 = phi ptr [ %.19.i.i.i.i.i.i43, %.lr.ph.i.i.i.i.i.i40 ], [ %i.dg, %bb.u ]
  %i.dh = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i41, i64 32
  %i.di = load i16, ptr %i.dh, align 2, !tbaa !259
  %i.dj = icmp ult i16 %i.di, %1                  ; 2 uses
  %.19.i.i.i.i.i.i43 = select i1 %i.dj, ptr %.0811.i.i.i.i.i.i42, ptr %.012.i.i.i.i.i.i41 ; 4 uses
  %.1.in.v.i.i.i.i.i.i44 = select i1 %i.dj, i64 24, i64 16
  %.1.in.i.i.i.i.i.i45 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i41, i64 %.1.in.v.i.i.i.i.i.i44
  %.1.i.i.i.i.i.i46 = load ptr, ptr %.1.in.i.i.i.i.i.i45, align 8, !tbaa !293 ; 2 uses
  %.not.i.i.i.i.i.i47 = icmp eq ptr %.1.i.i.i.i.i.i46, null
  br i1 %.not.i.i.i.i.i.i47, label %_ZNKSt8_Rb_treeItSt4pairIKtSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS3_EEESt10_Select1stIS7_ESt4lessItESaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i.i48, label %.lr.ph.i.i.i.i.i.i40, !llvm.loop !6

_ZNKSt8_Rb_treeItSt4pairIKtSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS3_EEESt10_Select1stIS7_ESt4lessItESaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i.i48: ; preds = %.lr.ph.i.i.i.i.i.i40
  %i.dk = icmp eq ptr %.19.i.i.i.i.i.i43, %i.dg
  br i1 %i.dk, label %.thread.i.i.i51, label %_ZNKSt3mapItSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS1_EESt4lessItESaISt4pairIKtS4_EEE4findERS8_.exit.i.i.i49

_ZNKSt3mapItSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS1_EESt4lessItESaISt4pairIKtS4_EEE4findERS8_.exit.i.i.i49: ; preds = %_ZNKSt8_Rb_treeItSt4pairIKtSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS3_EEESt10_Select1stIS7_ESt4lessItESaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i.i48
  %i.dl = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i.i43, i64 32
  %i.dm = load i16, ptr %i.dl, align 2, !tbaa !259
  %i.dn = icmp ult i16 %1, %i.dm
  br i1 %i.dn, label %.thread.i.i.i51, label %_ZN17ClientEnvironment15getActiveObjectEt.exit64.thread

.thread.i.i.i51:                                  ; preds = %_ZNKSt3mapItSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS1_EESt4lessItESaISt4pairIKtS4_EEE4findERS8_.exit.i.i.i49, %_ZNKSt8_Rb_treeItSt4pairIKtSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS3_EEESt10_Select1stIS7_ESt4lessItESaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i.i48, %bb.u, %.critedge
  %i.do = getelementptr inbounds nuw i8, ptr %i.db, i64 152
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !292 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.db, i64 144 ; 2 uses
  %.not10.i.i.i5.i.i.i52 = icmp eq ptr %i.dp, null
  br i1 %.not10.i.i.i5.i.i.i52, label %_ZN17ClientEnvironment15getActiveObjectEt.exit64, label %.lr.ph.i.i.i6.i.i.i53

.lr.ph.i.i.i6.i.i.i53:                            ; preds = %.thread.i.i.i51, %.lr.ph.i.i.i6.i.i.i53
  %.012.i.i.i7.i.i.i54 = phi ptr [ %.1.i.i.i12.i.i.i59, %.lr.ph.i.i.i6.i.i.i53 ], [ %i.dp, %.thread.i.i.i51 ] ; 3 uses
  %.0811.i.i.i8.i.i.i55 = phi ptr [ %.19.i.i.i9.i.i.i56, %.lr.ph.i.i.i6.i.i.i53 ], [ %i.dq, %.thread.i.i.i51 ]
  %i.dr = getelementptr inbounds nuw i8, ptr %.012.i.i.i7.i.i.i54, i64 32
  %i.ds = load i16, ptr %i.dr, align 2, !tbaa !259
  %i.dt = icmp ult i16 %i.ds, %1                  ; 2 uses
  %.19.i.i.i9.i.i.i56 = select i1 %i.dt, ptr %.0811.i.i.i8.i.i.i55, ptr %.012.i.i.i7.i.i.i54 ; 4 uses
  %.1.in.v.i.i.i10.i.i.i57 = select i1 %i.dt, i64 24, i64 16
  %.1.in.i.i.i11.i.i.i58 = getelementptr inbounds nuw i8, ptr %.012.i.i.i7.i.i.i54, i64 %.1.in.v.i.i.i10.i.i.i57
  %.1.i.i.i12.i.i.i59 = load ptr, ptr %.1.in.i.i.i11.i.i.i58, align 8, !tbaa !293 ; 2 uses
  %.not.i.i.i13.i.i.i60 = icmp eq ptr %.1.i.i.i12.i.i.i59, null
  br i1 %.not.i.i.i13.i.i.i60, label %_ZNKSt8_Rb_treeItSt4pairIKtSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS3_EEESt10_Select1stIS7_ESt4lessItESaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i14.i.i.i61, label %.lr.ph.i.i.i6.i.i.i53, !llvm.loop !6

_ZNKSt8_Rb_treeItSt4pairIKtSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS3_EEESt10_Select1stIS7_ESt4lessItESaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i14.i.i.i61: ; preds = %.lr.ph.i.i.i6.i.i.i53
  %i.du = icmp eq ptr %.19.i.i.i9.i.i.i56, %i.dq
  br i1 %i.du, label %_ZN17ClientEnvironment15getActiveObjectEt.exit64, label %_ZNKSt3mapItSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS1_EESt4lessItESaISt4pairIKtS4_EEE4findERS8_.exit17.i.i.i62

_ZNKSt3mapItSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS1_EESt4lessItESaISt4pairIKtS4_EEE4findERS8_.exit17.i.i.i62: ; preds = %_ZNKSt8_Rb_treeItSt4pairIKtSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS3_EEESt10_Select1stIS7_ESt4lessItESaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i14.i.i.i61
  %i.dv = getelementptr inbounds nuw i8, ptr %.19.i.i.i9.i.i.i56, i64 32
  %i.dw = load i16, ptr %i.dv, align 2, !tbaa !259
  %i.dx = icmp ult i16 %1, %i.dw
  %i.dy = getelementptr inbounds nuw i8, ptr %.19.i.i.i9.i.i.i56, i64 40
  %spec.select.i.i.i63 = select i1 %i.dx, ptr @_ZN13ModifySafeMapItSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS1_EEE10null_valueE, ptr %i.dy
  br label %_ZN17ClientEnvironment15getActiveObjectEt.exit64

_ZN17ClientEnvironment15getActiveObjectEt.exit64: ; preds = %.thread.i.i.i51, %_ZNKSt8_Rb_treeItSt4pairIKtSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS3_EEESt10_Select1stIS7_ESt4lessItESaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i14.i.i.i61, %_ZNKSt3mapItSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS1_EESt4lessItESaISt4pairIKtS4_EEE4findERS8_.exit17.i.i.i62
  %.2.i.i.i50 = phi ptr [ @_ZN13ModifySafeMapItSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS1_EEE10null_valueE, %.thread.i.i.i51 ], [ @_ZN13ModifySafeMapItSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS1_EEE10null_valueE, %_ZNKSt8_Rb_treeItSt4pairIKtSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS3_EEESt10_Select1stIS7_ESt4lessItESaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i14.i.i.i61 ], [ %spec.select.i.i.i63, %_ZNKSt3mapItSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS1_EESt4lessItESaISt4pairIKtS4_EEE4findERS8_.exit17.i.i.i62 ]
  %.not29 = icmp eq i16 %1, %i.cw
  br i1 %.not29, label %bb.aa, label %bb.v

_ZN17ClientEnvironment15getActiveObjectEt.exit64.thread: ; preds = %_ZNKSt3mapItSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS1_EESt4lessItESaISt4pairIKtS4_EEE4findERS8_.exit.i.i.i49
  %.not2998 = icmp eq i16 %1, %i.cw
  br i1 %.not2998, label %bb.aa, label %.thread.thread

.thread.thread:                                   ; preds = %_ZN17ClientEnvironment15getActiveObjectEt.exit64.thread
  %i.dz = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i.i43, i64 40
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !294
  br label %.lr.ph.i.i.i.i.i.i67.preheader

bb.v:                                             ; preds = %_ZN17ClientEnvironment15getActiveObjectEt.exit64
  %i.eb = load ptr, ptr %.2.i.i.i50, align 8, !tbaa !294 ; 3 uses
  br i1 %.not.i.i.i38, label %.thread.i.i.i78, label %.thread

.thread:                                          ; preds = %bb.v
  %.phi.trans.insert102 = getelementptr inbounds nuw i8, ptr %i.db, i64 200
  %.pre103 = load ptr, ptr %.phi.trans.insert102, align 8, !tbaa !292 ; 2 uses
  %.not10.i.i.i.i.i.i66 = icmp eq ptr %.pre103, null
  br i1 %.not10.i.i.i.i.i.i66, label %.thread.i.i.i78, label %.lr.ph.i.i.i.i.i.i67.preheader

.lr.ph.i.i.i.i.i.i67.preheader:                   ; preds = %.thread.thread, %.thread
  %i.ec = phi ptr [ %i.ea, %.thread.thread ], [ %i.eb, %.thread ] ; 3 uses
  %i.ed = phi ptr [ %i.df, %.thread.thread ], [ %.pre103, %.thread ]
  %i.ee = getelementptr inbounds nuw i8, ptr %i.db, i64 192 ; 2 uses
  br label %.lr.ph.i.i.i.i.i.i67

.lr.ph.i.i.i.i.i.i67:                             ; preds = %.lr.ph.i.i.i.i.i.i67.preheader, %.lr.ph.i.i.i.i.i.i67
  %.012.i.i.i.i.i.i68 = phi ptr [ %.1.i.i.i.i.i.i73, %.lr.ph.i.i.i.i.i.i67 ], [ %i.ed, %.lr.ph.i.i.i.i.i.i67.preheader ] ; 3 uses
  %.0811.i.i.i.i.i.i69 = phi ptr [ %.19.i.i.i.i.i.i70, %.lr.ph.i.i.i.i.i.i67 ], [ %i.ee, %.lr.ph.i.i.i.i.i.i67.preheader ]
  %i.ef = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i68, i64 32
  %i.eg = load i16, ptr %i.ef, align 2, !tbaa !259
  %i.eh = icmp ult i16 %i.eg, %i.cw               ; 2 uses
  %.19.i.i.i.i.i.i70 = select i1 %i.eh, ptr %.0811.i.i.i.i.i.i69, ptr %.012.i.i.i.i.i.i68 ; 4 uses
  %.1.in.v.i.i.i.i.i.i71 = select i1 %i.eh, i64 24, i64 16
  %.1.in.i.i.i.i.i.i72 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i68, i64 %.1.in.v.i.i.i.i.i.i71
  %.1.i.i.i.i.i.i73 = load ptr, ptr %.1.in.i.i.i.i.i.i72, align 8, !tbaa !293 ; 2 uses
  %.not.i.i.i.i.i.i74 = icmp eq ptr %.1.i.i.i.i.i.i73, null
  br i1 %.not.i.i.i.i.i.i74, label %_ZNKSt8_Rb_treeItSt4pairIKtSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS3_EEESt10_Select1stIS7_ESt4lessItESaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i.i75, label %.lr.ph.i.i.i.i.i.i67, !llvm.loop !6

_ZNKSt8_Rb_treeItSt4pairIKtSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS3_EEESt10_Select1stIS7_ESt4lessItESaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i.i75: ; preds = %.lr.ph.i.i.i.i.i.i67
  %i.ei = icmp eq ptr %.19.i.i.i.i.i.i70, %i.ee
  br i1 %i.ei, label %.thread.i.i.i78, label %_ZNKSt3mapItSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS1_EESt4lessItESaISt4pairIKtS4_EEE4findERS8_.exit.i.i.i76

_ZNKSt3mapItSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS1_EESt4lessItESaISt4pairIKtS4_EEE4findERS8_.exit.i.i.i76: ; preds = %_ZNKSt8_Rb_treeItSt4pairIKtSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS3_EEESt10_Select1stIS7_ESt4lessItESaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i.i75
  %i.ej = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i.i70, i64 32
  %i.ek = load i16, ptr %i.ej, align 2, !tbaa !259
  %i.el = icmp ult i16 %i.cw, %i.ek
  br i1 %i.el, label %.thread.i.i.i78, label %bb.w

bb.w:                                             ; preds = %_ZNKSt3mapItSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS1_EESt4lessItESaISt4pairIKtS4_EEE4findERS8_.exit.i.i.i76
  %i.em = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i.i70, i64 40
  br label %_ZN17ClientEnvironment15getActiveObjectEt.exit91

.thread.i.i.i78:                                  ; preds = %_ZNKSt3mapItSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS1_EESt4lessItESaISt4pairIKtS4_EEE4findERS8_.exit.i.i.i76, %_ZNKSt8_Rb_treeItSt4pairIKtSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS3_EEESt10_Select1stIS7_ESt4lessItESaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i.i75, %.thread, %bb.v
  %i.en = phi ptr [ %i.ec, %_ZNKSt3mapItSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS1_EESt4lessItESaISt4pairIKtS4_EEE4findERS8_.exit.i.i.i76 ], [ %i.ec, %_ZNKSt8_Rb_treeItSt4pairIKtSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS3_EEESt10_Select1stIS7_ESt4lessItESaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i.i75 ], [ %i.eb, %.thread ], [ %i.eb, %bb.v ] ; 3 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.db, i64 152
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !292 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.db, i64 144 ; 2 uses
  %.not10.i.i.i5.i.i.i79 = icmp eq ptr %i.ep, null
  br i1 %.not10.i.i.i5.i.i.i79, label %_ZN17ClientEnvironment15getActiveObjectEt.exit91, label %.lr.ph.i.i.i6.i.i.i80

.lr.ph.i.i.i6.i.i.i80:                            ; preds = %.thread.i.i.i78, %.lr.ph.i.i.i6.i.i.i80
  %.012.i.i.i7.i.i.i81 = phi ptr [ %.1.i.i.i12.i.i.i86, %.lr.ph.i.i.i6.i.i.i80 ], [ %i.ep, %.thread.i.i.i78 ] ; 3 uses
  %.0811.i.i.i8.i.i.i82 = phi ptr [ %.19.i.i.i9.i.i.i83, %.lr.ph.i.i.i6.i.i.i80 ], [ %i.eq, %.thread.i.i.i78 ]
  %i.er = getelementptr inbounds nuw i8, ptr %.012.i.i.i7.i.i.i81, i64 32
  %i.es = load i16, ptr %i.er, align 2, !tbaa !259
  %i.et = icmp ult i16 %i.es, %i.cw               ; 2 uses
  %.19.i.i.i9.i.i.i83 = select i1 %i.et, ptr %.0811.i.i.i8.i.i.i82, ptr %.012.i.i.i7.i.i.i81 ; 4 uses
  %.1.in.v.i.i.i10.i.i.i84 = select i1 %i.et, i64 24, i64 16
  %.1.in.i.i.i11.i.i.i85 = getelementptr inbounds nuw i8, ptr %.012.i.i.i7.i.i.i81, i64 %.1.in.v.i.i.i10.i.i.i84
  %.1.i.i.i12.i.i.i86 = load ptr, ptr %.1.in.i.i.i11.i.i.i85, align 8, !tbaa !293 ; 2 uses
  %.not.i.i.i13.i.i.i87 = icmp eq ptr %.1.i.i.i12.i.i.i86, null
  br i1 %.not.i.i.i13.i.i.i87, label %_ZNKSt8_Rb_treeItSt4pairIKtSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS3_EEESt10_Select1stIS7_ESt4lessItESaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i14.i.i.i88, label %.lr.ph.i.i.i6.i.i.i80, !llvm.loop !6

_ZNKSt8_Rb_treeItSt4pairIKtSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS3_EEESt10_Select1stIS7_ESt4lessItESaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i14.i.i.i88: ; preds = %.lr.ph.i.i.i6.i.i.i80
  %i.eu = icmp eq ptr %.19.i.i.i9.i.i.i83, %i.eq
  br i1 %i.eu, label %_ZN17ClientEnvironment15getActiveObjectEt.exit91, label %_ZNKSt3mapItSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS1_EESt4lessItESaISt4pairIKtS4_EEE4findERS8_.exit17.i.i.i89

_ZNKSt3mapItSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS1_EESt4lessItESaISt4pairIKtS4_EEE4findERS8_.exit17.i.i.i89: ; preds = %_ZNKSt8_Rb_treeItSt4pairIKtSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS3_EEESt10_Select1stIS7_ESt4lessItESaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i14.i.i.i88
  %i.ev = getelementptr inbounds nuw i8, ptr %.19.i.i.i9.i.i.i83, i64 32
  %i.ew = load i16, ptr %i.ev, align 2, !tbaa !259
  %i.ex = icmp ult i16 %i.cw, %i.ew
  %i.ey = getelementptr inbounds nuw i8, ptr %.19.i.i.i9.i.i.i83, i64 40
  %spec.select.i.i.i90 = select i1 %i.ex, ptr @_ZN13ModifySafeMapItSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS1_EEE10null_valueE, ptr %i.ey
  br label %_ZN17ClientEnvironment15getActiveObjectEt.exit91

_ZN17ClientEnvironment15getActiveObjectEt.exit91: ; preds = %bb.w, %.thread.i.i.i78, %_ZNKSt8_Rb_treeItSt4pairIKtSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS3_EEESt10_Select1stIS7_ESt4lessItESaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i14.i.i.i88, %_ZNKSt3mapItSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS1_EESt4lessItESaISt4pairIKtS4_EEE4findERS8_.exit17.i.i.i89
  %i.ez = phi ptr [ %i.ec, %bb.w ], [ %i.en, %_ZNKSt8_Rb_treeItSt4pairIKtSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS3_EEESt10_Select1stIS7_ESt4lessItESaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i14.i.i.i88 ], [ %i.en, %_ZNKSt3mapItSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS1_EESt4lessItESaISt4pairIKtS4_EEE4findERS8_.exit17.i.i.i89 ], [ %i.en, %.thread.i.i.i78 ] ; 3 uses
  %.2.i.i.i77 = phi ptr [ %i.em, %bb.w ], [ @_ZN13ModifySafeMapItSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS1_EEE10null_valueE, %_ZNKSt8_Rb_treeItSt4pairIKtSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS3_EEESt10_Select1stIS7_ESt4lessItESaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i14.i.i.i88 ], [ %spec.select.i.i.i90, %_ZNKSt3mapItSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS1_EESt4lessItESaISt4pairIKtS4_EEE4findERS8_.exit17.i.i.i89 ], [ @_ZN13ModifySafeMapItSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS1_EEE10null_valueE, %.thread.i.i.i78 ]
  %i.fa = load ptr, ptr %.2.i.i.i77, align 8, !tbaa !294 ; 3 uses
  %.not30 = icmp eq ptr %i.fa, null
  br i1 %.not30, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_ZN17ClientEnvironment15getActiveObjectEt.exit91
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fc = load i16, ptr %i.fb, align 8, !tbaa !186
  %i.fd = load ptr, ptr %i.fa, align 8, !tbaa !55
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 72
  %i.ff = load ptr, ptr %i.fe, align 8
  tail call void %i.ff(ptr noundef nonnull align 8 dereferenceable(10) %i.fa, i16 noundef zeroext %i.fc)
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %_ZN17ClientEnvironment15getActiveObjectEt.exit91
  %.not31 = icmp eq ptr %i.ez, null
  br i1 %.not31, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fh = load i16, ptr %i.fg, align 8, !tbaa !186
  %i.fi = load ptr, ptr %i.ez, align 8, !tbaa !55
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 64
  %i.fk = load ptr, ptr %i.fj, align 8
  tail call void %i.fk(ptr noundef nonnull align 8 dereferenceable(10) %i.ez, i16 noundef zeroext %i.fh)
  br label %bb.aa

bb.aa:                                            ; preds = %_ZN17ClientEnvironment15getActiveObjectEt.exit64.thread, %bb.y, %bb.z, %_ZN17ClientEnvironment15getActiveObjectEt.exit64
  %i.fl = load ptr, ptr %0, align 8, !tbaa !55
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 176
  %i.fn = load ptr, ptr %i.fm, align 8
  tail call void %i.fn(ptr noundef nonnull align 8 dereferenceable(1076) %0)
  %i.fo = load i8, ptr %i.da, align 1, !tbaa !290, !range !46, !noundef !47
  %i.fp = trunc nuw i8 %i.fo to i1
  br i1 %i.fp, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 528
  store i8 1, ptr %i.fq, align 8, !tbaa !119
  br label %.critedge.thread

bb.ac:                                            ; preds = %bb.aa
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 65
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !117, !range !46, !noundef !47
  %i.ft = trunc nuw i8 %i.fs to i1
  br i1 %i.ft, label %bb.ag, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 936
  %i.fv = load i8, ptr %i.fu, align 8, !tbaa !296, !range !46, !noundef !47
  %i.fw = trunc nuw i8 %i.fv to i1
  br i1 %i.fw, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !135
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 624
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !434
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 488
  %i.gc = load i32, ptr %i.gb, align 8, !tbaa !456
  %i.gd = icmp ne i32 %i.gc, 1
  %i.ge = zext i1 %i.gd to i8
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.gf = phi i8 [ 1, %bb.ad ], [ %i.ge, %bb.ae ]
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 528
  store i8 %i.gf, ptr %i.gg, align 8, !tbaa !119
  br label %.critedge.thread

bb.ag:                                            ; preds = %bb.ac
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 528
  store i8 1, ptr %i.gh, align 8, !tbaa !119
  br label %.critedge.thread

.critedge.thread:                                 ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit, %_ZN11StreamProxylsIRtEERS_OT_.exit35, %_ZN17ClientEnvironment15getActiveObjectEt.exit, %bb.ab, %bb.ag, %bb.af
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK10GenericCAO13getAttachmentEPtPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN4core8vector3dIfEESB_Pb(ptr noundef nonnull align 8 dereferenceable(1076) %0, ptr nofree noundef writeonly captures(none) initializes((0, 2)) %1, ptr noundef nonnull %2, ptr nofree noundef writeonly captures(none) initializes((0, 12)) %3, ptr nofree noundef writeonly captures(none) initializes((0, 12)) %4, ptr nofree noundef writeonly captures(none) initializes((0, 1)) %5) unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 816
  %i.b = load i16, ptr %i.a, align 8, !tbaa !295
  store i16 %i.b, ptr %1, align 2, !tbaa !259
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 880
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 912
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %3, ptr noundef nonnull align 8 dereferenceable(12) %i.d, i64 12, i1 false), !tbaa.struct !457
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 924
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %4, ptr noundef nonnull align 4 dereferenceable(12) %i.e, i64 12, i1 false), !tbaa.struct !457
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 937
  %i.g = load i8, ptr %i.f, align 1, !tbaa !290, !range !46, !noundef !47
  store i8 %i.g, ptr %5, align 1, !tbaa !458
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN10GenericCAO21clearChildAttachmentsEv(ptr noundef nonnull align 8 dereferenceable(1076) %0) unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 848 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !459
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 840
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.g
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !141
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load i16, ptr %i.g, align 2, !tbaa !259  ; 5 uses
  %i.i = load ptr, ptr %i.e, align 8, !tbaa !187  ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 232
  %i.k = load i32, ptr %i.j, align 8, !tbaa !291
  %.not.i.i.i = icmp eq i32 %i.k, 0
  br i1 %.not.i.i.i, label %.thread.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 200
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !292  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 192 ; 2 uses
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not10.i.i.i.i.i.i, label %.thread.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.c, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %i.m, %bb.c ] ; 3 uses
  %.0811.i.i.i.i.i.i = phi ptr [ %.19.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %i.n, %bb.c ]
  %i.o = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 32
  %i.p = load i16, ptr %i.o, align 2, !tbaa !259
  %i.q = icmp ult i16 %i.p, %i.h                  ; 2 uses
  %.19.i.i.i.i.i.i = select i1 %i.q, ptr %.0811.i.i.i.i.i.i, ptr %.012.i.i.i.i.i.i ; 4 uses
  %.1.in.v.i.i.i.i.i.i = select i1 %i.q, i64 24, i64 16
  %.1.in.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 %.1.in.v.i.i.i.i.i.i
  %.1.i.i.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i.i.i, align 8, !tbaa !293 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %.1.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNKSt8_Rb_treeItSt4pairIKtSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS3_EEESt10_Select1stIS7_ESt4lessItESaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !6

_ZNKSt8_Rb_treeItSt4pairIKtSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS3_EEESt10_Select1stIS7_ESt4lessItESaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %i.r = icmp eq ptr %.19.i.i.i.i.i.i, %i.n
  br i1 %i.r, label %.thread.i.i.i, label %_ZNKSt3mapItSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS1_EESt4lessItESaISt4pairIKtS4_EEE4findERS8_.exit.i.i.i

_ZNKSt3mapItSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS1_EESt4lessItESaISt4pairIKtS4_EEE4findERS8_.exit.i.i.i: ; preds = %_ZNKSt8_Rb_treeItSt4pairIKtSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS3_EEESt10_Select1stIS7_ESt4lessItESaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i.i, i64 32
  %i.t = load i16, ptr %i.s, align 2, !tbaa !259
  %i.u = icmp ult i16 %i.h, %i.t
  br i1 %i.u, label %.thread.i.i.i, label %bb.d

bb.d:                                             ; preds = %_ZNKSt3mapItSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS1_EESt4lessItESaISt4pairIKtS4_EEE4findERS8_.exit.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i.i, i64 40
  br label %_ZN17ClientEnvironment15getActiveObjectEt.exit

.thread.i.i.i:                                    ; preds = %_ZNKSt3mapItSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS1_EESt4lessItESaISt4pairIKtS4_EEE4findERS8_.exit.i.i.i, %_ZNKSt8_Rb_treeItSt4pairIKtSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS3_EEESt10_Select1stIS7_ESt4lessItESaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i.i, %bb.c, %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %i.i, i64 152
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !292  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.i, i64 144 ; 2 uses
  %.not10.i.i.i5.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not10.i.i.i5.i.i.i, label %_ZN17ClientEnvironment15getActiveObjectEt.exit, label %.lr.ph.i.i.i6.i.i.i

.lr.ph.i.i.i6.i.i.i:                              ; preds = %.thread.i.i.i, %.lr.ph.i.i.i6.i.i.i
  %.012.i.i.i7.i.i.i = phi ptr [ %.1.i.i.i12.i.i.i, %.lr.ph.i.i.i6.i.i.i ], [ %i.x, %.thread.i.i.i ] ; 3 uses
  %.0811.i.i.i8.i.i.i = phi ptr [ %.19.i.i.i9.i.i.i, %.lr.ph.i.i.i6.i.i.i ], [ %i.y, %.thread.i.i.i ]
  %i.z = getelementptr inbounds nuw i8, ptr %.012.i.i.i7.i.i.i, i64 32
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !259
  %i.ab = icmp ult i16 %i.aa, %i.h                ; 2 uses
  %.19.i.i.i9.i.i.i = select i1 %i.ab, ptr %.0811.i.i.i8.i.i.i, ptr %.012.i.i.i7.i.i.i ; 4 uses
  %.1.in.v.i.i.i10.i.i.i = select i1 %i.ab, i64 24, i64 16
  %.1.in.i.i.i11.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i7.i.i.i, i64 %.1.in.v.i.i.i10.i.i.i
  %.1.i.i.i12.i.i.i = load ptr, ptr %.1.in.i.i.i11.i.i.i, align 8, !tbaa !293 ; 2 uses
  %.not.i.i.i13.i.i.i = icmp eq ptr %.1.i.i.i12.i.i.i, null
  br i1 %.not.i.i.i13.i.i.i, label %_ZNKSt8_Rb_treeItSt4pairIKtSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS3_EEESt10_Select1stIS7_ESt4lessItESaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i14.i.i.i, label %.lr.ph.i.i.i6.i.i.i, !llvm.loop !6

_ZNKSt8_Rb_treeItSt4pairIKtSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS3_EEESt10_Select1stIS7_ESt4lessItESaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i14.i.i.i: ; preds = %.lr.ph.i.i.i6.i.i.i
  %i.ac = icmp eq ptr %.19.i.i.i9.i.i.i, %i.y
  br i1 %i.ac, label %_ZN17ClientEnvironment15getActiveObjectEt.exit, label %_ZNKSt3mapItSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS1_EESt4lessItESaISt4pairIKtS4_EEE4findERS8_.exit17.i.i.i

_ZNKSt3mapItSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS1_EESt4lessItESaISt4pairIKtS4_EEE4findERS8_.exit17.i.i.i: ; preds = %_ZNKSt8_Rb_treeItSt4pairIKtSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS3_EEESt10_Select1stIS7_ESt4lessItESaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i14.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %.19.i.i.i9.i.i.i, i64 32
  %i.ae = load i16, ptr %i.ad, align 2, !tbaa !259
  %i.af = icmp ult i16 %i.h, %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %.19.i.i.i9.i.i.i, i64 40
  %spec.select.i.i.i = select i1 %i.af, ptr @_ZN13ModifySafeMapItSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS1_EEE10null_valueE, ptr %i.ag
  br label %_ZN17ClientEnvironment15getActiveObjectEt.exit

_ZN17ClientEnvironment15getActiveObjectEt.exit:   ; preds = %bb.d, %.thread.i.i.i, %_ZNKSt8_Rb_treeItSt4pairIKtSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS3_EEESt10_Select1stIS7_ESt4lessItESaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i14.i.i.i, %_ZNKSt3mapItSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS1_EESt4lessItESaISt4pairIKtS4_EEE4findERS8_.exit17.i.i.i
  %.2.i.i.i = phi ptr [ %i.v, %bb.d ], [ @_ZN13ModifySafeMapItSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS1_EEE10null_valueE, %_ZNKSt8_Rb_treeItSt4pairIKtSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS3_EEESt10_Select1stIS7_ESt4lessItESaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i14.i.i.i ], [ %spec.select.i.i.i, %_ZNKSt3mapItSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS1_EESt4lessItESaISt4pairIKtS4_EEE4findERS8_.exit17.i.i.i ], [ @_ZN13ModifySafeMapItSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS1_EEE10null_valueE, %.thread.i.i.i ]
  %i.ah = load ptr, ptr %.2.i.i.i, align 8, !tbaa !294 ; 3 uses
  %.not = icmp eq ptr %i.ah, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN17ClientEnvironment15getActiveObjectEt.exit
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !55
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 56
  %i.ak = load ptr, ptr %i.aj, align 8
  tail call void %i.ak(ptr noundef nonnull align 8 dereferenceable(10) %i.ah)
  br label %bb.g

bb.f:                                             ; preds = %_ZN17ClientEnvironment15getActiveObjectEt.exit
  %i.al = load ptr, ptr %0, align 8, !tbaa !55
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 72
  %i.an = load ptr, ptr %i.am, align 8
  tail call void %i.an(ptr noundef nonnull align 8 dereferenceable(1076) %0, i16 noundef zeroext %i.h)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ao = load i64, ptr %i.a, align 8, !tbaa !459
  %i.ap = icmp eq i64 %i.ao, 0
  br i1 %i.ap, label %._crit_edge, label %bb.b, !llvm.loop !706

._crit_edge:                                      ; preds = %bb.g, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN10GenericCAO18addAttachmentChildEt(ptr noundef nonnull align 8 dereferenceable(1076) %0, i16 noundef zeroext %1) unnamed_addr #4 align 2 {
bb.a:
  %2 = alloca %"struct.std::__detail::_AllocNode", align 8 ; 4 uses
  %i.a = alloca i16, align 2                      ; 3 uses
  store i16 %1, ptr %i.a, align 2, !tbaa !259
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 824 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  store ptr %i.b, ptr %2, align 8, !tbaa !708
  %i.c = call { ptr, i8 } @_ZNSt10_HashtableIttSaItENSt8__detail9_IdentityESt8equal_toItESt4hashItENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE16_M_insert_uniqueIRKtSF_NS1_10_AllocNodeISaINS1_10_Hash_nodeItLb0EEEEEEEESt4pairINS1_14_Node_iteratorItLb1ELb0EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(56) %i.b, ptr noundef nonnull align 2 dereferenceable(2) %i.a, ptr noundef nonnull align 2 dereferenceable(2) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %2) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN10GenericCAO21removeAttachmentChildEt(ptr noundef nonnull align 8 dereferenceable(1076) %0, i16 noundef zeroext %1) unnamed_addr #4 align 2 {
bb.a:
  %i.a = alloca i16, align 2                      ; 2 uses
  store i16 %1, ptr %i.a, align 2, !tbaa !259
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 824
  %i.c = call noundef i64 @_ZNSt10_HashtableIttSaItENSt8__detail9_IdentityESt8equal_toItESt4hashItENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE8_M_eraseESt17integral_constantIbLb1EERKt(ptr noundef nonnull align 8 dereferenceable(56) %i.b, ptr noundef nonnull align 2 dereferenceable(2) %i.a) ; 0 uses
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef ptr @_ZNK10GenericCAO9getParentEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1076) %0) unnamed_addr #16 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 816
  %i.b = load i16, ptr %i.a, align 8, !tbaa !295  ; 5 uses
  %.not = icmp eq i16 %i.b, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !187  ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 232
  %i.f = load i32, ptr %i.e, align 8, !tbaa !291
  %.not.i.i.i = icmp eq i32 %i.f, 0
  br i1 %.not.i.i.i, label %.thread.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 200
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !292  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 192 ; 2 uses
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not10.i.i.i.i.i.i, label %.thread.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.c, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %i.h, %bb.c ] ; 3 uses
  %.0811.i.i.i.i.i.i = phi ptr [ %.19.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %i.i, %bb.c ]
  %i.j = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 32
  %i.k = load i16, ptr %i.j, align 2, !tbaa !259
  %i.l = icmp ult i16 %i.k, %i.b                  ; 2 uses
end_hunk_0
begin_hunk_1_@_ZNKSt8__detail17_ReuseOrAllocNodeISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEEclIJRKSA_EEEPSB_DpOT_:bb.a
  %i.ab = extractvalue { ptr, i32 } %i.aa, 0
  tail call void @__clang_call_terminate(ptr %i.ab) #38
  unreachable

bb.k:                                             ; preds = %bb.c
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !614  ; 2 uses
  %.not5.i = icmp eq ptr %i.b, null
  br i1 %.not5.i, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE19_M_deallocate_nodesEPSB_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i
  %.06.i = phi ptr [ %i.c, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i ], [ %i.b, %bb.a ] ; 6 uses
  %i.c = load ptr, ptr %.06.i, align 8, !tbaa !41 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.06.i, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %.06.i, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !134  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.06.i, i64 56 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i
  %i.i = load i64, ptr %i.g, align 8, !tbaa !61
  %i.j = add i64 %i.i, 1
  tail call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %.lr.ph.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !134  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.06.i, i64 24 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i
  %i.n = load i64, ptr %i.l, align 8, !tbaa !61
  %i.o = add i64 %i.n, 1
  tail call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #35
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i, i64 noundef 80) #35
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE19_M_deallocate_nodesEPSB_.exit, label %.lr.ph.i, !llvm.loop !17

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE19_M_deallocate_nodesEPSB_.exit: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i, %bb.a
  %i.p = load ptr, ptr %0, align 8, !tbaa !531
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !532
  %i.s = shl i64 %i.r, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.p, i8 0, i64 %i.s, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2ERKS7_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !58
  %i.d = load ptr, ptr %1, align 8, !tbaa !134    ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !60   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  store i64 %i.f, ptr %i.b, align 8, !tbaa !138
  %i.g = icmp ugt i64 %i.f, 15
  br i1 %i.g, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.h = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !134
  %i.i = load i64, ptr %i.b, align 8, !tbaa !138
  store i64 %i.i, ptr %i.c, align 8, !tbaa !61
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.j = phi ptr [ %i.h, %.noexc.i ], [ %i.c, %bb.a ] ; 2 uses
  switch i64 %i.f, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.k = load i8, ptr %i.d, align 1, !tbaa !61
  store i8 %i.k, ptr %i.j, align 1, !tbaa !61
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr align 1 %i.d, i64 %i.f, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.b, %bb.c
  %i.l = load i64, ptr %i.b, align 8, !tbaa !138  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.l, ptr %i.m, align 8, !tbaa !60
  %i.n = load ptr, ptr %0, align 8, !tbaa !134
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  store i8 0, ptr %i.o, align 1, !tbaa !61
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  store ptr %i.r, ptr %i.p, align 8, !tbaa !58
  %i.s = load ptr, ptr %i.q, align 8, !tbaa !134  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.u = load i64, ptr %i.t, align 8, !tbaa !60   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i64 %i.u, ptr %i.a, align 8, !tbaa !138
  %i.v = icmp ugt i64 %i.u, 15
  br i1 %i.v, label %.noexc.i5, label %._crit_edge.i.i4

.noexc.i5:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.w = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.p, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.g     ; 2 uses

.noexc:                                           ; preds = %.noexc.i5
  store ptr %i.w, ptr %i.p, align 8, !tbaa !134
  %i.x = load i64, ptr %i.a, align 8, !tbaa !138
  store i64 %i.x, ptr %i.r, align 8, !tbaa !61
  br label %._crit_edge.i.i4

._crit_edge.i.i4:                                 ; preds = %.noexc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.y = phi ptr [ %i.w, %.noexc ], [ %i.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ] ; 2 uses
  switch i64 %i.u, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i4
  %i.z = load i8, ptr %i.s, align 1, !tbaa !61
  store i8 %i.z, ptr %i.y, align 1, !tbaa !61
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i4
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.y, ptr align 1 %i.s, i64 %i.u, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i4
  %i.aa = load i64, ptr %i.a, align 8, !tbaa !138 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.aa, ptr %i.ab, align 8, !tbaa !60
  %i.ac = load ptr, ptr %i.p, align 8, !tbaa !134
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.aa
  store i8 0, ptr %i.ad, align 1, !tbaa !61
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  ret void

bb.g:                                             ; preds = %.noexc.i5
  %i.ae = landingpad { ptr, i32 }
          cleanup
  %i.af = load ptr, ptr %0, align 8, !tbaa !134   ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.c
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.ah = load i64, ptr %i.c, align 8, !tbaa !61
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.ai) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %i.ae
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt22_Optional_payload_baseI16ToolCapabilitiesE14_M_copy_assignERKS1_(ptr noundef nonnull align 8 dereferenceable(113) %0, ptr noundef nonnull align 8 dereferenceable(113) %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !533, !range !46, !noundef !47
  %i.c = trunc nuw i8 %i.b to i1                  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.e = load i8, ptr %i.d, align 8, !range !46
  %i.f = trunc nuw i8 %i.e to i1                  ; 2 uses
  %or.cond = select i1 %i.c, i1 %i.f, i1 false
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(112) %1, i64 12, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_12ToolGroupCapESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EEaSERKSF_(ptr noundef nonnull align 8 dereferenceable(48) %i.g, ptr noundef nonnull align 8 dereferenceable(48) %i.h) ; 0 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.l = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_sESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EEaSERKSE_(ptr noundef nonnull align 8 dereferenceable(48) %i.j, ptr noundef nonnull align 8 dereferenceable(48) %i.k) ; 0 uses
  br label %_ZNSt22_Optional_payload_baseI16ToolCapabilitiesE8_M_resetEv.exit

bb.c:                                             ; preds = %bb.a
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZNSt22_Optional_payload_baseI16ToolCapabilitiesE12_M_constructIJRKS0_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(113) %0, ptr noundef nonnull align 8 dereferenceable(112) %1)
  br label %_ZNSt22_Optional_payload_baseI16ToolCapabilitiesE8_M_resetEv.exit

bb.e:                                             ; preds = %bb.c
  br i1 %i.c, label %bb.f, label %_ZNSt22_Optional_payload_baseI16ToolCapabilitiesE8_M_resetEv.exit

bb.f:                                             ; preds = %bb.e
  store i8 0, ptr %i.a, align 8, !tbaa !533
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !292
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_sESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %i.m, ptr noundef %i.o)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEsSt4lessIS5_ESaISt4pairIKS5_sEEED2Ev.exit.i.i.i unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  tail call void @__clang_call_terminate(ptr %i.q) #38
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEsSt4lessIS5_ESaISt4pairIKS5_sEEED2Ev.exit.i.i.i: ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !292
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_12ToolGroupCapESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE8_M_eraseEPSt13_Rb_tree_nodeIS9_E(ptr noundef nonnull align 8 dereferenceable(48) %i.r, ptr noundef %i.t)
          to label %_ZNSt22_Optional_payload_baseI16ToolCapabilitiesE8_M_resetEv.exit unwind label %bb.h

bb.h:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEsSt4lessIS5_ESaISt4pairIKS5_sEEED2Ev.exit.i.i.i
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  tail call void @__clang_call_terminate(ptr %i.v) #38
  unreachable

_ZNSt22_Optional_payload_baseI16ToolCapabilitiesE8_M_resetEv.exit: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEsSt4lessIS5_ESaISt4pairIKS5_sEEED2Ev.exit.i.i.i, %bb.e, %bb.d, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt22_Optional_payload_baseI16ToolCapabilitiesE12_M_constructIJRKS0_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(113) %0, ptr noundef nonnull align 8 dereferenceable(112) %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, short>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, short>>, std::less<std::__cxx11::basic_string<char>>>::_Alloc_node", align 8 ; 4 uses
  %3 = alloca %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, ToolGroupCap>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, ToolGroupCap>>, std::less<std::__cxx11::basic_string<char>>>::_Alloc_node", align 8 ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(112) %1, i64 12, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  store i32 0, ptr %i.b, align 8, !tbaa !619
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store ptr null, ptr %i.c, align 8, !tbaa !292
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store ptr %i.b, ptr %i.d, align 8, !tbaa !620
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr %i.b, ptr %i.e, align 8, !tbaa !621
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store i64 0, ptr %i.f, align 8, !tbaa !622
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !292  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE12ToolGroupCapSt4lessIS5_ESaISt4pairIKS5_S6_EEEC2ERKSD_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  store ptr %i.a, ptr %3, align 8, !tbaa !624
  %i.i = call noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_12ToolGroupCapESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE7_M_copyILb0ENSF_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS9_ESK_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull %i.h, ptr noundef nonnull %i.b, ptr noundef nonnull align 8 dereferenceable(8) %3) ; 3 uses
  br label %.noexc.i.i.i.i

.noexc.i.i.i.i:                                   ; preds = %.noexc.i.i.i.i, %bb.b
  %.0.i.i.i.i.i.i.i.i = phi ptr [ %i.k, %.noexc.i.i.i.i ], [ %i.i, %bb.b ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !625  ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_12ToolGroupCapESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i.i.i, label %.noexc.i.i.i.i, !llvm.loop !18

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_12ToolGroupCapESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i.i.i: ; preds = %.noexc.i.i.i.i
  store ptr %.0.i.i.i.i.i.i.i.i, ptr %i.d, align 8, !tbaa !293
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_12ToolGroupCapESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i.i.i
  %.0.i.i7.i.i.i.i.i.i = phi ptr [ %i.i, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_12ToolGroupCapESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i.i.i ], [ %i.m, %bb.c ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.0.i.i7.i.i.i.i.i.i, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !626  ; 2 uses
  %.not.i.i8.i.i.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i8.i.i.i.i.i.i, label %bb.d, label %bb.c, !llvm.loop !19

bb.d:                                             ; preds = %bb.c
  store ptr %.0.i.i7.i.i.i.i.i.i, ptr %i.e, align 8, !tbaa !293
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.o = load i64, ptr %i.n, align 8, !tbaa !622
  store i64 %i.o, ptr %i.f, align 8, !tbaa !622
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  store ptr %i.i, ptr %i.c, align 8, !tbaa !293
  br label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE12ToolGroupCapSt4lessIS5_ESaISt4pairIKS5_S6_EEEC2ERKSD_.exit.i.i

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE12ToolGroupCapSt4lessIS5_ESaISt4pairIKS5_S6_EEEC2ERKSD_.exit.i.i: ; preds = %bb.d, %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  store i32 0, ptr %i.p, align 8, !tbaa !619
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  store ptr null, ptr %i.q, align 8, !tbaa !292
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  store ptr %i.p, ptr %i.r, align 8, !tbaa !620
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  store ptr %i.p, ptr %i.s, align 8, !tbaa !621
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  store i64 0, ptr %i.t, align 8, !tbaa !622
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !292  ; 2 uses
  %.not.i.i5.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i5.i.i, label %_ZSt10_ConstructI16ToolCapabilitiesJRKS0_EEvPT_DpOT0_.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE12ToolGroupCapSt4lessIS5_ESaISt4pairIKS5_S6_EEEC2ERKSD_.exit.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  store ptr %i.w, ptr %2, align 8, !tbaa !628
  %i.x = invoke noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_sESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE7_M_copyILb0ENSE_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS8_ESJ_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %i.w, ptr noundef nonnull %i.v, ptr noundef nonnull %i.p, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %.noexc.i.i6.i.i unwind label %bb.h ; 3 uses

.noexc.i.i6.i.i:                                  ; preds = %bb.e, %.noexc.i.i6.i.i
  %.0.i.i.i.i.i.i7.i.i = phi ptr [ %i.z, %.noexc.i.i6.i.i ], [ %i.x, %bb.e ] ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i7.i.i, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !625  ; 2 uses
  %.not.i.i.i.i.i.i8.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i.i.i.i8.i.i, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_sESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i.i.i, label %.noexc.i.i6.i.i, !llvm.loop !18

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_sESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i.i.i: ; preds = %.noexc.i.i6.i.i
  store ptr %.0.i.i.i.i.i.i7.i.i, ptr %i.r, align 8, !tbaa !293
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_sESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i.i.i
  %.0.i.i7.i.i.i.i9.i.i = phi ptr [ %i.x, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_sESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i.i.i ], [ %i.ab, %bb.f ] ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.i.i7.i.i.i.i9.i.i, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !626 ; 2 uses
  %.not.i.i8.i.i.i.i10.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i8.i.i.i.i10.i.i, label %bb.g, label %bb.f, !llvm.loop !19

bb.g:                                             ; preds = %bb.f
  store ptr %.0.i.i7.i.i.i.i9.i.i, ptr %i.s, align 8, !tbaa !293
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !622
  store i64 %i.ad, ptr %i.t, align 8, !tbaa !622
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  store ptr %i.x, ptr %i.q, align 8, !tbaa !293
  br label %_ZSt10_ConstructI16ToolCapabilitiesJRKS0_EEvPT_DpOT0_.exit

bb.h:                                             ; preds = %bb.e
  %i.ae = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE12ToolGroupCapSt4lessIS5_ESaISt4pairIKS5_S6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.a) #28
  resume { ptr, i32 } %i.ae

_ZSt10_ConstructI16ToolCapabilitiesJRKS0_EEvPT_DpOT0_.exit: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE12ToolGroupCapSt4lessIS5_ESaISt4pairIKS5_S6_EEEC2ERKSD_.exit.i.i, %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i8 1, ptr %i.af, align 8, !tbaa !533
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(48) ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_12ToolGroupCapESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EEaSERKSF_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, ToolGroupCap>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, ToolGroupCap>>, std::less<std::__cxx11::basic_string<char>>>::_Reuse_or_alloc_node", align 8 ; 9 uses
  %.not = icmp eq ptr %0, %1
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !293  ; 4 uses
  store ptr %i.b, ptr %2, align 8, !tbaa !630
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !293  ; 2 uses
  store ptr %i.e, ptr %i.c, align 8, !tbaa !631
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr %0, ptr %i.f, align 8, !tbaa !624
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %.sink.split.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr null, ptr %i.g, align 8, !tbaa !632
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !625  ; 2 uses
  %.not5.i = icmp eq ptr %i.i, null
  br i1 %.not5.i, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_12ToolGroupCapESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE20_Reuse_or_alloc_nodeC2ERSF_.exit, label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.c, %bb.b
  %.sink.i = phi ptr [ %i.i, %bb.c ], [ null, %bb.b ]
  store ptr %.sink.i, ptr %i.c, align 8, !tbaa !631
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_12ToolGroupCapESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE20_Reuse_or_alloc_nodeC2ERSF_.exit

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_12ToolGroupCapESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE20_Reuse_or_alloc_nodeC2ERSF_.exit: ; preds = %bb.c, %.sink.split.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store ptr null, ptr %i.a, align 8, !tbaa !292
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.j, ptr %i.k, align 8, !tbaa !620
  store ptr %i.j, ptr %i.d, align 8, !tbaa !621
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store i64 0, ptr %i.l, align 8, !tbaa !622
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !292  ; 2 uses
  %.not6 = icmp eq ptr %i.n, null
  br i1 %.not6, label %bb.h, label %bb.d

bb.d:                                             ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_12ToolGroupCapESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE20_Reuse_or_alloc_nodeC2ERSF_.exit
  %i.o = invoke noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_12ToolGroupCapESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE7_M_copyILb0ENSF_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS9_ESK_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.n, ptr noundef nonnull %i.j, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %.noexc unwind label %bb.g     ; 3 uses

.noexc:                                           ; preds = %bb.d, %.noexc
end_hunk_1
begin_hunk_2_@_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_12ToolGroupCapESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE7_M_copyILb0ENSF_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS9_ESK_PSt18_Rb_tree_node_baseRT0_:bb.a
          catch ptr null
  %i.ak = extractvalue { ptr, i32 } %i.aj, 0
  tail call void @__clang_call_terminate(ptr %i.ak) #38
  unreachable

bb.t:                                             ; preds = %bb.p
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_sESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE7_M_copyILb0ENSE_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS8_ESJ_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load ptr, ptr %3, align 8, !tbaa !934, !nonnull !47, !align !171
  %i.c = tail call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #37 ; 9 uses
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_sESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE17_M_construct_nodeIJRKS8_EEEvPSt13_Rb_tree_nodeIS8_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull align 8 dereferenceable(34) %i.a)
  %i.d = load i32, ptr %1, align 8, !tbaa !634
  store i32 %i.d, ptr %i.c, align 8, !tbaa !634
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %2, ptr %i.f, align 8, !tbaa !632
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !626  ; 2 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = invoke noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_sESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE7_M_copyILb0ENSE_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS8_ESJ_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.h, ptr noundef nonnull %i.c, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.c unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %i.i, ptr %i.j, align 8, !tbaa !626
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %.030.in35 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.03036 = load ptr, ptr %.030.in35, align 8, !tbaa !625 ; 2 uses
  %.not3237 = icmp eq ptr %.03036, null
  br i1 %.not3237, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %bb.i
  %.03039 = phi ptr [ %.030, %bb.i ], [ %.03036, %bb.d ] ; 4 uses
  %.03138 = phi ptr [ %i.l, %bb.i ], [ %i.c, %bb.d ] ; 2 uses
  %i.k = load ptr, ptr %3, align 8, !tbaa !934, !nonnull !47, !align !171
  %i.l = invoke noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #37
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 8 uses

.noexc:                                           ; preds = %.lr.ph
  %i.m = getelementptr inbounds nuw i8, ptr %.03039, i64 32
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_sESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE17_M_construct_nodeIJRKS8_EEEvPSt13_Rb_tree_nodeIS8_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.k, ptr noundef nonnull %i.l, ptr noundef nonnull align 8 dereferenceable(34) %i.m)
          to label %bb.e unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.e:                                             ; preds = %.noexc
  %i.n = load i32, ptr %.03039, align 8, !tbaa !634
  store i32 %i.n, ptr %i.l, align 8, !tbaa !634
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, i8 0, i64 16, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %.03138, i64 16
  store ptr %i.l, ptr %i.p, align 8, !tbaa !625
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %.03138, ptr %i.q, align 8, !tbaa !632
  %i.r = getelementptr inbounds nuw i8, ptr %.03039, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !626  ; 2 uses
  %.not33 = icmp eq ptr %i.s, null
  br i1 %.not33, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = invoke noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_sESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE7_M_copyILb0ENSE_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS8_ESJ_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.s, ptr noundef nonnull %i.l, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.g unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store ptr %i.t, ptr %i.u, align 8, !tbaa !626
  br label %bb.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc, %.lr.ph, %bb.f, %bb.b
  %lpad.loopexit.split-lp43 = landingpad { ptr, i32 }
          catch ptr null
  %.0 = extractvalue { ptr, i32 } %lpad.loopexit.split-lp43, 0
  %i.v = tail call ptr @__cxa_begin_catch(ptr %.0) #28 ; 0 uses
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_sESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.c)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  invoke void @__cxa_rethrow() #36
          to label %bb.m unwind label %bb.j

bb.i:                                             ; preds = %bb.g, %bb.e
  %.030.in = getelementptr inbounds nuw i8, ptr %.03039, i64 16
  %.030 = load ptr, ptr %.030.in, align 8, !tbaa !625 ; 2 uses
  %.not32 = icmp eq ptr %.030, null
  br i1 %.not32, label %._crit_edge, label %.lr.ph, !llvm.loop !932

bb.j:                                             ; preds = %bb.h, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  resume { ptr, i32 } %i.w

._crit_edge:                                      ; preds = %bb.i, %bb.d
  ret ptr %i.c

bb.l:                                             ; preds = %bb.j
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  %i.y = extractvalue { ptr, i32 } %i.x, 0
  tail call void @__clang_call_terminate(ptr %i.y) #38
  unreachable

bb.m:                                             ; preds = %bb.h
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt22_Optional_payload_baseI13WearBarParamsE14_M_copy_assignERKS1_(ptr noundef nonnull align 8 dereferenceable(57) %0, ptr noundef nonnull align 8 dereferenceable(57) %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::_Rb_tree<float, std::pair<const float, video::SColor>, std::_Select1st<std::pair<const float, video::SColor>>, std::less<float>>::_Alloc_node", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !534, !range !46, !noundef !47
  %i.c = trunc nuw i8 %i.b to i1                  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.e = load i8, ptr %i.d, align 8, !range !46
  %i.f = trunc nuw i8 %i.e to i1                  ; 2 uses
  %or.cond = select i1 %i.c, i1 %i.f, i1 false
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZNSt8_Rb_treeIfSt4pairIKfN5video6SColorEESt10_Select1stIS4_ESt4lessIfESaIS4_EEaSERKSA_(ptr noundef nonnull align 8 dereferenceable(49) %0, ptr noundef nonnull align 8 dereferenceable(49) %1) ; 0 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.i = load i8, ptr %i.h, align 8, !tbaa !942
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 %i.i, ptr %i.j, align 8, !tbaa !942
  br label %_ZNSt22_Optional_payload_baseI13WearBarParamsE8_M_resetEv.exit

bb.c:                                             ; preds = %bb.a
  br i1 %i.f, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store i32 0, ptr %i.k, align 8, !tbaa !619
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr null, ptr %i.l, align 8, !tbaa !292
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.k, ptr %i.m, align 8, !tbaa !620
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store ptr %i.k, ptr %i.n, align 8, !tbaa !621
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store i64 0, ptr %i.o, align 8, !tbaa !622
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !292  ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt22_Optional_payload_baseI13WearBarParamsE12_M_constructIJRKS0_EEEvDpOT_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  store ptr %0, ptr %2, align 8, !tbaa !644
  %i.r = call noundef ptr @_ZNSt8_Rb_treeIfSt4pairIKfN5video6SColorEESt10_Select1stIS4_ESt4lessIfESaIS4_EE7_M_copyILb0ENSA_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS4_ESF_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(57) %0, ptr noundef nonnull %i.q, ptr noundef nonnull %i.k, ptr noundef nonnull align 8 dereferenceable(8) %2) ; 3 uses
  br label %.noexc.i.i.i.i.i

.noexc.i.i.i.i.i:                                 ; preds = %.noexc.i.i.i.i.i, %bb.e
  %.0.i.i.i.i.i.i.i.i.i = phi ptr [ %i.t, %.noexc.i.i.i.i.i ], [ %i.r, %bb.e ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i.i.i, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !625  ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt8_Rb_treeIfSt4pairIKfN5video6SColorEESt10_Select1stIS4_ESt4lessIfESaIS4_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i.i.i.i, label %.noexc.i.i.i.i.i, !llvm.loop !18

_ZNSt8_Rb_treeIfSt4pairIKfN5video6SColorEESt10_Select1stIS4_ESt4lessIfESaIS4_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i.i.i.i: ; preds = %.noexc.i.i.i.i.i
  store ptr %.0.i.i.i.i.i.i.i.i.i, ptr %i.m, align 8, !tbaa !293
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %_ZNSt8_Rb_treeIfSt4pairIKfN5video6SColorEESt10_Select1stIS4_ESt4lessIfESaIS4_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i.i.i.i
  %.0.i.i7.i.i.i.i.i.i.i = phi ptr [ %i.r, %_ZNSt8_Rb_treeIfSt4pairIKfN5video6SColorEESt10_Select1stIS4_ESt4lessIfESaIS4_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i.i.i.i ], [ %i.v, %bb.f ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.0.i.i7.i.i.i.i.i.i.i, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !626  ; 2 uses
  %.not.i.i8.i.i.i.i.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i8.i.i.i.i.i.i.i, label %bb.g, label %bb.f, !llvm.loop !19

bb.g:                                             ; preds = %bb.f
  store ptr %.0.i.i7.i.i.i.i.i.i.i, ptr %i.n, align 8, !tbaa !293
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.x = load i64, ptr %i.w, align 8, !tbaa !622
  store i64 %i.x, ptr %i.o, align 8, !tbaa !622
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  store ptr %i.r, ptr %i.l, align 8, !tbaa !293
  br label %_ZNSt22_Optional_payload_baseI13WearBarParamsE12_M_constructIJRKS0_EEEvDpOT_.exit

_ZNSt22_Optional_payload_baseI13WearBarParamsE12_M_constructIJRKS0_EEEvDpOT_.exit: ; preds = %bb.d, %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.aa = load i8, ptr %i.z, align 8, !tbaa !942
  store i8 %i.aa, ptr %i.y, align 8, !tbaa !942
  store i8 1, ptr %i.a, align 8, !tbaa !534
  br label %_ZNSt22_Optional_payload_baseI13WearBarParamsE8_M_resetEv.exit

bb.h:                                             ; preds = %bb.c
  br i1 %i.c, label %bb.i, label %_ZNSt22_Optional_payload_baseI13WearBarParamsE8_M_resetEv.exit

bb.i:                                             ; preds = %bb.h
  store i8 0, ptr %i.a, align 8, !tbaa !534
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !292
  invoke void @_ZNSt8_Rb_treeIfSt4pairIKfN5video6SColorEESt10_Select1stIS4_ESt4lessIfESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E(ptr noundef nonnull align 8 dereferenceable(57) %0, ptr noundef %i.ac)
          to label %_ZNSt22_Optional_payload_baseI13WearBarParamsE8_M_resetEv.exit unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = landingpad { ptr, i32 }
          catch ptr null
  %i.ae = extractvalue { ptr, i32 } %i.ad, 0
  tail call void @__clang_call_terminate(ptr %i.ae) #38
  unreachable

_ZNSt22_Optional_payload_baseI13WearBarParamsE8_M_resetEv.exit: ; preds = %bb.i, %bb.h, %_ZNSt22_Optional_payload_baseI13WearBarParamsE12_M_constructIJRKS0_EEEvDpOT_.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(48) ptr @_ZNSt8_Rb_treeIfSt4pairIKfN5video6SColorEESt10_Select1stIS4_ESt4lessIfESaIS4_EEaSERKSA_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::_Rb_tree<float, std::pair<const float, video::SColor>, std::_Select1st<std::pair<const float, video::SColor>>, std::less<float>>::_Reuse_or_alloc_node", align 8 ; 9 uses
  %.not = icmp eq ptr %0, %1
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !293  ; 4 uses
  store ptr %i.b, ptr %2, align 8, !tbaa !646
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !293  ; 2 uses
  store ptr %i.e, ptr %i.c, align 8, !tbaa !647
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr %0, ptr %i.f, align 8, !tbaa !644
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %.sink.split.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr null, ptr %i.g, align 8, !tbaa !632
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !625  ; 2 uses
  %.not5.i = icmp eq ptr %i.i, null
  br i1 %.not5.i, label %_ZNSt8_Rb_treeIfSt4pairIKfN5video6SColorEESt10_Select1stIS4_ESt4lessIfESaIS4_EE20_Reuse_or_alloc_nodeC2ERSA_.exit, label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.c, %bb.b
  %.sink.i = phi ptr [ %i.i, %bb.c ], [ null, %bb.b ]
  store ptr %.sink.i, ptr %i.c, align 8, !tbaa !647
  br label %_ZNSt8_Rb_treeIfSt4pairIKfN5video6SColorEESt10_Select1stIS4_ESt4lessIfESaIS4_EE20_Reuse_or_alloc_nodeC2ERSA_.exit

_ZNSt8_Rb_treeIfSt4pairIKfN5video6SColorEESt10_Select1stIS4_ESt4lessIfESaIS4_EE20_Reuse_or_alloc_nodeC2ERSA_.exit: ; preds = %bb.c, %.sink.split.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store ptr null, ptr %i.a, align 8, !tbaa !292
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.j, ptr %i.k, align 8, !tbaa !620
  store ptr %i.j, ptr %i.d, align 8, !tbaa !621
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store i64 0, ptr %i.l, align 8, !tbaa !622
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !292  ; 2 uses
  %.not6 = icmp eq ptr %i.n, null
  br i1 %.not6, label %bb.h, label %bb.d

bb.d:                                             ; preds = %_ZNSt8_Rb_treeIfSt4pairIKfN5video6SColorEESt10_Select1stIS4_ESt4lessIfESaIS4_EE20_Reuse_or_alloc_nodeC2ERSA_.exit
  %i.o = invoke noundef ptr @_ZNSt8_Rb_treeIfSt4pairIKfN5video6SColorEESt10_Select1stIS4_ESt4lessIfESaIS4_EE7_M_copyILb0ENSA_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS4_ESF_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.n, ptr noundef nonnull %i.j, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %.noexc unwind label %bb.g     ; 3 uses

.noexc:                                           ; preds = %bb.d, %.noexc
  %.0.i.i.i = phi ptr [ %i.q, %.noexc ], [ %i.o, %bb.d ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !625  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeIfSt4pairIKfN5video6SColorEESt10_Select1stIS4_ESt4lessIfESaIS4_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i, label %.noexc, !llvm.loop !18

_ZNSt8_Rb_treeIfSt4pairIKfN5video6SColorEESt10_Select1stIS4_ESt4lessIfESaIS4_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i: ; preds = %.noexc
  store ptr %.0.i.i.i, ptr %i.k, align 8, !tbaa !293
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %_ZNSt8_Rb_treeIfSt4pairIKfN5video6SColorEESt10_Select1stIS4_ESt4lessIfESaIS4_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i
  %.0.i.i7.i = phi ptr [ %i.o, %_ZNSt8_Rb_treeIfSt4pairIKfN5video6SColorEESt10_Select1stIS4_ESt4lessIfESaIS4_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i ], [ %i.s, %bb.e ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.0.i.i7.i, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !626  ; 2 uses
  %.not.i.i8.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i8.i, label %bb.f, label %bb.e, !llvm.loop !19

bb.f:                                             ; preds = %bb.e
  store ptr %.0.i.i7.i, ptr %i.d, align 8, !tbaa !293
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.u = load i64, ptr %i.t, align 8, !tbaa !622
  store i64 %i.u, ptr %i.l, align 8, !tbaa !622
  store ptr %i.o, ptr %i.a, align 8, !tbaa !293
  %.pre = load ptr, ptr %i.f, align 8, !tbaa !648
  %.pre7 = load ptr, ptr %2, align 8, !tbaa !646
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  %i.v = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8_Rb_treeIfSt4pairIKfN5video6SColorEESt10_Select1stIS4_ESt4lessIfESaIS4_EE20_Reuse_or_alloc_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  resume { ptr, i32 } %i.v

bb.h:                                             ; preds = %bb.f, %_ZNSt8_Rb_treeIfSt4pairIKfN5video6SColorEESt10_Select1stIS4_ESt4lessIfESaIS4_EE20_Reuse_or_alloc_nodeC2ERSA_.exit
  %i.w = phi ptr [ %.pre7, %bb.f ], [ %i.b, %_ZNSt8_Rb_treeIfSt4pairIKfN5video6SColorEESt10_Select1stIS4_ESt4lessIfESaIS4_EE20_Reuse_or_alloc_nodeC2ERSA_.exit ]
  %i.x = phi ptr [ %.pre, %bb.f ], [ %0, %_ZNSt8_Rb_treeIfSt4pairIKfN5video6SColorEESt10_Select1stIS4_ESt4lessIfESaIS4_EE20_Reuse_or_alloc_nodeC2ERSA_.exit ]
  invoke void @_ZNSt8_Rb_treeIfSt4pairIKfN5video6SColorEESt10_Select1stIS4_ESt4lessIfESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E(ptr noundef nonnull align 8 dereferenceable(48) %i.x, ptr noundef %i.w)
          to label %_ZNSt8_Rb_treeIfSt4pairIKfN5video6SColorEESt10_Select1stIS4_ESt4lessIfESaIS4_EE20_Reuse_or_alloc_nodeD2Ev.exit unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  call void @__clang_call_terminate(ptr %i.z) #38
  unreachable

_ZNSt8_Rb_treeIfSt4pairIKfN5video6SColorEESt10_Select1stIS4_ESt4lessIfESaIS4_EE20_Reuse_or_alloc_nodeD2Ev.exit: ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br label %bb.j

bb.j:                                             ; preds = %_ZNSt8_Rb_treeIfSt4pairIKfN5video6SColorEESt10_Select1stIS4_ESt4lessIfESaIS4_EE20_Reuse_or_alloc_nodeD2Ev.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeIfSt4pairIKfN5video6SColorEESt10_Select1stIS4_ESt4lessIfESaIS4_EE20_Reuse_or_alloc_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !648, !nonnull !47, !align !171
  %i.c = load ptr, ptr %0, align 8, !tbaa !646
  invoke void @_ZNSt8_Rb_treeIfSt4pairIKfN5video6SColorEESt10_Select1stIS4_ESt4lessIfESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef %i.c)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #38
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt8_Rb_treeIfSt4pairIKfN5video6SColorEESt10_Select1stIS4_ESt4lessIfESaIS4_EE7_M_copyILb0ENSA_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS4_ESF_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !647  ; 7 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeIfSt4pairIKfN5video6SColorEESt10_Select1stIS4_ESt4lessIfESaIS4_EE20_Reuse_or_alloc_node10_M_extractEv.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !632  ; 5 uses
  store ptr %i.d, ptr %i.a, align 8, !tbaa !647
  %.not9.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not9.i.i.i, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !626
  %i.g = icmp eq ptr %i.f, %i.b
  br i1 %i.g, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  store ptr null, ptr %i.e, align 8, !tbaa !626
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !625  ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not10.i.i.i, label %_ZNSt8_Rb_treeIfSt4pairIKfN5video6SColorEESt10_Select1stIS4_ESt4lessIfESaIS4_EE13_M_clone_nodeILb0ENSA_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS4_ESF_RT0_.exit, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.d, %.preheader.i.i.i
  %storemerge.i.i.i = phi ptr [ %i.k, %.preheader.i.i.i ], [ %i.i, %bb.d ] ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !626  ; 2 uses
  %.not11.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not11.i.i.i, label %bb.e, label %.preheader.i.i.i, !llvm.loop !943

bb.e:                                             ; preds = %.preheader.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !625  ; 2 uses
  %.not12.i.i.i = icmp eq ptr %i.m, null
  %spec.store.select.i.i.i = select i1 %.not12.i.i.i, ptr %storemerge.i.i.i, ptr %i.m
  store ptr %spec.store.select.i.i.i, ptr %i.a, align 8, !tbaa !647
  br label %_ZNSt8_Rb_treeIfSt4pairIKfN5video6SColorEESt10_Select1stIS4_ESt4lessIfESaIS4_EE13_M_clone_nodeILb0ENSA_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS4_ESF_RT0_.exit

bb.f:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr null, ptr %i.n, align 8, !tbaa !625
  br label %_ZNSt8_Rb_treeIfSt4pairIKfN5video6SColorEESt10_Select1stIS4_ESt4lessIfESaIS4_EE13_M_clone_nodeILb0ENSA_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS4_ESF_RT0_.exit

bb.g:                                             ; preds = %bb.b
  store ptr null, ptr %3, align 8, !tbaa !646
  br label %_ZNSt8_Rb_treeIfSt4pairIKfN5video6SColorEESt10_Select1stIS4_ESt4lessIfESaIS4_EE13_M_clone_nodeILb0ENSA_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS4_ESF_RT0_.exit

_ZNSt8_Rb_treeIfSt4pairIKfN5video6SColorEESt10_Select1stIS4_ESt4lessIfESaIS4_EE20_Reuse_or_alloc_node10_M_extractEv.exit.i.i: ; preds = %bb.a
  %i.o = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #37
  br label %_ZNSt8_Rb_treeIfSt4pairIKfN5video6SColorEESt10_Select1stIS4_ESt4lessIfESaIS4_EE13_M_clone_nodeILb0ENSA_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS4_ESF_RT0_.exit

_ZNSt8_Rb_treeIfSt4pairIKfN5video6SColorEESt10_Select1stIS4_ESt4lessIfESaIS4_EE13_M_clone_nodeILb0ENSA_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS4_ESF_RT0_.exit: ; preds = %bb.d, %bb.e, %bb.f, %bb.g, %_ZNSt8_Rb_treeIfSt4pairIKfN5video6SColorEESt10_Select1stIS4_ESt4lessIfESaIS4_EE20_Reuse_or_alloc_node10_M_extractEv.exit.i.i
end_hunk_2
begin_hunk_3_@_ZNSt8_Rb_treeIfSt4pairIKfN5video6SColorEESt10_Select1stIS4_ESt4lessIfESaIS4_EE7_M_copyILb0ENSA_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS4_ESF_PSt18_Rb_tree_node_baseRT0_:bb.a
  %i.at = getelementptr inbounds nuw i8, ptr %.sink.i.i36, i64 8
  store ptr %.03148, ptr %i.at, align 8, !tbaa !632
  %i.au = getelementptr inbounds nuw i8, ptr %.03049, i64 24
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !626 ; 2 uses
  %.not33 = icmp eq ptr %i.av, null
  br i1 %.not33, label %bb.u, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.aw = invoke noundef ptr @_ZNSt8_Rb_treeIfSt4pairIKfN5video6SColorEESt10_Select1stIS4_ESt4lessIfESaIS4_EE7_M_copyILb0ENSA_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS4_ESF_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.av, ptr noundef nonnull %.sink.i.i36, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.s unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.s:                                             ; preds = %bb.r
  %i.ax = getelementptr inbounds nuw i8, ptr %.sink.i.i36, i64 24
  store ptr %i.aw, ptr %i.ax, align 8, !tbaa !626
  br label %bb.u

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt8_Rb_treeIfSt4pairIKfN5video6SColorEESt10_Select1stIS4_ESt4lessIfESaIS4_EE20_Reuse_or_alloc_node10_M_extractEv.exit.i.i43, %bb.r, %bb.h
  %lpad.loopexit.split-lp59 = landingpad { ptr, i32 }
          catch ptr null
  %.0 = extractvalue { ptr, i32 } %lpad.loopexit.split-lp59, 0
  %i.ay = tail call ptr @__cxa_begin_catch(ptr %.0) #28 ; 0 uses
  invoke void @_ZNSt8_Rb_treeIfSt4pairIKfN5video6SColorEESt10_Select1stIS4_ESt4lessIfESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %.sink.i.i)
          to label %bb.t unwind label %bb.v

bb.t:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  invoke void @__cxa_rethrow() #36
          to label %bb.y unwind label %bb.v

bb.u:                                             ; preds = %bb.s, %bb.q
  %.030.in = getelementptr inbounds nuw i8, ptr %.03049, i64 16
  %.030 = load ptr, ptr %.030.in, align 8, !tbaa !625 ; 2 uses
  %.not32 = icmp eq ptr %.030, null
  br i1 %.not32, label %._crit_edge, label %.lr.ph, !llvm.loop !944

bb.v:                                             ; preds = %bb.t, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.az = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.w unwind label %bb.x

bb.w:                                             ; preds = %bb.v
  resume { ptr, i32 } %i.az

._crit_edge:                                      ; preds = %bb.u, %bb.j
  ret ptr %.sink.i.i

bb.x:                                             ; preds = %bb.v
  %i.ba = landingpad { ptr, i32 }
          catch ptr null
  %i.bb = extractvalue { ptr, i32 } %i.ba, 0
  tail call void @__clang_call_terminate(ptr %i.bb) #38
  unreachable

bb.y:                                             ; preds = %bb.t
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeIfSt4pairIKfN5video6SColorEESt10_Select1stIS4_ESt4lessIfESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !626
  tail call void @_ZNSt8_Rb_treeIfSt4pairIKfN5video6SColorEESt10_Select1stIS4_ESt4lessIfESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !625  ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 40) #35
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !945

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt8_Rb_treeIfSt4pairIKfN5video6SColorEESt10_Select1stIS4_ESt4lessIfESaIS4_EE7_M_copyILb0ENSA_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS4_ESF_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #37 ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load i64, ptr %i.a, align 4
  store i64 %i.d, ptr %i.c, align 4
  %i.e = load i32, ptr %1, align 8, !tbaa !634
  store i32 %i.e, ptr %i.b, align 8, !tbaa !634
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %2, ptr %i.g, align 8, !tbaa !632
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !626  ; 2 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = invoke noundef ptr @_ZNSt8_Rb_treeIfSt4pairIKfN5video6SColorEESt10_Select1stIS4_ESt4lessIfESaIS4_EE7_M_copyILb0ENSA_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS4_ESF_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.i, ptr noundef nonnull %i.b, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.c unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.j, ptr %i.k, align 8, !tbaa !626
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %.030.in34 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.03035 = load ptr, ptr %.030.in34, align 8, !tbaa !625 ; 2 uses
  %.not3236 = icmp eq ptr %.03035, null
  br i1 %.not3236, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %bb.i
  %.03038 = phi ptr [ %.030, %bb.i ], [ %.03035, %bb.d ] ; 4 uses
  %.03137 = phi ptr [ %i.l, %bb.i ], [ %i.b, %bb.d ] ; 2 uses
  %i.l = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #37
          to label %bb.e unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 8 uses

bb.e:                                             ; preds = %.lr.ph
  %i.m = getelementptr inbounds nuw i8, ptr %.03038, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.o = load i64, ptr %i.m, align 4
  store i64 %i.o, ptr %i.n, align 4
  %i.p = load i32, ptr %.03038, align 8, !tbaa !634
  store i32 %i.p, ptr %i.l, align 8, !tbaa !634
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.q, i8 0, i64 16, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %.03137, i64 16
  store ptr %i.l, ptr %i.r, align 8, !tbaa !625
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %.03137, ptr %i.s, align 8, !tbaa !632
  %i.t = getelementptr inbounds nuw i8, ptr %.03038, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !626  ; 2 uses
  %.not33 = icmp eq ptr %i.u, null
  br i1 %.not33, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = invoke noundef ptr @_ZNSt8_Rb_treeIfSt4pairIKfN5video6SColorEESt10_Select1stIS4_ESt4lessIfESaIS4_EE7_M_copyILb0ENSA_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS4_ESF_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.u, ptr noundef nonnull %i.l, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.g unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store ptr %i.v, ptr %i.w, align 8, !tbaa !626
  br label %bb.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph, %bb.f, %bb.b
  %lpad.loopexit.split-lp42 = landingpad { ptr, i32 }
          catch ptr null
  %.0 = extractvalue { ptr, i32 } %lpad.loopexit.split-lp42, 0
  %i.x = tail call ptr @__cxa_begin_catch(ptr %.0) #28 ; 0 uses
  invoke void @_ZNSt8_Rb_treeIfSt4pairIKfN5video6SColorEESt10_Select1stIS4_ESt4lessIfESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.b)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  invoke void @__cxa_rethrow() #36
          to label %bb.m unwind label %bb.j

bb.i:                                             ; preds = %bb.g, %bb.e
  %.030.in = getelementptr inbounds nuw i8, ptr %.03038, i64 16
  %.030 = load ptr, ptr %.030.in, align 8, !tbaa !625 ; 2 uses
  %.not32 = icmp eq ptr %.030, null
  br i1 %.not32, label %._crit_edge, label %.lr.ph, !llvm.loop !946

bb.j:                                             ; preds = %bb.h, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  resume { ptr, i32 } %i.y

._crit_edge:                                      ; preds = %bb.i, %bb.d
  ret ptr %i.b

bb.l:                                             ; preds = %bb.j
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  %i.aa = extractvalue { ptr, i32 } %i.z, 0
  tail call void @__clang_call_terminate(ptr %i.aa) #38
  unreachable

bb.m:                                             ; preds = %bb.h
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN17ItemStackMetadataD2Ev(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8                ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !55
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr i8, ptr %i.a, i64 -80
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr inbounds i8, ptr %0, i64 %i.e
  store ptr %i.c, ptr %i.f, align 8, !tbaa !55
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.h = load i8, ptr %i.g, align 8, !tbaa !534, !range !46, !noundef !47
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.b, label %_ZNSt14_Optional_baseI13WearBarParamsLb0ELb0EED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i8 0, ptr %i.g, align 8, !tbaa !534
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !292
  invoke void @_ZNSt8_Rb_treeIfSt4pairIKfN5video6SColorEESt10_Select1stIS4_ESt4lessIfESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E(ptr noundef nonnull align 8 dereferenceable(64) %i.j, ptr noundef %i.l)
          to label %_ZNSt14_Optional_baseI13WearBarParamsLb0ELb0EED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  tail call void @__clang_call_terminate(ptr %i.n) #38
  unreachable

_ZNSt14_Optional_baseI13WearBarParamsLb0ELb0EED2Ev.exit: ; preds = %bb.a, %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.p = load i8, ptr %i.o, align 8, !tbaa !533, !range !46, !noundef !47
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.d, label %_ZNSt14_Optional_baseI16ToolCapabilitiesLb0ELb0EED2Ev.exit

bb.d:                                             ; preds = %_ZNSt14_Optional_baseI13WearBarParamsLb0ELb0EED2Ev.exit
  store i8 0, ptr %i.o, align 8, !tbaa !533
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !292
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_sESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %i.r, ptr noundef %i.t)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEsSt4lessIS5_ESaISt4pairIKS5_sEEED2Ev.exit.i.i.i.i.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  tail call void @__clang_call_terminate(ptr %i.v) #38
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEsSt4lessIS5_ESaISt4pairIKS5_sEEED2Ev.exit.i.i.i.i.i: ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !292
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_12ToolGroupCapESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE8_M_eraseEPSt13_Rb_tree_nodeIS9_E(ptr noundef nonnull align 8 dereferenceable(48) %i.w, ptr noundef %i.y)
          to label %_ZNSt14_Optional_baseI16ToolCapabilitiesLb0ELb0EED2Ev.exit unwind label %bb.f

bb.f:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEsSt4lessIS5_ESaISt4pairIKS5_sEEED2Ev.exit.i.i.i.i.i
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  %i.aa = extractvalue { ptr, i32 } %i.z, 0
  tail call void @__clang_call_terminate(ptr %i.aa) #38
  unreachable

_ZNSt14_Optional_baseI16ToolCapabilitiesLb0ELb0EED2Ev.exit: ; preds = %_ZNSt14_Optional_baseI13WearBarParamsLb0ELb0EED2Ev.exit, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEsSt4lessIS5_ESaISt4pairIKS5_sEEED2Ev.exit.i.i.i.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8            ; 2 uses
  store ptr %i.ac, ptr %0, align 8, !tbaa !55
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = getelementptr i8, ptr %i.ac, i64 -80
  %i.ag = load i64, ptr %i.af, align 8
  %i.ah = getelementptr inbounds i8, ptr %0, i64 %i.ag
  store ptr %i.ae, ptr %i.ah, align 8, !tbaa !55
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.ai) #28
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !614  ; 2 uses
  %.not5.i.i = icmp eq ptr %i.b, null
  br i1 %.not5.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i
  %.06.i.i = phi ptr [ %i.c, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i ], [ %i.b, %bb.a ] ; 6 uses
  %i.c = load ptr, ptr %.06.i.i, align 8, !tbaa !41 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !134  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 56 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.i = load i64, ptr %i.g, align 8, !tbaa !61
  %i.j = add i64 %i.i, 1
  tail call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !134  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 24 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i
  %i.n = load i64, ptr %i.l, align 8, !tbaa !61
  %i.o = add i64 %i.n, 1
  tail call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #35
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i, i64 noundef 80) #35
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit, label %.lr.ph.i.i, !llvm.loop !17

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i, %bb.a
  %i.p = load ptr, ptr %0, align 8, !tbaa !531
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !532
  %i.s = shl i64 %i.r, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.p, i8 0, i64 %i.s, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.t = load ptr, ptr %0, align 8, !tbaa !531    ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit
  %i.w = load i64, ptr %i.q, align 8, !tbaa !532
  %i.x = shl i64 %i.w, 3
  tail call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #35
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit: ; preds = %bb.b, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit
  ret void
}

declare void @_ZN12MeshMakeDataC1EPK14NodeDefManagert8MeshGrid(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef, i16 noundef zeroext, i16) unnamed_addr #5

declare void @_ZN12MeshMakeData14fillSingleNodeE7MapNodeS0_(ptr noundef nonnull align 8 dereferenceable(80), i32, i32) local_unnamed_addr #5

declare void @_ZN21MapblockMeshGeneratorC1EP12MeshMakeDataP13MeshCollector(ptr noundef nonnull align 8 dereferenceable(496), ptr noundef, ptr noundef) unnamed_addr #5

declare void @_ZN21MapblockMeshGenerator8generateEv(ptr noundef nonnull align 8 dereferenceable(496)) local_unnamed_addr #5

declare void @_ZNK9TileLayer20applyMaterialOptionsERN5video9SMaterialEi(ptr noundef nonnull align 8 dereferenceable(45), ptr noundef nonnull align 8 dereferenceable(127), i32 noundef) local_unnamed_addr #5

declare void @_Z18getAdHocNodeShaderRN5video9SMaterialEP13IShaderSourcePKc9AlphaModei(ptr noundef nonnull align 8 dereferenceable(127), ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZN16VoxelManipulatorD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48)) unnamed_addr #6

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt5arrayISt6vectorI13PreMeshBufferSaIS1_EELm2EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !949  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !950  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIP13PreMeshBufferS0_EvT_S2_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyI13PreMeshBufferEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.s, %_ZSt8_DestroyI13PreMeshBufferEvPT_.exit.i.i.i ], [ %i.b, %bb.a ] ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 72
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !556  ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIN5video9S3DVertexESaIS1_EED2Ev.exit.i.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 88
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !649
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %i.f to i64
  %i.k = sub i64 %i.i, %i.j
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.k) #35
  br label %_ZNSt6vectorIN5video9S3DVertexESaIS1_EED2Ev.exit.i.i.i.i.i

_ZNSt6vectorIN5video9S3DVertexESaIS1_EED2Ev.exit.i.i.i.i.i: ; preds = %bb.b, %.lr.ph.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !558  ; 3 uses
  %.not.i.i.i1.i.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i1.i.i.i.i.i, label %_ZSt8_DestroyI13PreMeshBufferEvPT_.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN5video9S3DVertexESaIS1_EED2Ev.exit.i.i.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 64
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !650
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.m to i64
  %i.r = sub i64 %i.p, %i.q
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %i.r) #35
  br label %_ZSt8_DestroyI13PreMeshBufferEvPT_.exit.i.i.i

_ZSt8_DestroyI13PreMeshBufferEvPT_.exit.i.i.i:    ; preds = %bb.c, %_ZNSt6vectorIN5video9S3DVertexESaIS1_EED2Ev.exit.i.i.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 96 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.s, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIP13PreMeshBufferS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !947

_ZSt8_DestroyIP13PreMeshBufferS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyI13PreMeshBufferEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !949
  br label %_ZSt8_DestroyIP13PreMeshBufferS0_EvT_S2_RSaIT0_E.exit.i

_ZSt8_DestroyIP13PreMeshBufferS0_EvT_S2_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIP13PreMeshBufferS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.t = phi ptr [ %.pr.i, %_ZSt8_DestroyIP13PreMeshBufferS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorI13PreMeshBufferSaIS0_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIP13PreMeshBufferS0_EvT_S2_RSaIT0_E.exit.i
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !951
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.t to i64
  %i.y = sub i64 %i.w, %i.x
  tail call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.y) #35
  br label %_ZNSt6vectorI13PreMeshBufferSaIS0_EED2Ev.exit

_ZNSt6vectorI13PreMeshBufferSaIS0_EED2Ev.exit:    ; preds = %_ZSt8_DestroyIP13PreMeshBufferS0_EvT_S2_RSaIT0_E.exit.i, %bb.d
  %i.z = load ptr, ptr %0, align 8, !tbaa !949    ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !950 ; 2 uses
  %.not4.i.i.i.1 = icmp eq ptr %i.z, %i.ab
  br i1 %.not4.i.i.i.1, label %_ZSt8_DestroyIP13PreMeshBufferS0_EvT_S2_RSaIT0_E.exit.i.1, label %.lr.ph.i.i.i.1

.lr.ph.i.i.i.1:                                   ; preds = %_ZNSt6vectorI13PreMeshBufferSaIS0_EED2Ev.exit, %_ZSt8_DestroyI13PreMeshBufferEvPT_.exit.i.i.i.1
  %.05.i.i.i.1 = phi ptr [ %i.aq, %_ZSt8_DestroyI13PreMeshBufferEvPT_.exit.i.i.i.1 ], [ %i.z, %_ZNSt6vectorI13PreMeshBufferSaIS0_EED2Ev.exit ] ; 5 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.05.i.i.i.1, i64 72
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !556 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.1 = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.i.i.i.i.i.1, label %_ZNSt6vectorIN5video9S3DVertexESaIS1_EED2Ev.exit.i.i.i.i.i.1, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.1
  %i.ae = getelementptr inbounds nuw i8, ptr %.05.i.i.i.1, i64 88
end_hunk_3
