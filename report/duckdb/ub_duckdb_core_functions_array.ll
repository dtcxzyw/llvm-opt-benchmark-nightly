inline.NumInlined: 1137
inline.NumDeleted: 352
loop-unroll.NumCompletelyUnrolled: 40
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 50
begin_hunk_0_@_ZN6duckdbL16ArrayGenericFoldIfNS_18CosineSimilarityOpEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE:bb.a
bb.ab:                                            ; preds = %bb.z, %bb.y
  %.074 = phi i1 [ false, %bb.z ], [ true, %bb.y ] ; 2 uses
  %i.bv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bw = load ptr, ptr %5, align 8, !tbaa !15    ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.by = icmp eq ptr %i.bw, %i.bx
  br i1 %i.by, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.ab
  call void @_ZdlPv(ptr noundef %i.bw) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.aa
  %.175 = phi i1 [ true, %bb.aa ], [ %.074, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %.074, %bb.ab ] ; 2 uses
  %.pn = phi { ptr, i32 } [ %i.bu, %bb.aa ], [ %i.bv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.bv, %bb.ab ] ; 4 uses
  %i.bz = load ptr, ptr %8, align 8, !tbaa !15    ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.cb = icmp eq ptr %i.bz, %i.ca
  br i1 %i.cb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZdlPv(ptr noundef %i.bz) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105
  %i.cc = load ptr, ptr %6, align 8, !tbaa !15    ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ce = icmp eq ptr %i.cc, %i.cd
  br i1 %i.ce, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107.thread: ; preds = %bb.w
  %i.cf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cg = load ptr, ptr %6, align 8, !tbaa !15    ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ci = icmp eq ptr %i.cg, %i.ch
  br i1 %i.ci, label %.sink.split, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107.thread
  call void @_ZdlPv(ptr noundef %i.cg) #19
  br label %.sink.split

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107
  call void @_ZdlPv(ptr noundef %i.cc) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br i1 %.175, label %bb.ac, label %bb.bm

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br i1 %.175, label %bb.ac, label %bb.bm

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108.thread
  %.pn.pn.pn146.ph = phi { ptr, i32 } [ %i.cf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108.thread ], [ %i.bt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110.thread ], [ %i.cf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %bb.ac

bb.ac:                                            ; preds = %.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110
  %.pn.pn.pn146 = phi { ptr, i32 } [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110 ], [ %.pn.pn.pn146.ph, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.bs) #20
  br label %bb.bm

.loopexit174:                                     ; preds = %bb.v, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit104.thread
  %i.cj = mul i64 %i.as, %i.w                     ; 4 uses
  %i.ck = add i64 %i.cj, %i.w                     ; 2 uses
  %i.cl = load ptr, ptr %i.l, align 8, !tbaa !137 ; 2 uses
  %.not.i.i111 = icmp ne ptr %i.cl, null
  %.not12.i112 = icmp ult i64 %i.cj, %i.ck
  %or.cond.i113 = and i1 %.not12.i112, %.not.i.i111
  br i1 %or.cond.i113, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i115, label %.loopexit

bb.ad:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i115
  %i.cm = add i64 %.0710.i116, 1                  ; 2 uses
  %exitcond.not.i118 = icmp eq i64 %i.cm, %i.ck
  br i1 %exitcond.not.i118, label %.loopexit, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i115, !llvm.loop !221

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i115: ; preds = %.loopexit174, %bb.ad
  %.0710.i116 = phi i64 [ %i.cm, %bb.ad ], [ %i.cj, %.loopexit174 ] ; 3 uses
  %i.cn = lshr i64 %.0710.i116, 6
  %i.co = and i64 %.0710.i116, 63
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %i.cn
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !71
  %i.cr = shl nuw i64 1, %i.co
  %i.cs = and i64 %i.cr, %i.cq
  %.not.not.i117 = icmp eq i64 %i.cs, 0
  br i1 %.not.not.i117, label %_ZNK6duckdb21TemplatedValidityMaskImE13CheckAllValidEmm.exit119, label %bb.ad

_ZNK6duckdb21TemplatedValidityMaskImE13CheckAllValidEmm.exit119: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i115
  %i.ct = call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @.str.18, ptr noundef nonnull align 1 dereferenceable(1) %11)
          to label %bb.ae unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128.thread

bb.ae:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE13CheckAllValidEmm.exit119
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %i.d)
          to label %bb.af unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125.thread

bb.af:                                            ; preds = %bb.ae
  invoke void @_ZN6duckdb10StringUtil6FormatIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_S7_DpT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull %10, ptr noundef nonnull %12)
          to label %bb.ag unwind label %bb.ai

bb.ag:                                            ; preds = %bb.af
  invoke void @_ZN6duckdb21InvalidInputExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.ct, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.ah unwind label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  invoke void @__cxa_throw(ptr nonnull %i.ct, ptr nonnull @_ZTIN6duckdb21InvalidInputExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #22
          to label %bb.bo unwind label %bb.aj

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128.thread: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE13CheckAllValidEmm.exit119
  %i.cu = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split210

bb.ai:                                            ; preds = %bb.af
  %i.cv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122

bb.aj:                                            ; preds = %bb.ah, %bb.ag
  %.069 = phi i1 [ false, %bb.ah ], [ true, %bb.ag ] ; 2 uses
  %i.cw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cx = load ptr, ptr %9, align 8, !tbaa !15    ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.cz = icmp eq ptr %i.cx, %i.cy
  br i1 %i.cz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120: ; preds = %bb.aj
  call void @_ZdlPv(ptr noundef %i.cx) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122: ; preds = %bb.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120, %bb.ai
  %.170 = phi i1 [ true, %bb.ai ], [ %.069, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120 ], [ %.069, %bb.aj ] ; 2 uses
  %.pn82 = phi { ptr, i32 } [ %i.cv, %bb.ai ], [ %i.cw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120 ], [ %i.cw, %bb.aj ] ; 4 uses
  %i.da = load ptr, ptr %12, align 8, !tbaa !15   ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.dc = icmp eq ptr %i.da, %i.db
  br i1 %i.dc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i123

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i123: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122
  call void @_ZdlPv(ptr noundef %i.da) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i123
  %i.dd = load ptr, ptr %10, align 8, !tbaa !15   ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.df = icmp eq ptr %i.dd, %i.de
  br i1 %i.df, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125.thread: ; preds = %bb.ae
  %i.dg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dh = load ptr, ptr %10, align 8, !tbaa !15   ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.dj = icmp eq ptr %i.dh, %i.di
  br i1 %i.dj, label %.sink.split210, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125.thread
  call void @_ZdlPv(ptr noundef %i.dh) #19
  br label %.sink.split210

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125
  call void @_ZdlPv(ptr noundef %i.dd) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  br i1 %.170, label %bb.ak, label %bb.bm

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  br i1 %.170, label %bb.ak, label %bb.bm

.sink.split210:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126.thread
  %.pn82.pn.pn159.ph = phi { ptr, i32 } [ %i.dg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126.thread ], [ %i.cu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128.thread ], [ %i.dg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  br label %bb.ak

bb.ak:                                            ; preds = %.sink.split210, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128
  %.pn82.pn.pn159 = phi { ptr, i32 } [ %.pn82, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126 ], [ %.pn82, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128 ], [ %.pn82.pn.pn159.ph, %.sink.split210 ]
  call void @__cxa_free_exception(ptr %i.ct) #20
  br label %bb.bm

.loopexit:                                        ; preds = %bb.ad, %.loopexit174
  br i1 %.not.i129, label %bb.al, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.loopexit
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.cj ; 2 uses
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.bi ; 2 uses
  br i1 %i.z, label %.lr.ph.i.epil.preheader, label %.lr.ph.i

._crit_edge.loopexit.i.unr-lcssa:                 ; preds = %.lr.ph.i
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %._crit_edge.loopexit.i.unr-lcssa, %.lr.ph.i.preheader
  %.033.i.epil.init = phi float [ 0.000000e+00, %.lr.ph.i.preheader ], [ %i.dy, %._crit_edge.loopexit.i.unr-lcssa ]
  %.01832.i.epil.init = phi float [ 0.000000e+00, %.lr.ph.i.preheader ], [ %18, %._crit_edge.loopexit.i.unr-lcssa ]
  %.02030.i.epil.init = phi ptr [ %i.dk, %.lr.ph.i.preheader ], [ %i.dw, %._crit_edge.loopexit.i.unr-lcssa ]
  %.02129.i.epil.init = phi ptr [ %i.dl, %.lr.ph.i.preheader ], [ %i.du, %._crit_edge.loopexit.i.unr-lcssa ]
  %.02228.i.epil.init = phi float [ 0.000000e+00, %.lr.ph.i.preheader ], [ %19, %._crit_edge.loopexit.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod218)
  %i.dm = load float, ptr %.02129.i.epil.init, align 4, !tbaa !138 ; 3 uses
  %i.dn = load float, ptr %.02030.i.epil.init, align 4, !tbaa !138 ; 3 uses
  %i.do = call float @llvm.fmuladd.f32(float %i.dm, float %i.dn, float %.033.i.epil.init)
  %13 = call float @llvm.fmuladd.f32(float %i.dm, float %i.dm, float %.01832.i.epil.init)
  %14 = call float @llvm.fmuladd.f32(float %i.dn, float %i.dn, float %.02228.i.epil.init)
  br label %._crit_edge.loopexit.i

._crit_edge.loopexit.i:                           ; preds = %._crit_edge.loopexit.i.unr-lcssa, %.lr.ph.i.epil.preheader
  %.lcssa214 = phi float [ %i.dy, %._crit_edge.loopexit.i.unr-lcssa ], [ %i.do, %.lr.ph.i.epil.preheader ]
  %.lcssa213 = phi float [ %18, %._crit_edge.loopexit.i.unr-lcssa ], [ %13, %.lr.ph.i.epil.preheader ]
  %.lcssa = phi float [ %19, %._crit_edge.loopexit.i.unr-lcssa ], [ %14, %.lr.ph.i.epil.preheader ]
  %15 = fmul float %.lcssa213, %.lcssa
  br label %bb.al

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.033.i = phi float [ %i.dy, %.lr.ph.i ], [ 0.000000e+00, %.lr.ph.i.preheader ]
  %.01832.i = phi float [ %18, %.lr.ph.i ], [ 0.000000e+00, %.lr.ph.i.preheader ]
  %.02030.i = phi ptr [ %i.dw, %.lr.ph.i ], [ %i.dk, %.lr.ph.i.preheader ] ; 3 uses
  %.02129.i = phi ptr [ %i.du, %.lr.ph.i ], [ %i.dl, %.lr.ph.i.preheader ] ; 3 uses
  %.02228.i = phi float [ %19, %.lr.ph.i ], [ 0.000000e+00, %.lr.ph.i.preheader ]
  %niter = phi i64 [ %niter.next.1, %.lr.ph.i ], [ 0, %.lr.ph.i.preheader ]
  %i.dp = getelementptr inbounds nuw i8, ptr %.02129.i, i64 4
  %i.dq = load float, ptr %.02129.i, align 4, !tbaa !138 ; 3 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.02030.i, i64 4
  %i.ds = load float, ptr %.02030.i, align 4, !tbaa !138 ; 3 uses
  %i.dt = call float @llvm.fmuladd.f32(float %i.dq, float %i.ds, float %.033.i)
  %16 = call float @llvm.fmuladd.f32(float %i.dq, float %i.dq, float %.01832.i)
  %17 = call float @llvm.fmuladd.f32(float %i.ds, float %i.ds, float %.02228.i)
  %i.du = getelementptr inbounds nuw i8, ptr %.02129.i, i64 8 ; 2 uses
  %i.dv = load float, ptr %i.dp, align 4, !tbaa !138 ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.02030.i, i64 8 ; 2 uses
  %i.dx = load float, ptr %i.dr, align 4, !tbaa !138 ; 3 uses
  %i.dy = call float @llvm.fmuladd.f32(float %i.dv, float %i.dx, float %i.dt) ; 3 uses
  %18 = call float @llvm.fmuladd.f32(float %i.dv, float %i.dv, float %16) ; 3 uses
  %19 = call float @llvm.fmuladd.f32(float %i.dx, float %i.dx, float %17) ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.i.unr-lcssa, label %.lr.ph.i, !llvm.loop !263

bb.al:                                            ; preds = %._crit_edge.loopexit.i, %.loopexit
  %.0.lcssa.i = phi float [ 0.000000e+00, %.loopexit ], [ %.lcssa214, %._crit_edge.loopexit.i ]
  %i.dz = phi float [ 0.000000e+00, %.loopexit ], [ %15, %._crit_edge.loopexit.i ]
  %i.ea = call noundef float @sqrtf(float noundef %i.dz) #20, !tbaa !3
  %i.eb = fdiv float %.0.lcssa.i, %i.ea           ; 2 uses
  %i.ec = fcmp ogt float %i.eb, 1.000000e+00
  %.sroa.speculated26.i = select i1 %i.ec, float 1.000000e+00, float %i.eb ; 2 uses
  %i.ed = fcmp ogt float %.sroa.speculated26.i, -1.000000e+00
  %.sroa.speculated.i = select i1 %i.ed, float %.sroa.speculated26.i, float -1.000000e+00
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %.073177
  store float %.sroa.speculated.i, ptr %i.ee, align 4, !tbaa !138
  br label %bb.am

bb.am:                                            ; preds = %bb.t, %bb.al
  %i.ef = add nuw i64 %.073177, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.ef, %i.f
  br i1 %exitcond.not, label %._crit_edge, label %bb.q, !llvm.loop !264

bb.an:                                            ; preds = %._crit_edge
  invoke void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %2, i8 noundef zeroext 2)
          to label %._crit_edge.thread unwind label %bb.p

._crit_edge.thread:                               ; preds = %.preheader, %bb.an, %._crit_edge
  %i.eg = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !51 ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.eh, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, label %bb.ao

bb.ao:                                            ; preds = %._crit_edge.thread
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 8 ; 4 uses
  %i.ej = load atomic i64, ptr %i.ei acquire, align 8 ; 2 uses
  %i.ek = icmp eq i64 %i.ej, 4294967297
  %i.el = trunc i64 %i.ej to i32                  ; 2 uses
  br i1 %i.ek, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  store i32 0, ptr %i.ei, align 8, !tbaa !62
  %i.em = getelementptr inbounds nuw i8, ptr %i.eh, i64 12
  store i32 0, ptr %i.em, align 4, !tbaa !64
  %i.en = load ptr, ptr %i.eh, align 8, !tbaa !49
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  %i.ep = load ptr, ptr %i.eo, align 8
  call void %i.ep(ptr noundef nonnull align 8 dereferenceable(16) %i.eh) #20, !inline_history !141
  %i.eq = load ptr, ptr %i.eh, align 8, !tbaa !49
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 24
  %i.es = load ptr, ptr %i.er, align 8
  call void %i.es(ptr noundef nonnull align 8 dereferenceable(16) %i.eh) #20, !inline_history !141
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i

bb.aq:                                            ; preds = %bb.ao
  %i.et = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i.i.i = icmp eq i8 %i.et, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.eu = add nsw i32 %i.el, -1
  store i32 %i.eu, ptr %i.ei, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.as:                                            ; preds = %bb.aq
  %i.ev = atomicrmw volatile add ptr %i.ei, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.as, %bb.ar
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.el, %bb.ar ], [ %i.ev, %bb.as ]
  %i.ew = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.ew, label %bb.at, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, !prof !66

