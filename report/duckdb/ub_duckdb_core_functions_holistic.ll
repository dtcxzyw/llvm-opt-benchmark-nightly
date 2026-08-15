inline.NumInlined: 37317
inline.NumDeleted: 10738
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 60
loop-unroll.NumUnrolled: 80
begin_hunk_0_@_ZN6duckdbL17CastExceptionTextIffEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_:bb.a

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49
  %i.cr = load ptr, ptr %3, align 8, !tbaa !22    ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ct = icmp eq ptr %i.cr, %i.cs
  br i1 %i.ct, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51
  call void @_ZdlPv(ptr noundef %i.cr) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52
  %i.cu = load ptr, ptr %7, align 8, !tbaa !22    ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.cw = icmp eq ptr %i.cu, %i.cv
  br i1 %i.cw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54
  call void @_ZdlPv(ptr noundef %i.cu) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  %i.cx = load ptr, ptr %4, align 8, !tbaa !22    ; 2 uses
  %i.cy = icmp eq ptr %i.cx, %i.q
  br i1 %i.cy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57
  call void @_ZdlPv(ptr noundef %i.cx) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58
  %i.cz = load ptr, ptr %5, align 8, !tbaa !22    ; 2 uses
  %i.da = icmp eq ptr %i.cz, %i.b
  br i1 %i.da, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60
  call void @_ZdlPv(ptr noundef %i.cz) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61
  %i.db = load ptr, ptr %6, align 8, !tbaa !22    ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.dd = icmp eq ptr %i.db, %i.dc
  br i1 %i.dd, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i65, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63
  call void @_ZdlPv(ptr noundef %i.db) #34
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i65

bb.r:                                             ; preds = %bb.a
  %i.de = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84

bb.s:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %bb.d
  %i.df = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81

bb.t:                                             ; preds = %bb.f
  %i.dg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78

bb.u:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, %bb.k, %.critedge.i
  %i.dh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75

bb.v:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i39, %bb.m
  %i.di = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72

bb.w:                                             ; preds = %bb.o
  %i.dj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69

bb.x:                                             ; preds = %bb.p
  %i.dk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dl = load ptr, ptr %8, align 8, !tbaa !22    ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.dn = icmp eq ptr %i.dl, %i.dm
  br i1 %i.dn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67: ; preds = %bb.x
  call void @_ZdlPv(ptr noundef %i.dl) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67, %bb.w
  %.pn22 = phi { ptr, i32 } [ %i.dj, %bb.w ], [ %i.dk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67 ], [ %i.dk, %bb.x ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  %i.do = load ptr, ptr %2, align 8, !tbaa !22    ; 2 uses
  %i.dp = icmp eq ptr %i.do, %i.ca
  br i1 %i.dp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69
  call void @_ZdlPv(ptr noundef %i.do) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70, %bb.v
  %.pn22.pn = phi { ptr, i32 } [ %i.di, %bb.v ], [ %.pn22, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70 ], [ %.pn22, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69 ] ; 2 uses
  %i.dq = load ptr, ptr %3, align 8, !tbaa !22    ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ds = icmp eq ptr %i.dq, %i.dr
  br i1 %i.ds, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72
  call void @_ZdlPv(ptr noundef %i.dq) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73, %bb.u
  %.pn22.pn.pn = phi { ptr, i32 } [ %i.dh, %bb.u ], [ %.pn22.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73 ], [ %.pn22.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72 ] ; 2 uses
  %i.dt = load ptr, ptr %7, align 8, !tbaa !22    ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.dv = icmp eq ptr %i.dt, %i.du
  br i1 %i.dv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75
  call void @_ZdlPv(ptr noundef %i.dt) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76, %bb.t
  %.pn22.pn.pn.pn = phi { ptr, i32 } [ %i.dg, %bb.t ], [ %.pn22.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76 ], [ %.pn22.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  %i.dw = load ptr, ptr %4, align 8, !tbaa !22    ; 2 uses
  %i.dx = icmp eq ptr %i.dw, %i.q
  br i1 %i.dx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78
  call void @_ZdlPv(ptr noundef %i.dw) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79, %bb.s
  %.pn22.pn.pn.pn.pn = phi { ptr, i32 } [ %i.df, %bb.s ], [ %.pn22.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79 ], [ %.pn22.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78 ] ; 2 uses
  %i.dy = load ptr, ptr %5, align 8, !tbaa !22    ; 2 uses
  %i.dz = icmp eq ptr %i.dy, %i.b
  br i1 %i.dz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81
  call void @_ZdlPv(ptr noundef %i.dy) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82, %bb.r
  %.pn22.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.de, %bb.r ], [ %.pn22.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82 ], [ %.pn22.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81 ]
  %i.ea = load ptr, ptr %6, align 8, !tbaa !22    ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ec = icmp eq ptr %i.ea, %i.eb
  br i1 %i.ec, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i86, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84
  call void @_ZdlPv(ptr noundef %i.ea) #34
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i86

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i65: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  ret void

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i86: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  resume { ptr, i32 } %.pn22.pn.pn.pn.pn.pn
}

declare void @_ZN6duckdb15ConvertToString9OperationIfEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, float noundef) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZSt11nth_elementIPfN6duckdb15QuantileCompareINS1_12_GLOBAL__N_111MadAccessorIfffEEEEEvT_S7_S7_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readonly byval(%"struct.duckdb::QuantileCompare.390") align 8 captures(none) %3) unnamed_addr #7 {
bb.a:
  %i.a = alloca float, align 4                    ; 8 uses
  %i.b = alloca float, align 4                    ; 8 uses
  %i.c = alloca float, align 4                    ; 6 uses
  %i.d = alloca float, align 4                    ; 6 uses
  %i.e = alloca float, align 4                    ; 8 uses
  %i.f = alloca float, align 4                    ; 8 uses
  %i.g = alloca float, align 4                    ; 8 uses
  %i.h = alloca float, align 4                    ; 8 uses
  %i.i = alloca float, align 4                    ; 6 uses
  %i.j = alloca float, align 4                    ; 6 uses
  %i.k = alloca float, align 4                    ; 6 uses
  %i.l = alloca float, align 4                    ; 6 uses
  %i.m = alloca float, align 4                    ; 6 uses
  %i.n = alloca float, align 4                    ; 6 uses
  %i.o = alloca float, align 4                    ; 6 uses
  %i.p = alloca float, align 4                    ; 6 uses
  %i.q = alloca float, align 4                    ; 6 uses
  %i.r = alloca float, align 4                    ; 6 uses
  %i.s = alloca float, align 4                    ; 8 uses
  %i.t = alloca float, align 4                    ; 8 uses
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.392", align 8 ; 9 uses
  %.sroa.10 = alloca [7 x i8], align 1            ; 4 uses
  %i.u = icmp eq ptr %0, %2
  %i.v = icmp eq ptr %1, %2
  %or.cond = or i1 %i.u, %i.v
  br i1 %or.cond, label %bb.u, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.w = ptrtoint ptr %2 to i64
  %i.x = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.y = sub i64 %i.w, %i.x                       ; 3 uses
  %i.z = ashr exact i64 %i.y, 2
  %i.aa = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.z, i1 true) ; 2 uses
  %i.ab = shl nuw nsw i64 %i.aa, 1
  %i.ac = xor i64 %i.ab, 126
  %.sroa.016.0.copyload = load ptr, ptr %3, align 8, !tbaa !2029 ; 15 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !2029 ; 15 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.3.0.copyload = load i8, ptr %.sroa.3.0..sroa_idx, align 8, !tbaa !247 ; 4 uses
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 17
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.10, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.417.0..sroa_idx, i64 7, i1 false)
  %i.ad = icmp sgt i64 %i.y, 12
  br i1 %i.ad, label %.lr.ph.i.preheader, label %._crit_edge.i

.lr.ph.i.preheader:                               ; preds = %bb.b
  %i.ae = icmp eq i64 %i.aa, 63
  br i1 %i.ae, label %.lr.ph.i._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.i.preheader
  %i.af = trunc nuw i8 %.sroa.3.0.copyload to i1  ; 5 uses
  br label %bb.i

.lr.ph.i:                                         ; preds = %_ZSt27__unguarded_partition_pivotIPfN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIfffEEEEEEET_SB_SB_T0_.exit.i
  %i.ag = icmp eq i64 %i.bo, 0
  br i1 %i.ag, label %.lr.ph.i._crit_edge, label %bb.i, !llvm.loop !2186

