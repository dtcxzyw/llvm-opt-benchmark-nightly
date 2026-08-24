Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/casadi/original/blazing_spline?download=true
inline.NumInlined: 2450
inline.NumDeleted: 866
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 24
begin_hunk_0_@_ZN6casadi21BlazingSplineFunctionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIS9_IdSaIdEESaISB_EEx:bb.a

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79: ; preds = %bb.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77, %bb.am
  %.pn48 = phi { ptr, i32 } [ %i.cm, %bb.am ], [ %i.cn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77 ], [ %i.cn, %bb.an ] ; 2 uses
  %.1 = phi i1 [ true, %bb.am ], [ %.0, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77 ], [ %.0, %bb.an ] ; 2 uses
  %i.ct = load ptr, ptr %19, align 8, !tbaa !98   ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.cv = icmp eq ptr %i.ct, %i.cu
  br i1 %i.cv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79
  %i.cw = load i64, ptr %i.cu, align 8, !tbaa !99
  %i.cx = add i64 %i.cw, 1
  call void @_ZdlPvm(ptr noundef %i.ct, i64 noundef %i.cx) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80, %bb.al
  %.pn48.pn = phi { ptr, i32 } [ %i.cl, %bb.al ], [ %.pn48, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80 ], [ %.pn48, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79 ] ; 2 uses
  %.2 = phi i1 [ true, %bb.al ], [ %.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80 ], [ %.1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79 ] ; 2 uses
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %23) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #26
  %i.cy = load ptr, ptr %20, align 8, !tbaa !98   ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  %i.da = icmp eq ptr %i.cy, %i.cz
  br i1 %i.da, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82
  %i.db = load i64, ptr %i.cz, align 8, !tbaa !99
  %i.dc = add i64 %i.db, 1
  call void @_ZdlPvm(ptr noundef %i.cy, i64 noundef %i.dc) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83, %bb.ak
  %.pn48.pn.pn = phi { ptr, i32 } [ %i.ck, %bb.ak ], [ %.pn48.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83 ], [ %.pn48.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82 ] ; 2 uses
  %.3 = phi i1 [ true, %bb.ak ], [ %.2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83 ], [ %.2, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82 ] ; 2 uses
  %i.dd = load ptr, ptr %21, align 8, !tbaa !98   ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 2 uses
  %i.df = icmp eq ptr %i.dd, %i.de
  br i1 %i.df, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85
  %i.dg = load i64, ptr %i.de, align 8, !tbaa !99
  %i.dh = add i64 %i.dg, 1
  call void @_ZdlPvm(ptr noundef %i.dd, i64 noundef %i.dh) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86, %bb.aj
  %.pn48.pn.pn.pn = phi { ptr, i32 } [ %i.cj, %bb.aj ], [ %.pn48.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86 ], [ %.pn48.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85 ] ; 2 uses
  %.4 = phi i1 [ true, %bb.aj ], [ %.3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86 ], [ %.3, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #26
  %i.di = load ptr, ptr %15, align 8, !tbaa !98   ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.dk = icmp eq ptr %i.di, %i.dj
  br i1 %i.dk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88
  %i.dl = load i64, ptr %i.dj, align 8, !tbaa !99
  %i.dm = add i64 %i.dl, 1
  call void @_ZdlPvm(ptr noundef %i.di, i64 noundef %i.dm) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89, %bb.ai
  %.pn48.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ci, %bb.ai ], [ %.pn48.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89 ], [ %.pn48.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88 ] ; 4 uses
  %.5 = phi i1 [ true, %bb.ai ], [ %.4, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89 ], [ %.4, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88 ] ; 2 uses
  %i.dn = load ptr, ptr %16, align 8, !tbaa !98   ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.dp = icmp eq ptr %i.dn, %i.do
  br i1 %i.dp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91
  %i.dq = load i64, ptr %i.do, align 8, !tbaa !99
  %i.dr = add i64 %i.dq, 1
  call void @_ZdlPvm(ptr noundef %i.dn, i64 noundef %i.dr) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92
  %i.ds = load ptr, ptr %17, align 8, !tbaa !98   ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.du = icmp eq ptr %i.ds, %i.dt
  br i1 %i.du, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94.thread: ; preds = %bb.aa
  %i.dv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dw = load ptr, ptr %17, align 8, !tbaa !98   ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.dy = icmp eq ptr %i.dw, %i.dx
  br i1 %i.dy, label %.sink.split165, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94.thread
  %i.dz = load i64, ptr %i.dx, align 8, !tbaa !99
  %i.ea = add i64 %i.dz, 1
  call void @_ZdlPvm(ptr noundef %i.dw, i64 noundef %i.ea) #25
  br label %.sink.split165

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94
  %i.eb = load i64, ptr %i.dt, align 8, !tbaa !99
  %i.ec = add i64 %i.eb, 1
  call void @_ZdlPvm(ptr noundef %i.ds, i64 noundef %i.ec) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  br i1 %.5, label %bb.ao, label %bb.aq

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  br i1 %.5, label %bb.ao, label %bb.aq

.sink.split165:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95.thread
  %.pn48.pn.pn.pn.pn.pn.pn114.ph = phi { ptr, i32 } [ %i.dv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95.thread ], [ %i.ch, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97.thread ], [ %i.dv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  br label %bb.ao

bb.ao:                                            ; preds = %.sink.split165, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97
  %.pn48.pn.pn.pn.pn.pn.pn114 = phi { ptr, i32 } [ %.pn48.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95 ], [ %.pn48.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97 ], [ %.pn48.pn.pn.pn.pn.pn.pn114.ph, %.sink.split165 ]
  call void @__cxa_free_exception(ptr %i.cg) #26
  br label %bb.aq

bb.ap:                                            ; preds = %bb.y
  ret void

bb.aq:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97, %bb.ao, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76, %bb.x, %bb.q
  %.pn48.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn48.pn.pn.pn.pn.pn.pn114, %bb.ao ], [ %.pn48.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97 ], [ %.pn.pn.pn.pn.pn.pn.pn102, %bb.x ], [ %.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76 ], [ %i.ae, %bb.q ], [ %.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74 ], [ %.pn48.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95 ]
  %i.ed = load ptr, ptr %i.z, align 8, !tbaa !135 ; 3 uses
  %.not.i.i.i98 = icmp eq ptr %i.ed, null
  br i1 %.not.i.i.i98, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 1384
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !136
  %i.eg = ptrtoint ptr %i.ef to i64
  %i.eh = ptrtoint ptr %i.ed to i64
  %i.ei = sub i64 %i.eg, %i.eh
  call void @_ZdlPvm(ptr noundef nonnull %i.ed, i64 noundef %i.ei) #25
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

_ZNSt6vectorIdSaIdEED2Ev.exit:                    ; preds = %bb.aq, %bb.ar
  %i.ej = load ptr, ptr %i.y, align 8, !tbaa !137 ; 3 uses
  %.not.i.i.i99 = icmp eq ptr %i.ej, null
  br i1 %.not.i.i.i99, label %_ZNSt6vectorIxSaIxEED2Ev.exit, label %bb.as

bb.as:                                            ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 1360
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !138
  %i.em = ptrtoint ptr %i.el to i64
  %i.en = ptrtoint ptr %i.ej to i64
  %i.eo = sub i64 %i.em, %i.en
  call void @_ZdlPvm(ptr noundef nonnull %i.ej, i64 noundef %i.eo) #25
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit

_ZNSt6vectorIxSaIxEED2Ev.exit:                    ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit, %bb.as
  call void @_ZNSt6vectorIS_IdSaIdEESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.b) #26
  br label %.body

.body:                                            ; preds = %bb.p, %bb.d, %bb.c, %_ZNSt6vectorIxSaIxEED2Ev.exit
  %.pn48.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn48.pn.pn.pn.pn.pn.pn.pn, %_ZNSt6vectorIxSaIxEED2Ev.exit ], [ %i.ad, %bb.p ], [ %i.s, %bb.d ], [ %i.s, %bb.c ]
  call void @_ZN6casadi16FunctionInternalD2Ev(ptr noundef nonnull align 8 dead_on_return(1312) dereferenceable(1312) %0) #26
  resume { ptr, i32 } %.pn48.pn.pn.pn.pn.pn.pn.pn.pn

bb.at:                                            ; preds = %bb.ah, %bb.o
  unreachable
}

declare void @_ZN6casadi16FunctionInternalC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(1312), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #1