bb.at:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.eh) #20
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i

_ZN6duckdb15SelectionVectorD2Ev.exit.i:           ; preds = %bb.at, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.ap, %._crit_edge.thread
  %i.ex = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !51 ; 8 uses
  %.not.i.i.i.i1.i = icmp eq ptr %i.ey, null
  br i1 %.not.i.i.i.i1.i, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, label %bb.au

bb.au:                                            ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 8 ; 4 uses
  %i.fa = load atomic i64, ptr %i.ez acquire, align 8 ; 2 uses
  %i.fb = icmp eq i64 %i.fa, 4294967297
  %i.fc = trunc i64 %i.fa to i32                  ; 2 uses
  br i1 %i.fb, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  store i32 0, ptr %i.ez, align 8, !tbaa !62
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ey, i64 12
  store i32 0, ptr %i.fd, align 4, !tbaa !64
  %i.fe = load ptr, ptr %i.ey, align 8, !tbaa !49
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 16
  %i.fg = load ptr, ptr %i.ff, align 8
  call void %i.fg(ptr noundef nonnull align 8 dereferenceable(16) %i.ey) #20, !inline_history !142
  %i.fh = load ptr, ptr %i.ey, align 8, !tbaa !49
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 24
  %i.fj = load ptr, ptr %i.fi, align 8
  call void %i.fj(ptr noundef nonnull align 8 dereferenceable(16) %i.ey) #20, !inline_history !142
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

bb.aw:                                            ; preds = %bb.au
  %i.fk = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i.i2.i = icmp eq i8 %i.fk, 0
  br i1 %.not.i.i.i.i.i2.i, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.fl = add nsw i32 %i.fc, -1
  store i32 %i.fl, ptr %i.ez, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

bb.ay:                                            ; preds = %bb.aw
  %i.fm = atomicrmw volatile add ptr %i.ez, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i: ; preds = %bb.ay, %bb.ax
  %.0.i.i.i.i.i.i4.i = phi i32 [ %i.fc, %bb.ax ], [ %i.fm, %bb.ay ]
  %i.fn = icmp eq i32 %.0.i.i.i.i.i.i4.i, 1
  br i1 %i.fn, label %bb.az, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, !prof !66

bb.az:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ey) #20
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

_ZN6duckdb19UnifiedVectorFormatD2Ev.exit:         ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i, %bb.av, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %i.fo = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !51 ; 8 uses
  %.not.i.i.i.i.i131 = icmp eq ptr %i.fp, null
  br i1 %.not.i.i.i.i.i131, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i135, label %bb.ba

bb.ba:                                            ; preds = %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 8 ; 4 uses
  %i.fr = load atomic i64, ptr %i.fq acquire, align 8 ; 2 uses
  %i.fs = icmp eq i64 %i.fr, 4294967297
  %i.ft = trunc i64 %i.fr to i32                  ; 2 uses
  br i1 %i.fs, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  store i32 0, ptr %i.fq, align 8, !tbaa !62
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fp, i64 12
  store i32 0, ptr %i.fu, align 4, !tbaa !64
  %i.fv = load ptr, ptr %i.fp, align 8, !tbaa !49
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 16
  %i.fx = load ptr, ptr %i.fw, align 8
  call void %i.fx(ptr noundef nonnull align 8 dereferenceable(16) %i.fp) #20, !inline_history !141
  %i.fy = load ptr, ptr %i.fp, align 8, !tbaa !49
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 24
  %i.ga = load ptr, ptr %i.fz, align 8
  call void %i.ga(ptr noundef nonnull align 8 dereferenceable(16) %i.fp) #20, !inline_history !141
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i135

bb.bc:                                            ; preds = %bb.ba
  %i.gb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i.i.i132 = icmp eq i8 %i.gb, 0
  br i1 %.not.i.i.i.i.i.i132, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.gc = add nsw i32 %i.ft, -1
  store i32 %i.gc, ptr %i.fq, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i133

bb.be:                                            ; preds = %bb.bc
  %i.gd = atomicrmw volatile add ptr %i.fq, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i133

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i133: ; preds = %bb.be, %bb.bd
  %.0.i.i.i.i.i.i.i134 = phi i32 [ %i.ft, %bb.bd ], [ %i.gd, %bb.be ]
  %i.ge = icmp eq i32 %.0.i.i.i.i.i.i.i134, 1
  br i1 %i.ge, label %bb.bf, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i135, !prof !66

bb.bf:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i133
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fp) #20
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i135

_ZN6duckdb15SelectionVectorD2Ev.exit.i135:        ; preds = %bb.bf, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i133, %bb.bb, %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit
  %i.gf = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !51 ; 8 uses
  %.not.i.i.i.i1.i136 = icmp eq ptr %i.gg, null
  br i1 %.not.i.i.i.i1.i136, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit140, label %bb.bg

bb.bg:                                            ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i135
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 8 ; 4 uses
  %i.gi = load atomic i64, ptr %i.gh acquire, align 8 ; 2 uses
  %i.gj = icmp eq i64 %i.gi, 4294967297
  %i.gk = trunc i64 %i.gi to i32                  ; 2 uses
  br i1 %i.gj, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  store i32 0, ptr %i.gh, align 8, !tbaa !62
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gg, i64 12
  store i32 0, ptr %i.gl, align 4, !tbaa !64
  %i.gm = load ptr, ptr %i.gg, align 8, !tbaa !49
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 16
  %i.go = load ptr, ptr %i.gn, align 8
  call void %i.go(ptr noundef nonnull align 8 dereferenceable(16) %i.gg) #20, !inline_history !142
  %i.gp = load ptr, ptr %i.gg, align 8, !tbaa !49
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 24
  %i.gr = load ptr, ptr %i.gq, align 8
  call void %i.gr(ptr noundef nonnull align 8 dereferenceable(16) %i.gg) #20, !inline_history !142
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit140

