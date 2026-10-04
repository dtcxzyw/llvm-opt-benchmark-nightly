Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/cmELF?download=true
inline.NumInlined: 1271
inline.NumDeleted: 626
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN17cmELFInternalImplI12cmELFTypes32E20EncodeDynamicEntriesERKSt6vectorISt4pairIlmESaIS4_EE:bb.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN17cmELFInternalImplI12cmELFTypes32E23GetDynamicSectionStringEj(ptr noundef nonnull align 8 dereferenceable(192) %0, i32 noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::tuple.69", align 8     ; 4 uses
  %3 = alloca %"class.std::tuple.72", align 1     ; 3 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  store i32 %1, ptr %i.a, align 4, !tbaa !125
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !74   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 5 uses
  %.not10.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not10.i.i.i, label %.critedge.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i ], [ %i.e, %bb.a ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %.lr.ph.i.i.i ], [ %i.f, %bb.a ]
  %i.g = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.h = load i32, ptr %i.g, align 4, !tbaa !125
  %i.i = icmp ult i32 %i.h, %1                    ; 2 uses
  %.19.i.i.i = select i1 %i.i, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 5 uses
  %.1.in.v.i.i.i = select i1 %i.i, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !126 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeIjSt4pairIKjN5cmELF11StringEntryEESt10_Select1stIS4_ESt4lessIjESaIS4_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS4_EPSt18_Rb_tree_node_baseRS1_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !3

_ZNSt8_Rb_treeIjSt4pairIKjN5cmELF11StringEntryEESt10_Select1stIS4_ESt4lessIjESaIS4_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS4_EPSt18_Rb_tree_node_baseRS1_.exit.i.i: ; preds = %.lr.ph.i.i.i
  %i.j = icmp eq ptr %.19.i.i.i, %i.f
  br i1 %i.j, label %.lr.ph.i.i.i.i.preheader, label %_ZNSt3mapIjN5cmELF11StringEntryESt4lessIjESaISt4pairIKjS1_EEE4findERS5_.exit

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZNSt3mapIjN5cmELF11StringEntryESt4lessIjESaISt4pairIKjS1_EEE4findERS5_.exit, %_ZNSt8_Rb_treeIjSt4pairIKjN5cmELF11StringEntryEESt10_Select1stIS4_ESt4lessIjESaIS4_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS4_EPSt18_Rb_tree_node_baseRS1_.exit.i.i
  br label %.lr.ph.i.i.i.i

_ZNSt3mapIjN5cmELF11StringEntryESt4lessIjESaISt4pairIKjS1_EEE4findERS5_.exit: ; preds = %_ZNSt8_Rb_treeIjSt4pairIKjN5cmELF11StringEntryEESt10_Select1stIS4_ESt4lessIjESaIS4_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS4_EPSt18_Rb_tree_node_baseRS1_.exit.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.l = load i32, ptr %i.k, align 4, !tbaa !125
  %i.m = icmp ult i32 %1, %i.l
  br i1 %i.m, label %.lr.ph.i.i.i.i.preheader, label %bb.b

bb.b:                                             ; preds = %_ZNSt3mapIjN5cmELF11StringEntryESt4lessIjESaISt4pairIKjS1_EEE4findERS5_.exit
  %i.n = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 72
  %i.o = load i64, ptr %i.n, align 8, !tbaa !129
  %.not44 = icmp eq i64 %i.o, 0
  %i.p = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %spec.select62 = select i1 %.not44, ptr null, ptr %i.p
  br label %.loopexit

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.e, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.f, %.lr.ph.i.i.i.i.preheader ]
  %i.q = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.r = load i32, ptr %i.q, align 4, !tbaa !125
  %i.s = icmp ult i32 %i.r, %1                    ; 2 uses
  %.19.i.i.i.i = select i1 %i.s, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 6 uses
  %.1.in.v.i.i.i.i = select i1 %i.s, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !126 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt3mapIjN5cmELF11StringEntryESt4lessIjESaISt4pairIKjS1_EEE11lower_boundERS5_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !3

_ZNSt3mapIjN5cmELF11StringEntryESt4lessIjESaISt4pairIKjS1_EEE11lower_boundERS5_.exit.i: ; preds = %.lr.ph.i.i.i.i
  %i.t = icmp eq ptr %.19.i.i.i.i, %i.f
  br i1 %i.t, label %.critedge.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt3mapIjN5cmELF11StringEntryESt4lessIjESaISt4pairIKjS1_EEE11lower_boundERS5_.exit.i
  %i.u = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.v = load i32, ptr %i.u, align 4, !tbaa !125
  %i.w = icmp ult i32 %1, %i.v
  br i1 %i.w, label %.critedge.i, label %_ZNSt3mapIjN5cmELF11StringEntryESt4lessIjESaISt4pairIKjS1_EEEixERS5_.exit

