inline.NumInlined: 7467
inline.NumDeleted: 3072
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN6duckdb16ExpressionBinder14BindExpressionERNS_14TypeExpressionEm:bb.a
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i135: ; preds = %bb.ab
  call void @_ZdlPv(ptr noundef %i.cd) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137: ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i135
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  br label %bb.dk

bb.ac:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134, %bb.u
  %.sroa.018.0.copyload = load ptr, ptr %14, align 8, !tbaa !1279 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  store ptr %.sroa.018.0.copyload, ptr %8, align 8
  %.not.i138 = icmp eq ptr %.sroa.018.0.copyload, null
  br i1 %.not.i138, label %.thread293, label %bb.ad

.thread293:                                       ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %._crit_edge.i.i142

bb.ad:                                            ; preds = %bb.ac
  invoke void @_ZNK6duckdb12optional_ptrINS_12CatalogEntryELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.ae unwind label %bb.p

bb.ae:                                            ; preds = %bb.ad
  %i.cf = load ptr, ptr %8, align 8, !tbaa !694
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 312
  %i.ch = load i8, ptr %i.cg, align 8, !tbaa !86
  %.not306 = icmp eq i8 %i.ch, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br i1 %.not306, label %._crit_edge.i.i142, label %bb.ah

._crit_edge.i.i142:                               ; preds = %.thread293, %bb.ae
  %i.ci = load ptr, ptr %i.bf, align 8, !tbaa !39, !nonnull !40, !align !41
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 392
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #23
  %i.ck = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 4 uses
  store ptr %i.ck, ptr %17, align 8, !tbaa !120
  %i.cl = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i64 0, ptr %i.cl, align 8, !tbaa !51
  store i8 0, ptr %i.ck, align 8, !tbaa !119
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #23
  %i.cm = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 4 uses
  store ptr %i.cm, ptr %18, align 8, !tbaa !120
  %i.cn = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i64 0, ptr %i.cn, align 8, !tbaa !51
  store i8 0, ptr %i.cm, align 8, !tbaa !119
  %i.co = invoke ptr @_ZN6duckdb21CatalogEntryRetriever8GetEntryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_RKNS_15EntryLookupInfoENS_15OnEntryNotFoundE(ptr noundef nonnull align 8 dereferenceable(64) %i.cj, ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull align 8 dereferenceable(32) %13, i8 noundef zeroext 1)
          to label %bb.af unwind label %bb.ag

bb.af:                                            ; preds = %._crit_edge.i.i142
  store ptr %i.co, ptr %14, align 8, !tbaa !1279
  %i.cp = load ptr, ptr %18, align 8, !tbaa !55   ; 2 uses
  %i.cq = icmp eq ptr %i.cp, %i.cm
  br i1 %i.cq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i150

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i150: ; preds = %bb.af
  call void @_ZdlPv(ptr noundef %i.cp) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152: ; preds = %bb.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i150
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #23
  %i.cr = load ptr, ptr %17, align 8, !tbaa !55   ; 2 uses
  %i.cs = icmp eq ptr %i.cr, %i.ck
  br i1 %i.cs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i153

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i153: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152
  call void @_ZdlPv(ptr noundef %i.cr) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i153
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #23
  br label %bb.ah

bb.ag:                                            ; preds = %._crit_edge.i.i142
  %i.ct = landingpad { ptr, i32 }
          cleanup
  %i.cu = load ptr, ptr %18, align 8, !tbaa !55   ; 2 uses
  %i.cv = icmp eq ptr %i.cu, %i.cm
  br i1 %i.cv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i156

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i156: ; preds = %bb.ag
  call void @_ZdlPv(ptr noundef %i.cu) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158: ; preds = %bb.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i156
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #23
  %i.cw = load ptr, ptr %17, align 8, !tbaa !55   ; 2 uses
  %i.cx = icmp eq ptr %i.cw, %i.ck
  br i1 %i.cx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i159

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i159: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158
  call void @_ZdlPv(ptr noundef %i.cw) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i159
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #23
  br label %bb.dk

bb.ah:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155, %bb.ae
  %.sroa.016.0.copyload = load ptr, ptr %14, align 8, !tbaa !1279 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store ptr %.sroa.016.0.copyload, ptr %7, align 8
  %.not.i162 = icmp eq ptr %.sroa.016.0.copyload, null
  br i1 %.not.i162, label %.thread295, label %bb.ai

.thread295:                                       ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %._crit_edge.i.i166

bb.ai:                                            ; preds = %bb.ah
  invoke void @_ZNK6duckdb12optional_ptrINS_12CatalogEntryELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.aj unwind label %bb.p

bb.aj:                                            ; preds = %bb.ai
  %i.cy = load ptr, ptr %7, align 8, !tbaa !694
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 312
  %i.da = load i8, ptr %i.cz, align 8, !tbaa !86
  %.not307 = icmp eq i8 %i.da, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br i1 %.not307, label %._crit_edge.i.i166, label %bb.am

._crit_edge.i.i166:                               ; preds = %.thread295, %bb.aj
  %i.db = load ptr, ptr %i.bf, align 8, !tbaa !39, !nonnull !40, !align !41
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 392
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #23
  %i.dd = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 4 uses
  store ptr %i.dd, ptr %19, align 8, !tbaa !120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.dd, ptr noundef nonnull align 1 dereferenceable(6) @.str.121, i64 6, i1 false)
  %i.de = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i64 6, ptr %i.de, align 8, !tbaa !51
  %i.df = getelementptr inbounds nuw i8, ptr %19, i64 22
  store i8 0, ptr %i.df, align 2, !tbaa !119
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #23
  %i.dg = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 4 uses
  store ptr %i.dg, ptr %20, align 8, !tbaa !120
  store i32 1852399981, ptr %i.dg, align 8
  %i.dh = getelementptr inbounds nuw i8, ptr %20, i64 8
  store i64 4, ptr %i.dh, align 8, !tbaa !51
  %i.di = getelementptr inbounds nuw i8, ptr %20, i64 20
  store i8 0, ptr %i.di, align 4, !tbaa !119
  %i.dj = invoke ptr @_ZN6duckdb21CatalogEntryRetriever8GetEntryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_RKNS_15EntryLookupInfoENS_15OnEntryNotFoundE(ptr noundef nonnull align 8 dereferenceable(64) %i.dc, ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull align 8 dereferenceable(32) %13, i8 noundef zeroext 0)
          to label %bb.ak unwind label %bb.al