bb.bi:                                            ; preds = %bb.bg
  %i.gs = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i.i2.i137 = icmp eq i8 %i.gs, 0
end_hunk_0
begin_hunk_1_@_ZN6duckdbL16ArrayGenericFoldIdNS_18CosineSimilarityOpEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE:bb.a
bb.ab:                                            ; preds = %bb.z, %bb.y
  %.074 = phi i1 [ false, %bb.z ], [ true, %bb.y ] ; 2 uses
  %i.bv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bw = load ptr, ptr %5, align 8, !tbaa !15    ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.by = icmp eq ptr %i.bw, %i.bx
  br i1 %i.by, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.ab
  call void @_ZdlPv(ptr noundef %i.bw) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.aa
  %.175 = phi i1 [ true, %bb.aa ], [ %.074, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %.074, %bb.ab ] ; 2 uses
  %.pn = phi { ptr, i32 } [ %i.bu, %bb.aa ], [ %i.bv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.bv, %bb.ab ] ; 4 uses
  %i.bz = load ptr, ptr %8, align 8, !tbaa !15    ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.cb = icmp eq ptr %i.bz, %i.ca
  br i1 %i.cb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZdlPv(ptr noundef %i.bz) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105
  %i.cc = load ptr, ptr %6, align 8, !tbaa !15    ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ce = icmp eq ptr %i.cc, %i.cd
  br i1 %i.ce, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107.thread: ; preds = %bb.w
  %i.cf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cg = load ptr, ptr %6, align 8, !tbaa !15    ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ci = icmp eq ptr %i.cg, %i.ch
  br i1 %i.ci, label %.sink.split, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107.thread
  call void @_ZdlPv(ptr noundef %i.cg) #19
  br label %.sink.split

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107
  call void @_ZdlPv(ptr noundef %i.cc) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br i1 %.175, label %bb.ac, label %bb.bm

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br i1 %.175, label %bb.ac, label %bb.bm

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108.thread
  %.pn.pn.pn146.ph = phi { ptr, i32 } [ %i.cf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108.thread ], [ %i.bt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110.thread ], [ %i.cf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %bb.ac

bb.ac:                                            ; preds = %.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110
  %.pn.pn.pn146 = phi { ptr, i32 } [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110 ], [ %.pn.pn.pn146.ph, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.bs) #20
  br label %bb.bm

.loopexit174:                                     ; preds = %bb.v, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit104.thread
  %i.cj = mul i64 %i.as, %i.w                     ; 4 uses
  %i.ck = add i64 %i.cj, %i.w                     ; 2 uses
  %i.cl = load ptr, ptr %i.l, align 8, !tbaa !137 ; 2 uses
  %.not.i.i111 = icmp ne ptr %i.cl, null
  %.not12.i112 = icmp ult i64 %i.cj, %i.ck
  %or.cond.i113 = and i1 %.not12.i112, %.not.i.i111
  br i1 %or.cond.i113, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i115, label %.loopexit

bb.ad:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i115
  %i.cm = add i64 %.0710.i116, 1                  ; 2 uses
  %exitcond.not.i118 = icmp eq i64 %i.cm, %i.ck
  br i1 %exitcond.not.i118, label %.loopexit, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i115, !llvm.loop !221

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i115: ; preds = %.loopexit174, %bb.ad
  %.0710.i116 = phi i64 [ %i.cm, %bb.ad ], [ %i.cj, %.loopexit174 ] ; 3 uses
  %i.cn = lshr i64 %.0710.i116, 6
  %i.co = and i64 %.0710.i116, 63
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %i.cn
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !71
  %i.cr = shl nuw i64 1, %i.co
  %i.cs = and i64 %i.cr, %i.cq
  %.not.not.i117 = icmp eq i64 %i.cs, 0
  br i1 %.not.not.i117, label %_ZNK6duckdb21TemplatedValidityMaskImE13CheckAllValidEmm.exit119, label %bb.ad

_ZNK6duckdb21TemplatedValidityMaskImE13CheckAllValidEmm.exit119: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i115
  %i.ct = call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @.str.18, ptr noundef nonnull align 1 dereferenceable(1) %11)
          to label %bb.ae unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128.thread

bb.ae:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE13CheckAllValidEmm.exit119
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %i.d)
          to label %bb.af unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125.thread

bb.af:                                            ; preds = %bb.ae
  invoke void @_ZN6duckdb10StringUtil6FormatIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_S7_DpT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull %10, ptr noundef nonnull %12)
          to label %bb.ag unwind label %bb.ai

bb.ag:                                            ; preds = %bb.af
  invoke void @_ZN6duckdb21InvalidInputExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.ct, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.ah unwind label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  invoke void @__cxa_throw(ptr nonnull %i.ct, ptr nonnull @_ZTIN6duckdb21InvalidInputExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #22
          to label %bb.bo unwind label %bb.aj

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128.thread: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE13CheckAllValidEmm.exit119
  %i.cu = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split210

bb.ai:                                            ; preds = %bb.af
  %i.cv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122

bb.aj:                                            ; preds = %bb.ah, %bb.ag
  %.069 = phi i1 [ false, %bb.ah ], [ true, %bb.ag ] ; 2 uses
  %i.cw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cx = load ptr, ptr %9, align 8, !tbaa !15    ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.cz = icmp eq ptr %i.cx, %i.cy
  br i1 %i.cz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120: ; preds = %bb.aj
  call void @_ZdlPv(ptr noundef %i.cx) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122: ; preds = %bb.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120, %bb.ai
  %.170 = phi i1 [ true, %bb.ai ], [ %.069, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120 ], [ %.069, %bb.aj ] ; 2 uses
  %.pn82 = phi { ptr, i32 } [ %i.cv, %bb.ai ], [ %i.cw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120 ], [ %i.cw, %bb.aj ] ; 4 uses
  %i.da = load ptr, ptr %12, align 8, !tbaa !15   ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.dc = icmp eq ptr %i.da, %i.db
  br i1 %i.dc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i123

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i123: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122
  call void @_ZdlPv(ptr noundef %i.da) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i123
  %i.dd = load ptr, ptr %10, align 8, !tbaa !15   ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.df = icmp eq ptr %i.dd, %i.de
  br i1 %i.df, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125.thread: ; preds = %bb.ae
  %i.dg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dh = load ptr, ptr %10, align 8, !tbaa !15   ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.dj = icmp eq ptr %i.dh, %i.di
  br i1 %i.dj, label %.sink.split210, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125.thread
  call void @_ZdlPv(ptr noundef %i.dh) #19
  br label %.sink.split210

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125
  call void @_ZdlPv(ptr noundef %i.dd) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  br i1 %.170, label %bb.ak, label %bb.bm

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  br i1 %.170, label %bb.ak, label %bb.bm

.sink.split210:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126.thread
  %.pn82.pn.pn159.ph = phi { ptr, i32 } [ %i.dg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126.thread ], [ %i.cu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128.thread ], [ %i.dg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  br label %bb.ak

bb.ak:                                            ; preds = %.sink.split210, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128
  %.pn82.pn.pn159 = phi { ptr, i32 } [ %.pn82, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126 ], [ %.pn82, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128 ], [ %.pn82.pn.pn159.ph, %.sink.split210 ]
  call void @__cxa_free_exception(ptr %i.ct) #20
  br label %bb.bm

.loopexit:                                        ; preds = %bb.ad, %.loopexit174
  br i1 %.not.i129, label %bb.al, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.loopexit
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.cj ; 2 uses
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.bi ; 2 uses
  br i1 %i.z, label %.lr.ph.i.epil.preheader, label %.lr.ph.i

._crit_edge.loopexit.i.unr-lcssa:                 ; preds = %.lr.ph.i
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %._crit_edge.loopexit.i.unr-lcssa, %.lr.ph.i.preheader
  %.033.i.epil.init = phi double [ 0.000000e+00, %.lr.ph.i.preheader ], [ %17, %._crit_edge.loopexit.i.unr-lcssa ]
  %.01832.i.epil.init = phi double [ 0.000000e+00, %.lr.ph.i.preheader ], [ %18, %._crit_edge.loopexit.i.unr-lcssa ]
  %.02030.i.epil.init.a = phi ptr [ %i.dk, %.lr.ph.i.preheader ], [ %i.dx, %._crit_edge.loopexit.i.unr-lcssa ]
  %.02129.i.epil.init = phi ptr [ %i.dl, %.lr.ph.i.preheader ], [ %i.dv, %._crit_edge.loopexit.i.unr-lcssa ]
  %.02228.i.epil.init = phi double [ 0.000000e+00, %.lr.ph.i.preheader ], [ %i.dz, %._crit_edge.loopexit.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod218)
  %i.dm = load double, ptr %.02129.i.epil.init, align 8, !tbaa !144 ; 3 uses
  %i.dn = load double, ptr %.02030.i.epil.init.a, align 8, !tbaa !144 ; 3 uses
  %13 = call double @llvm.fmuladd.f64(double %i.dm, double %i.dn, double %.033.i.epil.init)
  %14 = call double @llvm.fmuladd.f64(double %i.dm, double %i.dm, double %.01832.i.epil.init)
  %i.do = call double @llvm.fmuladd.f64(double %i.dn, double %i.dn, double %.02228.i.epil.init)
  br label %._crit_edge.loopexit.i

._crit_edge.loopexit.i:                           ; preds = %._crit_edge.loopexit.i.unr-lcssa, %.lr.ph.i.epil.preheader
  %.lcssa214 = phi double [ %17, %._crit_edge.loopexit.i.unr-lcssa ], [ %13, %.lr.ph.i.epil.preheader ]
  %.lcssa213.a = phi double [ %18, %._crit_edge.loopexit.i.unr-lcssa ], [ %14, %.lr.ph.i.epil.preheader ]
  %.lcssa = phi double [ %i.dz, %._crit_edge.loopexit.i.unr-lcssa ], [ %i.do, %.lr.ph.i.epil.preheader ]
  %i.dp = fmul double %.lcssa213.a, %.lcssa
  br label %bb.al

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.033.i = phi double [ %17, %.lr.ph.i ], [ 0.000000e+00, %.lr.ph.i.preheader ]
  %.01832.i = phi double [ %18, %.lr.ph.i ], [ 0.000000e+00, %.lr.ph.i.preheader ]
  %.02030.i.a = phi ptr [ %i.dx, %.lr.ph.i ], [ %i.dk, %.lr.ph.i.preheader ] ; 3 uses
  %.02129.i = phi ptr [ %i.dv, %.lr.ph.i ], [ %i.dl, %.lr.ph.i.preheader ] ; 3 uses
  %.02228.i = phi double [ %i.dz, %.lr.ph.i ], [ 0.000000e+00, %.lr.ph.i.preheader ]
  %niter = phi i64 [ %niter.next.1, %.lr.ph.i ], [ 0, %.lr.ph.i.preheader ]
  %i.dq = getelementptr inbounds nuw i8, ptr %.02129.i, i64 8
  %i.dr = load double, ptr %.02129.i, align 8, !tbaa !144 ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.02030.i.a, i64 8
  %i.dt = load double, ptr %.02030.i.a, align 8, !tbaa !144 ; 3 uses
  %15 = call double @llvm.fmuladd.f64(double %i.dr, double %i.dt, double %.033.i)
  %16 = call double @llvm.fmuladd.f64(double %i.dr, double %i.dr, double %.01832.i)
  %i.du = call double @llvm.fmuladd.f64(double %i.dt, double %i.dt, double %.02228.i)
  %i.dv = getelementptr inbounds nuw i8, ptr %.02129.i, i64 16 ; 2 uses
  %i.dw = load double, ptr %i.dq, align 8, !tbaa !144 ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.02030.i.a, i64 16 ; 2 uses
  %i.dy = load double, ptr %i.ds, align 8, !tbaa !144 ; 3 uses
  %17 = call double @llvm.fmuladd.f64(double %i.dw, double %i.dy, double %15) ; 3 uses
  %18 = call double @llvm.fmuladd.f64(double %i.dw, double %i.dw, double %16) ; 3 uses
  %i.dz = call double @llvm.fmuladd.f64(double %i.dy, double %i.dy, double %i.du) ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.i.unr-lcssa, label %.lr.ph.i, !llvm.loop !265

bb.al:                                            ; preds = %._crit_edge.loopexit.i, %.loopexit
  %.0.lcssa.i = phi double [ 0.000000e+00, %.loopexit ], [ %.lcssa214, %._crit_edge.loopexit.i ]
  %i.ea = phi double [ 0.000000e+00, %.loopexit ], [ %i.dp, %._crit_edge.loopexit.i ]
  %i.eb = call double @sqrt(double noundef %i.ea) #20, !tbaa !3
  %i.ec = fdiv double %.0.lcssa.i, %i.eb          ; 2 uses
  %i.ed = fcmp ogt double %i.ec, 1.000000e+00
  %.sroa.speculated26.i = select i1 %i.ed, double 1.000000e+00, double %i.ec ; 2 uses
  %i.ee = fcmp ogt double %.sroa.speculated26.i, -1.000000e+00
  %.sroa.speculated.i = select i1 %i.ee, double %.sroa.speculated26.i, double -1.000000e+00
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.073177
  store double %.sroa.speculated.i, ptr %i.ef, align 8, !tbaa !144
  br label %bb.am

bb.am:                                            ; preds = %bb.t, %bb.al
  %i.eg = add nuw i64 %.073177, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.eg, %i.f
  br i1 %exitcond.not, label %._crit_edge, label %bb.q, !llvm.loop !266

bb.an:                                            ; preds = %._crit_edge
  invoke void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %2, i8 noundef zeroext 2)
          to label %._crit_edge.thread unwind label %bb.p

._crit_edge.thread:                               ; preds = %.preheader, %bb.an, %._crit_edge
  %i.eh = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !51 ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ei, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, label %bb.ao

bb.ao:                                            ; preds = %._crit_edge.thread
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 8 ; 4 uses
  %i.ek = load atomic i64, ptr %i.ej acquire, align 8 ; 2 uses
  %i.el = icmp eq i64 %i.ek, 4294967297
  %i.em = trunc i64 %i.ek to i32                  ; 2 uses
  br i1 %i.el, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  store i32 0, ptr %i.ej, align 8, !tbaa !62
  %i.en = getelementptr inbounds nuw i8, ptr %i.ei, i64 12
  store i32 0, ptr %i.en, align 4, !tbaa !64
  %i.eo = load ptr, ptr %i.ei, align 8, !tbaa !49
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 16
  %i.eq = load ptr, ptr %i.ep, align 8
  call void %i.eq(ptr noundef nonnull align 8 dereferenceable(16) %i.ei) #20, !inline_history !141
  %i.er = load ptr, ptr %i.ei, align 8, !tbaa !49
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 24
  %i.et = load ptr, ptr %i.es, align 8
  call void %i.et(ptr noundef nonnull align 8 dereferenceable(16) %i.ei) #20, !inline_history !141
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i

bb.aq:                                            ; preds = %bb.ao
  %i.eu = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i.i.i = icmp eq i8 %i.eu, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ev = add nsw i32 %i.em, -1
  store i32 %i.ev, ptr %i.ej, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.as:                                            ; preds = %bb.aq
  %i.ew = atomicrmw volatile add ptr %i.ej, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.as, %bb.ar
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.em, %bb.ar ], [ %i.ew, %bb.as ]
  %i.ex = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.ex, label %bb.at, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, !prof !66

