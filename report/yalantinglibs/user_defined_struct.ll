Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yalantinglibs/original/user_defined_struct?download=true
inline.NumInlined: 1121
inline.NumDeleted: 284
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZSt13__invoke_implIvZN6iguana9from_jsonI4nestN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEETnNSt9enable_ifIX16ylt_refletable_vIT_EEiE4typeELi0EEEvRSF_OT0_SK_EUlSF_E_JRN3ylt10reflection8internal8offset_tIN8my_space9my_structEEEEESF_St14__invoke_otherSK_DpOT1_:bb.a
  %.not.i14.i = icmp eq i8 %i.cb, 10
  br i1 %.not.i14.i, label %_ZN6iguana12skip_commentIRN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvOT_SE_.exit15.i, label %.preheader30, !llvm.loop !1

.lr.ph83:                                         ; preds = %.preheader31, %bb.ak
  %i.cc = phi ptr [ %i.cn, %bb.ak ], [ %i.bu, %.preheader31 ] ; 2 uses
  %i.cd = phi ptr [ %i.cm, %bb.ak ], [ %i.bo, %.preheader31 ] ; 2 uses
  %i.ce = load i8, ptr %i.cc, align 1, !tbaa !34
  %i.cf = icmp eq i8 %i.ce, 42
  br i1 %i.cf, label %bb.ah, label %bb.ak, !prof !60

bb.ah:                                            ; preds = %.lr.ph83
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cd, i64 2 ; 5 uses
  store ptr %i.cg, ptr %i.d, align 8, !tbaa !72
  %i.ch = load ptr, ptr %i.f, align 8, !tbaa !73
  %i.ci = icmp eq ptr %i.cg, %i.ch
  br i1 %i.ci, label %_ZN6iguana12skip_commentIRN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvOT_SE_.exit15.i, label %bb.ai, !prof !60

bb.ai:                                            ; preds = %bb.ah
  %i.cj = load i8, ptr %i.cg, align 1, !tbaa !34
  %i.ck = icmp eq i8 %i.cj, 47
  br i1 %i.ck, label %bb.aj, label %bb.ak, !prof !62

bb.aj:                                            ; preds = %bb.ai
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cd, i64 3
  br label %_ZN6iguana12skip_commentIRN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvOT_SE_.exit15.i.sink.split

bb.ak:                                            ; preds = %bb.ai, %.lr.ph83
  %i.cm = phi ptr [ %i.cg, %bb.ai ], [ %i.cc, %.lr.ph83 ] ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 1 ; 4 uses
  store ptr %i.cn, ptr %i.d, align 8, !tbaa !72
  %i.co = load ptr, ptr %i.f, align 8, !tbaa !73
  %i.cp = icmp eq ptr %i.cn, %i.co
  br i1 %i.cp, label %_ZN6iguana12skip_commentIRN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvOT_SE_.exit15.i, label %.lr.ph83, !llvm.loop !2

bb.al:                                            ; preds = %bb.af
  %i.cq = tail call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.cq, ptr noundef nonnull @.str.8)
          to label %bb.am unwind label %bb.an

bb.am:                                            ; preds = %bb.al
  tail call void @__cxa_throw(ptr nonnull %i.cq, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #26
  unreachable

bb.an:                                            ; preds = %bb.al
  %i.cr = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.cq) #20
  br label %common.resume

_ZN6iguana12skip_commentIRN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvOT_SE_.exit15.i.sink.split: ; preds = %bb.z, %bb.aj
  %.sink295 = phi ptr [ %i.cl, %bb.aj ], [ %i.bn, %bb.z ] ; 2 uses
  store ptr %.sink295, ptr %i.d, align 8, !tbaa !72
  br label %_ZN6iguana12skip_commentIRN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvOT_SE_.exit15.i

_ZN6iguana12skip_commentIRN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvOT_SE_.exit15.i: ; preds = %bb.ah, %bb.ak, %.preheader30, %bb.ag, %_ZN6iguana12skip_commentIRN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvOT_SE_.exit15.i.sink.split, %.preheader31
  %i.cs = phi ptr [ %.sink295, %_ZN6iguana12skip_commentIRN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvOT_SE_.exit15.i.sink.split ], [ %i.by, %.preheader30 ], [ %i.bu, %.preheader31 ], [ %i.by, %bb.ag ], [ %i.cg, %bb.ah ], [ %i.cn, %bb.ak ] ; 2 uses
  %i.ct = load ptr, ptr %i.f, align 8, !tbaa !73  ; 2 uses
  %i.cu = icmp eq ptr %i.cs, %i.ct
  br i1 %i.cu, label %_ZN6iguana5matchIJLc91EERN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvOT0_SE_.exit.i._crit_edge, label %.lr.ph85, !llvm.loop !3

_ZN6iguana5matchIJLc91EERN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvOT0_SE_.exit.i._crit_edge: ; preds = %_ZN6iguana12skip_commentIRN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvOT_SE_.exit15.i, %_ZN6iguana5matchIJLc91EERN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvOT0_SE_.exit.i.preheader
  %i.cv = tail call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.cv, ptr noundef nonnull @.str.5)
          to label %bb.ao unwind label %bb.ap

bb.ao:                                            ; preds = %_ZN6iguana5matchIJLc91EERN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvOT0_SE_.exit.i._crit_edge
  tail call void @__cxa_throw(ptr nonnull %i.cv, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #26
  unreachable

bb.ap:                                            ; preds = %_ZN6iguana5matchIJLc91EERN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvOT0_SE_.exit.i._crit_edge
  %i.cw = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.cv) #20
  br label %common.resume

.preheader28:                                     ; preds = %bb.aa, %_ZN6iguana7skip_wsIRN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvOT_SE_.exit.i
  %i.cx = phi ptr [ %i.jd, %_ZN6iguana7skip_wsIRN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvOT_SE_.exit.i ], [ %i.bj, %bb.aa ] ; 3 uses
  %i.cy = phi ptr [ %i.je, %_ZN6iguana7skip_wsIRN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvOT_SE_.exit.i ], [ %i.bk, %bb.aa ] ; 3 uses
  %.0.i.i103 = phi i64 [ %i.jf, %_ZN6iguana7skip_wsIRN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvOT_SE_.exit.i ], [ 0, %bb.aa ]
  %.030.i.i102 = phi ptr [ %i.cz, %_ZN6iguana7skip_wsIRN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvOT_SE_.exit.i ], [ %i.b, %bb.aa ] ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.030.i.i102, i64 4
  %i.da = icmp eq ptr %i.cy, %i.cx
  br i1 %i.da, label %_ZN6iguana7skip_wsIRN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvOT_SE_.exit.i.i, label %.lr.ph88

.lr.ph88:                                         ; preds = %.preheader28, %_ZN6iguana12skip_commentIRN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvOT_SE_.exit.i
  %i.db = phi ptr [ %i.em, %_ZN6iguana12skip_commentIRN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvOT_SE_.exit.i ], [ %i.cx, %.preheader28 ]
  %i.dc = phi ptr [ %i.el, %_ZN6iguana12skip_commentIRN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvOT_SE_.exit.i ], [ %i.cy, %.preheader28 ] ; 5 uses
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !34  ; 2 uses
  %i.de = icmp ult i8 %i.dd, 33
  br i1 %i.de, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %.lr.ph88
  %i.df = getelementptr inbounds nuw i8, ptr %i.dc, i64 1
  br label %_ZN6iguana12skip_commentIRN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvOT_SE_.exit.i.sink.split