bb.ak:                                            ; preds = %._crit_edge.i.i166
  store ptr %i.dj, ptr %14, align 8, !tbaa !1279
  %i.dk = load ptr, ptr %20, align 8, !tbaa !55   ; 2 uses
  %i.dl = icmp eq ptr %i.dk, %i.dg
  br i1 %i.dl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i174

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i174: ; preds = %bb.ak
  call void @_ZdlPv(ptr noundef %i.dk) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176: ; preds = %bb.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i174
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #23
  %i.dm = load ptr, ptr %19, align 8, !tbaa !55   ; 2 uses
  %i.dn = icmp eq ptr %i.dm, %i.dd
  br i1 %i.dn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i177

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i177: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176
  call void @_ZdlPv(ptr noundef %i.dm) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i177
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #23
  br label %bb.am

bb.al:                                            ; preds = %._crit_edge.i.i166
  %i.do = landingpad { ptr, i32 }
          cleanup
  %i.dp = load ptr, ptr %20, align 8, !tbaa !55   ; 2 uses
  %i.dq = icmp eq ptr %i.dp, %i.dg
  br i1 %i.dq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit182, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i180

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i180: ; preds = %bb.al
  call void @_ZdlPv(ptr noundef %i.dp) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit182

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit182: ; preds = %bb.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i180
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #23
  %i.dr = load ptr, ptr %19, align 8, !tbaa !55   ; 2 uses
  %i.ds = icmp eq ptr %i.dr, %i.dd
  br i1 %i.ds, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit185, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i183

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i183: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit182
  call void @_ZdlPv(ptr noundef %i.dr) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit185

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit185: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit182, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i183
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #23
  br label %bb.dk

bb.am:                                            ; preds = %bb.aj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  invoke void @_ZNK6duckdb12optional_ptrINS_12CatalogEntryELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %bb.an unwind label %bb.as

bb.an:                                            ; preds = %bb.am
  %i.dt = load ptr, ptr %14, align 8, !tbaa !694  ; 3 uses
  %i.du = getelementptr inbounds nuw i8, ptr %2, i64 152 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dt, i64 336 ; 2 uses
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !1280 ; 2 uses
  %.not = icmp eq ptr %i.dw, null
  br i1 %.not, label %bb.ao, label %bb.bf

bb.ao:                                            ; preds = %bb.an
  %i.dx = load ptr, ptr %i.du, align 8, !tbaa !449
  %i.dy = getelementptr inbounds nuw i8, ptr %2, i64 160
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !449
  %i.ea = icmp eq ptr %i.dx, %i.dz
  br i1 %i.ea, label %bb.av, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.eb = call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull @.str.123, ptr noundef nonnull align 1 dereferenceable(1) %22)
          to label %bb.aq unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189.thread

bb.aq:                                            ; preds = %bb.ap
  invoke void @_ZN6duckdb15BinderExceptionC2IJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERKNS_16ParsedExpressionES9_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.eb, ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull align 8 dereferenceable(32) %i.e)
          to label %bb.ar unwind label %bb.at

bb.ar:                                            ; preds = %bb.aq
  invoke void @__cxa_throw(ptr nonnull %i.eb, ptr nonnull @_ZTIN6duckdb15BinderExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #24
          to label %bb.dn unwind label %bb.at

bb.as:                                            ; preds = %bb.am
  %i.ec = landingpad { ptr, i32 }
          cleanup
  br label %bb.dk

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189.thread: ; preds = %bb.ap
  %i.ed = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #23
  br label %bb.au

bb.at:                                            ; preds = %bb.ar, %bb.aq
  %.073 = phi i1 [ false, %bb.ar ], [ true, %bb.aq ] ; 2 uses
  %i.ee = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ef = load ptr, ptr %21, align 8, !tbaa !55   ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %21, i64 16
  %i.eh = icmp eq ptr %i.ef, %i.eg
  br i1 %i.eh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i187

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i187: ; preds = %bb.at
  call void @_ZdlPv(ptr noundef %i.ef) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #23
  br i1 %.073, label %bb.au, label %bb.dk

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189: ; preds = %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #23
  br i1 %.073, label %bb.au, label %bb.dk

bb.au:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i187, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189
  %.pn85299 = phi { ptr, i32 } [ %i.ed, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189.thread ], [ %i.ee, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189 ], [ %i.ee, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i187 ]
  call void @__cxa_free_exception(ptr %i.eb) #23
  br label %bb.dk

bb.av:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #23
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dt, i64 312
  invoke void @_ZN6duckdb5Value4TYPEERKNS_11LogicalTypeE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::Value") align 8 %24, ptr noundef nonnull align 8 dereferenceable(24) %i.ei)
          to label %bb.aw unwind label %bb.bb

bb.aw:                                            ; preds = %bb.av
  call void @llvm.experimental.noalias.scope.decl(metadata !1289)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.ej = invoke noalias noundef nonnull dereferenceable(152) ptr @_Znwm(i64 noundef 152) #26
          to label %.noexc190 unwind label %bb.bc ; 3 uses

.noexc190:                                        ; preds = %bb.aw
  call void @_ZN6duckdb5ValueC1EOS0_(ptr noundef nonnull align 8 dereferenceable(64) %6, ptr noundef nonnull align 8 dereferenceable(64) %24) #23, !noalias !1289
  invoke void @_ZN6duckdb23BoundConstantExpressionC1ENS_5ValueE(ptr noundef nonnull align 8 dereferenceable(152) %i.ej, ptr noundef nonnull %6)
          to label %bb.ay unwind label %bb.ax, !noalias !1289

bb.ax:                                            ; preds = %.noexc190
  %i.ek = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %6) #23, !noalias !1289
  call void @_ZdlPv(ptr noundef nonnull %i.ej) #25, !noalias !1289
  br label %.body

