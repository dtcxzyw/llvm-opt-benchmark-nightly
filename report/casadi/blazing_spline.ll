Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/casadi/original/blazing_spline?download=true
inline.NumInlined: 2450
inline.NumDeleted: 866
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 24
begin_hunk_0_@_ZN6casadi21BlazingSplineFunctionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIS9_IdSaIdEESaISB_EEx:bb.a
  %i.db = load i64, ptr %i.cz, align 8, !tbaa !105
  %i.dc = add i64 %i.db, 1
  call void @_ZdlPvm(ptr noundef %i.cy, i64 noundef %i.dc) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83, %bb.ak
  %.pn48.pn.pn = phi { ptr, i32 } [ %i.ck, %bb.ak ], [ %.pn48.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83 ], [ %.pn48.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82 ] ; 2 uses
  %.3 = phi i1 [ true, %bb.ak ], [ %.2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83 ], [ %.2, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82 ] ; 2 uses
  %i.dd = load ptr, ptr %21, align 8, !tbaa !104  ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 2 uses
  %i.df = icmp eq ptr %i.dd, %i.de
  br i1 %i.df, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85
  %i.dg = load i64, ptr %i.de, align 8, !tbaa !105
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
  %i.di = load ptr, ptr %15, align 8, !tbaa !104  ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.dk = icmp eq ptr %i.di, %i.dj
  br i1 %i.dk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88
  %i.dl = load i64, ptr %i.dj, align 8, !tbaa !105
  %i.dm = add i64 %i.dl, 1
  call void @_ZdlPvm(ptr noundef %i.di, i64 noundef %i.dm) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89, %bb.ai
  %.pn48.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ci, %bb.ai ], [ %.pn48.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89 ], [ %.pn48.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88 ] ; 4 uses
  %.5 = phi i1 [ true, %bb.ai ], [ %.4, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89 ], [ %.4, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88 ] ; 2 uses
  %i.dn = load ptr, ptr %16, align 8, !tbaa !104  ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.dp = icmp eq ptr %i.dn, %i.do
  br i1 %i.dp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91
  %i.dq = load i64, ptr %i.do, align 8, !tbaa !105
  %i.dr = add i64 %i.dq, 1
  call void @_ZdlPvm(ptr noundef %i.dn, i64 noundef %i.dr) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92
  %i.ds = load ptr, ptr %17, align 8, !tbaa !104  ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.du = icmp eq ptr %i.ds, %i.dt
  br i1 %i.du, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94.thread: ; preds = %bb.aa
  %i.dv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dw = load ptr, ptr %17, align 8, !tbaa !104  ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.dy = icmp eq ptr %i.dw, %i.dx
  br i1 %i.dy, label %.sink.split165, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94.thread
  %i.dz = load i64, ptr %i.dx, align 8, !tbaa !105
  %i.ea = add i64 %i.dz, 1
  call void @_ZdlPvm(ptr noundef %i.dw, i64 noundef %i.ea) #25
  br label %.sink.split165

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94
  %i.eb = load i64, ptr %i.dt, align 8, !tbaa !105
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
  %i.ed = load ptr, ptr %i.z, align 8, !tbaa !119 ; 3 uses
  %.not.i.i.i98 = icmp eq ptr %i.ed, null
  br i1 %.not.i.i.i98, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 1384
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !120
  %i.eg = ptrtoint ptr %i.ef to i64
  %i.eh = ptrtoint ptr %i.ed to i64
  %i.ei = sub i64 %i.eg, %i.eh
  call void @_ZdlPvm(ptr noundef nonnull %i.ed, i64 noundef %i.ei) #25
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

_ZNSt6vectorIdSaIdEED2Ev.exit:                    ; preds = %bb.aq, %bb.ar
  %i.ej = load ptr, ptr %i.y, align 8, !tbaa !121 ; 3 uses
  %.not.i.i.i99 = icmp eq ptr %i.ej, null
  br i1 %.not.i.i.i99, label %_ZNSt6vectorIxSaIxEED2Ev.exit, label %bb.as

bb.as:                                            ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 1360
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !122
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
  store i64 1, ptr %i.a, align 8, !tbaa !101
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1320 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !118  ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1328
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !118  ; 3 uses
  %.not5457 = icmp eq ptr %i.c, %i.e
  br i1 %.not5457, label %.thread84, label %.lr.ph

.thread84:                                        ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1400
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit

.preheader56.lr.ph:                               ; preds = %.lr.ph
  store i64 %i.w, ptr %i.a, align 8, !tbaa !101
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1400
  %i.h = ptrtoint ptr %i.e to i64
  %i.i = ptrtoint ptr %i.c to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = sdiv exact i64 %i.j, 24                  ; 10 uses
  %i.l = add nsw i64 %i.k, -1                     ; 2 uses
  %xtraiter = and i64 %i.k, 1
  %i.m = icmp eq i64 %i.l, 0
  %unroll_iter = and i64 %i.k, -2
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod98 = trunc i64 %i.k to i1
  br label %.preheader56

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.051.058 = phi ptr [ %i.x, %.lr.ph ], [ %i.c, %bb.a ] ; 3 uses
  %i.n = phi i64 [ %i.w, %.lr.ph ], [ 1, %bb.a ]
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.051.058, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !123
  %i.q = load ptr, ptr %.sroa.051.058, align 8, !tbaa !119
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = ashr exact i64 %i.t, 3
  %i.v = add nsw i64 %i.u, -4
  %i.w = mul i64 %i.v, %i.n                       ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.051.058, i64 24 ; 2 uses
  %.not54 = icmp eq ptr %i.x, %i.e
  br i1 %.not54, label %.preheader56.lr.ph, label %.lr.ph

.preheader56:                                     ; preds = %.preheader56.lr.ph, %bb.c
  %i.y = phi i64 [ %i.ao, %bb.c ], [ 0, %.preheader56.lr.ph ] ; 4 uses
  %.062 = phi i64 [ %i.an, %bb.c ], [ 0, %.preheader56.lr.ph ]
  br i1 %i.m, label %.epil.preheader, label %.preheader56.new

bb.b:                                             ; preds = %bb.c
  store i64 %i.an, ptr %i.g, align 8, !tbaa !102
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 1408 ; 2 uses
  store i64 0, ptr %i.z, align 8, !tbaa !103
  %xtraiter101 = and i64 %i.k, 1
  %i.aa = icmp eq i64 %i.l, 0
  %unroll_iter106 = and i64 %i.k, -2
  %lcmp.mod102.not = icmp eq i64 %xtraiter101, 0
  %lcmp.mod105 = trunc i64 %i.k to i1
  br label %.preheader55

.unr-lcssa:                                       ; preds = %.preheader56.new
  br i1 %lcmp.mod.not, label %bb.c, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %.preheader56
  %.03361.epil.init = phi i64 [ 0, %.preheader56 ], [ %i.bo, %.unr-lcssa ] ; 2 uses
  %.03460.epil.init = phi i64 [ 1, %.preheader56 ], [ %i.bn, %.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod98)
  %i.ab = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %.03361.epil.init ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !123
  %i.ae = load ptr, ptr %i.ab, align 8, !tbaa !119
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = ashr exact i64 %i.ah, 3
  %i.aj = icmp eq i64 %.03361.epil.init, %i.y
  %i.ak = select i1 %i.aj, i64 -5, i64 -4
  %i.al = add nsw i64 %i.ak, %i.ai
  %i.am = mul i64 %i.al, %.03460.epil.init
  br label %bb.c

bb.c:                                             ; preds = %.unr-lcssa, %.epil.preheader
  %.lcssa94 = phi i64 [ %i.bn, %.unr-lcssa ], [ %i.am, %.epil.preheader ]
  %i.an = add nsw i64 %.062, %.lcssa94            ; 2 uses
  %i.ao = add nuw nsw i64 %i.y, 1                 ; 2 uses
  %exitcond75.not = icmp eq i64 %i.ao, %i.k
  br i1 %exitcond75.not, label %bb.b, label %.preheader56, !llvm.loop !227