bb.ar:                                            ; preds = %.lr.ph88
  %i.dg = icmp eq i8 %i.dd, 47
  br i1 %i.dg, label %bb.as, label %_ZN6iguana7skip_wsIRN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvOT_SE_.exit.i.i

bb.as:                                            ; preds = %bb.ar
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dc, i64 1 ; 5 uses
  store ptr %i.dh, ptr %i.d, align 8, !tbaa !72
  %i.di = load ptr, ptr %i.f, align 8, !tbaa !73
  %i.dj = icmp eq ptr %i.dh, %i.di
  br i1 %i.dj, label %bb.at, label %bb.aw, !prof !60

bb.at:                                            ; preds = %bb.as
  %i.dk = tail call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.dk, ptr noundef nonnull @.str.7)
          to label %bb.au unwind label %bb.av

bb.au:                                            ; preds = %bb.at
  tail call void @__cxa_throw(ptr nonnull %i.dk, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #26
  unreachable

bb.av:                                            ; preds = %bb.at
  %i.dl = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.dk) #20
  br label %common.resume

bb.aw:                                            ; preds = %bb.as
  %i.dm = load i8, ptr %i.dh, align 1, !tbaa !34
  switch i8 %i.dm, label %bb.bc [
    i8 47, label %.preheader25
    i8 42, label %.preheader26
  ], !prof !61

.preheader26:                                     ; preds = %bb.aw
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dc, i64 2 ; 4 uses
  store ptr %i.dn, ptr %i.d, align 8, !tbaa !72
  %i.do = load ptr, ptr %i.f, align 8, !tbaa !73
  %i.dp = icmp eq ptr %i.dn, %i.do
  br i1 %i.dp, label %_ZN6iguana12skip_commentIRN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvOT_SE_.exit.i, label %.lr.ph86

.preheader25:                                     ; preds = %bb.aw, %bb.ax
  %i.dq = phi ptr [ %i.dr, %bb.ax ], [ %i.dh, %bb.aw ]
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 1 ; 6 uses
  store ptr %i.dr, ptr %i.d, align 8, !tbaa !72
  %i.ds = load ptr, ptr %i.f, align 8, !tbaa !73
  %i.dt = icmp eq ptr %i.dr, %i.ds
  br i1 %i.dt, label %_ZN6iguana12skip_commentIRN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvOT_SE_.exit.i, label %bb.ax

bb.ax:                                            ; preds = %.preheader25
  %i.du = load i8, ptr %i.dr, align 1, !tbaa !34
  %.not.i9.i = icmp eq i8 %i.du, 10
  br i1 %.not.i9.i, label %_ZN6iguana12skip_commentIRN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvOT_SE_.exit.i, label %.preheader25, !llvm.loop !1

.lr.ph86:                                         ; preds = %.preheader26, %bb.bb
  %i.dv = phi ptr [ %i.eg, %bb.bb ], [ %i.dn, %.preheader26 ] ; 2 uses
  %i.dw = phi ptr [ %i.ef, %bb.bb ], [ %i.dh, %.preheader26 ] ; 2 uses
  %i.dx = load i8, ptr %i.dv, align 1, !tbaa !34
  %i.dy = icmp eq i8 %i.dx, 42
  br i1 %i.dy, label %bb.ay, label %bb.bb, !prof !60

bb.ay:                                            ; preds = %.lr.ph86
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dw, i64 2 ; 5 uses
  store ptr %i.dz, ptr %i.d, align 8, !tbaa !72
  %i.ea = load ptr, ptr %i.f, align 8, !tbaa !73
  %i.eb = icmp eq ptr %i.dz, %i.ea
  br i1 %i.eb, label %_ZN6iguana12skip_commentIRN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvOT_SE_.exit.i, label %bb.az, !prof !60

bb.az:                                            ; preds = %bb.ay
  %i.ec = load i8, ptr %i.dz, align 1, !tbaa !34
  %i.ed = icmp eq i8 %i.ec, 47
  br i1 %i.ed, label %bb.ba, label %bb.bb, !prof !62

bb.ba:                                            ; preds = %bb.az
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dw, i64 3
  br label %_ZN6iguana12skip_commentIRN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvOT_SE_.exit.i.sink.split

bb.bb:                                            ; preds = %bb.az, %.lr.ph86
  %i.ef = phi ptr [ %i.dz, %bb.az ], [ %i.dv, %.lr.ph86 ] ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 1 ; 4 uses
  store ptr %i.eg, ptr %i.d, align 8, !tbaa !72
  %i.eh = load ptr, ptr %i.f, align 8, !tbaa !73
  %i.ei = icmp eq ptr %i.eg, %i.eh
  br i1 %i.ei, label %_ZN6iguana12skip_commentIRN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvOT_SE_.exit.i, label %.lr.ph86, !llvm.loop !2

bb.bc:                                            ; preds = %bb.aw
  %i.ej = tail call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ej, ptr noundef nonnull @.str.8)
          to label %bb.bd unwind label %bb.be

bb.bd:                                            ; preds = %bb.bc
  tail call void @__cxa_throw(ptr nonnull %i.ej, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #26
  unreachable

bb.be:                                            ; preds = %bb.bc
  %i.ek = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.ej) #20
  br label %common.resume

_ZN6iguana12skip_commentIRN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvOT_SE_.exit.i.sink.split: ; preds = %bb.aq, %bb.ba
  %.sink297 = phi ptr [ %i.ee, %bb.ba ], [ %i.df, %bb.aq ] ; 2 uses
  store ptr %.sink297, ptr %i.d, align 8, !tbaa !72
  br label %_ZN6iguana12skip_commentIRN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvOT_SE_.exit.i

_ZN6iguana12skip_commentIRN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvOT_SE_.exit.i: ; preds = %bb.ay, %bb.bb, %.preheader25, %bb.ax, %_ZN6iguana12skip_commentIRN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvOT_SE_.exit.i.sink.split, %.preheader26
  %i.el = phi ptr [ %.sink297, %_ZN6iguana12skip_commentIRN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvOT_SE_.exit.i.sink.split ], [ %i.dr, %.preheader25 ], [ %i.dn, %.preheader26 ], [ %i.dr, %bb.ax ], [ %i.dz, %bb.ay ], [ %i.eg, %bb.bb ] ; 3 uses
  %i.em = load ptr, ptr %i.f, align 8, !tbaa !73  ; 3 uses
  %i.en = icmp eq ptr %i.el, %i.em
  br i1 %i.en, label %_ZN6iguana7skip_wsIRN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvOT_SE_.exit.i.i, label %.lr.ph88, !llvm.loop !3

