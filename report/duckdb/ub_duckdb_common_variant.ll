inline.NumInlined: 1088
inline.NumDeleted: 543
begin_hunk_0_@_ZN6duckdbL12AnalyzeValueERKNS_12VariantValueEmRNS_9DataChunkE:bb.a
  store i32 %i.cu, ptr %i.r, align 4, !tbaa !3
  br label %.loopexit

bb.z:                                             ; preds = %bb.j
  %i.cv = load i32, ptr %i.r, align 4, !tbaa !3
  %i.cw = add i32 %i.cv, 8
  store i32 %i.cw, ptr %i.r, align 4, !tbaa !3
  br label %.loopexit

bb.aa:                                            ; preds = %bb.j
  %i.cx = load i32, ptr %i.r, align 4, !tbaa !3
  %i.cy = add i32 %i.cx, 8
  store i32 %i.cy, ptr %i.r, align 4, !tbaa !3
  br label %.loopexit

bb.ab:                                            ; preds = %bb.j
  %i.cz = load i32, ptr %i.r, align 4, !tbaa !3
  %i.da = add i32 %i.cz, 8
  store i32 %i.da, ptr %i.r, align 4, !tbaa !3
  br label %.loopexit

bb.ac:                                            ; preds = %bb.j
  %i.db = load i32, ptr %i.r, align 4, !tbaa !3
  %i.dc = add i32 %i.db, 8
  store i32 %i.dc, ptr %i.r, align 4, !tbaa !3
  br label %.loopexit

bb.ad:                                            ; preds = %bb.j
  %i.dd = load i32, ptr %i.r, align 4, !tbaa !3
  %i.de = add i32 %i.dd, 8
  store i32 %i.de, ptr %i.r, align 4, !tbaa !3
  br label %.loopexit

bb.ae:                                            ; preds = %bb.j
  %i.df = load i32, ptr %i.r, align 4, !tbaa !3
  %i.dg = add i32 %i.df, 8
  store i32 %i.dg, ptr %i.r, align 4, !tbaa !3
  br label %.loopexit

bb.af:                                            ; preds = %bb.j
  %i.dh = load i32, ptr %i.r, align 4, !tbaa !3
  %i.di = add i32 %i.dh, 16
  store i32 %i.di, ptr %i.r, align 4, !tbaa !3
  br label %.loopexit

bb.ag:                                            ; preds = %bb.j
  %i.dj = load i32, ptr %i.r, align 4, !tbaa !3
  %i.dk = add i32 %i.dj, 16
  store i32 %i.dk, ptr %i.r, align 4, !tbaa !3
  br label %.loopexit

bb.ah:                                            ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  %i.dl = call noundef zeroext i1 @_ZNK6duckdb11LogicalType20GetDecimalPropertiesERhS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.bp, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %i.b) ; 0 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 81
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !195 ; 2 uses
  %i.do = load i8, ptr %i.a, align 1, !tbaa !95
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ai, %bb.ah
  %.04.i127 = phi i8 [ %i.do, %bb.ah ], [ %i.dp, %bb.ai ] ; 2 uses
  %.0.i128 = phi i8 [ 0, %bb.ah ], [ %i.dq, %bb.ai ]
  %i.dp = lshr i8 %.04.i127, 7
  %i.dq = add nuw nsw i8 %.0.i128, 1              ; 2 uses
  %.not.i129 = icmp sgt i8 %.04.i127, -1
  br i1 %.not.i129, label %_ZN6duckdb13GetVarintSizeIhEEhT_.exit, label %bb.ai, !llvm.loop !196

_ZN6duckdb13GetVarintSizeIhEEhT_.exit:            ; preds = %bb.ai
  %i.dr = zext nneg i8 %i.dq to i32
  %i.ds = load i32, ptr %i.r, align 4, !tbaa !3
  %i.dt = add i32 %i.ds, %i.dr                    ; 2 uses
  store i32 %i.dt, ptr %i.r, align 4, !tbaa !3
  %i.du = load i8, ptr %i.b, align 1, !tbaa !95
  br label %bb.aj

bb.aj:                                            ; preds = %bb.aj, %_ZN6duckdb13GetVarintSizeIhEEhT_.exit
  %.04.i130 = phi i8 [ %i.du, %_ZN6duckdb13GetVarintSizeIhEEhT_.exit ], [ %i.dv, %bb.aj ] ; 2 uses
  %.0.i131 = phi i8 [ 0, %_ZN6duckdb13GetVarintSizeIhEEhT_.exit ], [ %i.dw, %bb.aj ]
  %i.dv = lshr i8 %.04.i130, 7
  %i.dw = add nuw nsw i8 %.0.i131, 1              ; 2 uses
  %.not.i132 = icmp sgt i8 %.04.i130, -1
  br i1 %.not.i132, label %_ZN6duckdb13GetVarintSizeIhEEhT_.exit133, label %bb.aj, !llvm.loop !196

_ZN6duckdb13GetVarintSizeIhEEhT_.exit133:         ; preds = %bb.aj
  %i.dx = zext nneg i8 %i.dw to i32
  %i.dy = add i32 %i.dt, %i.dx                    ; 2 uses
  store i32 %i.dy, ptr %i.r, align 4, !tbaa !3
  switch i8 %i.dn, label %bb.an [
    i8 5, label %bb.au
    i8 7, label %bb.ak
    i8 9, label %bb.al
    i8 -52, label %bb.am
  ]

bb.ak:                                            ; preds = %_ZN6duckdb13GetVarintSizeIhEEhT_.exit133
  br label %bb.au

bb.al:                                            ; preds = %_ZN6duckdb13GetVarintSizeIhEEhT_.exit133
  br label %bb.au

bb.am:                                            ; preds = %_ZN6duckdb13GetVarintSizeIhEEhT_.exit133
  br label %bb.au

