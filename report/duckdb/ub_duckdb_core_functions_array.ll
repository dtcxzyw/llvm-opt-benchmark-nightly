inline.NumInlined: 1137
inline.NumDeleted: 352
begin_hunk_0_@_ZN6duckdbL17ArrayFixedCombineIfNS_12_GLOBAL__N_114CrossProductOpELm3EEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE:bb.a
  %i.ce = load ptr, ptr %5, align 8, !tbaa !15    ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.cg = icmp eq ptr %i.ce, %i.cf
  br i1 %i.cg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.x
  call void @_ZdlPv(ptr noundef %i.ce) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.w
  %.171 = phi i1 [ true, %bb.w ], [ %.070, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %.070, %bb.x ] ; 2 uses
  %.pn = phi { ptr, i32 } [ %i.cc, %bb.w ], [ %i.cd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.cd, %bb.x ] ; 4 uses
  %i.ch = load ptr, ptr %8, align 8, !tbaa !15    ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.cj = icmp eq ptr %i.ch, %i.ci
  br i1 %i.cj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZdlPv(ptr noundef %i.ch) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99
  %i.ck = load ptr, ptr %6, align 8, !tbaa !15    ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.cm = icmp eq ptr %i.ck, %i.cl
  br i1 %i.cm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101.thread: ; preds = %bb.s
  %i.cn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.co = load ptr, ptr %6, align 8, !tbaa !15    ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.cq = icmp eq ptr %i.co, %i.cp
  br i1 %i.cq, label %.sink.split, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101.thread
  call void @_ZdlPv(ptr noundef %i.co) #19
  br label %.sink.split

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101
  call void @_ZdlPv(ptr noundef %i.ck) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br i1 %.171, label %bb.y, label %bb.bg

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br i1 %.171, label %bb.y, label %bb.bg

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102.thread
  %.pn.pn.pn138.ph = phi { ptr, i32 } [ %i.cn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102.thread ], [ %i.cb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104.thread ], [ %i.cn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %bb.y

bb.y:                                             ; preds = %.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104
  %.pn.pn.pn138 = phi { ptr, i32 } [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104 ], [ %.pn.pn.pn138.ph, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.ca) #20
  br label %bb.bg

.loopexit166:                                     ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.2, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit98.thread
  %i.cr = mul i64 %i.ao, 3                        ; 6 uses
  %i.cs = load ptr, ptr %i.m, align 8, !tbaa !137 ; 4 uses
  %.not.i.i105 = icmp ne ptr %i.cs, null
  %.not12.i106 = icmp ult i64 %i.cr, -3
  %or.cond.i107 = and i1 %.not12.i106, %.not.i.i105
  br i1 %or.cond.i107, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i109.preheader, label %.loopexit

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i109.preheader: ; preds = %.loopexit166
  %i.ct = lshr i64 %i.cr, 6
  %i.cu = and i64 %i.cr, 63
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %i.ct
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !71
  %i.cx = shl nuw i64 1, %i.cu
  %i.cy = and i64 %i.cx, %i.cw
  %.not.not.i111 = icmp eq i64 %i.cy, 0
  br i1 %.not.not.i111, label %_ZNK6duckdb21TemplatedValidityMaskImE13CheckAllValidEmm.exit113, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i109.1

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i109.1: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i109.preheader
  %i.cz = add nuw i64 %i.cr, 1                    ; 2 uses
  %i.da = lshr i64 %i.cz, 6
  %i.db = and i64 %i.cz, 63
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %i.da
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !71
  %i.de = shl nuw i64 1, %i.db
  %i.df = and i64 %i.de, %i.dd
  %.not.not.i111.1 = icmp eq i64 %i.df, 0
  br i1 %.not.not.i111.1, label %_ZNK6duckdb21TemplatedValidityMaskImE13CheckAllValidEmm.exit113, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i109.2

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i109.2: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i109.1
  %i.dg = add nuw i64 %i.cr, 2                    ; 2 uses
  %i.dh = lshr i64 %i.dg, 6
  %i.di = and i64 %i.dg, 63
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %i.dh
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !71
  %i.dl = shl nuw i64 1, %i.di
  %i.dm = and i64 %i.dl, %i.dk
  %.not.not.i111.2 = icmp eq i64 %i.dm, 0
  br i1 %.not.not.i111.2, label %_ZNK6duckdb21TemplatedValidityMaskImE13CheckAllValidEmm.exit113, label %.loopexit

_ZNK6duckdb21TemplatedValidityMaskImE13CheckAllValidEmm.exit113: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i109.2, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i109.1, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i109.preheader
  %i.dn = call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @.str.18, ptr noundef nonnull align 1 dereferenceable(1) %11)
          to label %bb.z unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122.thread

bb.z:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE13CheckAllValidEmm.exit113
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %i.d)
          to label %bb.aa unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119.thread