bb.ay:                                            ; preds = %.noexc190
  store ptr %i.ej, ptr %23, align 8, !tbaa !993, !alias.scope !1289
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %6) #23, !noalias !1289
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %24) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #23
  %i.el = getelementptr inbounds nuw i8, ptr %2, i64 48
  %.sroa.0.0.copyload.i = load i64, ptr %i.el, align 8, !tbaa !7
  %i.em = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_23BoundConstantExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %23)
          to label %bb.az unwind label %bb.be

bb.az:                                            ; preds = %bb.ay
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 48
  store i64 %.sroa.0.0.copyload.i, ptr %i.en, align 8, !tbaa !7
  %i.eo = load ptr, ptr %23, align 8, !tbaa !993
  store ptr null, ptr %23, align 8, !tbaa !993
  %i.ep = ptrtoint ptr %i.eo to i64
  store i64 %i.ep, ptr %0, align 8, !tbaa !95
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void @_ZN6duckdb9ErrorDataC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %i.eq)
          to label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit unwind label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.er = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.es = load ptr, ptr %0, align 8, !tbaa !95    ; 3 uses
  %.not.i.i = icmp eq ptr %i.es, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit197, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i: ; preds = %bb.ba
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !83
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  %i.ev = load ptr, ptr %i.eu, align 8
  call void %i.ev(ptr noundef nonnull align 8 dereferenceable(88) %i.es) #23, !inline_history !351
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit197

_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.az
  %i.ew = load ptr, ptr %23, align 8, !tbaa !993  ; 3 uses
  %.not.i194 = icmp eq ptr %i.ew, null
  br i1 %.not.i194, label %_ZNSt10unique_ptrIN6duckdb23BoundConstantExpressionESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb23BoundConstantExpressionEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb23BoundConstantExpressionEEclEPS1_.exit.i: ; preds = %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !83
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  %i.ez = load ptr, ptr %i.ey, align 8
  call void %i.ez(ptr noundef nonnull align 8 dereferenceable(152) %i.ew) #23, !inline_history !995
  br label %_ZNSt10unique_ptrIN6duckdb23BoundConstantExpressionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb23BoundConstantExpressionESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit, %_ZNKSt14default_deleteIN6duckdb23BoundConstantExpressionEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #23
  br label %bb.dj

bb.bb:                                            ; preds = %bb.av
  %i.fa = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

bb.bc:                                            ; preds = %bb.aw
  %i.fb = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.ax, %bb.bc
  %eh.lpad-body = phi { ptr, i32 } [ %i.fb, %bb.bc ], [ %i.ek, %bb.ax ]
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %24) #23
  br label %bb.bd

bb.bd:                                            ; preds = %.body, %bb.bb
  %.pn87 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.fa, %bb.bb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #23
  br label %_ZNSt10unique_ptrIN6duckdb23BoundConstantExpressionESt14default_deleteIS1_EED2Ev.exit200

bb.be:                                            ; preds = %bb.ay
  %i.fc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit197

_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit197: ; preds = %bb.ba, %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i, %bb.be
  %.pn89 = phi { ptr, i32 } [ %i.fc, %bb.be ], [ %i.er, %bb.ba ], [ %i.er, %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i ] ; 2 uses
  %i.fd = load ptr, ptr %23, align 8, !tbaa !993  ; 3 uses
  %.not.i198 = icmp eq ptr %i.fd, null
  br i1 %.not.i198, label %_ZNSt10unique_ptrIN6duckdb23BoundConstantExpressionESt14default_deleteIS1_EED2Ev.exit200, label %_ZNKSt14default_deleteIN6duckdb23BoundConstantExpressionEEclEPS1_.exit.i199

_ZNKSt14default_deleteIN6duckdb23BoundConstantExpressionEEclEPS1_.exit.i199: ; preds = %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit197
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !83
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  %i.fg = load ptr, ptr %i.ff, align 8
  call void %i.fg(ptr noundef nonnull align 8 dereferenceable(152) %i.fd) #23, !inline_history !995
  br label %_ZNSt10unique_ptrIN6duckdb23BoundConstantExpressionESt14default_deleteIS1_EED2Ev.exit200

_ZNSt10unique_ptrIN6duckdb23BoundConstantExpressionESt14default_deleteIS1_EED2Ev.exit200: ; preds = %_ZNKSt14default_deleteIN6duckdb23BoundConstantExpressionEEclEPS1_.exit.i199, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit197, %bb.bd
  %.pn89.pn = phi { ptr, i32 } [ %.pn87, %bb.bd ], [ %.pn89, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit197 ], [ %.pn89, %_ZNKSt14default_deleteIN6duckdb23BoundConstantExpressionEEclEPS1_.exit.i199 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #23
  br label %bb.dk

bb.bf:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %25, i8 0, i64 24, i1 false)
  %i.fh = load ptr, ptr %i.du, align 8, !tbaa !449 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %2, i64 160
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !449 ; 2 uses
  %.not308348 = icmp eq ptr %i.fh, %i.fj
  br i1 %.not308348, label %._crit_edge, label %.noexc.i202.lr.ph