bb.an:                                            ; preds = %_ZN6duckdb13GetVarintSizeIhEEhT_.exit133
  %i.dz = call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.6, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.ao unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136.thread

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  invoke void @_ZN6duckdb8EnumUtil8ToStringINS_12PhysicalTypeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, i8 noundef zeroext %i.dn)
          to label %bb.ap unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.ap:                                            ; preds = %bb.ao
  invoke void @_ZN6duckdb17InternalExceptionC2IJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERKS7_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.dz, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.aq unwind label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  invoke void @__cxa_throw(ptr nonnull %i.dz, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #22
          to label %bb.bo unwind label %bb.ar

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136.thread: ; preds = %bb.an
  %i.ea = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %.091 = phi i1 [ false, %bb.aq ], [ true, %bb.ap ] ; 2 uses
  %i.eb = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ec = load ptr, ptr %5, align 8, !tbaa !121   ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ee = icmp eq ptr %i.ec, %i.ed
  br i1 %i.ee, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.ar
  call void @_ZdlPv(ptr noundef %i.ec) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.ar, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  %i.ef = load ptr, ptr %3, align 8, !tbaa !121   ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.eh = icmp eq ptr %i.ef, %i.eg
  br i1 %i.eh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i134

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.ao
  %i.ei = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  %i.ej = load ptr, ptr %3, align 8, !tbaa !121   ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.el = icmp eq ptr %i.ej, %i.ek
  br i1 %i.el, label %.sink.split, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i134.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i134.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread
  call void @_ZdlPv(ptr noundef %i.ej) #23
  br label %.sink.split

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i134: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZdlPv(ptr noundef %i.ef) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br i1 %.091, label %bb.as, label %bb.at

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br i1 %.091, label %bb.as, label %bb.at

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i134.thread
  %.pn106.pn166.ph = phi { ptr, i32 } [ %i.ei, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i134.thread ], [ %i.ea, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136.thread ], [ %i.ei, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %bb.as

bb.as:                                            ; preds = %.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i134, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136
  %.pn106.pn166 = phi { ptr, i32 } [ %i.eb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i134 ], [ %i.eb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136 ], [ %.pn106.pn166.ph, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.dz) #21
  br label %bb.at

bb.at:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i134, %bb.as, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136
  %.pn106.pn165 = phi { ptr, i32 } [ %.pn106.pn166, %bb.as ], [ %i.eb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136 ], [ %i.eb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i134 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %bb.bn

bb.au:                                            ; preds = %_ZN6duckdb13GetVarintSizeIhEEhT_.exit133, %bb.am, %bb.al, %bb.ak
  %.sink238 = phi i32 [ 16, %bb.am ], [ 8, %bb.al ], [ 4, %bb.ak ], [ 2, %_ZN6duckdb13GetVarintSizeIhEEhT_.exit133 ]
  %i.em = add i32 %i.dy, %.sink238
  store i32 %i.em, ptr %i.r, align 4, !tbaa !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %.loopexit

bb.av:                                            ; preds = %bb.j, %bb.j, %bb.j, %bb.j, %bb.j
  %i.en = tail call { i64, ptr } @_ZNK6duckdb5Value14GetValueUnsafeINS_8string_tEEET_v(ptr noundef nonnull align 8 dereferenceable(64) %i.bp)
  %i.eo = extractvalue { i64, ptr } %i.en, 0      ; 5 uses
  %i.ep = and i64 %i.eo, 4294967168
  %.not.i139 = icmp eq i64 %i.ep, 0
  br i1 %.not.i139, label %_ZN6duckdb13GetVarintSizeImEEhT_.exit140, label %13

13:                                               ; preds = %bb.av
  %14 = and i64 %i.eo, 4294950912
  %.not.i139.1 = icmp eq i64 %14, 0
  br i1 %.not.i139.1, label %_ZN6duckdb13GetVarintSizeImEEhT_.exit140, label %15

15:                                               ; preds = %13
  %16 = and i64 %i.eo, 4292870144
  %.not.i139.2 = icmp eq i64 %16, 0
  br i1 %.not.i139.2, label %_ZN6duckdb13GetVarintSizeImEEhT_.exit140, label %bb.aw

bb.aw:                                            ; preds = %15
  %17 = and i64 %i.eo, 4026531840
  %.not.i139.3 = icmp eq i64 %17, 0
  %spec.select = select i1 %.not.i139.3, i32 4, i32 5
  br label %_ZN6duckdb13GetVarintSizeImEEhT_.exit140

_ZN6duckdb13GetVarintSizeImEEhT_.exit140:         ; preds = %bb.aw, %15, %13, %bb.av
  %.lcssa253 = phi i32 [ 1, %bb.av ], [ 2, %13 ], [ 3, %15 ], [ %spec.select, %bb.aw ]
  %.sroa.0.0.extract.trunc = trunc i64 %i.eo to i32
  %i.eq = load i32, ptr %i.r, align 4, !tbaa !3
  %i.er = add i32 %.lcssa253, %.sroa.0.0.extract.trunc
  %i.es = add i32 %i.er, %i.eq
  store i32 %i.es, ptr %i.r, align 4, !tbaa !3
  br label %.loopexit

bb.ax:                                            ; preds = %bb.j
  %i.et = tail call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.7, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.ay unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146.thread

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  invoke void @_ZNK6duckdb11LogicalType8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(24) %i.bp)
          to label %bb.az unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143.thread

bb.az:                                            ; preds = %bb.ay
  invoke void @_ZN6duckdb17InternalExceptionC2IJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERKS7_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.et, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.ba unwind label %bb.bb

bb.ba:                                            ; preds = %bb.az
  invoke void @__cxa_throw(ptr nonnull %i.et, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #22
          to label %bb.bo unwind label %bb.bb

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146.thread: ; preds = %bb.ax
  %i.eu = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split239

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %.089 = phi i1 [ false, %bb.ba ], [ true, %bb.az ] ; 2 uses
  %i.ev = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ew = load ptr, ptr %8, align 8, !tbaa !121   ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.ey = icmp eq ptr %i.ew, %i.ex
  br i1 %i.ey, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i141

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i141: ; preds = %bb.bb
  call void @_ZdlPv(ptr noundef %i.ew) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143: ; preds = %bb.bb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i141
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  %i.ez = load ptr, ptr %6, align 8, !tbaa !121   ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.fb = icmp eq ptr %i.ez, %i.fa
  br i1 %i.fb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143.thread: ; preds = %bb.ay
  %i.fc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  %i.fd = load ptr, ptr %6, align 8, !tbaa !121   ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ff = icmp eq ptr %i.fd, %i.fe
  br i1 %i.ff, label %.sink.split239, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143.thread
  call void @_ZdlPv(ptr noundef %i.fd) #23
  br label %.sink.split239

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143
  call void @_ZdlPv(ptr noundef %i.ez) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br i1 %.089, label %bb.bc, label %bb.bn

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br i1 %.089, label %bb.bc, label %bb.bn

.sink.split239:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144.thread
  %.pn109.pn178.ph = phi { ptr, i32 } [ %i.fc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144.thread ], [ %i.eu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146.thread ], [ %i.fc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br label %bb.bc

bb.bc:                                            ; preds = %.sink.split239, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146
  %.pn109.pn178 = phi { ptr, i32 } [ %i.ev, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144 ], [ %i.ev, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146 ], [ %.pn109.pn178.ph, %.sink.split239 ]
  call void @__cxa_free_exception(ptr %i.et) #21
  br label %bb.bn

bb.bd:                                            ; preds = %bb.a
  %i.fg = tail call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.8, ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.be unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149.thread

bb.be:                                            ; preds = %bb.bd
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.fg, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.bf unwind label %bb.bg

bb.bf:                                            ; preds = %bb.be
  invoke void @__cxa_throw(ptr nonnull %i.fg, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #22
          to label %bb.bo unwind label %bb.bg

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149.thread: ; preds = %bb.bd
  %i.fh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  br label %bb.bh

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %.087 = phi i1 [ false, %bb.bf ], [ true, %bb.be ] ; 2 uses
  %i.fi = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.fj = load ptr, ptr %9, align 8, !tbaa !121   ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.fl = icmp eq ptr %i.fj, %i.fk
  br i1 %i.fl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147: ; preds = %bb.bg
  call void @_ZdlPv(ptr noundef %i.fj) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  br i1 %.087, label %bb.bh, label %bb.bn

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149: ; preds = %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  br i1 %.087, label %bb.bh, label %bb.bn

bb.bh:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149
  %.pn190 = phi { ptr, i32 } [ %i.fh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149.thread ], [ %i.fi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149 ], [ %i.fi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147 ]
  call void @__cxa_free_exception(ptr %i.fg) #21
  br label %bb.bn

bb.bi:                                            ; preds = %bb.a
  %i.fm = tail call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @.str.9, ptr noundef nonnull align 1 dereferenceable(1) %12)
          to label %bb.bj unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152.thread

bb.bj:                                            ; preds = %bb.bi
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.fm, ptr noundef nonnull align 8 dereferenceable(32) %11)
          to label %bb.bk unwind label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  invoke void @__cxa_throw(ptr nonnull %i.fm, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #22
          to label %bb.bo unwind label %bb.bl

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152.thread: ; preds = %bb.bi
  %i.fn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  br label %bb.bm

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %.0 = phi i1 [ false, %bb.bk ], [ true, %bb.bj ] ; 2 uses
  %i.fo = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.fp = load ptr, ptr %11, align 8, !tbaa !121  ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.fr = icmp eq ptr %i.fp, %i.fq
  br i1 %i.fr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i150

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i150: ; preds = %bb.bl
  call void @_ZdlPv(ptr noundef %i.fp) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  br i1 %.0, label %bb.bm, label %bb.bn

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152: ; preds = %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  br i1 %.0, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i150, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152
  %.pn113193 = phi { ptr, i32 } [ %i.fn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152.thread ], [ %i.fo, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152 ], [ %i.fo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i150 ]
  call void @__cxa_free_exception(ptr %i.fm) #21
  br label %bb.bn

.loopexit:                                        ; preds = %.lr.ph, %.lr.ph210, %_ZN6duckdb13GetVarintSizeIjEEhT_.exit, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t, %bb.u, %bb.v, %bb.w, %bb.x, %bb.y, %bb.z, %bb.aa, %bb.ab, %bb.ac, %bb.ad, %bb.ae, %bb.af, %bb.ag, %bb.au, %_ZN6duckdb13GetVarintSizeImEEhT_.exit140, %bb.j, %bb.j, %_ZN6duckdb13GetVarintSizeImEEhT_.exit122, %_ZN6duckdb13GetVarintSizeImEEhT_.exit
  ret void

bb.bn:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i150, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144, %bb.at, %bb.bc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152, %bb.bm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149, %bb.bh
  %.pn113.pn = phi { ptr, i32 } [ %.pn113193, %bb.bm ], [ %i.fo, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152 ], [ %i.fi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149 ], [ %.pn190, %bb.bh ], [ %.pn109.pn178, %bb.bc ], [ %i.ev, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146 ], [ %.pn106.pn165, %bb.at ], [ %i.ev, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144 ], [ %i.fi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147 ], [ %i.fo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i150 ]
  resume { ptr, i32 } %.pn113.pn

bb.bo:                                            ; preds = %bb.bk, %bb.bf, %bb.ba, %bb.aq
  unreachable
}

declare noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb10ListVector8GetEntryERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104)) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(144) ptr @_ZN6duckdb12StringVector15GetStringBufferERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104)) local_unnamed_addr #1