; Function Attrs: mustprogress uwtable
define void @_ZN6casadi21BlazingSplineFunction20init_derived_membersEv(ptr noundef nonnull align 8 dereferenceable(1416) initializes((1392, 1400)) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1392 ; 2 uses
  store i64 1, ptr %i.a, align 8, !tbaa !92
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1320 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !128  ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1328
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !128  ; 3 uses
  %.not5457 = icmp eq ptr %i.c, %i.e
  br i1 %.not5457, label %.thread84, label %.lr.ph

.thread84:                                        ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1400
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit

.preheader56.lr.ph:                               ; preds = %.lr.ph
  store i64 %i.u, ptr %i.a, align 8, !tbaa !92
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1400
  %i.h = ptrtoint ptr %i.e to i64
  %i.i = ptrtoint ptr %i.c to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = sdiv i64 %i.j, 24                        ; 4 uses
  %umax = tail call i64 @llvm.umax.i64(i64 %i.k, i64 1) ; 4 uses
  %xtraiter = and i64 %umax, 1
  %1 = icmp ult i64 %i.k, 2
  %unroll_iter = and i64 %umax, -2
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod98 = trunc i64 %umax to i1
  br label %.preheader56

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.051.058 = phi ptr [ %i.v, %.lr.ph ], [ %i.c, %bb.a ] ; 3 uses
  %i.l = phi i64 [ %i.u, %.lr.ph ], [ 1, %bb.a ]
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.051.058, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !139
  %i.o = load ptr, ptr %.sroa.051.058, align 8, !tbaa !135
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = ashr exact i64 %i.r, 3
  %i.t = add nsw i64 %i.s, -4
  %i.u = mul i64 %i.t, %i.l                       ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.051.058, i64 24 ; 2 uses
  %.not54 = icmp eq ptr %i.v, %i.e
  br i1 %.not54, label %.preheader56.lr.ph, label %.lr.ph

.preheader56:                                     ; preds = %.preheader56.lr.ph, %bb.c
  %i.w = phi i64 [ 0, %.preheader56.lr.ph ], [ %i.ak, %bb.c ]
  %.062 = phi i64 [ 0, %.preheader56.lr.ph ], [ %i.al, %bb.c ] ; 4 uses
  br i1 %1, label %.epil.preheader, label %.preheader56.new

bb.b:                                             ; preds = %bb.c
  store i64 %i.ak, ptr %i.g, align 8, !tbaa !93
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 1408 ; 2 uses
  store i64 0, ptr %i.x, align 8, !tbaa !94
  %umax76 = tail call i64 @llvm.umax.i64(i64 %i.k, i64 1) ; 5 uses
  %xtraiter101 = and i64 %umax76, 1
  %2 = icmp ult i64 %i.k, 2
  %unroll_iter106 = and i64 %umax76, -2
  %lcmp.mod102.not = icmp eq i64 %xtraiter101, 0
  %lcmp.mod105 = trunc i64 %umax76 to i1
  br label %.preheader55

.unr-lcssa:                                       ; preds = %.preheader56.new
  br i1 %lcmp.mod.not, label %bb.c, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %.preheader56
  %.03361.epil.init = phi i64 [ 0, %.preheader56 ], [ %i.bl, %.unr-lcssa ] ; 2 uses
  %.03460.epil.init = phi i64 [ 1, %.preheader56 ], [ %i.bk, %.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod98)
  %i.y = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %.03361.epil.init ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !139
  %i.ab = load ptr, ptr %i.y, align 8, !tbaa !135
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = sub i64 %i.ac, %i.ad
  %i.af = ashr exact i64 %i.ae, 3
  %i.ag = icmp eq i64 %.03361.epil.init, %.062
  %i.ah = select i1 %i.ag, i64 -5, i64 -4
  %i.ai = add nsw i64 %i.ah, %i.af
  %i.aj = mul i64 %i.ai, %.03460.epil.init
  br label %bb.c

bb.c:                                             ; preds = %.unr-lcssa, %.epil.preheader
  %.lcssa94 = phi i64 [ %i.bk, %.unr-lcssa ], [ %i.aj, %.epil.preheader ]
  %i.ak = add nsw i64 %i.w, %.lcssa94             ; 2 uses
  %i.al = add nuw nsw i64 %.062, 1                ; 2 uses
  %exitcond75.not = icmp eq i64 %i.al, %umax
  br i1 %exitcond75.not, label %bb.b, label %.preheader56, !llvm.loop !140

.preheader56.new:                                 ; preds = %.preheader56, %.preheader56.new
  %.03361 = phi i64 [ %i.bl, %.preheader56.new ], [ 0, %.preheader56 ] ; 4 uses
  %.03460 = phi i64 [ %i.bk, %.preheader56.new ], [ 1, %.preheader56 ]
  %niter = phi i64 [ %niter.next.1, %.preheader56.new ], [ 0, %.preheader56 ]
  %i.am = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %.03361 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !139
  %i.ap = load ptr, ptr %i.am, align 8, !tbaa !135
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = sub i64 %i.aq, %i.ar
  %i.at = ashr exact i64 %i.as, 3
  %i.au = icmp eq i64 %.03361, %.062
  %i.av = select i1 %i.au, i64 -5, i64 -4
  %i.aw = add nsw i64 %i.av, %i.at
  %i.ax = mul i64 %i.aw, %.03460
  %i.ay = or disjoint i64 %.03361, 1              ; 2 uses
  %i.az = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %i.ay ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !139
  %i.bc = load ptr, ptr %i.az, align 8, !tbaa !135
  %i.bd = ptrtoint ptr %i.bb to i64
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = sub i64 %i.bd, %i.be
  %i.bg = ashr exact i64 %i.bf, 3
  %i.bh = icmp eq i64 %i.ay, %.062
  %i.bi = select i1 %i.bh, i64 -5, i64 -4
  %i.bj = add nsw i64 %i.bi, %i.bg
  %i.bk = mul i64 %i.bj, %i.ax                    ; 3 uses
  %i.bl = add nuw nsw i64 %.03361, 2              ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.unr-lcssa, label %.preheader56.new, !llvm.loop !141

.preheader55:                                     ; preds = %bb.b, %bb.d
  %i.bm = phi i64 [ %i.dk, %bb.d ], [ 0, %bb.b ]
  %.03269 = phi i64 [ %i.bq, %bb.d ], [ 0, %bb.b ] ; 5 uses
  br label %.preheader

_ZNSt6vectorIxSaIxEED2Ev.exit:                    ; preds = %bb.d, %.thread84
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 1344
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 1368
  tail call void @_ZN6casadi11Interpolant10stack_gridERKSt6vectorIS1_IdSaIdEESaIS3_EERS1_IxSaIxEERS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.bn, ptr noundef nonnull align 8 dereferenceable(24) %i.bo)
  ret void

.preheader:                                       ; preds = %.preheader55, %bb.g
  %i.bp = phi i64 [ %i.bm, %.preheader55 ], [ %i.dk, %bb.g ] ; 2 uses
  %.03168 = phi i64 [ 0, %.preheader55 ], [ %i.dl, %bb.g ] ; 5 uses
  br i1 %2, label %.epil.preheader100, label %.preheader.new

bb.d:                                             ; preds = %bb.g
  %i.bq = add nuw nsw i64 %.03269, 1              ; 2 uses
  %exitcond79.not = icmp eq i64 %i.bq, %umax76
  br i1 %exitcond79.not, label %_ZNSt6vectorIxSaIxEED2Ev.exit, label %.preheader55, !llvm.loop !142

.unr-lcssa99:                                     ; preds = %.preheader.new
  br i1 %lcmp.mod102.not, label %bb.e, label %.epil.preheader100

.epil.preheader100:                               ; preds = %.unr-lcssa99, %.preheader
  %.02967.epil.init = phi i64 [ 0, %.preheader ], [ %i.di, %.unr-lcssa99 ] ; 3 uses
  %.03066.epil.init = phi i64 [ 1, %.preheader ], [ %i.dh, %.unr-lcssa99 ]
  tail call void @llvm.assume(i1 %lcmp.mod105)
  %i.br = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %.02967.epil.init ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !139
  %i.bu = load ptr, ptr %i.br, align 8, !tbaa !135
  %i.bv = ptrtoint ptr %i.bt to i64
  %i.bw = ptrtoint ptr %i.bu to i64
  %i.bx = sub i64 %i.bv, %i.bw
  %i.by = ashr exact i64 %i.bx, 3
  %i.bz = icmp eq i64 %.02967.epil.init, %.03269
  %i.ca = icmp eq i64 %.02967.epil.init, %.03168
  %.neg35.epil = sext i1 %i.ca to i64
  %i.cb = select i1 %i.bz, i64 -5, i64 -4
  %i.cc = add nsw i64 %i.cb, %.neg35.epil
  %i.cd = add nsw i64 %i.cc, %i.by
  %i.ce = mul i64 %i.cd, %.03066.epil.init
  br label %bb.e