.preheader56.new:                                 ; preds = %.preheader56, %.preheader56.new
  %.03361 = phi i64 [ %i.bo, %.preheader56.new ], [ 0, %.preheader56 ] ; 4 uses
  %.03460 = phi i64 [ %i.bn, %.preheader56.new ], [ 1, %.preheader56 ]
  %niter = phi i64 [ %niter.next.1, %.preheader56.new ], [ 0, %.preheader56 ]
  %i.ap = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %.03361 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !123
  %i.as = load ptr, ptr %i.ap, align 8, !tbaa !119
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = sub i64 %i.at, %i.au
  %i.aw = ashr exact i64 %i.av, 3
  %i.ax = icmp eq i64 %.03361, %i.y
  %i.ay = select i1 %i.ax, i64 -5, i64 -4
  %i.az = add nsw i64 %i.ay, %i.aw
  %i.ba = mul i64 %i.az, %.03460
  %i.bb = or disjoint i64 %.03361, 1              ; 2 uses
  %i.bc = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %i.bb ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !123
  %i.bf = load ptr, ptr %i.bc, align 8, !tbaa !119
  %i.bg = ptrtoint ptr %i.be to i64
  %i.bh = ptrtoint ptr %i.bf to i64
  %i.bi = sub i64 %i.bg, %i.bh
  %i.bj = ashr exact i64 %i.bi, 3
  %i.bk = icmp eq i64 %i.bb, %i.y
  %i.bl = select i1 %i.bk, i64 -5, i64 -4
  %i.bm = add nsw i64 %i.bl, %i.bj
  %i.bn = mul i64 %i.bm, %i.ba                    ; 3 uses
  %i.bo = add nuw nsw i64 %.03361, 2              ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.unr-lcssa, label %.preheader56.new, !llvm.loop !228

.preheader55:                                     ; preds = %bb.b, %bb.d
  %i.bp = phi i64 [ %i.dn, %bb.d ], [ 0, %bb.b ]
  %.03269 = phi i64 [ %i.bt, %bb.d ], [ 0, %bb.b ] ; 5 uses
  br label %.preheader

_ZNSt6vectorIxSaIxEED2Ev.exit:                    ; preds = %bb.d, %.thread84
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 1344
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 1368
  tail call void @_ZN6casadi11Interpolant10stack_gridERKSt6vectorIS1_IdSaIdEESaIS3_EERS1_IxSaIxEERS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.bq, ptr noundef nonnull align 8 dereferenceable(24) %i.br)
  ret void

.preheader:                                       ; preds = %.preheader55, %bb.g
  %i.bs = phi i64 [ %i.bp, %.preheader55 ], [ %i.dn, %bb.g ] ; 2 uses
  %.03168 = phi i64 [ 0, %.preheader55 ], [ %i.do, %bb.g ] ; 5 uses
  br i1 %i.aa, label %.epil.preheader100, label %.preheader.new

bb.d:                                             ; preds = %bb.g
  %i.bt = add nuw nsw i64 %.03269, 1              ; 2 uses
  %exitcond79.not = icmp eq i64 %i.bt, %i.k
  br i1 %exitcond79.not, label %_ZNSt6vectorIxSaIxEED2Ev.exit, label %.preheader55, !llvm.loop !229

.unr-lcssa99:                                     ; preds = %.preheader.new
  br i1 %lcmp.mod102.not, label %bb.e, label %.epil.preheader100

.epil.preheader100:                               ; preds = %.unr-lcssa99, %.preheader
  %.02967.epil.init = phi i64 [ 0, %.preheader ], [ %i.dl, %.unr-lcssa99 ] ; 3 uses
  %.03066.epil.init = phi i64 [ 1, %.preheader ], [ %i.dk, %.unr-lcssa99 ]
  tail call void @llvm.assume(i1 %lcmp.mod105)
  %i.bu = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %.02967.epil.init ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !123
  %i.bx = load ptr, ptr %i.bu, align 8, !tbaa !119
  %i.by = ptrtoint ptr %i.bw to i64
  %i.bz = ptrtoint ptr %i.bx to i64
  %i.ca = sub i64 %i.by, %i.bz
  %i.cb = ashr exact i64 %i.ca, 3
  %i.cc = icmp eq i64 %.02967.epil.init, %.03269
  %i.cd = icmp eq i64 %.02967.epil.init, %.03168
  %.neg35.epil = sext i1 %i.cd to i64
  %i.ce = select i1 %i.cc, i64 -5, i64 -4
  %i.cf = add nsw i64 %i.ce, %.neg35.epil
  %i.cg = add nsw i64 %i.cf, %i.cb
  %i.ch = mul i64 %i.cg, %.03066.epil.init
  br label %bb.e

bb.e:                                             ; preds = %.unr-lcssa99, %.epil.preheader100
  %.lcssa = phi i64 [ %i.dk, %.unr-lcssa99 ], [ %i.ch, %.epil.preheader100 ]
  %.not = icmp samesign ult i64 %.03168, %.03269
  br i1 %.not, label %bb.g, label %bb.f