_ZN6iguana7skip_wsIRN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvOT_SE_.exit.i.i: ; preds = %_ZN6iguana12skip_commentIRN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvOT_SE_.exit.i, %bb.ar, %.preheader28
  %.lcssa48 = phi ptr [ %i.cy, %.preheader28 ], [ %i.dc, %bb.ar ], [ %i.el, %_ZN6iguana12skip_commentIRN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvOT_SE_.exit.i ] ; 5 uses
  %.lcssa = phi ptr [ %i.cx, %.preheader28 ], [ %i.db, %bb.ar ], [ %i.em, %_ZN6iguana12skip_commentIRN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvOT_SE_.exit.i ] ; 4 uses
  %i.eo = ptrtoint ptr %.lcssa to i64
  %i.ep = ptrtoint ptr %.lcssa48 to i64
  %i.eq = icmp eq ptr %.lcssa, %.lcssa48
  br i1 %i.eq, label %_ZN6iguana7skip_wsIRN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvOT_SE_.exit.i.i.thread, label %bb.bh, !prof !60

_ZN6iguana7skip_wsIRN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvOT_SE_.exit.i.i.thread: ; preds = %_ZN6iguana7skip_wsIRN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvOT_SE_.exit.i.i
  %i.er = tail call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.er, ptr noundef nonnull @.str.11)
          to label %bb.bf unwind label %bb.bg

bb.bf:                                            ; preds = %_ZN6iguana7skip_wsIRN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvOT_SE_.exit.i.i.thread
  tail call void @__cxa_throw(ptr nonnull %i.er, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #26
  unreachable

bb.bg:                                            ; preds = %_ZN6iguana7skip_wsIRN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvOT_SE_.exit.i.i.thread
  %i.es = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.er) #20
  br label %common.resume

bb.bh:                                            ; preds = %_ZN6iguana7skip_wsIRN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvOT_SE_.exit.i.i
  %i.et = load i8, ptr %.lcssa48, align 1, !tbaa !34
  %i.eu = icmp eq i8 %i.et, 45                    ; 3 uses
  %.067.i.i.idx = zext i1 %i.eu to i64
  %.067.i.i = getelementptr inbounds nuw i8, ptr %.lcssa48, i64 %.067.i.i.idx ; 5 uses
  %.not37.i.i.i = icmp eq ptr %.067.i.i, %.lcssa
  br i1 %.not37.i.i.i, label %_ZN6iguana6detail10from_charsILb0EiEESt4pairIPKcSt4errcES4_S4_RT0_.exit.thread, label %.lr.ph.i41.preheader.i.i

.lr.ph.i41.preheader.i.i:                         ; preds = %bb.bh
  %.067117.i.i = ptrtoaddr ptr %.067.i.i to i64
  %i.ev = sub i64 %i.eo, %.067117.i.i
  %scevgep119.i.i = getelementptr i8, ptr %.067.i.i, i64 %i.ev
  br label %.lr.ph.i41.i.i

.lr.ph.i41.i.i:                                   ; preds = %.critedge.i42.i.i, %.lr.ph.i41.preheader.i.i
  %.471.i.i = phi ptr [ %i.fj, %.critedge.i42.i.i ], [ %.067.i.i, %.lr.ph.i41.preheader.i.i ] ; 3 uses
  %.9.i.i = phi i32 [ %.10.i.i, %.critedge.i42.i.i ], [ 0, %.lr.ph.i41.preheader.i.i ] ; 3 uses
  %.02238.i.i.i = phi i32 [ %i.ez, %.critedge.i42.i.i ], [ 32, %.lr.ph.i41.preheader.i.i ]
  %i.ew = load i8, ptr %.471.i.i, align 1, !tbaa !34
  %i.ex = add i8 %i.ew, -48                       ; 2 uses
  %i.ey = zext i8 %i.ex to i32                    ; 2 uses
  %.not31.i.i.i = icmp ult i8 %i.ex, 10
  br i1 %.not31.i.i.i, label %bb.bi, label %_ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.i.i

bb.bi:                                            ; preds = %.lr.ph.i41.i.i
  %i.ez = add i32 %.02238.i.i.i, -4               ; 2 uses
  %i.fa = icmp sgt i32 %i.ez, -1
  br i1 %i.fa, label %bb.bj, label %bb.bk, !prof !62

bb.bj:                                            ; preds = %bb.bi
  %i.fb = mul i32 %.9.i.i, 10
  %i.fc = add i32 %i.fb, %i.ey
  br label %.critedge.i42.i.i

bb.bk:                                            ; preds = %bb.bi
  %i.fd = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %.9.i.i, i32 10) ; 2 uses
  %i.fe = extractvalue { i32, i1 } %i.fd, 1
  br i1 %i.fe, label %_ZN6iguana6detail10from_charsILb0EiEESt4pairIPKcSt4errcES4_S4_RT0_.exit.thread, label %.split.i.i.i, !prof !64

.split.i.i.i:                                     ; preds = %bb.bk
  %i.ff = extractvalue { i32, i1 } %i.fd, 0
  %i.fg = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %i.ff, i32 %i.ey) ; 2 uses
  %i.fh = extractvalue { i32, i1 } %i.fg, 1
  %i.fi = extractvalue { i32, i1 } %i.fg, 0
  br i1 %i.fh, label %_ZN6iguana6detail10from_charsILb0EiEESt4pairIPKcSt4errcES4_S4_RT0_.exit.thread, label %.critedge.i42.i.i, !prof !60

.critedge.i42.i.i:                                ; preds = %.split.i.i.i, %bb.bj
  %.10.i.i = phi i32 [ %i.fc, %bb.bj ], [ %i.fi, %.split.i.i.i ] ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %.471.i.i, i64 1 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.fj, %.lcssa
  br i1 %.not.i.i.i, label %_ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.i.i, label %.lr.ph.i41.i.i, !llvm.loop !4

_ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.i.i: ; preds = %.critedge.i42.i.i, %.lr.ph.i41.i.i
  %.168.i.i = phi ptr [ %.471.i.i, %.lr.ph.i41.i.i ], [ %scevgep119.i.i, %.critedge.i42.i.i ] ; 4 uses
  %.0.i.i3 = phi i32 [ %.9.i.i, %.lr.ph.i41.i.i ], [ %.10.i.i, %.critedge.i42.i.i ] ; 3 uses
  %.not.i = icmp eq ptr %.168.i.i, %.067.i.i
  %i.fk = select i1 %i.eu, i32 -2147483648, i32 2147483647
  %i.fl = icmp ugt i32 %.0.i.i3, %i.fk
  %or.cond = select i1 %.not.i, i1 true, i1 %i.fl, !prof !65
  br i1 %or.cond, label %_ZN6iguana6detail10from_charsILb0EiEESt4pairIPKcSt4errcES4_S4_RT0_.exit.thread, label %bb.bl, !prof !65

bb.bl:                                            ; preds = %_ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.i.i
  %i.fm = sub i32 0, %.0.i.i3
  %i.fn = select i1 %i.eu, i32 %i.fm, i32 %.0.i.i3
  store i32 %i.fn, ptr %.030.i.i102, align 4, !tbaa !66
  %i.fo = load i8, ptr %.168.i.i, align 1, !tbaa !34
  %i.fp = sext i8 %i.fo to i64
  %i.fq = and i64 %i.fp, 4294967295
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr @_ZZN6iguana17can_follow_numberEcE14can_follow_num, i64 %i.fq
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !66
  %.not = icmp eq i32 %i.fs, 0
  br i1 %.not, label %_ZN6iguana6detail10from_charsILb0EiEESt4pairIPKcSt4errcES4_S4_RT0_.exit.thread, label %_ZN6iguana6detail14from_json_implIiRN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEETnNSt9enable_ifIX5num_vIT_EEiE4typeELi0EEEvRSF_OT0_SK_.exit.i, !prof !60