.critedge.i:                                      ; preds = %bb.a, %bb.c, %_ZNSt3mapIjN5cmELF11StringEntryESt4lessIjESaISt4pairIKjS1_EEE11lower_boundERS5_.exit.i
  %.08.lcssa.i.i.i11.i = phi ptr [ %.19.i.i.i.i, %bb.c ], [ %.19.i.i.i.i, %_ZNSt3mapIjN5cmELF11StringEntryESt4lessIjESaISt4pairIKjS1_EEE11lower_boundERS5_.exit.i ], [ %i.f, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  store ptr %i.a, ptr %2, align 8, !tbaa !131
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.x = call ptr @_ZNSt8_Rb_treeIjSt4pairIKjN5cmELF11StringEntryEESt10_Select1stIS4_ESt4lessIjESaIS4_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESF_IJEEEEESt17_Rb_tree_iteratorIS4_ESt23_Rb_tree_const_iteratorIS4_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr %.08.lcssa.i.i.i11.i, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br label %_ZNSt3mapIjN5cmELF11StringEntryESt4lessIjESaISt4pairIKjS1_EEEixERS5_.exit

_ZNSt3mapIjN5cmELF11StringEntryESt4lessIjESaISt4pairIKjS1_EEEixERS5_.exit: ; preds = %bb.c, %.critedge.i
  %.sroa.06.0.i = phi ptr [ %i.x, %.critedge.i ], [ %.19.i.i.i.i, %bb.c ] ; 6 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 40 ; 6 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 72 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 80
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 88 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.z, i8 0, i64 16, i1 false)
  store i32 -1, ptr %i.ab, align 8, !tbaa !132
  %i.ac = call noundef zeroext i1 @_ZN17cmELFInternalImplI12cmELFTypes32E18LoadDynamicSectionEv(ptr noundef nonnull align 8 dereferenceable(192) %0)
  br i1 %i.ac, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %_ZNSt3mapIjN5cmELF11StringEntryESt4lessIjESaISt4pairIKjS1_EEEixERS5_.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !70
  %i.ag = sext i32 %i.af to i64
  %i.ah = load ptr, ptr %i.ad, align 8, !tbaa !95 ; 3 uses
  %i.ai = getelementptr inbounds nuw [40 x i8], ptr %i.ah, i64 %i.ag
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !198
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !94
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = ptrtoint ptr %i.ah to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = sdiv exact i64 %i.aq, 40
  %.not = icmp ugt i64 %i.ar, %i.al
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !71 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !21
  %i.ax = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.au, i64 noundef 0, i64 noundef %i.aw, ptr noundef nonnull @.str.21, i64 noundef 47) ; 0 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 0, ptr %i.ay, align 4, !tbaa !68
  br label %.loopexit

bb.f:                                             ; preds = %bb.d
  %i.az = getelementptr inbounds nuw [40 x i8], ptr %i.ah, i64 %i.al ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !104 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !104 ; 2 uses
  %.not6467 = icmp eq ptr %i.bb, %i.bd
  br i1 %.not6467, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f
  %i.be = load i32, ptr %i.a, align 4, !tbaa !125
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %.thread59
  %.sroa.047.068 = phi ptr [ %i.bb, %.lr.ph ], [ %i.eg, %.thread59 ] ; 4 uses
  %i.bf = load i32, ptr %.sroa.047.068, align 4, !tbaa !122
  %.not43 = icmp eq i32 %i.bf, %i.be
  br i1 %.not43, label %bb.h, label %.thread59

bb.h:                                             ; preds = %bb.g
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.047.068, i64 4
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !22 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.az, i64 20
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !105 ; 2 uses
  %.not41 = icmp ult i32 %i.bh, %i.bj
  br i1 %.not41, label %bb.i, label %.thread57

.thread57:                                        ; preds = %bb.h
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !71 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !21
  %i.bp = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.bm, i64 noundef 0, i64 noundef %i.bo, ptr noundef nonnull @.str.22, i64 noundef 71) ; 0 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 0, ptr %i.bq, align 4, !tbaa !68
  br label %.loopexit