bb.e:                                             ; preds = %.unr-lcssa99, %.epil.preheader100
  %.lcssa = phi i64 [ %i.dh, %.unr-lcssa99 ], [ %i.ce, %.epil.preheader100 ]
  %.not = icmp samesign ult i64 %.03168, %.03269
  br i1 %.not, label %bb.g, label %bb.f

.preheader.new:                                   ; preds = %.preheader, %.preheader.new
  %.02967 = phi i64 [ %i.di, %.preheader.new ], [ 0, %.preheader ] ; 5 uses
  %.03066 = phi i64 [ %i.dh, %.preheader.new ], [ 1, %.preheader ]
  %niter107 = phi i64 [ %niter107.next.1, %.preheader.new ], [ 0, %.preheader ]
  %i.cf = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %.02967 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !139
  %i.ci = load ptr, ptr %i.cf, align 8, !tbaa !135
  %i.cj = ptrtoint ptr %i.ch to i64
  %i.ck = ptrtoint ptr %i.ci to i64
  %i.cl = sub i64 %i.cj, %i.ck
  %i.cm = ashr exact i64 %i.cl, 3
  %i.cn = icmp eq i64 %.02967, %.03269
  %i.co = icmp eq i64 %.02967, %.03168
  %.neg35 = sext i1 %i.co to i64
  %i.cp = select i1 %i.cn, i64 -5, i64 -4
  %i.cq = add nsw i64 %i.cp, %.neg35
  %i.cr = add nsw i64 %i.cq, %i.cm
  %i.cs = mul i64 %i.cr, %.03066
  %i.ct = or disjoint i64 %.02967, 1              ; 3 uses
  %i.cu = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %i.ct ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !139
  %i.cx = load ptr, ptr %i.cu, align 8, !tbaa !135
  %i.cy = ptrtoint ptr %i.cw to i64
  %i.cz = ptrtoint ptr %i.cx to i64
  %i.da = sub i64 %i.cy, %i.cz
  %i.db = ashr exact i64 %i.da, 3
  %i.dc = icmp eq i64 %i.ct, %.03269
  %i.dd = icmp eq i64 %i.ct, %.03168
  %.neg35.1 = sext i1 %i.dd to i64
  %i.de = select i1 %i.dc, i64 -5, i64 -4
  %i.df = add nsw i64 %i.de, %.neg35.1
  %i.dg = add nsw i64 %i.df, %i.db
  %i.dh = mul i64 %i.dg, %i.cs                    ; 3 uses
  %i.di = add nuw nsw i64 %.02967, 2              ; 2 uses
  %niter107.next.1 = add i64 %niter107, 2         ; 2 uses
  %niter107.ncmp.1 = icmp eq i64 %niter107.next.1, %unroll_iter106
  br i1 %niter107.ncmp.1, label %.unr-lcssa99, label %.preheader.new, !llvm.loop !143

bb.f:                                             ; preds = %bb.e
  %i.dj = add nsw i64 %i.bp, %.lcssa              ; 2 uses
  store i64 %i.dj, ptr %i.x, align 8, !tbaa !94
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.dk = phi i64 [ %i.dj, %bb.f ], [ %i.bp, %bb.e ] ; 2 uses
  %i.dl = add nuw nsw i64 %.03168, 1              ; 2 uses
  %exitcond78.not = icmp eq i64 %i.dl, %umax76
  br i1 %exitcond78.not, label %bb.d, label %.preheader, !llvm.loop !144
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIS_IdSaIdEESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !91     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !90   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt6vectorIdSaIdEES2_EvT_S4_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.j, %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !135 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !136
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.i) #25
  br label %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i

_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i:    ; preds = %bb.b, %.lr.ph.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24 ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt6vectorIdSaIdEES2_EvT_S4_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !145

_ZSt8_DestroyIPSt6vectorIdSaIdEES2_EvT_S4_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !91
  br label %_ZSt8_DestroyIPSt6vectorIdSaIdEES2_EvT_S4_RSaIT0_E.exit

_ZSt8_DestroyIPSt6vectorIdSaIdEES2_EvT_S4_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIdSaIdEES2_EvT_S4_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.k = phi ptr [ %.pr, %_ZSt8_DestroyIPSt6vectorIdSaIdEES2_EvT_S4_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.k, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt6vectorIdSaIdEESaIS2_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIdSaIdEES2_EvT_S4_RSaIT0_E.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !127
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #25
  br label %_ZNSt12_Vector_baseISt6vectorIdSaIdEESaIS2_EED2Ev.exit

_ZNSt12_Vector_baseISt6vectorIdSaIdEESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIdSaIdEES2_EvT_S4_RSaIT0_E.exit, %bb.c
  ret void
}

; Function Attrs: nounwind
declare void @_ZN6casadi16FunctionInternalD2Ev(ptr noundef nonnull align 8 dead_on_return(1312) dereferenceable(1312)) unnamed_addr #10

declare void @_ZN6casadi11Interpolant10stack_gridERKSt6vectorIS1_IdSaIdEESaIS3_EERS1_IxSaIxEERS3_(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6casadi7OptionsD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !146
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6casadi7Options5EntryEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE8_M_eraseEPSt13_Rb_tree_nodeISB_E(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef %i.c)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi7Options5EntryESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #28
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi7Options5EntryESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev.exit: ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !147    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPKN6casadi7OptionsESaIS3_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi7Options5EntryESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !150
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %i.f to i64
  %i.k = sub i64 %i.i, %i.j
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.k) #25
  br label %_ZNSt6vectorIPKN6casadi7OptionsESaIS3_EED2Ev.exit

_ZNSt6vectorIPKN6casadi7OptionsESaIS3_EED2Ev.exit: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi7Options5EntryESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev.exit, %bb.c
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #13

; Function Attrs: mustprogress uwtable
define void @_ZN6casadi21BlazingSplineFunction4initERKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11GenericTypeESt4lessIS7_ESaISt4pairIKS7_S8_EEE(ptr noundef nonnull align 8 dereferenceable(1416) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN6casadi16FunctionInternal4initERKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11GenericTypeESt4lessIS7_ESaISt4pairIKS7_S8_EEE(ptr noundef nonnull align 8 dereferenceable(1312) %0, ptr noundef nonnull align 8 dereferenceable(48) %1)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1320
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1328
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !90
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !91
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 24                  ; 2 uses
  %i.i = shl nsw i64 %i.h, 2
  %i.j = or disjoint i64 %i.i, 2
  tail call void @_ZN6casadi16FunctionInternal8alloc_iwEmb(ptr noundef nonnull align 8 dereferenceable(1312) %0, i64 noundef %i.j, i1 noundef zeroext false)
  %i.k = add nsw i64 %i.h, 1
  tail call void @_ZN6casadi16FunctionInternal7alloc_wEmb(ptr noundef nonnull align 8 dereferenceable(1312) %0, i64 noundef %i.k, i1 noundef zeroext false)
  ret void
}

declare void @_ZN6casadi16FunctionInternal4initERKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11GenericTypeESt4lessIS7_ESaISt4pairIKS7_S8_EEE(ptr noundef nonnull align 8 dereferenceable(1312), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #1

declare void @_ZN6casadi16FunctionInternal8alloc_iwEmb(ptr noundef nonnull align 8 dereferenceable(1312), i64 noundef, i1 noundef zeroext) local_unnamed_addr #1

declare void @_ZN6casadi16FunctionInternal7alloc_wEmb(ptr noundef nonnull align 8 dereferenceable(1312), i64 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6casadi21BlazingSplineFunctionD2Ev(ptr noundef nonnull align 8 dead_on_return(1416) dereferenceable(1416) initializes((0, 8)) %0) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 928) (i8, ptr @_ZTVN6casadi21BlazingSplineFunctionE, i64 16), ptr %0, align 8, !tbaa !110
  invoke void @_ZN6casadi13ProtoFunction9clear_memEv(ptr noundef nonnull align 8 dereferenceable(168) %0)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1368
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !135  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1384
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !136
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #25
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

_ZNSt6vectorIdSaIdEED2Ev.exit:                    ; preds = %bb.b, %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1344
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !137  ; 3 uses
  %.not.i.i.i1 = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorIxSaIxEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1360
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !138
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #25
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit

_ZNSt6vectorIxSaIxEED2Ev.exit:                    ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit, %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1320 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !91   ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1328
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !90   ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.p, %i.r
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt6vectorIdSaIdEES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit, %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.y, %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i ], [ %i.p, %_ZNSt6vectorIxSaIxEED2Ev.exit ] ; 3 uses
  %i.s = load ptr, ptr %.05.i.i.i, align 8, !tbaa !135 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !136
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.s to i64
  %i.x = sub i64 %i.v, %i.w
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.x) #25
  br label %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i:  ; preds = %bb.e, %.lr.ph.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i2 = icmp eq ptr %i.y, %i.r
  br i1 %.not.i.i.i2, label %_ZSt8_DestroyIPSt6vectorIdSaIdEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !145

