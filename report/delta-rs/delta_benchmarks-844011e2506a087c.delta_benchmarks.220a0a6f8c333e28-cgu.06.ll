inline.NumInlined: 4054
inline.NumDeleted: 1735
begin_hunk_0_@_RINvNvXs0_NtNtNtCs6Po7BT7Nknu_5alloc11collections5btree3mapINtB8_8BTreeMappppENtNtCsbvkFyIu7lgC_4core5clone5Clone5clone13clone_subtreeReNtNtCsjhHCjzi9uUI_17datafusion_common6config12ExtensionBoxNtNtBe_5alloc6GlobalECs2VbMhdeEr66_16delta_benchmarks:bb.a
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store i64 %i.x, ptr %i.n, align 8
  br label %bb.d

.loopexit.split-lp:                               ; preds = %bb.g
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.e:                                             ; preds = %bb.p, %bb.g
  unreachable

bb.f:                                             ; preds = %bb.b
  store ptr %i.k, ptr %i.g, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 0, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 362 ; 2 uses
  %i.w = load i16, ptr %i.v, align 2, !noundef !17
  %.not97 = icmp eq i16 %i.w, 0
  br i1 %.not97, label %._crit_edge95, label %.lr.ph94

.lr.ph94:                                         ; preds = %bb.f
  %.sroa.39.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %bb.h

bb.g:                                             ; preds = %bb.b
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @134, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @136) #37
          to label %bb.e unwind label %.loopexit.split-lp

._crit_edge95:                                    ; preds = %bb.n, %bb.f
  %.lcssa89 = phi i64 [ 0, %bb.f ], [ %i.ak, %bb.n ]
  store i64 %.lcssa89, ptr %i.n, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.i

bb.h:                                             ; preds = %.lr.ph94, %bb.n
  %.sroa.7.092 = phi i64 [ 0, %.lr.ph94 ], [ %i.aa, %bb.n ] ; 2 uses
  %i.x = phi i64 [ 0, %.lr.ph94 ], [ %i.ak, %bb.n ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %1, ptr %i.b, align 8
  store i64 0, ptr %.sroa.39.0..sroa_idx, align 8
  store i64 %.sroa.7.092, ptr %.sroa.411.0..sroa_idx, align 8
  %i.y = invoke { ptr, ptr } @_RNvMsP_NtNtNtCs6Po7BT7Nknu_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5ImmutReNtNtCsjhHCjzi9uUI_17datafusion_common6config12ExtensionBoxNtB1m_4LeafENtB1m_2KVE7into_kvCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b)
          to label %bb.j unwind label %.loopexit  ; 2 uses

bb.i:                                             ; preds = %bb.t, %._crit_edge95
  ret void

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.z = extractvalue { ptr, ptr } %i.y, 0        ; 2 uses
  %i.aa = add nuw nsw i64 %.sroa.7.092, 1         ; 2 uses
  %i.ab = load ptr, ptr %i.z, align 8, !alias.scope !2009, !nonnull !17, !noundef !17
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !alias.scope !2009, !noundef !17
  %i.ae = extractvalue { ptr, ptr } %i.y, 1
  %i.af = invoke { ptr, ptr } @_RNvXsc_NtCsjhHCjzi9uUI_17datafusion_common6configNtB5_12ExtensionBoxNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ae)
          to label %bb.l unwind label %bb.k       ; 2 uses

bb.k:                                             ; preds = %bb.m, %bb.l, %bb.j
  %i.ag = landingpad { ptr, i32 }
          cleanup
  store i64 %i.x, ptr %i.n, align 8
  br label %bb.d

bb.l:                                             ; preds = %bb.j
  %i.ah = extractvalue { ptr, ptr } %i.af, 0
  %i.ai = extractvalue { ptr, ptr } %i.af, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RNvMsu_NtNtNtCs6Po7BT7Nknu_5alloc11collections5btree4nodeINtB5_7NodeRefNtNtB5_6marker3MutReNtNtCsjhHCjzi9uUI_17datafusion_common6config12ExtensionBoxNtB19_4LeafE16push_with_handleCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.g, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ab, i64 noundef %i.ad, ptr noundef nonnull %i.ah, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.ai)
          to label %bb.m unwind label %bb.k

bb.m:                                             ; preds = %bb.l
  %i.aj = invoke noundef nonnull align 8 ptr @_RNvMsQ_NtNtNtCs6Po7BT7Nknu_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutReNtNtCsjhHCjzi9uUI_17datafusion_common6config12ExtensionBoxNtB1m_4LeafENtB1m_2KVE12into_val_mutCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.c)
          to label %bb.n unwind label %bb.k       ; 0 uses

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ak = add i64 %i.x, 1                         ; 2 uses
  %i.al = load i16, ptr %i.v, align 2, !noundef !17
  %i.am = zext i16 %i.al to i64
  %i.an = icmp samesign ult i64 %i.aa, %i.am
  br i1 %i.an, label %bb.h, label %._crit_edge95

bb.o:                                             ; preds = %.thread, %bb.d, %bb.ae, %bb.af
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #35
  unreachable

bb.p:                                             ; preds = %bb.c
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @137) #37
          to label %bb.e unwind label %.loopexit.split-lp72

.thread:                                          ; preds = %.loopexit71, %.loopexit.split-lp72, %bb.z, %bb.ae, %bb.af, %bb.w
  %.pn.pn = phi { ptr, i32 } [ %i.bx, %bb.af ], [ %i.bw, %bb.ae ], [ %i.bh, %bb.w ], [ %i.bn, %bb.z ], [ %lpad.loopexit73, %.loopexit71 ], [ %lpad.loopexit.split-lp74, %.loopexit.split-lp72 ]
  invoke void @_RNvXNtNtNtCs6Po7BT7Nknu_5alloc11collections5btree3mapINtB2_8BTreeMapReNtNtCsjhHCjzi9uUI_17datafusion_common6config12ExtensionBoxENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs6Po7BT7Nknu_5alloc11collections5btree3map8BTreeMapReNtNtCsjhHCjzi9uUI_17datafusion_common6config12ExtensionBoxEECs2VbMhdeEr66_16delta_benchmarks.exit unwind label %bb.o

.loopexit71:                                      ; preds = %bb.u
  %lpad.loopexit73 = landingpad { ptr, i32 }
          cleanup
  store i64 %i.ay, ptr %i.ax, align 8
  br label %.thread

.loopexit.split-lp72:                             ; preds = %bb.p
  %lpad.loopexit.split-lp74 = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.q:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2012)
  %i.ap = load i64, ptr %i.t, align 8, !alias.scope !2012, !noundef !17
  %i.aq = invoke { ptr, i64 } @_RINvMs9_NtNtNtCs6Po7BT7Nknu_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker5OwnedReNtNtCsjhHCjzi9uUI_17datafusion_common6config12ExtensionBoxNtB1a_8InternalE12new_internalNtNtBc_5alloc6GlobalECs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull %i.s, i64 noundef %i.ap)
          to label %bb.s unwind label %bb.r, !noalias !2012 ; 2 uses

bb.r:                                             ; preds = %bb.q
  %i.ar = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @llvm.trap()
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.as = extractvalue { ptr, i64 } %i.aq, 0      ; 2 uses
  %i.at = extractvalue { ptr, i64 } %i.aq, 1      ; 2 uses
  store ptr %i.as, ptr %i.f, align 8, !alias.scope !2012
  store i64 %i.at, ptr %i.t, align 8, !alias.scope !2012
  %i.au = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %i.at, ptr %i.au, align 8
  store ptr %i.as, ptr %i.e, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 362 ; 2 uses
  %i.aw = load i16, ptr %i.av, align 2, !noundef !17
  %.not96 = icmp eq i16 %i.aw, 0
  br i1 %.not96, label %bb.t, label %.lr.ph

.lr.ph:                                           ; preds = %bb.s
  %.sroa.321.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.423.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.452.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.553.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.ax = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 7 uses
  %.promoted = load i64, ptr %i.ax, align 8
  br label %bb.u

._crit_edge:                                      ; preds = %bb.ad
  store i64 %i.bs, ptr %i.ax, align 8
  br label %bb.t

bb.t:                                             ; preds = %._crit_edge, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.i

bb.u:                                             ; preds = %.lr.ph, %bb.ad
  %i.ay = phi i64 [ %.promoted, %.lr.ph ], [ %i.bs, %bb.ad ] ; 6 uses
  %.sroa.9.081 = phi i64 [ 0, %.lr.ph ], [ %i.bb, %bb.ad ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %1, ptr %i.a, align 8
  store i64 %2, ptr %.sroa.321.0..sroa_idx, align 8
  store i64 %.sroa.9.081, ptr %.sroa.423.0..sroa_idx, align 8
  %i.az = invoke { ptr, ptr } @_RNvMsP_NtNtNtCs6Po7BT7Nknu_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5ImmutReNtNtCsjhHCjzi9uUI_17datafusion_common6config12ExtensionBoxNtB1m_8InternalENtB1m_2KVE7into_kvCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %bb.v unwind label %.loopexit71 ; 2 uses

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ba = extractvalue { ptr, ptr } %i.az, 0      ; 2 uses
  %i.bb = add nuw nsw i64 %.sroa.9.081, 1         ; 3 uses
  %i.bc = load ptr, ptr %i.ba, align 8, !alias.scope !2015, !nonnull !17, !noundef !17
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.be = load i64, ptr %i.bd, align 8, !alias.scope !2015, !noundef !17
  %i.bf = extractvalue { ptr, ptr } %i.az, 1
  %i.bg = invoke { ptr, ptr } @_RNvXsc_NtCsjhHCjzi9uUI_17datafusion_common6configNtB5_12ExtensionBoxNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.bf)
          to label %bb.x unwind label %bb.w       ; 2 uses

bb.w:                                             ; preds = %bb.v
  %i.bh = landingpad { ptr, i32 }
          cleanup
  store i64 %i.ay, ptr %i.ax, align 8
  br label %.thread

bb.x:                                             ; preds = %bb.v
  %i.bi = extractvalue { ptr, ptr } %i.bg, 0      ; 4 uses
  %i.bj = extractvalue { ptr, ptr } %i.bg, 1      ; 5 uses
  %i.bk = icmp samesign ult i64 %.sroa.9.081, 11
  call void @llvm.assume(i1 %i.bk)
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.bb
  %i.bm = load ptr, ptr %i.bl, align 8, !nonnull !17, !noundef !17
  invoke fastcc void @_RINvNvXs0_NtNtNtCs6Po7BT7Nknu_5alloc11collections5btree3mapINtB8_8BTreeMappppENtNtCsbvkFyIu7lgC_4core5clone5Clone5clone13clone_subtreeReNtNtCsjhHCjzi9uUI_17datafusion_common6config12ExtensionBoxNtNtBe_5alloc6GlobalECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.d, ptr noundef nonnull %i.bm, i64 noundef %i.r)
          to label %bb.y unwind label %bb.af

bb.y:                                             ; preds = %bb.x
  %.sroa.051.0.copyload = load ptr, ptr %i.d, align 8 ; 2 uses
  %.sroa.452.0.copyload = load i64, ptr %.sroa.452.0..sroa_idx, align 8
  %.sroa.553.0.copyload = load i64, ptr %.sroa.553.0..sroa_idx, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bi) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bj) ]
  %.not55 = icmp eq ptr %.sroa.051.0.copyload, null
  br i1 %.not55, label %bb.aa, label %bb.ac

bb.z:                                             ; preds = %bb.ac
  %i.bn = landingpad { ptr, i32 }
          cleanup
  store i64 %i.ay, ptr %i.ax, align 8
  br label %.thread

bb.aa:                                            ; preds = %bb.y
  %i.bo = invoke { ptr, i64 } @_RINvMs8_NtNtNtCs6Po7BT7Nknu_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker5OwnedReNtNtCsjhHCjzi9uUI_17datafusion_common6config12ExtensionBoxNtB1a_4LeafE8new_leafNtNtBc_5alloc6GlobalECs2VbMhdeEr66_16delta_benchmarks()
          to label %bb.ab unwind label %bb.ae     ; 2 uses

bb.ab:                                            ; preds = %bb.aa
  %i.bp = extractvalue { ptr, i64 } %i.bo, 0
  %i.bq = extractvalue { ptr, i64 } %i.bo, 1
  br label %bb.ac

bb.ac:                                            ; preds = %bb.y, %bb.ab
  %.sroa.038.0 = phi ptr [ %i.bp, %bb.ab ], [ %.sroa.051.0.copyload, %bb.y ]
  %.sroa.539.0 = phi i64 [ %i.bq, %bb.ab ], [ %.sroa.452.0.copyload, %bb.y ]
  invoke void @_RNvMsv_NtNtNtCs6Po7BT7Nknu_5alloc11collections5btree4nodeINtB5_7NodeRefNtNtB5_6marker3MutReNtNtCsjhHCjzi9uUI_17datafusion_common6config12ExtensionBoxNtB19_8InternalE4pushCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.e, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bc, i64 noundef %i.be, ptr noundef nonnull %i.bi, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.bj, ptr noundef nonnull %.sroa.038.0, i64 noundef %.sroa.539.0)
          to label %bb.ad unwind label %bb.z

bb.ad:                                            ; preds = %bb.ac
  %i.br = add i64 %.sroa.553.0.copyload, 1
  %i.bs = add i64 %i.br, %i.ay                    ; 2 uses
  %i.bt = load i16, ptr %i.av, align 2, !noundef !17
  %i.bu = zext i16 %i.bt to i64
  %i.bv = icmp samesign ult i64 %i.bb, %i.bu
  br i1 %i.bv, label %bb.u, label %._crit_edge

bb.ae:                                            ; preds = %bb.aa
  %i.bw = landingpad { ptr, i32 }
          cleanup
  store i64 %i.ay, ptr %i.ax, align 8
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common6config12ExtensionBoxECs2VbMhdeEr66_16delta_benchmarks(ptr nonnull %i.bi, ptr nonnull %i.bj) #38
          to label %.thread unwind label %bb.o

bb.af:                                            ; preds = %bb.x
  %i.bx = landingpad { ptr, i32 }
          cleanup
  store i64 %i.ay, ptr %i.ax, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bj) ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common6config12ExtensionBoxECs2VbMhdeEr66_16delta_benchmarks(ptr %i.bi, ptr nonnull %i.bj) #38
          to label %.thread unwind label %bb.o

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs6Po7BT7Nknu_5alloc11collections5btree3map8BTreeMapReNtNtCsjhHCjzi9uUI_17datafusion_common6config12ExtensionBoxEECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %.thread, %bb.d
  %.pn58.pn = phi { ptr, i32 } [ %.pn58, %bb.d ], [ %.pn.pn, %.thread ]
  resume { ptr, i32 } %.pn58.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNtCs8VI8w5SIoU4_15datafusion_expr9tree_nodeNtNtB5_4expr4ExprNtNtCsjhHCjzi9uUI_17datafusion_common9tree_node8TreeNode14apply_childrenNCNCNCINvNvB11_5apply10apply_implBK_NCINvNtB5_5utils18find_exprs_in_exprNCINvB2Q_17find_window_exprsINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain5ChainINtNtNtB3W_5slice4iter4IterBK_EINtNtB3W_6option4IterBK_EEE0E0E000ECs2VbMhdeEr66_16delta_benchmarks(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %1, ptr noalias noundef align 8 dereferenceable(16) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = load i64, ptr %1, align 16, !range !804, !noundef !17 ; 3 uses
  %i.i = icmp ne i64 %i.h, 35
  tail call void @llvm.assume(i1 %i.i)
  %i.j = add nsw i64 %i.h, -4
  %i.k = icmp samesign ugt i64 %i.h, 3
  %i.l = select i1 %i.k, i64 %i.j, i64 31
  switch i64 %i.l, label %bb.b [
    i64 0, label %bb.o
    i64 1, label %bb.c
    i64 2, label %bb.c
    i64 3, label %bb.c
    i64 4, label %bb.d
    i64 5, label %bb.q
    i64 6, label %bb.q
    i64 7, label %bb.e
    i64 8, label %bb.e
    i64 9, label %bb.e
    i64 10, label %bb.e
    i64 11, label %bb.e
    i64 12, label %bb.e
    i64 13, label %bb.e
    i64 14, label %bb.e
    i64 15, label %bb.e
    i64 16, label %bb.e
    i64 17, label %bb.f
    i64 18, label %bb.g
    i64 19, label %bb.h
    i64 20, label %bb.h
    i64 21, label %bb.i
    i64 22, label %bb.j
    i64 23, label %bb.k
    i64 24, label %bb.l
    i64 25, label %bb.c
    i64 26, label %bb.m
    i64 27, label %bb.c
    i64 28, label %bb.c
    i64 29, label %bb.n
    i64 30, label %bb.c
    i64 31, label %bb.c
    i64 32, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.m, align 8
  store i64 20, ptr %0, align 8
  br label %bb.p

bb.d:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.n, ptr %i.g, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.o, ptr %i.p, align 8
  call void @_RINvXs9_NtCsjhHCjzi9uUI_17datafusion_common9tree_nodeTRINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEBQ_EINtB6_20TreeNodeRefContainerB1q_E18apply_ref_elementsNCNCNCINvNvNtB6_8TreeNode5apply10apply_implB1q_NCINvNtB1u_5utils18find_exprs_in_exprNCINvB3V_17find_window_exprsINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain5ChainINtNtNtB52_5slice4iter4IterB1q_EINtNtB52_6option4IterB1q_EEE0E0E000ECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.g, ptr noalias noundef nonnull align 8 dereferenceable(16) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.p

bb.e:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  br label %bb.o

bb.f:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.q, ptr %i.e, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.r, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.s, ptr %i.u, align 8
  call void @_RINvXsa_NtCsjhHCjzi9uUI_17datafusion_common9tree_nodeTRINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEBQ_BQ_EINtB6_20TreeNodeRefContainerB1q_E18apply_ref_elementsNCNCNCINvNvNtB6_8TreeNode5apply10apply_implB1q_NCINvNtB1u_5utils18find_exprs_in_exprNCINvB3Y_17find_window_exprsINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain5ChainINtNtNtB55_5slice4iter4IterB1q_EINtNtB55_6option4IterB1q_EEE0E0E000ECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.e, ptr noalias noundef nonnull align 8 dereferenceable(16) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.p

bb.g:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.w, ptr %i.d, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.v, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.x, ptr %i.z, align 8
  call void @_RINvXsa_NtCsjhHCjzi9uUI_17datafusion_common9tree_nodeTRINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEERINtNtB1y_3vec3VecTB1t_B1t_EEBQ_EINtB6_20TreeNodeRefContainerB22_E18apply_ref_elementsNCNCNCINvNvNtB6_8TreeNode5apply10apply_implB22_NCINvNtB26_5utils18find_exprs_in_exprNCINvB51_17find_window_exprsINtNtNtNtBW_4iter8adapters5chain5ChainINtNtNtBW_5slice4iter4IterB22_EINtBU_4IterB22_EEE0E0E000ECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(16) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.p

bb.h:                                             ; preds = %bb.a, %bb.a
  br label %bb.o

bb.i:                                             ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_RINvXs3_NtCsjhHCjzi9uUI_17datafusion_common9tree_nodeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEINtB6_17TreeNodeContainerB1m_E14apply_elementsNCNCNCINvNvNtB6_8TreeNode5apply10apply_implB1m_NCINvNtB1q_5utils18find_exprs_in_exprNCINvB3G_17find_window_exprsINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain5ChainINtNtNtB4N_5slice4iter4IterB1m_EINtNtB4N_6option4IterB1m_EEE0E0E000ECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aa, ptr noalias noundef nonnull align 8 dereferenceable(16) %2)
  br label %bb.p

bb.j:                                             ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.ab, ptr %i.c, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.ac, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.ad, ptr %i.af, align 8
  call void @_RINvXsa_NtCsjhHCjzi9uUI_17datafusion_common9tree_nodeTRINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprERINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtBW_5boxed3BoxB1o_EERIBS_NtB1q_4SortEEINtB6_20TreeNodeRefContainerB1o_E18apply_ref_elementsNCNCNCINvNvNtB6_8TreeNode5apply10apply_implB1o_NCINvNtB1s_5utils18find_exprs_in_exprNCINvB58_17find_window_exprsINtNtNtNtB2e_4iter8adapters5chain5ChainINtNtNtB2e_5slice4iter4IterB1o_EINtB2c_4IterB1o_EEE0E0E000ECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(16) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.p

bb.k:                                             ; preds = %bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !nonnull !17, !noundef !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, <4 x i64> <i64 176, i64 200, i64 224, i64 248>
  store <4 x ptr> %i.ai, ptr %i.b, align 8
  call void @_RINvXsb_NtCsjhHCjzi9uUI_17datafusion_common9tree_nodeTRINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEBQ_RIBS_NtB1q_4SortERINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtBW_5boxed3BoxB1o_EEEINtB6_20TreeNodeRefContainerB1o_E18apply_ref_elementsNCNCNCINvNvNtB6_8TreeNode5apply10apply_implB1o_NCINvNtB1s_5utils18find_exprs_in_exprNCINvB5b_17find_window_exprsINtNtNtNtB2y_4iter8adapters5chain5ChainINtNtNtB2y_5slice4iter4IterB1o_EINtB2w_4IterB1o_EEE0E0E000ECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(16) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.p

bb.l:                                             ; preds = %bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.ak, ptr %i.a, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.aj, ptr %i.al, align 8
  call void @_RINvXs9_NtCsjhHCjzi9uUI_17datafusion_common9tree_nodeTRINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprERINtNtBW_3vec3VecB1q_EEINtB6_20TreeNodeRefContainerB1q_E18apply_ref_elementsNCNCNCINvNvNtB6_8TreeNode5apply10apply_implB1q_NCINvNtB1u_5utils18find_exprs_in_exprNCINvB4e_17find_window_exprsINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain5ChainINtNtNtB5l_5slice4iter4IterB1q_EINtNtB5l_6option4IterB1q_EEE0E0E000ECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(16) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.p

bb.m:                                             ; preds = %bb.a
  br label %bb.o
end_hunk_0
begin_hunk_1_@_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapIBO_INtNtB8_3zip3ZipINtNtNtBc_5slice4iter4IterINtNtBc_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEEIB1i_INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEENCNvMNtB27_8dfschemaNtB4G_8DFSchema4iter0ENCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB5o_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE14update_to_plans_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtNtB27_5error15DataFusionErrorEEB86_8try_folduNCINvNvB86_12try_for_each4callNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprINtNtNtBc_3ops12control_flow11ControlFlowBbm_ENcNtBc5_5Break0E0Bc5_E0IBc6_Bc5_EECs2VbMhdeEr66_16delta_benchmarks:bb.a

bb.r:                                             ; preds = %.loopexit.i.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(40) %3)
          to label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldTRINtNtBa_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceERINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEETIB12_RB1n_EB2w_EuINtNtNtBa_3ops12control_flow11ControlFlowIB48_NtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEENCNvMNtB1r_8dfschemaNtB5H_8DFSchema4iter0NCIB2_B3P_INtNtBa_6result6ResultB4R_NtNtB1r_5error15DataFusionErrorEuB47_NCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB7z_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE14update_to_plans_0NCINvXB6_INtB6_12GenericShuntINtB4_3MapIBaK_INtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterB11_EIBbf_B2x_EEB5C_EB7s_EIB6s_NtNtBa_7convert10InfallibleB6R_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvBcG_12try_for_each4callB4R_B4M_NcNtB4M_5Break0E0B4M_E0E0E0Cs2VbMhdeEr66_16delta_benchmarks.exit.thread.i.i unwind label %bb.s, !noalias !2114