bb.i:                                             ; preds = %bb.h
  %i.br = zext i32 %i.bh to i64                   ; 4 uses
  %i.bs = zext i32 %i.bj to i64                   ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !49
  %i.bv = getelementptr inbounds nuw i8, ptr %i.az, i64 16 ; 2 uses
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !107
  %i.bx = zext i32 %i.bw to i64
  %i.by = add nuw nsw i64 %i.bx, %i.br
  %i.bz = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi5seekgESt4fposI11__mbstate_tE(ptr noundef nonnull align 8 dereferenceable(16) %i.bu, i64 %i.by, i64 0) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 48 ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 56 ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.o
  %.070 = phi i1 [ false, %bb.i ], [ %.1, %bb.o ] ; 2 uses
  %.03169 = phi i64 [ %i.br, %bb.i ], [ %i.co, %bb.o ] ; 3 uses
  %i.cc = load ptr, ptr %i.bt, align 8, !tbaa !49
  %i.cd = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi3getERc(ptr noundef nonnull align 8 dereferenceable(16) %i.cc, ptr noundef nonnull align 1 dereferenceable(1) %i.b) ; 2 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !26
  %i.cf = getelementptr i8, ptr %i.ce, i64 -24
  %i.cg = load i64, ptr %i.cf, align 8
  %i.ch = getelementptr inbounds i8, ptr %i.cd, i64 %i.cg
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 32
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !35
  %i.ck = and i32 %i.cj, 5
  %.not.i = icmp eq i32 %i.ck, 0
  br i1 %.not.i, label %bb.k, label %.critedge

bb.k:                                             ; preds = %bb.j
  %i.cl = load i8, ptr %i.b, align 1              ; 2 uses
  %i.cm = icmp ne i8 %i.cl, 0                     ; 2 uses
  %i.cn = select i1 %.070, i1 %i.cm, i1 false
  br i1 %i.cn, label %.critedge, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.co = add nuw nsw i64 %.03169, 1              ; 2 uses
  br i1 %i.cm, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.cp = load i64, ptr %i.ca, align 8, !tbaa !21 ; 4 uses
  %i.cq = add i64 %i.cp, 1                        ; 3 uses
  %i.cr = load ptr, ptr %i.y, align 8, !tbaa !45  ; 2 uses
  %i.cs = icmp eq ptr %i.cr, %i.cb
  br i1 %i.cs, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %bb.m
  %i.ct = icmp ult i64 %i.cp, 16
  call void @llvm.assume(i1 %i.ct)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.m
  %i.cu = load i64, ptr %i.cb, align 8, !tbaa !22
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.cv = phi i64 [ %i.cu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i ]
  %i.cw = icmp ugt i64 %i.cq, %i.cv
  br i1 %i.cw, label %bb.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.y, i64 noundef %i.cp, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i.i = load ptr, ptr %i.y, align 8, !tbaa !45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i, %bb.n
  %i.cx = phi ptr [ %.pre.i.i, %bb.n ], [ %i.cr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i ]
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.cp
  store i8 %i.cl, ptr %i.cy, align 1, !tbaa !22
  store i64 %i.cq, ptr %i.ca, align 8, !tbaa !21
  %i.cz = load ptr, ptr %i.y, align 8, !tbaa !45
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 %i.cq
  store i8 0, ptr %i.da, align 1, !tbaa !22
  br label %bb.o

bb.o:                                             ; preds = %bb.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit
  %.1 = phi i1 [ %.070, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit ], [ true, %bb.l ]
  %.not42 = icmp eq i64 %i.co, %i.bs
  br i1 %.not42, label %.critedge, label %bb.j, !llvm.loop !196

.critedge:                                        ; preds = %bb.j, %bb.o, %bb.k
  %.031.lcssa = phi i64 [ %.03169, %bb.j ], [ %i.bs, %bb.o ], [ %.03169, %bb.k ]
  %i.db = load ptr, ptr %i.bt, align 8, !tbaa !49 ; 2 uses
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !26
  %i.dd = getelementptr i8, ptr %i.dc, i64 -24
  %i.de = load i64, ptr %i.dd, align 8
  %i.df = getelementptr inbounds i8, ptr %i.db, i64 %i.de
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 32
  %i.dh = load i32, ptr %i.dg, align 8, !tbaa !35
  %i.di = and i32 %i.dh, 5
  %.not65 = icmp eq i32 %i.di, 0
  br i1 %.not65, label %bb.v, label %bb.p