bb.at:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ei) #20
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i

_ZN6duckdb15SelectionVectorD2Ev.exit.i:           ; preds = %bb.at, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.ap, %._crit_edge.thread
  %i.ey = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !51 ; 8 uses
  %.not.i.i.i.i1.i = icmp eq ptr %i.ez, null
  br i1 %.not.i.i.i.i1.i, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, label %bb.au

bb.au:                                            ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 8 ; 4 uses
  %i.fb = load atomic i64, ptr %i.fa acquire, align 8 ; 2 uses
  %i.fc = icmp eq i64 %i.fb, 4294967297
  %i.fd = trunc i64 %i.fb to i32                  ; 2 uses
  br i1 %i.fc, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  store i32 0, ptr %i.fa, align 8, !tbaa !62
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ez, i64 12
  store i32 0, ptr %i.fe, align 4, !tbaa !64
  %i.ff = load ptr, ptr %i.ez, align 8, !tbaa !49
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 16
  %i.fh = load ptr, ptr %i.fg, align 8
  call void %i.fh(ptr noundef nonnull align 8 dereferenceable(16) %i.ez) #20, !inline_history !142
  %i.fi = load ptr, ptr %i.ez, align 8, !tbaa !49
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 24
  %i.fk = load ptr, ptr %i.fj, align 8
  call void %i.fk(ptr noundef nonnull align 8 dereferenceable(16) %i.ez) #20, !inline_history !142
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

bb.aw:                                            ; preds = %bb.au
  %i.fl = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i.i2.i = icmp eq i8 %i.fl, 0
  br i1 %.not.i.i.i.i.i2.i, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.fm = add nsw i32 %i.fd, -1
  store i32 %i.fm, ptr %i.fa, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

bb.ay:                                            ; preds = %bb.aw
  %i.fn = atomicrmw volatile add ptr %i.fa, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i: ; preds = %bb.ay, %bb.ax
  %.0.i.i.i.i.i.i4.i = phi i32 [ %i.fd, %bb.ax ], [ %i.fn, %bb.ay ]
  %i.fo = icmp eq i32 %.0.i.i.i.i.i.i4.i, 1
  br i1 %i.fo, label %bb.az, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, !prof !66

bb.az:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ez) #20
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

_ZN6duckdb19UnifiedVectorFormatD2Ev.exit:         ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i, %bb.av, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %i.fp = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !51 ; 8 uses
  %.not.i.i.i.i.i131 = icmp eq ptr %i.fq, null
  br i1 %.not.i.i.i.i.i131, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i135, label %bb.ba

bb.ba:                                            ; preds = %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 8 ; 4 uses
  %i.fs = load atomic i64, ptr %i.fr acquire, align 8 ; 2 uses
  %i.ft = icmp eq i64 %i.fs, 4294967297
  %i.fu = trunc i64 %i.fs to i32                  ; 2 uses
  br i1 %i.ft, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  store i32 0, ptr %i.fr, align 8, !tbaa !62
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fq, i64 12
  store i32 0, ptr %i.fv, align 4, !tbaa !64
  %i.fw = load ptr, ptr %i.fq, align 8, !tbaa !49
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 16
  %i.fy = load ptr, ptr %i.fx, align 8
  call void %i.fy(ptr noundef nonnull align 8 dereferenceable(16) %i.fq) #20, !inline_history !141
  %i.fz = load ptr, ptr %i.fq, align 8, !tbaa !49
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 24
  %i.gb = load ptr, ptr %i.ga, align 8
  call void %i.gb(ptr noundef nonnull align 8 dereferenceable(16) %i.fq) #20, !inline_history !141
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i135

bb.bc:                                            ; preds = %bb.ba
  %i.gc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i.i.i132 = icmp eq i8 %i.gc, 0
  br i1 %.not.i.i.i.i.i.i132, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.gd = add nsw i32 %i.fu, -1
  store i32 %i.gd, ptr %i.fr, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i133

bb.be:                                            ; preds = %bb.bc
  %i.ge = atomicrmw volatile add ptr %i.fr, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i133

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i133: ; preds = %bb.be, %bb.bd
  %.0.i.i.i.i.i.i.i134 = phi i32 [ %i.fu, %bb.bd ], [ %i.ge, %bb.be ]
  %i.gf = icmp eq i32 %.0.i.i.i.i.i.i.i134, 1
  br i1 %i.gf, label %bb.bf, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i135, !prof !66

bb.bf:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i133
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fq) #20
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i135

_ZN6duckdb15SelectionVectorD2Ev.exit.i135:        ; preds = %bb.bf, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i133, %bb.bb, %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit
  %i.gg = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !51 ; 8 uses
  %.not.i.i.i.i1.i136 = icmp eq ptr %i.gh, null
  br i1 %.not.i.i.i.i1.i136, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit140, label %bb.bg

bb.bg:                                            ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i135
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 8 ; 4 uses
  %i.gj = load atomic i64, ptr %i.gi acquire, align 8 ; 2 uses
  %i.gk = icmp eq i64 %i.gj, 4294967297
  %i.gl = trunc i64 %i.gj to i32                  ; 2 uses
  br i1 %i.gk, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  store i32 0, ptr %i.gi, align 8, !tbaa !62
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gh, i64 12
  store i32 0, ptr %i.gm, align 4, !tbaa !64
  %i.gn = load ptr, ptr %i.gh, align 8, !tbaa !49
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 16
  %i.gp = load ptr, ptr %i.go, align 8
  call void %i.gp(ptr noundef nonnull align 8 dereferenceable(16) %i.gh) #20, !inline_history !142
  %i.gq = load ptr, ptr %i.gh, align 8, !tbaa !49
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 24
  %i.gs = load ptr, ptr %i.gr, align 8
  call void %i.gs(ptr noundef nonnull align 8 dereferenceable(16) %i.gh) #20, !inline_history !142
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit140

bb.bi:                                            ; preds = %bb.bg
  %i.gt = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