bb.s:                                             ; preds = %bb.r
  %i.bj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4.i.i.i.i, i64 40, i1 false), !noalias !2115
  br label %common.resume.i.i.i.i

_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldTRINtNtBa_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceERINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEETIB12_RB1n_EB2w_EuINtNtNtBa_3ops12control_flow11ControlFlowIB48_NtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEENCNvMNtB1r_8dfschemaNtB5H_8DFSchema4iter0NCIB2_B3P_INtNtBa_6result6ResultB4R_NtNtB1r_5error15DataFusionErrorEuB47_NCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB7z_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE14update_to_plans_0NCINvXB6_INtB6_12GenericShuntINtB4_3MapIBaK_INtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterB11_EIBbf_B2x_EEB5C_EB7s_EIB6s_NtNtBa_7convert10InfallibleB6R_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvBcG_12try_for_each4callB4R_B4M_NcNtB4M_5Break0E0B4M_E0E0E0Cs2VbMhdeEr66_16delta_benchmarks.exit.thread.i.i: ; preds = %bb.r, %.loopexit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4.i.i.i.i, i64 40, i1 false), !noalias !2115
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !2097
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2090
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !2090
  br label %.loopexit14.i.i

_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldTRINtNtBa_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceERINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEETIB12_RB1n_EB2w_EuINtNtNtBa_3ops12control_flow11ControlFlowIB48_NtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEENCNvMNtB1r_8dfschemaNtB5H_8DFSchema4iter0NCIB2_B3P_INtNtBa_6result6ResultB4R_NtNtB1r_5error15DataFusionErrorEuB47_NCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB7z_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE14update_to_plans_0NCINvXB6_INtB6_12GenericShuntINtB4_3MapIBaK_INtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterB11_EIBbf_B2x_EEB5C_EB7s_EIB6s_NtNtBa_7convert10InfallibleB6R_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvBcG_12try_for_each4callB4R_B4M_NcNtB4M_5Break0E0B4M_E0E0E0Cs2VbMhdeEr66_16delta_benchmarks.exit.i.i: ; preds = %_RNCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB6_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE14update_to_plans_0Cs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4.0..sroa_idx.i.i.i.i, i64 40, i1 false), !noalias !2090
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.4.48..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 16 dereferenceable(64) %i.r, i64 64, i1 false), !noalias !2090
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !2097
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2090
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !2090
  %.not.i.i.i = icmp eq i64 %.sroa.0.0.copyload.pre.i.i.i.i, 38
  br i1 %.not.i.i.i, label %bb.t, label %.loopexit14.i.i

.loopexit14.i.i:                                  ; preds = %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldTRINtNtBa_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceERINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEETIB12_RB1n_EB2w_EuINtNtNtBa_3ops12control_flow11ControlFlowIB48_NtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEENCNvMNtB1r_8dfschemaNtB5H_8DFSchema4iter0NCIB2_B3P_INtNtBa_6result6ResultB4R_NtNtB1r_5error15DataFusionErrorEuB47_NCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB7z_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE14update_to_plans_0NCINvXB6_INtB6_12GenericShuntINtB4_3MapIBaK_INtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterB11_EIBbf_B2x_EEB5C_EB7s_EIB6s_NtNtBa_7convert10InfallibleB6R_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvBcG_12try_for_each4callB4R_B4M_NcNtB4M_5Break0E0B4M_E0E0E0Cs2VbMhdeEr66_16delta_benchmarks.exit.i.i, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldTRINtNtBa_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceERINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEETIB12_RB1n_EB2w_EuINtNtNtBa_3ops12control_flow11ControlFlowIB48_NtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEENCNvMNtB1r_8dfschemaNtB5H_8DFSchema4iter0NCIB2_B3P_INtNtBa_6result6ResultB4R_NtNtB1r_5error15DataFusionErrorEuB47_NCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB7z_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE14update_to_plans_0NCINvXB6_INtB6_12GenericShuntINtB4_3MapIBaK_INtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterB11_EIBbf_B2x_EEB5C_EB7s_EIB6s_NtNtBa_7convert10InfallibleB6R_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvBcG_12try_for_each4callB4R_B4M_NcNtB4M_5Break0E0B4M_E0E0E0Cs2VbMhdeEr66_16delta_benchmarks.exit.thread.i.i
  %.sroa.03.011.i.i = phi i64 [ 37, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldTRINtNtBa_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceERINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEETIB12_RB1n_EB2w_EuINtNtNtBa_3ops12control_flow11ControlFlowIB48_NtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEENCNvMNtB1r_8dfschemaNtB5H_8DFSchema4iter0NCIB2_B3P_INtNtBa_6result6ResultB4R_NtNtB1r_5error15DataFusionErrorEuB47_NCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB7z_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE14update_to_plans_0NCINvXB6_INtB6_12GenericShuntINtB4_3MapIBaK_INtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterB11_EIBbf_B2x_EEB5C_EB7s_EIB6s_NtNtBa_7convert10InfallibleB6R_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvBcG_12try_for_each4callB4R_B4M_NcNtB4M_5Break0E0B4M_E0E0E0Cs2VbMhdeEr66_16delta_benchmarks.exit.thread.i.i ], [ %.sroa.0.0.copyload.pre.i.i.i.i, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldTRINtNtBa_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceERINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEETIB12_RB1n_EB2w_EuINtNtNtBa_3ops12control_flow11ControlFlowIB48_NtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEENCNvMNtB1r_8dfschemaNtB5H_8DFSchema4iter0NCIB2_B3P_INtNtBa_6result6ResultB4R_NtNtB1r_5error15DataFusionErrorEuB47_NCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB7z_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE14update_to_plans_0NCINvXB6_INtB6_12GenericShuntINtB4_3MapIBaK_INtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterB11_EIBbf_B2x_EEB5C_EB7s_EIB6s_NtNtBa_7convert10InfallibleB6R_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvBcG_12try_for_each4callB4R_B4M_NcNtB4M_5Break0E0B4M_E0E0E0Cs2VbMhdeEr66_16delta_benchmarks.exit.i.i ]
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.2.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.4.i.i.i.i.i, i64 104, i1 false), !noalias !2116
  br label %_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4IterINtNtBc_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEEIB1e_INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEENCNvMNtB23_8dfschemaNtB4C_8DFSchema4iter0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvB6_12map_try_foldTIB1E_RB1Z_ERB3e_EINtNtBc_6result6ResultNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtB23_5error15DataFusionErrorEuINtNtNtBc_3ops12control_flow11ControlFlowIB8c_B6V_EENCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB98_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE14update_to_plans_0NCINvXB8_INtB8_12GenericShuntIBO_BN_B91_EIB6A_NtNtBc_7convert10InfallibleB7E_EEB5d_8try_folduNCINvNvB5d_12try_for_each4callB6V_B8Q_NcNtB8Q_5Break0E0B8Q_E0E0B8b_ECs2VbMhdeEr66_16delta_benchmarks.exit

bb.t:                                             ; preds = %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldTRINtNtBa_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceERINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEETIB12_RB1n_EB2w_EuINtNtNtBa_3ops12control_flow11ControlFlowIB48_NtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEENCNvMNtB1r_8dfschemaNtB5H_8DFSchema4iter0NCIB2_B3P_INtNtBa_6result6ResultB4R_NtNtB1r_5error15DataFusionErrorEuB47_NCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB7z_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE14update_to_plans_0NCINvXB6_INtB6_12GenericShuntINtB4_3MapIBaK_INtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterB11_EIBbf_B2x_EEB5C_EB7s_EIB6s_NtNtBa_7convert10InfallibleB6R_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvBcG_12try_for_each4callB4R_B4M_NcNtB4M_5Break0E0B4M_E0E0E0Cs2VbMhdeEr66_16delta_benchmarks.exit.i.i
  %exitcond.not.i.i = icmp eq i64 %i.ah, %i.l
  br i1 %exitcond.not.i.i, label %_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4IterINtNtBc_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEEIB1e_INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEENCNvMNtB23_8dfschemaNtB4C_8DFSchema4iter0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvB6_12map_try_foldTIB1E_RB1Z_ERB3e_EINtNtBc_6result6ResultNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtB23_5error15DataFusionErrorEuINtNtNtBc_3ops12control_flow11ControlFlowIB8c_B6V_EENCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB98_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE14update_to_plans_0NCINvXB8_INtB8_12GenericShuntIBO_BN_B91_EIB6A_NtNtBc_7convert10InfallibleB7E_EEB5d_8try_folduNCINvNvB5d_12try_for_each4callB6V_B8Q_NcNtB8Q_5Break0E0B8Q_E0E0B8b_ECs2VbMhdeEr66_16delta_benchmarks.exit, label %bb.b

_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4IterINtNtBc_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEEIB1e_INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEENCNvMNtB23_8dfschemaNtB4C_8DFSchema4iter0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvB6_12map_try_foldTIB1E_RB1Z_ERB3e_EINtNtBc_6result6ResultNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtB23_5error15DataFusionErrorEuINtNtNtBc_3ops12control_flow11ControlFlowIB8c_B6V_EENCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB98_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE14update_to_plans_0NCINvXB8_INtB8_12GenericShuntIBO_BN_B91_EIB6A_NtNtBc_7convert10InfallibleB7E_EEB5d_8try_folduNCINvNvB5d_12try_for_each4callB6V_B8Q_NcNtB8Q_5Break0E0B8Q_E0E0B8b_ECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.t, %bb.a, %.loopexit14.i.i
  %storemerge.i.i = phi i64 [ %.sroa.03.011.i.i, %.loopexit14.i.i ], [ 38, %bb.a ], [ 38, %bb.t ]
  store i64 %storemerge.i.i, ptr %0, align 16, !alias.scope !2117, !noalias !2116
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i.i.i)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapIBO_INtNtNtBc_5slice4iter4IterINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENCNvMNtNtCsjHlmExTLNuX_14datafusion_sql8relation4joinINtNtB2S_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE10parse_joins_0ENCINvXs8_NtCs3gpiEk3WpjL_9hashbrown3setINtB5J_7HashSetRNtNtB1w_6string6StringNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtNtBa_6traits7collect6ExtendB6s_E6extendBX_E0ENtNtB7I_8iterator8Iterator4folduNCINvNvB8r_8for_each4callTB6s_uENCINvXs1i_NtB5L_3mapINtB9D_7HashMapB6s_uB6P_EIB7E_B9m_E6extendBN_E0E0ECs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef align 8 dereferenceable(48) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENCNvMNtNtCsjHlmExTLNuX_14datafusion_sql8relation4joinINtNtB2O_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE10parse_joins_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvB6_8map_foldRNtNtB1s_6string6StringTB6r_uEuNCINvXs8_NtCs3gpiEk3WpjL_9hashbrown3setINtB75_7HashSetB6r_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtB5A_7collect6ExtendB6r_E6extendBN_E0NCINvNvB5w_8for_each4callB6O_NCINvXs1i_NtB77_3mapINtB9Y_7HashMapB6r_uB7S_EIB8H_B6O_E6extendIBO_BN_B6W_EE0E0E0ECs2VbMhdeEr66_16delta_benchmarks.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = lshr exact i64 %i.d, 3
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.sroa.01.0.i.i = phi i64 [ 0, %bb.b ], [ %i.i, %bb.c ] ; 2 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i.i
  %.val10.i.i = load ptr, ptr %i.f, align 8, !noalias !2118, !nonnull !17, !noundef !17
  %i.g = getelementptr inbounds nuw i8, ptr %.val10.i.i, i64 16
  %i.h = tail call noundef zeroext i1 @_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3mapINtB5_7HashMapRNtNtCs6Po7BT7Nknu_5alloc6string6StringuNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6insertCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(48) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.g) ; 0 uses
  %i.i = add nuw i64 %.sroa.01.0.i.i, 1           ; 2 uses
  %i.j = icmp eq i64 %i.i, %i.e
  br i1 %i.j, label %_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENCNvMNtNtCsjHlmExTLNuX_14datafusion_sql8relation4joinINtNtB2O_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE10parse_joins_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvB6_8map_foldRNtNtB1s_6string6StringTB6r_uEuNCINvXs8_NtCs3gpiEk3WpjL_9hashbrown3setINtB75_7HashSetB6r_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtB5A_7collect6ExtendB6r_E6extendBN_E0NCINvNvB5w_8for_each4callB6O_NCINvXs1i_NtB77_3mapINtB9Y_7HashMapB6r_uB7S_EIB8H_B6O_E6extendIBO_BN_B6W_EE0E0E0ECs2VbMhdeEr66_16delta_benchmarks.exit, label %bb.c

_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENCNvMNtNtCsjHlmExTLNuX_14datafusion_sql8relation4joinINtNtB2O_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE10parse_joins_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvB6_8map_foldRNtNtB1s_6string6StringTB6r_uEuNCINvXs8_NtCs3gpiEk3WpjL_9hashbrown3setINtB75_7HashSetB6r_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtB5A_7collect6ExtendB6r_E6extendBN_E0NCINvNvB5w_8for_each4callB6O_NCINvXs1i_NtB77_3mapINtB9Y_7HashMapB6r_uB7S_EIB8H_B6O_E6extendIBO_BN_B6W_EE0E0E0ECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.c, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapIBO_INtNtNtBc_5slice4iter4IterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortENCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2i_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE14select_to_plans2_0ENCINvNtB1v_5utils19find_exprs_in_exprsNCINvB53_20find_aggregate_exprsBX_E0BX_E0ENtNtNtBa_6traits8iterator8Iterator4foldINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtB1t_4ExprENCINvNvMsg_NtB8_7flattenINtB7N_13FlattenCompatppE9iter_fold7flattenB6T_B6T_NCINvNvXsi_B7N_B80_B6g_4fold7flattenINtNtB6W_9into_iter8IntoIterB7q_EB6T_NCB50_s_0E0E0ECs2VbMhdeEr66_16delta_benchmarks(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2, ptr noalias noundef nonnull %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 8 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = load ptr, ptr %1, align 8, !nonnull !17, !noundef !17 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !17, !noundef !17 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !17, !noundef !17
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2123)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2126)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2128)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2131)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2133
  %i.j = icmp eq ptr %i.e, %i.g
  br i1 %i.j, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull readonly align 8 dereferenceable(24) %2, i64 24, i1 false), !noalias !2136
  %i.k = ptrtoint ptr %i.g to i64
  %i.l = ptrtoint ptr %i.e to i64
  %i.m = sub nuw i64 %i.k, %i.l
  %i.n = lshr exact i64 %i.m, 7
  %.sroa.6.24..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.7.24..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.sroa.6.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull readonly align 8 dereferenceable(24) %2, i64 24, i1 false), !alias.scope !2139, !noalias !2140
  br label %_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortENCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2e_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE14select_to_plans2_0ENtNtNtBa_6traits8iterator8Iterator4foldINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtB1p_4ExprENCINvB6_8map_foldRB64_B5x_B5x_NCINvNtB1r_5utils19find_exprs_in_exprsNCINvB6P_20find_aggregate_exprsBN_E0BN_E0NCINvNvMsg_NtB8_7flattenINtB8c_13FlattenCompatppE9iter_fold7flattenB5x_B5x_NCINvNvXsi_B8c_B8p_B4U_4fold7flattenINtNtB5A_9into_iter8IntoIterB64_EB5x_NCB6M_s_0E0E0E0ECs2VbMhdeEr66_16delta_benchmarks.exit

bb.d:                                             ; preds = %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortRNtBX_4ExprINtNtCs6Po7BT7Nknu_5alloc3vec3VecB1F_ENCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2y_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE14select_to_plans2_0NCIB2_B1E_B1P_B1P_NCINvNtBZ_5utils19find_exprs_in_exprsNCINvB5A_20find_aggregate_exprsINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2r_EE0B6B_E0NCINvNvMsg_NtB6_7flattenINtB7D_13FlattenCompatppE9iter_fold7flattenB1P_B1P_NCINvNvXsi_B7D_B7Q_NtNtNtB8_6traits8iterator8Iterator4fold7flattenINtNtB1S_9into_iter8IntoIterB1F_EB1P_NCB5x_s_0E0E0E0E0Cs2VbMhdeEr66_16delta_benchmarks.exit.i.i, %bb.b
  %.sroa.01.0.i.i = phi i64 [ 0, %bb.b ], [ %i.u, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortRNtBX_4ExprINtNtCs6Po7BT7Nknu_5alloc3vec3VecB1F_ENCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2y_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE14select_to_plans2_0NCIB2_B1E_B1P_B1P_NCINvNtBZ_5utils19find_exprs_in_exprsNCINvB5A_20find_aggregate_exprsINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2r_EE0B6B_E0NCINvNvMsg_NtB6_7flattenINtB7D_13FlattenCompatppE9iter_fold7flattenB1P_B1P_NCINvNvXsi_B7D_B7Q_NtNtNtB8_6traits8iterator8Iterator4fold7flattenINtNtB1S_9into_iter8IntoIterB1F_EB1P_NCB5x_s_0E0E0E0E0Cs2VbMhdeEr66_16delta_benchmarks.exit.i.i ] ; 2 uses
  %i.p = getelementptr inbounds nuw [128 x i8], ptr %i.e, i64 %.sroa.01.0.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2141
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !2150
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2141
  invoke void @_RINvNtCs8VI8w5SIoU4_15datafusion_expr5utils18find_exprs_in_exprNCINvB2_20find_aggregate_exprsINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB1C_5slice4iter4IterNtNtB4_4expr4SortENCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB37_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE14select_to_plans2_0EE0ECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(128) %i.p, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.i)
          to label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortRNtBX_4ExprINtNtCs6Po7BT7Nknu_5alloc3vec3VecB1F_ENCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2y_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE14select_to_plans2_0NCIB2_B1E_B1P_B1P_NCINvNtBZ_5utils19find_exprs_in_exprsNCINvB5A_20find_aggregate_exprsINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2r_EE0B6B_E0NCINvNvMsg_NtB6_7flattenINtB7D_13FlattenCompatppE9iter_fold7flattenB1P_B1P_NCINvNvXsi_B7D_B7Q_NtNtNtB8_6traits8iterator8Iterator4fold7flattenINtNtB1S_9into_iter8IntoIterB1F_EB1P_NCB5x_s_0E0E0E0E0Cs2VbMhdeEr66_16delta_benchmarks.exit.i.i unwind label %bb.e, !noalias !2151

bb.e:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c) #38
          to label %.body.i.i.i unwind label %bb.f, !noalias !2151

bb.f:                                             ; preds = %bb.e
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #35, !noalias !2151
  unreachable

.body.i.i.i:                                      ; preds = %bb.e
  resume { ptr, i32 } %i.q

_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortRNtBX_4ExprINtNtCs6Po7BT7Nknu_5alloc3vec3VecB1F_ENCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2y_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE14select_to_plans2_0NCIB2_B1E_B1P_B1P_NCINvNtBZ_5utils19find_exprs_in_exprsNCINvB5A_20find_aggregate_exprsINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2r_EE0B6B_E0NCINvNvMsg_NtB6_7flattenINtB7D_13FlattenCompatppE9iter_fold7flattenB1P_B1P_NCINvNvXsi_B7D_B7Q_NtNtNtB8_6traits8iterator8Iterator4fold7flattenINtNtB1S_9into_iter8IntoIterB1F_EB1P_NCB5x_s_0E0E0E0E0Cs2VbMhdeEr66_16delta_benchmarks.exit.i.i: ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !2150
  %.sroa.4.24.copyload.i.i.i.i = load i64, ptr %i.b, align 8, !noalias !2141
  %.sroa.6.24.copyload.i.i.i.i = load ptr, ptr %.sroa.6.24..sroa_idx.i.i.i.i, align 8, !noalias !2141, !nonnull !17, !noundef !17 ; 3 uses
  %.sroa.7.24.copyload.i.i.i.i = load i64, ptr %.sroa.7.24..sroa_idx.i.i.i.i, align 8, !noalias !2141 ; 2 uses
  %i.s = icmp ult i64 %.sroa.7.24.copyload.i.i.i.i, 82351536043346213
  call void @llvm.assume(i1 %i.s)
  %i.t = getelementptr inbounds nuw [112 x i8], ptr %.sroa.6.24.copyload.i.i.i.i, i64 %.sroa.7.24.copyload.i.i.i.i
  store ptr %.sroa.6.24.copyload.i.i.i.i, ptr %i.o, align 8, !noalias !2152
  store ptr %.sroa.6.24.copyload.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !noalias !2152
  store i64 %.sroa.4.24.copyload.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 8, !noalias !2152
  store ptr %i.t, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i, align 8, !noalias !2152
  call void @_RINvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB6_8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4foldINtB8_3VecBX_EQNCINvNtB11_5utils19find_exprs_in_exprsNCINvB31_20find_aggregate_exprsINtNtNtB1N_8adapters3map3MapINtNtNtB1P_5slice4iter4IterNtBZ_4SortENCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB5e_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE14select_to_plans2_0EE0B43_Es_0ECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.o, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull %3), !noalias !2139
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2152
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2141
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2141
  %i.u = add nuw i64 %.sroa.01.0.i.i, 1           ; 2 uses
  %i.v = icmp eq i64 %i.u, %i.n
  br i1 %i.v, label %bb.g, label %bb.d

bb.g:                                             ; preds = %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortRNtBX_4ExprINtNtCs6Po7BT7Nknu_5alloc3vec3VecB1F_ENCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2y_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE14select_to_plans2_0NCIB2_B1E_B1P_B1P_NCINvNtBZ_5utils19find_exprs_in_exprsNCINvB5A_20find_aggregate_exprsINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2r_EE0B6B_E0NCINvNvMsg_NtB6_7flattenINtB7D_13FlattenCompatppE9iter_fold7flattenB1P_B1P_NCINvNvXsi_B7D_B7Q_NtNtNtB8_6traits8iterator8Iterator4fold7flattenINtNtB1S_9into_iter8IntoIterB1F_EB1P_NCB5x_s_0E0E0E0E0Cs2VbMhdeEr66_16delta_benchmarks.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !2157
  br label %_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortENCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2e_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE14select_to_plans2_0ENtNtNtBa_6traits8iterator8Iterator4foldINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtB1p_4ExprENCINvB6_8map_foldRB64_B5x_B5x_NCINvNtB1r_5utils19find_exprs_in_exprsNCINvB6P_20find_aggregate_exprsBN_E0BN_E0NCINvNvMsg_NtB8_7flattenINtB8c_13FlattenCompatppE9iter_fold7flattenB5x_B5x_NCINvNvXsi_B8c_B8p_B4U_4fold7flattenINtNtB5A_9into_iter8IntoIterB64_EB5x_NCB6M_s_0E0E0E0ECs2VbMhdeEr66_16delta_benchmarks.exit

