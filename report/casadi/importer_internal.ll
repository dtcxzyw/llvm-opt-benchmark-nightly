inline.NumInlined: 1411
inline.NumDeleted: 500
begin_hunk_0_@_ZN6casadi16ImporterInternal4initERKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11GenericTypeESt4lessIS7_ESaISt4pairIKS7_S8_EEE:bb.a
bb.y:                                             ; preds = %bb.m
  %i.co = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cp = load ptr, ptr %6, align 8, !tbaa !14    ; 2 uses
  %i.cq = icmp eq ptr %i.cp, %i.s
  br i1 %i.cq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126: ; preds = %bb.y
  %i.cr = load i64, ptr %i.s, align 8, !tbaa !19
  %i.cs = add i64 %i.cr, 1
  call void @_ZdlPvm(ptr noundef %i.cp, i64 noundef %i.cs) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128: ; preds = %bb.y, %.loopexit283, %.loopexit.split-lp284, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126
  %.pn = phi { ptr, i32 } [ %i.co, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126 ], [ %lpad.loopexit.split-lp286, %.loopexit.split-lp284 ], [ %lpad.loopexit285, %.loopexit283 ], [ %i.co, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %bb.bx

bb.z:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ct = landingpad { ptr, i32 }
          cleanup
  br label %bb.bw

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149.thread: ; preds = %bb.p
  %i.cu = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

bb.aa:                                            ; preds = %bb.r
  %i.cv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143

bb.ab:                                            ; preds = %bb.s
  %i.cw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140

bb.ac:                                            ; preds = %bb.t
  %i.cx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137

bb.ad:                                            ; preds = %bb.u
  %i.cy = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134

bb.ae:                                            ; preds = %bb.v
  %i.cz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131

bb.af:                                            ; preds = %bb.x, %bb.w
  %.071 = phi i1 [ false, %bb.x ], [ true, %bb.w ] ; 2 uses
  %i.da = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.db = load ptr, ptr %8, align 8, !tbaa !14    ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.dd = icmp eq ptr %i.db, %i.dc
  br i1 %i.dd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129: ; preds = %bb.af
  %i.de = load i64, ptr %i.dc, align 8, !tbaa !19
  %i.df = add i64 %i.de, 1
  call void @_ZdlPvm(ptr noundef %i.db, i64 noundef %i.df) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131: ; preds = %bb.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129, %bb.ae
  %.172 = phi i1 [ true, %bb.ae ], [ %.071, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129 ], [ %.071, %bb.af ] ; 2 uses
  %.pn84 = phi { ptr, i32 } [ %i.cz, %bb.ae ], [ %i.da, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129 ], [ %i.da, %bb.af ] ; 2 uses
  %i.dg = load ptr, ptr %13, align 8, !tbaa !14   ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.di = icmp eq ptr %i.dg, %i.dh
  br i1 %i.di, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i132

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i132: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131
  %i.dj = load i64, ptr %i.dh, align 8, !tbaa !19
  %i.dk = add i64 %i.dj, 1
  call void @_ZdlPvm(ptr noundef %i.dg, i64 noundef %i.dk) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i132, %bb.ad
  %.273 = phi i1 [ true, %bb.ad ], [ %.172, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i132 ], [ %.172, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131 ] ; 2 uses
  %.pn84.pn = phi { ptr, i32 } [ %i.cy, %bb.ad ], [ %.pn84, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i132 ], [ %.pn84, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131 ] ; 2 uses
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %17) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #25
  %i.dl = load ptr, ptr %14, align 8, !tbaa !14   ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.dn = icmp eq ptr %i.dl, %i.dm
  br i1 %i.dn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i135

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i135: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134
  %i.do = load i64, ptr %i.dm, align 8, !tbaa !19
  %i.dp = add i64 %i.do, 1
  call void @_ZdlPvm(ptr noundef %i.dl, i64 noundef %i.dp) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i135, %bb.ac
  %.374 = phi i1 [ true, %bb.ac ], [ %.273, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i135 ], [ %.273, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134 ] ; 2 uses
  %.pn84.pn.pn = phi { ptr, i32 } [ %i.cx, %bb.ac ], [ %.pn84.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i135 ], [ %.pn84.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134 ] ; 2 uses
  %i.dq = load ptr, ptr %15, align 8, !tbaa !14   ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.ds = icmp eq ptr %i.dq, %i.dr
  br i1 %i.ds, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137
  %i.dt = load i64, ptr %i.dr, align 8, !tbaa !19
  %i.du = add i64 %i.dt, 1
  call void @_ZdlPvm(ptr noundef %i.dq, i64 noundef %i.du) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138, %bb.ab
  %.475 = phi i1 [ true, %bb.ab ], [ %.374, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138 ], [ %.374, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137 ] ; 2 uses
  %.pn84.pn.pn.pn = phi { ptr, i32 } [ %i.cw, %bb.ab ], [ %.pn84.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138 ], [ %.pn84.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  %i.dv = load ptr, ptr %9, align 8, !tbaa !14    ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.dx = icmp eq ptr %i.dv, %i.dw
  br i1 %i.dx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i141

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i141: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140
  %i.dy = load i64, ptr %i.dw, align 8, !tbaa !19
  %i.dz = add i64 %i.dy, 1
  call void @_ZdlPvm(ptr noundef %i.dv, i64 noundef %i.dz) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i141, %bb.aa
  %.576 = phi i1 [ true, %bb.aa ], [ %.475, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i141 ], [ %.475, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140 ] ; 2 uses
  %.pn84.pn.pn.pn.pn = phi { ptr, i32 } [ %i.cv, %bb.aa ], [ %.pn84.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i141 ], [ %.pn84.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140 ] ; 4 uses
  %i.ea = load ptr, ptr %10, align 8, !tbaa !14   ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.ec = icmp eq ptr %i.ea, %i.eb
  br i1 %i.ec, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143
  %i.ed = load i64, ptr %i.eb, align 8, !tbaa !19
  %i.ee = add i64 %i.ed, 1
  call void @_ZdlPvm(ptr noundef %i.ea, i64 noundef %i.ee) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144
  %i.ef = load ptr, ptr %11, align 8, !tbaa !14   ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.eh = icmp eq ptr %i.ef, %i.eg
  br i1 %i.eh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146.thread: ; preds = %bb.q
  %i.ei = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ej = load ptr, ptr %11, align 8, !tbaa !14   ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.el = icmp eq ptr %i.ej, %i.ek
  br i1 %i.el, label %.sink.split, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146.thread
  %i.em = load i64, ptr %i.ek, align 8, !tbaa !19
  %i.en = add i64 %i.em, 1
  call void @_ZdlPvm(ptr noundef %i.ej, i64 noundef %i.en) #27
  br label %.sink.split

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146
  %i.eo = load i64, ptr %i.eg, align 8, !tbaa !19
  %i.ep = add i64 %i.eo, 1
  call void @_ZdlPvm(ptr noundef %i.ef, i64 noundef %i.ep) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br i1 %.576, label %bb.ag, label %bb.bw

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br i1 %.576, label %bb.ag, label %bb.bw

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147.thread
  %.pn84.pn.pn.pn.pn.pn.pn239.ph = phi { ptr, i32 } [ %i.ei, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147.thread ], [ %i.cu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149.thread ], [ %i.ei, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %bb.ag

bb.ag:                                            ; preds = %.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149
  %.pn84.pn.pn.pn.pn.pn.pn239 = phi { ptr, i32 } [ %.pn84.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147 ], [ %.pn84.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149 ], [ %.pn84.pn.pn.pn.pn.pn.pn239.ph, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.cn) #25
  br label %bb.bw

bb.ah:                                            ; preds = %bb.o
  %i.eq = load i64, ptr %i.r, align 8, !tbaa !17
  %i.er = add i64 %i.eq, %i.bl
  %i.es = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 noundef signext 61, i64 noundef %i.er) #25 ; 5 uses
  %.not92 = icmp eq i64 %i.es, -1
  br i1 %.not92, label %bb.bt, label %._crit_edge.i.i150

._crit_edge.i.i150:                               ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #25
  store ptr %i.w, ptr %18, align 8, !tbaa !10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.w, ptr noundef nonnull align 1 dereferenceable(6) @.str.11, i64 6, i1 false)
  store i64 6, ptr %i.x, align 8, !tbaa !17
  store i8 0, ptr %i.al, align 2, !tbaa !19
  %i.et = add i64 %i.es, -6                       ; 4 uses
  %i.eu = load i64, ptr %i.j, align 8, !tbaa !17  ; 5 uses
  %i.ev = icmp ugt i64 %i.et, %i.eu
  br i1 %i.ev, label %bb.ai, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i