end_hunk_1
begin_hunk_2_@_ZN6duckdbL16ArrayGenericFoldIfNS_16CosineDistanceOpEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE:bb.a
bb.ab:                                            ; preds = %bb.z, %bb.y
  %.074 = phi i1 [ false, %bb.z ], [ true, %bb.y ] ; 2 uses
  %i.bv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bw = load ptr, ptr %5, align 8, !tbaa !15    ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.by = icmp eq ptr %i.bw, %i.bx
  br i1 %i.by, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.ab
  call void @_ZdlPv(ptr noundef %i.bw) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.aa
  %.175 = phi i1 [ true, %bb.aa ], [ %.074, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %.074, %bb.ab ] ; 2 uses
  %.pn = phi { ptr, i32 } [ %i.bu, %bb.aa ], [ %i.bv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.bv, %bb.ab ] ; 4 uses
  %i.bz = load ptr, ptr %8, align 8, !tbaa !15    ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.cb = icmp eq ptr %i.bz, %i.ca
  br i1 %i.cb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZdlPv(ptr noundef %i.bz) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105
  %i.cc = load ptr, ptr %6, align 8, !tbaa !15    ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ce = icmp eq ptr %i.cc, %i.cd
  br i1 %i.ce, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107.thread: ; preds = %bb.w
  %i.cf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cg = load ptr, ptr %6, align 8, !tbaa !15    ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ci = icmp eq ptr %i.cg, %i.ch
  br i1 %i.ci, label %.sink.split, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107.thread
  call void @_ZdlPv(ptr noundef %i.cg) #19
  br label %.sink.split

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107
  call void @_ZdlPv(ptr noundef %i.cc) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br i1 %.175, label %bb.ac, label %bb.bm

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br i1 %.175, label %bb.ac, label %bb.bm

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108.thread
  %.pn.pn.pn145.ph = phi { ptr, i32 } [ %i.cf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108.thread ], [ %i.bt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110.thread ], [ %i.cf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %bb.ac

bb.ac:                                            ; preds = %.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110
  %.pn.pn.pn145 = phi { ptr, i32 } [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110 ], [ %.pn.pn.pn145.ph, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.bs) #20
  br label %bb.bm

.loopexit173:                                     ; preds = %bb.v, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit104.thread
  %i.cj = mul i64 %i.as, %i.w                     ; 4 uses
  %i.ck = add i64 %i.cj, %i.w                     ; 2 uses
  %i.cl = load ptr, ptr %i.l, align 8, !tbaa !137 ; 2 uses
  %.not.i.i111 = icmp ne ptr %i.cl, null
  %.not12.i112 = icmp ult i64 %i.cj, %i.ck
  %or.cond.i113 = and i1 %.not12.i112, %.not.i.i111
  br i1 %or.cond.i113, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i115, label %.loopexit

bb.ad:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i115
  %i.cm = add i64 %.0710.i116, 1                  ; 2 uses
  %exitcond.not.i118 = icmp eq i64 %i.cm, %i.ck
  br i1 %exitcond.not.i118, label %.loopexit, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i115, !llvm.loop !221

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i115: ; preds = %.loopexit173, %bb.ad
  %.0710.i116 = phi i64 [ %i.cm, %bb.ad ], [ %i.cj, %.loopexit173 ] ; 3 uses
  %i.cn = lshr i64 %.0710.i116, 6
  %i.co = and i64 %.0710.i116, 63
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %i.cn
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !71
  %i.cr = shl nuw i64 1, %i.co
  %i.cs = and i64 %i.cr, %i.cq
  %.not.not.i117 = icmp eq i64 %i.cs, 0
  br i1 %.not.not.i117, label %_ZNK6duckdb21TemplatedValidityMaskImE13CheckAllValidEmm.exit119, label %bb.ad

_ZNK6duckdb21TemplatedValidityMaskImE13CheckAllValidEmm.exit119: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i115
  %i.ct = call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @.str.18, ptr noundef nonnull align 1 dereferenceable(1) %11)
          to label %bb.ae unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128.thread

bb.ae:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE13CheckAllValidEmm.exit119
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %i.d)
          to label %bb.af unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125.thread

bb.af:                                            ; preds = %bb.ae
  invoke void @_ZN6duckdb10StringUtil6FormatIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_S7_DpT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull %10, ptr noundef nonnull %12)
          to label %bb.ag unwind label %bb.ai

bb.ag:                                            ; preds = %bb.af
  invoke void @_ZN6duckdb21InvalidInputExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.ct, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.ah unwind label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  invoke void @__cxa_throw(ptr nonnull %i.ct, ptr nonnull @_ZTIN6duckdb21InvalidInputExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #22
          to label %bb.bo unwind label %bb.aj

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128.thread: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE13CheckAllValidEmm.exit119
  %i.cu = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split209

bb.ai:                                            ; preds = %bb.af
  %i.cv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122

bb.aj:                                            ; preds = %bb.ah, %bb.ag
  %.069 = phi i1 [ false, %bb.ah ], [ true, %bb.ag ] ; 2 uses
  %i.cw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cx = load ptr, ptr %9, align 8, !tbaa !15    ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.cz = icmp eq ptr %i.cx, %i.cy
  br i1 %i.cz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120: ; preds = %bb.aj
  call void @_ZdlPv(ptr noundef %i.cx) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122: ; preds = %bb.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120, %bb.ai
  %.170 = phi i1 [ true, %bb.ai ], [ %.069, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120 ], [ %.069, %bb.aj ] ; 2 uses
  %.pn82 = phi { ptr, i32 } [ %i.cv, %bb.ai ], [ %i.cw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120 ], [ %i.cw, %bb.aj ] ; 4 uses
  %i.da = load ptr, ptr %12, align 8, !tbaa !15   ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.dc = icmp eq ptr %i.da, %i.db
  br i1 %i.dc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i123

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i123: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122
  call void @_ZdlPv(ptr noundef %i.da) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i123
  %i.dd = load ptr, ptr %10, align 8, !tbaa !15   ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.df = icmp eq ptr %i.dd, %i.de
  br i1 %i.df, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125.thread: ; preds = %bb.ae
  %i.dg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dh = load ptr, ptr %10, align 8, !tbaa !15   ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.dj = icmp eq ptr %i.dh, %i.di
  br i1 %i.dj, label %.sink.split209, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125.thread
  call void @_ZdlPv(ptr noundef %i.dh) #19
  br label %.sink.split209

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125
  call void @_ZdlPv(ptr noundef %i.dd) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  br i1 %.170, label %bb.ak, label %bb.bm

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  br i1 %.170, label %bb.ak, label %bb.bm

.sink.split209:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126.thread
  %.pn82.pn.pn158.ph = phi { ptr, i32 } [ %i.dg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126.thread ], [ %i.cu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128.thread ], [ %i.dg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  br label %bb.ak

bb.ak:                                            ; preds = %.sink.split209, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128
  %.pn82.pn.pn158 = phi { ptr, i32 } [ %.pn82, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126 ], [ %.pn82, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128 ], [ %.pn82.pn.pn158.ph, %.sink.split209 ]
  call void @__cxa_free_exception(ptr %i.ct) #20
  br label %bb.bm

.loopexit:                                        ; preds = %bb.ad, %.loopexit173
  br i1 %.not.i.i129, label %bb.al, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.loopexit
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.cj ; 2 uses
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.bi ; 2 uses
  br i1 %i.z, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i

._crit_edge.loopexit.i.i.unr-lcssa:               ; preds = %.lr.ph.i.i
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %._crit_edge.loopexit.i.i.unr-lcssa, %.lr.ph.i.i.preheader
  %.033.i.i.epil.init = phi float [ 0.000000e+00, %.lr.ph.i.i.preheader ], [ %i.dy, %._crit_edge.loopexit.i.i.unr-lcssa ]
  %.01832.i.i.epil.init = phi float [ 0.000000e+00, %.lr.ph.i.i.preheader ], [ %18, %._crit_edge.loopexit.i.i.unr-lcssa ]
  %.02030.i.i.epil.init = phi ptr [ %i.dk, %.lr.ph.i.i.preheader ], [ %i.dw, %._crit_edge.loopexit.i.i.unr-lcssa ]
  %.02129.i.i.epil.init = phi ptr [ %i.dl, %.lr.ph.i.i.preheader ], [ %i.du, %._crit_edge.loopexit.i.i.unr-lcssa ]
  %.02228.i.i.epil.init = phi float [ 0.000000e+00, %.lr.ph.i.i.preheader ], [ %19, %._crit_edge.loopexit.i.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod217)
  %i.dm = load float, ptr %.02129.i.i.epil.init, align 4, !tbaa !138 ; 3 uses
  %i.dn = load float, ptr %.02030.i.i.epil.init, align 4, !tbaa !138 ; 3 uses
  %i.do = call float @llvm.fmuladd.f32(float %i.dm, float %i.dn, float %.033.i.i.epil.init)
  %13 = call float @llvm.fmuladd.f32(float %i.dm, float %i.dm, float %.01832.i.i.epil.init)
  %14 = call float @llvm.fmuladd.f32(float %i.dn, float %i.dn, float %.02228.i.i.epil.init)
  br label %._crit_edge.loopexit.i.i

._crit_edge.loopexit.i.i:                         ; preds = %._crit_edge.loopexit.i.i.unr-lcssa, %.lr.ph.i.i.epil.preheader
  %.lcssa213 = phi float [ %i.dy, %._crit_edge.loopexit.i.i.unr-lcssa ], [ %i.do, %.lr.ph.i.i.epil.preheader ]
  %.lcssa212 = phi float [ %18, %._crit_edge.loopexit.i.i.unr-lcssa ], [ %13, %.lr.ph.i.i.epil.preheader ]
  %.lcssa = phi float [ %19, %._crit_edge.loopexit.i.i.unr-lcssa ], [ %14, %.lr.ph.i.i.epil.preheader ]
  %15 = fmul float %.lcssa212, %.lcssa
  br label %bb.al

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.033.i.i = phi float [ %i.dy, %.lr.ph.i.i ], [ 0.000000e+00, %.lr.ph.i.i.preheader ]
  %.01832.i.i = phi float [ %18, %.lr.ph.i.i ], [ 0.000000e+00, %.lr.ph.i.i.preheader ]
  %.02030.i.i = phi ptr [ %i.dw, %.lr.ph.i.i ], [ %i.dk, %.lr.ph.i.i.preheader ] ; 3 uses
  %.02129.i.i = phi ptr [ %i.du, %.lr.ph.i.i ], [ %i.dl, %.lr.ph.i.i.preheader ] ; 3 uses
  %.02228.i.i = phi float [ %19, %.lr.ph.i.i ], [ 0.000000e+00, %.lr.ph.i.i.preheader ]
  %niter = phi i64 [ %niter.next.1, %.lr.ph.i.i ], [ 0, %.lr.ph.i.i.preheader ]
  %i.dp = getelementptr inbounds nuw i8, ptr %.02129.i.i, i64 4
  %i.dq = load float, ptr %.02129.i.i, align 4, !tbaa !138 ; 3 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.02030.i.i, i64 4
  %i.ds = load float, ptr %.02030.i.i, align 4, !tbaa !138 ; 3 uses
  %i.dt = call float @llvm.fmuladd.f32(float %i.dq, float %i.ds, float %.033.i.i)
  %16 = call float @llvm.fmuladd.f32(float %i.dq, float %i.dq, float %.01832.i.i)
  %17 = call float @llvm.fmuladd.f32(float %i.ds, float %i.ds, float %.02228.i.i)
  %i.du = getelementptr inbounds nuw i8, ptr %.02129.i.i, i64 8 ; 2 uses
  %i.dv = load float, ptr %i.dp, align 4, !tbaa !138 ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.02030.i.i, i64 8 ; 2 uses
  %i.dx = load float, ptr %i.dr, align 4, !tbaa !138 ; 3 uses
  %i.dy = call float @llvm.fmuladd.f32(float %i.dv, float %i.dx, float %i.dt) ; 3 uses
  %18 = call float @llvm.fmuladd.f32(float %i.dv, float %i.dv, float %16) ; 3 uses
  %19 = call float @llvm.fmuladd.f32(float %i.dx, float %i.dx, float %17) ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.i.i.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !263

bb.al:                                            ; preds = %._crit_edge.loopexit.i.i, %.loopexit
  %.0.lcssa.i.i = phi float [ 0.000000e+00, %.loopexit ], [ %.lcssa213, %._crit_edge.loopexit.i.i ]
  %i.dz = phi float [ 0.000000e+00, %.loopexit ], [ %15, %._crit_edge.loopexit.i.i ]
  %i.ea = call noundef float @sqrtf(float noundef %i.dz) #20, !tbaa !3
  %i.eb = fdiv float %.0.lcssa.i.i, %i.ea         ; 2 uses
  %i.ec = fcmp ogt float %i.eb, 1.000000e+00
  %.sroa.speculated26.i.i = select i1 %i.ec, float 1.000000e+00, float %i.eb ; 2 uses
  %i.ed = fcmp ogt float %.sroa.speculated26.i.i, -1.000000e+00
  %.sroa.speculated.i.i = select i1 %i.ed, float %.sroa.speculated26.i.i, float -1.000000e+00
  %i.ee = fsub float 1.000000e+00, %.sroa.speculated.i.i
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %.073176
  store float %i.ee, ptr %i.ef, align 4, !tbaa !138
  br label %bb.am

bb.am:                                            ; preds = %bb.t, %bb.al
  %i.eg = add nuw i64 %.073176, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.eg, %i.f
  br i1 %exitcond.not, label %._crit_edge, label %bb.q, !llvm.loop !267

bb.an:                                            ; preds = %._crit_edge
  invoke void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %2, i8 noundef zeroext 2)
          to label %._crit_edge.thread unwind label %bb.p

._crit_edge.thread:                               ; preds = %.preheader, %bb.an, %._crit_edge
  %i.eh = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !51 ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ei, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, label %bb.ao

bb.ao:                                            ; preds = %._crit_edge.thread
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 8 ; 4 uses
  %i.ek = load atomic i64, ptr %i.ej acquire, align 8 ; 2 uses
  %i.el = icmp eq i64 %i.ek, 4294967297
  %i.em = trunc i64 %i.ek to i32                  ; 2 uses
  br i1 %i.el, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  store i32 0, ptr %i.ej, align 8, !tbaa !62
  %i.en = getelementptr inbounds nuw i8, ptr %i.ei, i64 12
  store i32 0, ptr %i.en, align 4, !tbaa !64
  %i.eo = load ptr, ptr %i.ei, align 8, !tbaa !49
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 16
  %i.eq = load ptr, ptr %i.ep, align 8
  call void %i.eq(ptr noundef nonnull align 8 dereferenceable(16) %i.ei) #20, !inline_history !141
  %i.er = load ptr, ptr %i.ei, align 8, !tbaa !49
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 24
  %i.et = load ptr, ptr %i.es, align 8
  call void %i.et(ptr noundef nonnull align 8 dereferenceable(16) %i.ei) #20, !inline_history !141
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i

bb.aq:                                            ; preds = %bb.ao
  %i.eu = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i.i.i = icmp eq i8 %i.eu, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ev = add nsw i32 %i.em, -1
  store i32 %i.ev, ptr %i.ej, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.as:                                            ; preds = %bb.aq
  %i.ew = atomicrmw volatile add ptr %i.ej, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.as, %bb.ar
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.em, %bb.ar ], [ %i.ew, %bb.as ]
  %i.ex = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.ex, label %bb.at, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, !prof !66