bb.aa:                                            ; preds = %bb.z
  invoke void @_ZN6duckdb10StringUtil6FormatIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_S7_DpT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull %10, ptr noundef nonnull %12)
          to label %bb.ab unwind label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  invoke void @_ZN6duckdb21InvalidInputExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.dn, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.ac unwind label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  invoke void @__cxa_throw(ptr nonnull %i.dn, ptr nonnull @_ZTIN6duckdb21InvalidInputExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #22
          to label %bb.bi unwind label %bb.ae

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122.thread: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE13CheckAllValidEmm.exit113
  %i.do = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split191

bb.ad:                                            ; preds = %bb.aa
  %i.dp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116

bb.ae:                                            ; preds = %bb.ac, %bb.ab
  %.066 = phi i1 [ false, %bb.ac ], [ true, %bb.ab ] ; 2 uses
  %i.dq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dr = load ptr, ptr %9, align 8, !tbaa !15    ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.dt = icmp eq ptr %i.dr, %i.ds
  br i1 %i.dt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114: ; preds = %bb.ae
  call void @_ZdlPv(ptr noundef %i.dr) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116: ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114, %bb.ad
  %.167 = phi i1 [ true, %bb.ad ], [ %.066, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114 ], [ %.066, %bb.ae ] ; 2 uses
  %.pn78 = phi { ptr, i32 } [ %i.dp, %bb.ad ], [ %i.dq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114 ], [ %i.dq, %bb.ae ] ; 4 uses
  %i.du = load ptr, ptr %12, align 8, !tbaa !15   ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.dw = icmp eq ptr %i.du, %i.dv
  br i1 %i.dw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116
  call void @_ZdlPv(ptr noundef %i.du) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117
  %i.dx = load ptr, ptr %10, align 8, !tbaa !15   ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.dz = icmp eq ptr %i.dx, %i.dy
  br i1 %i.dz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119.thread: ; preds = %bb.z
  %i.ea = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.eb = load ptr, ptr %10, align 8, !tbaa !15   ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.ed = icmp eq ptr %i.eb, %i.ec
  br i1 %i.ed, label %.sink.split191, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119.thread
  call void @_ZdlPv(ptr noundef %i.eb) #19
  br label %.sink.split191

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119
  call void @_ZdlPv(ptr noundef %i.dx) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  br i1 %.167, label %bb.af, label %bb.bg

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  br i1 %.167, label %bb.af, label %bb.bg

.sink.split191:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120.thread
  %.pn78.pn.pn151.ph = phi { ptr, i32 } [ %i.ea, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120.thread ], [ %i.do, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122.thread ], [ %i.ea, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  br label %bb.af

bb.af:                                            ; preds = %.sink.split191, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122
  %.pn78.pn.pn151 = phi { ptr, i32 } [ %.pn78, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120 ], [ %.pn78, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122 ], [ %.pn78.pn.pn151.ph, %.sink.split191 ]
  call void @__cxa_free_exception(ptr %i.dn) #20
  br label %bb.bg

.loopexit:                                        ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i109.2, %.loopexit166
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.be ; 2 uses
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.cr ; 2 uses
  %.idx = mul i64 %.065167, 12
  %13 = getelementptr inbounds nuw i8, ptr %i.u, i64 %.idx ; 2 uses
  %14 = load float, ptr %i.ee, align 4, !tbaa !138 ; 2 uses
  %15 = getelementptr inbounds nuw i8, ptr %i.ee, i64 4
  %16 = load float, ptr %i.ef, align 4, !tbaa !138 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 4
  %17 = load <2 x float>, ptr %15, align 4, !tbaa !138 ; 3 uses
  %18 = load <2 x float>, ptr %i.eg, align 4, !tbaa !138 ; 3 uses
  %19 = fneg <2 x float> %18
  %20 = shufflevector <2 x float> %17, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %21 = insertelement <2 x float> %20, float %14, i64 1
  %22 = fmul <2 x float> %21, %19
  %23 = shufflevector <2 x float> %18, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %24 = insertelement <2 x float> %23, float %16, i64 1
  %25 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %17, <2 x float> %24, <2 x float> %22)
  store <2 x float> %25, ptr %13, align 4, !tbaa !138
  %26 = fneg float %16
  %27 = extractelement <2 x float> %17, i64 0
  %28 = fmul float %27, %26
  %29 = extractelement <2 x float> %18, i64 0
  %30 = call float @llvm.fmuladd.f32(float %14, float %29, float %28)
  %31 = getelementptr inbounds nuw i8, ptr %13, i64 8
  store float %30, ptr %31, align 4, !tbaa !138
  br label %bb.ag

bb.ag:                                            ; preds = %bb.q, %.loopexit
  %i.eh = add nuw i64 %.065167, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.eh, %i.f
  br i1 %exitcond.not, label %._crit_edge, label %bb.n, !llvm.loop !140

bb.ah:                                            ; preds = %._crit_edge
  invoke void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %2, i8 noundef zeroext 2)
          to label %._crit_edge.thread unwind label %bb.m

._crit_edge.thread:                               ; preds = %_ZN6duckdb10FlatVector7GetDataIfEEPT_RNS_6VectorE.exit92, %bb.ah, %._crit_edge
  %i.ei = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !51 ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ej, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, label %bb.ai