_ZN6iguana6detail10from_charsILb0EiEESt4pairIPKcSt4errcES4_S4_RT0_.exit.thread: ; preds = %bb.bh, %_ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.i.i, %bb.bl, %bb.bk, %.split.i.i.i
  %i.ft = tail call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ft, ptr noundef nonnull @.str.11)
          to label %bb.bm unwind label %bb.bn

bb.bm:                                            ; preds = %_ZN6iguana6detail10from_charsILb0EiEESt4pairIPKcSt4errcES4_S4_RT0_.exit.thread
  tail call void @__cxa_throw(ptr nonnull %i.ft, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #26
  unreachable

bb.bn:                                            ; preds = %_ZN6iguana6detail10from_charsILb0EiEESt4pairIPKcSt4errcES4_S4_RT0_.exit.thread
  %i.fu = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.ft) #20
  br label %common.resume

_ZN6iguana6detail14from_json_implIiRN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEETnNSt9enable_ifIX5num_vIT_EEiE4typeELi0EEEvRSF_OT0_SK_.exit.i: ; preds = %bb.bl
  %i.fv = ptrtoint ptr %.168.i.i to i64
  %i.fw = sub i64 %i.fv, %i.ep
  %i.fx = getelementptr inbounds i8, ptr %.lcssa48, i64 %i.fw ; 2 uses
  store ptr %i.fx, ptr %i.d, align 8, !tbaa !72
  %i.fy = load ptr, ptr %i.f, align 8, !tbaa !73
  %i.fz = icmp eq ptr %.168.i.i, %i.fy
  br i1 %i.fz, label %_ZN6iguana6detail14from_json_implIiRN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEETnNSt9enable_ifIX5num_vIT_EEiE4typeELi0EEEvRSF_OT0_SK_.exit.i._crit_edge, label %.lr.ph96

.lr.ph96:                                         ; preds = %_ZN6iguana6detail14from_json_implIiRN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEETnNSt9enable_ifIX5num_vIT_EEiE4typeELi0EEEvRSF_OT0_SK_.exit.i, %_ZN6iguana12skip_commentIRN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvOT_SE_.exit18.i
  %i.ga = phi ptr [ %i.hi, %_ZN6iguana12skip_commentIRN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvOT_SE_.exit18.i ], [ %i.fx, %_ZN6iguana6detail14from_json_implIiRN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEETnNSt9enable_ifIX5num_vIT_EEiE4typeELi0EEEvRSF_OT0_SK_.exit.i ] ; 6 uses
  %i.gb = load i8, ptr %i.ga, align 1, !tbaa !34  ; 2 uses
  %i.gc = icmp ult i8 %i.gb, 33
  br i1 %i.gc, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %.lr.ph96
  %i.gd = getelementptr inbounds nuw i8, ptr %i.ga, i64 1
  br label %_ZN6iguana12skip_commentIRN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvOT_SE_.exit18.i.sink.split

bb.bp:                                            ; preds = %.lr.ph96
  switch i8 %i.gb, label %bb.cv [
    i8 47, label %bb.bq
    i8 44, label %bb.cf
    i8 93, label %_ZZN6iguana9from_jsonI4nestN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEETnNSt9enable_ifIX16ylt_refletable_vIT_EEiE4typeELi0EEEvRSE_OT0_SJ_ENKUlSE_E_clIN3ylt10reflection8internal8offset_tIN8my_space9my_structEEEEEDaSE_.exit.sink.split
  ], !prof !67

bb.bq:                                            ; preds = %bb.bp
  %i.ge = getelementptr inbounds nuw i8, ptr %i.ga, i64 1 ; 5 uses
  store ptr %i.ge, ptr %i.d, align 8, !tbaa !72
  %i.gf = load ptr, ptr %i.f, align 8, !tbaa !73
  %i.gg = icmp eq ptr %i.ge, %i.gf
  br i1 %i.gg, label %bb.br, label %bb.bu, !prof !60

bb.br:                                            ; preds = %bb.bq
  %i.gh = tail call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.gh, ptr noundef nonnull @.str.7)
          to label %bb.bs unwind label %bb.bt

bb.bs:                                            ; preds = %bb.br
  tail call void @__cxa_throw(ptr nonnull %i.gh, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #26
  unreachable

bb.bt:                                            ; preds = %bb.br
  %i.gi = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.gh) #20
  br label %common.resume

bb.bu:                                            ; preds = %bb.bq
  %i.gj = load i8, ptr %i.ge, align 1, !tbaa !34
  switch i8 %i.gj, label %bb.ca [
    i8 47, label %.preheader22
    i8 42, label %.preheader23
  ], !prof !61

.preheader23:                                     ; preds = %bb.bu
  %i.gk = getelementptr inbounds nuw i8, ptr %i.ga, i64 2 ; 4 uses
  store ptr %i.gk, ptr %i.d, align 8, !tbaa !72
  %i.gl = load ptr, ptr %i.f, align 8, !tbaa !73
  %i.gm = icmp eq ptr %i.gk, %i.gl
  br i1 %i.gm, label %_ZN6iguana12skip_commentIRN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvOT_SE_.exit18.i, label %.lr.ph94

.preheader22:                                     ; preds = %bb.bu, %bb.bv
  %i.gn = phi ptr [ %i.go, %bb.bv ], [ %i.ge, %bb.bu ]
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 1 ; 6 uses
  store ptr %i.go, ptr %i.d, align 8, !tbaa !72
  %i.gp = load ptr, ptr %i.f, align 8, !tbaa !73
  %i.gq = icmp eq ptr %i.go, %i.gp
  br i1 %i.gq, label %_ZN6iguana12skip_commentIRN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvOT_SE_.exit18.i, label %bb.bv

bb.bv:                                            ; preds = %.preheader22
  %i.gr = load i8, ptr %i.go, align 1, !tbaa !34
  %.not.i17.i = icmp eq i8 %i.gr, 10
  br i1 %.not.i17.i, label %_ZN6iguana12skip_commentIRN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvOT_SE_.exit18.i, label %.preheader22, !llvm.loop !1

.lr.ph94:                                         ; preds = %.preheader23, %bb.bz
  %i.gs = phi ptr [ %i.hd, %bb.bz ], [ %i.gk, %.preheader23 ] ; 2 uses
  %i.gt = phi ptr [ %i.hc, %bb.bz ], [ %i.ge, %.preheader23 ] ; 2 uses
  %i.gu = load i8, ptr %i.gs, align 1, !tbaa !34
  %i.gv = icmp eq i8 %i.gu, 42
  br i1 %i.gv, label %bb.bw, label %bb.bz, !prof !60

bb.bw:                                            ; preds = %.lr.ph94
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gt, i64 2 ; 5 uses
  store ptr %i.gw, ptr %i.d, align 8, !tbaa !72
  %i.gx = load ptr, ptr %i.f, align 8, !tbaa !73
  %i.gy = icmp eq ptr %i.gw, %i.gx
  br i1 %i.gy, label %_ZN6iguana12skip_commentIRN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvOT_SE_.exit18.i, label %bb.bx, !prof !60