.noexc.i202.lr.ph:                                ; preds = %bb.bf
  %i.fk = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.fl = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 4 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %28, i64 8
  %i.fn = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 5 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.fp = getelementptr inbounds nuw i8, ptr %29, i64 8
  %i.fq = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.fr = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %26, i64 104
  %i.ft = getelementptr inbounds nuw i8, ptr %26, i64 120
  br label %.noexc.i202

._crit_edge.loopexit:                             ; preds = %_ZN6duckdb14ConstantBinderD2Ev.exit
  %.pre = load ptr, ptr %i.dv, align 8, !tbaa !1280
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.bf
  %39 = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.dw, %bb.bf ]
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #23
  %i.fu = load ptr, ptr %i.ah, align 8, !tbaa !42, !nonnull !40, !align !41
  store ptr %i.fu, ptr %35, align 8, !tbaa !1292
  %i.fv = getelementptr inbounds nuw i8, ptr %35, i64 8
  %i.fw = getelementptr inbounds nuw i8, ptr %i.dt, i64 312
  store ptr %i.fw, ptr %i.fv, align 8, !tbaa !1242
  %i.fx = getelementptr inbounds nuw i8, ptr %35, i64 16
  store ptr %25, ptr %i.fx, align 8, !tbaa !1294
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #23
  invoke void %39(ptr dead_on_unwind nonnull writable sret(%"struct.duckdb::LogicalType") align 8 %36, ptr noundef nonnull align 8 dereferenceable(24) %35)
          to label %bb.cv unwind label %bb.dc

.noexc.i202:                                      ; preds = %.noexc.i202.lr.ph, %_ZN6duckdb14ConstantBinderD2Ev.exit
  %.sroa.0281.0349 = phi ptr [ %i.fh, %.noexc.i202.lr.ph ], [ %i.jc, %_ZN6duckdb14ConstantBinderD2Ev.exit ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #23
  %i.fy = load ptr, ptr %i.fk, align 8, !tbaa !39, !nonnull !40, !align !41
  %i.fz = load ptr, ptr %i.ah, align 8, !tbaa !42, !nonnull !40, !align !41
  store ptr %i.fl, ptr %28, align 8, !tbaa !120
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store i64 28, ptr %i.b, align 8, !tbaa !7
  %i.ga = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %28, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc203 unwind label %bb.bw ; 2 uses

.noexc203:                                        ; preds = %.noexc.i202
  store ptr %i.ga, ptr %28, align 8, !tbaa !55
  %i.gb = load i64, ptr %i.b, align 8, !tbaa !7   ; 3 uses
  store i64 %i.gb, ptr %i.fl, align 8, !tbaa !119
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %i.ga, ptr noundef nonnull align 1 dereferenceable(28) @.str.124, i64 28, i1 false)
  store i64 %i.gb, ptr %i.fm, align 8, !tbaa !51
  %i.gc = load ptr, ptr %28, align 8, !tbaa !55
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 %i.gb
  store i8 0, ptr %i.gd, align 1, !tbaa !119
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  store ptr %i.fn, ptr %29, align 8, !tbaa !120
  %i.ge = load ptr, ptr %i.e, align 8, !tbaa !55  ; 2 uses
  %i.gf = load i64, ptr %i.fo, align 8, !tbaa !51 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 %i.gf, ptr %i.a, align 8, !tbaa !7
  %i.gg = icmp ugt i64 %i.gf, 15
  br i1 %i.gg, label %.noexc.i206, label %._crit_edge.i.i205

.noexc.i206:                                      ; preds = %.noexc203
  %i.gh = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %29, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc207 unwind label %bb.bx ; 2 uses

.noexc207:                                        ; preds = %.noexc.i206
  store ptr %i.gh, ptr %29, align 8, !tbaa !55
  %i.gi = load i64, ptr %i.a, align 8, !tbaa !7
  store i64 %i.gi, ptr %i.fn, align 8, !tbaa !119
  br label %._crit_edge.i.i205

._crit_edge.i.i205:                               ; preds = %.noexc207, %.noexc203
  %i.gj = phi ptr [ %i.gh, %.noexc207 ], [ %i.fn, %.noexc203 ] ; 2 uses
  switch i64 %i.gf, label %bb.bh [
    i64 1, label %bb.bg
    i64 0, label %bb.bi
  ]

bb.bg:                                            ; preds = %._crit_edge.i.i205
  %i.gk = load i8, ptr %i.ge, align 1, !tbaa !119
  store i8 %i.gk, ptr %i.gj, align 1, !tbaa !119
  br label %bb.bi

bb.bh:                                            ; preds = %._crit_edge.i.i205
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gj, ptr align 1 %i.ge, i64 %i.gf, i1 false)
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg, %._crit_edge.i.i205
  %i.gl = load i64, ptr %i.a, align 8, !tbaa !7   ; 2 uses
  store i64 %i.gl, ptr %i.fp, align 8, !tbaa !51
  %i.gm = load ptr, ptr %29, align 8, !tbaa !55
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 %i.gl
  store i8 0, ptr %i.gn, align 1, !tbaa !119
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23, !noalias !1296
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false), !noalias !1296
  invoke void @_ZN6duckdb9Exception25ConstructMessageRecursiveINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEES7_RKS7_RSt6vectorINS_20ExceptionFormatValueESaISB_EERKT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %27, ptr noundef nonnull align 8 dereferenceable(32) %28, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(32) %29)
          to label %bb.bj unwind label %bb.bl

bb.bj:                                            ; preds = %bb.bi
  %i.go = load ptr, ptr %5, align 8, !tbaa !379, !noalias !1296 ; 3 uses
  %i.gp = load ptr, ptr %i.fq, align 8, !tbaa !382, !noalias !1296 ; 2 uses
  %.not4.i.i.i.i.i = icmp eq ptr %i.go, %i.gp
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.bj, %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.gu, %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i.i ], [ %i.go, %bb.bj ] ; 3 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 32
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !55 ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 48
  %i.gt = icmp eq ptr %i.gr, %i.gs
  br i1 %i.gt, label %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  call void @_ZdlPv(ptr noundef %i.gr) #25
  br label %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i
  %i.gu = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.gu, %i.gp
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !383