bb.ai:                                            ; preds = %._crit_edge.i.i150
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.64, i64 noundef %i.et, i64 noundef %i.eu) #28
          to label %.noexc155 unwind label %bb.at

.noexc155:                                        ; preds = %bb.ai
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i: ; preds = %._crit_edge.i.i150
  %i.ew = icmp eq i64 %i.eu, %i.et
  br i1 %i.ew, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit205, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i:     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i
  %i.ex = sub nuw i64 %i.eu, %i.et                ; 2 uses
  %spec.select.i.i = call noundef i64 @llvm.umin.i64(i64 %i.ex, i64 6)
  %i.ey = load ptr, ptr %3, align 8, !tbaa !14
  %39 = getelementptr i8, ptr %i.ey, i64 %i.es
  %i.ez = getelementptr i8, ptr %39, i64 -6
  %bcmp = call i32 @bcmp(ptr %i.ez, ptr nonnull %i.w, i64 %spec.select.i.i)
  %.not.i154 = icmp ne i32 %bcmp, 0
  %.not282 = icmp ult i64 %i.ex, 6
  %or.cond = or i1 %.not282, %.not.i154
  br i1 %or.cond, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit205, label %bb.aj

bb.aj:                                            ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i
  %i.fa = add nuw i64 %i.es, 1
  %i.fb = icmp ugt i64 %i.eu, %i.fa
  br i1 %i.fb, label %bb.bb, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.fc = call ptr @__cxa_allocate_exception(i64 40) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull @.str.12, ptr noundef nonnull align 1 dereferenceable(1) %23)
          to label %bb.al unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176.thread

bb.al:                                            ; preds = %bb.ak
  invoke void @_ZN6casadi9trim_pathERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %21, ptr noundef nonnull align 8 dereferenceable(32) %22)
          to label %bb.am unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173.thread

bb.am:                                            ; preds = %bb.al
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %20, ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull @.str.8)
          to label %bb.an unwind label %bb.au

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %26, ptr noundef nonnull @.str.10, ptr noundef nonnull align 1 dereferenceable(1) %27)
          to label %bb.ao unwind label %bb.av

bb.ao:                                            ; preds = %bb.an
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %25, ptr noundef nonnull @.str.13, ptr noundef nonnull align 8 dereferenceable(32) %26)
          to label %bb.ap unwind label %bb.aw

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %28, i8 0, i64 24, i1 false), !alias.scope !92
  invoke void @_ZN6casadi6fmtstrERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIS5_SaIS5_EE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %24, ptr noundef nonnull align 8 dereferenceable(32) %25, ptr noundef nonnull align 8 dereferenceable(24) %28)
          to label %bb.aq unwind label %bb.ax

bb.aq:                                            ; preds = %bb.ap
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %19, ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull align 8 dereferenceable(32) %24)
          to label %bb.ar unwind label %bb.ay

bb.ar:                                            ; preds = %bb.aq
  invoke void @_ZN6casadi15CasadiExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.fc, ptr noundef nonnull align 8 dereferenceable(32) %19)
          to label %bb.as unwind label %bb.az