bb.at:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ei) #20
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i

_ZN6duckdb15SelectionVectorD2Ev.exit.i:           ; preds = %bb.at, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.ap, %._crit_edge.thread
  %i.ey = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !51 ; 8 uses
  %.not.i.i.i.i1.i = icmp eq ptr %i.ez, null
  br i1 %.not.i.i.i.i1.i, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, label %bb.au

bb.au:                                            ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 8 ; 4 uses
  %i.fb = load atomic i64, ptr %i.fa acquire, align 8 ; 2 uses
  %i.fc = icmp eq i64 %i.fb, 4294967297
  %i.fd = trunc i64 %i.fb to i32                  ; 2 uses
  br i1 %i.fc, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  store i32 0, ptr %i.fa, align 8, !tbaa !62
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ez, i64 12
  store i32 0, ptr %i.fe, align 4, !tbaa !64
  %i.ff = load ptr, ptr %i.ez, align 8, !tbaa !49
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 16
  %i.fh = load ptr, ptr %i.fg, align 8
  call void %i.fh(ptr noundef nonnull align 8 dereferenceable(16) %i.ez) #20, !inline_history !142
  %i.fi = load ptr, ptr %i.ez, align 8, !tbaa !49
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 24
  %i.fk = load ptr, ptr %i.fj, align 8
  call void %i.fk(ptr noundef nonnull align 8 dereferenceable(16) %i.ez) #20, !inline_history !142
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

bb.aw:                                            ; preds = %bb.au
  %i.fl = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i.i2.i = icmp eq i8 %i.fl, 0
  br i1 %.not.i.i.i.i.i2.i, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.fm = add nsw i32 %i.fd, -1
  store i32 %i.fm, ptr %i.fa, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

bb.ay:                                            ; preds = %bb.aw
  %i.fn = atomicrmw volatile add ptr %i.fa, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i: ; preds = %bb.ay, %bb.ax
  %.0.i.i.i.i.i.i4.i = phi i32 [ %i.fd, %bb.ax ], [ %i.fn, %bb.ay ]
  %i.fo = icmp eq i32 %.0.i.i.i.i.i.i4.i, 1
  br i1 %i.fo, label %bb.az, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, !prof !66

bb.az:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ez) #20
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

_ZN6duckdb19UnifiedVectorFormatD2Ev.exit:         ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i, %bb.av, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %i.fp = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !51 ; 8 uses
  %.not.i.i.i.i.i130 = icmp eq ptr %i.fq, null
  br i1 %.not.i.i.i.i.i130, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i134, label %bb.ba

bb.ba:                                            ; preds = %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 8 ; 4 uses
  %i.fs = load atomic i64, ptr %i.fr acquire, align 8 ; 2 uses
  %i.ft = icmp eq i64 %i.fs, 4294967297
  %i.fu = trunc i64 %i.fs to i32                  ; 2 uses
  br i1 %i.ft, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  store i32 0, ptr %i.fr, align 8, !tbaa !62
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fq, i64 12
  store i32 0, ptr %i.fv, align 4, !tbaa !64
  %i.fw = load ptr, ptr %i.fq, align 8, !tbaa !49
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 16
  %i.fy = load ptr, ptr %i.fx, align 8
  call void %i.fy(ptr noundef nonnull align 8 dereferenceable(16) %i.fq) #20, !inline_history !141
  %i.fz = load ptr, ptr %i.fq, align 8, !tbaa !49
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 24
  %i.gb = load ptr, ptr %i.ga, align 8
  call void %i.gb(ptr noundef nonnull align 8 dereferenceable(16) %i.fq) #20, !inline_history !141
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i134

bb.bc:                                            ; preds = %bb.ba
  %i.gc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i.i.i131 = icmp eq i8 %i.gc, 0
  br i1 %.not.i.i.i.i.i.i131, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.gd = add nsw i32 %i.fu, -1
  store i32 %i.gd, ptr %i.fr, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i132

bb.be:                                            ; preds = %bb.bc
  %i.ge = atomicrmw volatile add ptr %i.fr, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i132

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i132: ; preds = %bb.be, %bb.bd
  %.0.i.i.i.i.i.i.i133 = phi i32 [ %i.fu, %bb.bd ], [ %i.ge, %bb.be ]
  %i.gf = icmp eq i32 %.0.i.i.i.i.i.i.i133, 1
  br i1 %i.gf, label %bb.bf, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i134, !prof !66

bb.bf:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i132
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fq) #20
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i134

_ZN6duckdb15SelectionVectorD2Ev.exit.i134:        ; preds = %bb.bf, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i132, %bb.bb, %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit
  %i.gg = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !51 ; 8 uses
  %.not.i.i.i.i1.i135 = icmp eq ptr %i.gh, null
  br i1 %.not.i.i.i.i1.i135, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit139, label %bb.bg

bb.bg:                                            ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i134
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 8 ; 4 uses
  %i.gj = load atomic i64, ptr %i.gi acquire, align 8 ; 2 uses
  %i.gk = icmp eq i64 %i.gj, 4294967297
  %i.gl = trunc i64 %i.gj to i32                  ; 2 uses
  br i1 %i.gk, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  store i32 0, ptr %i.gi, align 8, !tbaa !62
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gh, i64 12
  store i32 0, ptr %i.gm, align 4, !tbaa !64
  %i.gn = load ptr, ptr %i.gh, align 8, !tbaa !49
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 16
  %i.gp = load ptr, ptr %i.go, align 8
  call void %i.gp(ptr noundef nonnull align 8 dereferenceable(16) %i.gh) #20, !inline_history !142
  %i.gq = load ptr, ptr %i.gh, align 8, !tbaa !49
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 24
  %i.gs = load ptr, ptr %i.gr, align 8
  call void %i.gs(ptr noundef nonnull align 8 dereferenceable(16) %i.gh) #20, !inline_history !142
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit139

bb.bi:                                            ; preds = %bb.bg
  %i.gt = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