_ZSt8_DestroyIPSt6vectorIdSaIdEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.o, align 8, !tbaa !91
  br label %_ZSt8_DestroyIPSt6vectorIdSaIdEES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt6vectorIdSaIdEES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt6vectorIdSaIdEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorIxSaIxEED2Ev.exit
  %i.z = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt6vectorIdSaIdEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %i.p, %_ZNSt6vectorIxSaIxEED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIS_IdSaIdEESaIS1_EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIdSaIdEES2_EvT_S4_RSaIT0_E.exit.i
end_hunk_0
begin_hunk_1_@_ZN6casadi3strImEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_:bb.a
  %i.aa = getelementptr inbounds i8, ptr %2, i64 %i.z
  store ptr %i.x, ptr %i.aa, align 8, !tbaa !110
  %i.ab = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.ab, ptr %i.a, align 8, !tbaa !110
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ac, align 8, !tbaa !110
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !98 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 2 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.ah = load i64, ptr %i.af, align 8, !tbaa !99
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ai) #25
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ac, align 8, !tbaa !110
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.aj) #26
  %i.ak = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.ak, ptr %2, align 8, !tbaa !110
  %i.al = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.am = getelementptr i8, ptr %i.ak, i64 -24
  %i.an = load i64, ptr %i.am, align 8
  %i.ao = getelementptr inbounds i8, ptr %2, i64 %i.an
  store ptr %i.al, ptr %i.ao, align 8, !tbaa !110
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.ap, align 8, !tbaa !273
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.aq) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret void

bb.e:                                             ; preds = %bb.a
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.ar, %bb.e ], [ %i.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.q, %bb.c ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  resume { ptr, i32 } %eh.lpad-body
}

declare noundef nonnull align 8 dereferenceable(3289) ptr @_ZN6casadi13CodeGeneratorlsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(3289), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #7 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !100  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !100
  %i.e = sub i64 4611686018427387903, %i.d
  %i.f = icmp ult i64 %i.e, %i.b
  br i1 %i.f, label %bb.b, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.50) #27
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit: ; preds = %bb.a
  %i.g = load ptr, ptr %2, align 8, !tbaa !98
  %i.h = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %i.g, i64 noundef %i.b) ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !101
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !98   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 5 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !100  ; 3 uses
  %i.o = icmp ult i64 %i.n, 16
  tail call void @llvm.assume(i1 %i.o)
  %i.p = add nuw nsw i64 %i.n, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.i, ptr noundef nonnull align 8 dereferenceable(1) %i.k, i64 %i.p, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit
  store ptr %i.j, ptr %0, align 8, !tbaa !98
  %i.q = load i64, ptr %i.k, align 8, !tbaa !99
  store i64 %i.q, ptr %i.i, align 8, !tbaa !99
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !100
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.r = phi i64 [ %i.n, %bb.c ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ]
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.r, ptr %i.t, align 8, !tbaa !100
  store ptr %i.k, ptr %i.h, align 8, !tbaa !98
  store i64 0, ptr %i.s, align 8, !tbaa !100
  store i8 0, ptr %i.k, align 8, !tbaa !99
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZNK6casadi21BlazingSplineFunction12has_jacobianEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1416) %0) unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1312
  %i.b = load i64, ptr %i.a, align 8, !tbaa !8
  %i.c = icmp slt i64 %i.b, 2
  ret i1 %i.c
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6casadi21BlazingSplineFunction12get_jacobianERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIS6_SaIS6_EESD_RKSt3mapIS6_NS_11GenericTypeESt4lessIS6_ESaISt4pairIS7_SF_EEE(ptr dead_on_unwind noalias writable sret(%"class.casadi::Function") align 8 %0, ptr noundef nonnull align 8 dereferenceable(1416) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(48) %5) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %6 = alloca %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, casadi::GenericType>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, casadi::GenericType>>, std::less<std::__cxx11::basic_string<char>>>::_Alloc_node", align 8 ; 4 uses
  %7 = alloca %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, casadi::GenericType>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, casadi::GenericType>>, std::less<std::__cxx11::basic_string<char>>>::_Alloc_node", align 8 ; 4 uses
  %8 = alloca %"class.casadi::Sparsity", align 8  ; 7 uses
  %9 = alloca %"class.casadi::Sparsity", align 8  ; 7 uses
  %10 = alloca %"class.casadi::MX", align 8       ; 11 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %12 = alloca %"class.casadi::MX", align 8       ; 10 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %14 = alloca %"class.std::vector.34", align 8   ; 11 uses
  %15 = alloca %"class.std::vector.34", align 8   ; 13 uses
  %16 = alloca %"class.std::vector.119", align 8  ; 12 uses
  %17 = alloca %"class.std::vector.101", align 8  ; 12 uses
  %18 = alloca %"class.std::vector.124", align 8  ; 25 uses
  %19 = alloca %"class.casadi::MX", align 8       ; 8 uses
  %20 = alloca %"class.casadi::MX", align 8       ; 8 uses
  %21 = alloca %"class.std::map", align 8         ; 17 uses
  %22 = alloca %"class.std::map", align 8         ; 10 uses
  %23 = alloca %"class.std::map", align 8         ; 10 uses
  %24 = alloca %"class.std::map", align 8         ; 8 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %26 = alloca %"class.casadi::GenericType", align 8 ; 7 uses
  %27 = alloca %"class.casadi::Function", align 8 ; 7 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %29 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %30 = alloca %"class.casadi::Function", align 8 ; 11 uses
  %31 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %32 = alloca %"class.casadi::Function", align 8 ; 7 uses
  %33 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %34 = alloca %"class.std::vector.124", align 8  ; 10 uses
  %35 = alloca %"class.std::vector.124", align 8  ; 13 uses
  %36 = alloca [3 x %"class.casadi::MX"], align 8 ; 16 uses
  %37 = alloca [3 x %"class.casadi::MX"], align 8 ; 15 uses
  %38 = alloca [2 x %"class.casadi::MX"], align 8 ; 12 uses
  %39 = alloca %"class.std::map", align 8         ; 14 uses
  %40 = alloca [1 x %"struct.std::pair"], align 8 ; 9 uses
  %i.a = alloca i8, align 1                       ; 5 uses
  %41 = alloca %"class.casadi::MX", align 8       ; 10 uses
  %42 = alloca %"class.std::vector.34", align 8   ; 20 uses
  %43 = alloca %"class.std::vector.39", align 8   ; 20 uses
  %44 = alloca %"class.std::vector.29", align 8   ; 15 uses
  %45 = alloca %"class.std::vector.34", align 8   ; 14 uses
  %46 = alloca %"class.casadi::MX", align 8       ; 7 uses
  %47 = alloca %"class.std::vector.34", align 8   ; 9 uses
  %48 = alloca %"class.casadi::MX", align 8       ; 7 uses
  %49 = alloca %"class.std::vector.34", align 8   ; 9 uses
  %50 = alloca %"class.casadi::MX", align 8       ; 7 uses
  %51 = alloca %"class.std::vector.34", align 8   ; 9 uses
  %52 = alloca %"class.casadi::MX", align 8       ; 7 uses
  %53 = alloca %"class.std::vector.34", align 8   ; 9 uses
  %54 = alloca %"class.casadi::MX", align 8       ; 7 uses
  %55 = alloca %"class.std::vector.34", align 8   ; 9 uses
  %56 = alloca %"class.casadi::MX", align 8       ; 7 uses
  %57 = alloca %"class.std::vector.34", align 8   ; 9 uses
  %58 = alloca %"class.casadi::MX", align 8       ; 7 uses
  %59 = alloca %"class.std::vector.34", align 8   ; 14 uses
  %60 = alloca %"class.std::vector.39", align 8   ; 14 uses
  %61 = alloca %"class.std::vector.29", align 8   ; 12 uses
  %62 = alloca %"class.std::vector.34", align 8   ; 11 uses
  %63 = alloca %"class.casadi::MX", align 8       ; 7 uses
  %64 = alloca %"class.std::vector.34", align 8   ; 9 uses
  %65 = alloca %"class.casadi::MX", align 8       ; 7 uses
  %66 = alloca %"class.std::vector.34", align 8   ; 9 uses
  %67 = alloca %"class.casadi::MX", align 8       ; 7 uses
  %68 = alloca %"class.std::vector.34", align 8   ; 9 uses
  %69 = alloca %"class.casadi::MX", align 8       ; 7 uses
  %70 = alloca %"class.std::vector.34", align 8   ; 10 uses
  %71 = alloca %"class.std::vector.39", align 8   ; 10 uses
  %72 = alloca %"class.std::vector.29", align 8   ; 10 uses
  %73 = alloca %"class.std::vector.34", align 8   ; 9 uses
  %74 = alloca %"class.casadi::MX", align 8       ; 7 uses
  %75 = alloca %"class.std::vector.34", align 8   ; 9 uses
  %76 = alloca %"class.std::vector.124", align 8  ; 11 uses
  %77 = alloca %"class.std::vector.124", align 8  ; 13 uses
  %78 = alloca [4 x %"class.casadi::MX"], align 8 ; 19 uses
  %79 = alloca [5 x %"class.casadi::MX"], align 8 ; 21 uses
  %80 = alloca [6 x %"class.casadi::MX"], align 8 ; 24 uses
  %81 = alloca %"class.std::map", align 8         ; 14 uses
  %82 = alloca [1 x %"struct.std::pair"], align 8 ; 9 uses
  %i.b = alloca i8, align 1                       ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 1320 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 1328
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !90   ; 3 uses
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !91   ; 3 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h                       ; 7 uses
  %i.j = sdiv i64 %i.i, 24                        ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  %i.k = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 6 uses
  store ptr %i.k, ptr %11, align 8, !tbaa !101
  store i8 67, ptr %i.k, align 8, !tbaa !99
  %i.l = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 1, ptr %i.l, align 8, !tbaa !100
  %i.m = getelementptr inbounds nuw i8, ptr %11, i64 17
  store i8 0, ptr %i.m, align 1, !tbaa !99
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 1392 ; 4 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !92
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26, !noalias !275
  invoke void @_ZN6casadi8Sparsity5denseExx(ptr dead_on_unwind nonnull writable sret(%"class.casadi::Sparsity") align 8 %9, i64 noundef %i.o, i64 noundef 1)
          to label %.noexc294 unwind label %bb.l