_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortENCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2e_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE14select_to_plans2_0ENtNtNtBa_6traits8iterator8Iterator4foldINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtB1p_4ExprENCINvB6_8map_foldRB64_B5x_B5x_NCINvNtB1r_5utils19find_exprs_in_exprsNCINvB6P_20find_aggregate_exprsBN_E0BN_E0NCINvNvMsg_NtB8_7flattenINtB8c_13FlattenCompatppE9iter_fold7flattenB5x_B5x_NCINvNvXsi_B8c_B8p_B4U_4fold7flattenINtNtB5A_9into_iter8IntoIterB64_EB5x_NCB6M_s_0E0E0E0ECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.c, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2133
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4IterINtNtBc_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEEIBO_IBY_IB1e_IB1E_NtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEEIB1e_INtNtB23_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEENCNvMNtB2Z_8dfschemaNtB5i_8DFSchema4iter0EENCINvMs8_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB63_13SubqueryAlias7try_newB2V_E0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB7v_8for_each4callNtNtB67_4expr4ExprNCINvMsj_NtB23_3vecINtB8Z_3VecB8y_E14extend_trustedBN_E0E0ECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(80) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [56 x i8], align 8                ; 6 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [56 x i8], align 8                ; 10 uses
  %i.e = alloca [56 x i8], align 8                ; 10 uses
  %i.f = alloca [56 x i8], align 8                ; 8 uses
  %i.g = alloca [112 x i8], align 16              ; 4 uses
  %.sroa.0.i.i.i.i = alloca [80 x i8], align 8    ; 5 uses
  %i.h = alloca [56 x i8], align 8                ; 5 uses
  %i.i = alloca [112 x i8], align 16              ; 10 uses
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8 ; 2 uses
  %.sroa.41.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.41.0.copyload = load ptr, ptr %.sroa.41.0..sroa_idx, align 8 ; 2 uses
  %.sroa.52.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.52.0.copyload = load ptr, ptr %.sroa.52.0..sroa_idx, align 8 ; 2 uses
  %.sroa.63.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.63.0.copyload = load i64, ptr %.sroa.63.0..sroa_idx, align 8
  %.sroa.74.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.74.0.copyload = load i64, ptr %.sroa.74.0..sroa_idx, align 8 ; 3 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sroa.8.0.copyload = load i64, ptr %.sroa.8.0..sroa_idx, align 8 ; 2 uses
  %.sroa.05.0.copyload = load ptr, ptr %1, align 8 ; 4 uses
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.56.0.copyload = load i64, ptr %.sroa.56.0..sroa_idx, align 8 ; 2 uses
  %.sroa.77.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.77.0.copyload = load ptr, ptr %.sroa.77.0..sroa_idx, align 8
  %i.j = sub i64 %.sroa.8.0.copyload, %.sroa.74.0.copyload
  %.not.i.i = icmp eq i64 %.sroa.8.0.copyload, %.sroa.74.0.copyload
  br i1 %.not.i.i, label %_RINvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterINtNtBb_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEEINtNtB7_3map3MapIBN_IBX_IB1n_NtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEEIBX_INtNtB1M_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEENCNvMNtB2T_8dfschemaNtB5b_8DFSchema4iter0EENtNtNtB9_6traits8iterator8Iterator4folduNCINvB2p_8map_foldTRB1m_TIB1n_RB2P_ERB43_EENtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruNCINvMs8_NtNtB7c_12logical_plan4planNtB81_13SubqueryAlias7try_newB2P_E0NCINvNvB5N_8for_each4callB78_NCINvMsj_NtB1M_3vecINtB9D_3VecB78_E14extend_trustedIB2n_BM_B7S_EE0E0E0ECs2VbMhdeEr66_16delta_benchmarks.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.41.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.52.0.copyload) ]
  %.sink18.i.sroa.gep.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.sink18.i.sroa.gep1.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %.sink15.i.sroa.gep.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %.sink15.i.sroa.gep2.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %.sink18.i7.sroa.gep.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sink18.i7.sroa.gep3.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %.sink15.i9.sroa.gep.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.sink15.i9.sroa.gep4.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.0.56..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i.i.i, i64 56
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 88
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 96
  br label %bb.c

.body.i.i:                                        ; preds = %bb.au, %bb.at, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i.i, %bb.b
  %.pn.i.i = phi { ptr, i32 } [ %i.bx, %bb.au ], [ %i.l, %bb.b ], [ %i.bx, %bb.at ], [ %i.bz, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.05.0.copyload) ]
  store i64 %.val13.i.i, ptr %.sroa.05.0.copyload, align 8, !noalias !2158
  resume { ptr, i32 } %.pn.i.i

bb.b:                                             ; preds = %bb.s
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

bb.c:                                             ; preds = %bb.ax, %.lr.ph.i.i
  %.val13.i.i = phi i64 [ %.sroa.56.0.copyload, %.lr.ph.i.i ], [ %i.cg, %bb.ax ] ; 3 uses
  %.sroa.0.020.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.m, %bb.ax ] ; 2 uses
  %i.m = add nuw i64 %.sroa.0.020.i.i, 1          ; 2 uses
  %i.n = add i64 %.sroa.0.020.i.i, %.sroa.74.0.copyload ; 2 uses
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.copyload, i64 %i.n ; 2 uses
  %i.p = add i64 %i.n, %.sroa.63.0.copyload       ; 2 uses
  %i.q = getelementptr inbounds nuw [56 x i8], ptr %.sroa.41.0.copyload, i64 %i.p ; 18 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %.sroa.52.0.copyload, i64 %i.p
  %i.s = load i64, ptr %i.q, align 8, !range !83, !alias.scope !2165, !noalias !2168, !noundef !17 ; 3 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.s, 3           ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !2158
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !2175
  br i1 %.not.i.i.i.i.i, label %bb.r, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2175
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2182)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2185)
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !alias.scope !2185, !noalias !2187, !nonnull !17, !noundef !17 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !2185, !noalias !2187, !noundef !17 ; 3 uses
  %i.x = atomicrmw add ptr %i.u, i64 1 monotonic, align 8, !noalias !2188
  %i.y = icmp slt i64 %i.x, 0                     ; 3 uses
  switch i64 %i.s, label %default.unreachable [
    i64 0, label %bb.e
    i64 1, label %bb.f
    i64 2, label %bb.g
  ]

default.unreachable:                              ; preds = %bb.u, %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  br i1 %i.y, label %bb.h, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common15table_referenceNtB5_14TableReferenceNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  br i1 %i.y, label %bb.j, label %bb.i

bb.g:                                             ; preds = %bb.d
  br i1 %i.y, label %bb.m, label %bb.l

bb.h:                                             ; preds = %bb.e
  tail call void @llvm.trap()
  unreachable

.sink.split.i.i.i.i.i:                            ; preds = %bb.p, %bb.i
  %.sink18.i.sroa.phi.i.i.i.i = phi ptr [ %.sink18.i.sroa.gep.i.i.i.i, %bb.p ], [ %.sink18.i.sroa.gep1.i.i.i.i, %bb.i ]
  %.sink16.i.i.i.i.i = phi ptr [ %i.ag, %bb.p ], [ %i.u, %bb.i ]
  %.sink15.i.sroa.phi.i.i.i.i = phi ptr [ %.sink15.i.sroa.gep.i.i.i.i, %bb.p ], [ %.sink15.i.sroa.gep2.i.i.i.i, %bb.i ]
  %.sink13.i.i.i.i.i = phi i64 [ %i.ai, %bb.p ], [ %i.w, %bb.i ]
  %.sink12.ph.i.i.i.i.i = phi i64 [ 40, %bb.p ], [ 24, %bb.i ]
  %.sink10.ph.i.i.i.i.i = phi ptr [ %i.am, %bb.p ], [ %i.aa, %bb.i ]
  %.sink9.ph.i.i.i.i.i = phi i64 [ 48, %bb.p ], [ 32, %bb.i ]
  %.sink7.ph.i.i.i.i.i = phi i64 [ %i.ao, %bb.p ], [ %i.ac, %bb.i ]
  store ptr %.sink16.i.i.i.i.i, ptr %.sink18.i.sroa.phi.i.i.i.i, align 8, !alias.scope !2182, !noalias !2189
  store i64 %.sink13.i.i.i.i.i, ptr %.sink15.i.sroa.phi.i.i.i.i, align 8, !alias.scope !2182, !noalias !2189
  br label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common15table_referenceNtB5_14TableReferenceNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i.i

bb.i:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !alias.scope !2185, !noalias !2187, !nonnull !17, !noundef !17 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.ac = load i64, ptr %i.ab, align 8, !alias.scope !2185, !noalias !2187, !noundef !17
  %i.ad = atomicrmw add ptr %i.aa, i64 1 monotonic, align 8, !noalias !2188
  %i.ae = icmp slt i64 %i.ad, 0
  br i1 %i.ae, label %bb.k, label %.sink.split.i.i.i.i.i

bb.j:                                             ; preds = %bb.f
  tail call void @llvm.trap()
  unreachable

bb.k:                                             ; preds = %bb.i
  tail call void @llvm.trap()
  unreachable

bb.l:                                             ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.ag = load ptr, ptr %i.af, align 8, !alias.scope !2185, !noalias !2187, !nonnull !17, !noundef !17 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.ai = load i64, ptr %i.ah, align 8, !alias.scope !2185, !noalias !2187, !noundef !17
  %i.aj = atomicrmw add ptr %i.ag, i64 1 monotonic, align 8, !noalias !2188
  %i.ak = icmp slt i64 %i.aj, 0
  br i1 %i.ak, label %bb.o, label %bb.n

bb.m:                                             ; preds = %bb.g
  tail call void @llvm.trap()
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.al = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.am = load ptr, ptr %i.al, align 8, !alias.scope !2185, !noalias !2187, !nonnull !17, !noundef !17 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  %i.ao = load i64, ptr %i.an, align 8, !alias.scope !2185, !noalias !2187, !noundef !17
  %i.ap = atomicrmw add ptr %i.am, i64 1 monotonic, align 8, !noalias !2188
  %i.aq = icmp slt i64 %i.ap, 0
  br i1 %i.aq, label %bb.q, label %bb.p

bb.o:                                             ; preds = %bb.l
  tail call void @llvm.trap()
  unreachable

bb.p:                                             ; preds = %bb.n
  store ptr %i.u, ptr %.sink18.i.sroa.gep1.i.i.i.i, align 8, !alias.scope !2182, !noalias !2189
  store i64 %i.w, ptr %.sink15.i.sroa.gep2.i.i.i.i, align 8, !alias.scope !2182, !noalias !2189
  br label %.sink.split.i.i.i.i.i

bb.q:                                             ; preds = %bb.n
  tail call void @llvm.trap()
  unreachable

_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common15table_referenceNtB5_14TableReferenceNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i.i: ; preds = %.sink.split.i.i.i.i.i, %bb.e
  %.sink12.i.i.i.i.i = phi i64 [ 8, %bb.e ], [ %.sink12.ph.i.i.i.i.i, %.sink.split.i.i.i.i.i ]
  %.sink10.i.i.i.i.i = phi ptr [ %i.u, %bb.e ], [ %.sink10.ph.i.i.i.i.i, %.sink.split.i.i.i.i.i ]
  %.sink9.i.i.i.i.i = phi i64 [ 16, %bb.e ], [ %.sink9.ph.i.i.i.i.i, %.sink.split.i.i.i.i.i ]
  %.sink7.i.i.i.i.i = phi i64 [ %i.w, %bb.e ], [ %.sink7.ph.i.i.i.i.i, %.sink.split.i.i.i.i.i ]
  %i.ar = getelementptr inbounds nuw i8, ptr %i.e, i64 %.sink12.i.i.i.i.i
  store ptr %.sink10.i.i.i.i.i, ptr %i.ar, align 8, !alias.scope !2182, !noalias !2189
  %i.as = getelementptr inbounds nuw i8, ptr %i.e, i64 %.sink9.i.i.i.i.i
  store i64 %.sink7.i.i.i.i.i, ptr %i.as, align 8, !alias.scope !2182, !noalias !2189
  store i64 %i.s, ptr %i.e, align 8, !alias.scope !2182, !noalias !2189
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.h, ptr noundef nonnull align 8 dereferenceable(56) %i.e, i64 56, i1 false), !noalias !2175
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2175
  br label %bb.s

bb.r:                                             ; preds = %bb.c
  store i64 3, ptr %i.h, align 8, !noalias !2175
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common15table_referenceNtB5_14TableReferenceNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i.i
  %i.at = load ptr, ptr %i.r, align 8, !noalias !2175, !nonnull !17, !noundef !17
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  invoke void @_RINvMs_NtCsjhHCjzi9uUI_17datafusion_common6columnNtB5_6Column3newNtNtB7_15table_reference14TableReferenceRNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.k, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.au)
          to label %.noexc.i.i unwind label %bb.b, !noalias !2158

.noexc.i.i:                                       ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !2175
  store i64 5, ptr %i.i, align 16, !noalias !2190
  %i.av = load i64, ptr %i.o, align 8, !range !67, !noalias !2175, !noundef !17
  %.not5.i.i.i.i = icmp eq i64 %i.av, -9223372036854775808
  br i1 %.not5.i.i.i.i, label %bb.ax, label %bb.t

bb.t:                                             ; preds = %.noexc.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !2175
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.g, ptr noundef nonnull align 16 dereferenceable(112) %i.i, i64 112, i1 false), !noalias !2190
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2175
  br i1 %.not.i.i.i.i.i, label %bb.ai, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2175
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2191)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2194)
  %i.aw = load i64, ptr %i.q, align 8, !range !64, !alias.scope !2194, !noalias !2196, !noundef !17 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !alias.scope !2194, !noalias !2196, !nonnull !17, !noundef !17 ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.ba = load i64, ptr %i.az, align 8, !alias.scope !2194, !noalias !2196, !noundef !17 ; 3 uses
  %i.bb = atomicrmw add ptr %i.ay, i64 1 monotonic, align 8, !noalias !2197
  %i.bc = icmp slt i64 %i.bb, 0                   ; 3 uses
  switch i64 %i.aw, label %default.unreachable [
    i64 0, label %bb.v
    i64 1, label %bb.w
    i64 2, label %bb.x
  ]

bb.v:                                             ; preds = %bb.u
  br i1 %i.bc, label %bb.y, label %bb.av

bb.w:                                             ; preds = %bb.u
  br i1 %i.bc, label %bb.aa, label %bb.z

end_hunk_1
begin_hunk_2_@_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4IterINtNtBc_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEEIBO_IBY_IB1e_IB1E_NtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEEIB1e_INtNtB23_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEENCNvMNtB2Z_8dfschemaNtB5i_8DFSchema4iter0EENCINvMs8_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB63_13SubqueryAlias7try_newB2V_E0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB7v_8for_each4callNtNtB67_4expr4ExprNCINvMsj_NtB23_3vecINtB8Z_3VecB8y_E14extend_trustedBN_E0E0ECs2VbMhdeEr66_16delta_benchmarks:bb.a
  store i64 %.sink13.i10.i.i.i.i, ptr %.sink15.i9.sroa.phi.i.i.i.i, align 8, !alias.scope !2191, !noalias !2198
  br label %bb.av

bb.z:                                             ; preds = %bb.w
  %i.bd = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.be = load ptr, ptr %i.bd, align 8, !alias.scope !2194, !noalias !2196, !nonnull !17, !noundef !17 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.bg = load i64, ptr %i.bf, align 8, !alias.scope !2194, !noalias !2196, !noundef !17
  %i.bh = atomicrmw add ptr %i.be, i64 1 monotonic, align 8, !noalias !2197
  %i.bi = icmp slt i64 %i.bh, 0
  br i1 %i.bi, label %bb.ab, label %.sink.split.i6.i.i.i.i

bb.aa:                                            ; preds = %bb.w
  tail call void @llvm.trap()
  unreachable

bb.ab:                                            ; preds = %bb.z
  tail call void @llvm.trap()
  unreachable

bb.ac:                                            ; preds = %bb.x
  %i.bj = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.bk = load ptr, ptr %i.bj, align 8, !alias.scope !2194, !noalias !2196, !nonnull !17, !noundef !17 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.bm = load i64, ptr %i.bl, align 8, !alias.scope !2194, !noalias !2196, !noundef !17
  %i.bn = atomicrmw add ptr %i.bk, i64 1 monotonic, align 8, !noalias !2197
  %i.bo = icmp slt i64 %i.bn, 0
  br i1 %i.bo, label %bb.af, label %bb.ae

bb.ad:                                            ; preds = %bb.x
  tail call void @llvm.trap()
  unreachable

bb.ae:                                            ; preds = %bb.ac
  %i.bp = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.bq = load ptr, ptr %i.bp, align 8, !alias.scope !2194, !noalias !2196, !nonnull !17, !noundef !17 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  %i.bs = load i64, ptr %i.br, align 8, !alias.scope !2194, !noalias !2196, !noundef !17
  %i.bt = atomicrmw add ptr %i.bq, i64 1 monotonic, align 8, !noalias !2197
  %i.bu = icmp slt i64 %i.bt, 0
  br i1 %i.bu, label %bb.ah, label %bb.ag

bb.af:                                            ; preds = %bb.ac
  tail call void @llvm.trap()
  unreachable

bb.ag:                                            ; preds = %bb.ae
  store ptr %i.ay, ptr %.sink18.i7.sroa.gep3.i.i.i.i, align 8, !alias.scope !2191, !noalias !2198
  store i64 %i.ba, ptr %.sink15.i9.sroa.gep4.i.i.i.i, align 8, !alias.scope !2191, !noalias !2198
  br label %.sink.split.i6.i.i.i.i

bb.ah:                                            ; preds = %bb.ae
  tail call void @llvm.trap()
  unreachable

bb.ai:                                            ; preds = %bb.t
  store i64 3, ptr %i.f, align 8, !noalias !2175
  br label %bb.aj

bb.aj:                                            ; preds = %bb.av, %bb.ai
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2199)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2202
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #36, !noalias !2206
  %i.bv = tail call noundef align 16 dereferenceable_or_null(112) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 80, 129) 112, i64 noundef range(i64 8, 17) 16) #36, !noalias !2206 ; 4 uses
  %i.bw = icmp eq ptr %i.bv, null
  br i1 %i.bw, label %bb.ak, label %bb.an, !prof !28

bb.ak:                                            ; preds = %bb.aj
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef 112) #37
          to label %.noexc.i.i.i.i.i unwind label %bb.al, !noalias !2202

.noexc.i.i.i.i.i:                                 ; preds = %bb.ak
  unreachable

bb.al:                                            ; preds = %bb.ak
  %i.bx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 16 dereferenceable(112) %i.g) #38
          to label %bb.at unwind label %bb.am, !noalias !2209

bb.am:                                            ; preds = %bb.al
  %i.by = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #35, !noalias !2209
  unreachable

bb.an:                                            ; preds = %bb.aj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.bv, ptr noundef nonnull align 16 dereferenceable(112) %i.i, i64 112, i1 false), !noalias !2190
  store ptr %i.bv, ptr %i.c, align 8, !noalias !2202
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2202
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.f, align 8, !alias.scope !2199, !noalias !2210 ; 2 uses
  %.not.i.i.i14.i.i = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i, 3 ; 2 uses
  br i1 %.not.i.i.i14.i.i, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.ap, %bb.an
  store i64 %.sroa.0.0.copyload.i.i.i.i.i, ptr %i.b, align 8, !noalias !2202
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2202
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.o)
          to label %bb.aw unwind label %bb.aq, !noalias !2211

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i.i: ; preds = %bb.ar, %bb.aq
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c) #38
          to label %.body.i.i unwind label %bb.as, !noalias !2211

bb.ap:                                            ; preds = %bb.an
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.4.0..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5.0..sroa_idx.i.i.i.i.i, i64 48, i1 false), !noalias !2210
  br label %bb.ao

bb.aq:                                            ; preds = %bb.ao
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br i1 %.not.i.i.i14.i.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i.i, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(56) %i.b)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i.i unwind label %bb.as, !noalias !2211

bb.as:                                            ; preds = %bb.au, %bb.ar, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i.i
  %i.ca = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #35, !noalias !2212
  unreachable

bb.at:                                            ; preds = %bb.al
  %i.cb = load i64, ptr %i.f, align 8, !range !83, !alias.scope !2213, !noalias !2210, !noundef !17
  %i.cc = icmp eq i64 %i.cb, 3
  br i1 %i.cc, label %.body.i.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.f)
          to label %.body.i.i unwind label %bb.as, !noalias !2216

bb.av:                                            ; preds = %.sink.split.i6.i.i.i.i, %bb.v
  %.sink12.i15.i.i.i.i = phi i64 [ 8, %bb.v ], [ %.sink12.ph.i11.i.i.i.i, %.sink.split.i6.i.i.i.i ]
  %.sink10.i16.i.i.i.i = phi ptr [ %i.ay, %bb.v ], [ %.sink10.ph.i12.i.i.i.i, %.sink.split.i6.i.i.i.i ]
  %.sink9.i17.i.i.i.i = phi i64 [ 16, %bb.v ], [ %.sink9.ph.i13.i.i.i.i, %.sink.split.i6.i.i.i.i ]
  %.sink7.i18.i.i.i.i = phi i64 [ %i.ba, %bb.v ], [ %.sink7.ph.i14.i.i.i.i, %.sink.split.i6.i.i.i.i ]
  %i.cd = getelementptr inbounds nuw i8, ptr %i.d, i64 %.sink12.i15.i.i.i.i
  store ptr %.sink10.i16.i.i.i.i, ptr %i.cd, align 8, !alias.scope !2191, !noalias !2198
  %i.ce = getelementptr inbounds nuw i8, ptr %i.d, i64 %.sink9.i17.i.i.i.i
  store i64 %.sink7.i18.i.i.i.i, ptr %i.ce, align 8, !alias.scope !2191, !noalias !2198
  store i64 %i.aw, ptr %i.d, align 8, !alias.scope !2191, !noalias !2198
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.f, ptr noundef nonnull align 8 dereferenceable(56) %i.d, i64 56, i1 false), !noalias !2175
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2175
  br label %bb.aj

bb.aw:                                            ; preds = %bb.ao
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(56) %i.b, i64 56, i1 false), !noalias !2217
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.56..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !2217
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2202
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2202
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2202
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2175
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !2175
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.k, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0.i.i.i.i, i64 80, i1 false), !noalias !2190
  store ptr %i.bv, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !noalias !2190
  store ptr null, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 16, !noalias !2190
  store i64 4, ptr %i.i, align 16, !noalias !2190
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i)
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %.noexc.i.i
  %i.cf = getelementptr inbounds nuw [112 x i8], ptr %.sroa.77.0.copyload, i64 %.val13.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.cf, ptr noundef nonnull align 16 dereferenceable(112) %i.i, i64 112, i1 false), !noalias !2190
  %i.cg = add i64 %.val13.i.i, 1                  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !2158
  %exitcond.not.i.i = icmp eq i64 %i.m, %i.j
  br i1 %exitcond.not.i.i, label %_RINvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterINtNtBb_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEEINtNtB7_3map3MapIBN_IBX_IB1n_NtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEEIBX_INtNtB1M_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEENCNvMNtB2T_8dfschemaNtB5b_8DFSchema4iter0EENtNtNtB9_6traits8iterator8Iterator4folduNCINvB2p_8map_foldTRB1m_TIB1n_RB2P_ERB43_EENtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruNCINvMs8_NtNtB7c_12logical_plan4planNtB81_13SubqueryAlias7try_newB2P_E0NCINvNvB5N_8for_each4callB78_NCINvMsj_NtB1M_3vecINtB9D_3VecB78_E14extend_trustedIB2n_BM_B7S_EE0E0E0ECs2VbMhdeEr66_16delta_benchmarks.exit, label %bb.c

_RINvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterINtNtBb_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEEINtNtB7_3map3MapIBN_IBX_IB1n_NtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEEIBX_INtNtB1M_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEENCNvMNtB2T_8dfschemaNtB5b_8DFSchema4iter0EENtNtNtB9_6traits8iterator8Iterator4folduNCINvB2p_8map_foldTRB1m_TIB1n_RB2P_ERB43_EENtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruNCINvMs8_NtNtB7c_12logical_plan4planNtB81_13SubqueryAlias7try_newB2P_E0NCINvNvB5N_8for_each4callB78_NCINvMsj_NtB1M_3vecINtB9D_3VecB78_E14extend_trustedIB2n_BM_B7S_EE0E0E0ECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.ax, %bb.a
  %.val11.i.i = phi i64 [ %.sroa.56.0.copyload, %bb.a ], [ %i.cg, %bb.ax ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.05.0.copyload) ]
  store i64 %.val11.i.i, ptr %.sroa.05.0.copyload, align 8, !noalias !2158
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4IterINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEB1d_ENCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB37_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE39sql_statement_to_plan_with_context_impls_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB6e_8for_each4callNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNCINvMsj_NtB1I_3vecINtB89_3VecB7h_E14extend_trustedBN_E0E0ECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [112 x i8], align 16              ; 6 uses
  %i.c = alloca [112 x i8], align 16              ; 4 uses
  %i.d = alloca [112 x i8], align 16              ; 4 uses
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8 ; 2 uses
  %.sroa.41.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.41.0.copyload = load ptr, ptr %.sroa.41.0..sroa_idx, align 8 ; 2 uses
  %.sroa.52.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.52.0.copyload = load i64, ptr %.sroa.52.0..sroa_idx, align 8 ; 3 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.03.0.copyload = load ptr, ptr %1, align 8 ; 4 uses
  %.sroa.54.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.54.0.copyload = load i64, ptr %.sroa.54.0..sroa_idx, align 8 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8
  %i.e = sub i64 %.sroa.6.0.copyload, %.sroa.52.0.copyload
  %.not.i.i = icmp eq i64 %.sroa.6.0.copyload, %.sroa.52.0.copyload
  br i1 %.not.i.i, label %_RINvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEBW_ENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRB1m_B3K_ENtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruNCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB4L_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE39sql_statement_to_plan_with_context_impls_0NCINvNvB2I_8for_each4callB3U_NCINvMsj_NtB1r_3vecINtB8t_3VecB3U_E14extend_trustedINtB3r_3MapBM_B4E_EE0E0E0ECs2VbMhdeEr66_16delta_benchmarks.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.41.0.copyload) ]
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %bb.c

.body.i.i:                                        ; preds = %bb.d, %bb.b
  %.pn.i.i = phi { ptr, i32 } [ %i.n, %bb.d ], [ %i.g, %bb.b ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.03.0.copyload) ]
  store i64 %.val13.i.i, ptr %.sroa.03.0.copyload, align 8, !noalias !2218
  resume { ptr, i32 } %.pn.i.i

bb.b:                                             ; preds = %.noexc16.i.i, %_RNCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB6_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE39sql_statement_to_plan_with_context_impls_0Cs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i, %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

bb.c:                                             ; preds = %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldTRINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEBV_ENtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruNCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB38_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE39sql_statement_to_plan_with_context_impls_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB2h_NCINvMsj_NtB11_3vecINtB7k_3VecB2h_E14extend_trustedINtB4_3MapINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterBW_EB8q_EB31_EE0E0E0Cs2VbMhdeEr66_16delta_benchmarks.exit.i.i, %.lr.ph.i.i
  %.val13.i.i = phi i64 [ %.sroa.54.0.copyload, %.lr.ph.i.i ], [ %i.r, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldTRINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEBV_ENtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruNCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB38_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE39sql_statement_to_plan_with_context_impls_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB2h_NCINvMsj_NtB11_3vecINtB7k_3VecB2h_E14extend_trustedINtB4_3MapINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterBW_EB8q_EB31_EE0E0E0Cs2VbMhdeEr66_16delta_benchmarks.exit.i.i ] ; 3 uses
  %.sroa.0.018.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.h, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldTRINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEBV_ENtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruNCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB38_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE39sql_statement_to_plan_with_context_impls_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB2h_NCINvMsj_NtB11_3vecINtB7k_3VecB2h_E14extend_trustedINtB4_3MapINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterBW_EB8q_EB31_EE0E0E0Cs2VbMhdeEr66_16delta_benchmarks.exit.i.i ] ; 2 uses
  %i.h = add nuw i64 %.sroa.0.018.i.i, 1          ; 2 uses
  %i.i = add i64 %.sroa.0.018.i.i, %.sroa.52.0.copyload ; 2 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload, i64 %i.i
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %.sroa.41.0.copyload, i64 %i.i
  %.val14.i.i = load ptr, ptr %i.j, align 8, !noalias !2218 ; 3 uses
  %.val15.i.i = load ptr, ptr %i.k, align 8, !noalias !2218, !nonnull !17, !noundef !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2225
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2228
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2228
  %i.l = getelementptr inbounds nuw i8, ptr %.val15.i.i, i64 16
  invoke void @_RNvXs1_NtCsjhHCjzi9uUI_17datafusion_common6columnNtB5_6ColumnINtNtCsbvkFyIu7lgC_4core7convert4FromRNtNtCs6Po7BT7Nknu_5alloc6string6StringE4from(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(address) dereferenceable(104) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.l)
          to label %.noexc.i.i unwind label %bb.b, !noalias !2218

.noexc.i.i:                                       ; preds = %bb.c
  store i64 5, ptr %i.b, align 16, !noalias !2228
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2228
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val14.i.i) ]
  %i.m = getelementptr inbounds nuw i8, ptr %.val14.i.i, i64 40
  invoke fastcc void @_RNvXs2_NtCsfYVtenZkBsn_12arrow_schema8datatypeNtB5_8DataTypeNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.m)
          to label %_RNCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB6_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE39sql_statement_to_plan_with_context_impls_0Cs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i unwind label %bb.d, !noalias !2228

bb.d:                                             ; preds = %.noexc.i.i
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 16 dereferenceable(112) %i.b) #38
          to label %.body.i.i unwind label %bb.e, !noalias !2228

bb.e:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #35, !noalias !2228
  unreachable

_RNCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB6_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE39sql_statement_to_plan_with_context_impls_0Cs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i: ; preds = %.noexc.i.i
  invoke void @_RNvNtCs8VI8w5SIoU4_15datafusion_expr7expr_fn4cast(ptr noalias noundef nonnull sret([112 x i8]) align 16 captures(none) dereferenceable(112) %i.c, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(112) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %.noexc16.i.i unwind label %bb.b, !noalias !2218

.noexc16.i.i:                                     ; preds = %_RNCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB6_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE39sql_statement_to_plan_with_context_impls_0Cs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.val14.i.i, i64 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2228
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2228
  invoke void @_RINvMsC_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_4Expr5aliasRNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([112 x i8]) align 16 captures(none) dereferenceable(112) %i.d, ptr noalias noundef nonnull readonly align 16 captures(none) dereferenceable(112) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.p)
          to label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldTRINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEBV_ENtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruNCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB38_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE39sql_statement_to_plan_with_context_impls_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB2h_NCINvMsj_NtB11_3vecINtB7k_3VecB2h_E14extend_trustedINtB4_3MapINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterBW_EB8q_EB31_EE0E0E0Cs2VbMhdeEr66_16delta_benchmarks.exit.i.i unwind label %bb.b, !noalias !2218

_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldTRINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEBV_ENtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruNCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB38_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE39sql_statement_to_plan_with_context_impls_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB2h_NCINvMsj_NtB11_3vecINtB7k_3VecB2h_E14extend_trustedINtB4_3MapINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterBW_EB8q_EB31_EE0E0E0Cs2VbMhdeEr66_16delta_benchmarks.exit.i.i: ; preds = %.noexc16.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2228
  %i.q = getelementptr inbounds nuw [112 x i8], ptr %.sroa.7.0.copyload, i64 %.val13.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.q, ptr noundef nonnull readonly align 16 dereferenceable(112) %i.d, i64 112, i1 false), !noalias !2231
  %i.r = add i64 %.val13.i.i, 1                   ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2225
  %exitcond.not.i.i = icmp eq i64 %i.h, %i.e
  br i1 %exitcond.not.i.i, label %_RINvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEBW_ENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRB1m_B3K_ENtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruNCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB4L_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE39sql_statement_to_plan_with_context_impls_0NCINvNvB2I_8for_each4callB3U_NCINvMsj_NtB1r_3vecINtB8t_3VecB3U_E14extend_trustedINtB3r_3MapBM_B4E_EE0E0E0ECs2VbMhdeEr66_16delta_benchmarks.exit, label %bb.c

_RINvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEBW_ENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRB1m_B3K_ENtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruNCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB4L_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE39sql_statement_to_plan_with_context_impls_0NCINvNvB2I_8for_each4callB3U_NCINvMsj_NtB1r_3vecINtB8t_3VecB3U_E14extend_trustedINtB3r_3MapBM_B4E_EE0E0E0ECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldTRINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEBV_ENtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruNCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB38_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE39sql_statement_to_plan_with_context_impls_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB2h_NCINvMsj_NtB11_3vecINtB7k_3VecB2h_E14extend_trustedINtB4_3MapINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterBW_EB8q_EB31_EE0E0E0Cs2VbMhdeEr66_16delta_benchmarks.exit.i.i, %bb.a
  %.val11.i.i = phi i64 [ %.sroa.54.0.copyload, %bb.a ], [ %i.r, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldTRINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEBV_ENtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruNCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB38_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE39sql_statement_to_plan_with_context_impls_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB2h_NCINvMsj_NtB11_3vecINtB7k_3VecB2h_E14extend_trustedINtB4_3MapINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterBW_EB8q_EB31_EE0E0E0Cs2VbMhdeEr66_16delta_benchmarks.exit.i.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.03.0.copyload) ]
  store i64 %.val11.i.i, ptr %.sroa.03.0.copyload, align 8, !noalias !2218
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtB8_3zip3ZipINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnEB1d_ENCINvMs_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan7builderNtB34_18LogicalPlanBuilder13join_detailedB21_B21_E0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4P_8for_each4callTINtNtBc_6result6ResultB21_NtNtB25_5error15DataFusionErrorEB5T_ENCINvNvNtB4T_7collect14default_extend18unchecked_extenderTINtB1i_3VecB5T_EB7Q_EB5S_E0E0ECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(96) %0, ptr noalias noundef align 8 dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [208 x i8], align 8               ; 4 uses
  %i.b = alloca [208 x i8], align 8               ; 7 uses
  %.sroa.616.i.i.i = alloca [96 x i8], align 8    ; 4 uses
  %.sroa.612.i.i.i = alloca [96 x i8], align 8    ; 4 uses
  %.sroa.4.i.i.i = alloca [96 x i8], align 8      ; 4 uses
  %i.c = alloca [80 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.c, ptr noundef nonnull align 8 dereferenceable(80) %0, i64 80, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !17, !align !89, !noundef !17
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !17, !align !72, !noundef !17
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2236)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2239)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2242)
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %.val15.i.i.i.i = load ptr, ptr %i.h, align 8, !alias.scope !2245, !noalias !2248, !nonnull !17, !noundef !17 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.val16.i.i.i.i = load ptr, ptr %i.i, align 8, !alias.scope !2245, !noalias !2248, !nonnull !17, !noundef !17 ; 2 uses
  %i.j = ptrtoint ptr %.val16.i.i.i.i to i64
  %i.k = ptrtoint ptr %.val15.i.i.i.i to i64
  %i.l = sub nuw i64 %i.j, %i.k
  %i.m = udiv exact i64 %i.l, 104
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 3 uses
  %.val.i.i.i.i = load ptr, ptr %i.n, align 8, !alias.scope !2245, !noalias !2248, !nonnull !17, !noundef !17 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %.val14.i.i.i.i = load ptr, ptr %i.o, align 8, !alias.scope !2245, !noalias !2248, !nonnull !17, !noundef !17 ; 2 uses
  %i.p = ptrtoint ptr %.val14.i.i.i.i to i64
  %i.q = ptrtoint ptr %.val.i.i.i.i to i64
  %i.r = sub nuw i64 %i.p, %i.q
  %i.s = udiv exact i64 %i.r, 104
  %.sroa.0.0.i.i.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.s, i64 %i.m) ; 2 uses
  %.not.i.i.i = icmp eq i64 %.sroa.0.0.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %.sroa.3.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %.sroa.020.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %bb.c

bb.b:                                             ; preds = %.noexc.i.i.i, %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs2VbMhdeEr66_16delta_benchmarks.exit7.i.i.i
  %i.t = landingpad { ptr, i32 }
          cleanup
  store ptr %i.ae, ptr %i.h, align 8
  store ptr %i.aj, ptr %i.n, align 8
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnEB1e_EECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.c) #38
          to label %common.resume.i.i.i unwind label %bb.i, !noalias !2253

bb.c:                                             ; preds = %bb.h, %.lr.ph.i.i.i
  %i.u = phi ptr [ %.val.i.i.i.i, %.lr.ph.i.i.i ], [ %i.aj, %bb.h ]
  %i.v = phi ptr [ %.val15.i.i.i.i, %.lr.ph.i.i.i ], [ %i.ae, %bb.h ]
  %i.w = phi ptr [ %.val.i.i.i.i, %.lr.ph.i.i.i ], [ %i.ak, %bb.h ] ; 5 uses
  %i.x = phi ptr [ %.val15.i.i.i.i, %.lr.ph.i.i.i ], [ %i.af, %bb.h ] ; 5 uses
  %.sroa.01.021.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.y, %bb.h ]
  %i.y = add nuw nsw i64 %.sroa.01.021.i.i.i, 1   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.612.i.i.i)
  %i.z = icmp eq ptr %i.x, %.val16.i.i.i.i
  br i1 %i.z, label %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 104 ; 2 uses
  %.sroa.010.0.copyload11.i.i.i = load i64, ptr %i.x, align 8, !noalias !2254
  %.sroa.612.0..sroa_idx13.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.612.i.i.i, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.612.0..sroa_idx13.i.i.i, i64 96, i1 false), !noalias !2254
  br label %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i

._crit_edge.i.i.i.loopexit:                       ; preds = %bb.h
  store ptr %i.ae, ptr %i.h, align 8
  store ptr %i.aj, ptr %i.n, align 8
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.i.i.i.loopexit, %bb.a
  invoke void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.c)
          to label %_RINvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnEBW_ENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTB1K_B1K_ETINtNtBb_6result6ResultB1K_NtNtB1O_5error15DataFusionErrorEB3Q_EuNCINvMs_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan7builderNtB50_18LogicalPlanBuilder13join_detailedB1K_B1K_E0NCINvNvB2E_8for_each4callB3P_NCINvNvNtB2I_7collect14default_extend18unchecked_extenderTINtB11_3VecB3Q_EB89_EB3P_E0E0E0ECs2VbMhdeEr66_16delta_benchmarks.exit unwind label %bb.e, !noalias !2253

bb.e:                                             ; preds = %._crit_edge.i.i.i
  %i.ab = landingpad { ptr, i32 }
          cleanup
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  invoke void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ac)
          to label %common.resume.i.i.i unwind label %bb.f, !noalias !2253

bb.f:                                             ; preds = %bb.e
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #35, !noalias !2253
  unreachable

common.resume.i.i.i:                              ; preds = %bb.e, %bb.b
  %common.resume.op.i.i.i = phi { ptr, i32 } [ %i.ab, %bb.e ], [ %i.t, %bb.b ]
  resume { ptr, i32 } %common.resume.op.i.i.i

_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i: ; preds = %bb.d, %bb.c
  %i.ae = phi ptr [ %i.aa, %bb.d ], [ %i.v, %bb.c ] ; 3 uses
  %i.af = phi ptr [ %i.aa, %bb.d ], [ %i.x, %bb.c ]
  %.sroa.010.0.i.i.i = phi i64 [ %.sroa.010.0.copyload11.i.i.i, %bb.d ], [ 4, %bb.c ] ; 2 uses
  %i.ag = icmp ne i64 %.sroa.010.0.i.i.i, 4
  call void @llvm.assume(i1 %i.ag)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.4.i.i.i, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.612.i.i.i, i64 96, i1 false), !noalias !2257
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.612.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.616.i.i.i)
  %i.ah = icmp eq ptr %i.w, %.val14.i.i.i.i
  br i1 %i.ah, label %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs2VbMhdeEr66_16delta_benchmarks.exit7.i.i.i, label %bb.g

bb.g:                                             ; preds = %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.w, i64 104 ; 2 uses
  %.sroa.014.0.copyload15.i.i.i = load i64, ptr %i.w, align 8, !noalias !2258
  %.sroa.616.0..sroa_idx17.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.616.i.i.i, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.616.0..sroa_idx17.i.i.i, i64 96, i1 false), !noalias !2258
  br label %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs2VbMhdeEr66_16delta_benchmarks.exit7.i.i.i

_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs2VbMhdeEr66_16delta_benchmarks.exit7.i.i.i: ; preds = %bb.g, %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i
  %i.aj = phi ptr [ %i.ai, %bb.g ], [ %i.u, %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i ] ; 3 uses
  %i.ak = phi ptr [ %i.ai, %bb.g ], [ %i.w, %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i ]
  %.sroa.014.0.i.i.i = phi i64 [ %.sroa.014.0.copyload15.i.i.i, %bb.g ], [ 4, %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i ] ; 2 uses
  %i.al = icmp ne i64 %.sroa.014.0.i.i.i, 4
  call void @llvm.assume(i1 %i.al)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2257
end_hunk_2
begin_hunk_3_@_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtCs4lawaffTVVK_9sqlparser3ast3ddl11IndexColumnENCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB2k_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE29get_constraint_column_indices0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEB5f_8try_folduNCINvNvB5f_12try_for_each4calljINtNtNtBc_3ops12control_flow11ControlFlowjENcNtB8Z_5Break0E0B8Z_E0IB90_B8Z_EECs2VbMhdeEr66_16delta_benchmarks:bb.a
  store i64 %i.cd, ptr %i.k, align 8, !noalias !3253
  %.sroa.413.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.cg, ptr %.sroa.413.0..sroa_idx.i.i.i, align 8, !noalias !3253
  %.sroa.514.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i64 0, ptr %.sroa.514.0..sroa_idx.i.i.i, align 8, !noalias !3253
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !3253
  store ptr %i.m, ptr %i.j, align 8, !noalias !3253
  %.sroa.418.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr @_RNvXsq_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.418.0..sroa_idx.i.i.i, align 8, !noalias !3253
  %i.ch = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr %i.k, ptr %i.ch, align 8, !noalias !3253
  %.sroa.422.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store ptr @_RNvXsq_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.422.0..sroa_idx.i.i.i, align 8, !noalias !3253
  invoke void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.n, ptr noundef nonnull @147, ptr noundef nonnull %i.j)
          to label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i unwind label %bb.aa, !noalias !3256

bb.aa:                                            ; preds = %bb.z
  %i.ci = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k) #38
          to label %.body37.i.i.i unwind label %bb.v, !noalias !3256

_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i: ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !3253
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i unwind label %bb.ab, !noalias !3256

bb.ab:                                            ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i
  %i.cj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %.body37.i.i.i unwind label %bb.ac, !noalias !3256

bb.ac:                                            ; preds = %bb.ab
  %i.ck = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #35, !noalias !3256
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i: ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit40.i.i.i unwind label %bb.w, !noalias !3256

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit40.i.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !3253
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_RNCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB6_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE29get_constraint_column_indices0Cs2VbMhdeEr66_16delta_benchmarks.exit.thread.i.i unwind label %bb.ad, !noalias !3256

bb.ad:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit40.i.i.i
  %i.cl = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %common.resume.i.i unwind label %bb.ae, !noalias !3256

bb.ae:                                            ; preds = %bb.ad
  %i.cm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #35, !noalias !3256
  unreachable

_RNCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB6_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE29get_constraint_column_indices0Cs2VbMhdeEr66_16delta_benchmarks.exit.thread.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit40.i.i.i
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m), !noalias !3256
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !3253
  %.sroa.52.8.copyload.i.i = load i64, ptr %i.n, align 8, !noalias !3270
  %.sroa.9.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.8..sroa_idx.i.i, i64 16, i1 false), !noalias !3270
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !3253
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !3252
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9.i.i, i64 24, i1 false), !noalias !3252
  br label %bb.ag

bb.af:                                            ; preds = %bb.y
  unreachable

_RNCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB6_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE29get_constraint_column_indices0Cs2VbMhdeEr66_16delta_benchmarks.exit.i.i: ; preds = %bb.s
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i), !noalias !3256
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !3253
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !3253
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !3252
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9.i.i, i64 24, i1 false), !noalias !3252
  br i1 %.not.i.i.i.i, label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldRNtNtNtCs4lawaffTVVK_9sqlparser3ast3ddl11IndexColumnINtNtBa_6result6ResultjNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3d_jEENCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB46_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE29get_constraint_column_indices0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB3Z_EIB1Q_NtNtBa_7convert10InfallibleB2c_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB8P_12try_for_each4calljB3R_NcNtB3R_5Break0E0B3R_E0E0Cs2VbMhdeEr66_16delta_benchmarks.exit.i, label %bb.ag

bb.ag:                                            ; preds = %_RNCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB6_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE29get_constraint_column_indices0Cs2VbMhdeEr66_16delta_benchmarks.exit.i.i, %_RNCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB6_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE29get_constraint_column_indices0Cs2VbMhdeEr66_16delta_benchmarks.exit.thread.i.i
  %.sroa.52.19.i.i = phi i64 [ %.sroa.52.8.copyload.i.i, %_RNCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB6_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE29get_constraint_column_indices0Cs2VbMhdeEr66_16delta_benchmarks.exit.thread.i.i ], [ %.sroa.52.0.i.i, %_RNCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB6_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE29get_constraint_column_indices0Cs2VbMhdeEr66_16delta_benchmarks.exit.i.i ] ; 2 uses
  %.sroa.01.08.i.i = phi i64 [ 7, %_RNCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB6_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE29get_constraint_column_indices0Cs2VbMhdeEr66_16delta_benchmarks.exit.thread.i.i ], [ %storemerge.i.i.i, %_RNCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB6_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE29get_constraint_column_indices0Cs2VbMhdeEr66_16delta_benchmarks.exit.i.i ] ; 2 uses
  %i.cn = load i64, ptr %2, align 8, !range !34, !alias.scope !3271, !noalias !3274, !noundef !17
  %i.co = icmp eq i64 %i.cn, 20
  br i1 %i.co, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(40) %2)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i unwind label %bb.ai, !noalias !3277