bb.as:                                            ; preds = %bb.ar
  invoke void @__cxa_throw(ptr nonnull %i.fc, ptr nonnull @_ZTIN6casadi15CasadiExceptionE, ptr nonnull @_ZN6casadi15CasadiExceptionD2Ev) #28
          to label %bb.ce unwind label %bb.az

bb.at:                                            ; preds = %bb.ai
  %i.fd = landingpad { ptr, i32 }
          cleanup
  br label %bb.bs

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176.thread: ; preds = %bb.ak
  %i.fe = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split499.a

bb.au:                                            ; preds = %bb.am
  %i.ff = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170

bb.av:                                            ; preds = %bb.an
  %i.fg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167

bb.aw:                                            ; preds = %bb.ao
  %i.fh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164

bb.ax:                                            ; preds = %bb.ap
  %i.fi = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161

bb.ay:                                            ; preds = %bb.aq
  %i.fj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158

bb.az:                                            ; preds = %bb.as, %bb.ar
  %.061 = phi i1 [ false, %bb.as ], [ true, %bb.ar ] ; 2 uses
  %i.fk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fl = load ptr, ptr %19, align 8, !tbaa !14   ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.fn = icmp eq ptr %i.fl, %i.fm
  br i1 %i.fn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i156

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i156: ; preds = %bb.az
  %i.fo = load i64, ptr %i.fm, align 8, !tbaa !19
  %i.fp = add i64 %i.fo, 1
  call void @_ZdlPvm(ptr noundef %i.fl, i64 noundef %i.fp) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158: ; preds = %bb.az, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i156, %bb.ay
  %.162 = phi i1 [ true, %bb.ay ], [ %.061, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i156 ], [ %.061, %bb.az ] ; 2 uses
  %.pn93 = phi { ptr, i32 } [ %i.fj, %bb.ay ], [ %i.fk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i156 ], [ %i.fk, %bb.az ] ; 2 uses
  %i.fq = load ptr, ptr %24, align 8, !tbaa !14   ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 2 uses
  %i.fs = icmp eq ptr %i.fq, %i.fr
  br i1 %i.fs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i159

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i159: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158
  %i.ft = load i64, ptr %i.fr, align 8, !tbaa !19
  %i.fu = add i64 %i.ft, 1
  call void @_ZdlPvm(ptr noundef %i.fq, i64 noundef %i.fu) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i159, %bb.ax
  %.263 = phi i1 [ true, %bb.ax ], [ %.162, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i159 ], [ %.162, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158 ] ; 2 uses
  %.pn93.pn = phi { ptr, i32 } [ %i.fi, %bb.ax ], [ %.pn93, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i159 ], [ %.pn93, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158 ] ; 2 uses
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %28) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #25
  %i.fv = load ptr, ptr %25, align 8, !tbaa !14   ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 2 uses
  %i.fx = icmp eq ptr %i.fv, %i.fw
  br i1 %i.fx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i162

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i162: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161
  %i.fy = load i64, ptr %i.fw, align 8, !tbaa !19
  %i.fz = add i64 %i.fy, 1
  call void @_ZdlPvm(ptr noundef %i.fv, i64 noundef %i.fz) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i162, %bb.aw
  %.364 = phi i1 [ true, %bb.aw ], [ %.263, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i162 ], [ %.263, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161 ] ; 2 uses
  %.pn93.pn.pn = phi { ptr, i32 } [ %i.fh, %bb.aw ], [ %.pn93.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i162 ], [ %.pn93.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161 ] ; 2 uses
  %i.ga = load ptr, ptr %26, align 8, !tbaa !14   ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 2 uses
  %i.gc = icmp eq ptr %i.ga, %i.gb
  br i1 %i.gc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i165

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i165: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164
  %i.gd = load i64, ptr %i.gb, align 8, !tbaa !19
  %i.ge = add i64 %i.gd, 1
  call void @_ZdlPvm(ptr noundef %i.ga, i64 noundef %i.ge) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i165, %bb.av
  %.465 = phi i1 [ true, %bb.av ], [ %.364, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i165 ], [ %.364, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164 ] ; 2 uses
  %.pn93.pn.pn.pn = phi { ptr, i32 } [ %i.fg, %bb.av ], [ %.pn93.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i165 ], [ %.pn93.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #25
  %i.gf = load ptr, ptr %20, align 8, !tbaa !14   ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  %i.gh = icmp eq ptr %i.gf, %i.gg
  br i1 %i.gh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i168

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i168: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167
  %i.gi = load i64, ptr %i.gg, align 8, !tbaa !19
  %i.gj = add i64 %i.gi, 1
  call void @_ZdlPvm(ptr noundef %i.gf, i64 noundef %i.gj) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i168, %bb.au
  %.566 = phi i1 [ true, %bb.au ], [ %.465, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i168 ], [ %.465, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167 ] ; 2 uses
  %.pn93.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ff, %bb.au ], [ %.pn93.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i168 ], [ %.pn93.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167 ] ; 4 uses
  %i.gk = load ptr, ptr %21, align 8, !tbaa !14   ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 2 uses
  %i.gm = icmp eq ptr %i.gk, %i.gl
  br i1 %i.gm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i171

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i171: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170
  %i.gn = load i64, ptr %i.gl, align 8, !tbaa !19
  %i.go = add i64 %i.gn, 1
  call void @_ZdlPvm(ptr noundef %i.gk, i64 noundef %i.go) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i171
  %i.gp = load ptr, ptr %22, align 8, !tbaa !14   ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 2 uses
  %i.gr = icmp eq ptr %i.gp, %i.gq
  br i1 %i.gr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i174

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173.thread: ; preds = %bb.al
  %i.gs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gt = load ptr, ptr %22, align 8, !tbaa !14   ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 2 uses
  %i.gv = icmp eq ptr %i.gt, %i.gu
  br i1 %i.gv, label %.sink.split499.a, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i174.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i174.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173.thread
  %i.gw = load i64, ptr %i.gu, align 8, !tbaa !19
  %i.gx = add i64 %i.gw, 1
  call void @_ZdlPvm(ptr noundef %i.gt, i64 noundef %i.gx) #27
  br label %.sink.split499.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i174: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173
  %i.gy = load i64, ptr %i.gq, align 8, !tbaa !19
  %i.gz = add i64 %i.gy, 1
  call void @_ZdlPvm(ptr noundef %i.gp, i64 noundef %i.gz) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #25
  br i1 %.566, label %bb.ba, label %bb.bs

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #25
  br i1 %.566, label %bb.ba, label %bb.bs