.noexc294:                                        ; preds = %._crit_edge.i.i
  invoke void @_ZN6casadi2MX4_symERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_8SparsityE(ptr dead_on_unwind nonnull writable sret(%"class.casadi::MX") align 8 %10, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %_ZN6casadi13GenericMatrixINS_2MXEE3symERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_8SparsityE.exit.i unwind label %bb.b

_ZN6casadi13GenericMatrixINS_2MXEE3symERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_8SparsityE.exit.i: ; preds = %.noexc294
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE10count_downEv(ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %bb.d unwind label %bb.a

bb.a:                                             ; preds = %_ZN6casadi13GenericMatrixINS_2MXEE3symERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_8SparsityE.exit.i
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  call void @__clang_call_terminate(ptr %i.q) #28
  unreachable

bb.b:                                             ; preds = %.noexc294
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE10count_downEv(ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit4.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  call void @__clang_call_terminate(ptr %i.t) #28
  unreachable

_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit4.i: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26, !noalias !275
  br label %.body

bb.d:                                             ; preds = %_ZN6casadi13GenericMatrixINS_2MXEE3symERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_8SparsityE.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26, !noalias !275
  %i.u = load ptr, ptr %11, align 8, !tbaa !98    ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.k
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.w = load i64, ptr %i.k, align 8, !tbaa !99
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.x) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26
  %i.y = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 6 uses
  store ptr %i.y, ptr %13, align 8, !tbaa !101
  store i8 120, ptr %i.y, align 8, !tbaa !99
  %i.z = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 1, ptr %i.z, align 8, !tbaa !100
  %i.aa = getelementptr inbounds nuw i8, ptr %13, i64 17
  store i8 0, ptr %i.aa, align 1, !tbaa !99
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26, !noalias !278
  invoke void @_ZN6casadi8Sparsity5denseExx(ptr dead_on_unwind nonnull writable sret(%"class.casadi::Sparsity") align 8 %8, i64 noundef %i.j, i64 noundef 1)
          to label %.noexc301 unwind label %bb.m

.noexc301:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  invoke void @_ZN6casadi2MX4_symERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_8SparsityE(ptr dead_on_unwind nonnull writable sret(%"class.casadi::MX") align 8 %12, ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %_ZN6casadi13GenericMatrixINS_2MXEE3symERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_8SparsityE.exit.i300 unwind label %bb.f

_ZN6casadi13GenericMatrixINS_2MXEE3symERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_8SparsityE.exit.i300: ; preds = %.noexc301
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE10count_downEv(ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.h unwind label %bb.e

bb.e:                                             ; preds = %_ZN6casadi13GenericMatrixINS_2MXEE3symERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_8SparsityE.exit.i300
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  call void @__clang_call_terminate(ptr %i.ac) #28
  unreachable

bb.f:                                             ; preds = %.noexc301
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE10count_downEv(ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit4.i299 unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = landingpad { ptr, i32 }
          catch ptr null
  %i.af = extractvalue { ptr, i32 } %i.ae, 0
  call void @__clang_call_terminate(ptr %i.af) #28
  unreachable

_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit4.i299: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26, !noalias !278
  br label %.body302

bb.h:                                             ; preds = %_ZN6casadi13GenericMatrixINS_2MXEE3symERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_8SparsityE.exit.i300
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26, !noalias !278
  %i.ag = load ptr, ptr %13, align 8, !tbaa !98   ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %i.y
  br i1 %i.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit307, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i305

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i305: ; preds = %bb.h
  %i.ai = load i64, ptr %i.y, align 8, !tbaa !99
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.aj) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit307

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit307: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i305
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #26
  %i.ak = add nsw i64 %i.j, 1                     ; 4 uses
  %i.al = icmp ugt i64 %i.ak, 1152921504606846975
  br i1 %i.al, label %bb.i, label %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit307
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.55) #27
          to label %.noexc308 unwind label %bb.n

.noexc308:                                        ; preds = %bb.i
  unreachable

_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit307
  %.not.i.i.i.i = icmp ne i64 %i.ak, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.am = shl nuw nsw i64 %i.ak, 3
  %i.an = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.am) #24
          to label %.noexc309 unwind label %bb.n  ; 8 uses

.noexc309:                                        ; preds = %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i
  store ptr %i.an, ptr %14, align 8, !tbaa !137
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.ak
  %i.ap = getelementptr inbounds nuw i8, ptr %14, i64 16
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !138
  store i64 0, ptr %i.an, align 8, !tbaa !151
  %i.aq = getelementptr i8, ptr %i.an, i64 8      ; 3 uses
  %i.ar = icmp eq ptr %i.e, %i.f
  br i1 %i.ar, label %bb.j, label %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc309
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.j, 3   ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 8 %i.aq, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !151
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.idx.i.i.i.i.i.i.i
  br label %bb.j

bb.j:                                             ; preds = %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc309
  %.0.i.i.i.i.i = phi ptr [ %i.as, %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.aq, %.noexc309 ]
  %i.at = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr %.0.i.i.i.i.i, ptr %i.at, align 8, !tbaa !152
  store i64 1, ptr %i.an, align 8, !tbaa !151
  %.not = icmp eq ptr %i.e, %i.f
  br i1 %.not, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.j
  %i.au = load ptr, ptr %i.c, align 8, !tbaa !91  ; 3 uses
  %umax = call i64 @llvm.umax.i64(i64 %i.j, i64 1) ; 3 uses
  %xtraiter = and i64 %umax, 1
  %83 = icmp ult i64 %i.j, 2
  br i1 %83, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %umax, -2
  br label %bb.o

.unr-lcssa:                                       ; preds = %bb.o
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %bb.k, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %.lr.ph
  %.0180719.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.dd, %.unr-lcssa ] ; 2 uses
  %lcmp.mod872 = trunc i64 %umax to i1
  call void @llvm.assume(i1 %lcmp.mod872)
  %i.av = getelementptr inbounds nuw [24 x i8], ptr %i.au, i64 %.0180719.epil.init ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !139
  %i.ay = load ptr, ptr %i.av, align 8, !tbaa !135
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = ashr exact i64 %i.bb, 3
  %i.bd = add nsw i64 %i.bc, -4
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %.0180719.epil.init
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store i64 %i.bd, ptr %i.bf, align 8, !tbaa !151
  br label %bb.k

bb.k:                                             ; preds = %.unr-lcssa, %.epil.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #26
  %i.bg = shl nuw nsw i64 %i.j, 3                 ; 3 uses
  %i.bh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bg) #24
          to label %.noexc314 unwind label %bb.q  ; 5 uses