bb.ai:                                            ; preds = %bb.ah
  %i.cp = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.01.08.i.i, ptr %2, align 8, !noalias !3274
  %.sroa.5.0..8.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %.sroa.52.19.i.i, ptr %.sroa.5.0..8.val.sroa_idx.i.i.i, align 8, !noalias !3274
  %.sroa.610.0..8.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.610.0..8.val.sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.i.i, i64 24, i1 false), !noalias !3252
  br label %common.resume.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i: ; preds = %bb.ah, %bb.ag
  store i64 %.sroa.01.08.i.i, ptr %2, align 8, !noalias !3274
  %.sroa.5.0..8.val.sroa_idx8.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %.sroa.52.19.i.i, ptr %.sroa.5.0..8.val.sroa_idx8.i.i.i, align 8, !noalias !3274
  %.sroa.610.0..8.val.sroa_idx11.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.610.0..8.val.sroa_idx11.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.i.i, i64 24, i1 false), !noalias !3252
  br label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldRNtNtNtCs4lawaffTVVK_9sqlparser3ast3ddl11IndexColumnINtNtBa_6result6ResultjNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3d_jEENCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB46_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE29get_constraint_column_indices0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB3Z_EIB1Q_NtNtBa_7convert10InfallibleB2c_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB8P_12try_for_each4calljB3R_NcNtB3R_5Break0E0B3R_E0E0Cs2VbMhdeEr66_16delta_benchmarks.exit.i

_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldRNtNtNtCs4lawaffTVVK_9sqlparser3ast3ddl11IndexColumnINtNtBa_6result6ResultjNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3d_jEENCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB46_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE29get_constraint_column_indices0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB3Z_EIB1Q_NtNtBa_7convert10InfallibleB2c_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB8P_12try_for_each4calljB3R_NcNtB3R_5Break0E0B3R_E0E0Cs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i, %_RNCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB6_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE29get_constraint_column_indices0Cs2VbMhdeEr66_16delta_benchmarks.exit.i.i
  %.sroa.4.1.i.i.i = phi i64 [ undef, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i ], [ %.sroa.52.0.i.i, %_RNCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB6_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE29get_constraint_column_indices0Cs2VbMhdeEr66_16delta_benchmarks.exit.i.i ]
  %.sroa.0.1.i.i.i = phi i64 [ 0, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i ], [ 1, %_RNCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB6_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE29get_constraint_column_indices0Cs2VbMhdeEr66_16delta_benchmarks.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i)
  br label %_RINvYINtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterNtNtNtCs4lawaffTVVK_9sqlparser3ast3ddl11IndexColumnENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1F_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultjNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB4u_jEENCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB5n_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE29get_constraint_column_indices0NCINvXB2v_INtB2v_12GenericShuntINtB2t_3MapB3_B5g_EIB37_NtNtBa_7convert10InfallibleB3t_EEB1z_8try_folduNCINvNvB1z_12try_for_each4calljB58_NcNtB58_5Break0E0B58_E0E0B4t_ECs2VbMhdeEr66_16delta_benchmarks.exit

_RINvYINtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterNtNtNtCs4lawaffTVVK_9sqlparser3ast3ddl11IndexColumnENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1F_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultjNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB4u_jEENCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB5n_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE29get_constraint_column_indices0NCINvXB2v_INtB2v_12GenericShuntINtB2t_3MapB3_B5g_EIB37_NtNtBa_7convert10InfallibleB3t_EEB1z_8try_folduNCINvNvB1z_12try_for_each4calljB58_NcNtB58_5Break0E0B58_E0E0B4t_ECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.a, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldRNtNtNtCs4lawaffTVVK_9sqlparser3ast3ddl11IndexColumnINtNtBa_6result6ResultjNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3d_jEENCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB46_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE29get_constraint_column_indices0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB3Z_EIB1Q_NtNtBa_7convert10InfallibleB2c_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB8P_12try_for_each4calljB3R_NcNtB3R_5Break0E0B3R_E0E0Cs2VbMhdeEr66_16delta_benchmarks.exit.i
  %.sroa.3.0.i = phi i64 [ %.sroa.4.1.i.i.i, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldRNtNtNtCs4lawaffTVVK_9sqlparser3ast3ddl11IndexColumnINtNtBa_6result6ResultjNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3d_jEENCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB46_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE29get_constraint_column_indices0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB3Z_EIB1Q_NtNtBa_7convert10InfallibleB2c_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB8P_12try_for_each4calljB3R_NcNtB3R_5Break0E0B3R_E0E0Cs2VbMhdeEr66_16delta_benchmarks.exit.i ], [ undef, %bb.a ]
  %.sroa.0.0.i = phi i64 [ %.sroa.0.1.i.i.i, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldRNtNtNtCs4lawaffTVVK_9sqlparser3ast3ddl11IndexColumnINtNtBa_6result6ResultjNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3d_jEENCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB46_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE29get_constraint_column_indices0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB3Z_EIB1Q_NtNtBa_7convert10InfallibleB2c_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB8P_12try_for_each4calljB3R_NcNtB3R_5Break0E0B3R_E0E0Cs2VbMhdeEr66_16delta_benchmarks.exit.i ], [ 2, %bb.a ]
  %i.cq = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.i, 0
  %i.cr = insertvalue { i64, i64 } %i.cq, i64 %.sroa.3.0.i, 1
  ret { i64, i64 } %i.cr
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtCs4lawaffTVVK_9sqlparser3ast3ddl15TableConstraintENCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB2o_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE37new_constraint_from_table_constraints0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEB5r_8try_folduNCINvNvB5r_12try_for_each4callNtNtB7w_23functional_dependencies10ConstraintINtNtNtBc_3ops12control_flow11ControlFlowB9a_ENcNtB9T_5Break0E0B9T_E0IB9U_B9T_EECs2VbMhdeEr66_16delta_benchmarks(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef nonnull readnone captures(none) %2, ptr noalias noundef align 8 dereferenceable(40) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [32 x i8], align 8                ; 7 uses
  %i.j = alloca [24 x i8], align 8                ; 10 uses
  %i.k = alloca [24 x i8], align 8                ; 10 uses
  %i.l = alloca [24 x i8], align 16               ; 6 uses
  %i.m = alloca [32 x i8], align 8                ; 7 uses
  %i.n = alloca [24 x i8], align 8                ; 10 uses
  %i.o = alloca [24 x i8], align 8                ; 10 uses
  %i.p = alloca [24 x i8], align 16               ; 6 uses
  %i.q = alloca [32 x i8], align 8                ; 7 uses
  %i.r = alloca [24 x i8], align 8                ; 10 uses
  %i.s = alloca [24 x i8], align 8                ; 10 uses
  %i.t = alloca [24 x i8], align 16               ; 6 uses
  %i.u = alloca [32 x i8], align 8                ; 7 uses
  %i.v = alloca [24 x i8], align 8                ; 10 uses
  %i.w = alloca [24 x i8], align 8                ; 10 uses
  %i.x = alloca [24 x i8], align 16               ; 6 uses
  %i.y = alloca [40 x i8], align 8                ; 8 uses
  %i.z = alloca [40 x i8], align 8                ; 8 uses
  %i.aa = alloca [16 x i8], align 8               ; 5 uses
  %i.ab = alloca [24 x i8], align 8               ; 13 uses
  %i.ac = alloca [8 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3278)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3281)
  %i.ad = load ptr, ptr %1, align 8, !alias.scope !3283, !noalias !3278, !nonnull !17, !noundef !17 ; 8 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !alias.scope !3283, !noalias !3278, !nonnull !17, !noundef !17
  %i.ag = icmp eq ptr %i.ad, %i.af
  br i1 %i.ag, label %bb.bo, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 248
  store ptr %i.ai, ptr %1, align 8, !alias.scope !3283, !noalias !3278
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3286)
  %.val.i.i = load ptr, ptr %i.ah, align 8, !noalias !3289 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val2.i.i = load ptr, ptr %i.aj, align 8, !noalias !3289 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3291)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !3289
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !3289
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !3289
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !3289
  %i.ak = load i8, ptr %i.ad, align 8, !range !1042, !alias.scope !3294, !noalias !3295, !noundef !17
  switch i8 %i.ak, label %default.unreachable [
    i8 0, label %bb.c
    i8 1, label %bb.d
    i8 2, label %.split125.i.i.i
    i8 3, label %.split129.i.i.i
    i8 4, label %.split133.i.i.i
    i8 5, label %.split137.i.i.i
  ]

default.unreachable:                              ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.al = getelementptr inbounds nuw i8, ptr %i.ad, i64 72 ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !range !67, !alias.scope !3294, !noalias !3295, !noundef !17
  %.not145.not.i.i.i = icmp eq i64 %i.am, -9223372036854775808 ; 4 uses
  br i1 %.not145.not.i.i.i, label %bb.i, label %.split.i.i.i

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !3297
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i.i) ]
  %i.an = getelementptr inbounds nuw i8, ptr %i.ad, i64 208
  %i.ao = load ptr, ptr %i.an, align 8, !alias.scope !3294, !noalias !3295, !nonnull !17, !noundef !17
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ad, i64 216
  %i.aq = load i64, ptr %i.ap, align 8, !alias.scope !3294, !noalias !3295, !noundef !17
  call void @_RNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB4_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE29get_constraint_column_indicesCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.y, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.val.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val2.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.ao, i64 noundef %i.aq, ptr noalias noundef nonnull readonly captures(address, read_provenance) @157, i64 noundef 11), !noalias !3297
  %i.ar = load i64, ptr %i.y, align 8, !range !34, !noalias !3297, !noundef !17 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.ar, 20
  %i.as = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.at = load <2 x i64>, ptr %i.as, align 8, !noalias !3297 ; 3 uses
  %.sroa.611.i.sroa.9.0..sroa_idx40.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %.sroa.611.i.sroa.9.0.copyload41.i.i = load i64, ptr %.sroa.611.i.sroa.9.0..sroa_idx40.i.i, align 8, !noalias !3297 ; 2 uses
  br i1 %.not.i.i.i, label %bb.y, label %bb.x

.split125.i.i.i:                                  ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !3297
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !3298
  call void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef range(i64 0, -9223372036854775808) 51, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !3298
  %i.au = load i64, ptr %i.d, align 8, !range !446, !noalias !3298, !noundef !17
  %i.av = trunc nuw i64 %i.au to i1
  %i.aw = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !range !67, !noalias !3298, !noundef !17 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  br i1 %i.av, label %bb.e, label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i, !prof !28

bb.e:                                             ; preds = %.split125.i.i.i
  %i.az = load i64, ptr %i.ay, align 8, !noalias !3298
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.ax, i64 %i.az) #37, !noalias !3298
  unreachable

_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i: ; preds = %.split125.i.i.i
  %i.ba = load ptr, ptr %i.ay, align 8, !noalias !3298, !nonnull !17, !noundef !17 ; 2 uses
  %i.bb = icmp ugt i64 %i.ax, 50
  tail call void @llvm.assume(i1 %i.bb)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3298
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(51) %i.ba, ptr noundef nonnull readonly align 1 dereferenceable(51) @158, i64 range(i64 0, -9223372036854775808) 51, i1 false), !noalias !3311
  store i64 %i.ax, ptr %i.w, align 8, !noalias !3297
  %.sroa.44.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr %i.ba, ptr %.sroa.44.0..sroa_idx.i.i.i, align 8, !noalias !3297
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store i64 51, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !3297
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !3297
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !3297
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, i64 noundef 0, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.aa unwind label %bb.z, !noalias !3297

.split129.i.i.i:                                  ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !3297
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3312
  call void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef range(i64 0, -9223372036854775808) 45, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !3312
  %i.bc = load i64, ptr %i.c, align 8, !range !446, !noalias !3312, !noundef !17
  %i.bd = trunc nuw i64 %i.bc to i1
  %i.be = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.bf = load i64, ptr %i.be, align 8, !range !67, !noalias !3312, !noundef !17 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.bd, label %bb.f, label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs2VbMhdeEr66_16delta_benchmarks.exit168.i.i.i, !prof !28

bb.f:                                             ; preds = %.split129.i.i.i
  %i.bh = load i64, ptr %i.bg, align 8, !noalias !3312
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.bf, i64 %i.bh) #37, !noalias !3312
  unreachable

_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs2VbMhdeEr66_16delta_benchmarks.exit168.i.i.i: ; preds = %.split129.i.i.i
  %i.bi = load ptr, ptr %i.bg, align 8, !noalias !3312, !nonnull !17, !noundef !17 ; 2 uses
  %i.bj = icmp ugt i64 %i.bf, 44
  tail call void @llvm.assume(i1 %i.bj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3312
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(45) %i.bi, ptr noundef nonnull readonly align 1 dereferenceable(45) @159, i64 range(i64 0, -9223372036854775808) 45, i1 false), !noalias !3325
  store i64 %i.bf, ptr %i.s, align 8, !noalias !3297
  %.sroa.410.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %i.bi, ptr %.sroa.410.0..sroa_idx.i.i.i, align 8, !noalias !3297
  %.sroa.511.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store i64 45, ptr %.sroa.511.0..sroa_idx.i.i.i, align 8, !noalias !3297
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !3297
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !3297
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, i64 noundef 0, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.ak unwind label %bb.aj, !noalias !3297

.split133.i.i.i:                                  ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !3297
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3326
  call void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef range(i64 0, -9223372036854775808) 35, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !3326
  %i.bk = load i64, ptr %i.b, align 8, !range !446, !noalias !3326, !noundef !17
  %i.bl = trunc nuw i64 %i.bk to i1
  %i.bm = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.bn = load i64, ptr %i.bm, align 8, !range !67, !noalias !3326, !noundef !17 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.bl, label %bb.g, label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs2VbMhdeEr66_16delta_benchmarks.exit171.i.i.i, !prof !28

bb.g:                                             ; preds = %.split133.i.i.i
  %i.bp = load i64, ptr %i.bo, align 8, !noalias !3326
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.bn, i64 %i.bp) #37, !noalias !3326
  unreachable

_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs2VbMhdeEr66_16delta_benchmarks.exit171.i.i.i: ; preds = %.split133.i.i.i
  %i.bq = load ptr, ptr %i.bo, align 8, !noalias !3326, !nonnull !17, !noundef !17 ; 2 uses
  %i.br = icmp ugt i64 %i.bn, 34
  tail call void @llvm.assume(i1 %i.br)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3326
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(35) %i.bq, ptr noundef nonnull readonly align 1 dereferenceable(35) @160, i64 range(i64 0, -9223372036854775808) 35, i1 false), !noalias !3339
  store i64 %i.bn, ptr %i.o, align 8, !noalias !3297
  %.sroa.417.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %i.bq, ptr %.sroa.417.0..sroa_idx.i.i.i, align 8, !noalias !3297
  %.sroa.518.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 35, ptr %.sroa.518.0..sroa_idx.i.i.i, align 8, !noalias !3297
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !3297
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !3297
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, i64 noundef 0, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.at unwind label %bb.as, !noalias !3297

.split137.i.i.i:                                  ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !3297
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3340
  call void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, -9223372036854775808) 35, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !3340
  %i.bs = load i64, ptr %i.a, align 8, !range !446, !noalias !3340, !noundef !17
  %i.bt = trunc nuw i64 %i.bs to i1
  %i.bu = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.bv = load i64, ptr %i.bu, align 8, !range !67, !noalias !3340, !noundef !17 ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.bt, label %bb.h, label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs2VbMhdeEr66_16delta_benchmarks.exit174.i.i.i, !prof !28

bb.h:                                             ; preds = %.split137.i.i.i
  %i.bx = load i64, ptr %i.bw, align 8, !noalias !3340
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.bv, i64 %i.bx) #37, !noalias !3340
  unreachable

_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs2VbMhdeEr66_16delta_benchmarks.exit174.i.i.i: ; preds = %.split137.i.i.i
  %i.by = load ptr, ptr %i.bw, align 8, !noalias !3340, !nonnull !17, !noundef !17 ; 2 uses
  %i.bz = icmp ugt i64 %i.bv, 34
  tail call void @llvm.assume(i1 %i.bz)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3340
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(35) %i.by, ptr noundef nonnull readonly align 1 dereferenceable(35) @160, i64 range(i64 0, -9223372036854775808) 35, i1 false), !noalias !3353
  store i64 %i.bv, ptr %i.k, align 8, !noalias !3297
  %.sroa.424.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.by, ptr %.sroa.424.0..sroa_idx.i.i.i, align 8, !noalias !3297
  %.sroa.525.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i64 35, ptr %.sroa.525.0..sroa_idx.i.i.i, align 8, !noalias !3297
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !3297
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !3297
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, i64 noundef 0, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.bc unwind label %bb.bb, !noalias !3297

.split.i.i.i:                                     ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !3297
  store ptr %i.al, ptr %i.ac, align 8, !noalias !3297
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !3297
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !3297
  store ptr %i.ac, ptr %i.aa, align 8, !noalias !3297
  %.sroa.439.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtRNtNtCs4lawaffTVVK_9sqlparser3ast5IdentNtB6_7Display3fmtCs2VbMhdeEr66_16delta_benchmarks, ptr %.sroa.439.0..sroa_idx.i.i.i, align 8, !noalias !3297
  call void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ab, ptr noundef nonnull @156, ptr noundef nonnull %i.aa), !noalias !3295
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !3297
  %i.ca = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !noalias !3297, !nonnull !17, !noundef !17
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.cd = load i64, ptr %i.cc, align 8, !noalias !3297, !noundef !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !3297
  br label %bb.i

bb.i:                                             ; preds = %.split.i.i.i, %bb.c
  %.sroa.3.0.i.i.i = phi i64 [ %i.cd, %.split.i.i.i ], [ 17, %bb.c ]
  %.sroa.0.0.i.i.i = phi ptr [ %i.cb, %.split.i.i.i ], [ @155, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !3297
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i.i) ]
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ad, i64 208
  %i.cf = load ptr, ptr %i.ce, align 8, !alias.scope !3294, !noalias !3295, !nonnull !17, !noundef !17
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ad, i64 216
  %i.ch = load i64, ptr %i.cg, align 8, !alias.scope !3294, !noalias !3295, !noundef !17
  invoke void @_RNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB4_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE29get_constraint_column_indicesCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.z, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.val.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val2.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.cf, i64 noundef %i.ch, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i.i.i, i64 noundef %.sroa.3.0.i.i.i)
          to label %bb.k unwind label %bb.j, !noalias !3295

bb.j:                                             ; preds = %bb.i
  %i.ci = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %.not145.not.i.i.i, label %common.resume.i.i, label %bb.v

bb.k:                                             ; preds = %bb.i
  %i.cj = load i64, ptr %i.z, align 8, !range !34, !noalias !3297, !noundef !17 ; 2 uses
  %.not148.i.i.i = icmp eq i64 %i.cj, 20
  %i.ck = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.cl = load <2 x i64>, ptr %i.ck, align 8, !noalias !3297 ; 3 uses
  %.sroa.6.i.sroa.8.0..sroa_idx19.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %.sroa.6.i.sroa.8.0.copyload20.i.i = load i64, ptr %.sroa.6.i.sroa.8.0..sroa_idx19.i.i, align 8, !noalias !3297 ; 2 uses
  br i1 %.not148.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.sroa.646.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %.sroa.646.0.copyload.i.i.i = load i64, ptr %.sroa.646.0..sroa_idx.i.i.i, align 8, !noalias !3297
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !3297
  br i1 %.not145.not.i.i.i, label %bb.r, label %bb.s

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !3297
  br i1 %.not145.not.i.i.i, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !3297
  %i.cm = extractelement <2 x i64> %i.cl, i64 0
  %i.cn = extractelement <2 x i64> %i.cl, i64 1
  br label %bb.bm

bb.o:                                             ; preds = %bb.m
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ab)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i unwind label %bb.p, !noalias !3295

bb.p:                                             ; preds = %bb.o
  %i.co = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ab)
          to label %common.resume.i.i unwind label %bb.q, !noalias !3295

bb.q:                                             ; preds = %bb.p
  %i.cp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #35, !noalias !3295
  unreachable

common.resume.i.i:                                ; preds = %bb.bn, %bb.bi, %.body204.i.i.i, %bb.az, %.body195.i.i.i, %bb.aq, %.body186.i.i.i, %bb.ag, %.body.i.i.i, %bb.v, %bb.t, %bb.p, %bb.j
  %common.resume.op.i.i = phi { ptr, i32 } [ %i.fg, %bb.bn ], [ %i.el, %bb.az ], [ %i.co, %bb.p ], [ %i.cq, %bb.t ], [ %.pn.i.i.i, %.body204.i.i.i ], [ %i.dh, %bb.ag ], [ %i.dw, %bb.aq ], [ %i.ci, %bb.v ], [ %i.ci, %bb.j ], [ %.pn143.i.i.i, %.body.i.i.i ], [ %.pn141.i.i.i, %.body186.i.i.i ], [ %.pn139.i.i.i, %.body195.i.i.i ], [ %i.fa, %bb.bi ]
  resume { ptr, i32 } %common.resume.op.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i: ; preds = %bb.o
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ab), !noalias !3295
  br label %bb.n

bb.r:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit176.i.i.i, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !3297
  br label %bb.bk

bb.s:                                             ; preds = %bb.l
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ab)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit176.i.i.i unwind label %bb.t, !noalias !3295

bb.t:                                             ; preds = %bb.s
  %i.cq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ab)
          to label %common.resume.i.i unwind label %bb.u, !noalias !3295

bb.u:                                             ; preds = %bb.t
  %i.cr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #35, !noalias !3295
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit176.i.i.i: ; preds = %bb.s
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ab), !noalias !3295
  br label %bb.r

bb.v:                                             ; preds = %bb.j
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ab) #38
          to label %common.resume.i.i unwind label %bb.w, !noalias !3295

bb.w:                                             ; preds = %bb.bf, %.body204.i.i.i, %bb.aw, %.body195.i.i.i, %bb.an, %.body186.i.i.i, %bb.ad, %.body.i.i.i, %bb.v
  %i.cs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #35, !noalias !3295
  unreachable

bb.x:                                             ; preds = %bb.d
  %.sroa.655.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %.sroa.655.0.copyload.i.i.i = load i64, ptr %.sroa.655.0..sroa_idx.i.i.i, align 8, !noalias !3297
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !3297
  br label %bb.bk

bb.y:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !3297
  %i.ct = extractelement <2 x i64> %i.at, i64 0
  %i.cu = extractelement <2 x i64> %i.at, i64 1
  br label %bb.bm

.body.i.i.i:                                      ; preds = %bb.ae, %bb.ad, %bb.z
  %.pn143.i.i.i = phi { ptr, i32 } [ %i.de, %bb.ad ], [ %i.cv, %bb.z ], [ %i.df, %bb.ae ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.w) #38
          to label %common.resume.i.i unwind label %bb.w, !noalias !3297

bb.z:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i, %bb.ab, %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i
  %i.cv = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

bb.aa:                                            ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i
  %i.cw = load i64, ptr %i.h, align 8, !range !446, !noalias !3297, !noundef !17
  %i.cx = trunc nuw i64 %i.cw to i1
  %i.cy = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.cz = load i64, ptr %i.cy, align 8, !range !67, !noalias !3297, !noundef !17 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  br i1 %i.cx, label %bb.ab, label %bb.ac, !prof !28