bb.bx:                                            ; preds = %bb.bw
  %i.gz = load i8, ptr %i.gw, align 1, !tbaa !34
  %i.ha = icmp eq i8 %i.gz, 47
  br i1 %i.ha, label %bb.by, label %bb.bz, !prof !62

bb.by:                                            ; preds = %bb.bx
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gt, i64 3
  br label %_ZN6iguana12skip_commentIRN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvOT_SE_.exit18.i.sink.split

bb.bz:                                            ; preds = %bb.bx, %.lr.ph94
  %i.hc = phi ptr [ %i.gw, %bb.bx ], [ %i.gs, %.lr.ph94 ] ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 1 ; 4 uses
  store ptr %i.hd, ptr %i.d, align 8, !tbaa !72
  %i.he = load ptr, ptr %i.f, align 8, !tbaa !73
  %i.hf = icmp eq ptr %i.hd, %i.he
  br i1 %i.hf, label %_ZN6iguana12skip_commentIRN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvOT_SE_.exit18.i, label %.lr.ph94, !llvm.loop !2

bb.ca:                                            ; preds = %bb.bu
  %i.hg = tail call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.hg, ptr noundef nonnull @.str.8)
          to label %bb.cb unwind label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  tail call void @__cxa_throw(ptr nonnull %i.hg, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #26
  unreachable

bb.cc:                                            ; preds = %bb.ca
  %i.hh = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.hg) #20
  br label %common.resume

_ZN6iguana12skip_commentIRN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvOT_SE_.exit18.i.sink.split: ; preds = %bb.bo, %bb.by
  %.sink300 = phi ptr [ %i.hb, %bb.by ], [ %i.gd, %bb.bo ] ; 2 uses
  store ptr %.sink300, ptr %i.d, align 8, !tbaa !72
  br label %_ZN6iguana12skip_commentIRN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvOT_SE_.exit18.i

_ZN6iguana12skip_commentIRN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvOT_SE_.exit18.i: ; preds = %bb.bw, %bb.bz, %.preheader22, %bb.bv, %_ZN6iguana12skip_commentIRN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvOT_SE_.exit18.i.sink.split, %.preheader23
  %i.hi = phi ptr [ %.sink300, %_ZN6iguana12skip_commentIRN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvOT_SE_.exit18.i.sink.split ], [ %i.go, %.preheader22 ], [ %i.gk, %.preheader23 ], [ %i.go, %bb.bv ], [ %i.gw, %bb.bw ], [ %i.hd, %bb.bz ] ; 2 uses
  %i.hj = load ptr, ptr %i.f, align 8, !tbaa !73
  %i.hk = icmp eq ptr %i.hi, %i.hj
  br i1 %i.hk, label %_ZN6iguana6detail14from_json_implIiRN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEETnNSt9enable_ifIX5num_vIT_EEiE4typeELi0EEEvRSF_OT0_SK_.exit.i._crit_edge, label %.lr.ph96, !llvm.loop !3

_ZN6iguana6detail14from_json_implIiRN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEETnNSt9enable_ifIX5num_vIT_EEiE4typeELi0EEEvRSF_OT0_SK_.exit.i._crit_edge: ; preds = %_ZN6iguana6detail14from_json_implIiRN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEETnNSt9enable_ifIX5num_vIT_EEiE4typeELi0EEEvRSF_OT0_SK_.exit.i, %_ZN6iguana12skip_commentIRN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvOT_SE_.exit18.i
  %i.hl = tail call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.hl, ptr noundef nonnull @.str.5)
          to label %bb.cd unwind label %bb.ce

bb.cd:                                            ; preds = %_ZN6iguana6detail14from_json_implIiRN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEETnNSt9enable_ifIX5num_vIT_EEiE4typeELi0EEEvRSF_OT0_SK_.exit.i._crit_edge
  tail call void @__cxa_throw(ptr nonnull %i.hl, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #26
  unreachable

bb.ce:                                            ; preds = %_ZN6iguana6detail14from_json_implIiRN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEETnNSt9enable_ifIX5num_vIT_EEiE4typeELi0EEEvRSF_OT0_SK_.exit.i._crit_edge
  %i.hm = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.hl) #20
  br label %common.resume

bb.cf:                                            ; preds = %bb.bp
  %i.hn = getelementptr inbounds nuw i8, ptr %i.ga, i64 1 ; 4 uses
  store ptr %i.hn, ptr %i.d, align 8, !tbaa !72
  %i.ho = load ptr, ptr %i.f, align 8, !tbaa !73  ; 3 uses
  %i.hp = icmp eq ptr %i.hn, %i.ho
  br i1 %i.hp, label %_ZN6iguana7skip_wsIRN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvOT_SE_.exit.i, label %.lr.ph100

.lr.ph100:                                        ; preds = %bb.cf, %_ZN6iguana12skip_commentIRN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvOT_SE_.exit21.i
  %i.hq = phi ptr [ %i.jb, %_ZN6iguana12skip_commentIRN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvOT_SE_.exit21.i ], [ %i.ho, %bb.cf ]
  %i.hr = phi ptr [ %i.ja, %_ZN6iguana12skip_commentIRN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvOT_SE_.exit21.i ], [ %i.hn, %bb.cf ] ; 5 uses
  %i.hs = load i8, ptr %i.hr, align 1, !tbaa !34  ; 2 uses
  %i.ht = icmp ult i8 %i.hs, 33
  br i1 %i.ht, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %.lr.ph100
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hr, i64 1
  br label %_ZN6iguana12skip_commentIRN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvOT_SE_.exit21.i.sink.split

bb.ch:                                            ; preds = %.lr.ph100
  %i.hv = icmp eq i8 %i.hs, 47
  br i1 %i.hv, label %bb.ci, label %_ZN6iguana7skip_wsIRN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvOT_SE_.exit.i

bb.ci:                                            ; preds = %bb.ch
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hr, i64 1 ; 5 uses
  store ptr %i.hw, ptr %i.d, align 8, !tbaa !72
  %i.hx = load ptr, ptr %i.f, align 8, !tbaa !73
  %i.hy = icmp eq ptr %i.hw, %i.hx
  br i1 %i.hy, label %bb.cj, label %bb.cm, !prof !60

bb.cj:                                            ; preds = %bb.ci
  %i.hz = tail call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.hz, ptr noundef nonnull @.str.7)
          to label %bb.ck unwind label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  tail call void @__cxa_throw(ptr nonnull %i.hz, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #26
  unreachable

bb.cl:                                            ; preds = %bb.cj
  %i.ia = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.hz) #20
  br label %common.resume

bb.cm:                                            ; preds = %bb.ci
  %i.ib = load i8, ptr %i.hw, align 1, !tbaa !34
  switch i8 %i.ib, label %bb.cs [
    i8 47, label %.preheader
    i8 42, label %.preheader20
  ], !prof !61

.preheader20:                                     ; preds = %bb.cm
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hr, i64 2 ; 4 uses
  store ptr %i.ic, ptr %i.d, align 8, !tbaa !72
  %i.id = load ptr, ptr %i.f, align 8, !tbaa !73
  %i.ie = icmp eq ptr %i.ic, %i.id
  br i1 %i.ie, label %_ZN6iguana12skip_commentIRN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvOT_SE_.exit21.i, label %.lr.ph97

