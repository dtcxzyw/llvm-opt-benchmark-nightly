inline.NumInlined: 2962
inline.NumDeleted: 1077
begin_hunk_0_@_ZN6duckdb11Transformer22TransformSampleOptionsENS_12optional_ptrIN17duckdb_libpgquery6PGNodeELb1EEE:bb.a

bb.ad:                                            ; preds = %bb.ca, %bb.v
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %bb.ce

bb.ae:                                            ; preds = %bb.aj, %bb.x
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65.thread: ; preds = %bb.z
  %i.ar = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  br label %bb.ag

bb.af:                                            ; preds = %bb.ab, %bb.aa
  %.020 = phi i1 [ false, %bb.ab ], [ true, %bb.aa ] ; 2 uses
  %i.as = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.at = load ptr, ptr %11, align 8, !tbaa !26   ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63: ; preds = %bb.af
  call void @_ZdlPv(ptr noundef %i.at) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  br i1 %.020, label %bb.ag, label %bb.ao

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65: ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  br i1 %.020, label %bb.ag, label %bb.ao

bb.ag:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65
  %.pn5189 = phi { ptr, i32 } [ %i.ar, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65.thread ], [ %i.as, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65 ], [ %i.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63 ]
  call void @__cxa_free_exception(ptr %i.an) #19
  br label %bb.ao

bb.ah:                                            ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #19
  invoke void @_ZN6duckdb5Value6DOUBLEEd(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::Value") align 8 %13, double noundef %i.ak)
          to label %bb.ai unwind label %bb.al

bb.ai:                                            ; preds = %bb.ah
  %i.aw = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_13SampleOptionsESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.aj unwind label %bb.am

bb.aj:                                            ; preds = %bb.ai
  %i.ax = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6duckdb5ValueaSEOS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.aw, ptr noundef nonnull align 8 dereferenceable(64) %13) #19 ; 0 uses
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %13) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19
  %i.ay = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_13SampleOptionsESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.ak unwind label %bb.ae

bb.ak:                                            ; preds = %bb.aj
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 65
  store i8 0, ptr %i.az, align 1, !tbaa !441
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  br label %bb.bh

bb.al:                                            ; preds = %bb.ah
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.am:                                            ; preds = %bb.ai
  %i.bb = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %13) #19
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %.pn46 = phi { ptr, i32 } [ %i.bb, %bb.am ], [ %i.ba, %bb.al ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19
  br label %bb.ao

bb.ao:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65, %bb.ag, %bb.an, %bb.ae
  %.pn51.pn = phi { ptr, i32 } [ %.pn5189, %bb.ag ], [ %i.as, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65 ], [ %i.aq, %bb.ae ], [ %.pn46, %bb.an ], [ %i.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  br label %bb.ce

bb.ap:                                            ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  %i.bc = invoke noundef i64 @_ZNK6duckdb5Value8GetValueIlEET_v(ptr noundef nonnull align 8 dereferenceable(64) %i.ad)
          to label %bb.aq unwind label %bb.aw     ; 3 uses

bb.aq:                                            ; preds = %bb.ap
  store i64 %i.bc, ptr %i.c, align 8, !tbaa !24
  %i.bd = icmp slt i64 %i.bc, 0
  br i1 %i.bd, label %bb.at, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.be = invoke noundef i64 @_ZNK6duckdb5Value8GetValueImEET_v(ptr noundef nonnull align 8 dereferenceable(64) %i.ad)
          to label %bb.as unwind label %bb.aw

bb.as:                                            ; preds = %bb.ar
  %i.bf = icmp ugt i64 %i.be, 1000000000
  br i1 %i.bf, label %bb.at, label %bb.az

bb.at:                                            ; preds = %bb.as, %bb.aq
  %i.bg = call ptr @__cxa_allocate_exception(i64 16) #19 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull @.str.15, ptr noundef nonnull align 1 dereferenceable(1) %15)
          to label %bb.au unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68.thread

bb.au:                                            ; preds = %bb.at
  invoke void @_ZN6duckdb15ParserExceptionC2IJRlRKmEEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.bg, ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) @_ZN6duckdb13SampleOptions15MAX_SAMPLE_ROWSE)
          to label %bb.av unwind label %bb.ax