bb.ab:                                            ; preds = %bb.aa
  %i.db = load i64, ptr %i.da, align 8, !noalias !3297
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.cz, i64 %i.db) #37
          to label %bb.ai unwind label %bb.z, !noalias !3297

bb.ac:                                            ; preds = %bb.aa
  %i.dc = load ptr, ptr %i.da, align 8, !noalias !3297, !nonnull !17, !noundef !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !3297
  store i64 %i.cz, ptr %i.v, align 8, !noalias !3297
  %.sroa.462.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr %i.dc, ptr %.sroa.462.0..sroa_idx.i.i.i, align 8, !noalias !3297
  %.sroa.563.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store i64 0, ptr %.sroa.563.0..sroa_idx.i.i.i, align 8, !noalias !3297
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !3297
  store ptr %i.w, ptr %i.u, align 8, !noalias !3297
  %.sroa.467.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr @_RNvXsq_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.467.0..sroa_idx.i.i.i, align 8, !noalias !3297
  %i.dd = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store ptr %i.v, ptr %i.dd, align 8, !noalias !3297
  %.sroa.471.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  store ptr @_RNvXsq_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.471.0..sroa_idx.i.i.i, align 8, !noalias !3297
  invoke void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.x, ptr noundef nonnull @147, ptr noundef nonnull %i.u)
          to label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs2VbMhdeEr66_16delta_benchmarks.exit177.i.i.i unwind label %bb.ad, !noalias !3297

bb.ad:                                            ; preds = %bb.ac
  %i.de = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.v) #38
          to label %.body.i.i.i unwind label %bb.w, !noalias !3297

_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs2VbMhdeEr66_16delta_benchmarks.exit177.i.i.i: ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !3297
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i unwind label %bb.ae, !noalias !3297

bb.ae:                                            ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs2VbMhdeEr66_16delta_benchmarks.exit177.i.i.i
  %i.df = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %.body.i.i.i unwind label %bb.af, !noalias !3297

bb.af:                                            ; preds = %bb.ae
  %i.dg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #35, !noalias !3297
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i: ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs2VbMhdeEr66_16delta_benchmarks.exit177.i.i.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit179.i.i.i unwind label %bb.z, !noalias !3297

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit179.i.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !3297
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit182.i.i.i unwind label %bb.ag, !noalias !3297

bb.ag:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit179.i.i.i
  %i.dh = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %common.resume.i.i unwind label %bb.ah, !noalias !3297

bb.ah:                                            ; preds = %bb.ag
  %i.di = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #35, !noalias !3297
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit182.i.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit179.i.i.i
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.w), !noalias !3297
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !3297
  %i.dj = load <2 x i64>, ptr %i.x, align 16, !noalias !3354
  %.sroa.20.sroa.11.0..sroa.20.8..sroa_idx9.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %.sroa.20.sroa.11.0.copyload29.i.i = load i64, ptr %.sroa.20.sroa.11.0..sroa.20.8..sroa_idx9.sroa_idx.i.i, align 16, !noalias !3354
  br label %bb.bk
end_hunk_3
begin_hunk_4_@_RNvXs1N_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_7SetExprNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !5945
  invoke fastcc void @_RNvXs1t_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_5QueryNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(1400) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1400) %i.o) #42
          to label %_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query5QueryENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit unwind label %bb.e, !noalias !5941, !inline_history !5948

bb.e:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.n, i64 noundef 1400, i64 noundef 8) #36, !noalias !5941, !inline_history !5944
  br label %common.resume

_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query5QueryENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1400) %i.n, ptr noundef nonnull align 8 dereferenceable(1400) %i.d, i64 1400, i1 false), !noalias !5945
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !5945
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.n, ptr %i.q, align 8
  store i8 1, ptr %0, align 8
  br label %bb.v

bb.f:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val = load i8, ptr %i.r, align 2, !range !3395, !noundef !17
  %.val1 = load i8, ptr %i.s, align 1, !range !1042, !noundef !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5949)
  %i.u = tail call noundef nonnull align 8 ptr @_RNvMs_NtCs6Po7BT7Nknu_5alloc5boxedINtB4_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query7SetExprE13new_uninit_inCs2VbMhdeEr66_16delta_benchmarks(), !noalias !5949, !inline_history !5952 ; 4 uses
  %i.v = load ptr, ptr %i.t, align 8, !alias.scope !5949, !nonnull !17, !noundef !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !5953
  invoke fastcc void @_RNvXs1N_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_7SetExprNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(2696) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(2696) %i.v) #42
          to label %_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query7SetExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit unwind label %bb.g, !noalias !5949, !inline_history !5956

bb.g:                                             ; preds = %bb.f
  %i.w = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.u, i64 noundef 2696, i64 noundef 8) #36, !noalias !5949, !inline_history !5952
  br label %common.resume

_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query7SetExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2696) %i.u, ptr noundef nonnull align 8 dereferenceable(2696) %i.c, i64 2696, i1 false), !noalias !5953
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !5953
  store ptr %i.u, ptr %i.f, align 8
  %i.y = invoke fastcc noundef nonnull align 8 ptr @_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query7SetExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.x)
          to label %bb.x unwind label %bb.w

bb.h:                                             ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5957)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5960)
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ab = load i8, ptr %i.aa, align 8, !range !2603, !alias.scope !5960, !noalias !5957, !noundef !17
  call void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecIBw_NtNtCs4lawaffTVVK_9sqlparser3ast4ExprEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(32) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.z)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i8 %i.ab, ptr %i.ac, align 8, !alias.scope !5957, !noalias !5960
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ad, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 32, i1 false)
  store i8 3, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.v

bb.i:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call fastcc void @_RNvXsc5_NtCs4lawaffTVVK_9sqlparser3astNtB6_9StatementNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(2688) %i.af, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(2688) %i.ae) #42
  store i8 4, ptr %0, align 8
  br label %bb.v

bb.j:                                             ; preds = %bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call fastcc void @_RNvXsc5_NtCs4lawaffTVVK_9sqlparser3astNtB6_9StatementNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(2688) %i.ah, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(2688) %i.ag) #42
  store i8 5, ptr %0, align 8
  br label %bb.v

bb.k:                                             ; preds = %bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call fastcc void @_RNvXsc5_NtCs4lawaffTVVK_9sqlparser3astNtB6_9StatementNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(2688) %i.aj, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(2688) %i.ai) #42
  store i8 6, ptr %0, align 8
  br label %bb.v

bb.l:                                             ; preds = %bb.a
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call fastcc void @_RNvXsc5_NtCs4lawaffTVVK_9sqlparser3astNtB6_9StatementNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(2688) %i.al, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(2688) %i.ak) #42
  store i8 7, ptr %0, align 8
  br label %bb.v

bb.m:                                             ; preds = %bb.a
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val2 = load ptr, ptr %i.am, align 8           ; 4 uses
  %i.an = tail call noundef nonnull align 8 ptr @_RNvMs_NtCs6Po7BT7Nknu_5alloc5boxedINtB4_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query5TableE13new_uninit_inCs2VbMhdeEr66_16delta_benchmarks() ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5962)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5965)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5968
  %i.ao = load i64, ptr %.val2, align 8, !range !67, !alias.scope !5970, !noalias !5971, !noundef !17
  %.not.i.i.i = icmp eq i64 %i.ao, -9223372036854775808
  br i1 %.not.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val2)
          to label %.noexc.i unwind label %bb.t

bb.o:                                             ; preds = %bb.m
  store i64 -9223372036854775808, ptr %i.b, align 8, !noalias !5968
  br label %.noexc.i

.noexc.i:                                         ; preds = %bb.o, %bb.n
  %i.ap = getelementptr inbounds nuw i8, ptr %.val2, i64 24 ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8, !range !67, !alias.scope !5970, !noalias !5971, !noundef !17
  %.not4.i.i.i = icmp eq i64 %i.aq, -9223372036854775808
  br i1 %.not4.i.i.i, label %_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query5TableENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit, label %bb.p

bb.p:                                             ; preds = %.noexc.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5968
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ap)
          to label %bb.r unwind label %bb.q, !noalias !5971

bb.q:                                             ; preds = %bb.p
  %i.ar = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(24) %i.b) #38
          to label %bb.u unwind label %bb.s, !noalias !5971

bb.r:                                             ; preds = %bb.p
  %.sroa.0.0.copyload1.i.i.i = load i64, ptr %i.a, align 8, !noalias !5968
  %.sroa.5.0..sroa_idx2.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx2.i.i.i, i64 16, i1 false), !noalias !5962
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5968
  br label %_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query5TableENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit

bb.s:                                             ; preds = %bb.q
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #35, !noalias !5971
  unreachable

bb.t:                                             ; preds = %bb.n
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.q
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.at, %bb.t ], [ %i.ar, %bb.q ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.an, i64 noundef 48, i64 noundef 8) #36
  br label %common.resume

_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query5TableENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %.noexc.i, %bb.r
  %.sroa.0.0.i.i.i = phi i64 [ %.sroa.0.0.copyload1.i.i.i, %bb.r ], [ -9223372036854775808, %.noexc.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !5970
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5968
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.an, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i.i, i64 24, i1 false), !noalias !5962
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  store i64 %.sroa.0.0.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !5962
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i.i, i64 16, i1 false), !noalias !5962
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i)
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.an, ptr %i.au, align 8
  store i8 8, ptr %0, align 8
  br label %bb.v

bb.v:                                             ; preds = %bb.x, %_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query5TableENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query5QueryENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit, %_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query6SelectENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit
  ret void

bb.w:                                             ; preds = %_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query7SetExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit
  %i.av = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query7SetExprEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(8) %i.f) #38
          to label %common.resume unwind label %bb.y

bb.x:                                             ; preds = %_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query7SetExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %.val, ptr %i.aw, align 2
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.val1, ptr %i.ax, align 1
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.u, ptr %i.ay, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.y, ptr %i.az, align 8
  store i8 2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.v

bb.y:                                             ; preds = %bb.w
  %i.ba = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #35
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXs1N_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_13DescribeTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr nofree readonly captures(address) %.0.val, ptr nofree readonly captures(address) %.8.val, ptr nofree readonly captures(address) %.0.val1, ptr nofree readonly captures(address) %.8.val3) unnamed_addr #5 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val1) ]
  %i.a = icmp eq ptr %.0.val, %.0.val1
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5972)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5975)
  %i.b = getelementptr inbounds nuw i8, ptr %.0.val, i64 24
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !5972, !noalias !5975, !noundef !17 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.0.val1, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !5975, !noalias !5972, !noundef !17
  %i.f = icmp eq i64 %i.c, %i.e
  br i1 %i.f, label %bb.c, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %.0.val1, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %.0.val, i64 16
  %i.i = load ptr, ptr %i.g, align 8, !alias.scope !5975, !noalias !5972, !nonnull !17, !noundef !17
  %i.j = load ptr, ptr %i.h, align 8, !alias.scope !5972, !noalias !5975, !nonnull !17, !noundef !17
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.m = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEINtB5_14SlicePartialEqBC_E17equal_same_lengthCs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull %i.k, ptr noundef nonnull %i.l, i64 noundef %i.c), !noalias !5977
  br i1 %i.m, label %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit: ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %.0.val, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %.0.val1, i64 32
  %i.p = tail call noundef zeroext i1 @_RNvXs4_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB5_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB13_ENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eqCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.o)
  br i1 %i.p, label %bb.d, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.d:                                             ; preds = %bb.a, %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val3) ]
  %i.q = icmp eq ptr %.8.val, %.8.val3
  br i1 %i.q, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %bb.e

_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit: ; preds = %bb.c, %bb.b, %bb.k, %bb.j, %bb.i, %bb.h, %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i, %bb.g, %bb.f, %bb.d, %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit
  %.sroa.0.0 = phi i1 [ false, %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit ], [ false, %bb.g ], [ true, %bb.d ], [ %i.be, %bb.k ], [ false, %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i ], [ false, %bb.h ], [ false, %bb.i ], [ false, %bb.j ], [ false, %bb.f ], [ false, %bb.b ], [ false, %bb.c ]
  ret i1 %.sroa.0.0

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5978)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5981)
  %i.r = getelementptr inbounds nuw i8, ptr %.8.val, i64 64
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !5978, !noalias !5981, !nonnull !17, !noundef !17 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.8.val3, i64 64
  %i.u = load ptr, ptr %i.t, align 8, !alias.scope !5981, !noalias !5978, !nonnull !17, !noundef !17 ; 4 uses
  %i.v = icmp eq ptr %i.s, %i.u
  br i1 %i.v, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5983)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5986)
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.x = load i64, ptr %i.w, align 8, !alias.scope !5983, !noalias !5988, !noundef !17 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.z = load i64, ptr %i.y, align 8, !alias.scope !5986, !noalias !5989, !noundef !17
  %i.aa = icmp eq i64 %i.x, %i.z
  br i1 %i.aa, label %bb.g, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.g:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.ad = load ptr, ptr %i.ab, align 8, !alias.scope !5986, !noalias !5989, !nonnull !17, !noundef !17
  %i.ae = load ptr, ptr %i.ac, align 8, !alias.scope !5983, !noalias !5988, !nonnull !17, !noundef !17
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.ah = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEINtB5_14SlicePartialEqBC_E17equal_same_lengthCs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull %i.af, ptr noundef nonnull %i.ag, i64 noundef %i.x), !noalias !5990
  br i1 %i.ah, label %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i: ; preds = %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.aj = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.ak = tail call noundef zeroext i1 @_RNvXs4_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB5_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB13_ENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eqCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ai, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.aj), !noalias !5991
  br i1 %i.ak, label %bb.h, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.h:                                             ; preds = %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i, %bb.e
  %i.al = getelementptr inbounds nuw i8, ptr %.8.val, i64 32
  %i.am = load i64, ptr %i.al, align 8, !alias.scope !5978, !noalias !5981, !noundef !17 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.8.val3, i64 32
  %i.ao = load i64, ptr %i.an, align 8, !alias.scope !5981, !noalias !5978, !noundef !17
  %i.ap = icmp eq i64 %i.am, %i.ao
  br i1 %i.ap, label %bb.i, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.i:                                             ; preds = %bb.h
  %i.aq = getelementptr inbounds nuw i8, ptr %.8.val3, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8, !alias.scope !5981, !noalias !5978, !nonnull !17, !noundef !17
  %i.as = getelementptr inbounds nuw i8, ptr %.8.val, i64 24
  %i.at = load ptr, ptr %i.as, align 8, !alias.scope !5978, !noalias !5981, !nonnull !17, !noundef !17
  %i.au = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpINtNtB9_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEINtB5_14SlicePartialEqBC_E17equal_same_lengthCs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull %i.at, ptr noundef nonnull %i.ar, i64 noundef %i.am), !noalias !5991
  br i1 %i.au, label %bb.j, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.j:                                             ; preds = %bb.i
  %i.av = getelementptr inbounds nuw i8, ptr %.8.val, i64 56
  %i.aw = load i64, ptr %i.av, align 8, !alias.scope !5978, !noalias !5981, !noundef !17 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.8.val3, i64 56
  %i.ay = load i64, ptr %i.ax, align 8, !alias.scope !5981, !noalias !5978, !noundef !17
  %i.az = icmp eq i64 %i.aw, %i.ay
  br i1 %i.az, label %bb.k, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.k:                                             ; preds = %bb.j
  %i.ba = getelementptr inbounds nuw i8, ptr %.8.val3, i64 48
  %i.bb = load ptr, ptr %i.ba, align 8, !alias.scope !5981, !noalias !5978, !nonnull !17, !noundef !17
  %i.bc = getelementptr inbounds nuw i8, ptr %.8.val, i64 48
  %i.bd = load ptr, ptr %i.bc, align 8, !alias.scope !5978, !noalias !5981, !nonnull !17, !noundef !17
  %i.be = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies20FunctionalDependenceINtB5_14SlicePartialEqBC_E17equal_same_lengthCs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull %i.bd, ptr noundef nonnull %i.bb, i64 noundef %i.aw), !noalias !5991
  br label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXs1T_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_19AlterConnectorOwnerNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(72) initializes((0, 68)) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %1) unnamed_addr #5 {
bb.a:
  %.sroa.01 = alloca [56 x i8], align 8           ; 5 uses
  %.sroa.0 = alloca [56 x i8], align 8            ; 5 uses
  %i.a = load i64, ptr %1, align 8, !range !446, !noundef !17
  %i.b = trunc nuw i64 %i.a to i1
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.01)
  call void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %.sroa.01, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.c)
  %i.g = load i32, ptr %i.d, align 8, !range !2103, !noundef !17
  %.sroa.01.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.01, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.01.24..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.f, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.01, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.01)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %.sroa.0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.c)
  %i.h = load i32, ptr %i.d, align 8, !range !2103, !noundef !17
  %.sroa.0.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.24..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.f, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink4 = phi i32 [ %i.g, %bb.b ], [ %i.h, %bb.c ]
  %.sink = phi i64 [ 1, %bb.b ], [ 0, %bb.c ]
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 %.sink4, ptr %i.i, align 8
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXs1V_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_4CastNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !17, !noundef !17
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !17, !noundef !17
  %i.e = tail call fastcc noundef zeroext i1 @_RNvXsX_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB5_4ExprNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.b, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.d) #42
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = tail call fastcc noundef zeroext i1 @_RNvXs5_NtCsfYVtenZkBsn_12arrow_schema8datatypeNtB5_8DataTypeNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #42
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi i1 [ %i.f, %bb.b ], [ false, %bb.a ]
  ret i1 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast3dmlNtB5_6InsertNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(1072) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1072) %1) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [328 x i8], align 8               ; 5 uses
  %.sroa.5.i43 = alloca [320 x i8], align 8       ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.469 = alloca [344 x i8], align 8         ; 5 uses
  %i.c = alloca [32 x i8], align 8                ; 5 uses
  %.sroa.567 = alloca [344 x i8], align 8         ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [64 x i8], align 8                ; 8 uses
  %i.g = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.5.i = alloca [16 x i8], align 8          ; 2 uses
  %i.h = alloca [24 x i8], align 8                ; 5 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [1400 x i8], align 8              ; 4 uses
  %.sroa.460 = alloca [80 x i8], align 8          ; 3 uses
  %i.k = alloca [24 x i8], align 8                ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.554 = alloca [24 x i8], align 8          ; 5 uses
  %.sroa.6.sroa.4 = alloca [344 x i8], align 8    ; 4 uses
  %i.m = alloca [24 x i8], align 8                ; 4 uses
  %i.n = alloca [64 x i8], align 8                ; 6 uses
  %i.o = alloca [24 x i8], align 8                ; 6 uses
  %i.p = alloca [48 x i8], align 8                ; 8 uses
  %i.q = alloca [24 x i8], align 8                ; 6 uses
  %i.r = alloca [384 x i8], align 8               ; 9 uses
  %i.s = alloca [24 x i8], align 8                ; 5 uses
  %i.t = alloca [24 x i8], align 8                ; 6 uses
  %i.u = alloca [24 x i8], align 8                ; 5 uses
  %i.v = alloca [24 x i8], align 8                ; 5 uses
  %i.w = alloca [64 x i8], align 8                ; 6 uses
  %i.x = alloca [328 x i8], align 8               ; 7 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 1070
  %i.z = load i8, ptr %i.y, align 2, !range !1042, !noundef !17
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 1064
  %i.ab = load i8, ptr %i.aa, align 8, !range !2603, !noundef !17
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 1065
  %i.ad = load i8, ptr %i.ac, align 1, !range !2603, !noundef !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 384 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5992)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5995)
  %i.af = load i64, ptr %i.ae, align 8, !range !180, !alias.scope !5995, !noalias !5992, !noundef !17
  %.not.i = icmp eq i64 %i.af, 6
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call fastcc void @_RNvXsin_NtCs4lawaffTVVK_9sqlparser3astNtB6_8FunctionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(328) %i.x, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.ae) #42, !noalias !17
  br label %_RNvXsyQ_NtCs4lawaffTVVK_9sqlparser3astNtB6_11TableObjectNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit

bb.c:                                             ; preds = %bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 392
  %i.ah = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  call void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ah, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ag), !noalias !17
  store i64 6, ptr %i.x, align 8, !alias.scope !5992, !noalias !5995
  br label %_RNvXsyQ_NtCs4lawaffTVVK_9sqlparser3astNtB6_11TableObjectNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit

_RNvXsyQ_NtCs4lawaffTVVK_9sqlparser3astNtB6_11TableObjectNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit: ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 784 ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8, !range !67, !noundef !17
end_hunk_4
begin_hunk_5_@_RNvXs1x_NtNtNtCs6Po7BT7Nknu_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtBc_6string6StringB18_ENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmtCs2VbMhdeEr66_16delta_benchmarks:bb.a
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [72 x i8], align 8                ; 13 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter9debug_map(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  %i.e = load ptr, ptr %0, align 8, !noundef !17  ; 3 uses
  %.not = icmp ne ptr %i.e, null                  ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load i64, ptr %i.h, align 8
  %.sroa.12.0 = select i1 %.not, i64 %i.g, i64 undef ; 2 uses
  %.sroa.8.0 = zext i1 %.not to i64               ; 2 uses
  %.sroa.13.0 = select i1 %.not, i64 %i.i, i64 0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !6386
  store i64 %.sroa.8.0, ptr %i.c, align 8, !noalias !6390
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr null, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !6390
  %.sroa.6.0..sroa_idx18 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.e, ptr %.sroa.6.0..sroa_idx18, align 8, !noalias !6390
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 %.sroa.12.0, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !6390
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i64 %.sroa.8.0, ptr %.sroa.8.0..sroa_idx, align 8, !noalias !6390
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store ptr null, ptr %.sroa.10.0..sroa_idx, align 8, !noalias !6390
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store ptr %i.e, ptr %.sroa.11.0..sroa_idx, align 8, !noalias !6390
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store i64 %.sroa.12.0, ptr %.sroa.12.0..sroa_idx, align 8, !noalias !6390
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  store i64 %.sroa.13.0, ptr %.sroa.13.0..sroa_idx, align 8, !noalias !6390
  %i.j = call fastcc { ptr, ptr } @_RNvXsk_NtNtNtCs6Po7BT7Nknu_5alloc11collections5btree3mapINtB5_4IterNtNtBb_6string6StringB13_ENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(72) %i.c), !noalias !6386 ; 2 uses
  %i.k = extractvalue { ptr, ptr } %i.j, 0        ; 2 uses
  %.not6.i = icmp eq ptr %i.k, null
  br i1 %.not6.i, label %_RINvMs6_NtNtCsbvkFyIu7lgC_4core3fmt8buildersNtB6_8DebugMap7entriesRNtNtCs6Po7BT7Nknu_5alloc6string6StringB12_INtNtNtNtB17_11collections5btree3map4IterB13_B13_EECs2VbMhdeEr66_16delta_benchmarks.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %i.l = phi ptr [ %i.q, %.lr.ph.i ], [ %i.k, %bb.a ]
  %i.m = phi { ptr, ptr } [ %i.p, %.lr.ph.i ], [ %i.j, %bb.a ]
  %i.n = extractvalue { ptr, ptr } %i.m, 1        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !6386
  store ptr %i.l, ptr %i.b, align 8, !noalias !6386
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6386
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.n) ]
  store ptr %i.n, ptr %i.a, align 8, !noalias !6386
  %i.o = call noundef nonnull align 8 ptr @_RNvMs6_NtNtCsbvkFyIu7lgC_4core3fmt8buildersNtB5_8DebugMap5entry(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @58, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @58), !noalias !6391 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6386
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6386
  %i.p = call fastcc { ptr, ptr } @_RNvXsk_NtNtNtCs6Po7BT7Nknu_5alloc11collections5btree3mapINtB5_4IterNtNtBb_6string6StringB13_ENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(72) %i.c), !noalias !6391 ; 2 uses
  %i.q = extractvalue { ptr, ptr } %i.p, 0        ; 2 uses
  %.not.i = icmp eq ptr %i.q, null
  br i1 %.not.i, label %_RINvMs6_NtNtCsbvkFyIu7lgC_4core3fmt8buildersNtB6_8DebugMap7entriesRNtNtCs6Po7BT7Nknu_5alloc6string6StringB12_INtNtNtNtB17_11collections5btree3map4IterB13_B13_EECs2VbMhdeEr66_16delta_benchmarks.exit, label %.lr.ph.i