.noexc314:                                        ; preds = %bb.k
  store ptr %i.bh, ptr %15, align 8, !tbaa !137
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %i.j
  %i.bj = getelementptr inbounds nuw i8, ptr %15, i64 16
  store ptr %i.bi, ptr %i.bj, align 8, !tbaa !138
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bg ; 2 uses
  %i.bl = add nsw i64 %i.bg, -8                   ; 2 uses
  %i.bm = lshr exact i64 %i.bl, 3
  %i.bn = add nuw nsw i64 %i.bm, 1
  %xtraiter873 = and i64 %i.bn, 7                 ; 2 uses
  %lcmp.mod874.not = icmp eq i64 %xtraiter873, 0
  br i1 %lcmp.mod874.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.prol:                    ; preds = %.noexc314, %.lr.ph.i.i.i.i.i.i.i.i.i.prol
  %.06.i.i.i.i.i.i.i.i.i.prol = phi ptr [ %i.bo, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ], [ %i.bh, %.noexc314 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ], [ 0, %.noexc314 ]
  store i64 3, ptr %.06.i.i.i.i.i.i.i.i.i.prol, align 8, !tbaa !151
  %i.bo = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i.prol, i64 8 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter873
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !281

.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol, %.noexc314
  %.06.i.i.i.i.i.i.i.i.i.unr = phi ptr [ %i.bh, %.noexc314 ], [ %i.bo, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ]
  %i.bp = icmp ult i64 %i.bl, 56
  br i1 %i.bp, label %.unr-lcssa875, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i.i.i = phi ptr [ %i.bx, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.06.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 9 uses
  store i64 3, ptr %.06.i.i.i.i.i.i.i.i.i, align 8, !tbaa !151
  %i.bq = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 8
  store i64 3, ptr %i.bq, align 8, !tbaa !151
  %i.br = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 16
  store i64 3, ptr %i.br, align 8, !tbaa !151
  %i.bs = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 24
  store i64 3, ptr %i.bs, align 8, !tbaa !151
  %i.bt = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 32
  store i64 3, ptr %i.bt, align 8, !tbaa !151
  %i.bu = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 40
  store i64 3, ptr %i.bu, align 8, !tbaa !151
  %i.bv = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 48
  store i64 3, ptr %i.bv, align 8, !tbaa !151
  %i.bw = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 56
  store i64 3, ptr %i.bw, align 8, !tbaa !151
  %i.bx = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.7 = icmp eq ptr %i.bx, %i.bk
  br i1 %.not.i.i.i.i.i.i.i.i.i.7, label %.unr-lcssa875, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !283

bb.l:                                             ; preds = %._crit_edge.i.i
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit4.i, %bb.l
  %eh.lpad-body = phi { ptr, i32 } [ %i.by, %bb.l ], [ %i.r, %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit4.i ]
  %i.bz = load ptr, ptr %11, align 8, !tbaa !98   ; 2 uses
  %i.ca = icmp eq ptr %i.bz, %i.k
  br i1 %i.ca, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit317, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i315

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i315: ; preds = %.body
  %i.cb = load i64, ptr %i.k, align 8, !tbaa !99
  %i.cc = add i64 %i.cb, 1
  call void @_ZdlPvm(ptr noundef %i.bz, i64 noundef %i.cc) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit317

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit317: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i315
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  br label %bb.jp

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %.body302

.body302:                                         ; preds = %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit4.i299, %bb.m
  %eh.lpad-body303 = phi { ptr, i32 } [ %i.cd, %bb.m ], [ %i.ad, %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit4.i299 ]
  %i.ce = load ptr, ptr %13, align 8, !tbaa !98   ; 2 uses
  %i.cf = icmp eq ptr %i.ce, %i.y
  br i1 %i.cf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit320, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i318

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i318: ; preds = %.body302
  %i.cg = load i64, ptr %i.y, align 8, !tbaa !99
  %i.ch = add i64 %i.cg, 1
  call void @_ZdlPvm(ptr noundef %i.ce, i64 noundef %i.ch) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit320

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit320: ; preds = %.body302, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i318
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  br label %bb.jo

bb.n:                                             ; preds = %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i, %bb.i
  %i.ci = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit633

bb.o:                                             ; preds = %bb.o, %.lr.ph.new
  %.0180719 = phi i64 [ 0, %.lr.ph.new ], [ %i.dd, %bb.o ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.o ]
  %i.cj = getelementptr inbounds nuw [24 x i8], ptr %i.au, i64 %.0180719 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !139
  %i.cm = load ptr, ptr %i.cj, align 8, !tbaa !135
  %i.cn = ptrtoint ptr %i.cl to i64
  %i.co = ptrtoint ptr %i.cm to i64
  %i.cp = sub i64 %i.cn, %i.co
  %i.cq = ashr exact i64 %i.cp, 3
  %i.cr = add nsw i64 %i.cq, -4
  %i.cs = or disjoint i64 %.0180719, 1            ; 2 uses
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.cs
  store i64 %i.cr, ptr %i.ct, align 8, !tbaa !151
  %i.cu = getelementptr inbounds nuw [24 x i8], ptr %i.au, i64 %i.cs ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !139
  %i.cx = load ptr, ptr %i.cu, align 8, !tbaa !135
  %i.cy = ptrtoint ptr %i.cw to i64
  %i.cz = ptrtoint ptr %i.cx to i64
  %i.da = sub i64 %i.cy, %i.cz
  %i.db = ashr exact i64 %i.da, 3
  %i.dc = add nsw i64 %i.db, -4
  %i.dd = add nuw nsw i64 %.0180719, 2            ; 3 uses
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.dd
  store i64 %i.dc, ptr %i.de, align 8, !tbaa !151
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.unr-lcssa, label %bb.o, !llvm.loop !284

.unr-lcssa875:                                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit
  %i.df = getelementptr inbounds nuw i8, ptr %15, i64 8
  store ptr %i.bk, ptr %i.df, align 8, !tbaa !152
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #26
  %i.dg = icmp samesign ugt i64 %i.j, 384307168202282325
  br i1 %i.dg, label %bb.p, label %.lr.ph.preheader.i.i.i.i.i

bb.p:                                             ; preds = %.unr-lcssa875
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.55) #27
          to label %.noexc322 unwind label %bb.r

.noexc322:                                        ; preds = %bb.p
  unreachable

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %.unr-lcssa875
  %i.dh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #24
          to label %.lr.ph.preheader.i.i.i.i.i325 unwind label %bb.r ; 5 uses

.thread:                                          ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #26
  %i.di = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.dj = getelementptr inbounds nuw i8, ptr %16, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %16, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #26
  %i.dk = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.dl = getelementptr inbounds nuw i8, ptr %17, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %17, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %18, i8 0, i64 24, i1 false)
  br label %._crit_edge723

.lr.ph.preheader.i.i.i.i.i325:                    ; preds = %.lr.ph.preheader.i.i.i.i.i
  store ptr %i.dh, ptr %16, align 8, !tbaa !285
  %i.dm = getelementptr i8, ptr %i.dh, i64 %i.i   ; 2 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.dh, i8 0, i64 %i.i, i1 false)
  %i.dn = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  store ptr %i.dm, ptr %i.do, align 8, !tbaa !288
  store ptr %i.dm, ptr %i.dn, align 8, !tbaa !289
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #26
  %i.dp = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #24
          to label %.lr.ph722 unwind label %bb.s  ; 5 uses

.lr.ph722:                                        ; preds = %.lr.ph.preheader.i.i.i.i.i325
  store ptr %i.dp, ptr %17, align 8, !tbaa !290
  %i.dq = getelementptr i8, ptr %i.dp, i64 %i.i   ; 2 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.dp, i8 0, i64 %i.i, i1 false)
  %i.dr = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  store ptr %i.dq, ptr %i.ds, align 8, !tbaa !293
  store ptr %i.dq, ptr %i.dr, align 8, !tbaa !294
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %18, i8 0, i64 24, i1 false)
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 1368
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 1344
  %i.dv = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %18, i64 16
  br label %bb.t