bb.ai:                                            ; preds = %._crit_edge.thread
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 8 ; 4 uses
  %i.el = load atomic i64, ptr %i.ek acquire, align 8 ; 2 uses
  %i.em = icmp eq i64 %i.el, 4294967297
  %i.en = trunc i64 %i.el to i32                  ; 2 uses
  br i1 %i.em, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
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

bb.ak:                                            ; preds = %bb.ai
  %i.ev = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i.i.i = icmp eq i8 %i.ev, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ew = add nsw i32 %i.en, -1
  store i32 %i.ew, ptr %i.ek, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.am:                                            ; preds = %bb.ak
  %i.ex = atomicrmw volatile add ptr %i.ek, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.am, %bb.al
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.en, %bb.al ], [ %i.ex, %bb.am ]
  %i.ey = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.ey, label %bb.an, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, !prof !66

bb.an:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ej) #20
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i

_ZN6duckdb15SelectionVectorD2Ev.exit.i:           ; preds = %bb.an, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.aj, %._crit_edge.thread
  %i.ez = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !51 ; 8 uses
  %.not.i.i.i.i1.i = icmp eq ptr %i.fa, null
  br i1 %.not.i.i.i.i1.i, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, label %bb.ao

bb.ao:                                            ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 8 ; 4 uses
  %i.fc = load atomic i64, ptr %i.fb acquire, align 8 ; 2 uses
  %i.fd = icmp eq i64 %i.fc, 4294967297
  %i.fe = trunc i64 %i.fc to i32                  ; 2 uses
  br i1 %i.fd, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
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

bb.aq:                                            ; preds = %bb.ao
  %i.fm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i.i2.i = icmp eq i8 %i.fm, 0
  br i1 %.not.i.i.i.i.i2.i, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.fn = add nsw i32 %i.fe, -1
  store i32 %i.fn, ptr %i.fb, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

bb.as:                                            ; preds = %bb.aq
  %i.fo = atomicrmw volatile add ptr %i.fb, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i: ; preds = %bb.as, %bb.ar
  %.0.i.i.i.i.i.i4.i = phi i32 [ %i.fe, %bb.ar ], [ %i.fo, %bb.as ]
  %i.fp = icmp eq i32 %.0.i.i.i.i.i.i4.i, 1
  br i1 %i.fp, label %bb.at, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, !prof !66

bb.at:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fa) #20
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

_ZN6duckdb19UnifiedVectorFormatD2Ev.exit:         ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i, %bb.ap, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %i.fq = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !51 ; 8 uses
  %.not.i.i.i.i.i123 = icmp eq ptr %i.fr, null
  br i1 %.not.i.i.i.i.i123, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i127, label %bb.au

bb.au:                                            ; preds = %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 8 ; 4 uses
  %i.ft = load atomic i64, ptr %i.fs acquire, align 8 ; 2 uses
  %i.fu = icmp eq i64 %i.ft, 4294967297
  %i.fv = trunc i64 %i.ft to i32                  ; 2 uses
  br i1 %i.fu, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
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
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i127

bb.aw:                                            ; preds = %bb.au
  %i.gd = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i.i.i124 = icmp eq i8 %i.gd, 0
  br i1 %.not.i.i.i.i.i.i124, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ge = add nsw i32 %i.fv, -1
  store i32 %i.ge, ptr %i.fs, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i125

bb.ay:                                            ; preds = %bb.aw
  %i.gf = atomicrmw volatile add ptr %i.fs, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i125

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i125: ; preds = %bb.ay, %bb.ax
  %.0.i.i.i.i.i.i.i126 = phi i32 [ %i.fv, %bb.ax ], [ %i.gf, %bb.ay ]
  %i.gg = icmp eq i32 %.0.i.i.i.i.i.i.i126, 1
  br i1 %i.gg, label %bb.az, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i127, !prof !66

bb.az:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i125
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fr) #20
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i127

_ZN6duckdb15SelectionVectorD2Ev.exit.i127:        ; preds = %bb.az, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i125, %bb.av, %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit
  %i.gh = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !51 ; 8 uses
  %.not.i.i.i.i1.i128 = icmp eq ptr %i.gi, null
  br i1 %.not.i.i.i.i1.i128, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit132, label %bb.ba

bb.ba:                                            ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i127
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 8 ; 4 uses
  %i.gk = load atomic i64, ptr %i.gj acquire, align 8 ; 2 uses
  %i.gl = icmp eq i64 %i.gk, 4294967297
  %i.gm = trunc i64 %i.gk to i32                  ; 2 uses
  br i1 %i.gl, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
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
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit132

bb.bc:                                            ; preds = %bb.ba
  %i.gu = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i.i2.i129 = icmp eq i8 %i.gu, 0
  br i1 %.not.i.i.i.i.i2.i129, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.gv = add nsw i32 %i.gm, -1
  store i32 %i.gv, ptr %i.gj, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i130