end_hunk_2
begin_hunk_3_@_ZN6duckdbL16ArrayGenericFoldIdNS_16CosineDistanceOpEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE:bb.a
bb.ab:                                            ; preds = %bb.z, %bb.y
  %.074 = phi i1 [ false, %bb.z ], [ true, %bb.y ] ; 2 uses
  %i.bv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bw = load ptr, ptr %5, align 8, !tbaa !15    ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.by = icmp eq ptr %i.bw, %i.bx
  br i1 %i.by, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.ab
  call void @_ZdlPv(ptr noundef %i.bw) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.aa
  %.175 = phi i1 [ true, %bb.aa ], [ %.074, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %.074, %bb.ab ] ; 2 uses
  %.pn = phi { ptr, i32 } [ %i.bu, %bb.aa ], [ %i.bv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.bv, %bb.ab ] ; 4 uses
  %i.bz = load ptr, ptr %8, align 8, !tbaa !15    ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.cb = icmp eq ptr %i.bz, %i.ca
  br i1 %i.cb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZdlPv(ptr noundef %i.bz) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105
  %i.cc = load ptr, ptr %6, align 8, !tbaa !15    ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ce = icmp eq ptr %i.cc, %i.cd
  br i1 %i.ce, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107.thread: ; preds = %bb.w
  %i.cf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cg = load ptr, ptr %6, align 8, !tbaa !15    ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ci = icmp eq ptr %i.cg, %i.ch
  br i1 %i.ci, label %.sink.split, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107.thread
  call void @_ZdlPv(ptr noundef %i.cg) #19
  br label %.sink.split

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107
  call void @_ZdlPv(ptr noundef %i.cc) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br i1 %.175, label %bb.ac, label %bb.bm

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br i1 %.175, label %bb.ac, label %bb.bm

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108.thread
  %.pn.pn.pn145.ph = phi { ptr, i32 } [ %i.cf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108.thread ], [ %i.bt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110.thread ], [ %i.cf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %bb.ac

bb.ac:                                            ; preds = %.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110
  %.pn.pn.pn145 = phi { ptr, i32 } [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110 ], [ %.pn.pn.pn145.ph, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.bs) #20
  br label %bb.bm

.loopexit173:                                     ; preds = %bb.v, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit104.thread
  %i.cj = mul i64 %i.as, %i.w                     ; 4 uses
  %i.ck = add i64 %i.cj, %i.w                     ; 2 uses
  %i.cl = load ptr, ptr %i.l, align 8, !tbaa !137 ; 2 uses
  %.not.i.i111 = icmp ne ptr %i.cl, null
  %.not12.i112 = icmp ult i64 %i.cj, %i.ck
  %or.cond.i113 = and i1 %.not12.i112, %.not.i.i111
  br i1 %or.cond.i113, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i115, label %.loopexit

bb.ad:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i115
  %i.cm = add i64 %.0710.i116, 1                  ; 2 uses
  %exitcond.not.i118 = icmp eq i64 %i.cm, %i.ck
  br i1 %exitcond.not.i118, label %.loopexit, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i115, !llvm.loop !221

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i115: ; preds = %.loopexit173, %bb.ad
  %.0710.i116 = phi i64 [ %i.cm, %bb.ad ], [ %i.cj, %.loopexit173 ] ; 3 uses
  %i.cn = lshr i64 %.0710.i116, 6
  %i.co = and i64 %.0710.i116, 63
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %i.cn
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !71
  %i.cr = shl nuw i64 1, %i.co
  %i.cs = and i64 %i.cr, %i.cq
  %.not.not.i117 = icmp eq i64 %i.cs, 0
  br i1 %.not.not.i117, label %_ZNK6duckdb21TemplatedValidityMaskImE13CheckAllValidEmm.exit119, label %bb.ad

_ZNK6duckdb21TemplatedValidityMaskImE13CheckAllValidEmm.exit119: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i115
  %i.ct = call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @.str.18, ptr noundef nonnull align 1 dereferenceable(1) %11)
          to label %bb.ae unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128.thread

bb.ae:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE13CheckAllValidEmm.exit119
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %i.d)
          to label %bb.af unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125.thread

bb.af:                                            ; preds = %bb.ae
  invoke void @_ZN6duckdb10StringUtil6FormatIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_S7_DpT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull %10, ptr noundef nonnull %12)
          to label %bb.ag unwind label %bb.ai

bb.ag:                                            ; preds = %bb.af
  invoke void @_ZN6duckdb21InvalidInputExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.ct, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.ah unwind label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  invoke void @__cxa_throw(ptr nonnull %i.ct, ptr nonnull @_ZTIN6duckdb21InvalidInputExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #22
          to label %bb.bo unwind label %bb.aj

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128.thread: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE13CheckAllValidEmm.exit119
  %i.cu = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split209

bb.ai:                                            ; preds = %bb.af
  %i.cv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122

bb.aj:                                            ; preds = %bb.ah, %bb.ag
  %.069 = phi i1 [ false, %bb.ah ], [ true, %bb.ag ] ; 2 uses
  %i.cw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cx = load ptr, ptr %9, align 8, !tbaa !15    ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.cz = icmp eq ptr %i.cx, %i.cy
  br i1 %i.cz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120: ; preds = %bb.aj
  call void @_ZdlPv(ptr noundef %i.cx) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122: ; preds = %bb.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120, %bb.ai
  %.170 = phi i1 [ true, %bb.ai ], [ %.069, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120 ], [ %.069, %bb.aj ] ; 2 uses
  %.pn82 = phi { ptr, i32 } [ %i.cv, %bb.ai ], [ %i.cw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120 ], [ %i.cw, %bb.aj ] ; 4 uses
  %i.da = load ptr, ptr %12, align 8, !tbaa !15   ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.dc = icmp eq ptr %i.da, %i.db
  br i1 %i.dc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i123

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i123: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122
  call void @_ZdlPv(ptr noundef %i.da) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i123
  %i.dd = load ptr, ptr %10, align 8, !tbaa !15   ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.df = icmp eq ptr %i.dd, %i.de
  br i1 %i.df, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125.thread: ; preds = %bb.ae
  %i.dg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dh = load ptr, ptr %10, align 8, !tbaa !15   ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.dj = icmp eq ptr %i.dh, %i.di
  br i1 %i.dj, label %.sink.split209, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125.thread
  call void @_ZdlPv(ptr noundef %i.dh) #19
  br label %.sink.split209

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125
  call void @_ZdlPv(ptr noundef %i.dd) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  br i1 %.170, label %bb.ak, label %bb.bm

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  br i1 %.170, label %bb.ak, label %bb.bm

.sink.split209:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126.thread
  %.pn82.pn.pn158.ph = phi { ptr, i32 } [ %i.dg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126.thread ], [ %i.cu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128.thread ], [ %i.dg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  br label %bb.ak

bb.ak:                                            ; preds = %.sink.split209, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128
  %.pn82.pn.pn158 = phi { ptr, i32 } [ %.pn82, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126 ], [ %.pn82, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128 ], [ %.pn82.pn.pn158.ph, %.sink.split209 ]
  call void @__cxa_free_exception(ptr %i.ct) #20
  br label %bb.bm

.loopexit:                                        ; preds = %bb.ad, %.loopexit173
  br i1 %.not.i.i129, label %bb.al, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.loopexit
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.cj ; 2 uses
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.bi ; 2 uses
  br i1 %i.z, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i

._crit_edge.loopexit.i.i.unr-lcssa:               ; preds = %.lr.ph.i.i
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %._crit_edge.loopexit.i.i.unr-lcssa, %.lr.ph.i.i.preheader
  %.033.i.i.epil.init = phi double [ 0.000000e+00, %.lr.ph.i.i.preheader ], [ %17, %._crit_edge.loopexit.i.i.unr-lcssa ]
  %.01832.i.i.epil.init = phi double [ 0.000000e+00, %.lr.ph.i.i.preheader ], [ %18, %._crit_edge.loopexit.i.i.unr-lcssa ]
  %.02030.i.i.epil.init.a = phi ptr [ %i.dk, %.lr.ph.i.i.preheader ], [ %i.dx, %._crit_edge.loopexit.i.i.unr-lcssa ]
  %.02129.i.i.epil.init = phi ptr [ %i.dl, %.lr.ph.i.i.preheader ], [ %i.dv, %._crit_edge.loopexit.i.i.unr-lcssa ]
  %.02228.i.i.epil.init = phi double [ 0.000000e+00, %.lr.ph.i.i.preheader ], [ %i.dz, %._crit_edge.loopexit.i.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod217)
  %i.dm = load double, ptr %.02129.i.i.epil.init, align 8, !tbaa !144 ; 3 uses
  %i.dn = load double, ptr %.02030.i.i.epil.init.a, align 8, !tbaa !144 ; 3 uses
  %13 = call double @llvm.fmuladd.f64(double %i.dm, double %i.dn, double %.033.i.i.epil.init)
  %14 = call double @llvm.fmuladd.f64(double %i.dm, double %i.dm, double %.01832.i.i.epil.init)
  %i.do = call double @llvm.fmuladd.f64(double %i.dn, double %i.dn, double %.02228.i.i.epil.init)
  br label %._crit_edge.loopexit.i.i

._crit_edge.loopexit.i.i:                         ; preds = %._crit_edge.loopexit.i.i.unr-lcssa, %.lr.ph.i.i.epil.preheader
  %.lcssa213 = phi double [ %17, %._crit_edge.loopexit.i.i.unr-lcssa ], [ %13, %.lr.ph.i.i.epil.preheader ]
  %.lcssa212.a = phi double [ %18, %._crit_edge.loopexit.i.i.unr-lcssa ], [ %14, %.lr.ph.i.i.epil.preheader ]
  %.lcssa = phi double [ %i.dz, %._crit_edge.loopexit.i.i.unr-lcssa ], [ %i.do, %.lr.ph.i.i.epil.preheader ]
  %i.dp = fmul double %.lcssa212.a, %.lcssa
  br label %bb.al

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.033.i.i = phi double [ %17, %.lr.ph.i.i ], [ 0.000000e+00, %.lr.ph.i.i.preheader ]
  %.01832.i.i = phi double [ %18, %.lr.ph.i.i ], [ 0.000000e+00, %.lr.ph.i.i.preheader ]
  %.02030.i.i.a = phi ptr [ %i.dx, %.lr.ph.i.i ], [ %i.dk, %.lr.ph.i.i.preheader ] ; 3 uses
  %.02129.i.i = phi ptr [ %i.dv, %.lr.ph.i.i ], [ %i.dl, %.lr.ph.i.i.preheader ] ; 3 uses
  %.02228.i.i = phi double [ %i.dz, %.lr.ph.i.i ], [ 0.000000e+00, %.lr.ph.i.i.preheader ]
  %niter = phi i64 [ %niter.next.1, %.lr.ph.i.i ], [ 0, %.lr.ph.i.i.preheader ]
  %i.dq = getelementptr inbounds nuw i8, ptr %.02129.i.i, i64 8
  %i.dr = load double, ptr %.02129.i.i, align 8, !tbaa !144 ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.02030.i.i.a, i64 8
  %i.dt = load double, ptr %.02030.i.i.a, align 8, !tbaa !144 ; 3 uses
  %15 = call double @llvm.fmuladd.f64(double %i.dr, double %i.dt, double %.033.i.i)
  %16 = call double @llvm.fmuladd.f64(double %i.dr, double %i.dr, double %.01832.i.i)
  %i.du = call double @llvm.fmuladd.f64(double %i.dt, double %i.dt, double %.02228.i.i)
  %i.dv = getelementptr inbounds nuw i8, ptr %.02129.i.i, i64 16 ; 2 uses
  %i.dw = load double, ptr %i.dq, align 8, !tbaa !144 ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.02030.i.i.a, i64 16 ; 2 uses
  %i.dy = load double, ptr %i.ds, align 8, !tbaa !144 ; 3 uses
  %17 = call double @llvm.fmuladd.f64(double %i.dw, double %i.dy, double %15) ; 3 uses
  %18 = call double @llvm.fmuladd.f64(double %i.dw, double %i.dw, double %16) ; 3 uses
  %i.dz = call double @llvm.fmuladd.f64(double %i.dy, double %i.dy, double %i.du) ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.i.i.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !265

bb.al:                                            ; preds = %._crit_edge.loopexit.i.i, %.loopexit
  %.0.lcssa.i.i = phi double [ 0.000000e+00, %.loopexit ], [ %.lcssa213, %._crit_edge.loopexit.i.i ]
  %i.ea = phi double [ 0.000000e+00, %.loopexit ], [ %i.dp, %._crit_edge.loopexit.i.i ]
  %i.eb = call double @sqrt(double noundef %i.ea) #20, !tbaa !3
  %i.ec = fdiv double %.0.lcssa.i.i, %i.eb        ; 2 uses
  %i.ed = fcmp ogt double %i.ec, 1.000000e+00
  %.sroa.speculated26.i.i = select i1 %i.ed, double 1.000000e+00, double %i.ec ; 2 uses
  %i.ee = fcmp ogt double %.sroa.speculated26.i.i, -1.000000e+00
  %.sroa.speculated.i.i = select i1 %i.ee, double %.sroa.speculated26.i.i, double -1.000000e+00
  %i.ef = fsub double 1.000000e+00, %.sroa.speculated.i.i
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.073176
  store double %i.ef, ptr %i.eg, align 8, !tbaa !144
  br label %bb.am

bb.am:                                            ; preds = %bb.t, %bb.al
  %i.eh = add nuw i64 %.073176, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.eh, %i.f
  br i1 %exitcond.not, label %._crit_edge, label %bb.q, !llvm.loop !268

bb.an:                                            ; preds = %._crit_edge
  invoke void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %2, i8 noundef zeroext 2)
          to label %._crit_edge.thread unwind label %bb.p

._crit_edge.thread:                               ; preds = %.preheader, %bb.an, %._crit_edge
  %i.ei = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !51 ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ej, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, label %bb.ao

bb.ao:                                            ; preds = %._crit_edge.thread
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 8 ; 4 uses
  %i.el = load atomic i64, ptr %i.ek acquire, align 8 ; 2 uses
  %i.em = icmp eq i64 %i.el, 4294967297
  %i.en = trunc i64 %i.el to i32                  ; 2 uses
  br i1 %i.em, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  store i32 0, ptr %i.ek, align 8, !tbaa !62
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ej, i64 12
  store i32 0, ptr %i.eo, align 4, !tbaa !64
  %i.ep = load ptr, ptr %i.ej, align 8, !tbaa !49
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  %i.er = load ptr, ptr %i.eq, align 8
  call void %i.er(ptr noundef nonnull align 8 dereferenceable(16) %i.ej) #20, !inline_history !141
  %i.es = load ptr, ptr %i.ej, align 8, !tbaa !49
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 24
  %i.eu = load ptr, ptr %i.et, align 8
  call void %i.eu(ptr noundef nonnull align 8 dereferenceable(16) %i.ej) #20, !inline_history !141
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i

bb.aq:                                            ; preds = %bb.ao
  %i.ev = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i.i.i = icmp eq i8 %i.ev, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ew = add nsw i32 %i.en, -1
  store i32 %i.ew, ptr %i.ek, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.as:                                            ; preds = %bb.aq
  %i.ex = atomicrmw volatile add ptr %i.ek, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.as, %bb.ar
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.en, %bb.ar ], [ %i.ex, %bb.as ]
  %i.ey = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.ey, label %bb.at, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, !prof !66