._crit_edge723:                                   ; preds = %_ZNSt6vectorIN6casadi2MXESaIS1_EE9push_backEOS1_.exit, %.thread
  %i.dx = phi ptr [ %i.dl, %.thread ], [ %i.ds, %_ZNSt6vectorIN6casadi2MXESaIS1_EE9push_backEOS1_.exit ]
  %i.dy = phi ptr [ %i.dk, %.thread ], [ %i.dr, %_ZNSt6vectorIN6casadi2MXESaIS1_EE9push_backEOS1_.exit ]
  %i.dz = phi ptr [ %i.di, %.thread ], [ %i.dn, %_ZNSt6vectorIN6casadi2MXESaIS1_EE9push_backEOS1_.exit ]
  %i.ea = phi ptr [ %i.dj, %.thread ], [ %i.do, %_ZNSt6vectorIN6casadi2MXESaIS1_EE9push_backEOS1_.exit ]
  %i.eb = phi ptr [ null, %.thread ], [ %i.dh, %_ZNSt6vectorIN6casadi2MXESaIS1_EE9push_backEOS1_.exit ] ; 8 uses
  %i.ec = phi ptr [ null, %.thread ], [ %i.dp, %_ZNSt6vectorIN6casadi2MXESaIS1_EE9push_backEOS1_.exit ] ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #26
  invoke void @_ZN6casadi2MX7vertcatERKSt6vectorIS0_SaIS0_EE(ptr dead_on_unwind nonnull writable sret(%"class.casadi::MX") align 8 %20, ptr noundef nonnull align 8 dereferenceable(24) %18)
          to label %_ZN6casadi7vertcatERKSt6vectorINS_2MXESaIS1_EE.exit unwind label %bb.av

bb.q:                                             ; preds = %bb.k
  %i.ed = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit631

bb.r:                                             ; preds = %.lr.ph.preheader.i.i.i.i.i, %bb.p
  %i.ee = landingpad { ptr, i32 }
          cleanup
  br label %bb.jl

bb.s:                                             ; preds = %.lr.ph.preheader.i.i.i.i.i325
  %i.ef = landingpad { ptr, i32 }
          cleanup
  br label %bb.jk

bb.t:                                             ; preds = %.lr.ph722, %_ZNSt6vectorIN6casadi2MXESaIS1_EE9push_backEOS1_.exit
  %.0181720 = phi i64 [ 0, %.lr.ph722 ], [ %i.en, %_ZNSt6vectorIN6casadi2MXESaIS1_EE9push_backEOS1_.exit ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #26
  %i.eg = getelementptr inbounds nuw [24 x i8], ptr %i.dh, i64 %.0181720
  %i.eh = getelementptr inbounds nuw [24 x i8], ptr %i.dp, i64 %.0181720
  invoke void @_ZN6casadi13BSplineCommon16derivative_coeffINS_2MXEEET_xRKSt6vectorIdSaIdEERKS4_IxSaIxEESC_SC_RKS3_RS4_IS6_SaIS6_EERSA_(ptr dead_on_unwind nonnull writable sret(%"class.casadi::MX") align 8 %19, i64 noundef %.0181720, ptr noundef nonnull align 8 dereferenceable(24) %i.dt, ptr noundef nonnull align 8 dereferenceable(24) %i.du, ptr noundef nonnull align 8 dereferenceable(24) %15, ptr noundef nonnull align 8 dereferenceable(24) %14, ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(24) %i.eg, ptr noundef nonnull align 8 dereferenceable(24) %i.eh)
          to label %bb.u unwind label %bb.x

bb.u:                                             ; preds = %bb.t
  %i.ei = load ptr, ptr %i.dv, align 8, !tbaa !295 ; 4 uses
  %i.ej = load ptr, ptr %i.dw, align 8, !tbaa !298
  %.not.i.i = icmp eq ptr %i.ei, %i.ej
  br i1 %.not.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ek = load ptr, ptr %19, align 8, !tbaa !299
  store ptr %i.ek, ptr %i.ei, align 8, !tbaa !299
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE8count_upEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ei)
          to label %.noexc332 unwind label %bb.y

.noexc332:                                        ; preds = %bb.v
  %i.el = load ptr, ptr %i.dv, align 8, !tbaa !295
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  store ptr %i.em, ptr %i.dv, align 8, !tbaa !295
  br label %_ZNSt6vectorIN6casadi2MXESaIS1_EE9push_backEOS1_.exit

bb.w:                                             ; preds = %bb.u
  invoke void @_ZNSt6vectorIN6casadi2MXESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %18, ptr %i.ei, ptr noundef nonnull align 8 dereferenceable(8) %19)
          to label %_ZNSt6vectorIN6casadi2MXESaIS1_EE9push_backEOS1_.exit unwind label %bb.y

_ZNSt6vectorIN6casadi2MXESaIS1_EE9push_backEOS1_.exit: ; preds = %.noexc332, %bb.w
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %19) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #26
  %i.en = add nuw i64 %.0181720, 1                ; 2 uses
  %84 = icmp ult i64 %i.en, %i.j
  br i1 %84, label %bb.t, label %._crit_edge723, !llvm.loop !300

bb.x:                                             ; preds = %bb.t
  %i.eo = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.y:                                             ; preds = %bb.w, %bb.v
  %i.ep = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %19) #26
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.pn285 = phi { ptr, i32 } [ %i.ep, %bb.y ], [ %i.eo, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #26
  br label %bb.jj

_ZN6casadi7vertcatERKSt6vectorINS_2MXESaIS1_EE.exit: ; preds = %._crit_edge723
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #26
  %i.eq = getelementptr inbounds nuw i8, ptr %1, i64 1136
  %i.er = getelementptr inbounds nuw i8, ptr %1, i64 1184
  invoke void @_ZN6casadi7combineERKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11GenericTypeESt4lessIS6_ESaISt4pairIKS6_S7_EEESG_b(ptr dead_on_unwind nonnull writable sret(%"class.std::map") align 8 %21, ptr noundef nonnull align 8 dereferenceable(48) %i.eq, ptr noundef nonnull align 8 dereferenceable(48) %i.er, i1 noundef zeroext false)
          to label %bb.aa unwind label %bb.aw

bb.aa:                                            ; preds = %_ZN6casadi7vertcatERKSt6vectorINS_2MXESaIS1_EE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #26
  invoke void @_ZN6casadi7combineERKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11GenericTypeESt4lessIS6_ESaISt4pairIKS6_S7_EEESG_b(ptr dead_on_unwind nonnull writable sret(%"class.std::map") align 8 %22, ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull align 8 dereferenceable(48) %21, i1 noundef zeroext false)
          to label %bb.ab unwind label %bb.ax

bb.ab:                                            ; preds = %bb.aa
  %i.es = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 7 uses
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !146
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6casadi11GenericTypeEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %21, ptr noundef %i.et)
          to label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6casadi11GenericTypeEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE5clearEv.exit.i.i.i unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.eu = landingpad { ptr, i32 }
          catch ptr null
  %i.ev = extractvalue { ptr, i32 } %i.eu, 0
  call void @__clang_call_terminate(ptr %i.ev) #28
  unreachable

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6casadi11GenericTypeEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE5clearEv.exit.i.i.i: ; preds = %bb.ab
  %i.ew = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 8 uses
  store ptr null, ptr %i.es, align 8, !tbaa !146
  %i.ex = getelementptr inbounds nuw i8, ptr %21, i64 24 ; 4 uses
  store ptr %i.ew, ptr %i.ex, align 8, !tbaa !301
  %i.ey = getelementptr inbounds nuw i8, ptr %21, i64 32 ; 2 uses
  store ptr %i.ew, ptr %i.ey, align 8, !tbaa !302
  %i.ez = getelementptr inbounds nuw i8, ptr %21, i64 40 ; 4 uses
  store i64 0, ptr %i.ez, align 8, !tbaa !303
  %i.fa = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 2 uses
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !304 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.fb, null
  br i1 %.not.i.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeESt4lessIS5_ESaISt4pairIKS5_S7_EEEaSEOSE_.exit, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6casadi11GenericTypeEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE5clearEv.exit.i.i.i
  %i.fc = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 3 uses
  %i.fd = load i32, ptr %i.fc, align 8, !tbaa !305
  store i32 %i.fd, ptr %i.ew, align 8, !tbaa !305
  store ptr %i.fb, ptr %i.es, align 8, !tbaa !146
  %i.fe = getelementptr inbounds nuw i8, ptr %22, i64 24 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %22, i64 32
  %i.fg = load <2 x ptr>, ptr %i.fe, align 8, !tbaa !304
  store <2 x ptr> %i.fg, ptr %i.ex, align 8, !tbaa !304
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  store ptr %i.ew, ptr %i.fh, align 8, !tbaa !306
  %i.fi = getelementptr inbounds nuw i8, ptr %22, i64 40 ; 2 uses
  %i.fj = load i64, ptr %i.fi, align 8, !tbaa !303
  store i64 %i.fj, ptr %i.ez, align 8, !tbaa !303
  store ptr null, ptr %i.fa, align 8, !tbaa !146
  store ptr %i.fc, ptr %i.fe, align 8, !tbaa !301
  store ptr %i.fc, ptr %i.ff, align 8, !tbaa !302
  store i64 0, ptr %i.fi, align 8, !tbaa !303
  br label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeESt4lessIS5_ESaISt4pairIKS5_S7_EEEaSEOSE_.exit

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeESt4lessIS5_ESaISt4pairIKS5_S7_EEEaSEOSE_.exit: ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6casadi11GenericTypeEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE5clearEv.exit.i.i.i, %bb.ad
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6casadi11GenericTypeEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %22, ptr noundef null)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit unwind label %bb.ae