_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i: ; preds = %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i.i
  %.pr.i.i.i = load ptr, ptr %5, align 8, !tbaa !379, !noalias !1296
  br label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i, %bb.bj
  %i.gv = phi ptr [ %.pr.i.i.i, %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i ], [ %i.go, %bb.bj ] ; 2 uses
  %.not.i.i1.i.i.i = icmp eq ptr %i.gv, null
  br i1 %.not.i.i1.i.i.i, label %bb.bm, label %bb.bk

bb.bk:                                            ; preds = %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.gv) #25
  br label %bb.bm

bb.bl:                                            ; preds = %bb.bi
  %i.gw = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23, !noalias !1296
  br label %.body209

bb.bm:                                            ; preds = %bb.bk, %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23, !noalias !1296
  invoke void @_ZN6duckdb14ConstantBinderC1ERNS_6BinderERNS_13ClientContextENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(136) %26, ptr noundef nonnull align 8 dereferenceable(472) %i.fy, ptr noundef nonnull align 8 dereferenceable(512) %i.fz, ptr noundef nonnull %27)
          to label %bb.bn unwind label %bb.by

bb.bn:                                            ; preds = %bb.bm
  %i.gx = load ptr, ptr %27, align 8, !tbaa !55   ; 2 uses
  %i.gy = icmp eq ptr %i.gx, %i.fr
  br i1 %i.gy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit213, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i211

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i211: ; preds = %bb.bn
  call void @_ZdlPv(ptr noundef %i.gx) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit213

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit213: ; preds = %bb.bn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i211
  %i.gz = load ptr, ptr %29, align 8, !tbaa !55   ; 2 uses
  %i.ha = icmp eq ptr %i.gz, %i.fn
  br i1 %i.ha, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit216, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i214

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i214: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit213
  call void @_ZdlPv(ptr noundef %i.gz) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit216

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit216: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit213, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i214
  %i.hb = load ptr, ptr %28, align 8, !tbaa !55   ; 2 uses
  %i.hc = icmp eq ptr %i.hb, %i.fl
  br i1 %i.hc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit219, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i217

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i217: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit216
  call void @_ZdlPv(ptr noundef %i.hb) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit219

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit219: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit216, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i217
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #23
  %i.hd = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0281.0349)
          to label %bb.bo unwind label %bb.bz     ; 2 uses

bb.bo:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit219
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !83
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 96
  %i.hg = load ptr, ptr %i.hf, align 8
  invoke void %i.hg(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.198") align 8 %30, ptr noundef nonnull align 8 dereferenceable(56) %i.hd)
          to label %bb.bp unwind label %bb.bz

bb.bp:                                            ; preds = %bb.bo
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #23
  invoke void @_ZN6duckdb16ExpressionBinder4BindERNS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS2_ELb1EEENS_12optional_ptrINS_11LogicalTypeELb1EEEb(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr") align 8 %31, ptr noundef nonnull align 8 dereferenceable(104) %26, ptr noundef nonnull align 8 dereferenceable(8) %30, ptr null, i1 noundef zeroext true)
          to label %bb.bq unwind label %bb.ca

bb.bq:                                            ; preds = %bb.bp
  %i.hh = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %31)
          to label %bb.br unwind label %bb.cb     ; 2 uses

bb.br:                                            ; preds = %bb.bq
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !83
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 120
  %i.hk = load ptr, ptr %i.hj, align 8
  %i.hl = invoke noundef zeroext i1 %i.hk(ptr noundef nonnull align 8 dereferenceable(88) %i.hh)
          to label %bb.bs unwind label %bb.cb

bb.bs:                                            ; preds = %bb.br
  br i1 %i.hl, label %bb.ce, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.hm = call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %32, ptr noundef nonnull @.str.125, ptr noundef nonnull align 1 dereferenceable(1) %33)
          to label %bb.bu unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit231.thread

bb.bu:                                            ; preds = %bb.bt
  invoke void @_ZN6duckdb15BinderExceptionC2IJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERKNS_16ParsedExpressionES9_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.hm, ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(32) %32, ptr noundef nonnull align 8 dereferenceable(32) %i.e)
          to label %bb.bv unwind label %bb.cc