bb.p:                                             ; preds = %.critedge
  %i.dj = load i32, ptr %i.a, align 4, !tbaa !125
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !71 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 8 ; 4 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !21 ; 4 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 28
  switch i32 %i.dj, label %bb.t [
    i32 15, label %bb.q
    i32 29, label %bb.r
    i32 1879048245, label %bb.s
  ]

bb.q:                                             ; preds = %bb.p
  %i.dq = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.dm, i64 noundef 0, i64 noundef %i.do, ptr noundef nonnull @.str.23, i64 noundef 45) ; 0 uses
  br label %bb.u

bb.r:                                             ; preds = %bb.p
  %i.dr = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.dm, i64 noundef 0, i64 noundef %i.do, ptr noundef nonnull @.str.24, i64 noundef 47) ; 0 uses
  br label %bb.u

bb.s:                                             ; preds = %bb.p
  %i.ds = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.dm, i64 noundef 0, i64 noundef %i.do, ptr noundef nonnull @.str.25, i64 noundef 56) ; 0 uses
  br label %bb.u

bb.t:                                             ; preds = %bb.p
  %i.dt = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.dm, i64 noundef 0, i64 noundef %i.do, ptr noundef nonnull @.str.26, i64 noundef 67) ; 0 uses
  br label %bb.u

bb.u:                                             ; preds = %bb.r, %bb.t, %bb.s, %bb.q
  store i32 0, ptr %i.dp, align 4, !tbaa !68
  %i.du = load i64, ptr %i.ca, align 8, !tbaa !21
  %i.dv = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.y, i64 noundef 0, i64 noundef %i.du, ptr noundef nonnull @.str.27, i64 noundef 0) ; 0 uses
  br label %bb.w

bb.v:                                             ; preds = %.critedge
  %i.dw = load i32, ptr %i.bv, align 4, !tbaa !107
  %i.dx = zext i32 %i.dw to i64
  %i.dy = add nuw nsw i64 %i.dx, %i.br
  store i64 %i.dy, ptr %i.z, align 8, !tbaa !133
  %i.dz = sub nuw nsw i64 %.031.lcssa, %i.br
  store i64 %i.dz, ptr %i.aa, align 8, !tbaa !134
  %i.ea = load ptr, ptr %i.ba, align 8, !tbaa !104
  %i.eb = ptrtoint ptr %.sroa.047.068 to i64
  %i.ec = ptrtoint ptr %i.ea to i64
  %i.ed = sub i64 %i.eb, %i.ec
  %i.ee = lshr exact i64 %i.ed, 3
  %i.ef = trunc i64 %i.ee to i32
  store i32 %i.ef, ptr %i.ab, align 8, !tbaa !132
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v
  %.135 = phi ptr [ null, %bb.u ], [ %i.y, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  br label %.loopexit

.thread59:                                        ; preds = %bb.g
  %i.eg = getelementptr inbounds nuw i8, ptr %.sroa.047.068, i64 8 ; 2 uses
  %.not64 = icmp eq ptr %i.eg, %i.bd
  br i1 %.not64, label %.loopexit, label %bb.g, !llvm.loop !197

.loopexit:                                        ; preds = %.thread59, %bb.f, %.thread57, %bb.w, %bb.b, %_ZNSt3mapIjN5cmELF11StringEntryESt4lessIjESaISt4pairIKjS1_EEEixERS5_.exit, %bb.e
  %.7 = phi ptr [ null, %bb.e ], [ %spec.select62, %bb.b ], [ null, %_ZNSt3mapIjN5cmELF11StringEntryESt4lessIjESaISt4pairIKjS1_EEEixERS5_.exit ], [ %.135, %bb.w ], [ null, %.thread57 ], [ null, %bb.f ], [ null, %.thread59 ]
  ret ptr %.7
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK17cmELFInternalImplI12cmELFTypes32E6IsMipsEv(ptr noundef nonnull align 8 dereferenceable(192) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 106
  %i.b = load i16, ptr %i.a, align 2, !tbaa !92
  %i.c = icmp eq i16 %i.b, 8
  ret i1 %i.c
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK17cmELFInternalImplI12cmELFTypes32E9PrintInfoERSo(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.28, i64 noundef 4) ; 0 uses
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.39, i64 noundef 6) ; 0 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i32, ptr %i.c, align 8, !tbaa !72
  switch i32 %i.d, label %bb.c [
    i32 0, label %.sink.split
    i32 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %.sink.split

.sink.split:                                      ; preds = %bb.a, %bb.b
  %.str.30.sink = phi ptr [ @.str.30, %bb.b ], [ @.str.29, %bb.a ]
  %i.e = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %.str.30.sink, i64 noundef 4) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %.sink.split, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.g = load i32, ptr %i.f, align 4, !tbaa !68
  switch i32 %i.g, label %bb.k [
    i32 0, label %bb.d
    i32 1, label %bb.e
    i32 2, label %bb.f
    i32 3, label %bb.g
    i32 4, label %bb.h
    i32 5, label %bb.i
    i32 6, label %bb.j
  ]

bb.d:                                             ; preds = %bb.c
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.31, i64 noundef 13) ; 0 uses
  br label %bb.k