.preheader:                                       ; preds = %bb.cm, %bb.cn
  %i.if = phi ptr [ %i.ig, %bb.cn ], [ %i.hw, %bb.cm ]
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 1 ; 6 uses
  store ptr %i.ig, ptr %i.d, align 8, !tbaa !72
  %i.ih = load ptr, ptr %i.f, align 8, !tbaa !73
  %i.ii = icmp eq ptr %i.ig, %i.ih
  br i1 %i.ii, label %_ZN6iguana12skip_commentIRN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvOT_SE_.exit21.i, label %bb.cn

bb.cn:                                            ; preds = %.preheader
  %i.ij = load i8, ptr %i.ig, align 1, !tbaa !34
  %.not.i20.i = icmp eq i8 %i.ij, 10
  br i1 %.not.i20.i, label %_ZN6iguana12skip_commentIRN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvOT_SE_.exit21.i, label %.preheader, !llvm.loop !1

.lr.ph97:                                         ; preds = %.preheader20, %bb.cr
  %i.ik = phi ptr [ %i.iv, %bb.cr ], [ %i.ic, %.preheader20 ] ; 2 uses
  %i.il = phi ptr [ %i.iu, %bb.cr ], [ %i.hw, %.preheader20 ] ; 2 uses
  %i.im = load i8, ptr %i.ik, align 1, !tbaa !34
  %i.in = icmp eq i8 %i.im, 42
  br i1 %i.in, label %bb.co, label %bb.cr, !prof !60

bb.co:                                            ; preds = %.lr.ph97
  %i.io = getelementptr inbounds nuw i8, ptr %i.il, i64 2 ; 5 uses
  store ptr %i.io, ptr %i.d, align 8, !tbaa !72
  %i.ip = load ptr, ptr %i.f, align 8, !tbaa !73
  %i.iq = icmp eq ptr %i.io, %i.ip
  br i1 %i.iq, label %_ZN6iguana12skip_commentIRN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvOT_SE_.exit21.i, label %bb.cp, !prof !60

bb.cp:                                            ; preds = %bb.co
  %i.ir = load i8, ptr %i.io, align 1, !tbaa !34
  %i.is = icmp eq i8 %i.ir, 47
  br i1 %i.is, label %bb.cq, label %bb.cr, !prof !62

bb.cq:                                            ; preds = %bb.cp
  %i.it = getelementptr inbounds nuw i8, ptr %i.il, i64 3
  br label %_ZN6iguana12skip_commentIRN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvOT_SE_.exit21.i.sink.split

bb.cr:                                            ; preds = %bb.cp, %.lr.ph97
  %i.iu = phi ptr [ %i.io, %bb.cp ], [ %i.ik, %.lr.ph97 ] ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 1 ; 4 uses
  store ptr %i.iv, ptr %i.d, align 8, !tbaa !72
  %i.iw = load ptr, ptr %i.f, align 8, !tbaa !73
  %i.ix = icmp eq ptr %i.iv, %i.iw
  br i1 %i.ix, label %_ZN6iguana12skip_commentIRN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvOT_SE_.exit21.i, label %.lr.ph97, !llvm.loop !2

bb.cs:                                            ; preds = %bb.cm
  %i.iy = tail call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.iy, ptr noundef nonnull @.str.8)
          to label %bb.ct unwind label %bb.cu

bb.ct:                                            ; preds = %bb.cs
  tail call void @__cxa_throw(ptr nonnull %i.iy, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #26
  unreachable

bb.cu:                                            ; preds = %bb.cs
  %i.iz = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.iy) #20
  br label %common.resume

_ZN6iguana12skip_commentIRN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvOT_SE_.exit21.i.sink.split: ; preds = %bb.cg, %bb.cq
  %.sink301 = phi ptr [ %i.it, %bb.cq ], [ %i.hu, %bb.cg ] ; 2 uses
  store ptr %.sink301, ptr %i.d, align 8, !tbaa !72
  br label %_ZN6iguana12skip_commentIRN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvOT_SE_.exit21.i

_ZN6iguana12skip_commentIRN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvOT_SE_.exit21.i: ; preds = %bb.co, %bb.cr, %.preheader, %bb.cn, %_ZN6iguana12skip_commentIRN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvOT_SE_.exit21.i.sink.split, %.preheader20
  %i.ja = phi ptr [ %.sink301, %_ZN6iguana12skip_commentIRN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvOT_SE_.exit21.i.sink.split ], [ %i.ig, %.preheader ], [ %i.ic, %.preheader20 ], [ %i.ig, %bb.cn ], [ %i.io, %bb.co ], [ %i.iv, %bb.cr ] ; 3 uses
  %i.jb = load ptr, ptr %i.f, align 8, !tbaa !73  ; 3 uses
  %i.jc = icmp eq ptr %i.ja, %i.jb
  br i1 %i.jc, label %_ZN6iguana7skip_wsIRN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvOT_SE_.exit.i, label %.lr.ph100, !llvm.loop !3

_ZN6iguana7skip_wsIRN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvOT_SE_.exit.i: ; preds = %_ZN6iguana12skip_commentIRN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvOT_SE_.exit21.i, %bb.ch, %bb.cf
  %i.jd = phi ptr [ %i.ho, %bb.cf ], [ %i.jb, %_ZN6iguana12skip_commentIRN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvOT_SE_.exit21.i ], [ %i.hq, %bb.ch ]
  %i.je = phi ptr [ %i.hn, %bb.cf ], [ %i.ja, %_ZN6iguana12skip_commentIRN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvOT_SE_.exit21.i ], [ %i.hr, %bb.ch ]
  %i.jf = add nuw nsw i64 %.0.i.i103, 1           ; 2 uses
  %exitcond.not = icmp eq i64 %i.jf, 3
  br i1 %exitcond.not, label %_ZZN6iguana9from_jsonI4nestN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEETnNSt9enable_ifIX16ylt_refletable_vIT_EEiE4typeELi0EEEvRSE_OT0_SJ_ENKUlSE_E_clIN3ylt10reflection8internal8offset_tIN8my_space9my_structEEEEEDaSE_.exit, label %.preheader28, !llvm.loop !5

bb.cv:                                            ; preds = %bb.bp
  %i.jg = tail call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.jg, ptr noundef nonnull @.str.6)
          to label %bb.cw unwind label %bb.cx

bb.cw:                                            ; preds = %bb.cv
  tail call void @__cxa_throw(ptr nonnull %i.jg, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #26
  unreachable

bb.cx:                                            ; preds = %bb.cv
  %i.jh = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.jg) #20
  br label %common.resume

_ZZN6iguana9from_jsonI4nestN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEETnNSt9enable_ifIX16ylt_refletable_vIT_EEiE4typeELi0EEEvRSE_OT0_SJ_ENKUlSE_E_clIN3ylt10reflection8internal8offset_tIN8my_space9my_structEEEEEDaSE_.exit.sink.split: ; preds = %bb.aa, %bb.bp
  %.lcssa274.sink = phi ptr [ %i.ga, %bb.bp ], [ %i.bk, %bb.aa ]
  %i.ji = getelementptr inbounds nuw i8, ptr %.lcssa274.sink, i64 1
  store ptr %i.ji, ptr %i.d, align 8, !tbaa !72
  br label %_ZZN6iguana9from_jsonI4nestN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEETnNSt9enable_ifIX16ylt_refletable_vIT_EEiE4typeELi0EEEvRSE_OT0_SJ_ENKUlSE_E_clIN3ylt10reflection8internal8offset_tIN8my_space9my_structEEEEEDaSE_.exit