bb.be:                                            ; preds = %bb.bc
end_hunk_0
begin_hunk_1_@_ZNSt6vectorIN6duckdb14ScalarFunctionESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_:bb.a
          to label %bb.l unwind label %bb.i

bb.j:                                             ; preds = %bb.i
  resume { ptr, i32 } %i.ax

bb.k:                                             ; preds = %bb.i
  %i.ay = landingpad { ptr, i32 }
          catch ptr null
  %i.az = extractvalue { ptr, i32 } %i.ay, 0
  tail call void @__clang_call_terminate(ptr %i.az) #23
  unreachable

bb.l:                                             ; preds = %.loopexit
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZSt16__do_uninit_copyIPKN6duckdb14ScalarFunctionEPS1_ET0_T_S6_S5_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not17 = icmp eq ptr %0, %1
  br i1 %.not17, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZSt10_ConstructIN6duckdb14ScalarFunctionEJRKS1_EEvPT_DpOT0_.exit
  %.019 = phi ptr [ %i.z, %_ZSt10_ConstructIN6duckdb14ScalarFunctionEJRKS1_EEvPT_DpOT0_.exit ], [ %2, %bb.a ] ; 10 uses
  %.01218 = phi ptr [ %i.y, %_ZSt10_ConstructIN6duckdb14ScalarFunctionEJRKS1_EEvPT_DpOT0_.exit ], [ %0, %bb.a ] ; 7 uses
  invoke void @_ZN6duckdb18BaseScalarFunctionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(360) %.019, ptr noundef nonnull align 8 dereferenceable(360) %.01218)
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %.lr.ph
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6duckdb14ScalarFunctionE, i64 16), ptr %.019, align 8, !tbaa !49
  %i.a = getelementptr inbounds nuw i8, ptr %.019, i64 240 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.019, i64 256 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.01218, i64 256 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !35   ; 2 uses
  %.not.i.i.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.not.i.i.i, label %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2ERKS8_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.noexc
  %i.e = getelementptr inbounds nuw i8, ptr %.01218, i64 240
  %i.f = invoke noundef zeroext i1 %i.d(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i32 noundef 2)
          to label %bb.c unwind label %bb.d       ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.g = load <2 x ptr>, ptr %i.c, align 8, !tbaa !34
  store <2 x ptr> %i.g, ptr %i.b, align 8, !tbaa !34
  br label %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2ERKS8_.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !35   ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i, label %.body.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = invoke noundef zeroext i1 %i.i(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i32 noundef 3)
          to label %.body.i.i unwind label %bb.f  ; 0 uses

bb.f:                                             ; preds = %bb.e
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  tail call void @__clang_call_terminate(ptr %i.l) #23
  unreachable

_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2ERKS8_.exit.i.i: ; preds = %bb.c, %.noexc
  %i.m = getelementptr inbounds nuw i8, ptr %.019, i64 272
  %i.n = getelementptr inbounds nuw i8, ptr %.01218, i64 272
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.m, ptr noundef nonnull align 8 dereferenceable(72) %i.n, i64 72, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %.019, i64 344
  %i.p = getelementptr inbounds nuw i8, ptr %.01218, i64 344
  %i.q = getelementptr inbounds nuw i8, ptr %.01218, i64 352
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !51   ; 2 uses
  %i.s = load <2 x ptr>, ptr %i.p, align 8, !tbaa !34
  store <2 x ptr> %i.s, ptr %i.o, align 8, !tbaa !34
  %.not.i.i.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt10_ConstructIN6duckdb14ScalarFunctionEJRKS1_EEvPT_DpOT0_.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2ERKS8_.exit.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 3 uses
  %i.u = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.u, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = load i32, ptr %i.t, align 4, !tbaa !3
  %i.w = add nsw i32 %i.v, 1
  store i32 %i.w, ptr %i.t, align 4, !tbaa !3
  br label %_ZSt10_ConstructIN6duckdb14ScalarFunctionEJRKS1_EEvPT_DpOT0_.exit

bb.i:                                             ; preds = %bb.g
  %i.x = atomicrmw volatile add ptr %i.t, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZSt10_ConstructIN6duckdb14ScalarFunctionEJRKS1_EEvPT_DpOT0_.exit

.body.i.i:                                        ; preds = %bb.e, %bb.d
  tail call void @_ZN6duckdb18BaseScalarFunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(360) %.019) #20
  br label %.body

_ZSt10_ConstructIN6duckdb14ScalarFunctionEJRKS1_EEvPT_DpOT0_.exit: ; preds = %bb.i, %bb.h, %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2ERKS8_.exit.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.01218, i64 360 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.019, i64 360 ; 2 uses
  %.not = icmp eq ptr %i.y, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !271