.preheader.new:                                   ; preds = %.preheader, %.preheader.new
  %.02967 = phi i64 [ %i.dl, %.preheader.new ], [ 0, %.preheader ] ; 5 uses
  %.03066 = phi i64 [ %i.dk, %.preheader.new ], [ 1, %.preheader ]
  %niter107 = phi i64 [ %niter107.next.1, %.preheader.new ], [ 0, %.preheader ]
  %i.ci = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %.02967 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !123
  %i.cl = load ptr, ptr %i.ci, align 8, !tbaa !119
  %i.cm = ptrtoint ptr %i.ck to i64
  %i.cn = ptrtoint ptr %i.cl to i64
  %i.co = sub i64 %i.cm, %i.cn
  %i.cp = ashr exact i64 %i.co, 3
  %i.cq = icmp eq i64 %.02967, %.03269
  %i.cr = icmp eq i64 %.02967, %.03168
  %.neg35 = sext i1 %i.cr to i64
  %i.cs = select i1 %i.cq, i64 -5, i64 -4
  %i.ct = add nsw i64 %i.cs, %.neg35
  %i.cu = add nsw i64 %i.ct, %i.cp
  %i.cv = mul i64 %i.cu, %.03066
  %i.cw = or disjoint i64 %.02967, 1              ; 3 uses
  %i.cx = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %i.cw ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !123
  %i.da = load ptr, ptr %i.cx, align 8, !tbaa !119
  %i.db = ptrtoint ptr %i.cz to i64
  %i.dc = ptrtoint ptr %i.da to i64
  %i.dd = sub i64 %i.db, %i.dc
  %i.de = ashr exact i64 %i.dd, 3
  %i.df = icmp eq i64 %i.cw, %.03269
  %i.dg = icmp eq i64 %i.cw, %.03168
  %.neg35.1 = sext i1 %i.dg to i64
  %i.dh = select i1 %i.df, i64 -5, i64 -4
  %i.di = add nsw i64 %i.dh, %.neg35.1
  %i.dj = add nsw i64 %i.di, %i.de
  %i.dk = mul i64 %i.dj, %i.cv                    ; 3 uses
  %i.dl = add nuw nsw i64 %.02967, 2              ; 2 uses
  %niter107.next.1 = add i64 %niter107, 2         ; 2 uses
  %niter107.ncmp.1 = icmp eq i64 %niter107.next.1, %unroll_iter106
  br i1 %niter107.ncmp.1, label %.unr-lcssa99, label %.preheader.new, !llvm.loop !230

bb.f:                                             ; preds = %bb.e
  %i.dm = add nsw i64 %i.bs, %.lcssa              ; 2 uses
  store i64 %i.dm, ptr %i.z, align 8, !tbaa !103
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.dn = phi i64 [ %i.dm, %bb.f ], [ %i.bs, %bb.e ] ; 2 uses
  %i.do = add nuw nsw i64 %.03168, 1              ; 2 uses
  %exitcond78.not = icmp eq i64 %i.do, %i.k
  br i1 %exitcond78.not, label %bb.d, label %.preheader, !llvm.loop !231
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIS_IdSaIdEESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !100    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !99   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt6vectorIdSaIdEES2_EvT_S4_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.j, %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !119 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !120
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.i) #25
  br label %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i

_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i:    ; preds = %bb.b, %.lr.ph.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24 ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt6vectorIdSaIdEES2_EvT_S4_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !1

_ZSt8_DestroyIPSt6vectorIdSaIdEES2_EvT_S4_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !100
  br label %_ZSt8_DestroyIPSt6vectorIdSaIdEES2_EvT_S4_RSaIT0_E.exit

_ZSt8_DestroyIPSt6vectorIdSaIdEES2_EvT_S4_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIdSaIdEES2_EvT_S4_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.k = phi ptr [ %.pr, %_ZSt8_DestroyIPSt6vectorIdSaIdEES2_EvT_S4_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.k, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt6vectorIdSaIdEESaIS2_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIdSaIdEES2_EvT_S4_RSaIT0_E.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !117
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
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !124
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6casadi7Options5EntryEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE8_M_eraseEPSt13_Rb_tree_nodeISB_E(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef %i.c)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi7Options5EntryESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #28
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi7Options5EntryESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev.exit: ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !127    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPKN6casadi7OptionsESaIS3_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi7Options5EntryESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !128
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %i.f to i64
  %i.k = sub i64 %i.i, %i.j
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.k) #25
  br label %_ZNSt6vectorIPKN6casadi7OptionsESaIS3_EED2Ev.exit

_ZNSt6vectorIPKN6casadi7OptionsESaIS3_EED2Ev.exit: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi7Options5EntryESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev.exit, %bb.c
end_hunk_0