declare void @_ZN6duckdb10FlatVector7SetNullERNS_6VectorEmb(ptr noundef nonnull align 8 dereferenceable(104), i64 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN6duckdbL12ConvertValueERKNS_12VariantValueERNS_17VariantVectorDataEmRNS_9DataChunkERNS_15SelectionVectorERNS_15OwningStringMapIjSt3mapINS_8string_tEjSt4lessISB_ESaISt4pairIKSB_jEEEEE(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(88) %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(72) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(60) %5) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"struct.std::pair.41", align 8     ; 6 uses
  %.sroa.4492 = alloca [12 x i8], align 4         ; 7 uses
end_hunk_0
begin_hunk_1_@_ZN6duckdbL12ConvertValueERKNS_12VariantValueERNS_17VariantVectorDataEmRNS_9DataChunkERNS_15SelectionVectorERNS_15OwningStringMapIjSt3mapINS_8string_tEjSt4lessISB_ESaISt4pairIKSB_jEEEEE:bb.a
  %i.oq = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.or = load ptr, ptr %i.oq, align 8, !tbaa !42
  %i.os = load i32, ptr %i.ai, align 4, !tbaa !3
  %i.ot = zext i32 %i.os to i64
  %i.ou = getelementptr i8, ptr %i.or, i64 %i.w
  %i.ov = getelementptr i8, ptr %i.ou, i64 %i.ot
  store i8 27, ptr %i.ov, align 1, !tbaa !95
  %i.ow = tail call i64 @_ZNK6duckdb5Value14GetValueUnsafeINS_14timestamp_tz_tEEET_v(ptr noundef nonnull align 8 dereferenceable(64) %i.hq)
  %i.ox = load i32, ptr %i.am, align 4, !tbaa !3
  %i.oy = zext i32 %i.ox to i64
  %i.oz = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.oy
  store i64 %i.ow, ptr %i.oz, align 1
  %i.pa = load i32, ptr %i.am, align 4, !tbaa !3
  %i.pb = add i32 %i.pa, 8
  store i32 %i.pb, ptr %i.am, align 4, !tbaa !3
  br label %bb.by

bb.am:                                            ; preds = %bb.t
  %i.pc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.pd = load ptr, ptr %i.pc, align 8, !tbaa !42
  %i.pe = load i32, ptr %i.ai, align 4, !tbaa !3
  %i.pf = zext i32 %i.pe to i64
  %i.pg = getelementptr i8, ptr %i.pd, i64 %i.w
  %i.ph = getelementptr i8, ptr %i.pg, i64 %i.pf
  store i8 24, ptr %i.ph, align 1, !tbaa !95
  %i.pi = tail call i64 @_ZNK6duckdb5Value14GetValueUnsafeINS_11timestamp_tEEET_v(ptr noundef nonnull align 8 dereferenceable(64) %i.hq)
  %i.pj = load i32, ptr %i.am, align 4, !tbaa !3
  %i.pk = zext i32 %i.pj to i64
  %i.pl = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.pk
  store i64 %i.pi, ptr %i.pl, align 1
  %i.pm = load i32, ptr %i.am, align 4, !tbaa !3
  %i.pn = add i32 %i.pm, 8
  store i32 %i.pn, ptr %i.am, align 4, !tbaa !3
  br label %bb.by

bb.an:                                            ; preds = %bb.t
  %i.po = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.pp = load ptr, ptr %i.po, align 8, !tbaa !42
  %i.pq = load i32, ptr %i.ai, align 4, !tbaa !3
  %i.pr = zext i32 %i.pq to i64
  %i.ps = getelementptr i8, ptr %i.pp, i64 %i.w
  %i.pt = getelementptr i8, ptr %i.ps, i64 %i.pr
  store i8 22, ptr %i.pt, align 1, !tbaa !95
  %i.pu = tail call i64 @_ZNK6duckdb5Value14GetValueUnsafeINS_15timestamp_sec_tEEET_v(ptr noundef nonnull align 8 dereferenceable(64) %i.hq)
  %i.pv = load i32, ptr %i.am, align 4, !tbaa !3
  %i.pw = zext i32 %i.pv to i64
  %i.px = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.pw
  store i64 %i.pu, ptr %i.px, align 1
  %i.py = load i32, ptr %i.am, align 4, !tbaa !3
  %i.pz = add i32 %i.py, 8
  store i32 %i.pz, ptr %i.am, align 4, !tbaa !3
  br label %bb.by

bb.ao:                                            ; preds = %bb.t
  %i.qa = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.qb = load ptr, ptr %i.qa, align 8, !tbaa !42
  %i.qc = load i32, ptr %i.ai, align 4, !tbaa !3
  %i.qd = zext i32 %i.qc to i64
  %i.qe = getelementptr i8, ptr %i.qb, i64 %i.w
  %i.qf = getelementptr i8, ptr %i.qe, i64 %i.qd
  store i8 23, ptr %i.qf, align 1, !tbaa !95
  %i.qg = tail call i64 @_ZNK6duckdb5Value14GetValueUnsafeINS_14timestamp_ms_tEEET_v(ptr noundef nonnull align 8 dereferenceable(64) %i.hq)
  %i.qh = load i32, ptr %i.am, align 4, !tbaa !3
  %i.qi = zext i32 %i.qh to i64
  %i.qj = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.qi
  store i64 %i.qg, ptr %i.qj, align 1
  %i.qk = load i32, ptr %i.am, align 4, !tbaa !3
  %i.ql = add i32 %i.qk, 8
  store i32 %i.ql, ptr %i.am, align 4, !tbaa !3
  br label %bb.by

bb.ap:                                            ; preds = %bb.t
  %i.qm = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.qn = load ptr, ptr %i.qm, align 8, !tbaa !42
  %i.qo = load i32, ptr %i.ai, align 4, !tbaa !3
  %i.qp = zext i32 %i.qo to i64
  %i.qq = getelementptr i8, ptr %i.qn, i64 %i.w
  %i.qr = getelementptr i8, ptr %i.qq, i64 %i.qp
  store i8 20, ptr %i.qr, align 1, !tbaa !95
  %i.qs = tail call i64 @_ZNK6duckdb5Value14GetValueUnsafeINS_7dtime_tEEET_v(ptr noundef nonnull align 8 dereferenceable(64) %i.hq)
  %i.qt = load i32, ptr %i.am, align 4, !tbaa !3
  %i.qu = zext i32 %i.qt to i64
  %i.qv = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.qu
  store i64 %i.qs, ptr %i.qv, align 1
  %i.qw = load i32, ptr %i.am, align 4, !tbaa !3
  %i.qx = add i32 %i.qw, 8
  store i32 %i.qx, ptr %i.am, align 4, !tbaa !3
  br label %bb.by

bb.aq:                                            ; preds = %bb.t
  %i.qy = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.qz = load ptr, ptr %i.qy, align 8, !tbaa !42
  %i.ra = load i32, ptr %i.ai, align 4, !tbaa !3
  %i.rb = zext i32 %i.ra to i64
  %i.rc = getelementptr i8, ptr %i.qz, i64 %i.w
  %i.rd = getelementptr i8, ptr %i.rc, i64 %i.rb
  store i8 21, ptr %i.rd, align 1, !tbaa !95
  %i.re = tail call i64 @_ZNK6duckdb5Value14GetValueUnsafeINS_10dtime_ns_tEEET_v(ptr noundef nonnull align 8 dereferenceable(64) %i.hq)
  %i.rf = load i32, ptr %i.am, align 4, !tbaa !3
  %i.rg = zext i32 %i.rf to i64
  %i.rh = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.rg
  store i64 %i.re, ptr %i.rh, align 1
  %i.ri = load i32, ptr %i.am, align 4, !tbaa !3
  %i.rj = add i32 %i.ri, 8
  store i32 %i.rj, ptr %i.am, align 4, !tbaa !3
  br label %bb.by

bb.ar:                                            ; preds = %bb.t
  %i.rk = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.rl = load ptr, ptr %i.rk, align 8, !tbaa !42
  %i.rm = load i32, ptr %i.ai, align 4, !tbaa !3
  %i.rn = zext i32 %i.rm to i64
  %i.ro = getelementptr i8, ptr %i.rl, i64 %i.w
  %i.rp = getelementptr i8, ptr %i.ro, i64 %i.rn
  store i8 26, ptr %i.rp, align 1, !tbaa !95
  %i.rq = tail call i64 @_ZNK6duckdb5Value14GetValueUnsafeINS_10dtime_tz_tEEET_v(ptr noundef nonnull align 8 dereferenceable(64) %i.hq)
  %i.rr = load i32, ptr %i.am, align 4, !tbaa !3
  %i.rs = zext i32 %i.rr to i64
  %i.rt = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.rs
  store i64 %i.rq, ptr %i.rt, align 1
  %i.ru = load i32, ptr %i.am, align 4, !tbaa !3
  %i.rv = add i32 %i.ru, 8
  store i32 %i.rv, ptr %i.am, align 4, !tbaa !3
  br label %bb.by

bb.as:                                            ; preds = %bb.t
  %i.rw = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.rx = load ptr, ptr %i.rw, align 8, !tbaa !42
  %i.ry = load i32, ptr %i.ai, align 4, !tbaa !3
  %i.rz = zext i32 %i.ry to i64
  %i.sa = getelementptr i8, ptr %i.rx, i64 %i.w
  %i.sb = getelementptr i8, ptr %i.sa, i64 %i.rz
  store i8 25, ptr %i.sb, align 1, !tbaa !95
  %i.sc = tail call i64 @_ZNK6duckdb5Value14GetValueUnsafeINS_14timestamp_ns_tEEET_v(ptr noundef nonnull align 8 dereferenceable(64) %i.hq)
  %i.sd = load i32, ptr %i.am, align 4, !tbaa !3
  %i.se = zext i32 %i.sd to i64
  %i.sf = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.se
  store i64 %i.sc, ptr %i.sf, align 1
  %i.sg = load i32, ptr %i.am, align 4, !tbaa !3
  %i.sh = add i32 %i.sg, 8
  store i32 %i.sh, ptr %i.am, align 4, !tbaa !3
  br label %bb.by

bb.at:                                            ; preds = %bb.t
  %i.si = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.sj = load ptr, ptr %i.si, align 8, !tbaa !42
  %i.sk = load i32, ptr %i.ai, align 4, !tbaa !3
  %i.sl = zext i32 %i.sk to i64
  %i.sm = getelementptr i8, ptr %i.sj, i64 %i.w
  %i.sn = getelementptr i8, ptr %i.sm, i64 %i.sl
  store i8 28, ptr %i.sn, align 1, !tbaa !95
  %i.so = tail call { i64, i64 } @_ZNK6duckdb5Value14GetValueUnsafeINS_10interval_tEEET_v(ptr noundef nonnull align 8 dereferenceable(64) %i.hq) ; 2 uses
  %i.sp = extractvalue { i64, i64 } %i.so, 0
  %i.sq = extractvalue { i64, i64 } %i.so, 1
  %i.sr = load i32, ptr %i.am, align 4, !tbaa !3
  %i.ss = zext i32 %i.sr to i64
  %i.st = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.ss ; 2 uses
  store i64 %i.sp, ptr %i.st, align 1
  %.sroa.4467.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.st, i64 8
  store i64 %i.sq, ptr %.sroa.4467.0..sroa_idx, align 1
  %i.su = load i32, ptr %i.am, align 4, !tbaa !3
  %i.sv = add i32 %i.su, 16
  store i32 %i.sv, ptr %i.am, align 4, !tbaa !3
  br label %bb.by

bb.au:                                            ; preds = %bb.t
  %i.sw = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.sx = load ptr, ptr %i.sw, align 8, !tbaa !42
  %i.sy = load i32, ptr %i.ai, align 4, !tbaa !3
  %i.sz = zext i32 %i.sy to i64
  %i.ta = getelementptr i8, ptr %i.sx, i64 %i.w
  %i.tb = getelementptr i8, ptr %i.ta, i64 %i.sz
  store i8 18, ptr %i.tb, align 1, !tbaa !95
  %i.tc = tail call { i64, i64 } @_ZNK6duckdb5Value14GetValueUnsafeINS_9hugeint_tEEET_v(ptr noundef nonnull align 8 dereferenceable(64) %i.hq) ; 2 uses
  %i.td = extractvalue { i64, i64 } %i.tc, 0
  %i.te = extractvalue { i64, i64 } %i.tc, 1
  %i.tf = load i32, ptr %i.am, align 4, !tbaa !3
  %i.tg = zext i32 %i.tf to i64
  %i.th = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.tg ; 2 uses
  store i64 %i.td, ptr %i.th, align 1
  %.sroa.4465.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.th, i64 8
  store i64 %i.te, ptr %.sroa.4465.0..sroa_idx, align 1
  %i.ti = load i32, ptr %i.am, align 4, !tbaa !3
  %i.tj = add i32 %i.ti, 16
  store i32 %i.tj, ptr %i.am, align 4, !tbaa !3
  br label %bb.by

bb.av:                                            ; preds = %bb.t
  %i.tk = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.tl = load ptr, ptr %i.tk, align 8, !tbaa !42
  %i.tm = load i32, ptr %i.ai, align 4, !tbaa !3
  %i.tn = zext i32 %i.tm to i64
  %i.to = getelementptr i8, ptr %i.tl, i64 %i.w
  %i.tp = getelementptr i8, ptr %i.to, i64 %i.tn
  store i8 15, ptr %i.tp, align 1, !tbaa !95
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  %i.tq = call noundef zeroext i1 @_ZNK6duckdb11LogicalType20GetDecimalPropertiesERhS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.hq, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %i.b) ; 0 uses
  %i.tr = getelementptr inbounds nuw i8, ptr %0, i64 81
  %i.ts = load i8, ptr %i.tr, align 1, !tbaa !195 ; 2 uses
  %16 = load i32, ptr %i.am, align 4, !tbaa !3
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds nuw i8, ptr %i.k, i64 %17 ; 2 uses
  %19 = load i8, ptr %i.a, align 1, !tbaa !95     ; 2 uses
  %.not.i421 = icmp sgt i8 %19, -1
  store i8 %19, ptr %18, align 1, !tbaa !95
  br i1 %.not.i421, label %_ZN6duckdb12VarintEncodeIjEEmT_Ph.exit424, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %20 = getelementptr inbounds nuw i8, ptr %18, i64 1
  store i8 1, ptr %20, align 1, !tbaa !95
  br label %_ZN6duckdb12VarintEncodeIjEEmT_Ph.exit424