bb.e:                                             ; preds = %bb.c
  %i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.32, i64 noundef 19) ; 0 uses
  br label %bb.k

bb.f:                                             ; preds = %bb.c
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.33, i64 noundef 11) ; 0 uses
  br label %bb.k

bb.g:                                             ; preds = %bb.c
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.34, i64 noundef 15) ; 0 uses
  br label %bb.k

bb.h:                                             ; preds = %bb.c
  %i.l = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.35, i64 noundef 10) ; 0 uses
  br label %bb.k

bb.i:                                             ; preds = %bb.c
  %i.m = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.36, i64 noundef 17) ; 0 uses
  br label %bb.k

bb.j:                                             ; preds = %bb.c
  %i.n = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.37, i64 noundef 24) ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %i.o = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.38, i64 noundef 1) ; 0 uses
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN13cmELFInternalD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTV13cmELFInternal, i64 16), ptr %0, align 8, !tbaa !26
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !74
  invoke void @_ZNSt8_Rb_treeIjSt4pairIKjN5cmELF11StringEntryEESt10_Select1stIS4_ESt4lessIjESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef %i.c)
          to label %_ZNSt3mapIjN5cmELF11StringEntryESt4lessIjESaISt4pairIKjS1_EEED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #23
  unreachable

_ZNSt3mapIjN5cmELF11StringEntryESt4lessIjESaISt4pairIKjS1_EEED2Ev.exit: ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !49   ; 3 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %_ZNSt10unique_ptrISiSt14default_deleteISiEED2Ev.exit, label %_ZNKSt14default_deleteISiEclEPSi.exit.i

_ZNKSt14default_deleteISiEclEPSi.exit.i:          ; preds = %_ZNSt3mapIjN5cmELF11StringEntryESt4lessIjESaISt4pairIKjS1_EEED2Ev.exit
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !26
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #20, !inline_history !1
  br label %_ZNSt10unique_ptrISiSt14default_deleteISiEED2Ev.exit

_ZNSt10unique_ptrISiSt14default_deleteISiEED2Ev.exit: ; preds = %_ZNSt3mapIjN5cmELF11StringEntryESt4lessIjESaISt4pairIKjS1_EEED2Ev.exit, %_ZNKSt14default_deleteISiEclEPSi.exit.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN13cmELFInternalD0Ev(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #23
  unreachable
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #14

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorI10Elf32_ShdrSaIS0_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !94   ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !95     ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = sdiv exact i64 %i.f, 40                  ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !100
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = sdiv exact i64 %i.k, 40                  ; 2 uses
  %i.m = icmp ult i64 %i.g, 230584300921369396
  tail call void @llvm.assume(i1 %i.m)
  %i.n = sub nuw nsw i64 230584300921369395, %i.g ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %i.b, i8 0, i64 40, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 3 uses
  %i.q = add nsw i64 %1, -1                       ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIP10Elf32_ShdrmS0_ET_S2_T0_RSaIT1_E.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.idx.i.i.i.i.i = mul nuw nsw i64 %i.q, 40
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i.i.i.i ; 2 uses
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.d
  %.06.i.i.i.i.i.i.i = phi ptr [ %i.t, %.lr.ph.i.i.i.i.i.i.i ], [ %i.p, %bb.d ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %.06.i.i.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(40) %i.b, i64 40, i1 false), !tbaa.struct !200
  %i.t = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.t, %i.s
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt27__uninitialized_default_n_aIP10Elf32_ShdrmS0_ET_S2_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !199

_ZSt27__uninitialized_default_n_aIP10Elf32_ShdrmS0_ET_S2_T0_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.c
  %.0.i.i.i = phi ptr [ %i.p, %bb.c ], [ %i.s, %.lr.ph.i.i.i.i.i.i.i ]
  store ptr %.0.i.i.i, ptr %i.a, align 8, !tbaa !94
end_hunk_0