bb.j:                                             ; preds = %.lr.ph
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.body:                                            ; preds = %.body.i.i, %bb.j
  %eh.lpad-body = phi { ptr, i32 } [ %i.aa, %bb.j ], [ %i.h, %.body.i.i ]
  %i.ab = extractvalue { ptr, i32 } %eh.lpad-body, 0
  %i.ac = tail call ptr @__cxa_begin_catch(ptr %i.ab) #20 ; 0 uses
  %.not4.i.i = icmp eq ptr %2, %.019
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN6duckdb14ScalarFunctionEEvT_S3_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.body, %.lr.ph.i.i
  %.05.i.i = phi ptr [ %i.af, %.lr.ph.i.i ], [ %2, %.body ] ; 3 uses
  %i.ad = load ptr, ptr %.05.i.i, align 8, !tbaa !49
  %i.ae = load ptr, ptr %i.ad, align 8
  tail call void %i.ae(ptr noundef nonnull align 8 dereferenceable(360) %.05.i.i) #20, !inline_history !269
  %i.af = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 360 ; 2 uses
  %.not.i.i = icmp eq ptr %i.af, %.019
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN6duckdb14ScalarFunctionEEvT_S3_.exit, label %.lr.ph.i.i, !llvm.loop !70

_ZSt8_DestroyIPN6duckdb14ScalarFunctionEEvT_S3_.exit: ; preds = %.lr.ph.i.i, %.body
  invoke void @__cxa_rethrow() #22
          to label %bb.n unwind label %bb.k

._crit_edge:                                      ; preds = %_ZSt10_ConstructIN6duckdb14ScalarFunctionEJRKS1_EEvPT_DpOT0_.exit, %bb.a
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.z, %_ZSt10_ConstructIN6duckdb14ScalarFunctionEJRKS1_EEvPT_DpOT0_.exit ]
  ret ptr %.0.lcssa

bb.k:                                             ; preds = %_ZSt8_DestroyIPN6duckdb14ScalarFunctionEEvT_S3_.exit
  %i.ag = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %bb.k
  resume { ptr, i32 } %i.ag

bb.m:                                             ; preds = %bb.k
  %i.ah = landingpad { ptr, i32 }
          catch ptr null
  %i.ai = extractvalue { ptr, i32 } %i.ah, 0
  tail call void @__clang_call_terminate(ptr %i.ai) #23
  unreachable

bb.n:                                             ; preds = %_ZSt8_DestroyIPN6duckdb14ScalarFunctionEEvT_S3_.exit
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt17_Function_handlerIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEPS7_E9_M_invokeERKSt9_Any_dataS2_S4_S6_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(184) %2, ptr noundef nonnull align 8 dereferenceable(104) %3) #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !34
  tail call void %i.a(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(184) %2, ptr noundef nonnull align 8 dereferenceable(104) %3), !inline_history !272
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNSt17_Function_handlerIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEPS7_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIPFvRN6duckdb9DataChunkERNS1_15ExpressionStateERNS1_6VectorEEE10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit [
    i32 0, label %_ZNSt14_Function_base13_Base_managerIPFvRN6duckdb9DataChunkERNS1_15ExpressionStateERNS1_6VectorEEE10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit.sink.split
    i32 1, label %bb.b
    i32 2, label %.sink.split.i
  ]

bb.b:                                             ; preds = %bb.a
  br label %_ZNSt14_Function_base13_Base_managerIPFvRN6duckdb9DataChunkERNS1_15ExpressionStateERNS1_6VectorEEE10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit.sink.split

.sink.split.i:                                    ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !34
  br label %_ZNSt14_Function_base13_Base_managerIPFvRN6duckdb9DataChunkERNS1_15ExpressionStateERNS1_6VectorEEE10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit.sink.split