.sink.split499.a:                                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i174.thread
  %.pn93.pn.pn.pn.pn.pn.pn252.ph = phi { ptr, i32 } [ %i.gs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i174.thread ], [ %i.fe, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176.thread ], [ %i.gs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #25
  br label %bb.ba

bb.ba:                                            ; preds = %.sink.split499.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i174, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176
  %.pn93.pn.pn.pn.pn.pn.pn252 = phi { ptr, i32 } [ %.pn93.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i174 ], [ %.pn93.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176 ], [ %.pn93.pn.pn.pn.pn.pn.pn252.ph, %.sink.split499.a ]
  call void @__cxa_free_exception(ptr %i.fc) #25
  br label %bb.bs

bb.bb:                                            ; preds = %bb.aj
  %i.ha = load ptr, ptr %3, align 8, !tbaa !14
  %40 = getelementptr inbounds nuw i8, ptr %i.ha, i64 %i.es
  %i.hb = getelementptr inbounds nuw i8, ptr %40, i64 1
  %i.hc = load i8, ptr %i.hb, align 1, !tbaa !19
  switch i8 %i.hc, label %bb.bc [
    i8 49, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit205
    i8 48, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmRKS4_.exit.thread.fold.split
  ]

bb.bc:                                            ; preds = %bb.bb
  %i.hd = call ptr @__cxa_allocate_exception(i64 40) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %32, ptr noundef nonnull @.str.14, ptr noundef nonnull align 1 dereferenceable(1) %33)
          to label %bb.bd unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit202.thread

bb.bd:                                            ; preds = %bb.bc
  invoke void @_ZN6casadi9trim_pathERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %31, ptr noundef nonnull align 8 dereferenceable(32) %32)
          to label %bb.be unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit199.thread

bb.be:                                            ; preds = %bb.bd
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %30, ptr noundef nonnull align 8 dereferenceable(32) %31, ptr noundef nonnull @.str.8)
          to label %bb.bf unwind label %bb.bl

bb.bf:                                            ; preds = %bb.be
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %36, ptr noundef nonnull @.str.10, ptr noundef nonnull align 1 dereferenceable(1) %37)
          to label %bb.bg unwind label %bb.bm

bb.bg:                                            ; preds = %bb.bf
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %35, ptr noundef nonnull @.str.15, ptr noundef nonnull align 8 dereferenceable(32) %36)
          to label %bb.bh unwind label %bb.bn

bb.bh:                                            ; preds = %bb.bg
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %38, i8 0, i64 24, i1 false), !alias.scope !95
  invoke void @_ZN6casadi6fmtstrERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIS5_SaIS5_EE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %34, ptr noundef nonnull align 8 dereferenceable(32) %35, ptr noundef nonnull align 8 dereferenceable(24) %38)
          to label %bb.bi unwind label %bb.bo

bb.bi:                                            ; preds = %bb.bh
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %29, ptr noundef nonnull align 8 dereferenceable(32) %30, ptr noundef nonnull align 8 dereferenceable(32) %34)
          to label %bb.bj unwind label %bb.bp

bb.bj:                                            ; preds = %bb.bi
  invoke void @_ZN6casadi15CasadiExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.hd, ptr noundef nonnull align 8 dereferenceable(32) %29)
          to label %bb.bk unwind label %bb.bq

bb.bk:                                            ; preds = %bb.bj
  invoke void @__cxa_throw(ptr nonnull %i.hd, ptr nonnull @_ZTIN6casadi15CasadiExceptionE, ptr nonnull @_ZN6casadi15CasadiExceptionD2Ev) #28
          to label %bb.ce unwind label %bb.bq

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit202.thread: ; preds = %bb.bc
  %i.he = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split500

bb.bl:                                            ; preds = %bb.be
  %i.hf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit196

bb.bm:                                            ; preds = %bb.bf
  %i.hg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit193

bb.bn:                                            ; preds = %bb.bg
  %i.hh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit190

bb.bo:                                            ; preds = %bb.bh
  %i.hi = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit187

bb.bp:                                            ; preds = %bb.bi
  %i.hj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit184