_ZN6duckdb12VarintEncodeIjEEmT_Ph.exit424:        ; preds = %bb.aw, %bb.av
  %i.tt = load i8, ptr %i.a, align 1, !tbaa !95
  br label %bb.ax

bb.ax:                                            ; preds = %bb.ax, %_ZN6duckdb12VarintEncodeIjEEmT_Ph.exit424
  %.04.i425 = phi i8 [ %i.tt, %_ZN6duckdb12VarintEncodeIjEEmT_Ph.exit424 ], [ %i.tu, %bb.ax ] ; 2 uses
  %.0.i426 = phi i8 [ 0, %_ZN6duckdb12VarintEncodeIjEEmT_Ph.exit424 ], [ %i.tv, %bb.ax ]
  %i.tu = lshr i8 %.04.i425, 7
  %i.tv = add nuw nsw i8 %.0.i426, 1              ; 2 uses
  %.not.i427 = icmp sgt i8 %.04.i425, -1
  br i1 %.not.i427, label %_ZN6duckdb13GetVarintSizeIhEEhT_.exit, label %bb.ax, !llvm.loop !196

_ZN6duckdb13GetVarintSizeIhEEhT_.exit:            ; preds = %bb.ax
  %i.tw = zext nneg i8 %i.tv to i32
  %i.tx = load i32, ptr %i.am, align 4, !tbaa !3
  %i.ty = add i32 %i.tx, %i.tw                    ; 2 uses
  store i32 %i.ty, ptr %i.am, align 4, !tbaa !3
  %21 = zext i32 %i.ty to i64
  %22 = getelementptr inbounds nuw i8, ptr %i.k, i64 %21 ; 2 uses
  %23 = load i8, ptr %i.b, align 1, !tbaa !95     ; 2 uses
  %.not.i431 = icmp sgt i8 %23, -1
  store i8 %23, ptr %22, align 1, !tbaa !95
  br i1 %.not.i431, label %_ZN6duckdb12VarintEncodeIjEEmT_Ph.exit434, label %bb.ay