bb.bv:                                            ; preds = %bb.bu
  invoke void @__cxa_throw(ptr nonnull %i.hm, ptr nonnull @_ZTIN6duckdb15BinderExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #24
          to label %bb.dn unwind label %bb.cc

bb.bw:                                            ; preds = %.noexc.i202
  %i.hn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit228

bb.bx:                                            ; preds = %.noexc.i206
  %i.ho = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit225

bb.by:                                            ; preds = %bb.bm
  %i.hp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hq = load ptr, ptr %27, align 8, !tbaa !55   ; 2 uses
  %i.hr = icmp eq ptr %i.hq, %i.fr
  br i1 %i.hr, label %.body209, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i220

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i220: ; preds = %bb.by
  call void @_ZdlPv(ptr noundef %i.hq) #25
  br label %.body209

.body209:                                         ; preds = %bb.by, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i220, %bb.bl
  %.pn98 = phi { ptr, i32 } [ %i.gw, %bb.bl ], [ %i.hp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i220 ], [ %i.hp, %bb.by ] ; 2 uses
  %i.hs = load ptr, ptr %29, align 8, !tbaa !55   ; 2 uses
  %i.ht = icmp eq ptr %i.hs, %i.fn
  br i1 %i.ht, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit225, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i223

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i223: ; preds = %.body209
  call void @_ZdlPv(ptr noundef %i.hs) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit225

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit225: ; preds = %.body209, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i223, %bb.bx
  %.pn98.pn = phi { ptr, i32 } [ %i.ho, %bb.bx ], [ %.pn98, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i223 ], [ %.pn98, %.body209 ] ; 2 uses
  %i.hu = load ptr, ptr %28, align 8, !tbaa !55   ; 2 uses
  %i.hv = icmp eq ptr %i.hu, %i.fl
  br i1 %i.hv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit228, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i226

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i226: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit225
  call void @_ZdlPv(ptr noundef %i.hu) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit228

bb.bz:                                            ; preds = %bb.bo, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit219
  %i.hw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit241

bb.ca:                                            ; preds = %bb.bp
  %i.hx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit238

bb.cb:                                            ; preds = %bb.ce, %bb.br, %bb.bq
  %i.hy = landingpad { ptr, i32 }
          cleanup
  br label %bb.cu

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit231.thread: ; preds = %bb.bt
  %i.hz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #23
  br label %bb.cd

bb.cc:                                            ; preds = %bb.bv, %bb.bu
  %.071 = phi i1 [ false, %bb.bv ], [ true, %bb.bu ] ; 2 uses
  %i.ia = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ib = load ptr, ptr %32, align 8, !tbaa !55   ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %32, i64 16
  %i.id = icmp eq ptr %i.ib, %i.ic
  br i1 %i.id, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit231, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i229

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i229: ; preds = %bb.cc
  call void @_ZdlPv(ptr noundef %i.ib) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #23
  br i1 %.071, label %bb.cd, label %bb.cu

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit231: ; preds = %bb.cc
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #23
  br i1 %.071, label %bb.cd, label %bb.cu

bb.cd:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i229, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit231.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit231
  %.pn102302 = phi { ptr, i32 } [ %i.hz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit231.thread ], [ %i.ia, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit231 ], [ %i.ia, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i229 ]
  call void @__cxa_free_exception(ptr %i.hm) #23
  br label %bb.cu

bb.ce:                                            ; preds = %bb.bs
  %i.ie = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %31)
          to label %bb.cf unwind label %bb.cb

bb.cf:                                            ; preds = %bb.ce
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 9
  %i.ig = load i8, ptr %i.if, align 1, !tbaa !357
  %i.ih = icmp eq i8 %i.ig, 31
  br i1 %i.ih, label %bb.cg, label %bb.cl

bb.cg:                                            ; preds = %bb.cf
  %i.ii = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %31)
          to label %bb.ch unwind label %bb.ck

bb.ch:                                            ; preds = %bb.cg
  %i.ij = invoke noundef nonnull align 8 dereferenceable(152) ptr @_ZN6duckdb14BaseExpression4CastINS_23BoundConstantExpressionEEERT_v(ptr noundef nonnull align 8 dereferenceable(56) %i.ii)
          to label %bb.ci unwind label %bb.ck

bb.ci:                                            ; preds = %bb.ch
  %i.ik = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0281.0349)
          to label %bb.cj unwind label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 16
  %i.im = getelementptr inbounds nuw i8, ptr %i.ij, i64 88
  invoke void @_ZNSt6vectorIN6duckdb12TypeArgumentESaIS1_EE12emplace_backIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS0_5ValueEEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %25, ptr noundef nonnull align 8 dereferenceable(32) %i.il, ptr noundef nonnull align 8 dereferenceable(64) %i.im)
          to label %bb.cq unwind label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ci, %bb.ch, %bb.cg
  %i.in = landingpad { ptr, i32 }
          cleanup
  br label %bb.cu

bb.cl:                                            ; preds = %bb.cf
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #23
  %i.io = load ptr, ptr %i.ah, align 8, !tbaa !42, !nonnull !40, !align !41
  %i.ip = invoke noundef nonnull align 8 dereferenceable(88) ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %31)
          to label %bb.cm unwind label %bb.cr

bb.cm:                                            ; preds = %bb.cl
  invoke void @_ZN6duckdb18ExpressionExecutor14EvaluateScalarERNS_13ClientContextERKNS_10ExpressionEb(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::Value") align 8 %34, ptr noundef nonnull align 8 dereferenceable(512) %i.io, ptr noundef nonnull align 8 dereferenceable(88) %i.ip, i1 noundef zeroext false)
          to label %bb.cn unwind label %bb.cr

bb.cn:                                            ; preds = %bb.cm
  %i.iq = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0281.0349)
          to label %bb.co unwind label %bb.cs

bb.co:                                            ; preds = %bb.cn
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 16
  invoke void @_ZNSt6vectorIN6duckdb12TypeArgumentESaIS1_EE12emplace_backIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS0_5ValueEEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %25, ptr noundef nonnull align 8 dereferenceable(32) %i.ir, ptr noundef nonnull align 8 dereferenceable(64) %34)
          to label %bb.cp unwind label %bb.cs

bb.cp:                                            ; preds = %bb.co
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %34) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #23
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cj, %bb.cp
  %i.is = load ptr, ptr %31, align 8, !tbaa !95   ; 3 uses
  %.not.i232 = icmp eq ptr %i.is, null
  br i1 %.not.i232, label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit234, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i233

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i233: ; preds = %bb.cq
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !83
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 8
  %i.iv = load ptr, ptr %i.iu, align 8
  call void %i.iv(ptr noundef nonnull align 8 dereferenceable(88) %i.is) #23, !inline_history !132
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit234