bb.bq:                                            ; preds = %bb.bk, %bb.bj
  %.053 = phi i1 [ false, %bb.bk ], [ true, %bb.bj ] ; 2 uses
  %i.hk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hl = load ptr, ptr %29, align 8, !tbaa !14   ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 2 uses
  %i.hn = icmp eq ptr %i.hl, %i.hm
  br i1 %i.hn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit184, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i182

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i182: ; preds = %bb.bq
  %i.ho = load i64, ptr %i.hm, align 8, !tbaa !19
  %i.hp = add i64 %i.ho, 1
  call void @_ZdlPvm(ptr noundef %i.hl, i64 noundef %i.hp) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit184

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit184: ; preds = %bb.bq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i182, %bb.bp
  %.154 = phi i1 [ true, %bb.bp ], [ %.053, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i182 ], [ %.053, %bb.bq ] ; 2 uses
  %.pn101 = phi { ptr, i32 } [ %i.hj, %bb.bp ], [ %i.hk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i182 ], [ %i.hk, %bb.bq ] ; 2 uses
  %i.hq = load ptr, ptr %34, align 8, !tbaa !14   ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %34, i64 16 ; 2 uses
  %i.hs = icmp eq ptr %i.hq, %i.hr
  br i1 %i.hs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit187, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i185

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i185: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit184
  %i.ht = load i64, ptr %i.hr, align 8, !tbaa !19
  %i.hu = add i64 %i.ht, 1
  call void @_ZdlPvm(ptr noundef %i.hq, i64 noundef %i.hu) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit187

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit187: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit184, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i185, %bb.bo
  %.255 = phi i1 [ true, %bb.bo ], [ %.154, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i185 ], [ %.154, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit184 ] ; 2 uses
  %.pn101.pn = phi { ptr, i32 } [ %i.hi, %bb.bo ], [ %.pn101, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i185 ], [ %.pn101, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit184 ] ; 2 uses
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %38) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #25
  %i.hv = load ptr, ptr %35, align 8, !tbaa !14   ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %35, i64 16 ; 2 uses
  %i.hx = icmp eq ptr %i.hv, %i.hw
  br i1 %i.hx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit190, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i188

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i188: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit187
  %i.hy = load i64, ptr %i.hw, align 8, !tbaa !19
  %i.hz = add i64 %i.hy, 1
  call void @_ZdlPvm(ptr noundef %i.hv, i64 noundef %i.hz) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit190

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit190: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit187, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i188, %bb.bn
  %.356 = phi i1 [ true, %bb.bn ], [ %.255, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i188 ], [ %.255, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit187 ] ; 2 uses
  %.pn101.pn.pn = phi { ptr, i32 } [ %i.hh, %bb.bn ], [ %.pn101.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i188 ], [ %.pn101.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit187 ] ; 2 uses
  %i.ia = load ptr, ptr %36, align 8, !tbaa !14   ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %36, i64 16 ; 2 uses
  %i.ic = icmp eq ptr %i.ia, %i.ib
  br i1 %i.ic, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit193, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i191

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i191: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit190
  %i.id = load i64, ptr %i.ib, align 8, !tbaa !19
  %i.ie = add i64 %i.id, 1
  call void @_ZdlPvm(ptr noundef %i.ia, i64 noundef %i.ie) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit193

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit193: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit190, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i191, %bb.bm
  %.457 = phi i1 [ true, %bb.bm ], [ %.356, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i191 ], [ %.356, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit190 ] ; 2 uses
  %.pn101.pn.pn.pn = phi { ptr, i32 } [ %i.hg, %bb.bm ], [ %.pn101.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i191 ], [ %.pn101.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit190 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #25
  %i.if = load ptr, ptr %30, align 8, !tbaa !14   ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 2 uses
  %i.ih = icmp eq ptr %i.if, %i.ig
  br i1 %i.ih, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit196, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i194

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i194: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit193
  %i.ii = load i64, ptr %i.ig, align 8, !tbaa !19
  %i.ij = add i64 %i.ii, 1
  call void @_ZdlPvm(ptr noundef %i.if, i64 noundef %i.ij) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit196

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit196: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit193, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i194, %bb.bl
  %.558 = phi i1 [ true, %bb.bl ], [ %.457, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i194 ], [ %.457, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit193 ] ; 2 uses
  %.pn101.pn.pn.pn.pn = phi { ptr, i32 } [ %i.hf, %bb.bl ], [ %.pn101.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i194 ], [ %.pn101.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit193 ] ; 4 uses
  %i.ik = load ptr, ptr %31, align 8, !tbaa !14   ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 2 uses
  %i.im = icmp eq ptr %i.ik, %i.il
  br i1 %i.im, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit199, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i197

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i197: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit196
  %i.in = load i64, ptr %i.il, align 8, !tbaa !19
  %i.io = add i64 %i.in, 1
  call void @_ZdlPvm(ptr noundef %i.ik, i64 noundef %i.io) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit199

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit199: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit196, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i197
  %i.ip = load ptr, ptr %32, align 8, !tbaa !14   ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %32, i64 16 ; 2 uses
  %i.ir = icmp eq ptr %i.ip, %i.iq
  br i1 %i.ir, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit202, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i200

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit199.thread: ; preds = %bb.bd
  %i.is = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.it = load ptr, ptr %32, align 8, !tbaa !14   ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %32, i64 16 ; 2 uses
  %i.iv = icmp eq ptr %i.it, %i.iu
  br i1 %i.iv, label %.sink.split500, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i200.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i200.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit199.thread
  %i.iw = load i64, ptr %i.iu, align 8, !tbaa !19
  %i.ix = add i64 %i.iw, 1
  call void @_ZdlPvm(ptr noundef %i.it, i64 noundef %i.ix) #27
  br label %.sink.split500

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i200: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit199
  %i.iy = load i64, ptr %i.iq, align 8, !tbaa !19
  %i.iz = add i64 %i.iy, 1
  call void @_ZdlPvm(ptr noundef %i.ip, i64 noundef %i.iz) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #25
end_hunk_0
begin_hunk_1_@_ZN6casadi16ImporterInternal9read_metaERSiRx:bb.a
  %i.cu = load i64, ptr %i.cs, align 8, !tbaa !19
  %i.cv = add i64 %i.cu, 1
  call void @_ZdlPvm(ptr noundef %i.cr, i64 noundef %i.cv) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i143, %bb.w
  %.273 = phi i1 [ true, %bb.w ], [ %.172, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i143 ], [ %.172, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142 ] ; 2 uses
  %.pn94.pn = phi { ptr, i32 } [ %i.cj, %bb.w ], [ %.pn94, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i143 ], [ %.pn94, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142 ] ; 2 uses
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %13) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  %i.cw = load ptr, ptr %10, align 8, !tbaa !14   ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.cy = icmp eq ptr %i.cw, %i.cx
  br i1 %i.cy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i146

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i146: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145
  %i.cz = load i64, ptr %i.cx, align 8, !tbaa !19
  %i.da = add i64 %i.cz, 1
  call void @_ZdlPvm(ptr noundef %i.cw, i64 noundef %i.da) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i146, %bb.v
  %.374 = phi i1 [ true, %bb.v ], [ %.273, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i146 ], [ %.273, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145 ] ; 2 uses
  %.pn94.pn.pn = phi { ptr, i32 } [ %i.ci, %bb.v ], [ %.pn94.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i146 ], [ %.pn94.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145 ] ; 2 uses
  %i.db = load ptr, ptr %11, align 8, !tbaa !14   ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.dd = icmp eq ptr %i.db, %i.dc
  br i1 %i.dd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i149

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i149: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148
  %i.de = load i64, ptr %i.dc, align 8, !tbaa !19
  %i.df = add i64 %i.de, 1
  call void @_ZdlPvm(ptr noundef %i.db, i64 noundef %i.df) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i149, %bb.u
  %.475 = phi i1 [ true, %bb.u ], [ %.374, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i149 ], [ %.374, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148 ] ; 2 uses
  %.pn94.pn.pn.pn = phi { ptr, i32 } [ %i.ch, %bb.u ], [ %.pn94.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i149 ], [ %.pn94.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148 ] ; 2 uses
  %i.dg = load ptr, ptr %12, align 8, !tbaa !14   ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.di = icmp eq ptr %i.dg, %i.dh
  br i1 %i.di, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i152

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i152: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151
  %i.dj = load i64, ptr %i.dh, align 8, !tbaa !19
  %i.dk = add i64 %i.dj, 1
  call void @_ZdlPvm(ptr noundef %i.dg, i64 noundef %i.dk) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i152, %bb.t
  %.576 = phi i1 [ true, %bb.t ], [ %.475, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i152 ], [ %.475, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151 ] ; 2 uses
  %.pn94.pn.pn.pn.pn = phi { ptr, i32 } [ %i.cg, %bb.t ], [ %.pn94.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i152 ], [ %.pn94.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  %i.dl = load ptr, ptr %5, align 8, !tbaa !14    ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.dn = icmp eq ptr %i.dl, %i.dm
  br i1 %i.dn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i155

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i155: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154
  %i.do = load i64, ptr %i.dm, align 8, !tbaa !19
  %i.dp = add i64 %i.do, 1
  call void @_ZdlPvm(ptr noundef %i.dl, i64 noundef %i.dp) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i155, %bb.s
  %.677 = phi i1 [ true, %bb.s ], [ %.576, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i155 ], [ %.576, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154 ] ; 2 uses
  %.pn94.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.cf, %bb.s ], [ %.pn94.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i155 ], [ %.pn94.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154 ] ; 4 uses
  %i.dq = load ptr, ptr %6, align 8, !tbaa !14    ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ds = icmp eq ptr %i.dq, %i.dr
  br i1 %i.ds, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i158

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i158: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157
  %i.dt = load i64, ptr %i.dr, align 8, !tbaa !19
  %i.du = add i64 %i.dt, 1
  call void @_ZdlPvm(ptr noundef %i.dq, i64 noundef %i.du) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i158
  %i.dv = load ptr, ptr %7, align 8, !tbaa !14    ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.dx = icmp eq ptr %i.dv, %i.dw
  br i1 %i.dx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i161

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160.thread: ; preds = %bb.j
  %i.dy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dz = load ptr, ptr %7, align 8, !tbaa !14    ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.eb = icmp eq ptr %i.dz, %i.ea
  br i1 %i.eb, label %.sink.split, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i161.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i161.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160.thread
  %i.ec = load i64, ptr %i.ea, align 8, !tbaa !19
  %i.ed = add i64 %i.ec, 1
  call void @_ZdlPvm(ptr noundef %i.dz, i64 noundef %i.ed) #27
  br label %.sink.split

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i161: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160
  %i.ee = load i64, ptr %i.dw, align 8, !tbaa !19
  %i.ef = add i64 %i.ee, 1
  call void @_ZdlPvm(ptr noundef %i.dv, i64 noundef %i.ef) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br i1 %.677, label %bb.z, label %bb.dr

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br i1 %.677, label %bb.z, label %bb.dr

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i161.thread
  %.pn94.pn.pn.pn.pn.pn.pn.pn304.ph = phi { ptr, i32 } [ %i.dy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i161.thread ], [ %i.ce, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163.thread ], [ %i.dy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %bb.z

bb.z:                                             ; preds = %.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i161, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163
  %.pn94.pn.pn.pn.pn.pn.pn.pn304 = phi { ptr, i32 } [ %.pn94.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i161 ], [ %.pn94.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163 ], [ %.pn94.pn.pn.pn.pn.pn.pn.pn304.ph, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.cd) #25
  br label %bb.dr

bb.aa:                                            ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #25
  %i.eg = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 noundef signext 32, i64 noundef 0) #25
  call void @llvm.experimental.noalias.scope.decl(metadata !105)
  %i.eh = load i64, ptr %i.f, align 8, !tbaa !17, !noalias !105 ; 2 uses
  %i.ei = icmp eq i64 %i.eh, 0
  br i1 %i.ei, label %bb.ab, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i