bb.ay:                                            ; preds = %_ZN6duckdb13GetVarintSizeIhEEhT_.exit
  %24 = getelementptr inbounds nuw i8, ptr %22, i64 1
  store i8 1, ptr %24, align 1, !tbaa !95
  br label %_ZN6duckdb12VarintEncodeIjEEmT_Ph.exit434

_ZN6duckdb12VarintEncodeIjEEmT_Ph.exit434:        ; preds = %bb.ay, %_ZN6duckdb13GetVarintSizeIhEEhT_.exit
  %i.tz = load i8, ptr %i.b, align 1, !tbaa !95
  br label %bb.az

bb.az:                                            ; preds = %bb.az, %_ZN6duckdb12VarintEncodeIjEEmT_Ph.exit434
  %.04.i435 = phi i8 [ %i.tz, %_ZN6duckdb12VarintEncodeIjEEmT_Ph.exit434 ], [ %i.ua, %bb.az ] ; 2 uses
  %.0.i436 = phi i8 [ 0, %_ZN6duckdb12VarintEncodeIjEEmT_Ph.exit434 ], [ %i.ub, %bb.az ]
  %i.ua = lshr i8 %.04.i435, 7
  %i.ub = add nuw nsw i8 %.0.i436, 1              ; 2 uses
  %.not.i437 = icmp sgt i8 %.04.i435, -1
  br i1 %.not.i437, label %_ZN6duckdb13GetVarintSizeIhEEhT_.exit438, label %bb.az, !llvm.loop !196

_ZN6duckdb13GetVarintSizeIhEEhT_.exit438:         ; preds = %bb.az
  %i.uc = zext nneg i8 %i.ub to i32
  %i.ud = load i32, ptr %i.am, align 4, !tbaa !3
  %i.ue = add i32 %i.ud, %i.uc
  store i32 %i.ue, ptr %i.am, align 4, !tbaa !3
  switch i8 %i.ts, label %bb.be [
    i8 5, label %bb.ba
    i8 7, label %bb.bb
    i8 9, label %bb.bc
    i8 -52, label %bb.bd
  ]