bb.at:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ej) #20
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i

_ZN6duckdb15SelectionVectorD2Ev.exit.i:           ; preds = %bb.at, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.ap, %._crit_edge.thread
  %i.ez = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !51 ; 8 uses
  %.not.i.i.i.i1.i = icmp eq ptr %i.fa, null
  br i1 %.not.i.i.i.i1.i, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, label %bb.au

bb.au:                                            ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 8 ; 4 uses
  %i.fc = load atomic i64, ptr %i.fb acquire, align 8 ; 2 uses
  %i.fd = icmp eq i64 %i.fc, 4294967297
  %i.fe = trunc i64 %i.fc to i32                  ; 2 uses
  br i1 %i.fd, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  store i32 0, ptr %i.fb, align 8, !tbaa !62
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fa, i64 12
  store i32 0, ptr %i.ff, align 4, !tbaa !64
  %i.fg = load ptr, ptr %i.fa, align 8, !tbaa !49
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 16
  %i.fi = load ptr, ptr %i.fh, align 8
  call void %i.fi(ptr noundef nonnull align 8 dereferenceable(16) %i.fa) #20, !inline_history !142
  %i.fj = load ptr, ptr %i.fa, align 8, !tbaa !49
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 24
  %i.fl = load ptr, ptr %i.fk, align 8
  call void %i.fl(ptr noundef nonnull align 8 dereferenceable(16) %i.fa) #20, !inline_history !142
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

bb.aw:                                            ; preds = %bb.au
  %i.fm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i.i2.i = icmp eq i8 %i.fm, 0
  br i1 %.not.i.i.i.i.i2.i, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.fn = add nsw i32 %i.fe, -1
  store i32 %i.fn, ptr %i.fb, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

bb.ay:                                            ; preds = %bb.aw
  %i.fo = atomicrmw volatile add ptr %i.fb, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i: ; preds = %bb.ay, %bb.ax
  %.0.i.i.i.i.i.i4.i = phi i32 [ %i.fe, %bb.ax ], [ %i.fo, %bb.ay ]
  %i.fp = icmp eq i32 %.0.i.i.i.i.i.i4.i, 1
  br i1 %i.fp, label %bb.az, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, !prof !66

bb.az:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fa) #20
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

_ZN6duckdb19UnifiedVectorFormatD2Ev.exit:         ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i, %bb.av, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %i.fq = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !51 ; 8 uses
  %.not.i.i.i.i.i130 = icmp eq ptr %i.fr, null
  br i1 %.not.i.i.i.i.i130, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i134, label %bb.ba

bb.ba:                                            ; preds = %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 8 ; 4 uses
  %i.ft = load atomic i64, ptr %i.fs acquire, align 8 ; 2 uses
  %i.fu = icmp eq i64 %i.ft, 4294967297
  %i.fv = trunc i64 %i.ft to i32                  ; 2 uses
  br i1 %i.fu, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  store i32 0, ptr %i.fs, align 8, !tbaa !62
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fr, i64 12
  store i32 0, ptr %i.fw, align 4, !tbaa !64
  %i.fx = load ptr, ptr %i.fr, align 8, !tbaa !49
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 16
  %i.fz = load ptr, ptr %i.fy, align 8
  call void %i.fz(ptr noundef nonnull align 8 dereferenceable(16) %i.fr) #20, !inline_history !141
  %i.ga = load ptr, ptr %i.fr, align 8, !tbaa !49
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 24
  %i.gc = load ptr, ptr %i.gb, align 8
  call void %i.gc(ptr noundef nonnull align 8 dereferenceable(16) %i.fr) #20, !inline_history !141
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i134

bb.bc:                                            ; preds = %bb.ba
  %i.gd = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i.i.i131 = icmp eq i8 %i.gd, 0
  br i1 %.not.i.i.i.i.i.i131, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.ge = add nsw i32 %i.fv, -1
  store i32 %i.ge, ptr %i.fs, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i132

bb.be:                                            ; preds = %bb.bc
  %i.gf = atomicrmw volatile add ptr %i.fs, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i132

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i132: ; preds = %bb.be, %bb.bd
  %.0.i.i.i.i.i.i.i133 = phi i32 [ %i.fv, %bb.bd ], [ %i.gf, %bb.be ]
  %i.gg = icmp eq i32 %.0.i.i.i.i.i.i.i133, 1
  br i1 %i.gg, label %bb.bf, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i134, !prof !66

bb.bf:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i132
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fr) #20
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i134

_ZN6duckdb15SelectionVectorD2Ev.exit.i134:        ; preds = %bb.bf, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i132, %bb.bb, %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit
  %i.gh = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !51 ; 8 uses
  %.not.i.i.i.i1.i135 = icmp eq ptr %i.gi, null
  br i1 %.not.i.i.i.i1.i135, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit139, label %bb.bg

bb.bg:                                            ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i134
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 8 ; 4 uses
  %i.gk = load atomic i64, ptr %i.gj acquire, align 8 ; 2 uses
  %i.gl = icmp eq i64 %i.gk, 4294967297
  %i.gm = trunc i64 %i.gk to i32                  ; 2 uses
  br i1 %i.gl, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  store i32 0, ptr %i.gj, align 8, !tbaa !62
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gi, i64 12
  store i32 0, ptr %i.gn, align 4, !tbaa !64
  %i.go = load ptr, ptr %i.gi, align 8, !tbaa !49
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 16
  %i.gq = load ptr, ptr %i.gp, align 8
  call void %i.gq(ptr noundef nonnull align 8 dereferenceable(16) %i.gi) #20, !inline_history !142
  %i.gr = load ptr, ptr %i.gi, align 8, !tbaa !49
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 24
  %i.gt = load ptr, ptr %i.gs, align 8
  call void %i.gt(ptr noundef nonnull align 8 dereferenceable(16) %i.gi) #20, !inline_history !142
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit139

bb.bi:                                            ; preds = %bb.bg
end_hunk_3