bb.ab:                                            ; preds = %bb.aa
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.62, i64 noundef 1, i64 noundef 0) #28
          to label %.noexc164 unwind label %.loopexit.split-lp366

.noexc164:                                        ; preds = %bb.ab
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i: ; preds = %bb.aa
  %i.ej = add i64 %i.eg, -1
  store ptr %i.m, ptr %14, align 8, !tbaa !10, !alias.scope !105
  %i.ek = load ptr, ptr %3, align 8, !tbaa !14, !noalias !105
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 1 ; 2 uses
  %i.em = add i64 %i.eh, -1
  %spec.select.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.ej, i64 %i.em) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #25, !noalias !105
  store i64 %spec.select.i.i.i, ptr %i.d, align 8, !tbaa !18, !noalias !105
  %i.en = icmp ugt i64 %spec.select.i.i.i, 15
  br i1 %i.en, label %.noexc10.i.i, label %._crit_edge.i.i.i

.noexc10.i.i:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.eo = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc165 unwind label %.loopexit365 ; 2 uses

.noexc165:                                        ; preds = %.noexc10.i.i
  store ptr %i.eo, ptr %14, align 8, !tbaa !14, !alias.scope !105
  %i.ep = load i64, ptr %i.d, align 8, !tbaa !18, !noalias !105
  store i64 %i.ep, ptr %i.m, align 8, !tbaa !19, !alias.scope !105
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc165, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.eq = phi ptr [ %i.eo, %.noexc165 ], [ %i.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i ] ; 2 uses
  switch i64 %spec.select.i.i.i, label %bb.ad [
    i64 1, label %bb.ac
    i64 0, label %bb.ae
  ]