bb.ba:                                            ; preds = %_ZN6duckdb13GetVarintSizeIhEEhT_.exit438
  %i.uf = call noundef signext i16 @_ZNK6duckdb5Value14GetValueUnsafeIsEET_v(ptr noundef nonnull align 8 dereferenceable(64) %i.hq)
  %i.ug = load i32, ptr %i.am, align 4, !tbaa !3
  %i.uh = zext i32 %i.ug to i64
  %i.ui = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.uh
  store i16 %i.uf, ptr %i.ui, align 1
  br label %bb.bl

bb.bb:                                            ; preds = %_ZN6duckdb13GetVarintSizeIhEEhT_.exit438
  %i.uj = call noundef i32 @_ZNK6duckdb5Value14GetValueUnsafeIiEET_v(ptr noundef nonnull align 8 dereferenceable(64) %i.hq)
  %i.uk = load i32, ptr %i.am, align 4, !tbaa !3
  %i.ul = zext i32 %i.uk to i64
  %i.um = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.ul
  store i32 %i.uj, ptr %i.um, align 1
  br label %bb.bl

bb.bc:                                            ; preds = %_ZN6duckdb13GetVarintSizeIhEEhT_.exit438
  %i.un = call noundef i64 @_ZNK6duckdb5Value14GetValueUnsafeIlEET_v(ptr noundef nonnull align 8 dereferenceable(64) %i.hq)
  %i.uo = load i32, ptr %i.am, align 4, !tbaa !3
  %i.up = zext i32 %i.uo to i64
  %i.uq = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.up
  store i64 %i.un, ptr %i.uq, align 1
  br label %bb.bl

bb.bd:                                            ; preds = %_ZN6duckdb13GetVarintSizeIhEEhT_.exit438
  %i.ur = call { i64, i64 } @_ZNK6duckdb5Value14GetValueUnsafeINS_9hugeint_tEEET_v(ptr noundef nonnull align 8 dereferenceable(64) %i.hq) ; 2 uses
  %i.us = extractvalue { i64, i64 } %i.ur, 0
  %i.ut = extractvalue { i64, i64 } %i.ur, 1
  %i.uu = load i32, ptr %i.am, align 4, !tbaa !3
  %i.uv = zext i32 %i.uu to i64
  %i.uw = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.uv ; 2 uses
  store i64 %i.us, ptr %i.uw, align 1
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.uw, i64 8
  store i64 %i.ut, ptr %.sroa.4.0..sroa_idx, align 1
  br label %bb.bl

bb.be:                                            ; preds = %_ZN6duckdb13GetVarintSizeIhEEhT_.exit438
  %i.ux = call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.6, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.bf unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit441.thread