bb.av:                                            ; preds = %bb.au
  invoke void @__cxa_throw(ptr nonnull %i.bg, ptr nonnull @_ZTIN6duckdb15ParserExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #20
          to label %bb.ch unwind label %bb.ax

bb.aw:                                            ; preds = %bb.bb, %bb.ar, %bb.ap
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68.thread: ; preds = %bb.at
  %i.bi = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19
  br label %bb.ay

bb.ax:                                            ; preds = %bb.av, %bb.au
  %.0 = phi i1 [ false, %bb.av ], [ true, %bb.au ] ; 2 uses
  %i.bj = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.bk = load ptr, ptr %14, align 8, !tbaa !26   ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.bm = icmp eq ptr %i.bk, %i.bl
  br i1 %i.bm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66: ; preds = %bb.ax
  call void @_ZdlPv(ptr noundef %i.bk) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19
  br i1 %.0, label %bb.ay, label %bb.bg

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68: ; preds = %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19
  br i1 %.0, label %bb.ay, label %bb.bg

bb.ay:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68
  %.pn4392 = phi { ptr, i32 } [ %i.bi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68.thread ], [ %i.bj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68 ], [ %i.bj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66 ]
  call void @__cxa_free_exception(ptr %i.bg) #19
  br label %bb.bg

bb.az:                                            ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #19
  invoke void @_ZN6duckdb5Value6BIGINTEl(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::Value") align 8 %16, i64 noundef %i.bc)
          to label %bb.ba unwind label %bb.bd

bb.ba:                                            ; preds = %bb.az
  %i.bn = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_13SampleOptionsESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.bb unwind label %bb.be

bb.bb:                                            ; preds = %bb.ba
  %i.bo = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6duckdb5ValueaSEOS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.bn, ptr noundef nonnull align 8 dereferenceable(64) %16) #19 ; 0 uses
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %16) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #19
  %i.bp = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_13SampleOptionsESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.bc unwind label %bb.aw

bb.bc:                                            ; preds = %bb.bb
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 65
  store i8 2, ptr %i.bq, align 1, !tbaa !441
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  br label %bb.bh

bb.bd:                                            ; preds = %bb.az
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

bb.be:                                            ; preds = %bb.ba
  %i.bs = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %16) #19
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %.pn = phi { ptr, i32 } [ %i.bs, %bb.be ], [ %i.br, %bb.bd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #19
  br label %bb.bg

bb.bg:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68, %bb.ay, %bb.bf, %bb.aw
  %.pn43.pn = phi { ptr, i32 } [ %.pn4392, %bb.ay ], [ %i.bj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68 ], [ %i.bh, %bb.aw ], [ %.pn, %bb.bf ], [ %i.bj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  br label %bb.ce

bb.bh:                                            ; preds = %bb.bc, %bb.ak
  %i.bt = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !442 ; 4 uses
  %.not48 = icmp eq ptr %i.bu, null
  br i1 %.not48, label %bb.bw, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #19
  %19 = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 5 uses
  store ptr %19, ptr %17, align 8, !tbaa !22
  %i.bv = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bu) #19 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i64 %i.bv, ptr %i.a, align 8, !tbaa !24
  %i.bw = icmp ugt i64 %i.bv, 15
  br i1 %i.bw, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.bi
  %i.bx = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc69 unwind label %bb.bu  ; 2 uses

.noexc69:                                         ; preds = %.noexc.i
  store ptr %i.bx, ptr %17, align 8, !tbaa !26
  %i.by = load i64, ptr %i.a, align 8, !tbaa !24
  store i64 %i.by, ptr %19, align 8, !tbaa !10
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc69, %bb.bi
  %i.bz = phi ptr [ %i.bx, %.noexc69 ], [ %19, %bb.bi ] ; 2 uses
  switch i64 %i.bv, label %bb.bk [
    i64 1, label %bb.bj
    i64 0, label %bb.bl
  ]

bb.bj:                                            ; preds = %._crit_edge.i.i
  %i.ca = load i8, ptr %i.bu, align 1, !tbaa !10
  store i8 %i.ca, ptr %i.bz, align 1, !tbaa !10
  br label %bb.bl

bb.bk:                                            ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bz, ptr nonnull align 1 %i.bu, i64 %i.bv, i1 false)
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj, %._crit_edge.i.i
  %i.cb = load i64, ptr %i.a, align 8, !tbaa !24  ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i64 %i.cb, ptr %i.cc, align 8, !tbaa !28
  %i.cd = load ptr, ptr %17, align 8, !tbaa !26
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.cb
  store i8 0, ptr %i.ce, align 1, !tbaa !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  invoke void @_ZN6duckdb10StringUtil5LowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(32) %17)
          to label %.noexc70 unwind label %bb.bv