_RINvMs6_NtNtCsbvkFyIu7lgC_4core3fmt8buildersNtB6_8DebugMap7entriesRNtNtCs6Po7BT7Nknu_5alloc6string6StringB12_INtNtNtNtB17_11collections5btree3map4IterB13_B13_EECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %.lr.ph.i, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !6386
  %i.r = call noundef zeroext i1 @_RNvMs6_NtNtCsbvkFyIu7lgC_4core3fmt8buildersNtB5_8DebugMap6finish(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret i1 %i.r
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXs22_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_7TryCastNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !17, !noundef !17
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !17, !noundef !17
  %i.e = tail call fastcc noundef zeroext i1 @_RNvXsX_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB5_4ExprNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.b, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.d) #42
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = tail call fastcc noundef zeroext i1 @_RNvXs5_NtCsfYVtenZkBsn_12arrow_schema8datatypeNtB5_8DataTypeNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #42
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi i1 [ %i.f, %bb.b ], [ false, %bb.a ]
  ret i1 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXs25_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_7AnalyzeNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i8, ptr %i.a, align 8, !range !2603, !noundef !17
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i8, ptr %i.c, align 8, !range !2603, !noundef !17
  %i.e = icmp eq i8 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !nonnull !17, !noundef !17 ; 2 uses
  %i.g = load ptr, ptr %1, align 8, !nonnull !17, !noundef !17 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.k = tail call fastcc noundef zeroext i1 @_RNvXsK_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB5_11LogicalPlanNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(320) %i.i, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(320) %i.j) #42
  br i1 %i.k, label %bb.d, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !17, !noundef !17 ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !17, !noundef !17 ; 6 uses
  %i.p = icmp eq ptr %i.m, %i.o
  br i1 %i.p, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %bb.e

_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit: ; preds = %bb.k, %bb.j, %bb.i, %bb.h, %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i, %bb.g, %bb.f, %bb.d, %bb.c, %bb.a
  %.sroa.0.0 = phi i1 [ false, %bb.c ], [ true, %bb.d ], [ false, %bb.a ], [ %i.bd, %bb.k ], [ false, %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i ], [ false, %bb.h ], [ false, %bb.i ], [ false, %bb.j ], [ false, %bb.f ], [ false, %bb.g ]
  ret i1 %.sroa.0.0

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6392)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6395)
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !6392, !noalias !6395, !nonnull !17, !noundef !17 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 64
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !6395, !noalias !6392, !nonnull !17, !noundef !17 ; 4 uses
  %i.u = icmp eq ptr %i.r, %i.t
  br i1 %i.u, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6397)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6400)
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !6397, !noalias !6402, !noundef !17 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.y = load i64, ptr %i.x, align 8, !alias.scope !6400, !noalias !6403, !noundef !17
  %i.z = icmp eq i64 %i.w, %i.y
  br i1 %i.z, label %bb.g, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.g:                                             ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.ac = load ptr, ptr %i.aa, align 8, !alias.scope !6400, !noalias !6403, !nonnull !17, !noundef !17
  %i.ad = load ptr, ptr %i.ab, align 8, !alias.scope !6397, !noalias !6402, !nonnull !17, !noundef !17
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ag = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEINtB5_14SlicePartialEqBC_E17equal_same_lengthCs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull %i.ae, ptr noundef nonnull %i.af, i64 noundef %i.w), !noalias !6404
  br i1 %i.ag, label %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i: ; preds = %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.ai = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.aj = tail call noundef zeroext i1 @_RNvXs4_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB5_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB13_ENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eqCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ah, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ai), !noalias !6405
  br i1 %i.aj, label %bb.h, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.h:                                             ; preds = %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i, %bb.e
  %i.ak = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.al = load i64, ptr %i.ak, align 8, !alias.scope !6392, !noalias !6395, !noundef !17 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.an = load i64, ptr %i.am, align 8, !alias.scope !6395, !noalias !6392, !noundef !17
  %i.ao = icmp eq i64 %i.al, %i.an
  br i1 %i.ao, label %bb.i, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.i:                                             ; preds = %bb.h
  %i.ap = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8, !alias.scope !6395, !noalias !6392, !nonnull !17, !noundef !17
  %i.ar = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.as = load ptr, ptr %i.ar, align 8, !alias.scope !6392, !noalias !6395, !nonnull !17, !noundef !17
  %i.at = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpINtNtB9_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEINtB5_14SlicePartialEqBC_E17equal_same_lengthCs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull %i.as, ptr noundef nonnull %i.aq, i64 noundef %i.al), !noalias !6405
  br i1 %i.at, label %bb.j, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.j:                                             ; preds = %bb.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  %i.av = load i64, ptr %i.au, align 8, !alias.scope !6392, !noalias !6395, !noundef !17 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.o, i64 56
  %i.ax = load i64, ptr %i.aw, align 8, !alias.scope !6395, !noalias !6392, !noundef !17
  %i.ay = icmp eq i64 %i.av, %i.ax
  br i1 %i.ay, label %bb.k, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.k:                                             ; preds = %bb.j
  %i.az = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  %i.ba = load ptr, ptr %i.az, align 8, !alias.scope !6395, !noalias !6392, !nonnull !17, !noundef !17
  %i.bb = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %i.bc = load ptr, ptr %i.bb, align 8, !alias.scope !6392, !noalias !6395, !nonnull !17, !noundef !17
  %i.bd = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies20FunctionalDependenceINtB5_14SlicePartialEqBC_E17equal_same_lengthCs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull %i.bc, ptr noundef nonnull %i.ba, i64 noundef %i.av), !noalias !6405
  br label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXs2B_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_14WindowFunctionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(288) %0, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(288) %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 272
  %.val = load i64, ptr %i.a, align 16, !range !446, !noundef !17 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 280
  %.val1 = load ptr, ptr %i.c, align 8            ; 4 uses
  %.val2 = load i64, ptr %i.b, align 16, !range !446, !noundef !17
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 280
  %.val3 = load ptr, ptr %i.d, align 8            ; 4 uses
  %i.e = icmp eq i64 %.val, %.val2
  br i1 %i.e, label %bb.b, label %_RNvXs2I_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.b:                                             ; preds = %bb.a
  %i.f = trunc nuw i64 %.val to i1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val3) ]
  %i.g = icmp eq ptr %.val1, %.val3               ; 2 uses
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  br i1 %i.g, label %_RNvXs2v_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_24WindowFunctionDefinitionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread, label %_RNvXs2v_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_24WindowFunctionDefinitionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.d:                                             ; preds = %bb.b
  br i1 %i.g, label %_RNvXs2v_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_24WindowFunctionDefinitionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %.val3, i64 16
  %i.j = tail call noundef zeroext i1 @_RNvXNtCs8VI8w5SIoU4_15datafusion_expr4udafNtB2_12AggregateUDFNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.i)
  br i1 %i.j, label %_RNvXs2v_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_24WindowFunctionDefinitionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread, label %_RNvXs2I_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

_RNvXs2v_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_24WindowFunctionDefinitionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit: ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %.val3, i64 16
  %i.m = tail call noundef zeroext i1 @_RNvXs_NtCs8VI8w5SIoU4_15datafusion_expr4udwfNtB4_9WindowUDFNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.l)
  br i1 %i.m, label %_RNvXs2v_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_24WindowFunctionDefinitionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread, label %_RNvXs2I_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

_RNvXs2v_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_24WindowFunctionDefinitionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread: ; preds = %bb.c, %bb.d, %bb.e, %_RNvXs2v_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_24WindowFunctionDefinitionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6406)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6409)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.o = load i8, ptr %i.n, align 16, !range !2603, !alias.scope !6406, !noalias !6409, !noundef !17
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.q = load i8, ptr %i.p, align 16, !range !2603, !alias.scope !6409, !noalias !6406, !noundef !17
  %i.r = icmp eq i8 %i.o, %i.q
  br i1 %i.r, label %bb.f, label %_RNvXs2I_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.f:                                             ; preds = %_RNvXs2v_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_24WindowFunctionDefinitionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.t = load i64, ptr %i.s, align 16, !alias.scope !6406, !noalias !6409, !noundef !17 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.v = load i64, ptr %i.u, align 16, !alias.scope !6409, !noalias !6406, !noundef !17
  %i.w = icmp eq i64 %i.t, %i.v
  br i1 %i.w, label %bb.g, label %_RNvXs2I_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !6409, !noalias !6406, !nonnull !17, !noundef !17
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.aa = load ptr, ptr %i.z, align 8, !alias.scope !6406, !noalias !6409, !nonnull !17, !noundef !17
  %.not16.not = icmp eq i64 %i.t, 0
  br i1 %.not16.not, label %._crit_edge, label %.lr.ph

bb.h:                                             ; preds = %.lr.ph
  %i.ab = add nuw i64 %.sroa.01.0.i617, 1         ; 2 uses
  %exitcond.not = icmp eq i64 %i.ab, %i.t
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g, %bb.h
  %.sroa.01.0.i617 = phi i64 [ %i.ab, %bb.h ], [ 0, %bb.g ] ; 3 uses
  %i.ac = getelementptr inbounds nuw [112 x i8], ptr %i.aa, i64 %.sroa.01.0.i617
  %i.ad = getelementptr inbounds nuw [112 x i8], ptr %i.y, i64 %.sroa.01.0.i617
  %i.ae = tail call fastcc noundef zeroext i1 @_RNvXsX_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB5_4ExprNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.ac, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.ad) #42, !noalias !6411, !inline_history !6412
  br i1 %i.ae, label %bb.h, label %_RNvXs2I_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

._crit_edge:                                      ; preds = %bb.h, %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.ag = load i64, ptr %i.af, align 8, !alias.scope !6406, !noalias !6409, !noundef !17 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.ai = load i64, ptr %i.ah, align 8, !alias.scope !6409, !noalias !6406, !noundef !17
  %i.aj = icmp eq i64 %i.ag, %i.ai
  br i1 %i.aj, label %bb.i, label %_RNvXs2I_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.i:                                             ; preds = %._crit_edge
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.al = load ptr, ptr %i.ak, align 16, !alias.scope !6409, !noalias !6406, !nonnull !17, !noundef !17
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.an = load ptr, ptr %i.am, align 16, !alias.scope !6406, !noalias !6409, !nonnull !17, !noundef !17
  %.not1218.not = icmp eq i64 %i.ag, 0
  br i1 %.not1218.not, label %._crit_edge22, label %.lr.ph21

bb.j:                                             ; preds = %.lr.ph21
  %i.ao = add nuw i64 %.sroa.01.0.i519, 1         ; 2 uses
  %exitcond29.not = icmp eq i64 %i.ao, %i.ag
  br i1 %exitcond29.not, label %._crit_edge22, label %.lr.ph21

.lr.ph21:                                         ; preds = %bb.i, %bb.j
  %.sroa.01.0.i519 = phi i64 [ %i.ao, %bb.j ], [ 0, %bb.i ] ; 3 uses
  %i.ap = getelementptr inbounds nuw [112 x i8], ptr %i.an, i64 %.sroa.01.0.i519
  %i.aq = getelementptr inbounds nuw [112 x i8], ptr %i.al, i64 %.sroa.01.0.i519
  %i.ar = tail call fastcc noundef zeroext i1 @_RNvXsX_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB5_4ExprNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.ap, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.aq) #42, !noalias !6411, !inline_history !6412
  br i1 %i.ar, label %bb.j, label %_RNvXs2I_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

._crit_edge22:                                    ; preds = %bb.j, %bb.i
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.at = load i64, ptr %i.as, align 16, !alias.scope !6406, !noalias !6409, !noundef !17 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.av = load i64, ptr %i.au, align 16, !alias.scope !6409, !noalias !6406, !noundef !17
  %i.aw = icmp eq i64 %i.at, %i.av
  br i1 %i.aw, label %bb.k, label %_RNvXs2I_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.k:                                             ; preds = %._crit_edge22
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.ay = load ptr, ptr %i.ax, align 8, !alias.scope !6409, !noalias !6406, !nonnull !17, !noundef !17
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.ba = load ptr, ptr %i.az, align 8, !alias.scope !6406, !noalias !6409, !nonnull !17, !noundef !17
  %.not1323.not = icmp eq i64 %i.at, 0
  br i1 %.not1323.not, label %_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortINtB5_14SlicePartialEqBC_E17equal_same_lengthCs2VbMhdeEr66_16delta_benchmarks.exit, label %.lr.ph26

bb.l:                                             ; preds = %_RNvXs29_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_4SortNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit
  %i.bb = add nuw i64 %.sroa.01.0.i24, 1          ; 2 uses
  %exitcond30.not = icmp eq i64 %i.bb, %i.at
  br i1 %exitcond30.not, label %_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortINtB5_14SlicePartialEqBC_E17equal_same_lengthCs2VbMhdeEr66_16delta_benchmarks.exit, label %.lr.ph26

.lr.ph26:                                         ; preds = %bb.k, %bb.l
  %.sroa.01.0.i24 = phi i64 [ %i.bb, %bb.l ], [ 0, %bb.k ] ; 3 uses
  %i.bc = getelementptr inbounds nuw [128 x i8], ptr %i.ba, i64 %.sroa.01.0.i24 ; 3 uses
  %i.bd = getelementptr inbounds nuw [128 x i8], ptr %i.ay, i64 %.sroa.01.0.i24 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6413)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6416)
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 112
  %i.bf = load i8, ptr %i.be, align 16, !range !2603, !alias.scope !6413, !noalias !6418, !noundef !17
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 112
  %i.bh = load i8, ptr %i.bg, align 16, !range !2603, !alias.scope !6416, !noalias !6419, !noundef !17
  %i.bi = icmp eq i8 %i.bf, %i.bh
  br i1 %i.bi, label %bb.m, label %_RNvXs2I_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.m:                                             ; preds = %.lr.ph26
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bc, i64 113
  %i.bk = load i8, ptr %i.bj, align 1, !range !2603, !alias.scope !6413, !noalias !6418, !noundef !17
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bd, i64 113
  %i.bm = load i8, ptr %i.bl, align 1, !range !2603, !alias.scope !6416, !noalias !6419, !noundef !17
  %i.bn = icmp eq i8 %i.bk, %i.bm
  br i1 %i.bn, label %_RNvXs29_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_4SortNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %_RNvXs2I_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

_RNvXs29_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_4SortNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit: ; preds = %bb.m
  %i.bo = tail call fastcc noundef zeroext i1 @_RNvXsX_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB5_4ExprNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(128) %i.bc, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(128) %i.bd) #42, !noalias !6411, !inline_history !6420
  br i1 %i.bo, label %bb.l, label %_RNvXs2I_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortINtB5_14SlicePartialEqBC_E17equal_same_lengthCs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.l, %bb.k
  %i.bp = tail call fastcc noundef zeroext i1 @_RNvXs9_NtCs8VI8w5SIoU4_15datafusion_expr12window_frameNtB5_11WindowFrameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(272) %0, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(272) %1) #42, !inline_history !6421
  br i1 %i.bp, label %bb.n, label %_RNvXs2I_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.n:                                             ; preds = %_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortINtB5_14SlicePartialEqBC_E17equal_same_lengthCs2VbMhdeEr66_16delta_benchmarks.exit
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.br = load ptr, ptr %i.bq, align 8, !alias.scope !6406, !noalias !6409, !align !72, !noundef !17 ; 2 uses
  %.not.i = icmp eq ptr %i.br, null
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.bt = load ptr, ptr %i.bs, align 8, !alias.scope !6409, !noalias !6406, !align !72, !noundef !17 ; 2 uses
  %i.bu = icmp eq ptr %i.bt, null                 ; 2 uses
  br i1 %.not.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  br i1 %i.bu, label %_RNvXs2I_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %bb.q

bb.p:                                             ; preds = %bb.n
  br i1 %i.bu, label %bb.r, label %_RNvXs2I_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.q:                                             ; preds = %bb.o
  %i.bv = tail call fastcc noundef zeroext i1 @_RNvXsX_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB5_4ExprNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.br, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.bt) #42, !inline_history !6421
  br i1 %i.bv, label %bb.r, label %_RNvXs2I_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 257
  %i.bx = load i8, ptr %i.bw, align 1, !range !3393, !alias.scope !6406, !noalias !6409, !noundef !17 ; 2 uses
  %.not5.i = icmp eq i8 %i.bx, 2
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 257
  %i.bz = load i8, ptr %i.by, align 1, !range !3393, !alias.scope !6409, !noalias !6406, !noundef !17 ; 2 uses
  br i1 %.not5.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ca = icmp eq i8 %i.bx, %i.bz
  br label %_RNvXs2I_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.t:                                             ; preds = %bb.r
  %i.cb = icmp eq i8 %i.bz, 2
  br label %_RNvXs2I_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

_RNvXs2I_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit: ; preds = %.lr.ph, %.lr.ph21, %.lr.ph26, %bb.m, %_RNvXs29_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_4SortNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, %bb.s, %bb.a, %bb.t, %bb.p, %bb.o, %_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortINtB5_14SlicePartialEqBC_E17equal_same_lengthCs2VbMhdeEr66_16delta_benchmarks.exit, %._crit_edge22, %._crit_edge, %bb.f, %_RNvXs2v_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_24WindowFunctionDefinitionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread, %bb.q, %bb.e, %_RNvXs2v_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_24WindowFunctionDefinitionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit
  %.sroa.0.0 = phi i1 [ false, %bb.e ], [ false, %_RNvXs2v_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_24WindowFunctionDefinitionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit ], [ false, %bb.q ], [ false, %.lr.ph21 ], [ %i.ca, %bb.s ], [ %i.cb, %bb.t ], [ false, %bb.o ], [ false, %_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortINtB5_14SlicePartialEqBC_E17equal_same_lengthCs2VbMhdeEr66_16delta_benchmarks.exit ], [ false, %._crit_edge22 ], [ false, %._crit_edge ], [ false, %bb.f ], [ false, %_RNvXs2v_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_24WindowFunctionDefinitionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread ], [ false, %bb.p ], [ false, %bb.a ], [ false, %.lr.ph26 ], [ false, %_RNvXs29_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_4SortNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit ], [ false, %bb.m ], [ false, %.lr.ph ]
  ret i1 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXs2F_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_6SelectNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(2432) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(2432) %1) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [328 x i8], align 8               ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [328 x i8], align 8               ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.0.i = alloca [56 x i8], align 8          ; 5 uses
  %.sroa.552 = alloca [320 x i8], align 8         ; 5 uses
  %.sroa.5.i = alloca [320 x i8], align 8         ; 4 uses
  %.sroa.458 = alloca [344 x i8], align 8         ; 3 uses
  %i.f = alloca [328 x i8], align 8               ; 4 uses
  %i.g = alloca [328 x i8], align 8               ; 4 uses
  %i.h = alloca [328 x i8], align 8               ; 4 uses
  %i.i = alloca [328 x i8], align 8               ; 4 uses
  %i.j = alloca [32 x i8], align 8                ; 7 uses
  %i.k = alloca [64 x i8], align 8                ; 7 uses
  %i.l = alloca [24 x i8], align 8                ; 5 uses
  %i.m = alloca [328 x i8], align 8               ; 7 uses
  %i.n = alloca [24 x i8], align 8                ; 5 uses
  %i.o = alloca [328 x i8], align 8               ; 7 uses
  %i.p = alloca [24 x i8], align 8                ; 5 uses
end_hunk_5
begin_hunk_6_@_RNvXsK_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB5_11LogicalPlanNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq:bb.a
  %i.h = add nsw i64 %i.f, -11
  %i.i = icmp samesign ugt i64 %i.f, 10
  %i.j = select i1 %i.i, i64 %i.h, i64 20
  %i.k = icmp eq i64 %i.e, %i.j
  br i1 %i.k, label %.lr.ph, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

.lr.ph:                                           ; preds = %bb.a, %tailrecurse.backedge
  %i.l = phi i64 [ %i.fi, %tailrecurse.backedge ], [ %i.e, %bb.a ]
  %.tr1488 = phi ptr [ %.tr14.be, %tailrecurse.backedge ], [ %1, %bb.a ] ; 41 uses
  %.tr87 = phi ptr [ %.tr.be, %tailrecurse.backedge ], [ %0, %bb.a ] ; 41 uses
  switch i64 %i.l, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
    i64 3, label %bb.f
    i64 4, label %bb.g
    i64 5, label %bb.h
    i64 6, label %bb.i
    i64 7, label %bb.j
    i64 8, label %bb.t
    i64 9, label %bb.u
    i64 10, label %bb.ad
    i64 11, label %bb.ae
    i64 12, label %bb.af
    i64 13, label %bb.ao
    i64 14, label %bb.ap
    i64 15, label %bb.aq
    i64 16, label %bb.az
    i64 17, label %bb.ba
    i64 18, label %bb.bb
    i64 19, label %bb.bc
    i64 20, label %bb.bd
    i64 21, label %bb.be
    i64 22, label %bb.bf
    i64 23, label %bb.bg
    i64 24, label %bb.bh
  ]