bb.bf:                                            ; preds = %bb.be
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  invoke void @_ZN6duckdb8EnumUtil8ToStringINS_12PhysicalTypeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, i8 noundef zeroext %i.ts)
          to label %bb.bg unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.bg:                                            ; preds = %bb.bf
  invoke void @_ZN6duckdb17InternalExceptionC2IJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERKS7_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.ux, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.bh unwind label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  invoke void @__cxa_throw(ptr nonnull %i.ux, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #22
          to label %bb.cf unwind label %bb.bi

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit441.thread: ; preds = %bb.be
  %i.uy = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %.0359 = phi i1 [ false, %bb.bh ], [ true, %bb.bg ] ; 2 uses
  %i.uz = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.va = load ptr, ptr %9, align 8, !tbaa !121   ; 2 uses
  %i.vb = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.vc = icmp eq ptr %i.va, %i.vb
  br i1 %i.vc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.bi
  call void @_ZdlPv(ptr noundef %i.va) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.bi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  %i.vd = load ptr, ptr %7, align 8, !tbaa !121   ; 2 uses
  %i.ve = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.vf = icmp eq ptr %i.vd, %i.ve
  br i1 %i.vf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit441, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i439

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.bf
  %i.vg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  %i.vh = load ptr, ptr %7, align 8, !tbaa !121   ; 2 uses
  %i.vi = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.vj = icmp eq ptr %i.vh, %i.vi
  br i1 %i.vj, label %.sink.split, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i439.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i439.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread
  call void @_ZdlPv(ptr noundef %i.vh) #23
  br label %.sink.split

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i439: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZdlPv(ptr noundef %i.vd) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  br i1 %.0359, label %bb.bj, label %bb.bk

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit441: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  br i1 %.0359, label %bb.bj, label %bb.bk

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit441.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i439.thread
  %.pn.pn497.ph = phi { ptr, i32 } [ %i.vg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i439.thread ], [ %i.uy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit441.thread ], [ %i.vg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  br label %bb.bj

bb.bj:                                            ; preds = %.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i439, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit441
  %.pn.pn497 = phi { ptr, i32 } [ %i.uz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i439 ], [ %i.uz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit441 ], [ %.pn.pn497.ph, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.ux) #21
  br label %bb.bk

bb.bk:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i439, %bb.bj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit441
  %.pn.pn496 = phi { ptr, i32 } [ %.pn.pn497, %bb.bj ], [ %i.uz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit441 ], [ %i.uz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i439 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %bb.ce

bb.bl:                                            ; preds = %bb.bd, %bb.bc, %bb.bb, %bb.ba
  %.sink565 = phi i32 [ 16, %bb.bd ], [ 8, %bb.bc ], [ 4, %bb.bb ], [ 2, %bb.ba ]
  %i.vk = load i32, ptr %i.am, align 4, !tbaa !3
  %i.vl = add i32 %i.vk, %.sink565
  store i32 %i.vl, ptr %i.am, align 4, !tbaa !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %bb.by

bb.bm:                                            ; preds = %bb.t
  br label %bb.bq

bb.bn:                                            ; preds = %bb.t
  br label %bb.bq

bb.bo:                                            ; preds = %bb.t
  br label %bb.bq

bb.bp:                                            ; preds = %bb.t
  br label %bb.bq

bb.bq:                                            ; preds = %bb.t, %bb.bm, %bb.bo, %bb.bp, %bb.bn
  %.sink = phi i8 [ 31, %bb.bm ], [ 33, %bb.bo ], [ 16, %bb.bp ], [ 32, %bb.bn ], [ 17, %bb.t ]
  %i.vm = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.vn = load ptr, ptr %i.vm, align 8, !tbaa !42
  %i.vo = load i32, ptr %i.ai, align 4, !tbaa !3
  %i.vp = zext i32 %i.vo to i64
  %i.vq = getelementptr i8, ptr %i.vn, i64 %i.w
  %i.vr = getelementptr i8, ptr %i.vq, i64 %i.vp
  store i8 %.sink, ptr %i.vr, align 1, !tbaa !95
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  %i.vs = tail call { i64, ptr } @_ZNK6duckdb5Value14GetValueUnsafeINS_8string_tEEET_v(ptr noundef nonnull align 8 dereferenceable(64) %i.hq) ; 2 uses
  %i.vt = extractvalue { i64, ptr } %i.vs, 0      ; 7 uses
  store i64 %i.vt, ptr %10, align 8
  %i.vu = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.vv = extractvalue { i64, ptr } %i.vs, 1      ; 2 uses
  store ptr %i.vv, ptr %i.vu, align 8
  %i.vw = trunc i64 %i.vt to i32                  ; 2 uses
  %i.vx = load i32, ptr %i.am, align 4, !tbaa !3
  %i.vy = zext i32 %i.vx to i64
  %i.vz = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.vy
  br label %bb.br

bb.br:                                            ; preds = %bb.br, %bb.bq
  %.011.i442 = phi i32 [ %i.vw, %bb.bq ], [ %i.wc, %bb.br ] ; 2 uses
  %.010.i443 = phi ptr [ %i.vz, %bb.bq ], [ %i.wd, %bb.br ] ; 2 uses
  %i.wa = trunc i32 %.011.i442 to i8
  %i.wb = and i8 %i.wa, 127
  %i.wc = lshr i32 %.011.i442, 7                  ; 2 uses
  %.not.i445 = icmp eq i32 %i.wc, 0               ; 2 uses
  %masksel.i446 = select i1 %.not.i445, i8 0, i8 -128
  %.0.i447 = or disjoint i8 %masksel.i446, %i.wb
  store i8 %.0.i447, ptr %.010.i443, align 1, !tbaa !95
  %i.wd = getelementptr inbounds nuw i8, ptr %.010.i443, i64 1
  br i1 %.not.i445, label %_ZN6duckdb12VarintEncodeIjEEmT_Ph.exit448.preheader, label %bb.br, !llvm.loop !197

_ZN6duckdb12VarintEncodeIjEEmT_Ph.exit448.preheader: ; preds = %bb.br
  %25 = and i64 %i.vt, 4294967295
  %.mask = and i64 %i.vt, 4294967168
  %.not.i451 = icmp eq i64 %.mask, 0
  br i1 %.not.i451, label %_ZN6duckdb13GetVarintSizeImEEhT_.exit452, label %_ZN6duckdb12VarintEncodeIjEEmT_Ph.exit448.1

_ZN6duckdb12VarintEncodeIjEEmT_Ph.exit448.1:      ; preds = %_ZN6duckdb12VarintEncodeIjEEmT_Ph.exit448.preheader
  %.mask587 = and i64 %i.vt, 4294950912
  %.not.i451.1 = icmp eq i64 %.mask587, 0
  br i1 %.not.i451.1, label %_ZN6duckdb13GetVarintSizeImEEhT_.exit452, label %_ZN6duckdb12VarintEncodeIjEEmT_Ph.exit448.preheader.a

_ZN6duckdb12VarintEncodeIjEEmT_Ph.exit448.preheader.a: ; preds = %_ZN6duckdb12VarintEncodeIjEEmT_Ph.exit448.1
  %i.we = and i64 %i.vt, 4292870144
  %.not.i451.2 = icmp eq i64 %i.we, 0
  br i1 %.not.i451.2, label %_ZN6duckdb13GetVarintSizeImEEhT_.exit452, label %_ZN6duckdb12VarintEncodeIjEEmT_Ph.exit448

_ZN6duckdb12VarintEncodeIjEEmT_Ph.exit448:        ; preds = %_ZN6duckdb12VarintEncodeIjEEmT_Ph.exit448.preheader.a
  %.mask589 = and i64 %i.vt, 4026531840
  %.not.i451.3 = icmp eq i64 %.mask589, 0
  %spec.select = select i1 %.not.i451.3, i32 4, i32 5
  br label %_ZN6duckdb13GetVarintSizeImEEhT_.exit452

_ZN6duckdb13GetVarintSizeImEEhT_.exit452:         ; preds = %_ZN6duckdb12VarintEncodeIjEEmT_Ph.exit448, %_ZN6duckdb12VarintEncodeIjEEmT_Ph.exit448.preheader.a, %_ZN6duckdb12VarintEncodeIjEEmT_Ph.exit448.1, %_ZN6duckdb12VarintEncodeIjEEmT_Ph.exit448.preheader
  %.lcssa586 = phi i32 [ 1, %_ZN6duckdb12VarintEncodeIjEEmT_Ph.exit448.preheader ], [ 2, %_ZN6duckdb12VarintEncodeIjEEmT_Ph.exit448.1 ], [ 3, %_ZN6duckdb12VarintEncodeIjEEmT_Ph.exit448.preheader.a ], [ %spec.select, %_ZN6duckdb12VarintEncodeIjEEmT_Ph.exit448 ]
  %i.wf = load i32, ptr %i.am, align 4, !tbaa !3
  %i.wg = add i32 %i.wf, %.lcssa586               ; 2 uses
  store i32 %i.wg, ptr %i.am, align 4, !tbaa !3
  %i.wh = zext i32 %i.wg to i64
  %i.wi = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.wh
  %i.wj = load i32, ptr %10, align 8, !tbaa !95
  %i.wk = icmp ult i32 %i.wj, 13
  %i.wl = getelementptr inbounds nuw i8, ptr %10, i64 4
  %i.wm = select i1 %i.wk, ptr %i.wl, ptr %i.vv
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.wi, ptr align 1 %i.wm, i64 %25, i1 false)
  %i.wn = load i32, ptr %i.am, align 4, !tbaa !3
  %i.wo = add i32 %i.wn, %i.vw
  store i32 %i.wo, ptr %i.am, align 4, !tbaa !3
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  br label %bb.by

bb.bs:                                            ; preds = %bb.t
  %i.wp = tail call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @.str.14, ptr noundef nonnull align 1 dereferenceable(1) %12)
          to label %bb.bt unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit458.thread

bb.bt:                                            ; preds = %bb.bs
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #21
  invoke void @_ZNK6duckdb11LogicalType8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr noundef nonnull align 8 dereferenceable(24) %i.hq)
          to label %bb.bu unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit455.thread