_ZZN6iguana9from_jsonI4nestN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEETnNSt9enable_ifIX16ylt_refletable_vIT_EEiE4typeELi0EEEvRSE_OT0_SJ_ENKUlSE_E_clIN3ylt10reflection8internal8offset_tIN8my_space9my_structEEEEEDaSE_.exit: ; preds = %_ZN6iguana7skip_wsIRN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvOT_SE_.exit.i, %_ZZN6iguana9from_jsonI4nestN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEETnNSt9enable_ifIX16ylt_refletable_vIT_EEiE4typeELi0EEEvRSE_OT0_SJ_ENKUlSE_E_clIN3ylt10reflection8internal8offset_tIN8my_space9my_structEEEEEDaSE_.exit.sink.split
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #23

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind }
attributes #2 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold nofree noreturn }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { cold noreturn }
attributes #19 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { nounwind }
attributes #21 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #24 = { noreturn nounwind }
attributes #25 = { builtin nounwind }
attributes #26 = { noreturn }
attributes #27 = { builtin allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) }

!llvm.module.flags = !{!8, !9, !10}
!llvm.ident = !{!11}
!llvm.errno.tbaa = !{!16}

!0 = distinct !{null, null, null, null}
!1 = distinct !{!1, !28}
!2 = distinct !{!2, !28}
!3 = distinct !{!3, !28}
!4 = distinct !{!4, !28}
!5 = distinct !{!5, !28}
!6 = distinct !{!6, !28}
!7 = distinct !{!7, !28}
!8 = !{i32 8, !"PIC Level", i32 2}
!9 = !{i32 7, !"PIE Level", i32 2}
!10 = !{i32 7, !"uwtable", i32 2}
!11 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!12 = !{!"Simple C++ TBAA"}
!13 = !{!"omnipotent char", !12, i64 0}
!14 = !{!"int", !13, i64 0}
!15 = !{!"__libc_errno", !14, i64 0}
!16 = !{!15, !14, i64 0}
!17 = !{!"any pointer", !13, i64 0}
!18 = !{!"any p2 pointer", !17, i64 0}
!19 = !{!"p2 _ZTSNSt8__detail15_Hash_node_baseE", !18, i64 0}
!20 = !{!"long", !13, i64 0}
!21 = !{!"p1 _ZTSNSt8__detail15_Hash_node_baseE", !17, i64 0}
!22 = !{!"_ZTSNSt8__detail15_Hash_node_baseE", !21, i64 0}
!23 = !{!"float", !13, i64 0}
!24 = !{!"_ZTSNSt8__detail20_Prime_rehash_policyE", !23, i64 0, !20, i64 8}
!25 = !{!"_ZTSSt10_HashtableISt17basic_string_viewIcSt11char_traitsIcEESt4pairIKS3_St8functionIFSt10shared_ptrIN6iguana6detail4baseEEvEEESaISE_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENSG_18_Mod_range_hashingENSG_20_Default_ranged_hashENSG_20_Prime_rehash_policyENSG_17_Hashtable_traitsILb1ELb0ELb1EEEE", !19, i64 0, !20, i64 8, !22, i64 16, !20, i64 24, !24, i64 32, !21, i64 48}
!26 = !{!25, !19, i64 0}
!27 = !{!25, !20, i64 8}
!28 = !{!"llvm.loop.mustprogress"}
!29 = !{!"p1 omnipotent char", !17, i64 0}
!30 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !29, i64 0}
!31 = !{!30, !29, i64 0}
!32 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !30, i64 0, !20, i64 8, !13, i64 16}
!33 = !{!32, !20, i64 8}
!34 = !{!13, !13, i64 0}
!35 = !{!32, !29, i64 0}
!36 = !{!"vtable pointer", !12, i64 0}
!37 = !{!36, !36, i64 0}
!38 = !{!"_ZTSSt13_Ios_Fmtflags", !13, i64 0}
!39 = !{!"_ZTSSt12_Ios_Iostate", !13, i64 0}
!40 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !17, i64 0}
!41 = !{!"_ZTSNSt8ios_base6_WordsE", !17, i64 0, !20, i64 8}
!42 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !17, i64 0}
!43 = !{!"p1 _ZTSNSt6locale5_ImplE", !17, i64 0}
!44 = !{!"_ZTSSt6locale", !43, i64 0}
!45 = !{!"_ZTSSt8ios_base", !20, i64 8, !20, i64 16, !38, i64 24, !39, i64 28, !39, i64 32, !40, i64 40, !41, i64 48, !13, i64 64, !14, i64 192, !42, i64 200, !44, i64 208}
!46 = !{!"p1 _ZTSSo", !17, i64 0}
!47 = !{!"bool", !13, i64 0}
!48 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !17, i64 0}
!49 = !{!"p1 _ZTSSt5ctypeIcE", !17, i64 0}
!50 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !17, i64 0}
!51 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !17, i64 0}
!52 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !45, i64 0, !46, i64 216, !13, i64 224, !47, i64 225, !48, i64 232, !49, i64 240, !50, i64 248, !51, i64 256}
!53 = !{!52, !49, i64 240}
!54 = !{!"_ZTSNSt6locale5facetE", !14, i64 8}
!55 = !{!"p1 _ZTS15__locale_struct", !17, i64 0}
!56 = !{!"p1 int", !17, i64 0}
!57 = !{!"p1 short", !17, i64 0}
!58 = !{!"_ZTSSt5ctypeIcE", !54, i64 0, !55, i64 16, !47, i64 24, !56, i64 32, !56, i64 40, !57, i64 48, !13, i64 56, !13, i64 57, !13, i64 313, !13, i64 569}
!59 = !{!58, !13, i64 56}
!60 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!61 = !{!"branch_weights", i32 1, i32 2001, i32 2000}
!62 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!63 = !{!"branch_weights", i32 2000, i32 2001, i32 1}
!64 = !{!"branch_weights", i32 1073205, i32 2146410443}
!65 = !{!"branch_weights", i32 -1320871959, i32 1320871959}
!66 = !{!14, !14, i64 0}
!67 = !{!"branch_weights", i32 1, i32 4004001, i32 4002000, i32 2000}
!68 = !{!20, !20, i64 0}
!69 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !17, i64 0}
!70 = !{!"p1 long", !17, i64 0}
!71 = !{!"_ZTSN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE", !29, i64 0}
!72 = !{!71, !29, i64 0}
!73 = !{!29, !29, i64 0}
!74 = !{!"branch_weights", i32 1, i32 1048575}
!75 = !{!"_ZTSN6frozen4bits6carrayINS0_13seed_or_indexELm4EEE", !13, i64 0}
!76 = !{!"_ZTSN6frozen4bits6carrayImLm4EEE", !13, i64 0}
!77 = !{!"_ZTSN6frozen4elsaINS_12basic_stringIcEEEE"}
!78 = !{!"_ZTSN6frozen4bits10pmh_tablesILm4ENS_4elsaINS_12basic_stringIcEEEEEE", !20, i64 0, !75, i64 8, !76, i64 40, !77, i64 72}
!79 = !{!78, !20, i64 0}
!80 = !{!"llvm.loop.unroll.disable"}
!81 = !{!"p1 _ZTS4nest", !17, i64 0}
!82 = !{!"p1 _ZTSN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE", !17, i64 0}
!83 = !{!"_ZTSZN6iguana7to_jsonILb1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEER4nestTnNSt9enable_ifIX16ylt_refletable_vIT1_EEiE4typeELi0EEEvOSA_RT0_EUlRT_SE_SA_E_", !69, i64 0, !70, i64 8}
!84 = !{!83, !69, i64 0}
!85 = !{}
!86 = !{i64 8}
!87 = !{!"_ZTSN6frozen4bits7cvectorImLm4EEE", !13, i64 0, !20, i64 32}
!88 = !{!87, !20, i64 32}
!89 = !{!"p1 _ZTSN6frozen4bits7cvectorImLm4EEE", !17, i64 0}
!90 = !{!89, !89, i64 0}
!91 = !{!"_ZTSN6frozen4bits11pmh_bucketsILm4EE10bucket_refE", !14, i64 0, !89, i64 8}
!92 = !{!91, !89, i64 8}
!93 = !{!"_ZTSZN6iguana9from_jsonI4nestN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEETnNSt9enable_ifIX16ylt_refletable_vIT_EEiE4typeELi0EEEvRSE_OT0_SJ_EUlSE_E_", !81, i64 0, !82, i64 8, !82, i64 16}
!94 = !{!93, !81, i64 0}
!95 = !{!93, !82, i64 8}
!96 = !{!93, !82, i64 16}
!97 = !{!24, !23, i64 0}
!98 = distinct !{!98, !28}
!99 = !{!25, !21, i64 16}
!100 = !{!22, !21, i64 0}
!101 = !{!"_ZTSSt14_Function_base", !13, i64 0, !17, i64 16}
!102 = !{!101, !17, i64 16}
!103 = distinct !{!103, !28}
!104 = distinct !{!104, !80}
!105 = distinct !{!105, !80}
!106 = distinct !{!106, !28}
!107 = distinct !{!107, !28}
!108 = distinct !{!108, !28}
!109 = distinct !{!109, !28}
!110 = distinct !{!110, !28}
!111 = distinct !{!111, !28}
!112 = !{!"_ZTSN8my_space9my_structE", !14, i64 0, !14, i64 4, !14, i64 8}
!113 = !{!112, !14, i64 0}
!114 = !{!112, !14, i64 4}
!115 = !{!112, !14, i64 8}
!116 = !{!69, !69, i64 0}
!117 = !{!70, !70, i64 0}
!118 = !{!"branch_weights", i32 1, i32 1023}
!119 = !{!"_ZTSN6frozen12basic_stringIcEE", !29, i64 0, !20, i64 8}
!120 = !{!119, !20, i64 8}
!121 = !{!119, !29, i64 0}
!122 = !{!81, !81, i64 0}
!123 = !{!82, !82, i64 0}
!124 = !{!"_ZTSNSt8__detail9__variant16_Variant_storageILb1EJN3ylt10reflection8internal8offset_tINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS5_IN8my_space9my_structEEEEEE", !13, i64 0, !13, i64 8}
!125 = !{!124, !13, i64 8}
!126 = distinct !{!126, !28}
!127 = !{!"branch_weights", i32 4001, i32 4000000}
!128 = distinct !{!128, i1 true, !"_ZN3ylt10reflection8internal20get_variant_map_implI4nestJLm0ELm1EEEEDaSt16integer_sequenceImJXspT0_EEE"}
!129 = distinct !{!129, !128, !"_ZN3ylt10reflection8internal20get_variant_map_implI4nestJLm0ELm1EEEEDaSt16integer_sequenceImJXspT0_EEE: argument 0"}
!130 = !{!129}
!131 = distinct !{!131, i1 true, !"_ZN6frozen4bits16make_pmh_bucketsILm4ESt4pairINS_12basic_stringIcEESt7variantIJN3ylt10reflection8internal8offset_tINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS9_IN8my_space9my_structEEEEEELm2ENS_4elsaIS4_EENS0_6GetKeyENS_26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEENS0_11pmh_bucketsIXT_EEERKNS0_6carrayIT0_XT1_EEERKT2_RKT3_RT4_"}
!132 = distinct !{!132, !131, !"_ZN6frozen4bits16make_pmh_bucketsILm4ESt4pairINS_12basic_stringIcEESt7variantIJN3ylt10reflection8internal8offset_tINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS9_IN8my_space9my_structEEEEEELm2ENS_4elsaIS4_EENS0_6GetKeyENS_26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEENS0_11pmh_bucketsIXT_EEERKNS0_6carrayIT0_XT1_EEERKT2_RKT3_RT4_: argument 0"}
!133 = distinct !{!133, !80}
!134 = distinct !{!134, !28}
!135 = distinct !{!135, !80}
!136 = distinct !{!136, !80}
!137 = distinct !{!137, i1 true, !"_ZNK6frozen4bits11pmh_bucketsILm4EE18get_sorted_bucketsEv"}
!138 = distinct !{!138, !137, !"_ZNK6frozen4bits11pmh_bucketsILm4EE18get_sorted_bucketsEv: argument 0"}
!139 = distinct !{!139, i1 true, !"_ZNK6frozen4bits11pmh_bucketsILm4EE16make_bucket_refsIJLm0ELm1ELm2ELm3EEEENS0_6carrayINS2_10bucket_refELm4EEESt16integer_sequenceImJXspT_EEE"}
!140 = distinct !{!140, !139, !"_ZNK6frozen4bits11pmh_bucketsILm4EE16make_bucket_refsIJLm0ELm1ELm2ELm3EEEENS0_6carrayINS2_10bucket_refELm4EEESt16integer_sequenceImJXspT_EEE: argument 0"}
!141 = distinct !{!141, !80}
!142 = distinct !{!142, !28}
!143 = distinct !{!143, !28}
!144 = distinct !{!144, !80}
!145 = distinct !{!145, !28}
!146 = !{!132}
!147 = !{!"_ZTSN6frozen4bits6carrayINS0_7cvectorImLm4EEELm4EEE", !13, i64 0}
!148 = !{!"_ZTSN6frozen4bits11pmh_bucketsILm4EEE", !147, i64 0, !20, i64 160}
!149 = !{!148, !20, i64 160}
!150 = !{!138}
!151 = !{!140, !138}
!152 = !{!"_ZTSN6frozen4bits13seed_or_indexE", !20, i64 0}
!153 = !{!152, !20, i64 0}
!154 = !{!91, !14, i64 0}
!155 = !{i64 0, i64 32, !34}
!156 = distinct !{!156, !28}
!157 = distinct !{!157, !28}
!158 = !{i64 0, i64 4, !66, i64 8, i64 8, !90}
!159 = distinct !{!159, !28}
end_hunk_0