bb.ac:                                            ; preds = %._crit_edge.i.i.i
  %i.er = load i8, ptr %i.el, align 1, !tbaa !19
  store i8 %i.er, ptr %i.eq, align 1, !tbaa !19
  br label %bb.ae

bb.ad:                                            ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.eq, ptr nonnull align 1 %i.el, i64 %spec.select.i.i.i, i1 false)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %._crit_edge.i.i.i
  %i.es = load i64, ptr %i.d, align 8, !tbaa !18, !noalias !105 ; 2 uses
  store i64 %i.es, ptr %i.n, align 8, !tbaa !17, !alias.scope !105
  %i.et = load ptr, ptr %14, align 8, !tbaa !14, !alias.scope !105
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.es
  store i8 0, ptr %i.eu, align 1, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25, !noalias !105
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #25
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %15)
          to label %bb.af unwind label %bb.at

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #25
  %i.ev = load i64, ptr %i.n, align 8, !tbaa !17  ; 2 uses
  %i.ew = add i64 %i.ev, 2                        ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !108)
  %i.ex = load i64, ptr %i.f, align 8, !tbaa !17, !noalias !108 ; 3 uses
  %i.ey = icmp ugt i64 %i.ew, %i.ex
  br i1 %i.ey, label %bb.ag, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i166

bb.ag:                                            ; preds = %bb.af
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.62, i64 noundef %i.ew, i64 noundef %i.ex) #28
          to label %.noexc170 unwind label %.loopexit.split-lp371

.noexc170:                                        ; preds = %bb.ag
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i166: ; preds = %bb.af
  store ptr %i.o, ptr %16, align 8, !tbaa !10, !alias.scope !108
  %i.ez = load ptr, ptr %3, align 8, !tbaa !14, !noalias !108
  %49 = getelementptr i8, ptr %i.ez, i64 %i.ev
  %i.fa = getelementptr i8, ptr %49, i64 2        ; 2 uses
  %i.fb = sub nuw i64 %i.ex, %i.ew                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25, !noalias !108
  store i64 %i.fb, ptr %i.c, align 8, !tbaa !18, !noalias !108
  %i.fc = icmp ugt i64 %i.fb, 15
  br i1 %i.fc, label %.noexc10.i.i169, label %._crit_edge.i.i.i168

.noexc10.i.i169:                                  ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i166
  %i.fd = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc171 unwind label %.loopexit370 ; 2 uses

.noexc171:                                        ; preds = %.noexc10.i.i169
  store ptr %i.fd, ptr %16, align 8, !tbaa !14, !alias.scope !108
  %i.fe = load i64, ptr %i.c, align 8, !tbaa !18, !noalias !108
  store i64 %i.fe, ptr %i.o, align 8, !tbaa !19, !alias.scope !108
  br label %._crit_edge.i.i.i168

._crit_edge.i.i.i168:                             ; preds = %.noexc171, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i166
  %i.ff = phi ptr [ %i.fd, %.noexc171 ], [ %i.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i166 ] ; 2 uses
  switch i64 %i.fb, label %bb.ai [
    i64 1, label %bb.ah
    i64 0, label %bb.aj
  ]

bb.ah:                                            ; preds = %._crit_edge.i.i.i168
  %i.fg = load i8, ptr %i.fa, align 1, !tbaa !19
  store i8 %i.fg, ptr %i.ff, align 1, !tbaa !19
  br label %bb.aj

bb.ai:                                            ; preds = %._crit_edge.i.i.i168
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ff, ptr align 1 %i.fa, i64 %i.fb, i1 false)
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah, %._crit_edge.i.i.i168
  %i.fh = load i64, ptr %i.c, align 8, !tbaa !18, !noalias !108 ; 2 uses
  store i64 %i.fh, ptr %i.p, align 8, !tbaa !17, !alias.scope !108
  %i.fi = load ptr, ptr %16, align 8, !tbaa !14, !alias.scope !108
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 %i.fh
  store i8 0, ptr %i.fj, align 1, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25, !noalias !108
  %i.fk = load ptr, ptr %3, align 8, !tbaa !14    ; 6 uses
  %i.fl = icmp eq ptr %i.fk, %i.e
  %i.fm = load ptr, ptr %16, align 8, !tbaa !14   ; 5 uses
  %i.fn = icmp eq ptr %i.fm, %i.o                 ; 2 uses
  br i1 %i.fl, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.aj
  br i1 %i.fn, label %bb.ak, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.aj
  br i1 %i.fn, label %bb.ak, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.ak:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.fo = load i64, ptr %i.p, align 8, !tbaa !17  ; 3 uses
  %i.fp = icmp ult i64 %i.fo, 16
  call void @llvm.assume(i1 %i.fp)
  switch i64 %i.fo, label %bb.am [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.al
  ]