_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit234: ; preds = %bb.cq, %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i233
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #23
  %i.iw = load ptr, ptr %30, align 8, !tbaa !43   ; 3 uses
  %.not.i235 = icmp eq ptr %i.iw, null
  br i1 %.not.i235, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i: ; preds = %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit234
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !83
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 8
  %i.iz = load ptr, ptr %i.iy, align 8
  call void %i.iz(ptr noundef nonnull align 8 dereferenceable(56) %i.iw) #23, !inline_history !453
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit234, %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #23
  store ptr getelementptr inbounds nuw inrange(-16, 128) (i8, ptr @_ZTVN6duckdb14ConstantBinderE, i64 16), ptr %26, align 8, !tbaa !83
  %i.ja = load ptr, ptr %i.fs, align 8, !tbaa !55 ; 2 uses
  %i.jb = icmp eq ptr %i.ja, %i.ft
  br i1 %i.jb, label %_ZN6duckdb14ConstantBinderD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit
  call void @_ZdlPv(ptr noundef %i.ja) #25
  br label %_ZN6duckdb14ConstantBinderD2Ev.exit

_ZN6duckdb14ConstantBinderD2Ev.exit:              ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @_ZN6duckdb16ExpressionBinderD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(136) %26) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #23
  %i.jc = getelementptr inbounds nuw i8, ptr %.sroa.0281.0349, i64 8 ; 2 uses
  %.not308 = icmp eq ptr %i.jc, %i.fj
  br i1 %.not308, label %._crit_edge.loopexit, label %.noexc.i202

bb.cr:                                            ; preds = %bb.cm, %bb.cl
  %i.jd = landingpad { ptr, i32 }
          cleanup
  br label %bb.ct

bb.cs:                                            ; preds = %bb.co, %bb.cn
  %i.je = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %34) #23
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.cr
  %.pn104 = phi { ptr, i32 } [ %i.je, %bb.cs ], [ %i.jd, %bb.cr ]
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #23
  br label %bb.cu

bb.cu:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i229, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit231, %bb.cd, %bb.ct, %bb.ck, %bb.cb
  %.pn106 = phi { ptr, i32 } [ %i.in, %bb.ck ], [ %.pn104, %bb.ct ], [ %i.hy, %bb.cb ], [ %.pn102302, %bb.cd ], [ %i.ia, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit231 ], [ %i.ia, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i229 ] ; 2 uses
  %i.jf = load ptr, ptr %31, align 8, !tbaa !95   ; 3 uses
  %.not.i236 = icmp eq ptr %i.jf, null
  br i1 %.not.i236, label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit238, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i237

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i237: ; preds = %bb.cu
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !83
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 8
  %i.ji = load ptr, ptr %i.jh, align 8
  call void %i.ji(ptr noundef nonnull align 8 dereferenceable(88) %i.jf) #23, !inline_history !132
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit238

_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit238: ; preds = %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i237, %bb.cu, %bb.ca
  %.pn106.pn = phi { ptr, i32 } [ %i.hx, %bb.ca ], [ %.pn106, %bb.cu ], [ %.pn106, %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i237 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #23
  %i.jj = load ptr, ptr %30, align 8, !tbaa !43   ; 3 uses
  %.not.i239 = icmp eq ptr %i.jj, null
  br i1 %.not.i239, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit241, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i240

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i240: ; preds = %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit238
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !83
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 8
  %i.jm = load ptr, ptr %i.jl, align 8
  call void %i.jm(ptr noundef nonnull align 8 dereferenceable(56) %i.jj) #23, !inline_history !453
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit241

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit241: ; preds = %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i240, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit238, %bb.bz
  %.pn106.pn.pn = phi { ptr, i32 } [ %i.hw, %bb.bz ], [ %.pn106.pn, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit238 ], [ %.pn106.pn, %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i240 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #23
  call void @_ZN6duckdb14ConstantBinderD2Ev(ptr noundef nonnull align 8 dereferenceable(136) %26) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit228

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit228: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit225, %bb.bw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i226, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit241
  %.pn106.pn.pn.pn = phi { ptr, i32 } [ %.pn106.pn.pn, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit241 ], [ %i.hn, %bb.bw ], [ %.pn98.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i226 ], [ %.pn98.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit225 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #23
  br label %bb.di

bb.cv:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #23
  invoke void @_ZN6duckdb5Value4TYPEERKNS_11LogicalTypeE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::Value") align 8 %38, ptr noundef nonnull align 8 dereferenceable(24) %36)
          to label %bb.cw unwind label %bb.dd

bb.cw:                                            ; preds = %bb.cv
  call void @llvm.experimental.noalias.scope.decl(metadata !1301)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.jn = invoke noalias noundef nonnull dereferenceable(152) ptr @_Znwm(i64 noundef 152) #26
          to label %.noexc242 unwind label %bb.de ; 3 uses

.noexc242:                                        ; preds = %bb.cw
  call void @_ZN6duckdb5ValueC1EOS0_(ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull align 8 dereferenceable(64) %38) #23, !noalias !1301
  invoke void @_ZN6duckdb23BoundConstantExpressionC1ENS_5ValueE(ptr noundef nonnull align 8 dereferenceable(152) %i.jn, ptr noundef nonnull %4)
          to label %bb.cy unwind label %bb.cx, !noalias !1301

bb.cx:                                            ; preds = %.noexc242
  %i.jo = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %4) #23, !noalias !1301
  call void @_ZdlPv(ptr noundef nonnull %i.jn) #25, !noalias !1301
  br label %.body243

bb.cy:                                            ; preds = %.noexc242
  store ptr %i.jn, ptr %37, align 8, !tbaa !993, !alias.scope !1301
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %4) #23, !noalias !1301
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %38) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #23
  %i.jp = getelementptr inbounds nuw i8, ptr %2, i64 48
  %.sroa.0.0.copyload.i246 = load i64, ptr %i.jp, align 8, !tbaa !7
  %i.jq = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_23BoundConstantExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %37)
          to label %bb.cz unwind label %bb.dg