_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit: ; preds = %tailrecurse.backedge, %bb.am, %bb.ai, %bb.ag, %bb.ah, %bb.ak, %bb.al, %bb.an, %bb.bh, %bb.bi, %bb.bj, %bb.bl, %bb.bm, %bb.a, %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.as, %bb.ar, %bb.aq, %bb.ac, %bb.ab, %bb.aa, %bb.z, %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i.i10, %bb.y, %bb.x, %bb.v, %bb.u, %bb.s, %bb.r, %bb.q, %bb.p, %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i.i, %bb.o, %bb.n, %bb.l, %bb.k, %bb.j, %bb.bg, %bb.bf, %bb.be, %bb.bd, %bb.bc, %bb.bb, %bb.ba, %bb.az, %bb.ap, %bb.ao, %bb.ae, %bb.ad, %bb.t, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.sroa.0.0.shrunk = phi i1 [ %i.o, %bb.c ], [ %i.r, %bb.d ], [ %i.u, %bb.e ], [ %i.x, %bb.f ], [ %i.aa, %bb.g ], [ %i.ad, %bb.h ], [ %i.ag, %bb.i ], [ false, %bb.aw ], [ %i.cm, %bb.t ], [ false, %bb.o ], [ %i.ej, %bb.ad ], [ %i.em, %bb.ae ], [ false, %bb.y ], [ %i.fr, %bb.ao ], [ %i.fu, %bb.ap ], [ false, %bb.au ], [ %i.hm, %bb.az ], [ %i.hp, %bb.ba ], [ %i.hs, %bb.bb ], [ %i.hv, %bb.bc ], [ %i.hw, %bb.bd ], [ %i.hz, %bb.be ], [ %i.ie, %bb.bf ], [ %i.ih, %bb.bg ], [ true, %bb.ax ], [ false, %bb.k ], [ true, %bb.l ], [ false, %bb.j ], [ %i.cj, %bb.s ], [ false, %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i.i ], [ false, %bb.p ], [ false, %bb.q ], [ false, %bb.r ], [ false, %bb.n ], [ false, %bb.u ], [ true, %bb.v ], [ %i.eg, %bb.ac ], [ false, %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i.i10 ], [ false, %bb.z ], [ false, %bb.aa ], [ false, %bb.ab ], [ false, %bb.x ], [ false, %bb.as ], [ %i.hj, %bb.ay ], [ false, %bb.av ], [ false, %bb.ar ], [ false, %bb.aq ], [ false, %bb.a ], [ true, %bb.an ], [ false, %bb.bh ], [ false, %bb.bj ], [ false, %bb.bi ], [ false, %bb.am ], [ false, %bb.al ], [ false, %bb.ak ], [ false, %bb.ai ], [ false, %bb.ah ], [ false, %bb.bl ], [ false, %bb.ag ], [ false, %tailrecurse.backedge ], [ true, %bb.bm ]
  ret i1 %.sroa.0.0.shrunk

bb.b:                                             ; preds = %.lr.ph
  unreachable

bb.c:                                             ; preds = %.lr.ph
  %i.m = getelementptr inbounds nuw i8, ptr %.tr87, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %.tr1488, i64 8
  %i.o = tail call fastcc noundef zeroext i1 @_RNvXs19_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_10ProjectionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.m, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.n) #42
  br label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.d:                                             ; preds = %.lr.ph
  %i.p = getelementptr inbounds nuw i8, ptr %.tr87, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %.tr1488, i64 16
  %i.r = tail call fastcc noundef zeroext i1 @_RNvXs1m_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_6FilterNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(128) %i.p, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(128) %i.q) #42
  br label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.e:                                             ; preds = %.lr.ph
  %i.s = getelementptr inbounds nuw i8, ptr %.tr87, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %.tr1488, i64 8
  %i.u = tail call fastcc noundef zeroext i1 @_RNvXs1t_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_6WindowNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.s, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.t) #42
  br label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.f:                                             ; preds = %.lr.ph
  %i.v = getelementptr inbounds nuw i8, ptr %.tr87, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %.tr1488, i64 8
  %i.x = tail call fastcc noundef zeroext i1 @_RNvXs2z_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_9AggregateNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.v, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.w) #42
  br label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.g:                                             ; preds = %.lr.ph
  %i.y = getelementptr inbounds nuw i8, ptr %.tr87, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %.tr1488, i64 8
  %i.aa = tail call fastcc noundef zeroext i1 @_RNvXs2F_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_4SortNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.y, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.z) #42
  br label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.h:                                             ; preds = %.lr.ph
  %i.ab = getelementptr inbounds nuw i8, ptr %.tr87, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %.tr1488, i64 16
  %i.ad = tail call fastcc noundef zeroext i1 @_RNvXs2M_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_4JoinNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(176) %i.ab, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(176) %i.ac) #42
  br label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.i:                                             ; preds = %.lr.ph
  %i.ae = getelementptr inbounds nuw i8, ptr %.tr87, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %.tr1488, i64 8
  %i.ag = tail call fastcc noundef zeroext i1 @_RNvXs1A_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_11RepartitionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ae, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.af) #42
  br label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.j:                                             ; preds = %.lr.ph
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7435)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7438)
  %i.ah = getelementptr inbounds nuw i8, ptr %.tr87, i64 24
  %i.ai = load i64, ptr %i.ah, align 8, !alias.scope !7435, !noalias !7438, !noundef !17 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.tr1488, i64 24
  %i.ak = load i64, ptr %i.aj, align 8, !alias.scope !7438, !noalias !7435, !noundef !17
  %i.al = icmp eq i64 %i.ai, %i.ak
  br i1 %i.al, label %bb.k, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.k:                                             ; preds = %bb.j
  %i.am = getelementptr inbounds nuw i8, ptr %.tr1488, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !alias.scope !7438, !noalias !7435, !nonnull !17, !noundef !17
  %i.ao = getelementptr inbounds nuw i8, ptr %.tr87, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !alias.scope !7435, !noalias !7438, !nonnull !17, !noundef !17
  %i.aq = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanEINtB5_14SlicePartialEqBC_E17equal_same_lengthCs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull %i.ap, ptr noundef nonnull %i.an, i64 noundef %i.ai), !noalias !7440
  br i1 %i.aq, label %bb.l, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.l:                                             ; preds = %bb.k
  %i.ar = getelementptr inbounds nuw i8, ptr %.tr87, i64 32
  %i.as = load ptr, ptr %i.ar, align 8, !alias.scope !7435, !noalias !7438, !nonnull !17, !noundef !17 ; 6 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.tr1488, i64 32
  %i.au = load ptr, ptr %i.at, align 8, !alias.scope !7438, !noalias !7435, !nonnull !17, !noundef !17 ; 6 uses
  %i.av = icmp eq ptr %i.as, %i.au
  br i1 %i.av, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7441)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7444)
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 64
  %i.ax = load ptr, ptr %i.aw, align 8, !alias.scope !7441, !noalias !7446, !nonnull !17, !noundef !17 ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 64
  %i.az = load ptr, ptr %i.ay, align 8, !alias.scope !7444, !noalias !7447, !nonnull !17, !noundef !17 ; 4 uses
  %i.ba = icmp eq ptr %i.ax, %i.az
  br i1 %i.ba, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7448)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7451)
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.bc = load i64, ptr %i.bb, align 8, !alias.scope !7448, !noalias !7453, !noundef !17 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %i.be = load i64, ptr %i.bd, align 8, !alias.scope !7451, !noalias !7454, !noundef !17
  %i.bf = icmp eq i64 %i.bc, %i.be
  br i1 %i.bf, label %bb.o, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.o:                                             ; preds = %bb.n
  %i.bg = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.bi = load ptr, ptr %i.bg, align 8, !alias.scope !7451, !noalias !7454, !nonnull !17, !noundef !17
  %i.bj = load ptr, ptr %i.bh, align 8, !alias.scope !7448, !noalias !7453, !nonnull !17, !noundef !17
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bm = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEINtB5_14SlicePartialEqBC_E17equal_same_lengthCs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull %i.bk, ptr noundef nonnull %i.bl, i64 noundef %i.bc), !noalias !7455
  br i1 %i.bm, label %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i.i, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i.i: ; preds = %bb.o
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  %i.bo = getelementptr inbounds nuw i8, ptr %i.az, i64 32
  %i.bp = tail call noundef zeroext i1 @_RNvXs4_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB5_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB13_ENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eqCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.bn, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.bo), !noalias !7456
  br i1 %i.bp, label %bb.p, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.p:                                             ; preds = %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i.i, %bb.m
  %i.bq = getelementptr inbounds nuw i8, ptr %i.as, i64 32
  %i.br = load i64, ptr %i.bq, align 8, !alias.scope !7441, !noalias !7446, !noundef !17 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.au, i64 32
  %i.bt = load i64, ptr %i.bs, align 8, !alias.scope !7444, !noalias !7447, !noundef !17
  %i.bu = icmp eq i64 %i.br, %i.bt
  br i1 %i.bu, label %bb.q, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.q:                                             ; preds = %bb.p
  %i.bv = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %i.bw = load ptr, ptr %i.bv, align 8, !alias.scope !7444, !noalias !7447, !nonnull !17, !noundef !17
  %i.bx = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.by = load ptr, ptr %i.bx, align 8, !alias.scope !7441, !noalias !7446, !nonnull !17, !noundef !17
  %i.bz = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpINtNtB9_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEINtB5_14SlicePartialEqBC_E17equal_same_lengthCs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull %i.by, ptr noundef nonnull %i.bw, i64 noundef %i.br), !noalias !7456
  br i1 %i.bz, label %bb.r, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.r:                                             ; preds = %bb.q
  %i.ca = getelementptr inbounds nuw i8, ptr %i.as, i64 56
  %i.cb = load i64, ptr %i.ca, align 8, !alias.scope !7441, !noalias !7446, !noundef !17 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.au, i64 56
  %i.cd = load i64, ptr %i.cc, align 8, !alias.scope !7444, !noalias !7447, !noundef !17
  %i.ce = icmp eq i64 %i.cb, %i.cd
  br i1 %i.ce, label %bb.s, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.s:                                             ; preds = %bb.r
  %i.cf = getelementptr inbounds nuw i8, ptr %i.au, i64 48
  %i.cg = load ptr, ptr %i.cf, align 8, !alias.scope !7444, !noalias !7447, !nonnull !17, !noundef !17
  %i.ch = getelementptr inbounds nuw i8, ptr %i.as, i64 48
  %i.ci = load ptr, ptr %i.ch, align 8, !alias.scope !7441, !noalias !7446, !nonnull !17, !noundef !17
  %i.cj = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies20FunctionalDependenceINtB5_14SlicePartialEqBC_E17equal_same_lengthCs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull %i.ci, ptr noundef nonnull %i.cg, i64 noundef %i.cb), !noalias !7456
  br label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.t:                                             ; preds = %.lr.ph
  %i.ck = getelementptr inbounds nuw i8, ptr %.tr87, i64 8
  %i.cl = getelementptr inbounds nuw i8, ptr %.tr1488, i64 8
  %i.cm = tail call noundef zeroext i1 @_RNvXse_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB5_9TableScanNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %i.ck, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %i.cl)
  br label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.u:                                             ; preds = %.lr.ph
  %i.cn = getelementptr inbounds nuw i8, ptr %.tr87, i64 8
  %i.co = getelementptr inbounds nuw i8, ptr %.tr1488, i64 8
  %.val = load ptr, ptr %i.cn, align 8            ; 7 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.tr87, i64 16
  %.val2 = load i8, ptr %i.cp, align 8, !range !2603, !noundef !17
  %.val3 = load ptr, ptr %i.co, align 8           ; 7 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.tr1488, i64 16
  %.val4 = load i8, ptr %i.cq, align 8, !range !2603, !noundef !17
  %i.cr = icmp eq i8 %.val2, %.val4
  br i1 %i.cr, label %bb.v, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.v:                                             ; preds = %bb.u
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val3) ]
  %i.cs = icmp eq ptr %.val, %.val3
  br i1 %i.cs, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7457)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7460)
  %i.ct = getelementptr inbounds nuw i8, ptr %.val, i64 64
  %i.cu = load ptr, ptr %i.ct, align 8, !alias.scope !7457, !noalias !7460, !nonnull !17, !noundef !17 ; 4 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.val3, i64 64
  %i.cw = load ptr, ptr %i.cv, align 8, !alias.scope !7460, !noalias !7457, !nonnull !17, !noundef !17 ; 4 uses
  %i.cx = icmp eq ptr %i.cu, %i.cw
  br i1 %i.cx, label %bb.z, label %bb.x

bb.x:                                             ; preds = %bb.w
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7462)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7465)
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cu, i64 24
  %i.cz = load i64, ptr %i.cy, align 8, !alias.scope !7462, !noalias !7467, !noundef !17 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cw, i64 24
  %i.db = load i64, ptr %i.da, align 8, !alias.scope !7465, !noalias !7468, !noundef !17
  %i.dc = icmp eq i64 %i.cz, %i.db
  br i1 %i.dc, label %bb.y, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.y:                                             ; preds = %bb.x
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  %i.de = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %i.df = load ptr, ptr %i.dd, align 8, !alias.scope !7465, !noalias !7468, !nonnull !17, !noundef !17
  %i.dg = load ptr, ptr %i.de, align 8, !alias.scope !7462, !noalias !7467, !nonnull !17, !noundef !17
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %i.di = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  %i.dj = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEINtB5_14SlicePartialEqBC_E17equal_same_lengthCs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull %i.dh, ptr noundef nonnull %i.di, i64 noundef %i.cz), !noalias !7469
  br i1 %i.dj, label %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i.i10, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i.i10: ; preds = %bb.y
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cu, i64 32
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cw, i64 32
  %i.dm = tail call noundef zeroext i1 @_RNvXs4_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB5_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB13_ENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eqCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.dk, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.dl), !noalias !7470
  br i1 %i.dm, label %bb.z, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.z:                                             ; preds = %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i.i10, %bb.w
  %i.dn = getelementptr inbounds nuw i8, ptr %.val, i64 32
  %i.do = load i64, ptr %i.dn, align 8, !alias.scope !7457, !noalias !7460, !noundef !17 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.val3, i64 32
  %i.dq = load i64, ptr %i.dp, align 8, !alias.scope !7460, !noalias !7457, !noundef !17
  %i.dr = icmp eq i64 %i.do, %i.dq
  br i1 %i.dr, label %bb.aa, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.aa:                                            ; preds = %bb.z
  %i.ds = getelementptr inbounds nuw i8, ptr %.val3, i64 24
  %i.dt = load ptr, ptr %i.ds, align 8, !alias.scope !7460, !noalias !7457, !nonnull !17, !noundef !17
  %i.du = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.dv = load ptr, ptr %i.du, align 8, !alias.scope !7457, !noalias !7460, !nonnull !17, !noundef !17
  %i.dw = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpINtNtB9_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEINtB5_14SlicePartialEqBC_E17equal_same_lengthCs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull %i.dv, ptr noundef nonnull %i.dt, i64 noundef %i.do), !noalias !7470
  br i1 %i.dw, label %bb.ab, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.ab:                                            ; preds = %bb.aa
  %i.dx = getelementptr inbounds nuw i8, ptr %.val, i64 56
  %i.dy = load i64, ptr %i.dx, align 8, !alias.scope !7457, !noalias !7460, !noundef !17 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.val3, i64 56
  %i.ea = load i64, ptr %i.dz, align 8, !alias.scope !7460, !noalias !7457, !noundef !17
  %i.eb = icmp eq i64 %i.dy, %i.ea
  br i1 %i.eb, label %bb.ac, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.ac:                                            ; preds = %bb.ab
  %i.ec = getelementptr inbounds nuw i8, ptr %.val3, i64 48
  %i.ed = load ptr, ptr %i.ec, align 8, !alias.scope !7460, !noalias !7457, !nonnull !17, !noundef !17
  %i.ee = getelementptr inbounds nuw i8, ptr %.val, i64 48
  %i.ef = load ptr, ptr %i.ee, align 8, !alias.scope !7457, !noalias !7460, !nonnull !17, !noundef !17
  %i.eg = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies20FunctionalDependenceINtB5_14SlicePartialEqBC_E17equal_same_lengthCs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull %i.ef, ptr noundef nonnull %i.ed, i64 noundef %i.dy), !noalias !7470
  br label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.ad:                                            ; preds = %.lr.ph
  %i.eh = getelementptr inbounds nuw i8, ptr %.tr87, i64 8
  %i.ei = getelementptr inbounds nuw i8, ptr %.tr1488, i64 8
  %i.ej = tail call fastcc noundef zeroext i1 @_RNvXs2R_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_8SubqueryNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.eh, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ei) #42
  br label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.ae:                                            ; preds = %.lr.ph
  %i.ek = getelementptr inbounds nuw i8, ptr %.tr87, i64 8
  %i.el = getelementptr inbounds nuw i8, ptr %.tr1488, i64 8
  %i.em = tail call fastcc noundef zeroext i1 @_RNvXs1g_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_13SubqueryAliasNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.ek, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.el) #42
  br label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.af:                                            ; preds = %.lr.ph
  %i.en = getelementptr inbounds nuw i8, ptr %.tr87, i64 8
  %i.eo = getelementptr inbounds nuw i8, ptr %.tr1488, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7471)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7474)
  %i.ep = getelementptr inbounds nuw i8, ptr %.tr87, i64 16
  %i.eq = load ptr, ptr %i.ep, align 8, !alias.scope !7471, !noalias !7474, !align !72, !noundef !17 ; 2 uses
  %.not.i = icmp eq ptr %i.eq, null
  %i.er = getelementptr inbounds nuw i8, ptr %.tr1488, i64 16
  %i.es = load ptr, ptr %i.er, align 8, !alias.scope !7474, !noalias !7471, !align !72, !noundef !17 ; 2 uses
  %i.et = icmp eq ptr %i.es, null                 ; 2 uses
  br i1 %.not.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  br i1 %i.et, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %bb.ai

bb.ah:                                            ; preds = %bb.af
  br i1 %i.et, label %bb.aj, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.ai:                                            ; preds = %bb.ag
  %i.eu = tail call fastcc noundef zeroext i1 @_RNvXsX_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB5_4ExprNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.eq, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.es) #42, !noalias !7476, !inline_history !7477
  br i1 %i.eu, label %bb.aj, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.ev = getelementptr inbounds nuw i8, ptr %.tr87, i64 24
  %i.ew = load ptr, ptr %i.ev, align 8, !alias.scope !7471, !noalias !7474, !align !72, !noundef !17 ; 2 uses
  %.not5.i = icmp eq ptr %i.ew, null
  %i.ex = getelementptr inbounds nuw i8, ptr %.tr1488, i64 24
  %i.ey = load ptr, ptr %i.ex, align 8, !alias.scope !7474, !noalias !7471, !align !72, !noundef !17 ; 2 uses
  %i.ez = icmp eq ptr %i.ey, null                 ; 2 uses
  br i1 %.not5.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  br i1 %i.ez, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %bb.am

bb.al:                                            ; preds = %bb.aj
  br i1 %i.ez, label %bb.an, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.am:                                            ; preds = %bb.ak
  %i.fa = tail call fastcc noundef zeroext i1 @_RNvXsX_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB5_4ExprNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.ew, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.ey) #42, !noalias !7476, !inline_history !7477
  br i1 %i.fa, label %bb.an, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.fb = load ptr, ptr %i.en, align 8, !alias.scope !7471, !noalias !7474, !nonnull !17, !noundef !17 ; 2 uses
  %i.fc = load ptr, ptr %i.eo, align 8, !alias.scope !7474, !noalias !7471, !nonnull !17, !noundef !17 ; 2 uses
  %i.fd = icmp eq ptr %i.fb, %i.fc
  br i1 %i.fd, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %tailrecurse.backedge

tailrecurse.backedge:                             ; preds = %bb.bm, %bb.an
  %.pn = phi ptr [ %i.fb, %bb.an ], [ %i.jg, %bb.bm ]
  %.pn112 = phi ptr [ %i.fc, %bb.an ], [ %i.ji, %bb.bm ]
  %.tr14.be = getelementptr inbounds nuw i8, ptr %.pn112, i64 16 ; 2 uses
  %.tr.be = getelementptr inbounds nuw i8, ptr %.pn, i64 16 ; 2 uses
  %i.fe = load i64, ptr %.tr.be, align 16, !range !4634, !noundef !17 ; 3 uses
  %i.ff = icmp ne i64 %i.fe, 31
  tail call void @llvm.assume(i1 %i.ff)
  %i.fg = add nsw i64 %i.fe, -11
  %i.fh = icmp samesign ugt i64 %i.fe, 10
  %i.fi = select i1 %i.fh, i64 %i.fg, i64 20      ; 2 uses
  %i.fj = load i64, ptr %.tr14.be, align 16, !range !4634, !noundef !17 ; 3 uses
  %i.fk = icmp ne i64 %i.fj, 31
  tail call void @llvm.assume(i1 %i.fk)
  %i.fl = add nsw i64 %i.fj, -11
  %i.fm = icmp samesign ugt i64 %i.fj, 10
  %i.fn = select i1 %i.fm, i64 %i.fl, i64 20
  %i.fo = icmp eq i64 %i.fi, %i.fn
  br i1 %i.fo, label %.lr.ph, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.ao:                                            ; preds = %.lr.ph
  %i.fp = getelementptr inbounds nuw i8, ptr %.tr87, i64 8
  %i.fq = getelementptr inbounds nuw i8, ptr %.tr1488, i64 8
  %i.fr = tail call fastcc noundef zeroext i1 @_RNvXs2_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan9statementNtB5_9StatementNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.fp, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.fq) #42
  br label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.ap:                                            ; preds = %.lr.ph
  %i.fs = getelementptr inbounds nuw i8, ptr %.tr87, i64 8
  %i.ft = getelementptr inbounds nuw i8, ptr %.tr1488, i64 8
  %i.fu = tail call fastcc noundef zeroext i1 @_RNvXs14_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_6ValuesNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.fs, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ft) #42
  br label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.aq:                                            ; preds = %.lr.ph
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7478)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7481)
  %i.fv = getelementptr inbounds nuw i8, ptr %.tr87, i64 48
  %i.fw = load i8, ptr %i.fv, align 8, !range !2603, !alias.scope !7478, !noalias !7481, !noundef !17
  %i.fx = getelementptr inbounds nuw i8, ptr %.tr1488, i64 48
  %i.fy = load i8, ptr %i.fx, align 8, !range !2603, !alias.scope !7481, !noalias !7478, !noundef !17
  %i.fz = icmp eq i8 %i.fw, %i.fy
  br i1 %i.fz, label %bb.ar, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.ar:                                            ; preds = %bb.aq
  %i.ga = getelementptr inbounds nuw i8, ptr %.tr87, i64 49
  %i.gb = load i8, ptr %i.ga, align 1, !range !2603, !alias.scope !7478, !noalias !7481, !noundef !17
  %i.gc = getelementptr inbounds nuw i8, ptr %.tr1488, i64 49
  %i.gd = load i8, ptr %i.gc, align 1, !range !2603, !alias.scope !7481, !noalias !7478, !noundef !17
  %i.ge = icmp eq i8 %i.gb, %i.gd
  br i1 %i.ge, label %bb.as, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.as:                                            ; preds = %bb.ar
  %i.gf = getelementptr inbounds nuw i8, ptr %.tr87, i64 50
  %i.gg = load i8, ptr %i.gf, align 2, !range !3395, !alias.scope !7478, !noalias !7481, !noundef !17
  %i.gh = getelementptr inbounds nuw i8, ptr %.tr1488, i64 50
  %i.gi = load i8, ptr %i.gh, align 2, !range !3395, !alias.scope !7481, !noalias !7478, !noundef !17
  %i.gj = icmp eq i8 %i.gg, %i.gi
  br i1 %i.gj, label %bb.at, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.at:                                            ; preds = %bb.as
  %i.gk = getelementptr inbounds nuw i8, ptr %.tr87, i64 32
  %i.gl = load ptr, ptr %i.gk, align 8, !alias.scope !7478, !noalias !7481, !nonnull !17, !noundef !17 ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %.tr1488, i64 32
  %i.gn = load ptr, ptr %i.gm, align 8, !alias.scope !7481, !noalias !7478, !nonnull !17, !noundef !17 ; 2 uses
  %i.go = icmp eq ptr %i.gl, %i.gn
  br i1 %i.go, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gl, i64 16
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gn, i64 16
end_hunk_6