bb.al:                                            ; preds = %bb.ak
  %i.fq = load i8, ptr %i.fm, align 1, !tbaa !19
  store i8 %i.fq, ptr %i.fk, align 1, !tbaa !19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.am:                                            ; preds = %bb.ak
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fk, ptr align 1 %i.fm, i64 %i.fo, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.am, %bb.al, %bb.ak
  %i.fr = load i64, ptr %i.p, align 8, !tbaa !17  ; 2 uses
  store i64 %i.fr, ptr %i.f, align 8, !tbaa !17
  %i.fs = load ptr, ptr %3, align 8, !tbaa !14
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 %i.fr
  store i8 0, ptr %i.ft, align 1, !tbaa !19
  %.pre.i = load ptr, ptr %16, align 8, !tbaa !14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.fm, ptr %3, align 8, !tbaa !14
  %i.fu = load <2 x i64>, ptr %i.p, align 8, !tbaa !19
  store <2 x i64> %i.fu, ptr %i.f, align 8, !tbaa !19
  br label %bb.ao

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.fv = load i64, ptr %i.e, align 8, !tbaa !19
  store ptr %i.fm, ptr %3, align 8, !tbaa !14
  %i.fw = load <2 x i64>, ptr %i.p, align 8, !tbaa !19
  store <2 x i64> %i.fw, ptr %i.f, align 8, !tbaa !19
  %.not.i173 = icmp eq ptr %i.fk, null
  br i1 %.not.i173, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.fk, ptr %16, align 8, !tbaa !14
  store i64 %i.fv, ptr %i.o, align 8, !tbaa !19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.ao:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.o, ptr %16, align 8, !tbaa !14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.an, %bb.ao
  %i.fx = phi ptr [ %i.fk, %bb.an ], [ %i.o, %bb.ao ], [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  store i64 0, ptr %i.p, align 8, !tbaa !17
  store i8 0, ptr %i.fx, align 1, !tbaa !19
  %i.fy = load ptr, ptr %16, align 8, !tbaa !14   ; 2 uses
  %i.fz = icmp eq ptr %i.fy, %i.o
  br i1 %i.fz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i174

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i174: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.ga = load i64, ptr %i.o, align 8, !tbaa !19
  %i.gb = add i64 %i.ga, 1
  call void @_ZdlPvm(ptr noundef %i.fy, i64 noundef %i.gb) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i174
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #25
  br label %bb.ap

bb.ap:                                            ; preds = %bb.bt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176
  %i.gc = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 noundef signext 92, i64 noundef 0) #25 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #25
  call void @llvm.experimental.noalias.scope.decl(metadata !111)
  %i.gd = load i64, ptr %i.f, align 8, !tbaa !17, !noalias !111
  store ptr %i.r, ptr %17, align 8, !tbaa !10, !alias.scope !111
  %i.ge = load ptr, ptr %3, align 8, !tbaa !14, !noalias !111 ; 2 uses
  %spec.select.i.i.i178 = call noundef i64 @llvm.umin.i64(i64 %i.gc, i64 %i.gd) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25, !noalias !111
  store i64 %spec.select.i.i.i178, ptr %i.b, align 8, !tbaa !18, !noalias !111
  %i.gf = icmp ugt i64 %spec.select.i.i.i178, 15
  br i1 %i.gf, label %.noexc10.i.i180, label %._crit_edge.i.i.i179

.noexc10.i.i180:                                  ; preds = %bb.ap
  %i.gg = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc181 unwind label %bb.av ; 2 uses

.noexc181:                                        ; preds = %.noexc10.i.i180
  store ptr %i.gg, ptr %17, align 8, !tbaa !14, !alias.scope !111
  %i.gh = load i64, ptr %i.b, align 8, !tbaa !18, !noalias !111
  store i64 %i.gh, ptr %i.r, align 8, !tbaa !19, !alias.scope !111
  br label %._crit_edge.i.i.i179

._crit_edge.i.i.i179:                             ; preds = %.noexc181, %bb.ap
  %i.gi = phi ptr [ %i.gg, %.noexc181 ], [ %i.r, %bb.ap ] ; 2 uses
  switch i64 %spec.select.i.i.i178, label %bb.ar [
    i64 1, label %bb.aq
    i64 0, label %bb.as
  ]

bb.aq:                                            ; preds = %._crit_edge.i.i.i179
  %i.gj = load i8, ptr %i.ge, align 1, !tbaa !19
  store i8 %i.gj, ptr %i.gi, align 1, !tbaa !19
  br label %bb.as

bb.ar:                                            ; preds = %._crit_edge.i.i.i179
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gi, ptr align 1 %i.ge, i64 %spec.select.i.i.i178, i1 false)
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq, %._crit_edge.i.i.i179
  %i.gk = load i64, ptr %i.b, align 8, !tbaa !18, !noalias !111 ; 2 uses
  store i64 %i.gk, ptr %i.s, align 8, !tbaa !17, !alias.scope !111
  %i.gl = load ptr, ptr %17, align 8, !tbaa !14, !alias.scope !111
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 %i.gk
  store i8 0, ptr %i.gm, align 1, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25, !noalias !111
  %i.gn = load ptr, ptr %17, align 8, !tbaa !14
  %i.go = load i64, ptr %i.s, align 8, !tbaa !17
  %i.gp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef %i.gn, i64 noundef %i.go)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.aw ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.as
  %i.gq = load ptr, ptr %17, align 8, !tbaa !14   ; 2 uses
  %i.gr = icmp eq ptr %i.gq, %i.r
  br i1 %i.gr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit186, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i184

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i184: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.gs = load i64, ptr %i.r, align 8, !tbaa !19
  %i.gt = add i64 %i.gs, 1
  call void @_ZdlPvm(ptr noundef %i.gq, i64 noundef %i.gt) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit186

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit186: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i184
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #25
  %i.gu = icmp eq i64 %i.gc, -1
  br i1 %i.gu, label %bb.bu, label %bb.ax

.loopexit365:                                     ; preds = %.noexc10.i.i
  %lpad.loopexit367 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit270

.loopexit.split-lp366:                            ; preds = %bb.ab
  %lpad.loopexit.split-lp368 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit270

bb.at:                                            ; preds = %bb.ae
  %i.gv = landingpad { ptr, i32 }
          cleanup
  br label %bb.dc
end_hunk_1