bb.cz:                                            ; preds = %bb.cy
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 48
  store i64 %.sroa.0.0.copyload.i246, ptr %i.jr, align 8, !tbaa !7
  %i.js = load ptr, ptr %37, align 8, !tbaa !993
  store ptr null, ptr %37, align 8, !tbaa !993
  %i.jt = ptrtoint ptr %i.js to i64
  store i64 %i.jt, ptr %0, align 8, !tbaa !95
  %i.ju = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void @_ZN6duckdb9ErrorDataC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %i.ju)
          to label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit255 unwind label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.jv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jw = load ptr, ptr %0, align 8, !tbaa !95    ; 3 uses
  %.not.i.i247 = icmp eq ptr %i.jw, null
  br i1 %.not.i.i247, label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit261, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i248

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i248: ; preds = %bb.da
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !83
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 8
  %i.jz = load ptr, ptr %i.jy, align 8
  call void %i.jz(ptr noundef nonnull align 8 dereferenceable(88) %i.jw) #23, !inline_history !351
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit261

_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit255: ; preds = %bb.cz
  %i.ka = load ptr, ptr %37, align 8, !tbaa !993  ; 3 uses
  %.not.i256 = icmp eq ptr %i.ka, null
  br i1 %.not.i256, label %_ZNSt10unique_ptrIN6duckdb23BoundConstantExpressionESt14default_deleteIS1_EED2Ev.exit258, label %_ZNKSt14default_deleteIN6duckdb23BoundConstantExpressionEEclEPS1_.exit.i257

_ZNKSt14default_deleteIN6duckdb23BoundConstantExpressionEEclEPS1_.exit.i257: ; preds = %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit255
  %i.kb = load ptr, ptr %i.ka, align 8, !tbaa !83
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 8
  %i.kd = load ptr, ptr %i.kc, align 8
  call void %i.kd(ptr noundef nonnull align 8 dereferenceable(152) %i.ka) #23, !inline_history !995
  br label %_ZNSt10unique_ptrIN6duckdb23BoundConstantExpressionESt14default_deleteIS1_EED2Ev.exit258

_ZNSt10unique_ptrIN6duckdb23BoundConstantExpressionESt14default_deleteIS1_EED2Ev.exit258: ; preds = %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit255, %_ZNKSt14default_deleteIN6duckdb23BoundConstantExpressionEEclEPS1_.exit.i257
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #23
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %36) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #23
  %i.ke = load ptr, ptr %25, align 8, !tbaa !1304 ; 3 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %25, i64 8
  %i.kg = load ptr, ptr %i.kf, align 8, !tbaa !1307 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.ke, %i.kg
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN6duckdb12TypeArgumentES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt10unique_ptrIN6duckdb23BoundConstantExpressionESt14default_deleteIS1_EED2Ev.exit258, %_ZSt8_DestroyIN6duckdb12TypeArgumentEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.kl, %_ZSt8_DestroyIN6duckdb12TypeArgumentEEvPT_.exit.i.i.i ], [ %i.ke, %_ZNSt10unique_ptrIN6duckdb23BoundConstantExpressionESt14default_deleteIS1_EED2Ev.exit258 ] ; 4 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.kh) #23
  %i.ki = load ptr, ptr %.05.i.i.i, align 8, !tbaa !55 ; 2 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.kk = icmp eq ptr %i.ki, %i.kj
  br i1 %i.kk, label %_ZSt8_DestroyIN6duckdb12TypeArgumentEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  call void @_ZdlPv(ptr noundef %i.ki) #25
  br label %_ZSt8_DestroyIN6duckdb12TypeArgumentEEvPT_.exit.i.i.i

_ZSt8_DestroyIN6duckdb12TypeArgumentEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.kl = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 96 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.kl, %i.kg
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN6duckdb12TypeArgumentES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !1308

_ZSt8_DestroyIPN6duckdb12TypeArgumentES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN6duckdb12TypeArgumentEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %25, align 8, !tbaa !1304
  br label %_ZSt8_DestroyIPN6duckdb12TypeArgumentES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6duckdb12TypeArgumentES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN6duckdb12TypeArgumentES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %_ZNSt10unique_ptrIN6duckdb23BoundConstantExpressionESt14default_deleteIS1_EED2Ev.exit258
  %i.km = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN6duckdb12TypeArgumentES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.ke, %_ZNSt10unique_ptrIN6duckdb23BoundConstantExpressionESt14default_deleteIS1_EED2Ev.exit258 ] ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.km, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN6duckdb12TypeArgumentESaIS1_EED2Ev.exit, label %bb.db

bb.db:                                            ; preds = %_ZSt8_DestroyIPN6duckdb12TypeArgumentES1_EvT_S3_RSaIT0_E.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.km) #25
  br label %_ZNSt6vectorIN6duckdb12TypeArgumentESaIS1_EED2Ev.exit

_ZNSt6vectorIN6duckdb12TypeArgumentESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6duckdb12TypeArgumentES1_EvT_S3_RSaIT0_E.exit.i, %bb.db
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #23
  br label %bb.dj

bb.dc:                                            ; preds = %._crit_edge
  %i.kn = landingpad { ptr, i32 }
          cleanup
  br label %bb.dh

bb.dd:                                            ; preds = %bb.cv
  %i.ko = landingpad { ptr, i32 }
          cleanup
  br label %bb.df

bb.de:                                            ; preds = %bb.cw
  %i.kp = landingpad { ptr, i32 }
          cleanup
  br label %.body243

.body243:                                         ; preds = %bb.cx, %bb.de
  %eh.lpad-body244 = phi { ptr, i32 } [ %i.kp, %bb.de ], [ %i.jo, %bb.cx ]
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %38) #23
  br label %bb.df

bb.df:                                            ; preds = %.body243, %bb.dd
  %.pn92 = phi { ptr, i32 } [ %eh.lpad-body244, %.body243 ], [ %i.ko, %bb.dd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #23
  br label %_ZNSt10unique_ptrIN6duckdb23BoundConstantExpressionESt14default_deleteIS1_EED2Ev.exit264

bb.dg:                                            ; preds = %bb.cy
  %i.kq = landingpad { ptr, i32 }
end_hunk_0