bb.ae:                                            ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeESt4lessIS5_ESaISt4pairIKS5_S7_EEEaSEOSE_.exit
  %i.fk = landingpad { ptr, i32 }
          catch ptr null
  %i.fl = extractvalue { ptr, i32 } %i.fk, 0
  call void @__clang_call_terminate(ptr %i.fl) #28
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeESt4lessIS5_ESaISt4pairIKS5_S7_EEEaSEOSE_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #26
  %i.fm = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 6 uses
  store ptr %i.fm, ptr %25, align 8, !tbaa !101
  store i64 7953754288409502058, ptr %i.fm, align 8
  %i.fn = getelementptr inbounds nuw i8, ptr %25, i64 8
  store i64 8, ptr %i.fn, align 8, !tbaa !100
  %i.fo = getelementptr inbounds nuw i8, ptr %25, i64 24
  store i8 0, ptr %i.fo, align 8, !tbaa !99
  %i.fp = load ptr, ptr %1, align 8, !tbaa !110
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 40
  %i.fr = load ptr, ptr %i.fq, align 8
  invoke void %i.fr(ptr dead_on_unwind nonnull writable sret(%"class.std::map") align 8 %24, ptr noundef nonnull align 8 dereferenceable(1312) %1, ptr noundef nonnull align 8 dereferenceable(32) %25)
          to label %bb.af unwind label %bb.ay

bb.af:                                            ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit
  invoke void @_ZN6casadi7combineERKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11GenericTypeESt4lessIS6_ESaISt4pairIKS6_S7_EEESG_b(ptr dead_on_unwind nonnull writable sret(%"class.std::map") align 8 %23, ptr noundef nonnull align 8 dereferenceable(48) %21, ptr noundef nonnull align 8 dereferenceable(48) %24, i1 noundef zeroext false)
          to label %bb.ag unwind label %bb.az

bb.ag:                                            ; preds = %bb.af
  %i.fs = load ptr, ptr %i.es, align 8, !tbaa !146
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6casadi11GenericTypeEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %21, ptr noundef %i.fs)
          to label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6casadi11GenericTypeEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE5clearEv.exit.i.i.i338 unwind label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ft = landingpad { ptr, i32 }
          catch ptr null
  %i.fu = extractvalue { ptr, i32 } %i.ft, 0
  call void @__clang_call_terminate(ptr %i.fu) #28
  unreachable

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6casadi11GenericTypeEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE5clearEv.exit.i.i.i338: ; preds = %bb.ag
  store ptr null, ptr %i.es, align 8, !tbaa !146
  store ptr %i.ew, ptr %i.ex, align 8, !tbaa !301
  store ptr %i.ew, ptr %i.ey, align 8, !tbaa !302
  store i64 0, ptr %i.ez, align 8, !tbaa !303
  %i.fv = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 2 uses
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !304 ; 3 uses
  %.not.i.i.i339 = icmp eq ptr %i.fw, null
  br i1 %.not.i.i.i339, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeESt4lessIS5_ESaISt4pairIKS5_S7_EEEaSEOSE_.exit340, label %bb.ai

bb.ai:                                            ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6casadi11GenericTypeEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE5clearEv.exit.i.i.i338
  %i.fx = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 3 uses
  %i.fy = load i32, ptr %i.fx, align 8, !tbaa !305
  store i32 %i.fy, ptr %i.ew, align 8, !tbaa !305
  store ptr %i.fw, ptr %i.es, align 8, !tbaa !146
  %i.fz = getelementptr inbounds nuw i8, ptr %23, i64 24 ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %23, i64 32
  %i.gb = load <2 x ptr>, ptr %i.fz, align 8, !tbaa !304
  store <2 x ptr> %i.gb, ptr %i.ex, align 8, !tbaa !304
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fw, i64 8
  store ptr %i.ew, ptr %i.gc, align 8, !tbaa !306
  %i.gd = getelementptr inbounds nuw i8, ptr %23, i64 40 ; 2 uses
  %i.ge = load i64, ptr %i.gd, align 8, !tbaa !303
  store i64 %i.ge, ptr %i.ez, align 8, !tbaa !303
  store ptr null, ptr %i.fv, align 8, !tbaa !146
  store ptr %i.fx, ptr %i.fz, align 8, !tbaa !301
  store ptr %i.fx, ptr %i.ga, align 8, !tbaa !302
  store i64 0, ptr %i.gd, align 8, !tbaa !303
  br label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeESt4lessIS5_ESaISt4pairIKS5_S7_EEEaSEOSE_.exit340

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeESt4lessIS5_ESaISt4pairIKS5_S7_EEEaSEOSE_.exit340: ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6casadi11GenericTypeEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE5clearEv.exit.i.i.i338, %bb.ai
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6casadi11GenericTypeEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %23, ptr noundef null)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit341 unwind label %bb.aj

bb.aj:                                            ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeESt4lessIS5_ESaISt4pairIKS5_S7_EEEaSEOSE_.exit340
  %i.gf = landingpad { ptr, i32 }
          catch ptr null
  %i.gg = extractvalue { ptr, i32 } %i.gf, 0
  call void @__clang_call_terminate(ptr %i.gg) #28
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit341: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeESt4lessIS5_ESaISt4pairIKS5_S7_EEEaSEOSE_.exit340
  %i.gh = getelementptr inbounds nuw i8, ptr %24, i64 16
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !146
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6casadi11GenericTypeEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %24, ptr noundef %i.gi)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit342 unwind label %bb.ak

bb.ak:                                            ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit341
  %i.gj = landingpad { ptr, i32 }
          catch ptr null
  %i.gk = extractvalue { ptr, i32 } %i.gj, 0
  call void @__clang_call_terminate(ptr %i.gk) #28
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit342: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit341
  %i.gl = load ptr, ptr %25, align 8, !tbaa !98   ; 2 uses
  %i.gm = icmp eq ptr %i.gl, %i.fm
  br i1 %i.gm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit345, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i343

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i343: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit342
  %i.gn = load i64, ptr %i.fm, align 8, !tbaa !99
  %i.go = add i64 %i.gn, 1
  call void @_ZdlPvm(ptr noundef %i.gl, i64 noundef %i.go) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit345

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit345: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit342, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i343
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #26
  invoke void @_ZNK6casadi21GenericSharedInternalINS_12SharedObjectENS_20SharedObjectInternalEE16shared_from_thisINS_8FunctionEEEKT_v(ptr dead_on_unwind nonnull writable sret(%"class.casadi::Function") align 8 %27, ptr noundef nonnull align 8 dereferenceable(1312) %1)
          to label %_ZNK6casadi16FunctionInternal4selfEv.exit unwind label %bb.bb

_ZNK6casadi16FunctionInternal4selfEv.exit:        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit345
  invoke void @_ZN6casadi11GenericTypeC1ERKNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(8) %26, ptr noundef nonnull align 8 dereferenceable(8) %27)
          to label %._crit_edge.i.i347 unwind label %bb.bc

._crit_edge.i.i347:                               ; preds = %_ZNK6casadi16FunctionInternal4selfEv.exit
end_hunk_1