bb.bu:                                            ; preds = %bb.bt
  invoke void @_ZN6duckdb17InternalExceptionC2IJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERKS7_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.wp, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %13)
          to label %bb.bv unwind label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  invoke void @__cxa_throw(ptr nonnull %i.wp, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #22
          to label %bb.cf unwind label %bb.bw

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit458.thread: ; preds = %bb.bs
  %i.wq = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split572

bb.bw:                                            ; preds = %bb.bv, %bb.bu
  %.0356 = phi i1 [ false, %bb.bv ], [ true, %bb.bu ] ; 2 uses
  %i.wr = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ws = load ptr, ptr %13, align 8, !tbaa !121  ; 2 uses
  %i.wt = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.wu = icmp eq ptr %i.ws, %i.wt
  br i1 %i.wu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit455, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i453

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i453: ; preds = %bb.bw
  call void @_ZdlPv(ptr noundef %i.ws) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit455

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit455: ; preds = %bb.bw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i453
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #21
  %i.wv = load ptr, ptr %11, align 8, !tbaa !121  ; 2 uses
  %i.ww = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.wx = icmp eq ptr %i.wv, %i.ww
  br i1 %i.wx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit458, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i456

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit455.thread: ; preds = %bb.bt
  %i.wy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #21
  %i.wz = load ptr, ptr %11, align 8, !tbaa !121  ; 2 uses
  %i.xa = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.xb = icmp eq ptr %i.wz, %i.xa
  br i1 %i.xb, label %.sink.split572, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i456.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i456.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit455.thread
  call void @_ZdlPv(ptr noundef %i.wz) #23
  br label %.sink.split572

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i456: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit455
  call void @_ZdlPv(ptr noundef %i.wv) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  br i1 %.0356, label %bb.bx, label %bb.ce

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit458: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit455
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  br i1 %.0356, label %bb.bx, label %bb.ce

.sink.split572:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit455.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit458.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i456.thread
  %.pn376.pn509.ph = phi { ptr, i32 } [ %i.wy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i456.thread ], [ %i.wq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit458.thread ], [ %i.wy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit455.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  br label %bb.bx

bb.bx:                                            ; preds = %.sink.split572, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i456, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit458
  %.pn376.pn509 = phi { ptr, i32 } [ %i.wr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i456 ], [ %i.wr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit458 ], [ %.pn376.pn509.ph, %.sink.split572 ]
  call void @__cxa_free_exception(ptr %i.wp) #21
  br label %bb.ce

bb.by:                                            ; preds = %bb.v, %bb.w, %_ZN6duckdb13GetVarintSizeImEEhT_.exit452, %bb.bl, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x
  %i.xc = load i32, ptr %i.ai, align 4, !tbaa !3
  %i.xd = add i32 %i.xc, 1
  store i32 %i.xd, ptr %i.ai, align 4, !tbaa !3
  br label %.loopexit

bb.bz:                                            ; preds = %bb.a
  %i.xe = tail call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull @.str.9, ptr noundef nonnull align 1 dereferenceable(1) %15)
          to label %bb.ca unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit461.thread

bb.ca:                                            ; preds = %bb.bz
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.xe, ptr noundef nonnull align 8 dereferenceable(32) %14)
          to label %bb.cb unwind label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  invoke void @__cxa_throw(ptr nonnull %i.xe, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #22
          to label %bb.cf unwind label %bb.cc

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit461.thread: ; preds = %bb.bz
  %i.xf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #21
  br label %bb.cd

bb.cc:                                            ; preds = %bb.cb, %bb.ca
  %.0 = phi i1 [ false, %bb.cb ], [ true, %bb.ca ] ; 2 uses
  %i.xg = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.xh = load ptr, ptr %14, align 8, !tbaa !121  ; 2 uses
  %i.xi = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.xj = icmp eq ptr %i.xh, %i.xi
  br i1 %i.xj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit461, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i459

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i459: ; preds = %bb.cc
  call void @_ZdlPv(ptr noundef %i.xh) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #21
  br i1 %.0, label %bb.cd, label %bb.ce

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit461: ; preds = %bb.cc
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #21
  br i1 %.0, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i459, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit461.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit461
  %.pn380521 = phi { ptr, i32 } [ %i.xf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit461.thread ], [ %i.xg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit461 ], [ %i.xg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i459 ]
  call void @__cxa_free_exception(ptr %i.xe) #21
  br label %bb.ce

.loopexit:                                        ; preds = %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit, %_ZN6duckdb8string_tC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZN6duckdb13GetVarintSizeIjEEhT_.exit416, %_ZN6duckdb13GetVarintSizeIjEEhT_.exit, %_ZN6duckdb13GetVarintSizeImEEhT_.exit405, %_ZN6duckdb13GetVarintSizeImEEhT_.exit, %bb.by
  ret void

bb.ce:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i459, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i456, %bb.bk, %bb.bx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit458, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit461, %bb.cd
  %.pn380.pn = phi { ptr, i32 } [ %.pn380521, %bb.cd ], [ %i.xg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit461 ], [ %.pn376.pn509, %bb.bx ], [ %i.wr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit458 ], [ %.pn.pn496, %bb.bk ], [ %i.wr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i456 ], [ %i.xg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i459 ]
  resume { ptr, i32 } %.pn380.pn

bb.cf:                                            ; preds = %bb.cb, %bb.bv, %bb.bh
  unreachable
}

declare void @_ZN6duckdb12VariantUtils19FinalizeVariantKeysERNS_6VectorERNS_15OwningStringMapIjSt3mapINS_8string_tEjSt4lessIS5_ESaISt4pairIKS5_jEEEEERNS_15SelectionVectorEm(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef nonnull align 8 dereferenceable(60), ptr noundef nonnull align 8 dereferenceable(24), i64 noundef) local_unnamed_addr #1

declare void @_ZN6duckdb6Vector5SliceERKNS_15SelectionVectorEm(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef nonnull align 8 dereferenceable(24), i64 noundef) local_unnamed_addr #1

declare void @_ZN6duckdb6Vector7FlattenEm(ptr noundef nonnull align 8 dereferenceable(104), i64 noundef) local_unnamed_addr #1

declare void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104), i8 noundef zeroext) local_unnamed_addr #1

declare void @_ZN6duckdb6Vector6VerifyEm(ptr noundef nonnull align 8 dereferenceable(104), i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN6duckdb9DataChunkD1Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72)) unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb15OwningStringMapIjSt3mapINS_8string_tEjSt4lessIS2_ESaISt4pairIKS2_jEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(60) dereferenceable(60) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !180
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %.loopexit.i

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !131  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not7.i = icmp eq ptr %i.e, %i.f
  br i1 %.not7.i, label %.loopexit.i, label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %bb.b, %_ZNK6duckdb15OwningStringMapIjSt3mapINS_8string_tEjSt4lessIS2_ESaISt4pairIKS2_jEEEE13DestroyStringERS6_.exit.i
  %.sroa.04.08.i = phi ptr [ %i.o, %_ZNK6duckdb15OwningStringMapIjSt3mapINS_8string_tEjSt4lessIS2_ESaISt4pairIKS2_jEEEE13DestroyStringERS6_.exit.i ], [ %i.e, %bb.b ] ; 3 uses
  %i.g = load i32, ptr %i.a, align 8, !tbaa !180
  %.not.i.i = icmp eq i32 %i.g, 0
  br i1 %.not.i.i, label %bb.c, label %_ZNK6duckdb15OwningStringMapIjSt3mapINS_8string_tEjSt4lessIS2_ESaISt4pairIKS2_jEEEE13DestroyStringERS6_.exit.i

bb.c:                                             ; preds = %.lr.ph.split.i
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !95   ; 2 uses
  %i.j = icmp ult i32 %i.i, 13
  br i1 %i.j, label %_ZNK6duckdb15OwningStringMapIjSt3mapINS_8string_tEjSt4lessIS2_ESaISt4pairIKS2_jEEEE13DestroyStringERS6_.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = load ptr, ptr %0, align 8, !tbaa !137, !nonnull !49, !align !50
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i, i64 40
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = zext i32 %i.i to i64
  invoke void @_ZN6duckdb9Allocator8FreeDataEPhm(ptr noundef nonnull align 8 dereferenceable(32) %i.k, ptr noundef %i.m, i64 noundef %i.n)
          to label %_ZNK6duckdb15OwningStringMapIjSt3mapINS_8string_tEjSt4lessIS2_ESaISt4pairIKS2_jEEEE13DestroyStringERS6_.exit.i unwind label %bb.h

_ZNK6duckdb15OwningStringMapIjSt3mapINS_8string_tEjSt4lessIS2_ESaISt4pairIKS2_jEEEE13DestroyStringERS6_.exit.i: ; preds = %bb.d, %bb.c, %.lr.ph.split.i
  %i.o = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %.sroa.04.08.i) #26 ; 2 uses
end_hunk_1