_ZNSt14_Function_base13_Base_managerIPFvRN6duckdb9DataChunkERNS1_15ExpressionStateERNS1_6VectorEEE10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit.sink.split: ; preds = %bb.a, %bb.b, %.sink.split.i
  %.sink = phi ptr [ %i.a, %.sink.split.i ], [ %1, %bb.b ], [ @_ZTIPFvRN6duckdb9DataChunkERNS_15ExpressionStateERNS_6VectorEE, %bb.a ]
  store ptr %.sink, ptr %0, align 8, !tbaa !34
  br label %_ZNSt14_Function_base13_Base_managerIPFvRN6duckdb9DataChunkERNS1_15ExpressionStateERNS1_6VectorEEE10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIPFvRN6duckdb9DataChunkERNS1_15ExpressionStateERNS1_6VectorEEE10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit: ; preds = %_ZNSt14_Function_base13_Base_managerIPFvRN6duckdb9DataChunkERNS1_15ExpressionStateERNS1_6VectorEEE10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit.sink.split, %bb.a
  ret i1 false
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #15

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold nofree noreturn }
attributes #9 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold noreturn }
attributes #11 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #19 = { builtin nounwind }
attributes #20 = { nounwind }
attributes #21 = { builtin allocsize(0) }
attributes #22 = { noreturn }
attributes #23 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !9, i64 0}
!8 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !9, i64 0}
!9 = !{!"p1 omnipotent char", !10, i64 0}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!12, !13, i64 8}
!12 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !8, i64 0, !13, i64 8, !5, i64 16}
!13 = !{!"long", !5, i64 0}
!14 = !{!5, !5, i64 0}
!15 = !{!12, !9, i64 0}
!16 = !{!17, !17, i64 0}
!17 = !{!"p1 _ZTSN6duckdb11LogicalTypeE", !10, i64 0}
!18 = !{!19, !17, i64 0}
!19 = !{!"_ZTSNSt12_Vector_baseIN6duckdb11LogicalTypeESaIS1_EE17_Vector_impl_dataE", !17, i64 0, !17, i64 8, !17, i64 16}
!20 = !{!19, !17, i64 8}
!21 = distinct !{!21, !22}
!22 = !{!"llvm.loop.mustprogress"}
!23 = !{!24, !25, i64 0}
!24 = !{!"_ZTSN6duckdb11LogicalTypeE", !25, i64 0, !26, i64 1, !27, i64 8}
!25 = !{!"_ZTSN6duckdb13LogicalTypeIdE", !5, i64 0}
!26 = !{!"_ZTSN6duckdb12PhysicalTypeE", !5, i64 0}
!27 = !{!"_ZTSN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEE", !28, i64 0}
!28 = !{!"_ZTSSt10shared_ptrIN6duckdb13ExtraTypeInfoEE", !29, i64 0}
!29 = !{!"_ZTSSt12__shared_ptrIN6duckdb13ExtraTypeInfoELN9__gnu_cxx12_Lock_policyE2EE", !30, i64 0, !31, i64 8}
!30 = !{!"p1 _ZTSN6duckdb13ExtraTypeInfoE", !10, i64 0}
!31 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !32, i64 0}
!32 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !10, i64 0}
!33 = !{!19, !17, i64 16}
!34 = !{!10, !10, i64 0}
!35 = !{!36, !10, i64 16}
!36 = !{!"_ZTSSt14_Function_base", !5, i64 0, !10, i64 16}
!37 = !{!38, !47, i64 234}
!38 = !{!"_ZTSN6duckdb18BaseScalarFunctionE", !39, i64 0, !24, i64 208, !45, i64 232, !46, i64 233, !47, i64 234, !48, i64 235}
!39 = !{!"_ZTSN6duckdb14SimpleFunctionE", !40, i64 0, !41, i64 136, !41, i64 160, !24, i64 184}
!40 = !{!"_ZTSN6duckdb8FunctionE", !12, i64 8, !12, i64 40, !12, i64 72, !12, i64 104}
!41 = !{!"_ZTSN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEE", !42, i64 0}
!42 = !{!"_ZTSSt6vectorIN6duckdb11LogicalTypeESaIS1_EE", !43, i64 0}
!43 = !{!"_ZTSSt12_Vector_baseIN6duckdb11LogicalTypeESaIS1_EE", !44, i64 0}
!44 = !{!"_ZTSNSt12_Vector_baseIN6duckdb11LogicalTypeESaIS1_EE12_Vector_implE", !19, i64 0}
!45 = !{!"_ZTSN6duckdb17FunctionStabilityE", !5, i64 0}
!46 = !{!"_ZTSN6duckdb20FunctionNullHandlingE", !5, i64 0}
!47 = !{!"_ZTSN6duckdb14FunctionErrorsE", !5, i64 0}
!48 = !{!"_ZTSN6duckdb25FunctionCollationHandlingE", !5, i64 0}
!49 = !{!50, !50, i64 0}
!50 = !{!"vtable pointer", !6, i64 0}
!51 = !{!31, !32, i64 0}
!52 = !{!53, !54, i64 8}
!53 = !{!"_ZTSNSt12_Vector_baseIN6duckdb14ScalarFunctionESaIS1_EE17_Vector_impl_dataE", !54, i64 0, !54, i64 8, !54, i64 16}
!54 = !{!"p1 _ZTSN6duckdb14ScalarFunctionE", !10, i64 0}
!55 = !{!53, !54, i64 16}
!56 = !{!57, !10, i64 24}
!57 = !{!"_ZTSSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEE", !36, i64 0, !10, i64 24}
!58 = !{i64 0, i64 16, !14}
!59 = !{!60, !61, i64 0}
!60 = !{!"_ZTSSt12__shared_ptrIN6duckdb18ScalarFunctionInfoELN9__gnu_cxx12_Lock_policyE2EE", !61, i64 0, !31, i64 8}
!61 = !{!"p1 _ZTSN6duckdb18ScalarFunctionInfoE", !10, i64 0}
!62 = !{!63, !4, i64 8}
!63 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !4, i64 8, !4, i64 12}
!64 = !{!63, !4, i64 12}
!65 = distinct !{null, ptr @_ZN6duckdb14ScalarFunctionD2Ev, null, null, null, null}
!66 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!67 = !{ptr @_ZN6duckdb14ScalarFunctionD2Ev}
!68 = !{!53, !54, i64 0}
!69 = distinct !{null, null, null, null}
!70 = distinct !{!70, !22}
!71 = !{!13, !13, i64 0}
!72 = distinct !{null, ptr @_ZN6duckdb14ScalarFunctionD2Ev, null, null, null, null}
!73 = distinct !{null, ptr @_ZN6duckdb14ScalarFunctionD2Ev, null, null, null, null}
!74 = distinct !{null, ptr @_ZN6duckdb14ScalarFunctionD2Ev, null, null, null, null}
!75 = distinct !{null, ptr @_ZN6duckdb14ScalarFunctionD2Ev, null, null, null, null}
!76 = distinct !{ptr @_ZN6duckdb14ScalarFunctionD2Ev, null, null, null, null}
!77 = !{!54, !54, i64 0}
!78 = !{!79, !13, i64 0}
!79 = !{!"_ZTSN6duckdb12optional_idxE", !13, i64 0}
!80 = !{!81, !82, i64 8}
!81 = !{!"_ZTSN6duckdb15ExpressionStateE", !82, i64 8, !83, i64 16, !84, i64 24, !41, i64 48, !90, i64 72, !103, i64 144}
!82 = !{!"p1 _ZTSN6duckdb10ExpressionE", !10, i64 0}
!83 = !{!"p1 _ZTSN6duckdb23ExpressionExecutorStateE", !10, i64 0}
!84 = !{!"_ZTSN6duckdb6vectorINS_10unique_ptrINS_15ExpressionStateESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEE", !85, i64 0}
!85 = !{!"_ZTSSt6vectorIN6duckdb10unique_ptrINS0_15ExpressionStateESt14default_deleteIS2_ELb1EEESaIS5_EE", !86, i64 0}
!86 = !{!"_ZTSSt12_Vector_baseIN6duckdb10unique_ptrINS0_15ExpressionStateESt14default_deleteIS2_ELb1EEESaIS5_EE", !87, i64 0}
!87 = !{!"_ZTSNSt12_Vector_baseIN6duckdb10unique_ptrINS0_15ExpressionStateESt14default_deleteIS2_ELb1EEESaIS5_EE12_Vector_implE", !88, i64 0}
!88 = !{!"_ZTSNSt12_Vector_baseIN6duckdb10unique_ptrINS0_15ExpressionStateESt14default_deleteIS2_ELb1EEESaIS5_EE17_Vector_impl_dataE", !89, i64 0, !89, i64 8, !89, i64 16}
!89 = !{!"p1 _ZTSN6duckdb10unique_ptrINS_15ExpressionStateESt14default_deleteIS1_ELb1EEE", !10, i64 0}
!90 = !{!"_ZTSN6duckdb9DataChunkE", !91, i64 0, !13, i64 24, !13, i64 32, !13, i64 40, !97, i64 48}
!91 = !{!"_ZTSN6duckdb6vectorINS_6VectorELb1ESaIS1_EEE", !92, i64 0}
!92 = !{!"_ZTSSt6vectorIN6duckdb6VectorESaIS1_EE", !93, i64 0}
!93 = !{!"_ZTSSt12_Vector_baseIN6duckdb6VectorESaIS1_EE", !94, i64 0}
!94 = !{!"_ZTSNSt12_Vector_baseIN6duckdb6VectorESaIS1_EE12_Vector_implE", !95, i64 0}
!95 = !{!"_ZTSNSt12_Vector_baseIN6duckdb6VectorESaIS1_EE17_Vector_impl_dataE", !96, i64 0, !96, i64 8, !96, i64 16}
!96 = !{!"p1 _ZTSN6duckdb6VectorE", !10, i64 0}
!97 = !{!"_ZTSN6duckdb6vectorINS_11VectorCacheELb1ESaIS1_EEE", !98, i64 0}
!98 = !{!"_ZTSSt6vectorIN6duckdb11VectorCacheESaIS1_EE", !99, i64 0}
!99 = !{!"_ZTSSt12_Vector_baseIN6duckdb11VectorCacheESaIS1_EE", !100, i64 0}
!100 = !{!"_ZTSNSt12_Vector_baseIN6duckdb11VectorCacheESaIS1_EE12_Vector_implE", !101, i64 0}
!101 = !{!"_ZTSNSt12_Vector_baseIN6duckdb11VectorCacheESaIS1_EE17_Vector_impl_dataE", !102, i64 0, !102, i64 8, !102, i64 16}
!102 = !{!"p1 _ZTSN6duckdb11VectorCacheE", !10, i64 0}
!103 = !{!"_ZTSN6duckdb6vectorIbLb1ESaIbEEE", !104, i64 0}
!104 = !{!"_ZTSSt6vectorIbSaIbEE", !105, i64 0}
!105 = !{!"_ZTSSt13_Bvector_baseISaIbEE", !106, i64 0}
!106 = !{!"_ZTSNSt13_Bvector_baseISaIbEE13_Bvector_implE", !107, i64 0}
!107 = !{!"_ZTSNSt13_Bvector_baseISaIbEE18_Bvector_impl_dataE", !108, i64 0, !108, i64 16, !110, i64 32}
!108 = !{!"_ZTSSt13_Bit_iterator", !109, i64 0}
!109 = !{!"_ZTSSt18_Bit_iterator_base", !110, i64 0, !4, i64 8}
!110 = !{!"p1 long", !10, i64 0}
!111 = !{}
!112 = !{i64 8}
!113 = !{!90, !13, i64 24}
!114 = !{!115, !9, i64 32}
!115 = !{!"_ZTSN6duckdb6VectorE", !116, i64 0, !24, i64 8, !9, i64 32, !117, i64 40, !123, i64 72, !123, i64 88}
!116 = !{!"_ZTSN6duckdb10VectorTypeE", !5, i64 0}
!117 = !{!"_ZTSN6duckdb12ValidityMaskE", !118, i64 0}
!118 = !{!"_ZTSN6duckdb21TemplatedValidityMaskImEE", !110, i64 0, !119, i64 8, !13, i64 24}
!119 = !{!"_ZTSN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEE", !120, i64 0}
!120 = !{!"_ZTSSt10shared_ptrIN6duckdb21TemplatedValidityDataImEEE", !121, i64 0}
!121 = !{!"_ZTSSt12__shared_ptrIN6duckdb21TemplatedValidityDataImEELN9__gnu_cxx12_Lock_policyE2EE", !122, i64 0, !31, i64 8}
!122 = !{!"p1 _ZTSN6duckdb21TemplatedValidityDataImEE", !10, i64 0}
!123 = !{!"_ZTSN6duckdb10shared_ptrINS_12VectorBufferELb1EEE", !124, i64 0}
!124 = !{!"_ZTSSt10shared_ptrIN6duckdb12VectorBufferEE", !125, i64 0}
!125 = !{!"_ZTSSt12__shared_ptrIN6duckdb12VectorBufferELN9__gnu_cxx12_Lock_policyE2EE", !126, i64 0, !31, i64 8}
!126 = !{!"p1 _ZTSN6duckdb12VectorBufferE", !10, i64 0}
!127 = !{!128, !129, i64 0}
!128 = !{!"_ZTSN6duckdb19UnifiedVectorFormatE", !129, i64 0, !9, i64 8, !117, i64 16, !130, i64 48, !26, i64 72}
!129 = !{!"p1 _ZTSN6duckdb15SelectionVectorE", !10, i64 0}
!130 = !{!"_ZTSN6duckdb15SelectionVectorE", !131, i64 0, !132, i64 8}
!131 = !{!"p1 int", !10, i64 0}
!132 = !{!"_ZTSN6duckdb10shared_ptrINS_13SelectionDataELb1EEE", !133, i64 0}
!133 = !{!"_ZTSSt10shared_ptrIN6duckdb13SelectionDataEE", !134, i64 0}
!134 = !{!"_ZTSSt12__shared_ptrIN6duckdb13SelectionDataELN9__gnu_cxx12_Lock_policyE2EE", !135, i64 0, !31, i64 8}
!135 = !{!"p1 _ZTSN6duckdb13SelectionDataE", !10, i64 0}
!136 = !{!130, !131, i64 0}
!137 = !{!118, !110, i64 0}
!138 = !{!139, !139, i64 0}
!139 = !{!"float", !5, i64 0}
!140 = distinct !{!140, !22}
!141 = distinct !{ptr @_ZN6duckdb19UnifiedVectorFormatD2Ev, null, null, null, null, null}
!142 = distinct !{ptr @_ZN6duckdb19UnifiedVectorFormatD2Ev, null, null, null, null, null}
!143 = distinct !{null, null, null, null}
!144 = !{!145, !145, i64 0}
!145 = !{!"double", !5, i64 0}
!146 = distinct !{!146, !22}
!147 = !{!24, !26, i64 1}
!148 = !{!38, !46, i64 233}
!149 = !{!95, !96, i64 8}
!150 = !{!95, !96, i64 0}
!151 = !{!115, !116, i64 0}
!152 = distinct !{!152, !22}
!153 = distinct !{!153, !22}
!154 = distinct !{!154, !22}
!155 = !{!156, !156, i64 0}
!156 = !{!"p1 _ZTSN6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEE", !10, i64 0}
!157 = !{!158, !156, i64 8}
!158 = !{!"_ZTSNSt12_Vector_baseIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_Vector_impl_dataE", !156, i64 0, !156, i64 8, !156, i64 16}
!159 = !{!158, !156, i64 0}
!160 = distinct !{!160, !22}
!161 = distinct !{null, null, null, null, null, null}
!162 = !{!163}
!163 = distinct !{!163, !164, !"_ZN6duckdb9make_uniqINS_22VariableReturnBindDataEJRNS_11LogicalTypeEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_: argument 0"}
!164 = distinct !{!164, !"_ZN6duckdb9make_uniqINS_22VariableReturnBindDataEJRNS_11LogicalTypeEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_"}
!165 = distinct !{null}
!166 = !{!167, !168, i64 0}
end_hunk_1