.noexc70:                                         ; preds = %bb.bl
  %i.cf = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !28 ; 2 uses
  switch i64 %i.cg, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit15.thread24.i [
    i64 6, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i
    i64 9, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit13.i
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i: ; preds = %.noexc70
  %i.ch = load ptr, ptr %3, align 8, !tbaa !26    ; 3 uses
  %i.ci = load i32, ptr %i.ch, align 1
  %i.cj = xor i32 %i.ci, 1953724787
  %i.ck = getelementptr i8, ptr %i.ch, i64 4
  %i.cl = load i16, ptr %i.ck, align 1
  %i.cm = zext i16 %i.cl to i32
  %i.cn = xor i32 %i.cm, 28005
  %i.co = or i32 %i.cj, %i.cn
  %i.cp = icmp ne i32 %i.co, 0
  %i.cq = zext i1 %i.cp to i32
  %i.cr = icmp eq i32 %i.cq, 0
  br i1 %i.cr, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit15.thread24.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit13.i: ; preds = %.noexc70
  %i.cs = load ptr, ptr %3, align 8, !tbaa !26    ; 6 uses
  %i.ct = load i64, ptr %i.cs, align 1
  %i.cu = xor i64 %i.ct, 7812748575035778402
  %i.cv = getelementptr i8, ptr %i.cs, i64 8
  %i.cw = load i8, ptr %i.cv, align 1
  %i.cx = zext i8 %i.cw to i64
  %i.cy = xor i64 %i.cx, 105
  %i.cz = or i64 %i.cu, %i.cy
  %i.da = icmp ne i64 %i.cz, 0
  %i.db = zext i1 %i.da to i32
  %i.dc = icmp eq i32 %i.db, 0
  br i1 %i.dc, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit15.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit15.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit13.i
  %i.dd = load i64, ptr %i.cs, align 1
  %i.de = xor i64 %i.dd, 7597421330097726834
  %i.df = getelementptr i8, ptr %i.cs, i64 8
  %i.dg = load i8, ptr %i.df, align 1
  %i.dh = zext i8 %i.dg to i64
  %i.di = xor i64 %i.dh, 114
  %i.dj = or i64 %i.de, %i.di
  %i.dk = icmp ne i64 %i.dj, 0
  %i.dl = zext i1 %i.dk to i32
  %i.dm = icmp eq i32 %i.dl, 0
  br i1 %i.dm, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit15.thread24.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit15.thread24.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit15.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i, %.noexc70
  %i.dn = call ptr @__cxa_allocate_exception(i64 16) #19 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.440, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.bm unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.bm:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit15.thread24.i
  invoke void @_ZN6duckdb15ParserExceptionC2IJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES9_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.dn, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %17)
          to label %bb.bn unwind label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  invoke void @__cxa_throw(ptr nonnull %i.dn, ptr nonnull @_ZTIN6duckdb15ParserExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #20
          to label %bb.br unwind label %bb.bo

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit15.thread24.i
  %i.do = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %bb.bp

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %.0.i = phi i1 [ false, %bb.bn ], [ true, %bb.bm ] ; 2 uses
  %i.dp = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.dq = load ptr, ptr %4, align 8, !tbaa !26    ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ds = icmp eq ptr %i.dq, %i.dr
  br i1 %i.ds, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.bo
  call void @_ZdlPv(ptr noundef %i.dq) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br i1 %.0.i, label %bb.bp, label %bb.bq

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br i1 %.0.i, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn27.i = phi { ptr, i32 } [ %i.do, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.dp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.dp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.dn) #19
  br label %bb.bq

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit15.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit13.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i
  %i.dt = phi ptr [ %i.cs, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit13.i ], [ %i.ch, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i ], [ %i.cs, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit15.i ] ; 2 uses
  %.09.i = phi i8 [ 1, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit13.i ], [ 0, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i ], [ 2, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit15.i ]
  %i.du = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.dv = icmp eq ptr %i.dt, %i.du
  br i1 %i.dv, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i17.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i17.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i
  %i.dw = icmp samesign ult i64 %i.cg, 16
  call void @llvm.assume(i1 %i.dw)
  br label %bb.bs

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i
  call void @_ZdlPv(ptr noundef nonnull %i.dt) #21
  br label %bb.bs

bb.bq:                                            ; preds = %bb.bp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.pn.pn.i = phi { ptr, i32 } [ %.pn27.i, %bb.bp ], [ %i.dp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.dp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  %i.dx = load ptr, ptr %3, align 8, !tbaa !26    ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.dz = icmp eq ptr %i.dx, %i.dy
  br i1 %i.dz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i: ; preds = %bb.bq
  call void @_ZdlPv(ptr noundef %i.dx) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21.i: ; preds = %bb.bq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br label %.body

bb.br:                                            ; preds = %bb.bn
  unreachable

bb.bs:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i17.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  %i.ea = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_13SampleOptionsESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.bt unwind label %bb.bv

bb.bt:                                            ; preds = %bb.bs
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 65
  store i8 %.09.i, ptr %i.eb, align 1, !tbaa !441
  %i.ec = load ptr, ptr %17, align 8, !tbaa !26   ; 2 uses
  %i.ed = icmp eq ptr %i.ec, %19
  br i1 %i.ed, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71: ; preds = %bb.bt
  call void @_ZdlPv(ptr noundef %i.ec) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73: ; preds = %bb.bt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #19
  br label %bb.bw

bb.bu:                                            ; preds = %.noexc.i
  %i.ee = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76

bb.bv:                                            ; preds = %bb.bl, %bb.bs
  %i.ef = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21.i, %bb.bv
  %eh.lpad-body = phi { ptr, i32 } [ %i.ef, %bb.bv ], [ %.pn.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21.i ] ; 2 uses
  %i.eg = load ptr, ptr %17, align 8, !tbaa !26   ; 2 uses
  %i.eh = icmp eq ptr %i.eg, %19
  br i1 %i.eh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74: ; preds = %.body
  call void @_ZdlPv(ptr noundef %i.eg) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74, %bb.bu
  %.pn49 = phi { ptr, i32 } [ %i.ee, %bb.bu ], [ %eh.lpad-body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74 ], [ %eh.lpad-body, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #19
  br label %bb.ce

bb.bw:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73, %bb.bh
  %i.ei = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.ej = load i8, ptr %i.ei, align 8, !tbaa !443, !range !174, !noundef !175
  %i.ek = trunc nuw i8 %i.ej to i1
  br i1 %i.ek, label %bb.bx, label %bb.cd

bb.bx:                                            ; preds = %bb.bw
  %i.el = getelementptr inbounds nuw i8, ptr %i.f, i64 28
  %i.em = load i32, ptr %i.el, align 4, !tbaa !444 ; 2 uses
  %i.en = icmp sgt i32 %i.em, -1
  br i1 %i.en, label %bb.by, label %bb.cd

bb.by:                                            ; preds = %bb.bx
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #19
  %i.eo = zext nneg i32 %i.em to i64
  invoke void @_ZN6duckdb12optional_idxC2Em(ptr noundef nonnull align 8 dereferenceable(8) %18, i64 noundef %i.eo)
          to label %bb.bz unwind label %bb.cc

bb.bz:                                            ; preds = %bb.by
  %i.ep = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_13SampleOptionsESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.ca unwind label %bb.cc

bb.ca:                                            ; preds = %bb.bz
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 72
  %i.er = load i64, ptr %18, align 8, !tbaa !24
  store i64 %i.er, ptr %i.eq, align 8, !tbaa !24
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #19
  %i.es = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_13SampleOptionsESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.cb unwind label %bb.ad

bb.cb:                                            ; preds = %bb.ca
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 80
  store i8 1, ptr %i.et, align 8, !tbaa !445
  br label %bb.cd

bb.cc:                                            ; preds = %bb.bz, %bb.by
  %i.eu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #19
  br label %bb.ce

bb.cd:                                            ; preds = %bb.cb, %bb.bx, %bb.bw
  %i.ev = load ptr, ptr %8, align 8, !tbaa !80    ; 3 uses
  %.not.i = icmp eq ptr %i.ev, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i: ; preds = %bb.cd
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !66
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %i.ey = load ptr, ptr %i.ex, align 8
  call void %i.ey(ptr noundef nonnull align 8 dereferenceable(56) %i.ev) #19, !inline_history !97
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.cd, %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  br label %bb.cg

bb.ce:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.ac, %bb.cc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76, %bb.bg, %bb.ao, %bb.ad, %bb.r, %bb.s, %bb.p
  %.pn56.pn.pn = phi { ptr, i32 } [ %.pn56.pn83, %bb.s ], [ %i.x, %bb.r ], [ %i.u, %bb.p ], [ %i.ao, %bb.ac ], [ %.pn51.pn, %bb.ao ], [ %i.ap, %bb.ad ], [ %i.eu, %bb.cc ], [ %.pn49, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76 ], [ %.pn43.pn, %bb.bg ], [ %i.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ] ; 2 uses
  %i.ez = load ptr, ptr %8, align 8, !tbaa !80    ; 3 uses
  %.not.i77 = icmp eq ptr %i.ez, null
  br i1 %.not.i77, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit79, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i78

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i78: ; preds = %bb.ce
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !66
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 8
  %i.fc = load ptr, ptr %i.fb, align 8
  call void %i.fc(ptr noundef nonnull align 8 dereferenceable(56) %i.ez) #19, !inline_history !97
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit79

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit79: ; preds = %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i78, %bb.ce, %bb.o
  %.pn56.pn.pn.pn = phi { ptr, i32 } [ %i.t, %bb.o ], [ %.pn56.pn.pn, %bb.ce ], [ %.pn56.pn.pn, %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i78 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  br label %bb.cf

bb.cf:                                            ; preds = %bb.n, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit79, %bb.m
  %.pn56.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.r, %bb.m ], [ %.pn56.pn.pn.pn, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit79 ], [ %i.s, %bb.n ]
  call void @_ZNSt10unique_ptrIN6duckdb13SampleOptionsESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #19
  br label %common.resume

bb.cg:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit, %bb.b
  ret void

bb.ch:                                            ; preds = %bb.av, %bb.ab, %bb.l
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb15ParserExceptionC2IJEEENS_12optional_idxERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 %1, ptr noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::unordered_map.326", align 8 ; 11 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  call void @_ZN6duckdb9Exception19InitializeExtraInfoB5cxx11ENS_12optional_idxE(ptr dead_on_unwind nonnull writable sret(%"class.std::unordered_map.326") align 8 %3, i64 %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @llvm.experimental.noalias.scope.decl(metadata !446)
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  store ptr %i.b, ptr %4, align 8, !tbaa !22, !alias.scope !446
  %i.c = load ptr, ptr %2, align 8, !tbaa !26, !noalias !446 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !28, !noalias !446 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19, !noalias !446
  store i64 %i.e, ptr %i.a, align 8, !tbaa !24, !noalias !446
  %i.f = icmp ugt i64 %i.e, 15
  br i1 %i.f, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.a
  %i.g = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.g     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i
  store ptr %i.g, ptr %4, align 8, !tbaa !26, !alias.scope !446
  %i.h = load i64, ptr %i.a, align 8, !tbaa !24, !noalias !446
  store i64 %i.h, ptr %i.b, align 8, !tbaa !10, !alias.scope !446
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc, %bb.a
  %i.i = phi ptr [ %i.g, %.noexc ], [ %i.b, %bb.a ] ; 2 uses
  switch i64 %i.e, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i
  %i.j = load i8, ptr %i.c, align 1, !tbaa !10
  store i8 %i.j, ptr %i.i, align 1, !tbaa !10
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr align 1 %i.c, i64 %i.e, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i
  %i.k = load i64, ptr %i.a, align 8, !tbaa !24, !noalias !446 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.k, ptr %i.l, align 8, !tbaa !28, !alias.scope !446
  %i.m = load ptr, ptr %4, align 8, !tbaa !26, !alias.scope !446
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 0, ptr %i.n, align 1, !tbaa !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19, !noalias !446
  invoke void @_ZN6duckdb15ParserExceptionC2ERKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_St4hashIS7_ESt8equal_toIS7_ESaISt4pairIKS7_S7_EEERSD_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.o = load ptr, ptr %4, align 8, !tbaa !26     ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.b
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.o) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !449  ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.s, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i ], [ %i.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 6 uses
  %i.s = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !120 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 40
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !26   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 56
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  call void @_ZdlPv(ptr noundef %i.v) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.y = load ptr, ptr %i.t, align 8, !tbaa !26   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 24
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i
  call void @_ZdlPv(ptr noundef %i.y) #21
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %.06.i.i.i.i) #21
  %.not.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !451

end_hunk_0