.lr.ph.i._crit_edge:                              ; preds = %.lr.ph.i, %.lr.ph.i.preheader
  %.lcssa24 = phi i64 [ %i.x, %.lr.ph.i.preheader ], [ %i.ea, %.lr.ph.i ]
  %.054.i.lcssa = phi ptr [ %0, %.lr.ph.i.preheader ], [ %.0..i, %.lr.ph.i ] ; 10 uses
  %.01750.i.lcssa = phi ptr [ %2, %.lr.ph.i.preheader ], [ %..017.i, %.lr.ph.i ] ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store ptr %.sroa.016.0.copyload, ptr %4, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %.sroa.2.0.copyload, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i8 %.sroa.3.0.copyload, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.10.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.10, i64 7, i1 false)
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = sub i64 %i.ai, %.lcssa24
  %i.ak = ashr exact i64 %i.aj, 2                 ; 5 uses
  %i.al = icmp slt i64 %i.ak, 2
  br i1 %i.al, label %_ZSt11__make_heapIPfN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIfffEEEEEEEvT_SB_RT0_.exit.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i._crit_edge
  %i.am = add nsw i64 %i.ak, -2
  %i.an = lshr i64 %i.am, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %.014.i.i.i = phi i64 [ %i.an, %bb.c ], [ %i.aq, %bb.d ] ; 4 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %.054.i.lcssa, i64 %.014.i.i.i
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !1313
  call fastcc void @_ZSt13__adjust_heapIPflfN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIfffEEEEEEEvT_T0_SC_T1_T2_(ptr noundef %.054.i.lcssa, i64 noundef %.014.i.i.i, i64 noundef %i.ak, float noundef %i.ap, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.392") align 8 %4)
  %.not.i.i.i = icmp eq i64 %.014.i.i.i, 0
  %i.aq = add nsw i64 %.014.i.i.i, -1
  br i1 %.not.i.i.i, label %_ZSt11__make_heapIPfN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIfffEEEEEEEvT_SB_RT0_.exit.i.i, label %bb.d, !llvm.loop !2187

_ZSt11__make_heapIPfN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIfffEEEEEEEvT_SB_RT0_.exit.i.i: ; preds = %bb.d, %.lr.ph.i._crit_edge
  %i.ar = icmp ult ptr %i.ah, %.01750.i.lcssa
  br i1 %i.ar, label %.lr.ph.i.i, label %_ZSt13__heap_selectIPfN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIfffEEEEEEEvT_SB_SB_T0_.exit.i

.lr.ph.i.i:                                       ; preds = %_ZSt11__make_heapIPfN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIfffEEEEEEEvT_SB_RT0_.exit.i.i
  %i.as = trunc nuw i8 %.sroa.3.0.copyload to i1
  br i1 %i.as, label %.split.us.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS2_12_GLOBAL__N_111MadAccessorIfffEEEEEclIPfSA_EEbT_T0_.exit.i.i

.split.us.i.i:                                    ; preds = %.lr.ph.i.i, %bb.f
  %.011.us.i.i = phi ptr [ %i.ba, %bb.f ], [ %i.ah, %.lr.ph.i.i ] ; 4 uses
  %.0.val.us.i.i = load float, ptr %.011.us.i.i, align 4, !tbaa !1313
  %.val.us.i.i = load float, ptr %.054.i.lcssa, align 4, !tbaa !1313
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #30
  %.val4.i.i.us.i.i = load ptr, ptr %.sroa.016.0.copyload, align 8, !tbaa !2067
  %.val4.val.i.i.us.i.i = load float, ptr %.val4.i.i.us.i.i, align 4, !tbaa !1313
  %i.at = fsub float %.0.val.us.i.i, %.val4.val.i.i.us.i.i
  %i.au = call noundef float @llvm.fabs.f32(float %i.at)
  store float %i.au, ptr %i.s, align 4, !tbaa !1313
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t) #30
  %.val.i.i.us.i.i = load ptr, ptr %.sroa.2.0.copyload, align 8, !tbaa !2067
  %.val.val.i.i.us.i.i = load float, ptr %.val.i.i.us.i.i, align 4, !tbaa !1313
  %i.av = fsub float %.val.us.i.i, %.val.val.i.i.us.i.i
  %i.aw = call noundef float @llvm.fabs.f32(float %i.av)
  store float %i.aw, ptr %i.t, align 4, !tbaa !1313
  %i.ax = call noundef zeroext i1 @_ZN6duckdb11GreaterThan9OperationIfEEbRKT_S4_(ptr noundef nonnull align 4 dereferenceable(4) %i.s, ptr noundef nonnull align 4 dereferenceable(4) %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #30
  br i1 %i.ax, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.split.us.i.i
  %i.ay = load float, ptr %.011.us.i.i, align 4, !tbaa !1313
  %i.az = load float, ptr %.054.i.lcssa, align 4, !tbaa !1313
  store float %i.az, ptr %.011.us.i.i, align 4, !tbaa !1313
  call fastcc void @_ZSt13__adjust_heapIPflfN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIfffEEEEEEEvT_T0_SC_T1_T2_(ptr noundef nonnull %.054.i.lcssa, i64 noundef 0, i64 noundef %i.ak, float noundef %i.ay, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.392") align 8 %4)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.split.us.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %.011.us.i.i, i64 4 ; 2 uses
  %i.bb = icmp ult ptr %i.ba, %.01750.i.lcssa
  br i1 %i.bb, label %.split.us.i.i, label %_ZSt13__heap_selectIPfN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIfffEEEEEEEvT_SB_SB_T0_.exit.i, !llvm.loop !2188

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS2_12_GLOBAL__N_111MadAccessorIfffEEEEEclIPfSA_EEbT_T0_.exit.i.i: ; preds = %.lr.ph.i.i, %bb.h
  %.011.i.i = phi ptr [ %i.bj, %bb.h ], [ %i.ah, %.lr.ph.i.i ] ; 4 uses
  %.0.val.i.i = load float, ptr %.011.i.i, align 4, !tbaa !1313
  %.val.i.i = load float, ptr %.054.i.lcssa, align 4, !tbaa !1313
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #30
  %.val4.i.i.i.i = load ptr, ptr %.sroa.016.0.copyload, align 8, !tbaa !2067
  %.val4.val.i.i.i.i = load float, ptr %.val4.i.i.i.i, align 4, !tbaa !1313
  %i.bc = fsub float %.0.val.i.i, %.val4.val.i.i.i.i
  %i.bd = call noundef float @llvm.fabs.f32(float %i.bc)
  store float %i.bd, ptr %i.s, align 4, !tbaa !1313
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t) #30
  %.val.i.i.i.i = load ptr, ptr %.sroa.2.0.copyload, align 8, !tbaa !2067
  %.val.val.i.i.i.i = load float, ptr %.val.i.i.i.i, align 4, !tbaa !1313
  %i.be = fsub float %.val.i.i, %.val.val.i.i.i.i
  %i.bf = call noundef float @llvm.fabs.f32(float %i.be)
  store float %i.bf, ptr %i.t, align 4, !tbaa !1313
  %i.bg = call noundef zeroext i1 @_ZN6duckdb11GreaterThan9OperationIfEEbRKT_S4_(ptr noundef nonnull align 4 dereferenceable(4) %i.t, ptr noundef nonnull align 4 dereferenceable(4) %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #30
  br i1 %i.bg, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS2_12_GLOBAL__N_111MadAccessorIfffEEEEEclIPfSA_EEbT_T0_.exit.i.i
  %i.bh = load float, ptr %.011.i.i, align 4, !tbaa !1313
  %i.bi = load float, ptr %.054.i.lcssa, align 4, !tbaa !1313
  store float %i.bi, ptr %.011.i.i, align 4, !tbaa !1313
  call fastcc void @_ZSt13__adjust_heapIPflfN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIfffEEEEEEEvT_T0_SC_T1_T2_(ptr noundef nonnull %.054.i.lcssa, i64 noundef 0, i64 noundef %i.ak, float noundef %i.bh, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.392") align 8 %4)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS2_12_GLOBAL__N_111MadAccessorIfffEEEEEclIPfSA_EEbT_T0_.exit.i.i
  %i.bj = getelementptr inbounds nuw i8, ptr %.011.i.i, i64 4 ; 2 uses
  %i.bk = icmp ult ptr %i.bj, %.01750.i.lcssa
  br i1 %i.bk, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS2_12_GLOBAL__N_111MadAccessorIfffEEEEEclIPfSA_EEbT_T0_.exit.i.i, label %_ZSt13__heap_selectIPfN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIfffEEEEEEEvT_SB_SB_T0_.exit.i, !llvm.loop !2188

_ZSt13__heap_selectIPfN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIfffEEEEEEEvT_SB_SB_T0_.exit.i: ; preds = %bb.h, %bb.f, %_ZSt11__make_heapIPfN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIfffEEEEEEEvT_SB_RT0_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.bl = load float, ptr %.054.i.lcssa, align 4, !tbaa !1313
  %i.bm = load float, ptr %1, align 4, !tbaa !1313
  store float %i.bm, ptr %.054.i.lcssa, align 4, !tbaa !1313
  store float %i.bl, ptr %1, align 4, !tbaa !1313
  br label %_ZSt13__introselectIPflN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIfffEEEEEEEvT_SB_SB_T0_T1_.exit

bb.i:                                             ; preds = %.lr.ph, %.lr.ph.i
  %.01750.i31 = phi ptr [ %2, %.lr.ph ], [ %..017.i, %.lr.ph.i ] ; 4 uses
  %.01653.i30 = phi i64 [ %i.ac, %.lr.ph ], [ %i.bo, %.lr.ph.i ]
  %.054.i27 = phi ptr [ %0, %.lr.ph ], [ %.0..i, %.lr.ph.i ] ; 9 uses
  %i.bn = phi i64 [ %i.y, %.lr.ph ], [ %i.eb, %.lr.ph.i ]
  %i.bo = add nsw i64 %.01653.i30, -1             ; 2 uses
  %i.bp = lshr i64 %i.bn, 3
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %.054.i27, i64 %i.bp ; 7 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.054.i27, i64 4 ; 9 uses
  %i.bs = getelementptr inbounds i8, ptr %.01750.i31, i64 -4 ; 8 uses
  %.val29.i.i.i = load float, ptr %i.br, align 4, !tbaa !1313
  %.val30.i.i.i = load float, ptr %i.bq, align 4, !tbaa !1313
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #30
  %.val4.i.i.i.i.i = load ptr, ptr %.sroa.016.0.copyload, align 8, !tbaa !2067
  %.val4.val.i.i.i.i.i = load float, ptr %.val4.i.i.i.i.i, align 4, !tbaa !1313
  %i.bt = fsub float %.val29.i.i.i, %.val4.val.i.i.i.i.i
  %i.bu = call noundef float @llvm.fabs.f32(float %i.bt)
  store float %i.bu, ptr %i.q, align 4, !tbaa !1313
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #30
  %.val.i.i.i.i.i = load ptr, ptr %.sroa.2.0.copyload, align 8, !tbaa !2067
  %.val.val.i.i.i.i.i = load float, ptr %.val.i.i.i.i.i, align 4, !tbaa !1313
  %i.bv = fsub float %.val30.i.i.i, %.val.val.i.i.i.i.i
  %i.bw = call noundef float @llvm.fabs.f32(float %i.bv)
  store float %i.bw, ptr %i.r, align 4, !tbaa !1313
  br i1 %i.af, label %.split.i.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS2_12_GLOBAL__N_111MadAccessorIfffEEEEEclIPfSA_EEbT_T0_.exit.i.i.i

.split.i.i.i:                                     ; preds = %bb.i
  %i.bx = call noundef zeroext i1 @_ZN6duckdb11GreaterThan9OperationIfEEbRKT_S4_(ptr noundef nonnull align 4 dereferenceable(4) %i.q, ptr noundef nonnull align 4 dereferenceable(4) %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #30
  br i1 %i.bx, label %bb.j, label %bb.l

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS2_12_GLOBAL__N_111MadAccessorIfffEEEEEclIPfSA_EEbT_T0_.exit.i.i.i: ; preds = %bb.i
  %i.by = call noundef zeroext i1 @_ZN6duckdb11GreaterThan9OperationIfEEbRKT_S4_(ptr noundef nonnull align 4 dereferenceable(4) %i.r, ptr noundef nonnull align 4 dereferenceable(4) %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #30
  br i1 %i.by, label %bb.j, label %bb.l

bb.j:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS2_12_GLOBAL__N_111MadAccessorIfffEEEEEclIPfSA_EEbT_T0_.exit.i.i.i, %.split.i.i.i
  %.val27.i.i.i = load float, ptr %i.bq, align 4, !tbaa !1313
  %.val28.i.i.i = load float, ptr %i.bs, align 4, !tbaa !1313
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #30
  %.val4.i.i31.i.i.i = load ptr, ptr %.sroa.016.0.copyload, align 8, !tbaa !2067
  %.val4.val.i.i32.i.i.i = load float, ptr %.val4.i.i31.i.i.i, align 4, !tbaa !1313
  %i.bz = fsub float %.val27.i.i.i, %.val4.val.i.i32.i.i.i
  %i.ca = call noundef float @llvm.fabs.f32(float %i.bz)
  store float %i.ca, ptr %i.o, align 4, !tbaa !1313
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #30
  %.val.i.i33.i.i.i = load ptr, ptr %.sroa.2.0.copyload, align 8, !tbaa !2067
  %.val.val.i.i34.i.i.i = load float, ptr %.val.i.i33.i.i.i, align 4, !tbaa !1313
  %i.cb = fsub float %.val28.i.i.i, %.val.val.i.i34.i.i.i
  %i.cc = call noundef float @llvm.fabs.f32(float %i.cb)
  store float %i.cc, ptr %i.p, align 4, !tbaa !1313
  br i1 %i.af, label %.split51.i.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS2_12_GLOBAL__N_111MadAccessorIfffEEEEEclIPfSA_EEbT_T0_.exit35.i.i.i

.split51.i.i.i:                                   ; preds = %bb.j
  %i.cd = call noundef zeroext i1 @_ZN6duckdb11GreaterThan9OperationIfEEbRKT_S4_(ptr noundef nonnull align 4 dereferenceable(4) %i.o, ptr noundef nonnull align 4 dereferenceable(4) %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #30
  br i1 %i.cd, label %.split24.us.us.i.i.i.preheader, label %bb.k

.split24.us.us.i.i.i.preheader:                   ; preds = %_ZSt22__move_median_to_firstIPfN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIfffEEEEEEEvT_SB_SB_SB_T0_.exit.thread34.i.i, %.split54.i.i.i, %.split53.i.i.i, %.split52.i.i.i, %.split51.i.i.i
  %.sink57.i.ph33.sink41.sink.i.i.ph = phi ptr [ %i.bq, %.split51.i.i.i ], [ %i.bs, %.split52.i.i.i ], [ %i.br, %.split53.i.i.i ], [ %i.bs, %.split54.i.i.i ], [ %.sink57.i.ph33.i.i, %_ZSt22__move_median_to_firstIPfN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIfffEEEEEEEvT_SB_SB_SB_T0_.exit.thread34.i.i ]
  br label %.split24.us.us.i.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS2_12_GLOBAL__N_111MadAccessorIfffEEEEEclIPfSA_EEbT_T0_.exit35.i.i.i: ; preds = %bb.j
  %i.ce = call noundef zeroext i1 @_ZN6duckdb11GreaterThan9OperationIfEEbRKT_S4_(ptr noundef nonnull align 4 dereferenceable(4) %i.p, ptr noundef nonnull align 4 dereferenceable(4) %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #30
  br i1 %i.ce, label %.split24.i.i.i.preheader, label %bb.k

.split24.i.i.i.preheader:                         ; preds = %_ZSt22__move_median_to_firstIPfN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIfffEEEEEEEvT_SB_SB_SB_T0_.exit.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS2_12_GLOBAL__N_111MadAccessorIfffEEEEEclIPfSA_EEbT_T0_.exit50.i.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS2_12_GLOBAL__N_111MadAccessorIfffEEEEEclIPfSA_EEbT_T0_.exit45.i.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS2_12_GLOBAL__N_111MadAccessorIfffEEEEEclIPfSA_EEbT_T0_.exit40.i.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS2_12_GLOBAL__N_111MadAccessorIfffEEEEEclIPfSA_EEbT_T0_.exit35.i.i.i
  %.sink57.i.sink39.sink.i.i.ph = phi ptr [ %i.bq, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS2_12_GLOBAL__N_111MadAccessorIfffEEEEEclIPfSA_EEbT_T0_.exit35.i.i.i ], [ %i.bs, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS2_12_GLOBAL__N_111MadAccessorIfffEEEEEclIPfSA_EEbT_T0_.exit40.i.i.i ], [ %i.br, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS2_12_GLOBAL__N_111MadAccessorIfffEEEEEclIPfSA_EEbT_T0_.exit45.i.i.i ], [ %i.bs, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS2_12_GLOBAL__N_111MadAccessorIfffEEEEEclIPfSA_EEbT_T0_.exit50.i.i.i ], [ %.sink57.i.i.i, %_ZSt22__move_median_to_firstIPfN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIfffEEEEEEEvT_SB_SB_SB_T0_.exit.i.i ]
  br label %.split24.i.i.i

bb.k:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS2_12_GLOBAL__N_111MadAccessorIfffEEEEEclIPfSA_EEbT_T0_.exit35.i.i.i, %.split51.i.i.i
  %.val25.i.i.i = load float, ptr %i.br, align 4, !tbaa !1313
  %.val26.i.i.i = load float, ptr %i.bs, align 4, !tbaa !1313
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #30
  %.val4.i.i36.i.i.i = load ptr, ptr %.sroa.016.0.copyload, align 8, !tbaa !2067
  %.val4.val.i.i37.i.i.i = load float, ptr %.val4.i.i36.i.i.i, align 4, !tbaa !1313
  %i.cf = fsub float %.val25.i.i.i, %.val4.val.i.i37.i.i.i
  %i.cg = call noundef float @llvm.fabs.f32(float %i.cf)
  store float %i.cg, ptr %i.m, align 4, !tbaa !1313
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #30
  %.val.i.i38.i.i.i = load ptr, ptr %.sroa.2.0.copyload, align 8, !tbaa !2067
  %.val.val.i.i39.i.i.i = load float, ptr %.val.i.i38.i.i.i, align 4, !tbaa !1313
  %i.ch = fsub float %.val26.i.i.i, %.val.val.i.i39.i.i.i
  %i.ci = call noundef float @llvm.fabs.f32(float %i.ch)
  store float %i.ci, ptr %i.n, align 4, !tbaa !1313
  br i1 %i.af, label %.split52.i.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS2_12_GLOBAL__N_111MadAccessorIfffEEEEEclIPfSA_EEbT_T0_.exit40.i.i.i

.split52.i.i.i:                                   ; preds = %bb.k
  %i.cj = call noundef zeroext i1 @_ZN6duckdb11GreaterThan9OperationIfEEbRKT_S4_(ptr noundef nonnull align 4 dereferenceable(4) %i.m, ptr noundef nonnull align 4 dereferenceable(4) %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #30
  br i1 %i.cj, label %.split24.us.us.i.i.i.preheader, label %_ZSt22__move_median_to_firstIPfN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIfffEEEEEEEvT_SB_SB_SB_T0_.exit.thread34.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS2_12_GLOBAL__N_111MadAccessorIfffEEEEEclIPfSA_EEbT_T0_.exit40.i.i.i: ; preds = %bb.k
  %i.ck = call noundef zeroext i1 @_ZN6duckdb11GreaterThan9OperationIfEEbRKT_S4_(ptr noundef nonnull align 4 dereferenceable(4) %i.n, ptr noundef nonnull align 4 dereferenceable(4) %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #30
  br i1 %i.ck, label %.split24.i.i.i.preheader, label %_ZSt22__move_median_to_firstIPfN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIfffEEEEEEEvT_SB_SB_SB_T0_.exit.i.i

bb.l:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS2_12_GLOBAL__N_111MadAccessorIfffEEEEEclIPfSA_EEbT_T0_.exit.i.i.i, %.split.i.i.i
  %.val23.i.i.i = load float, ptr %i.br, align 4, !tbaa !1313
  %.val24.i.i.i = load float, ptr %i.bs, align 4, !tbaa !1313
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #30
  %.val4.i.i41.i.i.i = load ptr, ptr %.sroa.016.0.copyload, align 8, !tbaa !2067
  %.val4.val.i.i42.i.i.i = load float, ptr %.val4.i.i41.i.i.i, align 4, !tbaa !1313
  %i.cl = fsub float %.val23.i.i.i, %.val4.val.i.i42.i.i.i
  %i.cm = call noundef float @llvm.fabs.f32(float %i.cl)
  store float %i.cm, ptr %i.k, align 4, !tbaa !1313
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #30
  %.val.i.i43.i.i.i = load ptr, ptr %.sroa.2.0.copyload, align 8, !tbaa !2067
  %.val.val.i.i44.i.i.i = load float, ptr %.val.i.i43.i.i.i, align 4, !tbaa !1313
  %i.cn = fsub float %.val24.i.i.i, %.val.val.i.i44.i.i.i
  %i.co = call noundef float @llvm.fabs.f32(float %i.cn)
  store float %i.co, ptr %i.l, align 4, !tbaa !1313
  br i1 %i.af, label %.split53.i.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS2_12_GLOBAL__N_111MadAccessorIfffEEEEEclIPfSA_EEbT_T0_.exit45.i.i.i

.split53.i.i.i:                                   ; preds = %bb.l
  %i.cp = call noundef zeroext i1 @_ZN6duckdb11GreaterThan9OperationIfEEbRKT_S4_(ptr noundef nonnull align 4 dereferenceable(4) %i.k, ptr noundef nonnull align 4 dereferenceable(4) %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #30
  br i1 %i.cp, label %.split24.us.us.i.i.i.preheader, label %bb.m

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS2_12_GLOBAL__N_111MadAccessorIfffEEEEEclIPfSA_EEbT_T0_.exit45.i.i.i: ; preds = %bb.l
  %i.cq = call noundef zeroext i1 @_ZN6duckdb11GreaterThan9OperationIfEEbRKT_S4_(ptr noundef nonnull align 4 dereferenceable(4) %i.l, ptr noundef nonnull align 4 dereferenceable(4) %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #30
  br i1 %i.cq, label %.split24.i.i.i.preheader, label %bb.m

bb.m:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS2_12_GLOBAL__N_111MadAccessorIfffEEEEEclIPfSA_EEbT_T0_.exit45.i.i.i, %.split53.i.i.i
  %.val.i.i.i = load float, ptr %i.bq, align 4, !tbaa !1313
  %.val22.i.i.i = load float, ptr %i.bs, align 4, !tbaa !1313
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #30
  %.val4.i.i46.i.i.i = load ptr, ptr %.sroa.016.0.copyload, align 8, !tbaa !2067
  %.val4.val.i.i47.i.i.i = load float, ptr %.val4.i.i46.i.i.i, align 4, !tbaa !1313
  %i.cr = fsub float %.val.i.i.i, %.val4.val.i.i47.i.i.i
  %i.cs = call noundef float @llvm.fabs.f32(float %i.cr)
  store float %i.cs, ptr %i.i, align 4, !tbaa !1313
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #30
  %.val.i.i48.i.i.i = load ptr, ptr %.sroa.2.0.copyload, align 8, !tbaa !2067
  %.val.val.i.i49.i.i.i = load float, ptr %.val.i.i48.i.i.i, align 4, !tbaa !1313
  %i.ct = fsub float %.val22.i.i.i, %.val.val.i.i49.i.i.i
  %i.cu = call noundef float @llvm.fabs.f32(float %i.ct)
  store float %i.cu, ptr %i.j, align 4, !tbaa !1313
  br i1 %i.af, label %.split54.i.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS2_12_GLOBAL__N_111MadAccessorIfffEEEEEclIPfSA_EEbT_T0_.exit50.i.i.i

.split54.i.i.i:                                   ; preds = %bb.m
  %i.cv = call noundef zeroext i1 @_ZN6duckdb11GreaterThan9OperationIfEEbRKT_S4_(ptr noundef nonnull align 4 dereferenceable(4) %i.i, ptr noundef nonnull align 4 dereferenceable(4) %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #30
  br i1 %i.cv, label %.split24.us.us.i.i.i.preheader, label %_ZSt22__move_median_to_firstIPfN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIfffEEEEEEEvT_SB_SB_SB_T0_.exit.thread34.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS2_12_GLOBAL__N_111MadAccessorIfffEEEEEclIPfSA_EEbT_T0_.exit50.i.i.i: ; preds = %bb.m
  %i.cw = call noundef zeroext i1 @_ZN6duckdb11GreaterThan9OperationIfEEbRKT_S4_(ptr noundef nonnull align 4 dereferenceable(4) %i.j, ptr noundef nonnull align 4 dereferenceable(4) %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #30
  br i1 %i.cw, label %.split24.i.i.i.preheader, label %_ZSt22__move_median_to_firstIPfN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIfffEEEEEEEvT_SB_SB_SB_T0_.exit.i.i

_ZSt22__move_median_to_firstIPfN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIfffEEEEEEEvT_SB_SB_SB_T0_.exit.thread34.i.i: ; preds = %.split54.i.i.i, %.split52.i.i.i
  %.sink57.i.ph33.i.i = phi ptr [ %i.bq, %.split54.i.i.i ], [ %i.br, %.split52.i.i.i ]
  br label %.split24.us.us.i.i.i.preheader

_ZSt22__move_median_to_firstIPfN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIfffEEEEEEEvT_SB_SB_SB_T0_.exit.i.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS2_12_GLOBAL__N_111MadAccessorIfffEEEEEclIPfSA_EEbT_T0_.exit50.i.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS2_12_GLOBAL__N_111MadAccessorIfffEEEEEclIPfSA_EEbT_T0_.exit40.i.i.i
  %.sink57.i.i.i = phi ptr [ %i.bq, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS2_12_GLOBAL__N_111MadAccessorIfffEEEEEclIPfSA_EEbT_T0_.exit50.i.i.i ], [ %i.br, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS2_12_GLOBAL__N_111MadAccessorIfffEEEEEclIPfSA_EEbT_T0_.exit40.i.i.i ]
  br label %.split24.i.i.i.preheader

.split24.us.us.i.i.i:                             ; preds = %.split24.us.us.i.i.i.preheader, %.split.us29.us.i.i.i
  %.sink44.i.i = phi ptr [ %.1.us.us.i.i.i, %.split.us29.us.i.i.i ], [ %.054.i27, %.split24.us.us.i.i.i.preheader ] ; 2 uses
  %.sink57.i.ph33.sink41.sink.i.i = phi ptr [ %.114.us.us.i.i.i, %.split.us29.us.i.i.i ], [ %.sink57.i.ph33.sink41.sink.i.i.ph, %.split24.us.us.i.i.i.preheader ] ; 2 uses
  %.013.us.i.i.i = phi ptr [ %.114.us.us.i.i.i, %.split.us29.us.i.i.i ], [ %.01750.i31, %.split24.us.us.i.i.i.preheader ]
  %.0.us.i.i.i = phi ptr [ %i.de, %.split.us29.us.i.i.i ], [ %i.br, %.split24.us.us.i.i.i.preheader ]
  %i.cx = load float, ptr %.sink44.i.i, align 4, !tbaa !1313
  %i.cy = load float, ptr %.sink57.i.ph33.sink41.sink.i.i, align 4, !tbaa !1313
  store float %i.cy, ptr %.sink44.i.i, align 4, !tbaa !1313
  store float %i.cx, ptr %.sink57.i.ph33.sink41.sink.i.i, align 4, !tbaa !1313
  br label %.split.us.us.i.i.i

.split.us.us.i.i.i:                               ; preds = %.split.us.us.i.i.i, %.split24.us.us.i.i.i
  %.1.us.us.i.i.i = phi ptr [ %.0.us.i.i.i, %.split24.us.us.i.i.i ], [ %i.de, %.split.us.us.i.i.i ] ; 5 uses
  %.1.val.us.us.i.i.i = load float, ptr %.1.us.us.i.i.i, align 4, !tbaa !1313
  %.val15.us.us.i.i.i = load float, ptr %.054.i27, align 4, !tbaa !1313
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #30
  %.val4.i.i.us.us.i.i.i = load ptr, ptr %.sroa.016.0.copyload, align 8, !tbaa !2067
  %.val4.val.i.i.us.us.i.i.i = load float, ptr %.val4.i.i.us.us.i.i.i, align 4, !tbaa !1313
  %i.cz = fsub float %.1.val.us.us.i.i.i, %.val4.val.i.i.us.us.i.i.i
  %i.da = call noundef float @llvm.fabs.f32(float %i.cz)
  store float %i.da, ptr %i.g, align 4, !tbaa !1313
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #30
  %.val.i.i.us.us.i.i.i = load ptr, ptr %.sroa.2.0.copyload, align 8, !tbaa !2067
  %.val.val.i.i.us.us.i.i.i = load float, ptr %.val.i.i.us.us.i.i.i, align 4, !tbaa !1313
  %i.db = fsub float %.val15.us.us.i.i.i, %.val.val.i.i.us.us.i.i.i
  %i.dc = call noundef float @llvm.fabs.f32(float %i.db)
  store float %i.dc, ptr %i.h, align 4, !tbaa !1313
  %i.dd = call noundef zeroext i1 @_ZN6duckdb11GreaterThan9OperationIfEEbRKT_S4_(ptr noundef nonnull align 4 dereferenceable(4) %i.g, ptr noundef nonnull align 4 dereferenceable(4) %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #30
  %i.de = getelementptr inbounds nuw i8, ptr %.1.us.us.i.i.i, i64 4 ; 2 uses
  br i1 %i.dd, label %.split.us.us.i.i.i, label %.split21.us.us.i.i.i, !llvm.loop !2189

.split21.us.us.i.i.i:                             ; preds = %.split.us.us.i.i.i, %.split21.us.us.i.i.i
  %.013.pn.us.us.i.i.i = phi ptr [ %.114.us.us.i.i.i, %.split21.us.us.i.i.i ], [ %.013.us.i.i.i, %.split.us.us.i.i.i ]
  %.114.us.us.i.i.i = getelementptr inbounds i8, ptr %.013.pn.us.us.i.i.i, i64 -4 ; 5 uses
  %.val.us.us.i.i.i = load float, ptr %.054.i27, align 4, !tbaa !1313
  %.114.val.us.us.i.i.i = load float, ptr %.114.us.us.i.i.i, align 4, !tbaa !1313
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #30
  %.val4.i.i16.us.us.i.i.i = load ptr, ptr %.sroa.016.0.copyload, align 8, !tbaa !2067
  %.val4.val.i.i17.us.us.i.i.i = load float, ptr %.val4.i.i16.us.us.i.i.i, align 4, !tbaa !1313
  %i.df = fsub float %.val.us.us.i.i.i, %.val4.val.i.i17.us.us.i.i.i
  %i.dg = call noundef float @llvm.fabs.f32(float %i.df)
  store float %i.dg, ptr %i.e, align 4, !tbaa !1313
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #30
  %.val.i.i18.us.us.i.i.i = load ptr, ptr %.sroa.2.0.copyload, align 8, !tbaa !2067
  %.val.val.i.i19.us.us.i.i.i = load float, ptr %.val.i.i18.us.us.i.i.i, align 4, !tbaa !1313
  %i.dh = fsub float %.114.val.us.us.i.i.i, %.val.val.i.i19.us.us.i.i.i
  %i.di = call noundef float @llvm.fabs.f32(float %i.dh)
  store float %i.di, ptr %i.f, align 4, !tbaa !1313
  %i.dj = call noundef zeroext i1 @_ZN6duckdb11GreaterThan9OperationIfEEbRKT_S4_(ptr noundef nonnull align 4 dereferenceable(4) %i.e, ptr noundef nonnull align 4 dereferenceable(4) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #30
  br i1 %i.dj, label %.split21.us.us.i.i.i, label %.split.us29.us.i.i.i, !llvm.loop !2190

.split.us29.us.i.i.i:                             ; preds = %.split21.us.us.i.i.i
  %i.dk = icmp ult ptr %.1.us.us.i.i.i, %.114.us.us.i.i.i
  br i1 %i.dk, label %.split24.us.us.i.i.i, label %_ZSt27__unguarded_partition_pivotIPfN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIfffEEEEEEET_SB_SB_T0_.exit.i, !llvm.loop !2191

.split24.i.i.i:                                   ; preds = %.split24.i.i.i.preheader, %.split.i16.i.i
  %.sink47.i.i = phi ptr [ %.1.i.i.i, %.split.i16.i.i ], [ %.054.i27, %.split24.i.i.i.preheader ] ; 2 uses
  %.sink57.i.sink39.sink.i.i = phi ptr [ %.114.i.i.i, %.split.i16.i.i ], [ %.sink57.i.sink39.sink.i.i.ph, %.split24.i.i.i.preheader ] ; 2 uses
  %.013.i.i.i = phi ptr [ %.114.i.i.i, %.split.i16.i.i ], [ %.01750.i31, %.split24.i.i.i.preheader ]
  %.0.i.i.i = phi ptr [ %i.ds, %.split.i16.i.i ], [ %i.br, %.split24.i.i.i.preheader ]
  %i.dl = load float, ptr %.sink47.i.i, align 4, !tbaa !1313
  %i.dm = load float, ptr %.sink57.i.sink39.sink.i.i, align 4, !tbaa !1313
  store float %i.dm, ptr %.sink47.i.i, align 4, !tbaa !1313
  store float %i.dl, ptr %.sink57.i.sink39.sink.i.i, align 4, !tbaa !1313
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS2_12_GLOBAL__N_111MadAccessorIfffEEEEEclIPfSA_EEbT_T0_.exit.i10.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS2_12_GLOBAL__N_111MadAccessorIfffEEEEEclIPfSA_EEbT_T0_.exit.i10.i.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS2_12_GLOBAL__N_111MadAccessorIfffEEEEEclIPfSA_EEbT_T0_.exit.i10.i.i, %.split24.i.i.i
  %.1.i.i.i = phi ptr [ %.0.i.i.i, %.split24.i.i.i ], [ %i.ds, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS2_12_GLOBAL__N_111MadAccessorIfffEEEEEclIPfSA_EEbT_T0_.exit.i10.i.i ] ; 5 uses
  %.1.val.i.i.i = load float, ptr %.1.i.i.i, align 4, !tbaa !1313
  %.val15.i.i.i = load float, ptr %.054.i27, align 4, !tbaa !1313
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #30
  %.val4.i.i.i11.i.i = load ptr, ptr %.sroa.016.0.copyload, align 8, !tbaa !2067
  %.val4.val.i.i.i12.i.i = load float, ptr %.val4.i.i.i11.i.i, align 4, !tbaa !1313
  %i.dn = fsub float %.1.val.i.i.i, %.val4.val.i.i.i12.i.i
  %i.do = call noundef float @llvm.fabs.f32(float %i.dn)
  store float %i.do, ptr %i.g, align 4, !tbaa !1313
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #30
  %.val.i.i.i13.i.i = load ptr, ptr %.sroa.2.0.copyload, align 8, !tbaa !2067
  %.val.val.i.i.i14.i.i = load float, ptr %.val.i.i.i13.i.i, align 4, !tbaa !1313
  %i.dp = fsub float %.val15.i.i.i, %.val.val.i.i.i14.i.i
  %i.dq = call noundef float @llvm.fabs.f32(float %i.dp)
  store float %i.dq, ptr %i.h, align 4, !tbaa !1313
  %i.dr = call noundef zeroext i1 @_ZN6duckdb11GreaterThan9OperationIfEEbRKT_S4_(ptr noundef nonnull align 4 dereferenceable(4) %i.h, ptr noundef nonnull align 4 dereferenceable(4) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #30
  %i.ds = getelementptr inbounds nuw i8, ptr %.1.i.i.i, i64 4 ; 2 uses
  br i1 %i.dr, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS2_12_GLOBAL__N_111MadAccessorIfffEEEEEclIPfSA_EEbT_T0_.exit.i10.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS2_12_GLOBAL__N_111MadAccessorIfffEEEEEclIPfSA_EEbT_T0_.exit20.i.i.i, !llvm.loop !2189

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS2_12_GLOBAL__N_111MadAccessorIfffEEEEEclIPfSA_EEbT_T0_.exit20.i.i.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS2_12_GLOBAL__N_111MadAccessorIfffEEEEEclIPfSA_EEbT_T0_.exit.i10.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS2_12_GLOBAL__N_111MadAccessorIfffEEEEEclIPfSA_EEbT_T0_.exit20.i.i.i
  %.013.pn.i.i.i = phi ptr [ %.114.i.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS2_12_GLOBAL__N_111MadAccessorIfffEEEEEclIPfSA_EEbT_T0_.exit20.i.i.i ], [ %.013.i.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS2_12_GLOBAL__N_111MadAccessorIfffEEEEEclIPfSA_EEbT_T0_.exit.i10.i.i ]
  %.114.i.i.i = getelementptr inbounds i8, ptr %.013.pn.i.i.i, i64 -4 ; 5 uses
  %.val.i15.i.i = load float, ptr %.054.i27, align 4, !tbaa !1313
  %.114.val.i.i.i = load float, ptr %.114.i.i.i, align 4, !tbaa !1313
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #30
  %.val4.i.i16.i.i.i = load ptr, ptr %.sroa.016.0.copyload, align 8, !tbaa !2067
  %.val4.val.i.i17.i.i.i = load float, ptr %.val4.i.i16.i.i.i, align 4, !tbaa !1313
  %i.dt = fsub float %.val.i15.i.i, %.val4.val.i.i17.i.i.i
  %i.du = call noundef float @llvm.fabs.f32(float %i.dt)
  store float %i.du, ptr %i.e, align 4, !tbaa !1313
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #30
  %.val.i.i18.i.i.i = load ptr, ptr %.sroa.2.0.copyload, align 8, !tbaa !2067
  %.val.val.i.i19.i.i.i = load float, ptr %.val.i.i18.i.i.i, align 4, !tbaa !1313
  %i.dv = fsub float %.114.val.i.i.i, %.val.val.i.i19.i.i.i
  %i.dw = call noundef float @llvm.fabs.f32(float %i.dv)
  store float %i.dw, ptr %i.f, align 4, !tbaa !1313
  %i.dx = call noundef zeroext i1 @_ZN6duckdb11GreaterThan9OperationIfEEbRKT_S4_(ptr noundef nonnull align 4 dereferenceable(4) %i.f, ptr noundef nonnull align 4 dereferenceable(4) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #30
  br i1 %i.dx, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS2_12_GLOBAL__N_111MadAccessorIfffEEEEEclIPfSA_EEbT_T0_.exit20.i.i.i, label %.split.i16.i.i, !llvm.loop !2190

.split.i16.i.i:                                   ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS2_12_GLOBAL__N_111MadAccessorIfffEEEEEclIPfSA_EEbT_T0_.exit20.i.i.i
  %i.dy = icmp ult ptr %.1.i.i.i, %.114.i.i.i
  br i1 %i.dy, label %.split24.i.i.i, label %_ZSt27__unguarded_partition_pivotIPfN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIfffEEEEEEET_SB_SB_T0_.exit.i, !llvm.loop !2191

_ZSt27__unguarded_partition_pivotIPfN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIfffEEEEEEET_SB_SB_T0_.exit.i: ; preds = %.split.i16.i.i, %.split.us29.us.i.i.i
  %.us-phi45.i.i.i = phi ptr [ %.1.us.us.i.i.i, %.split.us29.us.i.i.i ], [ %.1.i.i.i, %.split.i16.i.i ] ; 3 uses
  %.not.i = icmp ugt ptr %.us-phi45.i.i.i, %1     ; 2 uses
  %..017.i = select i1 %.not.i, ptr %.us-phi45.i.i.i, ptr %.01750.i31 ; 4 uses
  %.0..i = select i1 %.not.i, ptr %.054.i27, ptr %.us-phi45.i.i.i ; 4 uses
  %i.dz = ptrtoint ptr %..017.i to i64
  %i.ea = ptrtoint ptr %.0..i to i64              ; 3 uses
  %i.eb = sub i64 %i.dz, %i.ea                    ; 2 uses
  %i.ec = icmp sgt i64 %i.eb, 12
  br i1 %i.ec, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !2186

._crit_edge.i:                                    ; preds = %_ZSt27__unguarded_partition_pivotIPfN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIfffEEEEEEET_SB_SB_T0_.exit.i, %bb.b
  %.017.lcssa.i = phi ptr [ %2, %bb.b ], [ %..017.i, %_ZSt27__unguarded_partition_pivotIPfN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIfffEEEEEEET_SB_SB_T0_.exit.i ] ; 3 uses
  %.0.lcssa.i = phi ptr [ %0, %bb.b ], [ %.0..i, %_ZSt27__unguarded_partition_pivotIPfN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIfffEEEEEEET_SB_SB_T0_.exit.i ] ; 7 uses
  %.lcssa46.i = phi i64 [ %i.x, %bb.b ], [ %i.ea, %_ZSt27__unguarded_partition_pivotIPfN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIfffEEEEEEET_SB_SB_T0_.exit.i ]
  %i.ed = icmp eq ptr %.0.lcssa.i, %.017.lcssa.i
  %.021.i.i = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 4 ; 2 uses
  %.not22.i.i = icmp eq ptr %.021.i.i, %.017.lcssa.i
  %or.cond.i = select i1 %i.ed, i1 true, i1 %.not22.i.i
  br i1 %or.cond.i, label %_ZSt13__introselectIPflN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIfffEEEEEEEvT_SB_SB_T0_T1_.exit, label %.lr.ph.i21.preheader.i

.lr.ph.i21.preheader.i:                           ; preds = %._crit_edge.i
  %i.ee = trunc nuw i8 %.sroa.3.0.copyload to i1
  br label %.lr.ph.i21.i

.lr.ph.i21.i:                                     ; preds = %bb.t, %.lr.ph.i21.preheader.i
  %.024.i.i = phi ptr [ %.0.i.i, %bb.t ], [ %.021.i.i, %.lr.ph.i21.preheader.i ] ; 9 uses
  %.pn23.i.i = phi ptr [ %.024.i.i, %bb.t ], [ %.0.lcssa.i, %.lr.ph.i21.preheader.i ] ; 2 uses
  %.0.val.i22.i = load float, ptr %.024.i.i, align 4, !tbaa !1313
  %.val.i23.i = load float, ptr %.0.lcssa.i, align 4, !tbaa !1313
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #30
  %.val4.i.i.i24.i = load ptr, ptr %.sroa.016.0.copyload, align 8, !tbaa !2067
  %.val4.val.i.i.i25.i = load float, ptr %.val4.i.i.i24.i, align 4, !tbaa !1313
  %i.ef = fsub float %.0.val.i22.i, %.val4.val.i.i.i25.i
  %i.eg = call noundef float @llvm.fabs.f32(float %i.ef)
  store float %i.eg, ptr %i.c, align 4, !tbaa !1313
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #30
  %.val.i.i.i26.i = load ptr, ptr %.sroa.2.0.copyload, align 8, !tbaa !2067
  %.val.val.i.i.i27.i = load float, ptr %.val.i.i.i26.i, align 4, !tbaa !1313
  %i.eh = fsub float %.val.i23.i, %.val.val.i.i.i27.i
  %i.ei = call noundef float @llvm.fabs.f32(float %i.eh)
  store float %i.ei, ptr %i.d, align 4, !tbaa !1313
  br i1 %i.ee, label %.split.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS2_12_GLOBAL__N_111MadAccessorIfffEEEEEclIPfSA_EEbT_T0_.exit.i28.i

.split.i.i:                                       ; preds = %.lr.ph.i21.i
  %i.ej = call noundef zeroext i1 @_ZN6duckdb11GreaterThan9OperationIfEEbRKT_S4_(ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  br i1 %i.ej, label %bb.n, label %.split.us.i.preheader.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS2_12_GLOBAL__N_111MadAccessorIfffEEEEEclIPfSA_EEbT_T0_.exit.i28.i: ; preds = %.lr.ph.i21.i
  %i.ek = call noundef zeroext i1 @_ZN6duckdb11GreaterThan9OperationIfEEbRKT_S4_(ptr noundef nonnull align 4 dereferenceable(4) %i.d, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  br i1 %i.ek, label %bb.n, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN6duckdb15QuantileCompareINS2_12_GLOBAL__N_111MadAccessorIfffEEEEEclIfPfEEbRT_T0_.exit.i.preheader.i.i

bb.n:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS2_12_GLOBAL__N_111MadAccessorIfffEEEEEclIPfSA_EEbT_T0_.exit.i28.i, %.split.i.i
  %i.el = load float, ptr %.024.i.i, align 4, !tbaa !1313
  %i.em = ptrtoint ptr %.024.i.i to i64
  %i.en = sub i64 %i.em, %.lcssa46.i              ; 3 uses
  %i.eo = ashr exact i64 %i.en, 2                 ; 2 uses
  %i.ep = icmp sgt i64 %i.eo, 1
  br i1 %i.ep, label %bb.o, label %bb.p, !prof !233

bb.o:                                             ; preds = %bb.n
  %i.eq = getelementptr inbounds nuw i8, ptr %.pn23.i.i, i64 8
  %i.er = sub nsw i64 0, %i.eo
  %i.es = getelementptr inbounds [4 x i8], ptr %i.eq, i64 %i.er
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.es, ptr noundef nonnull align 4 dereferenceable(1) %.0.lcssa.i, i64 %i.en, i1 false)
  br label %_ZSt13move_backwardIPfS0_ET0_T_S2_S1_.exit.i.i

bb.p:                                             ; preds = %bb.n
  %i.et = icmp eq i64 %i.en, 4
  br i1 %i.et, label %bb.q, label %_ZSt13move_backwardIPfS0_ET0_T_S2_S1_.exit.i.i

bb.q:                                             ; preds = %bb.p
  %i.eu = getelementptr inbounds nuw i8, ptr %.pn23.i.i, i64 4
  %i.ev = load float, ptr %.0.lcssa.i, align 4, !tbaa !1313
  store float %i.ev, ptr %i.eu, align 4, !tbaa !1313
  br label %_ZSt13move_backwardIPfS0_ET0_T_S2_S1_.exit.i.i

_ZSt13move_backwardIPfS0_ET0_T_S2_S1_.exit.i.i:   ; preds = %bb.q, %bb.p, %bb.o
  store float %i.el, ptr %.0.lcssa.i, align 4, !tbaa !1313
  br label %bb.t

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN6duckdb15QuantileCompareINS2_12_GLOBAL__N_111MadAccessorIfffEEEEEclIfPfEEbRT_T0_.exit.i.preheader.i.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS2_12_GLOBAL__N_111MadAccessorIfffEEEEEclIPfSA_EEbT_T0_.exit.i28.i
  %i.ew = load float, ptr %.024.i.i, align 4, !tbaa !1313 ; 2 uses
  br label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN6duckdb15QuantileCompareINS2_12_GLOBAL__N_111MadAccessorIfffEEEEEclIfPfEEbRT_T0_.exit.i.i.i

.split.us.i.preheader.i.i:                        ; preds = %.split.i.i
  %i.ex = load float, ptr %.024.i.i, align 4, !tbaa !1313 ; 2 uses
  br label %.split.us.i.i.i

.split.us.i.i.i:                                  ; preds = %bb.r, %.split.us.i.preheader.i.i
  %.09.us.i.i.i = phi ptr [ %.0.us.i.i34.i, %bb.r ], [ %.024.i.i, %.split.us.i.preheader.i.i ] ; 3 uses
  %.0.us.i.i34.i = getelementptr inbounds i8, ptr %.09.us.i.i.i, i64 -4 ; 3 uses
  %.0.val.us.i.i.i = load float, ptr %.0.us.i.i34.i, align 4, !tbaa !1313
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %.val4.i.i.us.i.i.i = load ptr, ptr %.sroa.016.0.copyload, align 8, !tbaa !2067
  %.val4.val.i.i.us.i.i.i = load float, ptr %.val4.i.i.us.i.i.i, align 4, !tbaa !1313
  %i.ey = fsub float %i.ex, %.val4.val.i.i.us.i.i.i
  %i.ez = call noundef float @llvm.fabs.f32(float %i.ey)
  store float %i.ez, ptr %i.a, align 4, !tbaa !1313
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  %.val.i.i.us.i.i.i = load ptr, ptr %.sroa.2.0.copyload, align 8, !tbaa !2067
  %.val.val.i.i.us.i.i.i = load float, ptr %.val.i.i.us.i.i.i, align 4, !tbaa !1313
  %i.fa = fsub float %.0.val.us.i.i.i, %.val.val.i.i.us.i.i.i
  %i.fb = call noundef float @llvm.fabs.f32(float %i.fa)
  store float %i.fb, ptr %i.b, align 4, !tbaa !1313
  %i.fc = call noundef zeroext i1 @_ZN6duckdb11GreaterThan9OperationIfEEbRKT_S4_(ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  br i1 %i.fc, label %bb.r, label %_ZSt25__unguarded_linear_insertIPfN9__gnu_cxx5__ops14_Val_comp_iterIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIfffEEEEEEEvT_T0_.exit.i.i

bb.r:                                             ; preds = %.split.us.i.i.i
  %i.fd = load float, ptr %.0.us.i.i34.i, align 4, !tbaa !1313
  store float %i.fd, ptr %.09.us.i.i.i, align 4, !tbaa !1313
  br label %.split.us.i.i.i, !llvm.loop !2192

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN6duckdb15QuantileCompareINS2_12_GLOBAL__N_111MadAccessorIfffEEEEEclIfPfEEbRT_T0_.exit.i.i.i: ; preds = %bb.s, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN6duckdb15QuantileCompareINS2_12_GLOBAL__N_111MadAccessorIfffEEEEEclIfPfEEbRT_T0_.exit.i.preheader.i.i
  %.09.i.i.i = phi ptr [ %.0.i.i29.i, %bb.s ], [ %.024.i.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN6duckdb15QuantileCompareINS2_12_GLOBAL__N_111MadAccessorIfffEEEEEclIfPfEEbRT_T0_.exit.i.preheader.i.i ] ; 3 uses
  %.0.i.i29.i = getelementptr inbounds i8, ptr %.09.i.i.i, i64 -4 ; 3 uses
  %.0.val.i.i.i = load float, ptr %.0.i.i29.i, align 4, !tbaa !1313
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %.val4.i.i.i.i30.i = load ptr, ptr %.sroa.016.0.copyload, align 8, !tbaa !2067
  %.val4.val.i.i.i.i31.i = load float, ptr %.val4.i.i.i.i30.i, align 4, !tbaa !1313
  %i.fe = fsub float %i.ew, %.val4.val.i.i.i.i31.i
  %i.ff = call noundef float @llvm.fabs.f32(float %i.fe)
  store float %i.ff, ptr %i.a, align 4, !tbaa !1313
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  %.val.i.i.i.i32.i = load ptr, ptr %.sroa.2.0.copyload, align 8, !tbaa !2067
  %.val.val.i.i.i.i33.i = load float, ptr %.val.i.i.i.i32.i, align 4, !tbaa !1313
  %i.fg = fsub float %.0.val.i.i.i, %.val.val.i.i.i.i33.i
  %i.fh = call noundef float @llvm.fabs.f32(float %i.fg)
  store float %i.fh, ptr %i.b, align 4, !tbaa !1313
  %i.fi = call noundef zeroext i1 @_ZN6duckdb11GreaterThan9OperationIfEEbRKT_S4_(ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  br i1 %i.fi, label %bb.s, label %_ZSt25__unguarded_linear_insertIPfN9__gnu_cxx5__ops14_Val_comp_iterIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIfffEEEEEEEvT_T0_.exit.i.i

bb.s:                                             ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN6duckdb15QuantileCompareINS2_12_GLOBAL__N_111MadAccessorIfffEEEEEclIfPfEEbRT_T0_.exit.i.i.i
  %i.fj = load float, ptr %.0.i.i29.i, align 4, !tbaa !1313
  store float %i.fj, ptr %.09.i.i.i, align 4, !tbaa !1313
  br label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN6duckdb15QuantileCompareINS2_12_GLOBAL__N_111MadAccessorIfffEEEEEclIfPfEEbRT_T0_.exit.i.i.i, !llvm.loop !2192

_ZSt25__unguarded_linear_insertIPfN9__gnu_cxx5__ops14_Val_comp_iterIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIfffEEEEEEEvT_T0_.exit.i.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN6duckdb15QuantileCompareINS2_12_GLOBAL__N_111MadAccessorIfffEEEEEclIfPfEEbRT_T0_.exit.i.i.i, %.split.us.i.i.i
  %i.fk = phi float [ %i.ex, %.split.us.i.i.i ], [ %i.ew, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN6duckdb15QuantileCompareINS2_12_GLOBAL__N_111MadAccessorIfffEEEEEclIfPfEEbRT_T0_.exit.i.i.i ]
  %.us-phi.i.i.i = phi ptr [ %.09.us.i.i.i, %.split.us.i.i.i ], [ %.09.i.i.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN6duckdb15QuantileCompareINS2_12_GLOBAL__N_111MadAccessorIfffEEEEEclIfPfEEbRT_T0_.exit.i.i.i ]
  store float %i.fk, ptr %.us-phi.i.i.i, align 4, !tbaa !1313
  br label %bb.t

bb.t:                                             ; preds = %_ZSt25__unguarded_linear_insertIPfN9__gnu_cxx5__ops14_Val_comp_iterIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIfffEEEEEEEvT_T0_.exit.i.i, %_ZSt13move_backwardIPfS0_ET0_T_S2_S1_.exit.i.i
  %.0.i.i = getelementptr inbounds nuw i8, ptr %.024.i.i, i64 4 ; 2 uses
  %.not.i.i = icmp eq ptr %.0.i.i, %.017.lcssa.i
  br i1 %.not.i.i, label %_ZSt13__introselectIPflN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIfffEEEEEEEvT_SB_SB_T0_T1_.exit, label %.lr.ph.i21.i, !llvm.loop !2193

_ZSt13__introselectIPflN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIfffEEEEEEEvT_SB_SB_T0_T1_.exit: ; preds = %bb.t, %_ZSt13__heap_selectIPfN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIfffEEEEEEEvT_SB_SB_T0_.exit.i, %._crit_edge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10)
  br label %bb.u

bb.u:                                             ; preds = %bb.a, %_ZSt13__introselectIPflN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIfffEEEEEEEvT_SB_SB_T0_T1_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZSt13__adjust_heapIPflfN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIfffEEEEEEEvT_T0_SC_T1_T2_(ptr nofree noundef captures(none) %0, i64 noundef range(i64 0, 1152921504606846975) %1, i64 noundef range(i64 -2305843009213693952, 2305843009213693952) %2, float noundef %3, ptr nofree noundef readonly byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.392") align 8 captures(none) %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca float, align 4                    ; 8 uses
  %i.b = alloca float, align 4                    ; 8 uses
  %i.c = alloca float, align 4                    ; 8 uses
  %i.d = alloca float, align 4                    ; 8 uses
  %i.e = add nsw i64 %2, -1
  %i.f = sdiv i64 %i.e, 2                         ; 3 uses
  %i.g = icmp slt i64 %1, %i.f
  br i1 %i.g, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.h = load ptr, ptr %4, align 8, !tbaa !2194, !nonnull !235, !align !683 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !2196, !nonnull !235, !align !683 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.l = load i8, ptr %i.k, align 8, !tbaa !2197, !range !234, !noundef !235
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS2_12_GLOBAL__N_111MadAccessorIfffEEEEEclIPfSA_EEbT_T0_.exit.us, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS2_12_GLOBAL__N_111MadAccessorIfffEEEEEclIPfSA_EEbT_T0_.exit

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS2_12_GLOBAL__N_111MadAccessorIfffEEEEEclIPfSA_EEbT_T0_.exit.us: ; preds = %.lr.ph, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS2_12_GLOBAL__N_111MadAccessorIfffEEEEEclIPfSA_EEbT_T0_.exit.us
  %.030.us = phi i64 [ %spec.select.us, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS2_12_GLOBAL__N_111MadAccessorIfffEEEEEclIPfSA_EEbT_T0_.exit.us ], [ %1, %.lr.ph ] ; 2 uses
  %i.n = shl i64 %.030.us, 1                      ; 3 uses
  %i.o = add i64 %i.n, 2                          ; 2 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.o
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.n
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %.val.us = load float, ptr %i.p, align 4, !tbaa !1313
  %.val29.us = load float, ptr %i.r, align 4, !tbaa !1313
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #30
  %.val4.i.i.us = load ptr, ptr %i.h, align 8, !tbaa !2067
  %.val4.val.i.i.us = load float, ptr %.val4.i.i.us, align 4, !tbaa !1313
  %i.s = fsub float %.val.us, %.val4.val.i.i.us
  %i.t = call noundef float @llvm.fabs.f32(float %i.s)
  store float %i.t, ptr %i.c, align 4, !tbaa !1313
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #30
  %.val.i.i.us = load ptr, ptr %i.j, align 8, !tbaa !2067
  %.val.val.i.i.us = load float, ptr %.val.i.i.us, align 4, !tbaa !1313
  %i.u = fsub float %.val29.us, %.val.val.i.i.us
  %i.v = call noundef float @llvm.fabs.f32(float %i.u)
  store float %i.v, ptr %i.d, align 4, !tbaa !1313
  %i.w = call noundef zeroext i1 @_ZN6duckdb11GreaterThan9OperationIfEEbRKT_S4_(ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  %i.x = or disjoint i64 %i.n, 1
  %spec.select.us = select i1 %i.w, i64 %i.x, i64 %i.o ; 4 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %spec.select.us
  %i.z = load float, ptr %i.y, align 4, !tbaa !1313
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.030.us
  store float %i.z, ptr %i.aa, align 4, !tbaa !1313
  %i.ab = icmp slt i64 %spec.select.us, %i.f
  br i1 %i.ab, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS2_12_GLOBAL__N_111MadAccessorIfffEEEEEclIPfSA_EEbT_T0_.exit.us, label %._crit_edge, !llvm.loop !2198

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS2_12_GLOBAL__N_111MadAccessorIfffEEEEEclIPfSA_EEbT_T0_.exit: ; preds = %.lr.ph, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS2_12_GLOBAL__N_111MadAccessorIfffEEEEEclIPfSA_EEbT_T0_.exit
  %.030 = phi i64 [ %spec.select, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS2_12_GLOBAL__N_111MadAccessorIfffEEEEEclIPfSA_EEbT_T0_.exit ], [ %1, %.lr.ph ] ; 2 uses
  %i.ac = shl i64 %.030, 1                        ; 3 uses
  %i.ad = add i64 %i.ac, 2                        ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ad
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ac
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  %.val = load float, ptr %i.ae, align 4, !tbaa !1313
  %.val29 = load float, ptr %i.ag, align 4, !tbaa !1313
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #30
  %.val4.i.i = load ptr, ptr %i.h, align 8, !tbaa !2067
  %.val4.val.i.i = load float, ptr %.val4.i.i, align 4, !tbaa !1313
  %i.ah = fsub float %.val, %.val4.val.i.i
  %i.ai = call noundef float @llvm.fabs.f32(float %i.ah)
  store float %i.ai, ptr %i.c, align 4, !tbaa !1313
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #30
  %.val.i.i = load ptr, ptr %i.j, align 8, !tbaa !2067
  %.val.val.i.i = load float, ptr %.val.i.i, align 4, !tbaa !1313
  %i.aj = fsub float %.val29, %.val.val.i.i
  %i.ak = call noundef float @llvm.fabs.f32(float %i.aj)
  store float %i.ak, ptr %i.d, align 4, !tbaa !1313
  %i.al = call noundef zeroext i1 @_ZN6duckdb11GreaterThan9OperationIfEEbRKT_S4_(ptr noundef nonnull align 4 dereferenceable(4) %i.d, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  %i.am = or disjoint i64 %i.ac, 1
  %spec.select = select i1 %i.al, i64 %i.am, i64 %i.ad ; 4 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %spec.select
  %i.ao = load float, ptr %i.an, align 4, !tbaa !1313
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.030
  store float %i.ao, ptr %i.ap, align 4, !tbaa !1313
  %i.aq = icmp slt i64 %spec.select, %i.f
  br i1 %i.aq, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS2_12_GLOBAL__N_111MadAccessorIfffEEEEEclIPfSA_EEbT_T0_.exit, label %._crit_edge, !llvm.loop !2198

._crit_edge:                                      ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS2_12_GLOBAL__N_111MadAccessorIfffEEEEEclIPfSA_EEbT_T0_.exit, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS2_12_GLOBAL__N_111MadAccessorIfffEEEEEclIPfSA_EEbT_T0_.exit.us, %bb.a
  %.0.lcssa = phi i64 [ %1, %bb.a ], [ %spec.select.us, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS2_12_GLOBAL__N_111MadAccessorIfffEEEEEclIPfSA_EEbT_T0_.exit.us ], [ %spec.select, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS2_12_GLOBAL__N_111MadAccessorIfffEEEEEclIPfSA_EEbT_T0_.exit ] ; 5 uses
  %i.ar = and i64 %2, 1
  %i.as = icmp eq i64 %i.ar, 0
  br i1 %i.as, label %bb.b, label %bb.d

bb.b:                                             ; preds = %._crit_edge
  %i.at = add nsw i64 %2, -2
  %i.au = ashr exact i64 %i.at, 1
  %i.av = icmp eq i64 %.0.lcssa, %i.au
  br i1 %i.av, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.aw = shl nuw nsw i64 %.0.lcssa, 1
  %i.ax = or disjoint i64 %i.aw, 1                ; 2 uses
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ax
  %i.az = load float, ptr %i.ay, align 4, !tbaa !1313
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0.lcssa
  store float %i.az, ptr %i.ba, align 4, !tbaa !1313
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge
  %.128 = phi i64 [ %i.ax, %bb.c ], [ %.0.lcssa, %bb.b ], [ %.0.lcssa, %._crit_edge ] ; 4 uses
  %.sroa.0.0.copyload = load ptr, ptr %4, align 8, !tbaa !2029 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !2029 ; 2 uses
  %i.bb = icmp samesign ugt i64 %.128, %1
  br i1 %i.bb, label %.lr.ph.i.preheader, label %_ZSt11__push_heapIPflfN9__gnu_cxx5__ops14_Iter_comp_valIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIfffEEEEEEEvT_T0_SC_T1_RT2_.exit

.lr.ph.i.preheader:                               ; preds = %bb.d
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.sroa.5.0.copyload = load i8, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !247
  %i.bc = trunc nuw i8 %.sroa.5.0.copyload to i1
  br i1 %i.bc, label %.lr.ph.i.us, label %.lr.ph.i

.lr.ph.i.us:                                      ; preds = %.lr.ph.i.preheader, %bb.e
  %.01317.i.us = phi i64 [ %.01822.i.us, %bb.e ], [ %.128, %.lr.ph.i.preheader ] ; 3 uses
  %.018.in.i.us = add nsw i64 %.01317.i.us, -1
  %.01822.i.us = lshr i64 %.018.in.i.us, 1        ; 4 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.01822.i.us ; 2 uses
  %.val.i.us = load float, ptr %i.bd, align 4, !tbaa !1313
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %.val4.i.i.i.us = load ptr, ptr %.sroa.0.0.copyload, align 8, !tbaa !2067
  %.val4.val.i.i.i.us = load float, ptr %.val4.i.i.i.us, align 4, !tbaa !1313
  %i.be = fsub float %.val.i.us, %.val4.val.i.i.i.us
  %i.bf = call noundef float @llvm.fabs.f32(float %i.be)
  store float %i.bf, ptr %i.a, align 4, !tbaa !1313
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  %.val.i.i.i.us = load ptr, ptr %.sroa.4.0.copyload, align 8, !tbaa !2067
  %.val.val.i.i.i.us = load float, ptr %.val.i.i.i.us, align 4, !tbaa !1313
  %i.bg = fsub float %3, %.val.val.i.i.i.us
  %i.bh = call noundef float @llvm.fabs.f32(float %i.bg)
  store float %i.bh, ptr %i.b, align 4, !tbaa !1313
  %i.bi = call noundef zeroext i1 @_ZN6duckdb11GreaterThan9OperationIfEEbRKT_S4_(ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  br i1 %i.bi, label %bb.e, label %_ZSt11__push_heapIPflfN9__gnu_cxx5__ops14_Iter_comp_valIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIfffEEEEEEEvT_T0_SC_T1_RT2_.exit

bb.e:                                             ; preds = %.lr.ph.i.us
  %i.bj = load float, ptr %i.bd, align 4, !tbaa !1313
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.01317.i.us
  store float %i.bj, ptr %i.bk, align 4, !tbaa !1313
  %i.bl = icmp samesign ugt i64 %.01822.i.us, %1
  br i1 %i.bl, label %.lr.ph.i.us, label %_ZSt11__push_heapIPflfN9__gnu_cxx5__ops14_Iter_comp_valIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIfffEEEEEEEvT_T0_SC_T1_RT2_.exit, !llvm.loop !2199

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.f
  %.01317.i = phi i64 [ %.01822.i, %bb.f ], [ %.128, %.lr.ph.i.preheader ] ; 3 uses
  %.018.in.i = add nsw i64 %.01317.i, -1
  %.01822.i = lshr i64 %.018.in.i, 1              ; 4 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.01822.i ; 2 uses
  %.val.i = load float, ptr %i.bm, align 4, !tbaa !1313
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %.val4.i.i.i = load ptr, ptr %.sroa.0.0.copyload, align 8, !tbaa !2067
  %.val4.val.i.i.i = load float, ptr %.val4.i.i.i, align 4, !tbaa !1313
  %i.bn = fsub float %.val.i, %.val4.val.i.i.i
  %i.bo = call noundef float @llvm.fabs.f32(float %i.bn)
  store float %i.bo, ptr %i.a, align 4, !tbaa !1313
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  %.val.i.i.i = load ptr, ptr %.sroa.4.0.copyload, align 8, !tbaa !2067
  %.val.val.i.i.i = load float, ptr %.val.i.i.i, align 4, !tbaa !1313
  %i.bp = fsub float %3, %.val.val.i.i.i
  %i.bq = call noundef float @llvm.fabs.f32(float %i.bp)
  store float %i.bq, ptr %i.b, align 4, !tbaa !1313
  %i.br = call noundef zeroext i1 @_ZN6duckdb11GreaterThan9OperationIfEEbRKT_S4_(ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  br i1 %i.br, label %bb.f, label %_ZSt11__push_heapIPflfN9__gnu_cxx5__ops14_Iter_comp_valIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIfffEEEEEEEvT_T0_SC_T1_RT2_.exit

bb.f:                                             ; preds = %.lr.ph.i
  %i.bs = load float, ptr %i.bm, align 4, !tbaa !1313
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.01317.i
  store float %i.bs, ptr %i.bt, align 4, !tbaa !1313
  %i.bu = icmp samesign ugt i64 %.01822.i, %1
  br i1 %i.bu, label %.lr.ph.i, label %_ZSt11__push_heapIPflfN9__gnu_cxx5__ops14_Iter_comp_valIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIfffEEEEEEEvT_T0_SC_T1_RT2_.exit, !llvm.loop !2199

_ZSt11__push_heapIPflfN9__gnu_cxx5__ops14_Iter_comp_valIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIfffEEEEEEEvT_T0_SC_T1_RT2_.exit: ; preds = %bb.f, %.lr.ph.i, %bb.e, %.lr.ph.i.us, %bb.d
  %.013.lcssa.i = phi i64 [ %.128, %bb.d ], [ %.01822.i.us, %bb.e ], [ %.01317.i.us, %.lr.ph.i.us ], [ %.01317.i, %.lr.ph.i ], [ %.01822.i, %bb.f ]
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.013.lcssa.i
  store float %3, ptr %i.bv, align 4, !tbaa !1313
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #18

; Function Attrs: nounwind
declare void @_ZN6duckdb9DataChunkD1Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72)) unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb19ColumnDataScanStateD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
end_hunk_0
begin_hunk_1_@_ZN6duckdbL17CastExceptionTextIddEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_:bb.a

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49
  %i.cr = load ptr, ptr %3, align 8, !tbaa !22    ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ct = icmp eq ptr %i.cr, %i.cs
  br i1 %i.ct, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51
  call void @_ZdlPv(ptr noundef %i.cr) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52
  %i.cu = load ptr, ptr %7, align 8, !tbaa !22    ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.cw = icmp eq ptr %i.cu, %i.cv
  br i1 %i.cw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54
  call void @_ZdlPv(ptr noundef %i.cu) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  %i.cx = load ptr, ptr %4, align 8, !tbaa !22    ; 2 uses
  %i.cy = icmp eq ptr %i.cx, %i.q
  br i1 %i.cy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57
  call void @_ZdlPv(ptr noundef %i.cx) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58
  %i.cz = load ptr, ptr %5, align 8, !tbaa !22    ; 2 uses
  %i.da = icmp eq ptr %i.cz, %i.b
  br i1 %i.da, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60
  call void @_ZdlPv(ptr noundef %i.cz) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61
  %i.db = load ptr, ptr %6, align 8, !tbaa !22    ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.dd = icmp eq ptr %i.db, %i.dc
  br i1 %i.dd, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i65, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63
  call void @_ZdlPv(ptr noundef %i.db) #34
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i65

bb.r:                                             ; preds = %bb.a
  %i.de = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84

bb.s:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %bb.d
  %i.df = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81

bb.t:                                             ; preds = %bb.f
  %i.dg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78

bb.u:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, %bb.k, %.critedge.i
  %i.dh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75

bb.v:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i39, %bb.m
  %i.di = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72

bb.w:                                             ; preds = %bb.o
  %i.dj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69

bb.x:                                             ; preds = %bb.p
  %i.dk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dl = load ptr, ptr %8, align 8, !tbaa !22    ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.dn = icmp eq ptr %i.dl, %i.dm
  br i1 %i.dn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67: ; preds = %bb.x
  call void @_ZdlPv(ptr noundef %i.dl) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67, %bb.w
  %.pn22 = phi { ptr, i32 } [ %i.dj, %bb.w ], [ %i.dk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67 ], [ %i.dk, %bb.x ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  %i.do = load ptr, ptr %2, align 8, !tbaa !22    ; 2 uses
  %i.dp = icmp eq ptr %i.do, %i.ca
  br i1 %i.dp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69
  call void @_ZdlPv(ptr noundef %i.do) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70, %bb.v
  %.pn22.pn = phi { ptr, i32 } [ %i.di, %bb.v ], [ %.pn22, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70 ], [ %.pn22, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69 ] ; 2 uses
  %i.dq = load ptr, ptr %3, align 8, !tbaa !22    ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ds = icmp eq ptr %i.dq, %i.dr
  br i1 %i.ds, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72
  call void @_ZdlPv(ptr noundef %i.dq) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73, %bb.u
  %.pn22.pn.pn = phi { ptr, i32 } [ %i.dh, %bb.u ], [ %.pn22.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73 ], [ %.pn22.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72 ] ; 2 uses
  %i.dt = load ptr, ptr %7, align 8, !tbaa !22    ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.dv = icmp eq ptr %i.dt, %i.du
  br i1 %i.dv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75
  call void @_ZdlPv(ptr noundef %i.dt) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76, %bb.t
  %.pn22.pn.pn.pn = phi { ptr, i32 } [ %i.dg, %bb.t ], [ %.pn22.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76 ], [ %.pn22.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  %i.dw = load ptr, ptr %4, align 8, !tbaa !22    ; 2 uses
  %i.dx = icmp eq ptr %i.dw, %i.q
  br i1 %i.dx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78
  call void @_ZdlPv(ptr noundef %i.dw) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79, %bb.s
  %.pn22.pn.pn.pn.pn = phi { ptr, i32 } [ %i.df, %bb.s ], [ %.pn22.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79 ], [ %.pn22.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78 ] ; 2 uses
  %i.dy = load ptr, ptr %5, align 8, !tbaa !22    ; 2 uses
  %i.dz = icmp eq ptr %i.dy, %i.b
  br i1 %i.dz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81
  call void @_ZdlPv(ptr noundef %i.dy) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82, %bb.r
  %.pn22.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.de, %bb.r ], [ %.pn22.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82 ], [ %.pn22.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81 ]
  %i.ea = load ptr, ptr %6, align 8, !tbaa !22    ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ec = icmp eq ptr %i.ea, %i.eb
  br i1 %i.ec, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i86, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84
  call void @_ZdlPv(ptr noundef %i.ea) #34
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i86

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i65: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  ret void

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i86: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  resume { ptr, i32 } %.pn22.pn.pn.pn.pn.pn
}

declare void @_ZN6duckdb15ConvertToString9OperationIdEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, double noundef) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZSt11nth_elementIPdN6duckdb15QuantileCompareINS1_12_GLOBAL__N_111MadAccessorIdddEEEEEvT_S7_S7_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readonly byval(%"struct.duckdb::QuantileCompare.668") align 8 captures(none) %3) unnamed_addr #7 {
bb.a:
  %i.a = alloca double, align 8                   ; 8 uses
  %i.b = alloca double, align 8                   ; 8 uses
  %i.c = alloca double, align 8                   ; 6 uses
  %i.d = alloca double, align 8                   ; 6 uses
  %i.e = alloca double, align 8                   ; 8 uses
  %i.f = alloca double, align 8                   ; 8 uses
  %i.g = alloca double, align 8                   ; 8 uses
  %i.h = alloca double, align 8                   ; 8 uses
  %i.i = alloca double, align 8                   ; 6 uses
  %i.j = alloca double, align 8                   ; 6 uses
  %i.k = alloca double, align 8                   ; 6 uses
  %i.l = alloca double, align 8                   ; 6 uses
  %i.m = alloca double, align 8                   ; 6 uses
  %i.n = alloca double, align 8                   ; 6 uses
  %i.o = alloca double, align 8                   ; 6 uses
  %i.p = alloca double, align 8                   ; 6 uses
  %i.q = alloca double, align 8                   ; 6 uses
  %i.r = alloca double, align 8                   ; 6 uses
  %i.s = alloca double, align 8                   ; 8 uses
  %i.t = alloca double, align 8                   ; 8 uses
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.670", align 8 ; 9 uses
  %.sroa.10 = alloca [7 x i8], align 1            ; 4 uses
  %i.u = icmp eq ptr %0, %2
  %i.v = icmp eq ptr %1, %2
  %or.cond = or i1 %i.u, %i.v
  br i1 %or.cond, label %bb.u, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.w = ptrtoint ptr %2 to i64
  %i.x = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.y = sub i64 %i.w, %i.x                       ; 3 uses
  %i.z = ashr exact i64 %i.y, 3
  %i.aa = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.z, i1 true) ; 2 uses
  %i.ab = shl nuw nsw i64 %i.aa, 1
  %i.ac = xor i64 %i.ab, 126
  %.sroa.016.0.copyload = load ptr, ptr %3, align 8, !tbaa !2429 ; 15 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !2429 ; 15 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.3.0.copyload = load i8, ptr %.sroa.3.0..sroa_idx, align 8, !tbaa !247 ; 4 uses
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 17
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.10, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.417.0..sroa_idx, i64 7, i1 false)
  %i.ad = icmp sgt i64 %i.y, 24
  br i1 %i.ad, label %.lr.ph.i.preheader, label %._crit_edge.i

.lr.ph.i.preheader:                               ; preds = %bb.b
  %i.ae = icmp eq i64 %i.aa, 63
  br i1 %i.ae, label %.lr.ph.i._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.i.preheader
  %i.af = trunc nuw i8 %.sroa.3.0.copyload to i1  ; 5 uses
  br label %bb.i

.lr.ph.i:                                         ; preds = %_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIdddEEEEEEET_SB_SB_T0_.exit.i
  %i.ag = icmp eq i64 %i.bo, 0
  br i1 %i.ag, label %.lr.ph.i._crit_edge, label %bb.i, !llvm.loop !2548

.lr.ph.i._crit_edge:                              ; preds = %.lr.ph.i, %.lr.ph.i.preheader
  %.lcssa24 = phi i64 [ %i.x, %.lr.ph.i.preheader ], [ %i.ea, %.lr.ph.i ]
  %.054.i.lcssa = phi ptr [ %0, %.lr.ph.i.preheader ], [ %.0..i, %.lr.ph.i ] ; 10 uses
  %.01750.i.lcssa = phi ptr [ %2, %.lr.ph.i.preheader ], [ %..017.i, %.lr.ph.i ] ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store ptr %.sroa.016.0.copyload, ptr %4, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %.sroa.2.0.copyload, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i8 %.sroa.3.0.copyload, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.10.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.10, i64 7, i1 false)
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = sub i64 %i.ai, %.lcssa24
  %i.ak = ashr exact i64 %i.aj, 3                 ; 5 uses
  %i.al = icmp slt i64 %i.ak, 2
  br i1 %i.al, label %_ZSt11__make_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIdddEEEEEEEvT_SB_RT0_.exit.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i._crit_edge
  %i.am = add nsw i64 %i.ak, -2
  %i.an = lshr i64 %i.am, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %.014.i.i.i = phi i64 [ %i.an, %bb.c ], [ %i.aq, %bb.d ] ; 4 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %.054.i.lcssa, i64 %.014.i.i.i
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !776
  call fastcc void @_ZSt13__adjust_heapIPdldN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIdddEEEEEEEvT_T0_SC_T1_T2_(ptr noundef %.054.i.lcssa, i64 noundef %.014.i.i.i, i64 noundef %i.ak, double noundef %i.ap, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.670") align 8 %4)
  %.not.i.i.i = icmp eq i64 %.014.i.i.i, 0
  %i.aq = add nsw i64 %.014.i.i.i, -1
  br i1 %.not.i.i.i, label %_ZSt11__make_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIdddEEEEEEEvT_SB_RT0_.exit.i.i, label %bb.d, !llvm.loop !2549

_ZSt11__make_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIdddEEEEEEEvT_SB_RT0_.exit.i.i: ; preds = %bb.d, %.lr.ph.i._crit_edge
  %i.ar = icmp ult ptr %i.ah, %.01750.i.lcssa
  br i1 %i.ar, label %.lr.ph.i.i, label %_ZSt13__heap_selectIPdN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIdddEEEEEEEvT_SB_SB_T0_.exit.i

.lr.ph.i.i:                                       ; preds = %_ZSt11__make_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIdddEEEEEEEvT_SB_RT0_.exit.i.i
  %i.as = trunc nuw i8 %.sroa.3.0.copyload to i1
  br i1 %i.as, label %.split.us.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS2_12_GLOBAL__N_111MadAccessorIdddEEEEEclIPdSA_EEbT_T0_.exit.i.i

.split.us.i.i:                                    ; preds = %.lr.ph.i.i, %bb.f
  %.011.us.i.i = phi ptr [ %i.ba, %bb.f ], [ %i.ah, %.lr.ph.i.i ] ; 4 uses
  %.0.val.us.i.i = load double, ptr %.011.us.i.i, align 8, !tbaa !776
  %.val.us.i.i = load double, ptr %.054.i.lcssa, align 8, !tbaa !776
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #30
  %.val4.i.i.us.i.i = load ptr, ptr %.sroa.016.0.copyload, align 8, !tbaa !2446
  %.val4.val.i.i.us.i.i = load double, ptr %.val4.i.i.us.i.i, align 8, !tbaa !776
  %i.at = fsub double %.0.val.us.i.i, %.val4.val.i.i.us.i.i
  %i.au = call noundef double @llvm.fabs.f64(double %i.at)
  store double %i.au, ptr %i.s, align 8, !tbaa !776
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t) #30
  %.val.i.i.us.i.i = load ptr, ptr %.sroa.2.0.copyload, align 8, !tbaa !2446
  %.val.val.i.i.us.i.i = load double, ptr %.val.i.i.us.i.i, align 8, !tbaa !776
  %i.av = fsub double %.val.us.i.i, %.val.val.i.i.us.i.i
  %i.aw = call noundef double @llvm.fabs.f64(double %i.av)
  store double %i.aw, ptr %i.t, align 8, !tbaa !776
  %i.ax = call noundef zeroext i1 @_ZN6duckdb11GreaterThan9OperationIdEEbRKT_S4_(ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef nonnull align 8 dereferenceable(8) %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #30
  br i1 %i.ax, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.split.us.i.i
  %i.ay = load double, ptr %.011.us.i.i, align 8, !tbaa !776
  %i.az = load double, ptr %.054.i.lcssa, align 8, !tbaa !776
  store double %i.az, ptr %.011.us.i.i, align 8, !tbaa !776
  call fastcc void @_ZSt13__adjust_heapIPdldN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIdddEEEEEEEvT_T0_SC_T1_T2_(ptr noundef nonnull %.054.i.lcssa, i64 noundef 0, i64 noundef %i.ak, double noundef %i.ay, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.670") align 8 %4)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.split.us.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %.011.us.i.i, i64 8 ; 2 uses
  %i.bb = icmp ult ptr %i.ba, %.01750.i.lcssa
  br i1 %i.bb, label %.split.us.i.i, label %_ZSt13__heap_selectIPdN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIdddEEEEEEEvT_SB_SB_T0_.exit.i, !llvm.loop !2550

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS2_12_GLOBAL__N_111MadAccessorIdddEEEEEclIPdSA_EEbT_T0_.exit.i.i: ; preds = %.lr.ph.i.i, %bb.h
  %.011.i.i = phi ptr [ %i.bj, %bb.h ], [ %i.ah, %.lr.ph.i.i ] ; 4 uses
  %.0.val.i.i = load double, ptr %.011.i.i, align 8, !tbaa !776
  %.val.i.i = load double, ptr %.054.i.lcssa, align 8, !tbaa !776
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #30
  %.val4.i.i.i.i = load ptr, ptr %.sroa.016.0.copyload, align 8, !tbaa !2446
  %.val4.val.i.i.i.i = load double, ptr %.val4.i.i.i.i, align 8, !tbaa !776
  %i.bc = fsub double %.0.val.i.i, %.val4.val.i.i.i.i
  %i.bd = call noundef double @llvm.fabs.f64(double %i.bc)
  store double %i.bd, ptr %i.s, align 8, !tbaa !776
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t) #30
  %.val.i.i.i.i = load ptr, ptr %.sroa.2.0.copyload, align 8, !tbaa !2446
  %.val.val.i.i.i.i = load double, ptr %.val.i.i.i.i, align 8, !tbaa !776
  %i.be = fsub double %.val.i.i, %.val.val.i.i.i.i
  %i.bf = call noundef double @llvm.fabs.f64(double %i.be)
  store double %i.bf, ptr %i.t, align 8, !tbaa !776
  %i.bg = call noundef zeroext i1 @_ZN6duckdb11GreaterThan9OperationIdEEbRKT_S4_(ptr noundef nonnull align 8 dereferenceable(8) %i.t, ptr noundef nonnull align 8 dereferenceable(8) %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #30
  br i1 %i.bg, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS2_12_GLOBAL__N_111MadAccessorIdddEEEEEclIPdSA_EEbT_T0_.exit.i.i
  %i.bh = load double, ptr %.011.i.i, align 8, !tbaa !776
  %i.bi = load double, ptr %.054.i.lcssa, align 8, !tbaa !776
  store double %i.bi, ptr %.011.i.i, align 8, !tbaa !776
  call fastcc void @_ZSt13__adjust_heapIPdldN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIdddEEEEEEEvT_T0_SC_T1_T2_(ptr noundef nonnull %.054.i.lcssa, i64 noundef 0, i64 noundef %i.ak, double noundef %i.bh, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.670") align 8 %4)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS2_12_GLOBAL__N_111MadAccessorIdddEEEEEclIPdSA_EEbT_T0_.exit.i.i
  %i.bj = getelementptr inbounds nuw i8, ptr %.011.i.i, i64 8 ; 2 uses
  %i.bk = icmp ult ptr %i.bj, %.01750.i.lcssa
  br i1 %i.bk, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS2_12_GLOBAL__N_111MadAccessorIdddEEEEEclIPdSA_EEbT_T0_.exit.i.i, label %_ZSt13__heap_selectIPdN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIdddEEEEEEEvT_SB_SB_T0_.exit.i, !llvm.loop !2550

_ZSt13__heap_selectIPdN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIdddEEEEEEEvT_SB_SB_T0_.exit.i: ; preds = %bb.h, %bb.f, %_ZSt11__make_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIdddEEEEEEEvT_SB_RT0_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.bl = load double, ptr %.054.i.lcssa, align 8, !tbaa !776
  %i.bm = load double, ptr %1, align 8, !tbaa !776
  store double %i.bm, ptr %.054.i.lcssa, align 8, !tbaa !776
  store double %i.bl, ptr %1, align 8, !tbaa !776
  br label %_ZSt13__introselectIPdlN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIdddEEEEEEEvT_SB_SB_T0_T1_.exit

bb.i:                                             ; preds = %.lr.ph, %.lr.ph.i
  %.01750.i31 = phi ptr [ %2, %.lr.ph ], [ %..017.i, %.lr.ph.i ] ; 4 uses
  %.01653.i30 = phi i64 [ %i.ac, %.lr.ph ], [ %i.bo, %.lr.ph.i ]
  %.054.i27 = phi ptr [ %0, %.lr.ph ], [ %.0..i, %.lr.ph.i ] ; 9 uses
  %i.bn = phi i64 [ %i.y, %.lr.ph ], [ %i.eb, %.lr.ph.i ]
  %i.bo = add nsw i64 %.01653.i30, -1             ; 2 uses
  %i.bp = lshr i64 %i.bn, 4
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %.054.i27, i64 %i.bp ; 7 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.054.i27, i64 8 ; 9 uses
  %i.bs = getelementptr inbounds i8, ptr %.01750.i31, i64 -8 ; 8 uses
  %.val29.i.i.i = load double, ptr %i.br, align 8, !tbaa !776
  %.val30.i.i.i = load double, ptr %i.bq, align 8, !tbaa !776
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #30
  %.val4.i.i.i.i.i = load ptr, ptr %.sroa.016.0.copyload, align 8, !tbaa !2446
  %.val4.val.i.i.i.i.i = load double, ptr %.val4.i.i.i.i.i, align 8, !tbaa !776
  %i.bt = fsub double %.val29.i.i.i, %.val4.val.i.i.i.i.i
  %i.bu = call noundef double @llvm.fabs.f64(double %i.bt)
  store double %i.bu, ptr %i.q, align 8, !tbaa !776
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #30
  %.val.i.i.i.i.i = load ptr, ptr %.sroa.2.0.copyload, align 8, !tbaa !2446
  %.val.val.i.i.i.i.i = load double, ptr %.val.i.i.i.i.i, align 8, !tbaa !776
  %i.bv = fsub double %.val30.i.i.i, %.val.val.i.i.i.i.i
  %i.bw = call noundef double @llvm.fabs.f64(double %i.bv)
  store double %i.bw, ptr %i.r, align 8, !tbaa !776
  br i1 %i.af, label %.split.i.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS2_12_GLOBAL__N_111MadAccessorIdddEEEEEclIPdSA_EEbT_T0_.exit.i.i.i

.split.i.i.i:                                     ; preds = %bb.i
  %i.bx = call noundef zeroext i1 @_ZN6duckdb11GreaterThan9OperationIdEEbRKT_S4_(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull align 8 dereferenceable(8) %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #30
  br i1 %i.bx, label %bb.j, label %bb.l

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS2_12_GLOBAL__N_111MadAccessorIdddEEEEEclIPdSA_EEbT_T0_.exit.i.i.i: ; preds = %bb.i
  %i.by = call noundef zeroext i1 @_ZN6duckdb11GreaterThan9OperationIdEEbRKT_S4_(ptr noundef nonnull align 8 dereferenceable(8) %i.r, ptr noundef nonnull align 8 dereferenceable(8) %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #30
  br i1 %i.by, label %bb.j, label %bb.l

bb.j:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS2_12_GLOBAL__N_111MadAccessorIdddEEEEEclIPdSA_EEbT_T0_.exit.i.i.i, %.split.i.i.i
  %.val27.i.i.i = load double, ptr %i.bq, align 8, !tbaa !776
  %.val28.i.i.i = load double, ptr %i.bs, align 8, !tbaa !776
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #30
  %.val4.i.i31.i.i.i = load ptr, ptr %.sroa.016.0.copyload, align 8, !tbaa !2446
  %.val4.val.i.i32.i.i.i = load double, ptr %.val4.i.i31.i.i.i, align 8, !tbaa !776
  %i.bz = fsub double %.val27.i.i.i, %.val4.val.i.i32.i.i.i
  %i.ca = call noundef double @llvm.fabs.f64(double %i.bz)
  store double %i.ca, ptr %i.o, align 8, !tbaa !776
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #30
  %.val.i.i33.i.i.i = load ptr, ptr %.sroa.2.0.copyload, align 8, !tbaa !2446
  %.val.val.i.i34.i.i.i = load double, ptr %.val.i.i33.i.i.i, align 8, !tbaa !776
  %i.cb = fsub double %.val28.i.i.i, %.val.val.i.i34.i.i.i
  %i.cc = call noundef double @llvm.fabs.f64(double %i.cb)
  store double %i.cc, ptr %i.p, align 8, !tbaa !776
  br i1 %i.af, label %.split51.i.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS2_12_GLOBAL__N_111MadAccessorIdddEEEEEclIPdSA_EEbT_T0_.exit35.i.i.i

.split51.i.i.i:                                   ; preds = %bb.j
  %i.cd = call noundef zeroext i1 @_ZN6duckdb11GreaterThan9OperationIdEEbRKT_S4_(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull align 8 dereferenceable(8) %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #30
  br i1 %i.cd, label %.split24.us.us.i.i.i.preheader, label %bb.k

.split24.us.us.i.i.i.preheader:                   ; preds = %_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIdddEEEEEEEvT_SB_SB_SB_T0_.exit.thread34.i.i, %.split54.i.i.i, %.split53.i.i.i, %.split52.i.i.i, %.split51.i.i.i
  %.sink57.i.ph33.sink41.sink.i.i.ph = phi ptr [ %i.bq, %.split51.i.i.i ], [ %i.bs, %.split52.i.i.i ], [ %i.br, %.split53.i.i.i ], [ %i.bs, %.split54.i.i.i ], [ %.sink57.i.ph33.i.i, %_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIdddEEEEEEEvT_SB_SB_SB_T0_.exit.thread34.i.i ]
  br label %.split24.us.us.i.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS2_12_GLOBAL__N_111MadAccessorIdddEEEEEclIPdSA_EEbT_T0_.exit35.i.i.i: ; preds = %bb.j
  %i.ce = call noundef zeroext i1 @_ZN6duckdb11GreaterThan9OperationIdEEbRKT_S4_(ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef nonnull align 8 dereferenceable(8) %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #30
  br i1 %i.ce, label %.split24.i.i.i.preheader, label %bb.k

.split24.i.i.i.preheader:                         ; preds = %_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIdddEEEEEEEvT_SB_SB_SB_T0_.exit.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS2_12_GLOBAL__N_111MadAccessorIdddEEEEEclIPdSA_EEbT_T0_.exit50.i.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS2_12_GLOBAL__N_111MadAccessorIdddEEEEEclIPdSA_EEbT_T0_.exit45.i.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS2_12_GLOBAL__N_111MadAccessorIdddEEEEEclIPdSA_EEbT_T0_.exit40.i.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS2_12_GLOBAL__N_111MadAccessorIdddEEEEEclIPdSA_EEbT_T0_.exit35.i.i.i
  %.sink57.i.sink39.sink.i.i.ph = phi ptr [ %i.bq, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS2_12_GLOBAL__N_111MadAccessorIdddEEEEEclIPdSA_EEbT_T0_.exit35.i.i.i ], [ %i.bs, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS2_12_GLOBAL__N_111MadAccessorIdddEEEEEclIPdSA_EEbT_T0_.exit40.i.i.i ], [ %i.br, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS2_12_GLOBAL__N_111MadAccessorIdddEEEEEclIPdSA_EEbT_T0_.exit45.i.i.i ], [ %i.bs, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS2_12_GLOBAL__N_111MadAccessorIdddEEEEEclIPdSA_EEbT_T0_.exit50.i.i.i ], [ %.sink57.i.i.i, %_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIdddEEEEEEEvT_SB_SB_SB_T0_.exit.i.i ]
  br label %.split24.i.i.i

bb.k:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS2_12_GLOBAL__N_111MadAccessorIdddEEEEEclIPdSA_EEbT_T0_.exit35.i.i.i, %.split51.i.i.i
  %.val25.i.i.i = load double, ptr %i.br, align 8, !tbaa !776
  %.val26.i.i.i = load double, ptr %i.bs, align 8, !tbaa !776
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #30
  %.val4.i.i36.i.i.i = load ptr, ptr %.sroa.016.0.copyload, align 8, !tbaa !2446
  %.val4.val.i.i37.i.i.i = load double, ptr %.val4.i.i36.i.i.i, align 8, !tbaa !776
  %i.cf = fsub double %.val25.i.i.i, %.val4.val.i.i37.i.i.i
  %i.cg = call noundef double @llvm.fabs.f64(double %i.cf)
  store double %i.cg, ptr %i.m, align 8, !tbaa !776
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #30
  %.val.i.i38.i.i.i = load ptr, ptr %.sroa.2.0.copyload, align 8, !tbaa !2446
  %.val.val.i.i39.i.i.i = load double, ptr %.val.i.i38.i.i.i, align 8, !tbaa !776
  %i.ch = fsub double %.val26.i.i.i, %.val.val.i.i39.i.i.i
  %i.ci = call noundef double @llvm.fabs.f64(double %i.ch)
  store double %i.ci, ptr %i.n, align 8, !tbaa !776
  br i1 %i.af, label %.split52.i.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS2_12_GLOBAL__N_111MadAccessorIdddEEEEEclIPdSA_EEbT_T0_.exit40.i.i.i

.split52.i.i.i:                                   ; preds = %bb.k
  %i.cj = call noundef zeroext i1 @_ZN6duckdb11GreaterThan9OperationIdEEbRKT_S4_(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull align 8 dereferenceable(8) %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #30
  br i1 %i.cj, label %.split24.us.us.i.i.i.preheader, label %_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIdddEEEEEEEvT_SB_SB_SB_T0_.exit.thread34.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS2_12_GLOBAL__N_111MadAccessorIdddEEEEEclIPdSA_EEbT_T0_.exit40.i.i.i: ; preds = %bb.k
  %i.ck = call noundef zeroext i1 @_ZN6duckdb11GreaterThan9OperationIdEEbRKT_S4_(ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef nonnull align 8 dereferenceable(8) %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #30
  br i1 %i.ck, label %.split24.i.i.i.preheader, label %_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIdddEEEEEEEvT_SB_SB_SB_T0_.exit.i.i

bb.l:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS2_12_GLOBAL__N_111MadAccessorIdddEEEEEclIPdSA_EEbT_T0_.exit.i.i.i, %.split.i.i.i
  %.val23.i.i.i = load double, ptr %i.br, align 8, !tbaa !776
  %.val24.i.i.i = load double, ptr %i.bs, align 8, !tbaa !776
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #30
  %.val4.i.i41.i.i.i = load ptr, ptr %.sroa.016.0.copyload, align 8, !tbaa !2446
  %.val4.val.i.i42.i.i.i = load double, ptr %.val4.i.i41.i.i.i, align 8, !tbaa !776
  %i.cl = fsub double %.val23.i.i.i, %.val4.val.i.i42.i.i.i
  %i.cm = call noundef double @llvm.fabs.f64(double %i.cl)
  store double %i.cm, ptr %i.k, align 8, !tbaa !776
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #30
  %.val.i.i43.i.i.i = load ptr, ptr %.sroa.2.0.copyload, align 8, !tbaa !2446
  %.val.val.i.i44.i.i.i = load double, ptr %.val.i.i43.i.i.i, align 8, !tbaa !776
  %i.cn = fsub double %.val24.i.i.i, %.val.val.i.i44.i.i.i
  %i.co = call noundef double @llvm.fabs.f64(double %i.cn)
  store double %i.co, ptr %i.l, align 8, !tbaa !776
  br i1 %i.af, label %.split53.i.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS2_12_GLOBAL__N_111MadAccessorIdddEEEEEclIPdSA_EEbT_T0_.exit45.i.i.i

.split53.i.i.i:                                   ; preds = %bb.l
  %i.cp = call noundef zeroext i1 @_ZN6duckdb11GreaterThan9OperationIdEEbRKT_S4_(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull align 8 dereferenceable(8) %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #30
  br i1 %i.cp, label %.split24.us.us.i.i.i.preheader, label %bb.m

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS2_12_GLOBAL__N_111MadAccessorIdddEEEEEclIPdSA_EEbT_T0_.exit45.i.i.i: ; preds = %bb.l
  %i.cq = call noundef zeroext i1 @_ZN6duckdb11GreaterThan9OperationIdEEbRKT_S4_(ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef nonnull align 8 dereferenceable(8) %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #30
  br i1 %i.cq, label %.split24.i.i.i.preheader, label %bb.m

bb.m:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS2_12_GLOBAL__N_111MadAccessorIdddEEEEEclIPdSA_EEbT_T0_.exit45.i.i.i, %.split53.i.i.i
  %.val.i.i.i = load double, ptr %i.bq, align 8, !tbaa !776
  %.val22.i.i.i = load double, ptr %i.bs, align 8, !tbaa !776
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #30
  %.val4.i.i46.i.i.i = load ptr, ptr %.sroa.016.0.copyload, align 8, !tbaa !2446
  %.val4.val.i.i47.i.i.i = load double, ptr %.val4.i.i46.i.i.i, align 8, !tbaa !776
  %i.cr = fsub double %.val.i.i.i, %.val4.val.i.i47.i.i.i
  %i.cs = call noundef double @llvm.fabs.f64(double %i.cr)
  store double %i.cs, ptr %i.i, align 8, !tbaa !776
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #30
  %.val.i.i48.i.i.i = load ptr, ptr %.sroa.2.0.copyload, align 8, !tbaa !2446
  %.val.val.i.i49.i.i.i = load double, ptr %.val.i.i48.i.i.i, align 8, !tbaa !776
  %i.ct = fsub double %.val22.i.i.i, %.val.val.i.i49.i.i.i
  %i.cu = call noundef double @llvm.fabs.f64(double %i.ct)
  store double %i.cu, ptr %i.j, align 8, !tbaa !776
  br i1 %i.af, label %.split54.i.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS2_12_GLOBAL__N_111MadAccessorIdddEEEEEclIPdSA_EEbT_T0_.exit50.i.i.i

.split54.i.i.i:                                   ; preds = %bb.m
  %i.cv = call noundef zeroext i1 @_ZN6duckdb11GreaterThan9OperationIdEEbRKT_S4_(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #30
  br i1 %i.cv, label %.split24.us.us.i.i.i.preheader, label %_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIdddEEEEEEEvT_SB_SB_SB_T0_.exit.thread34.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS2_12_GLOBAL__N_111MadAccessorIdddEEEEEclIPdSA_EEbT_T0_.exit50.i.i.i: ; preds = %bb.m
  %i.cw = call noundef zeroext i1 @_ZN6duckdb11GreaterThan9OperationIdEEbRKT_S4_(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull align 8 dereferenceable(8) %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #30
  br i1 %i.cw, label %.split24.i.i.i.preheader, label %_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIdddEEEEEEEvT_SB_SB_SB_T0_.exit.i.i

_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIdddEEEEEEEvT_SB_SB_SB_T0_.exit.thread34.i.i: ; preds = %.split54.i.i.i, %.split52.i.i.i
  %.sink57.i.ph33.i.i = phi ptr [ %i.bq, %.split54.i.i.i ], [ %i.br, %.split52.i.i.i ]
  br label %.split24.us.us.i.i.i.preheader

_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIdddEEEEEEEvT_SB_SB_SB_T0_.exit.i.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS2_12_GLOBAL__N_111MadAccessorIdddEEEEEclIPdSA_EEbT_T0_.exit50.i.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS2_12_GLOBAL__N_111MadAccessorIdddEEEEEclIPdSA_EEbT_T0_.exit40.i.i.i
  %.sink57.i.i.i = phi ptr [ %i.bq, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS2_12_GLOBAL__N_111MadAccessorIdddEEEEEclIPdSA_EEbT_T0_.exit50.i.i.i ], [ %i.br, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS2_12_GLOBAL__N_111MadAccessorIdddEEEEEclIPdSA_EEbT_T0_.exit40.i.i.i ]
  br label %.split24.i.i.i.preheader

.split24.us.us.i.i.i:                             ; preds = %.split24.us.us.i.i.i.preheader, %.split.us29.us.i.i.i
  %.sink44.i.i = phi ptr [ %.1.us.us.i.i.i, %.split.us29.us.i.i.i ], [ %.054.i27, %.split24.us.us.i.i.i.preheader ] ; 2 uses
  %.sink57.i.ph33.sink41.sink.i.i = phi ptr [ %.114.us.us.i.i.i, %.split.us29.us.i.i.i ], [ %.sink57.i.ph33.sink41.sink.i.i.ph, %.split24.us.us.i.i.i.preheader ] ; 2 uses
  %.013.us.i.i.i = phi ptr [ %.114.us.us.i.i.i, %.split.us29.us.i.i.i ], [ %.01750.i31, %.split24.us.us.i.i.i.preheader ]
  %.0.us.i.i.i = phi ptr [ %i.de, %.split.us29.us.i.i.i ], [ %i.br, %.split24.us.us.i.i.i.preheader ]
  %i.cx = load double, ptr %.sink44.i.i, align 8, !tbaa !776
  %i.cy = load double, ptr %.sink57.i.ph33.sink41.sink.i.i, align 8, !tbaa !776
  store double %i.cy, ptr %.sink44.i.i, align 8, !tbaa !776
  store double %i.cx, ptr %.sink57.i.ph33.sink41.sink.i.i, align 8, !tbaa !776
  br label %.split.us.us.i.i.i

.split.us.us.i.i.i:                               ; preds = %.split.us.us.i.i.i, %.split24.us.us.i.i.i
  %.1.us.us.i.i.i = phi ptr [ %.0.us.i.i.i, %.split24.us.us.i.i.i ], [ %i.de, %.split.us.us.i.i.i ] ; 5 uses
  %.1.val.us.us.i.i.i = load double, ptr %.1.us.us.i.i.i, align 8, !tbaa !776
  %.val15.us.us.i.i.i = load double, ptr %.054.i27, align 8, !tbaa !776
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #30
  %.val4.i.i.us.us.i.i.i = load ptr, ptr %.sroa.016.0.copyload, align 8, !tbaa !2446
  %.val4.val.i.i.us.us.i.i.i = load double, ptr %.val4.i.i.us.us.i.i.i, align 8, !tbaa !776
  %i.cz = fsub double %.1.val.us.us.i.i.i, %.val4.val.i.i.us.us.i.i.i
  %i.da = call noundef double @llvm.fabs.f64(double %i.cz)
  store double %i.da, ptr %i.g, align 8, !tbaa !776
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #30
  %.val.i.i.us.us.i.i.i = load ptr, ptr %.sroa.2.0.copyload, align 8, !tbaa !2446
  %.val.val.i.i.us.us.i.i.i = load double, ptr %.val.i.i.us.us.i.i.i, align 8, !tbaa !776
  %i.db = fsub double %.val15.us.us.i.i.i, %.val.val.i.i.us.us.i.i.i
  %i.dc = call noundef double @llvm.fabs.f64(double %i.db)
  store double %i.dc, ptr %i.h, align 8, !tbaa !776
  %i.dd = call noundef zeroext i1 @_ZN6duckdb11GreaterThan9OperationIdEEbRKT_S4_(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #30
  %i.de = getelementptr inbounds nuw i8, ptr %.1.us.us.i.i.i, i64 8 ; 2 uses
  br i1 %i.dd, label %.split.us.us.i.i.i, label %.split21.us.us.i.i.i, !llvm.loop !2551

.split21.us.us.i.i.i:                             ; preds = %.split.us.us.i.i.i, %.split21.us.us.i.i.i
  %.013.pn.us.us.i.i.i = phi ptr [ %.114.us.us.i.i.i, %.split21.us.us.i.i.i ], [ %.013.us.i.i.i, %.split.us.us.i.i.i ]
  %.114.us.us.i.i.i = getelementptr inbounds i8, ptr %.013.pn.us.us.i.i.i, i64 -8 ; 5 uses
  %.val.us.us.i.i.i = load double, ptr %.054.i27, align 8, !tbaa !776
  %.114.val.us.us.i.i.i = load double, ptr %.114.us.us.i.i.i, align 8, !tbaa !776
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #30
  %.val4.i.i16.us.us.i.i.i = load ptr, ptr %.sroa.016.0.copyload, align 8, !tbaa !2446
  %.val4.val.i.i17.us.us.i.i.i = load double, ptr %.val4.i.i16.us.us.i.i.i, align 8, !tbaa !776
  %i.df = fsub double %.val.us.us.i.i.i, %.val4.val.i.i17.us.us.i.i.i
  %i.dg = call noundef double @llvm.fabs.f64(double %i.df)
  store double %i.dg, ptr %i.e, align 8, !tbaa !776
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #30
  %.val.i.i18.us.us.i.i.i = load ptr, ptr %.sroa.2.0.copyload, align 8, !tbaa !2446
  %.val.val.i.i19.us.us.i.i.i = load double, ptr %.val.i.i18.us.us.i.i.i, align 8, !tbaa !776
  %i.dh = fsub double %.114.val.us.us.i.i.i, %.val.val.i.i19.us.us.i.i.i
  %i.di = call noundef double @llvm.fabs.f64(double %i.dh)
  store double %i.di, ptr %i.f, align 8, !tbaa !776
  %i.dj = call noundef zeroext i1 @_ZN6duckdb11GreaterThan9OperationIdEEbRKT_S4_(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #30
  br i1 %i.dj, label %.split21.us.us.i.i.i, label %.split.us29.us.i.i.i, !llvm.loop !2552

.split.us29.us.i.i.i:                             ; preds = %.split21.us.us.i.i.i
  %i.dk = icmp ult ptr %.1.us.us.i.i.i, %.114.us.us.i.i.i
  br i1 %i.dk, label %.split24.us.us.i.i.i, label %_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIdddEEEEEEET_SB_SB_T0_.exit.i, !llvm.loop !2553

.split24.i.i.i:                                   ; preds = %.split24.i.i.i.preheader, %.split.i16.i.i
  %.sink47.i.i = phi ptr [ %.1.i.i.i, %.split.i16.i.i ], [ %.054.i27, %.split24.i.i.i.preheader ] ; 2 uses
  %.sink57.i.sink39.sink.i.i = phi ptr [ %.114.i.i.i, %.split.i16.i.i ], [ %.sink57.i.sink39.sink.i.i.ph, %.split24.i.i.i.preheader ] ; 2 uses
  %.013.i.i.i = phi ptr [ %.114.i.i.i, %.split.i16.i.i ], [ %.01750.i31, %.split24.i.i.i.preheader ]
  %.0.i.i.i = phi ptr [ %i.ds, %.split.i16.i.i ], [ %i.br, %.split24.i.i.i.preheader ]
  %i.dl = load double, ptr %.sink47.i.i, align 8, !tbaa !776
  %i.dm = load double, ptr %.sink57.i.sink39.sink.i.i, align 8, !tbaa !776
  store double %i.dm, ptr %.sink47.i.i, align 8, !tbaa !776
  store double %i.dl, ptr %.sink57.i.sink39.sink.i.i, align 8, !tbaa !776
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS2_12_GLOBAL__N_111MadAccessorIdddEEEEEclIPdSA_EEbT_T0_.exit.i10.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS2_12_GLOBAL__N_111MadAccessorIdddEEEEEclIPdSA_EEbT_T0_.exit.i10.i.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS2_12_GLOBAL__N_111MadAccessorIdddEEEEEclIPdSA_EEbT_T0_.exit.i10.i.i, %.split24.i.i.i
  %.1.i.i.i = phi ptr [ %.0.i.i.i, %.split24.i.i.i ], [ %i.ds, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS2_12_GLOBAL__N_111MadAccessorIdddEEEEEclIPdSA_EEbT_T0_.exit.i10.i.i ] ; 5 uses
  %.1.val.i.i.i = load double, ptr %.1.i.i.i, align 8, !tbaa !776
  %.val15.i.i.i = load double, ptr %.054.i27, align 8, !tbaa !776
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #30
  %.val4.i.i.i11.i.i = load ptr, ptr %.sroa.016.0.copyload, align 8, !tbaa !2446
  %.val4.val.i.i.i12.i.i = load double, ptr %.val4.i.i.i11.i.i, align 8, !tbaa !776
  %i.dn = fsub double %.1.val.i.i.i, %.val4.val.i.i.i12.i.i
  %i.do = call noundef double @llvm.fabs.f64(double %i.dn)
  store double %i.do, ptr %i.g, align 8, !tbaa !776
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #30
  %.val.i.i.i13.i.i = load ptr, ptr %.sroa.2.0.copyload, align 8, !tbaa !2446
  %.val.val.i.i.i14.i.i = load double, ptr %.val.i.i.i13.i.i, align 8, !tbaa !776
  %i.dp = fsub double %.val15.i.i.i, %.val.val.i.i.i14.i.i
  %i.dq = call noundef double @llvm.fabs.f64(double %i.dp)
  store double %i.dq, ptr %i.h, align 8, !tbaa !776
  %i.dr = call noundef zeroext i1 @_ZN6duckdb11GreaterThan9OperationIdEEbRKT_S4_(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull align 8 dereferenceable(8) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #30
  %i.ds = getelementptr inbounds nuw i8, ptr %.1.i.i.i, i64 8 ; 2 uses
  br i1 %i.dr, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS2_12_GLOBAL__N_111MadAccessorIdddEEEEEclIPdSA_EEbT_T0_.exit.i10.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS2_12_GLOBAL__N_111MadAccessorIdddEEEEEclIPdSA_EEbT_T0_.exit20.i.i.i, !llvm.loop !2551

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS2_12_GLOBAL__N_111MadAccessorIdddEEEEEclIPdSA_EEbT_T0_.exit20.i.i.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS2_12_GLOBAL__N_111MadAccessorIdddEEEEEclIPdSA_EEbT_T0_.exit.i10.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS2_12_GLOBAL__N_111MadAccessorIdddEEEEEclIPdSA_EEbT_T0_.exit20.i.i.i
  %.013.pn.i.i.i = phi ptr [ %.114.i.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS2_12_GLOBAL__N_111MadAccessorIdddEEEEEclIPdSA_EEbT_T0_.exit20.i.i.i ], [ %.013.i.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS2_12_GLOBAL__N_111MadAccessorIdddEEEEEclIPdSA_EEbT_T0_.exit.i10.i.i ]
  %.114.i.i.i = getelementptr inbounds i8, ptr %.013.pn.i.i.i, i64 -8 ; 5 uses
  %.val.i15.i.i = load double, ptr %.054.i27, align 8, !tbaa !776
  %.114.val.i.i.i = load double, ptr %.114.i.i.i, align 8, !tbaa !776
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #30
  %.val4.i.i16.i.i.i = load ptr, ptr %.sroa.016.0.copyload, align 8, !tbaa !2446
  %.val4.val.i.i17.i.i.i = load double, ptr %.val4.i.i16.i.i.i, align 8, !tbaa !776
  %i.dt = fsub double %.val.i15.i.i, %.val4.val.i.i17.i.i.i
  %i.du = call noundef double @llvm.fabs.f64(double %i.dt)
  store double %i.du, ptr %i.e, align 8, !tbaa !776
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #30
  %.val.i.i18.i.i.i = load ptr, ptr %.sroa.2.0.copyload, align 8, !tbaa !2446
  %.val.val.i.i19.i.i.i = load double, ptr %.val.i.i18.i.i.i, align 8, !tbaa !776
  %i.dv = fsub double %.114.val.i.i.i, %.val.val.i.i19.i.i.i
  %i.dw = call noundef double @llvm.fabs.f64(double %i.dv)
  store double %i.dw, ptr %i.f, align 8, !tbaa !776
  %i.dx = call noundef zeroext i1 @_ZN6duckdb11GreaterThan9OperationIdEEbRKT_S4_(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #30
  br i1 %i.dx, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS2_12_GLOBAL__N_111MadAccessorIdddEEEEEclIPdSA_EEbT_T0_.exit20.i.i.i, label %.split.i16.i.i, !llvm.loop !2552

.split.i16.i.i:                                   ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS2_12_GLOBAL__N_111MadAccessorIdddEEEEEclIPdSA_EEbT_T0_.exit20.i.i.i
  %i.dy = icmp ult ptr %.1.i.i.i, %.114.i.i.i
  br i1 %i.dy, label %.split24.i.i.i, label %_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIdddEEEEEEET_SB_SB_T0_.exit.i, !llvm.loop !2553

_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIdddEEEEEEET_SB_SB_T0_.exit.i: ; preds = %.split.i16.i.i, %.split.us29.us.i.i.i
  %.us-phi45.i.i.i = phi ptr [ %.1.us.us.i.i.i, %.split.us29.us.i.i.i ], [ %.1.i.i.i, %.split.i16.i.i ] ; 3 uses
  %.not.i = icmp ugt ptr %.us-phi45.i.i.i, %1     ; 2 uses
  %..017.i = select i1 %.not.i, ptr %.us-phi45.i.i.i, ptr %.01750.i31 ; 4 uses
  %.0..i = select i1 %.not.i, ptr %.054.i27, ptr %.us-phi45.i.i.i ; 4 uses
  %i.dz = ptrtoint ptr %..017.i to i64
  %i.ea = ptrtoint ptr %.0..i to i64              ; 3 uses
  %i.eb = sub i64 %i.dz, %i.ea                    ; 2 uses
  %i.ec = icmp sgt i64 %i.eb, 24
  br i1 %i.ec, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !2548

._crit_edge.i:                                    ; preds = %_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIdddEEEEEEET_SB_SB_T0_.exit.i, %bb.b
  %.017.lcssa.i = phi ptr [ %2, %bb.b ], [ %..017.i, %_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIdddEEEEEEET_SB_SB_T0_.exit.i ] ; 3 uses
  %.0.lcssa.i = phi ptr [ %0, %bb.b ], [ %.0..i, %_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIdddEEEEEEET_SB_SB_T0_.exit.i ] ; 7 uses
  %.lcssa46.i = phi i64 [ %i.x, %bb.b ], [ %i.ea, %_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIdddEEEEEEET_SB_SB_T0_.exit.i ]
  %i.ed = icmp eq ptr %.0.lcssa.i, %.017.lcssa.i
  %.021.i.i = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 8 ; 2 uses
  %.not22.i.i = icmp eq ptr %.021.i.i, %.017.lcssa.i
  %or.cond.i = select i1 %i.ed, i1 true, i1 %.not22.i.i
  br i1 %or.cond.i, label %_ZSt13__introselectIPdlN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIdddEEEEEEEvT_SB_SB_T0_T1_.exit, label %.lr.ph.i21.preheader.i

.lr.ph.i21.preheader.i:                           ; preds = %._crit_edge.i
  %i.ee = trunc nuw i8 %.sroa.3.0.copyload to i1
  br label %.lr.ph.i21.i

.lr.ph.i21.i:                                     ; preds = %bb.t, %.lr.ph.i21.preheader.i
  %.024.i.i = phi ptr [ %.0.i.i, %bb.t ], [ %.021.i.i, %.lr.ph.i21.preheader.i ] ; 9 uses
  %.pn23.i.i = phi ptr [ %.024.i.i, %bb.t ], [ %.0.lcssa.i, %.lr.ph.i21.preheader.i ] ; 2 uses
  %.0.val.i22.i = load double, ptr %.024.i.i, align 8, !tbaa !776
  %.val.i23.i = load double, ptr %.0.lcssa.i, align 8, !tbaa !776
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #30
  %.val4.i.i.i24.i = load ptr, ptr %.sroa.016.0.copyload, align 8, !tbaa !2446
  %.val4.val.i.i.i25.i = load double, ptr %.val4.i.i.i24.i, align 8, !tbaa !776
  %i.ef = fsub double %.0.val.i22.i, %.val4.val.i.i.i25.i
  %i.eg = call noundef double @llvm.fabs.f64(double %i.ef)
  store double %i.eg, ptr %i.c, align 8, !tbaa !776
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #30
  %.val.i.i.i26.i = load ptr, ptr %.sroa.2.0.copyload, align 8, !tbaa !2446
  %.val.val.i.i.i27.i = load double, ptr %.val.i.i.i26.i, align 8, !tbaa !776
  %i.eh = fsub double %.val.i23.i, %.val.val.i.i.i27.i
  %i.ei = call noundef double @llvm.fabs.f64(double %i.eh)
  store double %i.ei, ptr %i.d, align 8, !tbaa !776
  br i1 %i.ee, label %.split.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS2_12_GLOBAL__N_111MadAccessorIdddEEEEEclIPdSA_EEbT_T0_.exit.i28.i

.split.i.i:                                       ; preds = %.lr.ph.i21.i
  %i.ej = call noundef zeroext i1 @_ZN6duckdb11GreaterThan9OperationIdEEbRKT_S4_(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  br i1 %i.ej, label %bb.n, label %.split.us.i.preheader.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS2_12_GLOBAL__N_111MadAccessorIdddEEEEEclIPdSA_EEbT_T0_.exit.i28.i: ; preds = %.lr.ph.i21.i
  %i.ek = call noundef zeroext i1 @_ZN6duckdb11GreaterThan9OperationIdEEbRKT_S4_(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  br i1 %i.ek, label %bb.n, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN6duckdb15QuantileCompareINS2_12_GLOBAL__N_111MadAccessorIdddEEEEEclIdPdEEbRT_T0_.exit.i.preheader.i.i

bb.n:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS2_12_GLOBAL__N_111MadAccessorIdddEEEEEclIPdSA_EEbT_T0_.exit.i28.i, %.split.i.i
  %i.el = load double, ptr %.024.i.i, align 8, !tbaa !776
  %i.em = ptrtoint ptr %.024.i.i to i64
  %i.en = sub i64 %i.em, %.lcssa46.i              ; 3 uses
  %i.eo = ashr exact i64 %i.en, 3                 ; 2 uses
  %i.ep = icmp sgt i64 %i.eo, 1
  br i1 %i.ep, label %bb.o, label %bb.p, !prof !233

bb.o:                                             ; preds = %bb.n
  %i.eq = getelementptr inbounds nuw i8, ptr %.pn23.i.i, i64 16
  %i.er = sub nsw i64 0, %i.eo
  %i.es = getelementptr inbounds [8 x i8], ptr %i.eq, i64 %i.er
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.es, ptr noundef nonnull align 8 dereferenceable(1) %.0.lcssa.i, i64 %i.en, i1 false)
  br label %_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit.i.i

bb.p:                                             ; preds = %bb.n
  %i.et = icmp eq i64 %i.en, 8
  br i1 %i.et, label %bb.q, label %_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit.i.i

bb.q:                                             ; preds = %bb.p
  %i.eu = getelementptr inbounds nuw i8, ptr %.pn23.i.i, i64 8
  %i.ev = load double, ptr %.0.lcssa.i, align 8, !tbaa !776
  store double %i.ev, ptr %i.eu, align 8, !tbaa !776
  br label %_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit.i.i

_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit.i.i:   ; preds = %bb.q, %bb.p, %bb.o
  store double %i.el, ptr %.0.lcssa.i, align 8, !tbaa !776
  br label %bb.t

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN6duckdb15QuantileCompareINS2_12_GLOBAL__N_111MadAccessorIdddEEEEEclIdPdEEbRT_T0_.exit.i.preheader.i.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS2_12_GLOBAL__N_111MadAccessorIdddEEEEEclIPdSA_EEbT_T0_.exit.i28.i
  %i.ew = load double, ptr %.024.i.i, align 8, !tbaa !776 ; 2 uses
  br label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN6duckdb15QuantileCompareINS2_12_GLOBAL__N_111MadAccessorIdddEEEEEclIdPdEEbRT_T0_.exit.i.i.i

.split.us.i.preheader.i.i:                        ; preds = %.split.i.i
  %i.ex = load double, ptr %.024.i.i, align 8, !tbaa !776 ; 2 uses
  br label %.split.us.i.i.i

.split.us.i.i.i:                                  ; preds = %bb.r, %.split.us.i.preheader.i.i
  %.09.us.i.i.i = phi ptr [ %.0.us.i.i34.i, %bb.r ], [ %.024.i.i, %.split.us.i.preheader.i.i ] ; 3 uses
  %.0.us.i.i34.i = getelementptr inbounds i8, ptr %.09.us.i.i.i, i64 -8 ; 3 uses
  %.0.val.us.i.i.i = load double, ptr %.0.us.i.i34.i, align 8, !tbaa !776
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %.val4.i.i.us.i.i.i = load ptr, ptr %.sroa.016.0.copyload, align 8, !tbaa !2446
  %.val4.val.i.i.us.i.i.i = load double, ptr %.val4.i.i.us.i.i.i, align 8, !tbaa !776
  %i.ey = fsub double %i.ex, %.val4.val.i.i.us.i.i.i
  %i.ez = call noundef double @llvm.fabs.f64(double %i.ey)
  store double %i.ez, ptr %i.a, align 8, !tbaa !776
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  %.val.i.i.us.i.i.i = load ptr, ptr %.sroa.2.0.copyload, align 8, !tbaa !2446
  %.val.val.i.i.us.i.i.i = load double, ptr %.val.i.i.us.i.i.i, align 8, !tbaa !776
  %i.fa = fsub double %.0.val.us.i.i.i, %.val.val.i.i.us.i.i.i
  %i.fb = call noundef double @llvm.fabs.f64(double %i.fa)
  store double %i.fb, ptr %i.b, align 8, !tbaa !776
  %i.fc = call noundef zeroext i1 @_ZN6duckdb11GreaterThan9OperationIdEEbRKT_S4_(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  br i1 %i.fc, label %bb.r, label %_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIdddEEEEEEEvT_T0_.exit.i.i

bb.r:                                             ; preds = %.split.us.i.i.i
  %i.fd = load double, ptr %.0.us.i.i34.i, align 8, !tbaa !776
  store double %i.fd, ptr %.09.us.i.i.i, align 8, !tbaa !776
  br label %.split.us.i.i.i, !llvm.loop !2554

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN6duckdb15QuantileCompareINS2_12_GLOBAL__N_111MadAccessorIdddEEEEEclIdPdEEbRT_T0_.exit.i.i.i: ; preds = %bb.s, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN6duckdb15QuantileCompareINS2_12_GLOBAL__N_111MadAccessorIdddEEEEEclIdPdEEbRT_T0_.exit.i.preheader.i.i
  %.09.i.i.i = phi ptr [ %.0.i.i29.i, %bb.s ], [ %.024.i.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN6duckdb15QuantileCompareINS2_12_GLOBAL__N_111MadAccessorIdddEEEEEclIdPdEEbRT_T0_.exit.i.preheader.i.i ] ; 3 uses
  %.0.i.i29.i = getelementptr inbounds i8, ptr %.09.i.i.i, i64 -8 ; 3 uses
  %.0.val.i.i.i = load double, ptr %.0.i.i29.i, align 8, !tbaa !776
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %.val4.i.i.i.i30.i = load ptr, ptr %.sroa.016.0.copyload, align 8, !tbaa !2446
  %.val4.val.i.i.i.i31.i = load double, ptr %.val4.i.i.i.i30.i, align 8, !tbaa !776
  %i.fe = fsub double %i.ew, %.val4.val.i.i.i.i31.i
  %i.ff = call noundef double @llvm.fabs.f64(double %i.fe)
  store double %i.ff, ptr %i.a, align 8, !tbaa !776
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  %.val.i.i.i.i32.i = load ptr, ptr %.sroa.2.0.copyload, align 8, !tbaa !2446
  %.val.val.i.i.i.i33.i = load double, ptr %.val.i.i.i.i32.i, align 8, !tbaa !776
  %i.fg = fsub double %.0.val.i.i.i, %.val.val.i.i.i.i33.i
  %i.fh = call noundef double @llvm.fabs.f64(double %i.fg)
  store double %i.fh, ptr %i.b, align 8, !tbaa !776
  %i.fi = call noundef zeroext i1 @_ZN6duckdb11GreaterThan9OperationIdEEbRKT_S4_(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  br i1 %i.fi, label %bb.s, label %_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIdddEEEEEEEvT_T0_.exit.i.i

bb.s:                                             ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN6duckdb15QuantileCompareINS2_12_GLOBAL__N_111MadAccessorIdddEEEEEclIdPdEEbRT_T0_.exit.i.i.i
  %i.fj = load double, ptr %.0.i.i29.i, align 8, !tbaa !776
  store double %i.fj, ptr %.09.i.i.i, align 8, !tbaa !776
  br label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN6duckdb15QuantileCompareINS2_12_GLOBAL__N_111MadAccessorIdddEEEEEclIdPdEEbRT_T0_.exit.i.i.i, !llvm.loop !2554

_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIdddEEEEEEEvT_T0_.exit.i.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN6duckdb15QuantileCompareINS2_12_GLOBAL__N_111MadAccessorIdddEEEEEclIdPdEEbRT_T0_.exit.i.i.i, %.split.us.i.i.i
  %i.fk = phi double [ %i.ex, %.split.us.i.i.i ], [ %i.ew, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN6duckdb15QuantileCompareINS2_12_GLOBAL__N_111MadAccessorIdddEEEEEclIdPdEEbRT_T0_.exit.i.i.i ]
  %.us-phi.i.i.i = phi ptr [ %.09.us.i.i.i, %.split.us.i.i.i ], [ %.09.i.i.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN6duckdb15QuantileCompareINS2_12_GLOBAL__N_111MadAccessorIdddEEEEEclIdPdEEbRT_T0_.exit.i.i.i ]
  store double %i.fk, ptr %.us-phi.i.i.i, align 8, !tbaa !776
  br label %bb.t

bb.t:                                             ; preds = %_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIdddEEEEEEEvT_T0_.exit.i.i, %_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit.i.i
  %.0.i.i = getelementptr inbounds nuw i8, ptr %.024.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %.0.i.i, %.017.lcssa.i
  br i1 %.not.i.i, label %_ZSt13__introselectIPdlN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIdddEEEEEEEvT_SB_SB_T0_T1_.exit, label %.lr.ph.i21.i, !llvm.loop !2555

_ZSt13__introselectIPdlN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIdddEEEEEEEvT_SB_SB_T0_T1_.exit: ; preds = %bb.t, %_ZSt13__heap_selectIPdN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIdddEEEEEEEvT_SB_SB_T0_.exit.i, %._crit_edge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10)
  br label %bb.u

bb.u:                                             ; preds = %bb.a, %_ZSt13__introselectIPdlN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIdddEEEEEEEvT_SB_SB_T0_T1_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZSt13__adjust_heapIPdldN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIdddEEEEEEEvT_T0_SC_T1_T2_(ptr nofree noundef captures(none) %0, i64 noundef range(i64 0, 576460752303423487) %1, i64 noundef range(i64 -1152921504606846976, 1152921504606846976) %2, double noundef %3, ptr nofree noundef readonly byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.670") align 8 captures(none) %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca double, align 8                   ; 8 uses
  %i.b = alloca double, align 8                   ; 8 uses
  %i.c = alloca double, align 8                   ; 8 uses
  %i.d = alloca double, align 8                   ; 8 uses
  %i.e = add nsw i64 %2, -1
  %i.f = sdiv i64 %i.e, 2                         ; 3 uses
  %i.g = icmp slt i64 %1, %i.f
  br i1 %i.g, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.h = load ptr, ptr %4, align 8, !tbaa !2556, !nonnull !235, !align !683 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !2558, !nonnull !235, !align !683 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.l = load i8, ptr %i.k, align 8, !tbaa !2559, !range !234, !noundef !235
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS2_12_GLOBAL__N_111MadAccessorIdddEEEEEclIPdSA_EEbT_T0_.exit.us, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS2_12_GLOBAL__N_111MadAccessorIdddEEEEEclIPdSA_EEbT_T0_.exit

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS2_12_GLOBAL__N_111MadAccessorIdddEEEEEclIPdSA_EEbT_T0_.exit.us: ; preds = %.lr.ph, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS2_12_GLOBAL__N_111MadAccessorIdddEEEEEclIPdSA_EEbT_T0_.exit.us
  %.030.us = phi i64 [ %spec.select.us, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS2_12_GLOBAL__N_111MadAccessorIdddEEEEEclIPdSA_EEbT_T0_.exit.us ], [ %1, %.lr.ph ] ; 2 uses
  %i.n = shl i64 %.030.us, 1                      ; 3 uses
  %i.o = add i64 %i.n, 2                          ; 2 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.o
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.n
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.val.us = load double, ptr %i.p, align 8, !tbaa !776
  %.val29.us = load double, ptr %i.r, align 8, !tbaa !776
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #30
  %.val4.i.i.us = load ptr, ptr %i.h, align 8, !tbaa !2446
  %.val4.val.i.i.us = load double, ptr %.val4.i.i.us, align 8, !tbaa !776
  %i.s = fsub double %.val.us, %.val4.val.i.i.us
  %i.t = call noundef double @llvm.fabs.f64(double %i.s)
  store double %i.t, ptr %i.c, align 8, !tbaa !776
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #30
  %.val.i.i.us = load ptr, ptr %i.j, align 8, !tbaa !2446
  %.val.val.i.i.us = load double, ptr %.val.i.i.us, align 8, !tbaa !776
  %i.u = fsub double %.val29.us, %.val.val.i.i.us
  %i.v = call noundef double @llvm.fabs.f64(double %i.u)
  store double %i.v, ptr %i.d, align 8, !tbaa !776
  %i.w = call noundef zeroext i1 @_ZN6duckdb11GreaterThan9OperationIdEEbRKT_S4_(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  %i.x = or disjoint i64 %i.n, 1
  %spec.select.us = select i1 %i.w, i64 %i.x, i64 %i.o ; 4 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %spec.select.us
  %i.z = load double, ptr %i.y, align 8, !tbaa !776
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.030.us
  store double %i.z, ptr %i.aa, align 8, !tbaa !776
  %i.ab = icmp slt i64 %spec.select.us, %i.f
  br i1 %i.ab, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS2_12_GLOBAL__N_111MadAccessorIdddEEEEEclIPdSA_EEbT_T0_.exit.us, label %._crit_edge, !llvm.loop !2560

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS2_12_GLOBAL__N_111MadAccessorIdddEEEEEclIPdSA_EEbT_T0_.exit: ; preds = %.lr.ph, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS2_12_GLOBAL__N_111MadAccessorIdddEEEEEclIPdSA_EEbT_T0_.exit
  %.030 = phi i64 [ %spec.select, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS2_12_GLOBAL__N_111MadAccessorIdddEEEEEclIPdSA_EEbT_T0_.exit ], [ %1, %.lr.ph ] ; 2 uses
  %i.ac = shl i64 %.030, 1                        ; 3 uses
  %i.ad = add i64 %i.ac, 2                        ; 2 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ad
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ac
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %.val = load double, ptr %i.ae, align 8, !tbaa !776
  %.val29 = load double, ptr %i.ag, align 8, !tbaa !776
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #30
  %.val4.i.i = load ptr, ptr %i.h, align 8, !tbaa !2446
  %.val4.val.i.i = load double, ptr %.val4.i.i, align 8, !tbaa !776
  %i.ah = fsub double %.val, %.val4.val.i.i
  %i.ai = call noundef double @llvm.fabs.f64(double %i.ah)
  store double %i.ai, ptr %i.c, align 8, !tbaa !776
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #30
  %.val.i.i = load ptr, ptr %i.j, align 8, !tbaa !2446
  %.val.val.i.i = load double, ptr %.val.i.i, align 8, !tbaa !776
  %i.aj = fsub double %.val29, %.val.val.i.i
  %i.ak = call noundef double @llvm.fabs.f64(double %i.aj)
  store double %i.ak, ptr %i.d, align 8, !tbaa !776
  %i.al = call noundef zeroext i1 @_ZN6duckdb11GreaterThan9OperationIdEEbRKT_S4_(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  %i.am = or disjoint i64 %i.ac, 1
  %spec.select = select i1 %i.al, i64 %i.am, i64 %i.ad ; 4 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %spec.select
  %i.ao = load double, ptr %i.an, align 8, !tbaa !776
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.030
  store double %i.ao, ptr %i.ap, align 8, !tbaa !776
  %i.aq = icmp slt i64 %spec.select, %i.f
  br i1 %i.aq, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS2_12_GLOBAL__N_111MadAccessorIdddEEEEEclIPdSA_EEbT_T0_.exit, label %._crit_edge, !llvm.loop !2560

._crit_edge:                                      ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS2_12_GLOBAL__N_111MadAccessorIdddEEEEEclIPdSA_EEbT_T0_.exit, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS2_12_GLOBAL__N_111MadAccessorIdddEEEEEclIPdSA_EEbT_T0_.exit.us, %bb.a
  %.0.lcssa = phi i64 [ %1, %bb.a ], [ %spec.select.us, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS2_12_GLOBAL__N_111MadAccessorIdddEEEEEclIPdSA_EEbT_T0_.exit.us ], [ %spec.select, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS2_12_GLOBAL__N_111MadAccessorIdddEEEEEclIPdSA_EEbT_T0_.exit ] ; 5 uses
  %i.ar = and i64 %2, 1
  %i.as = icmp eq i64 %i.ar, 0
  br i1 %i.as, label %bb.b, label %bb.d

bb.b:                                             ; preds = %._crit_edge
  %i.at = add nsw i64 %2, -2
  %i.au = ashr exact i64 %i.at, 1
  %i.av = icmp eq i64 %.0.lcssa, %i.au
  br i1 %i.av, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.aw = shl nuw nsw i64 %.0.lcssa, 1
  %i.ax = or disjoint i64 %i.aw, 1                ; 2 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ax
  %i.az = load double, ptr %i.ay, align 8, !tbaa !776
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0.lcssa
  store double %i.az, ptr %i.ba, align 8, !tbaa !776
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge
  %.128 = phi i64 [ %i.ax, %bb.c ], [ %.0.lcssa, %bb.b ], [ %.0.lcssa, %._crit_edge ] ; 4 uses
  %.sroa.0.0.copyload = load ptr, ptr %4, align 8, !tbaa !2429 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !2429 ; 2 uses
  %i.bb = icmp samesign ugt i64 %.128, %1
  br i1 %i.bb, label %.lr.ph.i.preheader, label %_ZSt11__push_heapIPdldN9__gnu_cxx5__ops14_Iter_comp_valIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIdddEEEEEEEvT_T0_SC_T1_RT2_.exit

.lr.ph.i.preheader:                               ; preds = %bb.d
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.sroa.5.0.copyload = load i8, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !247
  %i.bc = trunc nuw i8 %.sroa.5.0.copyload to i1
  br i1 %i.bc, label %.lr.ph.i.us, label %.lr.ph.i

.lr.ph.i.us:                                      ; preds = %.lr.ph.i.preheader, %bb.e
  %.01317.i.us = phi i64 [ %.01822.i.us, %bb.e ], [ %.128, %.lr.ph.i.preheader ] ; 3 uses
  %.018.in.i.us = add nsw i64 %.01317.i.us, -1
  %.01822.i.us = lshr i64 %.018.in.i.us, 1        ; 4 uses
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.01822.i.us ; 2 uses
  %.val.i.us = load double, ptr %i.bd, align 8, !tbaa !776
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %.val4.i.i.i.us = load ptr, ptr %.sroa.0.0.copyload, align 8, !tbaa !2446
  %.val4.val.i.i.i.us = load double, ptr %.val4.i.i.i.us, align 8, !tbaa !776
  %i.be = fsub double %.val.i.us, %.val4.val.i.i.i.us
  %i.bf = call noundef double @llvm.fabs.f64(double %i.be)
  store double %i.bf, ptr %i.a, align 8, !tbaa !776
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  %.val.i.i.i.us = load ptr, ptr %.sroa.4.0.copyload, align 8, !tbaa !2446
  %.val.val.i.i.i.us = load double, ptr %.val.i.i.i.us, align 8, !tbaa !776
  %i.bg = fsub double %3, %.val.val.i.i.i.us
  %i.bh = call noundef double @llvm.fabs.f64(double %i.bg)
  store double %i.bh, ptr %i.b, align 8, !tbaa !776
  %i.bi = call noundef zeroext i1 @_ZN6duckdb11GreaterThan9OperationIdEEbRKT_S4_(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  br i1 %i.bi, label %bb.e, label %_ZSt11__push_heapIPdldN9__gnu_cxx5__ops14_Iter_comp_valIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIdddEEEEEEEvT_T0_SC_T1_RT2_.exit

bb.e:                                             ; preds = %.lr.ph.i.us
  %i.bj = load double, ptr %i.bd, align 8, !tbaa !776
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.01317.i.us
  store double %i.bj, ptr %i.bk, align 8, !tbaa !776
  %i.bl = icmp samesign ugt i64 %.01822.i.us, %1
  br i1 %i.bl, label %.lr.ph.i.us, label %_ZSt11__push_heapIPdldN9__gnu_cxx5__ops14_Iter_comp_valIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIdddEEEEEEEvT_T0_SC_T1_RT2_.exit, !llvm.loop !2561

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.f
  %.01317.i = phi i64 [ %.01822.i, %bb.f ], [ %.128, %.lr.ph.i.preheader ] ; 3 uses
  %.018.in.i = add nsw i64 %.01317.i, -1
  %.01822.i = lshr i64 %.018.in.i, 1              ; 4 uses
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.01822.i ; 2 uses
  %.val.i = load double, ptr %i.bm, align 8, !tbaa !776
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %.val4.i.i.i = load ptr, ptr %.sroa.0.0.copyload, align 8, !tbaa !2446
  %.val4.val.i.i.i = load double, ptr %.val4.i.i.i, align 8, !tbaa !776
  %i.bn = fsub double %.val.i, %.val4.val.i.i.i
  %i.bo = call noundef double @llvm.fabs.f64(double %i.bn)
  store double %i.bo, ptr %i.a, align 8, !tbaa !776
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  %.val.i.i.i = load ptr, ptr %.sroa.4.0.copyload, align 8, !tbaa !2446
  %.val.val.i.i.i = load double, ptr %.val.i.i.i, align 8, !tbaa !776
  %i.bp = fsub double %3, %.val.val.i.i.i
  %i.bq = call noundef double @llvm.fabs.f64(double %i.bp)
  store double %i.bq, ptr %i.b, align 8, !tbaa !776
  %i.br = call noundef zeroext i1 @_ZN6duckdb11GreaterThan9OperationIdEEbRKT_S4_(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  br i1 %i.br, label %bb.f, label %_ZSt11__push_heapIPdldN9__gnu_cxx5__ops14_Iter_comp_valIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIdddEEEEEEEvT_T0_SC_T1_RT2_.exit

bb.f:                                             ; preds = %.lr.ph.i
  %i.bs = load double, ptr %i.bm, align 8, !tbaa !776
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.01317.i
  store double %i.bs, ptr %i.bt, align 8, !tbaa !776
  %i.bu = icmp samesign ugt i64 %.01822.i, %1
  br i1 %i.bu, label %.lr.ph.i, label %_ZSt11__push_heapIPdldN9__gnu_cxx5__ops14_Iter_comp_valIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIdddEEEEEEEvT_T0_SC_T1_RT2_.exit, !llvm.loop !2561

_ZSt11__push_heapIPdldN9__gnu_cxx5__ops14_Iter_comp_valIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIdddEEEEEEEvT_T0_SC_T1_RT2_.exit: ; preds = %bb.f, %.lr.ph.i, %bb.e, %.lr.ph.i.us, %bb.d
  %.013.lcssa.i = phi i64 [ %.128, %bb.d ], [ %.01822.i.us, %bb.e ], [ %.01317.i.us, %.lr.ph.i.us ], [ %.01317.i, %.lr.ph.i ], [ %.01822.i, %bb.f ]
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.013.lcssa.i
  store double %3, ptr %i.bv, align 8, !tbaa !776
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNKSt14default_deleteIN6duckdb19WindowQuantileStateIdEEEclEPS2_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 72
end_hunk_1
