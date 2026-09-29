Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/qcustomplot?download=true
inline.NumInlined: 26883
inline.NumDeleted: 6472
loop-unroll.NumRuntimeUnrolled: 106
loop-unroll.NumUnrolled: 106
begin_hunk_0_@_ZNK15QCPAbstractItem12rectDistanceERK6QRectFRK7QPointFb:bb.a
  br label %bb.l

bb.g:                                             ; preds = %_ZNK17QArrayDataPointerI6QLineFE11needsDetachEv.exit.thread.i.i.i.i.i.i52, %_ZN5QListI6QLineFElsEOS0_.exit
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.h:                                             ; preds = %_ZNK17QArrayDataPointerI6QLineFE11needsDetachEv.exit.thread.i.i.i.i.i.i62, %_ZN5QListI6QLineFElsEOS0_.exit55
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.i:                                             ; preds = %_ZNK17QArrayDataPointerI6QLineFE11needsDetachEv.exit.thread.i.i.i.i.i.i72, %_ZN5QListI6QLineFElsEOS0_.exit65
  %i.bn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #51
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.pn = phi { ptr, i32 } [ %i.bn, %bb.i ], [ %i.bm, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #51
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.g
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.j ], [ %i.bl, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #51
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.f
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.k ], [ %i.bk, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #51
  %i.bo = load ptr, ptr %4, align 8               ; 2 uses
  %.not.i.i.i78 = icmp eq ptr %i.bo, null
  br i1 %.not.i.i.i78, label %_ZN5QListI6QLineFED2Ev.exit81, label %_ZN17QArrayDataPointerI6QLineFE5derefEv.exit.i.i79

_ZN17QArrayDataPointerI6QLineFE5derefEv.exit.i.i79: ; preds = %bb.l
  %i.bp = atomicrmw sub ptr %i.bo, i32 1 acq_rel, align 4
  %.not.i.i80 = icmp eq i32 %i.bp, 1
  br i1 %.not.i.i80, label %bb.m, label %_ZN5QListI6QLineFED2Ev.exit81

bb.m:                                             ; preds = %_ZN17QArrayDataPointerI6QLineFE5derefEv.exit.i.i79
  %i.bq = load ptr, ptr %4, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.bq, i64 noundef 32, i64 noundef 8) #51
  br label %_ZN5QListI6QLineFED2Ev.exit81

_ZN5QListI6QLineFED2Ev.exit81:                    ; preds = %bb.l, %_ZN17QArrayDataPointerI6QLineFE5derefEv.exit.i.i79, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #51
  br label %_ZN5QListI6QLineFED2Ev.exit100

_ZN9QtPrivate17QForeachContainerI5QListI6QLineFEED2Ev.exit92: ; preds = %_ZN5QListI6QLineFED2Ev.exit
  %i.br = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #51
  br i1 %.not.i.i.i149, label %_ZN5QListI6QLineFED2Ev.exit100, label %_ZN17QArrayDataPointerI6QLineFE5derefEv.exit.i.i98

.lr.ph:                                           ; preds = %_ZN9QtPrivate21qMakeForeachContainerIRK5QListI6QLineFEEENS_17QForeachContainerINSt5decayIT_E4typeEEEOS8_.exit, %bb.p
  %.022137 = phi double [ %.1, %bb.p ], [ f0x7FEFFFFFFFFFFFFF, %_ZN9QtPrivate21qMakeForeachContainerIRK5QListI6QLineFEEENS_17QForeachContainerINSt5decayIT_E4typeEEEOS8_.exit ] ; 2 uses
  %.sroa.10.0136 = phi ptr [ %i.bx, %bb.p ], [ %i.be, %_ZN9QtPrivate21qMakeForeachContainerIRK5QListI6QLineFEEENS_17QForeachContainerINSt5decayIT_E4typeEEEOS8_.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #51
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #51
  %i.bs = load <2 x double>, ptr %.sroa.10.0136, align 8
  store <2 x double> %i.bs, ptr %11, align 16
  invoke void @_ZN11QCPVector2DC1ERK7QPointF(ptr noundef nonnull align 8 dereferenceable_or_null(16) %10, ptr noundef nonnull align 8 dereferenceable(16) %11)
          to label %bb.n unwind label %bb.q

bb.n:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #51
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #51
  %i.bt = getelementptr i8, ptr %.sroa.10.0136, i64 16
  %i.bu = load <2 x double>, ptr %i.bt, align 8
  store <2 x double> %i.bu, ptr %13, align 16
  invoke void @_ZN11QCPVector2DC1ERK7QPointF(ptr noundef nonnull align 8 dereferenceable_or_null(16) %12, ptr noundef nonnull align 8 dereferenceable(16) %13)
          to label %bb.o unwind label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.bv = invoke noundef double @_ZNK11QCPVector2D21distanceSquaredToLineERKS_S1_(ptr noundef nonnull align 8 dereferenceable_or_null(16) %9, ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(16) %12)
          to label %bb.p unwind label %bb.r       ; 2 uses

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #51
  %i.bw = fcmp olt double %i.bv, %.022137
  %.1 = select i1 %i.bw, double %i.bv, double %.022137 ; 2 uses
  %i.bx = getelementptr i8, ptr %.sroa.10.0136, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.bx, %i.bh
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !680

bb.q:                                             ; preds = %.lr.ph
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.r:                                             ; preds = %bb.o, %bb.n
  %i.bz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #51
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.pn38 = phi { ptr, i32 } [ %i.bz, %bb.r ], [ %i.by, %bb.q ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #51
  br i1 %.not.i.i.i149, label %_ZN9QtPrivate17QForeachContainerI5QListI6QLineFEED2Ev.exit92.thread131, label %_ZN17QArrayDataPointerI6QLineFE5derefEv.exit.i.i.i90

_ZN9QtPrivate17QForeachContainerI5QListI6QLineFEED2Ev.exit92.thread131: ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #51
  br label %_ZN5QListI6QLineFED2Ev.exit100

_ZN17QArrayDataPointerI6QLineFE5derefEv.exit.i.i.i90: ; preds = %bb.s
  %i.ca = atomicrmw sub ptr %i.bf, i32 1 acq_rel, align 4
  %.not.i.i.i91 = icmp eq i32 %i.ca, 1
  br i1 %.not.i.i.i91, label %bb.t, label %_ZN9QtPrivate17QForeachContainerI5QListI6QLineFEED2Ev.exit92.thread

bb.t:                                             ; preds = %_ZN17QArrayDataPointerI6QLineFE5derefEv.exit.i.i.i90
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef nonnull %i.bf, i64 noundef 32, i64 noundef 8) #51
  br label %_ZN9QtPrivate17QForeachContainerI5QListI6QLineFEED2Ev.exit92.thread

bb.u:                                             ; preds = %_ZN9QtPrivate17QForeachContainerI5QListI6QLineFEED2Ev.exit
  %i.cb = getelementptr i8, ptr %0, i64 24        ; 2 uses
  %i.cc = load ptr, ptr %i.cb, align 8
  %i.cd = getelementptr i8, ptr %i.cc, i64 228
  %i.ce = load i32, ptr %i.cd, align 4
  %i.cf = sitofp i32 %i.ce to double
  %i.cg = fmul nnan double %i.cf, f0x3FEFAE147AE147AE
  %i.ch = fcmp ogt double %i.bj, %i.cg
  br i1 %i.ch, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.ci = call noundef zeroext i1 @_ZNK6QRectF8containsERK7QPointF(ptr noundef align 8 dereferenceable_or_null(32) %1, ptr noundef align 8 dereferenceable(16) %2) #51
  br i1 %i.ci, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.cj = load ptr, ptr %i.cb, align 8
  %i.ck = getelementptr i8, ptr %i.cj, i64 228
  %i.cl = load i32, ptr %i.ck, align 4
  %i.cm = sitofp i32 %i.cl to double
  %i.cn = fmul nnan double %i.cm, f0x3FEFAE147AE147AE
  br label %bb.x

bb.x:                                             ; preds = %bb.v, %bb.w, %bb.u, %_ZN9QtPrivate17QForeachContainerI5QListI6QLineFEED2Ev.exit
  %.0 = phi double [ %i.cn, %bb.w ], [ %i.bj, %bb.v ], [ %i.bj, %bb.u ], [ %i.bj, %_ZN9QtPrivate17QForeachContainerI5QListI6QLineFEED2Ev.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #51
  br i1 %.not.i.i.i149, label %_ZN5QListI6QLineFED2Ev.exit96, label %_ZN17QArrayDataPointerI6QLineFE5derefEv.exit.i.i94

_ZN17QArrayDataPointerI6QLineFE5derefEv.exit.i.i94: ; preds = %bb.x
  %i.co = atomicrmw sub ptr %i.bf, i32 1 acq_rel, align 4
  %.not.i.i95 = icmp eq i32 %i.co, 1
  br i1 %.not.i.i95, label %bb.y, label %_ZN5QListI6QLineFED2Ev.exit96

bb.y:                                             ; preds = %_ZN17QArrayDataPointerI6QLineFE5derefEv.exit.i.i94
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef nonnull %i.bf, i64 noundef 32, i64 noundef 8) #51
  br label %_ZN5QListI6QLineFED2Ev.exit96

_ZN5QListI6QLineFED2Ev.exit96:                    ; preds = %bb.x, %_ZN17QArrayDataPointerI6QLineFE5derefEv.exit.i.i94, %bb.y
  ret double %.0

_ZN9QtPrivate17QForeachContainerI5QListI6QLineFEED2Ev.exit92.thread: ; preds = %_ZN17QArrayDataPointerI6QLineFE5derefEv.exit.i.i.i90, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #51
  br label %_ZN17QArrayDataPointerI6QLineFE5derefEv.exit.i.i98

_ZN17QArrayDataPointerI6QLineFE5derefEv.exit.i.i98: ; preds = %_ZN9QtPrivate17QForeachContainerI5QListI6QLineFEED2Ev.exit92.thread, %_ZN9QtPrivate17QForeachContainerI5QListI6QLineFEED2Ev.exit92
  %.pn38.pn.pn129 = phi { ptr, i32 } [ %.pn38, %_ZN9QtPrivate17QForeachContainerI5QListI6QLineFEED2Ev.exit92.thread ], [ %i.br, %_ZN9QtPrivate17QForeachContainerI5QListI6QLineFEED2Ev.exit92 ] ; 2 uses
  %i.cp = atomicrmw sub ptr %i.bf, i32 1 acq_rel, align 4
  %.not.i.i99 = icmp eq i32 %i.cp, 1
  br i1 %.not.i.i99, label %bb.z, label %_ZN5QListI6QLineFED2Ev.exit100

bb.z:                                             ; preds = %_ZN17QArrayDataPointerI6QLineFE5derefEv.exit.i.i98
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef nonnull %i.bf, i64 noundef 32, i64 noundef 8) #51
  br label %_ZN5QListI6QLineFED2Ev.exit100

_ZN5QListI6QLineFED2Ev.exit100:                   ; preds = %bb.z, %_ZN17QArrayDataPointerI6QLineFE5derefEv.exit.i.i98, %_ZN9QtPrivate17QForeachContainerI5QListI6QLineFEED2Ev.exit92, %_ZN9QtPrivate17QForeachContainerI5QListI6QLineFEED2Ev.exit92.thread131, %_ZN5QListI6QLineFED2Ev.exit81
  %.pn38.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %_ZN5QListI6QLineFED2Ev.exit81 ], [ %i.br, %_ZN9QtPrivate17QForeachContainerI5QListI6QLineFEED2Ev.exit92 ], [ %.pn38.pn.pn129, %_ZN17QArrayDataPointerI6QLineFE5derefEv.exit.i.i98 ], [ %.pn38.pn.pn129, %bb.z ], [ %.pn38, %_ZN9QtPrivate17QForeachContainerI5QListI6QLineFEED2Ev.exit92.thread131 ]
  resume { ptr, i32 } %.pn38.pn.pn.pn
}

; Function Attrs: inlinehint mustprogress nounwind null_pointer_is_valid sspstrong uwtable
define linkonce_odr void @_ZN5QListI6QLineFED2Ev(ptr noundef align 8 dead_on_return(24) dereferenceable_or_null(24) %0) unnamed_addr #16 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %_ZN17QArrayDataPointerI6QLineFED2Ev.exit, label %_ZN17QArrayDataPointerI6QLineFE5derefEv.exit.i

_ZN17QArrayDataPointerI6QLineFE5derefEv.exit.i:   ; preds = %bb.a
  %i.b = atomicrmw sub ptr %i.a, i32 1 acq_rel, align 4
  %.not.i = icmp eq i32 %i.b, 1
  br i1 %.not.i, label %bb.b, label %_ZN17QArrayDataPointerI6QLineFED2Ev.exit

bb.b:                                             ; preds = %_ZN17QArrayDataPointerI6QLineFE5derefEv.exit.i
  %i.c = load ptr, ptr %0, align 8
  tail call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.c, i64 noundef 32, i64 noundef 8) #51
  br label %_ZN17QArrayDataPointerI6QLineFED2Ev.exit

_ZN17QArrayDataPointerI6QLineFED2Ev.exit:         ; preds = %bb.a, %_ZN17QArrayDataPointerI6QLineFE5derefEv.exit.i, %bb.b
  ret void
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define noundef { double, double } @_ZNK15QCPAbstractItem19anchorPixelPositionEi(ptr nofree readnone align 8 captures(none) %0, i32 noundef %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.QString, align 8             ; 9 uses
  %3 = alloca %class.QString, align 8             ; 9 uses
  %4 = alloca %class.QDebug, align 8              ; 12 uses
  %5 = alloca %class.QMessageLogger, align 8      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #51
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #51
  store i32 2, ptr %5, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.a, i8 0, i64 20, i1 false)
  store ptr @.str.230, ptr %i.b, align 8
  call void @_ZNK14QMessageLogger5debugEv(ptr dead_on_unwind nonnull writable sret(%class.QDebug) align 8 %4, ptr noundef nonnull align 8 dereferenceable_or_null(32) %5)
  %i.c = load ptr, ptr %4, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #51
  invoke void @_ZN7QString8fromUtf8E14QByteArrayView(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %3, i64 63, ptr nonnull @__PRETTY_FUNCTION__._ZNK15QCPAbstractItem19anchorPixelPositionEi)
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %bb.a
  %i.d = invoke noundef align 8 dereferenceable(16) ptr @_ZN11QTextStreamlsERK7QString(ptr noundef align 8 dereferenceable_or_null(16) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.b unwind label %bb.e       ; 0 uses

bb.b:                                             ; preds = %.noexc
  %i.e = load ptr, ptr %3, align 8                ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i, label %_ZN7QStringD2Ev.exit.i, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i:    ; preds = %bb.b
  %i.f = atomicrmw sub ptr %i.e, i32 1 acq_rel, align 4
  %.not.i.i.i = icmp eq i32 %i.f, 1
  br i1 %.not.i.i.i, label %bb.c, label %_ZN7QStringD2Ev.exit.i

bb.c:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i
  %i.g = load ptr, ptr %3, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.g, i64 noundef 2, i64 noundef 8) #51
  br label %_ZN7QStringD2Ev.exit.i

_ZN7QStringD2Ev.exit.i:                           ; preds = %bb.c, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #51
  %i.h = load ptr, ptr %4, align 8                ; 3 uses
  %i.i = getelementptr i8, ptr %i.h, i64 48
  %i.j = load i8, ptr %i.i, align 8, !range !175, !noundef !176
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.d, label %_ZN6QDebuglsEPKc.exit

bb.d:                                             ; preds = %_ZN7QStringD2Ev.exit.i
  %i.l = invoke noundef align 8 dereferenceable(16) ptr @_ZN11QTextStreamlsEc(ptr noundef align 8 dereferenceable_or_null(16) %i.h, i8 noundef signext 32)
          to label %._ZN6QDebuglsEPKc.exit_crit_edge unwind label %bb.m ; 0 uses

._ZN6QDebuglsEPKc.exit_crit_edge:                 ; preds = %bb.d
  %.pre = load ptr, ptr %4, align 8
  br label %_ZN6QDebuglsEPKc.exit

bb.e:                                             ; preds = %.noexc
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = load ptr, ptr %3, align 8                ; 2 uses
  %.not.i.i.i2.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i2.i, label %_ZN7QStringD2Ev.exit5.i, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i3.i

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i3.i:   ; preds = %bb.e
  %i.o = atomicrmw sub ptr %i.n, i32 1 acq_rel, align 4
  %.not.i.i4.i = icmp eq i32 %i.o, 1
  br i1 %.not.i.i4.i, label %bb.f, label %_ZN7QStringD2Ev.exit5.i

bb.f:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i3.i
  %i.p = load ptr, ptr %3, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.p, i64 noundef 2, i64 noundef 8) #51
  br label %_ZN7QStringD2Ev.exit5.i

_ZN7QStringD2Ev.exit5.i:                          ; preds = %bb.f, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i3.i, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #51
  br label %.body

_ZN6QDebuglsEPKc.exit:                            ; preds = %._ZN6QDebuglsEPKc.exit_crit_edge, %_ZN7QStringD2Ev.exit.i
  %i.q = phi ptr [ %.pre, %._ZN6QDebuglsEPKc.exit_crit_edge ], [ %i.h, %_ZN7QStringD2Ev.exit.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #51
  invoke void @_ZN7QString8fromUtf8E14QByteArrayView(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %2, i64 89, ptr nonnull @.str.102)
          to label %.noexc11 unwind label %bb.m

.noexc11:                                         ; preds = %_ZN6QDebuglsEPKc.exit
  %i.r = invoke noundef align 8 dereferenceable(16) ptr @_ZN11QTextStreamlsERK7QString(ptr noundef align 8 dereferenceable_or_null(16) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.g unwind label %bb.j       ; 0 uses

bb.g:                                             ; preds = %.noexc11
  %i.s = load ptr, ptr %2, align 8                ; 2 uses
  %.not.i.i.i.i7 = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i7, label %_ZN7QStringD2Ev.exit.i10, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i8

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i8:   ; preds = %bb.g
  %i.t = atomicrmw sub ptr %i.s, i32 1 acq_rel, align 4
  %.not.i.i.i9 = icmp eq i32 %i.t, 1
  br i1 %.not.i.i.i9, label %bb.h, label %_ZN7QStringD2Ev.exit.i10

bb.h:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i8
  %i.u = load ptr, ptr %2, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.u, i64 noundef 2, i64 noundef 8) #51
  br label %_ZN7QStringD2Ev.exit.i10

_ZN7QStringD2Ev.exit.i10:                         ; preds = %bb.h, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i8, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #51
  %i.v = load ptr, ptr %4, align 8                ; 3 uses
  %i.w = getelementptr i8, ptr %i.v, i64 48
  %i.x = load i8, ptr %i.w, align 8, !range !175, !noundef !176
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %bb.i, label %_ZN6QDebuglsEPKc.exit15

bb.i:                                             ; preds = %_ZN7QStringD2Ev.exit.i10
  %i.z = invoke noundef align 8 dereferenceable(16) ptr @_ZN11QTextStreamlsEc(ptr noundef align 8 dereferenceable_or_null(16) %i.v, i8 noundef signext 32)
          to label %._ZN6QDebuglsEPKc.exit15_crit_edge unwind label %bb.m ; 0 uses

._ZN6QDebuglsEPKc.exit15_crit_edge:               ; preds = %bb.i
  %.pre18 = load ptr, ptr %4, align 8
  br label %_ZN6QDebuglsEPKc.exit15

bb.j:                                             ; preds = %.noexc11
  %i.aa = landingpad { ptr, i32 }
          cleanup
  %i.ab = load ptr, ptr %2, align 8               ; 2 uses
  %.not.i.i.i2.i3 = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i2.i3, label %_ZN7QStringD2Ev.exit5.i6, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i3.i4

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i3.i4:  ; preds = %bb.j
  %i.ac = atomicrmw sub ptr %i.ab, i32 1 acq_rel, align 4
  %.not.i.i4.i5 = icmp eq i32 %i.ac, 1
  br i1 %.not.i.i4.i5, label %bb.k, label %_ZN7QStringD2Ev.exit5.i6

bb.k:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i3.i4
  %i.ad = load ptr, ptr %2, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.ad, i64 noundef 2, i64 noundef 8) #51
  br label %_ZN7QStringD2Ev.exit5.i6

_ZN7QStringD2Ev.exit5.i6:                         ; preds = %bb.k, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i3.i4, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #51
  br label %.body

_ZN6QDebuglsEPKc.exit15:                          ; preds = %._ZN6QDebuglsEPKc.exit15_crit_edge, %_ZN7QStringD2Ev.exit.i10
  %i.ae = phi ptr [ %.pre18, %._ZN6QDebuglsEPKc.exit15_crit_edge ], [ %i.v, %_ZN7QStringD2Ev.exit.i10 ]
  %i.af = invoke noundef align 8 dereferenceable(16) ptr @_ZN11QTextStreamlsEi(ptr noundef align 8 dereferenceable_or_null(16) %i.ae, i32 noundef %1)
          to label %.noexc16 unwind label %bb.m   ; 0 uses

.noexc16:                                         ; preds = %_ZN6QDebuglsEPKc.exit15
  %i.ag = load ptr, ptr %4, align 8               ; 2 uses
  %i.ah = getelementptr i8, ptr %i.ag, i64 48
  %i.ai = load i8, ptr %i.ah, align 8, !range !175, !noundef !176
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %bb.l, label %_ZN6QDebuglsEi.exit

bb.l:                                             ; preds = %.noexc16
  %i.ak = invoke noundef align 8 dereferenceable(16) ptr @_ZN11QTextStreamlsEc(ptr noundef align 8 dereferenceable_or_null(16) %i.ag, i8 noundef signext 32)
          to label %_ZN6QDebuglsEi.exit unwind label %bb.m ; 0 uses

_ZN6QDebuglsEi.exit:                              ; preds = %.noexc16, %bb.l
  call void @_ZN6QDebugD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %4) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #51
  ret { double, double } zeroinitializer

bb.m:                                             ; preds = %bb.l, %_ZN6QDebuglsEPKc.exit15, %bb.i, %_ZN6QDebuglsEPKc.exit, %bb.d, %bb.a
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.m, %_ZN7QStringD2Ev.exit5.i6, %_ZN7QStringD2Ev.exit5.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.m, %_ZN7QStringD2Ev.exit5.i ], [ %i.al, %bb.m ], [ %i.aa, %_ZN7QStringD2Ev.exit5.i6 ]
  call void @_ZN6QDebugD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %4) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #51
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define noundef ptr @_ZN15QCPAbstractItem14createPositionERK7QString(ptr noundef align 8 dereferenceable_or_null(130) %0, ptr noundef align 8 dereferenceable(24) %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.QPointF, align 8             ; 7 uses
  %3 = alloca %class.QPointF, align 8             ; 7 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %4 = alloca %class.QString, align 8             ; 9 uses
  %5 = alloca %class.QString, align 8             ; 9 uses
  %6 = alloca %class.QDebug, align 8              ; 12 uses
  %7 = alloca %class.QMessageLogger, align 8      ; 7 uses
  %i.c = tail call noundef zeroext i1 @_ZNK15QCPAbstractItem9hasAnchorERK7QString(ptr noundef align 8 dereferenceable_or_null(130) %0, ptr noundef align 8 dereferenceable(24) %1)
  br i1 %i.c, label %bb.b, label %bb.o

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #51
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #51
  store i32 2, ptr %7, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.d, i8 0, i64 20, i1 false)
  store ptr @.str.230, ptr %i.e, align 8
  call void @_ZNK14QMessageLogger5debugEv(ptr dead_on_unwind nonnull writable sret(%class.QDebug) align 8 %6, ptr noundef nonnull align 8 dereferenceable_or_null(32) %7)
  %i.f = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #51
  invoke void @_ZN7QString8fromUtf8E14QByteArrayView(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %5, i64 65, ptr nonnull @__PRETTY_FUNCTION__._ZN15QCPAbstractItem14createPositionERK7QString)
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %bb.b
end_hunk_0
begin_hunk_1_@_ZN5QListIP20QCPAbstractPlottableE5eraseENS2_14const_iteratorES3_:bb.a
  store i64 %i.t, ptr %i.p, align 8
  %.pre13 = load ptr, ptr %0, align 8
  br label %_ZN5QListIP20QCPAbstractPlottableE6removeExx.exit

_ZN5QListIP20QCPAbstractPlottableE6removeExx.exit: ; preds = %bb.a, %_ZN9QtPrivate12QPodArrayOpsIP20QCPAbstractPlottableE5eraseEPS2_x.exit.i
  %i.u = phi ptr [ %.pre14, %bb.a ], [ %.pre13, %_ZN9QtPrivate12QPodArrayOpsIP20QCPAbstractPlottableE5eraseEPS2_x.exit.i ] ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i, label %_ZNK17QArrayDataPointerIP20QCPAbstractPlottableE11needsDetachEv.exit.thread.i.i.i, label %_ZNK17QArrayDataPointerIP20QCPAbstractPlottableE11needsDetachEv.exit.i.i.i

_ZNK17QArrayDataPointerIP20QCPAbstractPlottableE11needsDetachEv.exit.i.i.i: ; preds = %_ZN5QListIP20QCPAbstractPlottableE6removeExx.exit
  %i.v = load atomic i32, ptr %i.u monotonic, align 4
  %i.w = icmp sgt i32 %i.v, 1
  br i1 %i.w, label %_ZNK17QArrayDataPointerIP20QCPAbstractPlottableE11needsDetachEv.exit.thread.i.i.i, label %_ZN5QListIP20QCPAbstractPlottableE5beginEv.exit

_ZNK17QArrayDataPointerIP20QCPAbstractPlottableE11needsDetachEv.exit.thread.i.i.i: ; preds = %_ZNK17QArrayDataPointerIP20QCPAbstractPlottableE11needsDetachEv.exit.i.i.i, %_ZN5QListIP20QCPAbstractPlottableE6removeExx.exit
  tail call void @_ZN17QArrayDataPointerIP20QCPAbstractPlottableE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS2_(ptr noundef align 8 dereferenceable_or_null(24) %0, i32 noundef 0, i64 noundef 0, ptr noundef null)
  br label %_ZN5QListIP20QCPAbstractPlottableE5beginEv.exit

_ZN5QListIP20QCPAbstractPlottableE5beginEv.exit:  ; preds = %_ZNK17QArrayDataPointerIP20QCPAbstractPlottableE11needsDetachEv.exit.i.i.i, %_ZNK17QArrayDataPointerIP20QCPAbstractPlottableE11needsDetachEv.exit.thread.i.i.i
  %i.x = load ptr, ptr %i.a, align 8
  %i.y = getelementptr i8, ptr %i.x, i64 %i.e
  ret ptr %i.y
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define linkonce_odr ptr @_ZN5QListIP15QCPAbstractItemE5eraseENS2_14const_iteratorES3_(ptr noundef align 8 dereferenceable_or_null(24) %0, ptr %1, ptr %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8          ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = sub i64 %i.c, %i.d                       ; 2 uses
  %i.f = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.g = sub i64 %i.f, %i.c                       ; 2 uses
  %i.h = ashr exact i64 %i.g, 3
  %i.i = icmp eq ptr %2, %1
  %.pre14 = load ptr, ptr %0, align 8             ; 3 uses
  br i1 %i.i, label %_ZN5QListIP15QCPAbstractItemE6removeExx.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i.i.i = icmp eq ptr %.pre14, null
  br i1 %.not.i.i.i, label %_ZNK17QArrayDataPointerIP15QCPAbstractItemE11needsDetachEv.exit.thread.i.i, label %_ZNK17QArrayDataPointerIP15QCPAbstractItemE11needsDetachEv.exit.i.i

_ZNK17QArrayDataPointerIP15QCPAbstractItemE11needsDetachEv.exit.i.i: ; preds = %bb.b
  %i.j = load atomic i32, ptr %.pre14 monotonic, align 4
  %i.k = icmp sgt i32 %i.j, 1
  br i1 %i.k, label %_ZNK17QArrayDataPointerIP15QCPAbstractItemE11needsDetachEv.exit.thread.i.i, label %_ZN17QArrayDataPointerIP15QCPAbstractItemE6detachEPS2_.exit.i

_ZNK17QArrayDataPointerIP15QCPAbstractItemE11needsDetachEv.exit.thread.i.i: ; preds = %_ZNK17QArrayDataPointerIP15QCPAbstractItemE11needsDetachEv.exit.i.i, %bb.b
  tail call void @_ZN17QArrayDataPointerIP15QCPAbstractItemE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS2_(ptr noundef align 8 dereferenceable_or_null(24) %0, i32 noundef 0, i64 noundef 0, ptr noundef null)
  %.pre = load ptr, ptr %i.a, align 8
  br label %_ZN17QArrayDataPointerIP15QCPAbstractItemE6detachEPS2_.exit.i

_ZN17QArrayDataPointerIP15QCPAbstractItemE6detachEPS2_.exit.i: ; preds = %_ZNK17QArrayDataPointerIP15QCPAbstractItemE11needsDetachEv.exit.thread.i.i, %_ZNK17QArrayDataPointerIP15QCPAbstractItemE11needsDetachEv.exit.i.i
  %i.l = phi ptr [ %.pre, %_ZNK17QArrayDataPointerIP15QCPAbstractItemE11needsDetachEv.exit.thread.i.i ], [ %i.b, %_ZNK17QArrayDataPointerIP15QCPAbstractItemE11needsDetachEv.exit.i.i ]
  %i.m = getelementptr i8, ptr %i.l, i64 %i.e     ; 2 uses
  %i.n = getelementptr i8, ptr %i.m, i64 %i.g     ; 2 uses
  %i.o = icmp ne ptr %1, %i.b
  %i.p = getelementptr i8, ptr %0, i64 16         ; 3 uses
  %i.q = load i64, ptr %i.p, align 8              ; 3 uses
  %.idx4.i = shl i64 %i.q, 3                      ; 2 uses
  %i.r = sub i64 %i.f, %i.d                       ; 2 uses
  %.not.i.i = icmp eq i64 %i.r, %.idx4.i          ; 2 uses
  %or.cond.i.i = select i1 %i.o, i1 true, i1 %.not.i.i
  br i1 %or.cond.i.i, label %._crit_edge.i.i, label %bb.c

bb.c:                                             ; preds = %_ZN17QArrayDataPointerIP15QCPAbstractItemE6detachEPS2_.exit.i
  store ptr %i.n, ptr %i.a, align 8
  br label %_ZN9QtPrivate12QPodArrayOpsIP15QCPAbstractItemE5eraseEPS2_x.exit.i

._crit_edge.i.i:                                  ; preds = %_ZN17QArrayDataPointerIP15QCPAbstractItemE6detachEPS2_.exit.i
  br i1 %.not.i.i, label %_ZN9QtPrivate12QPodArrayOpsIP15QCPAbstractItemE5eraseEPS2_x.exit.i, label %bb.d

bb.d:                                             ; preds = %._crit_edge.i.i
  %gepdiff.i = sub i64 %.idx4.i, %i.r
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef align 1 %i.m, ptr noundef align 1 %i.n, i64 noundef %gepdiff.i, i1 noundef false) #51
  %.pre12.i.i = load i64, ptr %i.p, align 8
  br label %_ZN9QtPrivate12QPodArrayOpsIP15QCPAbstractItemE5eraseEPS2_x.exit.i

_ZN9QtPrivate12QPodArrayOpsIP15QCPAbstractItemE5eraseEPS2_x.exit.i: ; preds = %bb.d, %._crit_edge.i.i, %bb.c
  %i.s = phi i64 [ %i.q, %._crit_edge.i.i ], [ %.pre12.i.i, %bb.d ], [ %i.q, %bb.c ]
  %i.t = sub i64 %i.s, %i.h
  store i64 %i.t, ptr %i.p, align 8
  %.pre13 = load ptr, ptr %0, align 8
  br label %_ZN5QListIP15QCPAbstractItemE6removeExx.exit

_ZN5QListIP15QCPAbstractItemE6removeExx.exit:     ; preds = %bb.a, %_ZN9QtPrivate12QPodArrayOpsIP15QCPAbstractItemE5eraseEPS2_x.exit.i
  %i.u = phi ptr [ %.pre14, %bb.a ], [ %.pre13, %_ZN9QtPrivate12QPodArrayOpsIP15QCPAbstractItemE5eraseEPS2_x.exit.i ] ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i, label %_ZNK17QArrayDataPointerIP15QCPAbstractItemE11needsDetachEv.exit.thread.i.i.i, label %_ZNK17QArrayDataPointerIP15QCPAbstractItemE11needsDetachEv.exit.i.i.i

_ZNK17QArrayDataPointerIP15QCPAbstractItemE11needsDetachEv.exit.i.i.i: ; preds = %_ZN5QListIP15QCPAbstractItemE6removeExx.exit
  %i.v = load atomic i32, ptr %i.u monotonic, align 4
  %i.w = icmp sgt i32 %i.v, 1
  br i1 %i.w, label %_ZNK17QArrayDataPointerIP15QCPAbstractItemE11needsDetachEv.exit.thread.i.i.i, label %_ZN5QListIP15QCPAbstractItemE5beginEv.exit

_ZNK17QArrayDataPointerIP15QCPAbstractItemE11needsDetachEv.exit.thread.i.i.i: ; preds = %_ZNK17QArrayDataPointerIP15QCPAbstractItemE11needsDetachEv.exit.i.i.i, %_ZN5QListIP15QCPAbstractItemE6removeExx.exit
  tail call void @_ZN17QArrayDataPointerIP15QCPAbstractItemE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS2_(ptr noundef align 8 dereferenceable_or_null(24) %0, i32 noundef 0, i64 noundef 0, ptr noundef null)
  br label %_ZN5QListIP15QCPAbstractItemE5beginEv.exit

_ZN5QListIP15QCPAbstractItemE5beginEv.exit:       ; preds = %_ZNK17QArrayDataPointerIP15QCPAbstractItemE11needsDetachEv.exit.i.i.i, %_ZNK17QArrayDataPointerIP15QCPAbstractItemE11needsDetachEv.exit.thread.i.i.i
  %i.x = load ptr, ptr %i.a, align 8
  %i.y = getelementptr i8, ptr %i.x, i64 %i.e
  ret ptr %i.y
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define linkonce_odr ptr @_ZN5QListIP8QCPLayerE5eraseENS2_14const_iteratorES3_(ptr noundef align 8 dereferenceable_or_null(24) %0, ptr %1, ptr %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8          ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = sub i64 %i.c, %i.d                       ; 2 uses
  %i.f = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.g = sub i64 %i.f, %i.c                       ; 2 uses
  %i.h = ashr exact i64 %i.g, 3
  %i.i = icmp eq ptr %2, %1
  %.pre14 = load ptr, ptr %0, align 8             ; 3 uses
  br i1 %i.i, label %_ZN5QListIP8QCPLayerE6removeExx.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i.i.i = icmp eq ptr %.pre14, null
  br i1 %.not.i.i.i, label %_ZNK17QArrayDataPointerIP8QCPLayerE11needsDetachEv.exit.thread.i.i, label %_ZNK17QArrayDataPointerIP8QCPLayerE11needsDetachEv.exit.i.i

_ZNK17QArrayDataPointerIP8QCPLayerE11needsDetachEv.exit.i.i: ; preds = %bb.b
  %i.j = load atomic i32, ptr %.pre14 monotonic, align 4
  %i.k = icmp sgt i32 %i.j, 1
  br i1 %i.k, label %_ZNK17QArrayDataPointerIP8QCPLayerE11needsDetachEv.exit.thread.i.i, label %_ZN17QArrayDataPointerIP8QCPLayerE6detachEPS2_.exit.i

_ZNK17QArrayDataPointerIP8QCPLayerE11needsDetachEv.exit.thread.i.i: ; preds = %_ZNK17QArrayDataPointerIP8QCPLayerE11needsDetachEv.exit.i.i, %bb.b
  tail call void @_ZN17QArrayDataPointerIP8QCPLayerE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS2_(ptr noundef align 8 dereferenceable_or_null(24) %0, i32 noundef 0, i64 noundef 0, ptr noundef null)
  %.pre = load ptr, ptr %i.a, align 8
  br label %_ZN17QArrayDataPointerIP8QCPLayerE6detachEPS2_.exit.i

_ZN17QArrayDataPointerIP8QCPLayerE6detachEPS2_.exit.i: ; preds = %_ZNK17QArrayDataPointerIP8QCPLayerE11needsDetachEv.exit.thread.i.i, %_ZNK17QArrayDataPointerIP8QCPLayerE11needsDetachEv.exit.i.i
  %i.l = phi ptr [ %.pre, %_ZNK17QArrayDataPointerIP8QCPLayerE11needsDetachEv.exit.thread.i.i ], [ %i.b, %_ZNK17QArrayDataPointerIP8QCPLayerE11needsDetachEv.exit.i.i ]
  %i.m = getelementptr i8, ptr %i.l, i64 %i.e     ; 2 uses
  %i.n = getelementptr i8, ptr %i.m, i64 %i.g     ; 2 uses
  %i.o = icmp ne ptr %1, %i.b
  %i.p = getelementptr i8, ptr %0, i64 16         ; 3 uses
  %i.q = load i64, ptr %i.p, align 8              ; 3 uses
  %.idx4.i = shl i64 %i.q, 3                      ; 2 uses
  %i.r = sub i64 %i.f, %i.d                       ; 2 uses
  %.not.i.i = icmp eq i64 %i.r, %.idx4.i          ; 2 uses
  %or.cond.i.i = select i1 %i.o, i1 true, i1 %.not.i.i
  br i1 %or.cond.i.i, label %._crit_edge.i.i, label %bb.c

bb.c:                                             ; preds = %_ZN17QArrayDataPointerIP8QCPLayerE6detachEPS2_.exit.i
  store ptr %i.n, ptr %i.a, align 8
  br label %_ZN9QtPrivate12QPodArrayOpsIP8QCPLayerE5eraseEPS2_x.exit.i

._crit_edge.i.i:                                  ; preds = %_ZN17QArrayDataPointerIP8QCPLayerE6detachEPS2_.exit.i
  br i1 %.not.i.i, label %_ZN9QtPrivate12QPodArrayOpsIP8QCPLayerE5eraseEPS2_x.exit.i, label %bb.d

bb.d:                                             ; preds = %._crit_edge.i.i
  %gepdiff.i = sub i64 %.idx4.i, %i.r
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef align 1 %i.m, ptr noundef align 1 %i.n, i64 noundef %gepdiff.i, i1 noundef false) #51
  %.pre12.i.i = load i64, ptr %i.p, align 8
  br label %_ZN9QtPrivate12QPodArrayOpsIP8QCPLayerE5eraseEPS2_x.exit.i

_ZN9QtPrivate12QPodArrayOpsIP8QCPLayerE5eraseEPS2_x.exit.i: ; preds = %bb.d, %._crit_edge.i.i, %bb.c
  %i.s = phi i64 [ %i.q, %._crit_edge.i.i ], [ %.pre12.i.i, %bb.d ], [ %i.q, %bb.c ]
  %i.t = sub i64 %i.s, %i.h
  store i64 %i.t, ptr %i.p, align 8
  %.pre13 = load ptr, ptr %0, align 8
  br label %_ZN5QListIP8QCPLayerE6removeExx.exit

_ZN5QListIP8QCPLayerE6removeExx.exit:             ; preds = %bb.a, %_ZN9QtPrivate12QPodArrayOpsIP8QCPLayerE5eraseEPS2_x.exit.i
  %i.u = phi ptr [ %.pre14, %bb.a ], [ %.pre13, %_ZN9QtPrivate12QPodArrayOpsIP8QCPLayerE5eraseEPS2_x.exit.i ] ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i, label %_ZNK17QArrayDataPointerIP8QCPLayerE11needsDetachEv.exit.thread.i.i.i, label %_ZNK17QArrayDataPointerIP8QCPLayerE11needsDetachEv.exit.i.i.i

_ZNK17QArrayDataPointerIP8QCPLayerE11needsDetachEv.exit.i.i.i: ; preds = %_ZN5QListIP8QCPLayerE6removeExx.exit
  %i.v = load atomic i32, ptr %i.u monotonic, align 4
  %i.w = icmp sgt i32 %i.v, 1
  br i1 %i.w, label %_ZNK17QArrayDataPointerIP8QCPLayerE11needsDetachEv.exit.thread.i.i.i, label %_ZN5QListIP8QCPLayerE5beginEv.exit

_ZNK17QArrayDataPointerIP8QCPLayerE11needsDetachEv.exit.thread.i.i.i: ; preds = %_ZNK17QArrayDataPointerIP8QCPLayerE11needsDetachEv.exit.i.i.i, %_ZN5QListIP8QCPLayerE6removeExx.exit
  tail call void @_ZN17QArrayDataPointerIP8QCPLayerE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS2_(ptr noundef align 8 dereferenceable_or_null(24) %0, i32 noundef 0, i64 noundef 0, ptr noundef null)
  br label %_ZN5QListIP8QCPLayerE5beginEv.exit

_ZN5QListIP8QCPLayerE5beginEv.exit:               ; preds = %_ZNK17QArrayDataPointerIP8QCPLayerE11needsDetachEv.exit.i.i.i, %_ZNK17QArrayDataPointerIP8QCPLayerE11needsDetachEv.exit.thread.i.i.i
  %i.x = load ptr, ptr %i.a, align 8
  %i.y = getelementptr i8, ptr %i.x, i64 %i.e
  ret ptr %i.y
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define linkonce_odr noundef ptr @_ZNSt3_V28__rotateIPP8QCPLayerEET_S4_S4_S4_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_ZSt11swap_rangesIPP8QCPLayerS2_ET0_T_S4_S3_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %2, %1
  br i1 %i.b, label %_ZSt11swap_rangesIPP8QCPLayerS2_ET0_T_S4_S3_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.d = ptrtoint ptr %0 to i64                   ; 4 uses
  %i.e = sub i64 %i.c, %i.d
  %i.f = ashr exact i64 %i.e, 3                   ; 2 uses
  %i.g = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.h = sub i64 %i.g, %i.d
  %i.i = ashr exact i64 %i.h, 3                   ; 3 uses
  %i.j = sub nsw i64 %i.f, %i.i
  %i.k = icmp eq i64 %i.i, %i.j
  br i1 %i.k, label %.lr.ph.i.preheader, label %bb.d

.lr.ph.i.preheader:                               ; preds = %bb.c
  %i.l = add i64 %i.g, -8
  %i.m = sub i64 %i.l, %i.d                       ; 3 uses
  %i.n = lshr i64 %i.m, 3
  %i.o = add nuw nsw i64 %i.n, 1                  ; 2 uses
  %min.iters.check186 = icmp ult i64 %i.m, 360
  br i1 %min.iters.check186, label %.lr.ph.i.preheader202, label %vector.scevcheck175

vector.scevcheck175:                              ; preds = %.lr.ph.i.preheader
  %i.p = add i64 %i.g, -8
  %i.q = sub i64 %i.p, %i.d
  %mul176 = and i64 %i.q, -8                      ; 2 uses
  %i.r = getelementptr i8, ptr %0, i64 %mul176
  %i.s = icmp ult ptr %i.r, %0
  %i.t = getelementptr i8, ptr %1, i64 %mul176
  %i.u = icmp ult ptr %i.t, %1
  %i.v = or i1 %i.s, %i.u
  br i1 %i.v, label %.lr.ph.i.preheader202, label %vector.memcheck179

vector.memcheck179:                               ; preds = %vector.scevcheck175
  %i.w = and i64 %i.m, -8
  %i.x = add i64 %i.w, 8                          ; 2 uses
  %scevgep180 = getelementptr i8, ptr %0, i64 %i.x
  %scevgep181 = getelementptr i8, ptr %1, i64 %i.x
  %bound0182 = icmp ult ptr %0, %scevgep181
  %bound1183 = icmp ult ptr %1, %scevgep180
  %found.conflict184 = and i1 %bound0182, %bound1183
  br i1 %found.conflict184, label %.lr.ph.i.preheader202, label %vector.ph187

vector.ph187:                                     ; preds = %vector.memcheck179
  %n.vec188 = and i64 %i.o, 4611686018427387900   ; 3 uses
  %i.y = shl i64 %n.vec188, 3                     ; 2 uses
  %i.z = getelementptr i8, ptr %1, i64 %i.y
  %i.aa = getelementptr i8, ptr %0, i64 %i.y
  br label %vector.body189

vector.body189:                                   ; preds = %vector.body189, %vector.ph187
  %index190 = phi i64 [ 0, %vector.ph187 ], [ %index.next197, %vector.body189 ] ; 2 uses
  %i.ab = shl i64 %index190, 3                    ; 2 uses
  %next.gep191 = getelementptr i8, ptr %1, i64 %i.ab ; 3 uses
  %next.gep192 = getelementptr i8, ptr %0, i64 %i.ab ; 3 uses
  %i.ac = getelementptr i8, ptr %next.gep192, i64 16 ; 2 uses
  %wide.load193 = load <2 x ptr>, ptr %next.gep192, align 8, !alias.scope !1817, !noalias !1818
  %wide.load194 = load <2 x ptr>, ptr %i.ac, align 8, !alias.scope !1817, !noalias !1818
  %i.ad = getelementptr i8, ptr %next.gep191, i64 16 ; 2 uses
  %wide.load195 = load <2 x ptr>, ptr %next.gep191, align 8, !alias.scope !1818
  %wide.load196 = load <2 x ptr>, ptr %i.ad, align 8, !alias.scope !1818
  store <2 x ptr> %wide.load195, ptr %next.gep192, align 8, !alias.scope !1817, !noalias !1818
  store <2 x ptr> %wide.load196, ptr %i.ac, align 8, !alias.scope !1817, !noalias !1818
  store <2 x ptr> %wide.load193, ptr %next.gep191, align 8, !alias.scope !1818
  store <2 x ptr> %wide.load194, ptr %i.ad, align 8, !alias.scope !1818
  %index.next197 = add nuw i64 %index190, 4       ; 2 uses
  %i.ae = icmp eq i64 %index.next197, %n.vec188
  br i1 %i.ae, label %middle.block198, label %vector.body189, !llvm.loop !1802

middle.block198:                                  ; preds = %vector.body189
  %cmp.n199 = icmp eq i64 %i.o, %n.vec188
  br i1 %cmp.n199, label %_ZSt11swap_rangesIPP8QCPLayerS2_ET0_T_S4_S3_.exit, label %.lr.ph.i.preheader202

.lr.ph.i.preheader202:                            ; preds = %vector.memcheck179, %vector.scevcheck175, %.lr.ph.i.preheader, %middle.block198
  %.010.i.ph = phi ptr [ %1, %vector.memcheck179 ], [ %1, %vector.scevcheck175 ], [ %1, %.lr.ph.i.preheader ], [ %i.z, %middle.block198 ]
  %.079.i.ph = phi ptr [ %0, %vector.memcheck179 ], [ %0, %vector.scevcheck175 ], [ %0, %.lr.ph.i.preheader ], [ %i.aa, %middle.block198 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader202, %.lr.ph.i
  %.010.i = phi ptr [ %i.ai, %.lr.ph.i ], [ %.010.i.ph, %.lr.ph.i.preheader202 ] ; 3 uses
  %.079.i = phi ptr [ %i.ah, %.lr.ph.i ], [ %.079.i.ph, %.lr.ph.i.preheader202 ] ; 3 uses
  %i.af = load ptr, ptr %.079.i, align 8
  %i.ag = load ptr, ptr %.010.i, align 8
  store ptr %i.ag, ptr %.079.i, align 8
  store ptr %i.af, ptr %.010.i, align 8
  %i.ah = getelementptr i8, ptr %.079.i, i64 8    ; 2 uses
  %i.ai = getelementptr i8, ptr %.010.i, i64 8
  %.not.i = icmp eq ptr %i.ah, %1
  br i1 %.not.i, label %_ZSt11swap_rangesIPP8QCPLayerS2_ET0_T_S4_S3_.exit, label %.lr.ph.i, !llvm.loop !1803

bb.d:                                             ; preds = %bb.c
  %i.aj = sub i64 %i.c, %i.g
  %i.ak = getelementptr i8, ptr %0, i64 %i.aj     ; 4 uses
  br label %bb.e

bb.e:                                             ; preds = %.backedge, %bb.d
  %.086 = phi i64 [ %i.f, %bb.d ], [ %.086.be, %.backedge ] ; 13 uses
  %.082 = phi i64 [ %i.i, %bb.d ], [ %.082.be, %.backedge ] ; 21 uses
  %.058 = phi ptr [ %0, %bb.d ], [ %.058.be, %.backedge ] ; 28 uses
  %i.al = sub i64 %.086, %.082                    ; 10 uses
  %i.am = icmp slt i64 %.082, %i.al
  br i1 %i.am, label %bb.f, label %bb.m

bb.f:                                             ; preds = %bb.e
  %i.an = icmp eq i64 %.082, 1
  br i1 %i.an, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.ao = load ptr, ptr %.058, align 8
  %i.ap = getelementptr i8, ptr %.058, i64 8      ; 2 uses
  %.idx97 = shl i64 %.086, 3                      ; 2 uses
  %i.aq = getelementptr i8, ptr %.058, i64 %.idx97
  %gepdiff = add i64 %.idx97, -8                  ; 3 uses
  %i.ar = icmp sgt i64 %gepdiff, 8
  br i1 %i.ar, label %bb.h, label %bb.i, !prof !206

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %.058, ptr align 8 %i.ap, i64 %gepdiff, i1 false)
  br label %_ZSt4moveIPP8QCPLayerS2_ET0_T_S4_S3_.exit

bb.i:                                             ; preds = %bb.g
  %i.as = icmp eq i64 %gepdiff, 8
  br i1 %i.as, label %bb.j, label %_ZSt4moveIPP8QCPLayerS2_ET0_T_S4_S3_.exit

bb.j:                                             ; preds = %bb.i
  %i.at = load ptr, ptr %i.ap, align 8
  store ptr %i.at, ptr %.058, align 8
  br label %_ZSt4moveIPP8QCPLayerS2_ET0_T_S4_S3_.exit

_ZSt4moveIPP8QCPLayerS2_ET0_T_S4_S3_.exit:        ; preds = %bb.h, %bb.i, %bb.j
  %i.au = getelementptr i8, ptr %i.aq, i64 -8
  store ptr %i.ao, ptr %i.au, align 8
  br label %_ZSt11swap_rangesIPP8QCPLayerS2_ET0_T_S4_S3_.exit

bb.k:                                             ; preds = %bb.f
  %i.av = icmp sgt i64 %i.al, 0
  br i1 %i.av, label %.lr.ph110.preheader, label %._crit_edge111

.lr.ph110.preheader:                              ; preds = %bb.k
  %i.aw = getelementptr [8 x i8], ptr %.058, i64 %.082 ; 8 uses
  %min.iters.check = icmp ult i64 %i.al, 30
  br i1 %min.iters.check, label %.lr.ph110.preheader203, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph110.preheader
  %i.ax = xor i64 %.082, -1
  %i.ay = add i64 %.086, %i.ax                    ; 2 uses
  %mul.result = shl i64 %i.ay, 3                  ; 2 uses
  %mul.overflow = icmp ugt i64 %i.ay, 2305843009213693951
  %i.az = getelementptr i8, ptr %.058, i64 %mul.result
  %i.ba = icmp ult ptr %i.az, %.058
  %i.bb = getelementptr i8, ptr %i.aw, i64 %mul.result
  %i.bc = icmp ult ptr %i.bb, %i.aw
  %i.bd = or i1 %i.bc, %mul.overflow
  %i.be = or i1 %i.ba, %i.bd
  br i1 %i.be, label %.lr.ph110.preheader203, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.bf = shl i64 %.086, 3
  %i.bg = sub i64 %.086, %.082
  %i.bh = shl i64 %i.bg, 3
  %scevgep = getelementptr i8, ptr %.058, i64 %i.bh
  %scevgep137 = getelementptr i8, ptr %.058, i64 %i.bf
  %bound0 = icmp ult ptr %.058, %scevgep137
  %bound1 = icmp ult ptr %i.aw, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph110.preheader203, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.al, 9223372036854775804     ; 4 uses
  %i.bi = shl i64 %n.vec, 3                       ; 2 uses
  %i.bj = getelementptr i8, ptr %i.aw, i64 %i.bi
  %i.bk = getelementptr i8, ptr %.058, i64 %i.bi  ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bl = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.aw, i64 %i.bl ; 3 uses
  %next.gep138 = getelementptr i8, ptr %.058, i64 %i.bl ; 3 uses
  %i.bm = getelementptr i8, ptr %next.gep138, i64 16 ; 2 uses
  %wide.load = load <2 x ptr>, ptr %next.gep138, align 8, !alias.scope !1819, !noalias !1820
  %wide.load139 = load <2 x ptr>, ptr %i.bm, align 8, !alias.scope !1819, !noalias !1820
  %i.bn = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load140 = load <2 x ptr>, ptr %next.gep, align 8, !alias.scope !1820
  %wide.load141 = load <2 x ptr>, ptr %i.bn, align 8, !alias.scope !1820
  store <2 x ptr> %wide.load140, ptr %next.gep138, align 8, !alias.scope !1819, !noalias !1820
  store <2 x ptr> %wide.load141, ptr %i.bm, align 8, !alias.scope !1819, !noalias !1820
  store <2 x ptr> %wide.load, ptr %next.gep, align 8, !alias.scope !1820
  store <2 x ptr> %wide.load139, ptr %i.bn, align 8, !alias.scope !1820
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bo = icmp eq i64 %index.next, %n.vec
  br i1 %i.bo, label %middle.block, label %vector.body, !llvm.loop !1807

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.al, %n.vec
  br i1 %cmp.n, label %._crit_edge111, label %.lr.ph110.preheader203

.lr.ph110.preheader203:                           ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph110.preheader, %middle.block
  %.054108.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph110.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %.055107.ph = phi ptr [ %i.aw, %vector.memcheck ], [ %i.aw, %vector.scevcheck ], [ %i.aw, %.lr.ph110.preheader ], [ %i.bj, %middle.block ] ; 2 uses
  %.159106.ph = phi ptr [ %.058, %vector.memcheck ], [ %.058, %vector.scevcheck ], [ %.058, %.lr.ph110.preheader ], [ %i.bk, %middle.block ] ; 2 uses
  %i.bp = sub i64 %.086, %.082
  %xtraiter211 = and i64 %i.bp, 3                 ; 2 uses
  %lcmp.mod212.not = icmp eq i64 %xtraiter211, 0
  br i1 %lcmp.mod212.not, label %.lr.ph110.prol.loopexit, label %.lr.ph110.prol

.lr.ph110.prol:                                   ; preds = %.lr.ph110.preheader203, %.lr.ph110.prol
  %.054108.prol = phi i64 [ %i.bu, %.lr.ph110.prol ], [ %.054108.ph, %.lr.ph110.preheader203 ]
  %.055107.prol = phi ptr [ %i.bt, %.lr.ph110.prol ], [ %.055107.ph, %.lr.ph110.preheader203 ] ; 3 uses
  %.159106.prol = phi ptr [ %i.bs, %.lr.ph110.prol ], [ %.159106.ph, %.lr.ph110.preheader203 ] ; 3 uses
  %prol.iter213 = phi i64 [ %prol.iter213.next, %.lr.ph110.prol ], [ 0, %.lr.ph110.preheader203 ]
  %i.bq = load ptr, ptr %.159106.prol, align 8
  %i.br = load ptr, ptr %.055107.prol, align 8
  store ptr %i.br, ptr %.159106.prol, align 8
  store ptr %i.bq, ptr %.055107.prol, align 8
  %i.bs = getelementptr i8, ptr %.159106.prol, i64 8 ; 3 uses
  %i.bt = getelementptr i8, ptr %.055107.prol, i64 8 ; 2 uses
  %i.bu = add nuw nsw i64 %.054108.prol, 1        ; 2 uses
  %prol.iter213.next = add i64 %prol.iter213, 1   ; 2 uses
  %prol.iter213.cmp.not = icmp eq i64 %prol.iter213.next, %xtraiter211
  br i1 %prol.iter213.cmp.not, label %.lr.ph110.prol.loopexit, label %.lr.ph110.prol, !llvm.loop !1808

.lr.ph110.prol.loopexit:                          ; preds = %.lr.ph110.prol, %.lr.ph110.preheader203
  %.lcssa.unr = phi ptr [ poison, %.lr.ph110.preheader203 ], [ %i.bs, %.lr.ph110.prol ]
  %.054108.unr = phi i64 [ %.054108.ph, %.lr.ph110.preheader203 ], [ %i.bu, %.lr.ph110.prol ]
  %.055107.unr = phi ptr [ %.055107.ph, %.lr.ph110.preheader203 ], [ %i.bt, %.lr.ph110.prol ]
  %.159106.unr = phi ptr [ %.159106.ph, %.lr.ph110.preheader203 ], [ %i.bs, %.lr.ph110.prol ]
  %i.bv = sub i64 %.054108.ph, %.086
  %i.bw = add i64 %i.bv, %.082
  %i.bx = icmp ugt i64 %i.bw, -4
  br i1 %i.bx, label %._crit_edge111, label %.lr.ph110

._crit_edge111:                                   ; preds = %.lr.ph110.prol.loopexit, %.lr.ph110, %middle.block, %bb.k
  %.159.lcssa = phi ptr [ %.058, %bb.k ], [ %i.bk, %middle.block ], [ %.lcssa.unr, %.lr.ph110.prol.loopexit ], [ %i.cn, %.lr.ph110 ]
  %i.by = srem i64 %.086, %.082                   ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN17QArrayDataPointerIP7QCPBarsE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS2_:bb.a

bb.j:                                             ; preds = %_ZNK17QArrayDataPointerIP7QCPBarsE11needsDetachEv.exit31
  %.idx = shl i64 %spec.select, 3                 ; 2 uses
  %i.aj = icmp eq i64 %.idx, 0
  br i1 %i.aj, label %_ZN9QtPrivate12QPodArrayOpsIP7QCPBarsE10copyAppendEPKS2_S5_.exit, label %_ZN9QtPrivate12QPodArrayOpsIP7QCPBarsE10copyAppendEPKS2_S5_.exit.sink.split

_ZN9QtPrivate12QPodArrayOpsIP7QCPBarsE10copyAppendEPKS2_S5_.exit.sink.split: ; preds = %bb.j, %_ZNK17QArrayDataPointerIP7QCPBarsE11needsDetachEv.exit31.thread
  %.idx.sink55 = phi i64 [ %.idx40, %_ZNK17QArrayDataPointerIP7QCPBarsE11needsDetachEv.exit31.thread ], [ %.idx, %bb.j ] ; 2 uses
  %i.ak = getelementptr i8, ptr %0, i64 8
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.an = load i64, ptr %i.am, align 16
  %i.ao = getelementptr [8 x i8], ptr %i.x, i64 %i.an
  %i.ap = ashr exact i64 %.idx.sink55, 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 %i.ao, ptr noundef align 1 %i.al, i64 noundef %.idx.sink55, i1 noundef false) #51
  %i.aq = load i64, ptr %i.am, align 16
  %i.ar = add i64 %i.aq, %i.ap
  store i64 %i.ar, ptr %i.am, align 16
  br label %_ZN9QtPrivate12QPodArrayOpsIP7QCPBarsE10copyAppendEPKS2_S5_.exit

_ZN9QtPrivate12QPodArrayOpsIP7QCPBarsE10copyAppendEPKS2_S5_.exit: ; preds = %_ZN9QtPrivate12QPodArrayOpsIP7QCPBarsE10copyAppendEPKS2_S5_.exit.sink.split, %bb.j, %_ZNK17QArrayDataPointerIP7QCPBarsE11needsDetachEv.exit31.thread, %bb.h
  %i.as = load ptr, ptr %0, align 8               ; 3 uses
  %i.at = getelementptr i8, ptr %0, i64 8
  %i.au = load ptr, ptr %i.at, align 8            ; 2 uses
  %i.av = load <2 x ptr>, ptr %4, align 16
  store ptr %i.as, ptr %4, align 16
  store <2 x ptr> %i.av, ptr %0, align 8
  store ptr %i.au, ptr %i.w, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.ax = load i64, ptr %i.ac, align 8            ; 2 uses
  %i.ay = load i64, ptr %i.aw, align 16
  store i64 %i.ay, ptr %i.ac, align 8
  store i64 %i.ax, ptr %i.aw, align 16
  br i1 %i.b, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZN9QtPrivate12QPodArrayOpsIP7QCPBarsE10copyAppendEPKS2_S5_.exit
  %i.az = getelementptr i8, ptr %3, i64 8
  %i.ba = load <2 x ptr>, ptr %3, align 8
  %i.bb = load ptr, ptr %3, align 8
  store ptr %i.as, ptr %3, align 8
  store ptr %i.au, ptr %i.az, align 8
  store <2 x ptr> %i.ba, ptr %4, align 16
  %i.bc = getelementptr i8, ptr %3, i64 16        ; 2 uses
  %i.bd = load i64, ptr %i.bc, align 8
  store i64 %i.ax, ptr %i.bc, align 8
  store i64 %i.bd, ptr %i.aw, align 16
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZN9QtPrivate12QPodArrayOpsIP7QCPBarsE10copyAppendEPKS2_S5_.exit
  %i.be = phi ptr [ %i.bb, %bb.k ], [ %i.as, %_ZN9QtPrivate12QPodArrayOpsIP7QCPBarsE10copyAppendEPKS2_S5_.exit ] ; 2 uses
  %.not.i.i32 = icmp eq ptr %i.be, null
  br i1 %.not.i.i32, label %_ZN17QArrayDataPointerIP7QCPBarsED2Ev.exit35, label %_ZN17QArrayDataPointerIP7QCPBarsE5derefEv.exit.i33

_ZN17QArrayDataPointerIP7QCPBarsE5derefEv.exit.i33: ; preds = %bb.l
  %i.bf = atomicrmw sub ptr %i.be, i32 1 acq_rel, align 4
  %.not.i34 = icmp eq i32 %i.bf, 1
  br i1 %.not.i34, label %bb.m, label %_ZN17QArrayDataPointerIP7QCPBarsED2Ev.exit35

bb.m:                                             ; preds = %_ZN17QArrayDataPointerIP7QCPBarsE5derefEv.exit.i33
  %i.bg = load ptr, ptr %4, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.bg, i64 noundef 8, i64 noundef 8) #51
  br label %_ZN17QArrayDataPointerIP7QCPBarsED2Ev.exit35

_ZN17QArrayDataPointerIP7QCPBarsED2Ev.exit35:     ; preds = %bb.l, %_ZN17QArrayDataPointerIP7QCPBarsE5derefEv.exit.i33, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #51
  br label %bb.n

bb.n:                                             ; preds = %_ZN17QArrayDataPointerIP7QCPBarsED2Ev.exit35, %_ZN9QtPrivate12QPodArrayOpsIP7QCPBarsE10reallocateExN10QArrayData16AllocationOptionE.exit
  ret void
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define linkonce_odr void @_ZN17QArrayDataPointerIP7QCPBarsE12allocateGrowERKS2_xN10QArrayData14GrowthPositionE(ptr dead_on_unwind noalias writable sret(%struct.QArrayDataPointer.250) align 8 %0, ptr noundef align 8 dereferenceable(24) %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.c = load ptr, ptr %1, align 8                ; 4 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %_ZNK17QArrayDataPointerIP7QCPBarsE22constAllocatedCapacityEv.exit, label %_ZNK17QArrayDataPointerIP7QCPBarsE22constAllocatedCapacityEv.exit.thread

_ZNK17QArrayDataPointerIP7QCPBarsE22constAllocatedCapacityEv.exit: ; preds = %bb.a
  %i.d = load i64, ptr %i.b, align 8
  %.sroa.speculated = tail call i64 @llvm.smax.i64(i64 %i.d, i64 0)
  %i.e = add i64 %.sroa.speculated, %2
  br label %_ZNK17QArrayDataPointerIP7QCPBarsE22constAllocatedCapacityEv.exit31

_ZNK17QArrayDataPointerIP7QCPBarsE22constAllocatedCapacityEv.exit.thread: ; preds = %bb.a
  %i.f = getelementptr i8, ptr %i.c, i64 8
  %i.g = load i64, ptr %i.f, align 8              ; 5 uses
  %i.h = load i64, ptr %i.b, align 8              ; 2 uses
  %.sroa.speculated45 = tail call i64 @llvm.smax.i64(i64 %i.h, i64 %i.g)
  %i.i = add i64 %.sroa.speculated45, %2
  %i.j = icmp eq i32 %3, 0
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = ptrtoint ptr %i.c to i64
  %i.n = add i64 %i.m, 23
  %i.o = and i64 %i.n, -8
  %i.p = ptrtoint ptr %i.l to i64
  %i.q = sub i64 %i.p, %i.o
  %i.r = ashr exact i64 %i.q, 3                   ; 2 uses
  %i.s = add i64 %i.h, %i.r
  %i.t = sub i64 %i.g, %i.s
  %.ph = select i1 %i.j, i64 %i.t, i64 %i.r
  %i.u = sub i64 %i.i, %.ph                       ; 2 uses
  %i.v = getelementptr i8, ptr %i.c, i64 4
  %i.w = load i32, ptr %i.v, align 4
  %i.x = and i32 %i.w, 1
  %.not.i.i = icmp eq i32 %i.x, 0
  br i1 %.not.i.i, label %_ZNK17QArrayDataPointerIP7QCPBarsE22constAllocatedCapacityEv.exit31, label %bb.b

bb.b:                                             ; preds = %_ZNK17QArrayDataPointerIP7QCPBarsE22constAllocatedCapacityEv.exit.thread
  %spec.select.i.i = tail call i64 @llvm.smax.i64(i64 %i.u, i64 %i.g)
  br label %_ZNK17QArrayDataPointerIP7QCPBarsE22constAllocatedCapacityEv.exit31

_ZNK17QArrayDataPointerIP7QCPBarsE22constAllocatedCapacityEv.exit31: ; preds = %bb.b, %_ZNK17QArrayDataPointerIP7QCPBarsE22constAllocatedCapacityEv.exit.thread, %_ZNK17QArrayDataPointerIP7QCPBarsE22constAllocatedCapacityEv.exit
  %i.y = phi i64 [ %i.e, %_ZNK17QArrayDataPointerIP7QCPBarsE22constAllocatedCapacityEv.exit ], [ %spec.select.i.i, %bb.b ], [ %i.u, %_ZNK17QArrayDataPointerIP7QCPBarsE22constAllocatedCapacityEv.exit.thread ] ; 2 uses
  %i.z = phi i64 [ 0, %_ZNK17QArrayDataPointerIP7QCPBarsE22constAllocatedCapacityEv.exit ], [ %i.g, %bb.b ], [ %i.g, %_ZNK17QArrayDataPointerIP7QCPBarsE22constAllocatedCapacityEv.exit.thread ]
  %i.aa = icmp sle i64 %i.y, %i.z
  %i.ab = zext i1 %i.aa to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #51
  %i.ac = call noalias noundef ptr @_ZN10QArrayData8allocateEPPS_xxxNS_16AllocationOptionE(ptr noundef nonnull %i.a, i64 noundef 8, i64 noundef 8, i64 noundef %i.y, i32 noundef %i.ab) #51 ; 6 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ac, i64 8) ]
  %i.ad = load ptr, ptr %i.a, align 8             ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #51
  %.not = icmp ne ptr %i.ad, null
  %i.ae = icmp ne ptr %i.ac, null
  %i.af = and i1 %i.ae, %.not
  br i1 %i.af, label %bb.c, label %bb.f

bb.c:                                             ; preds = %_ZNK17QArrayDataPointerIP7QCPBarsE22constAllocatedCapacityEv.exit31
  %i.ag = icmp eq i32 %3, 1
  br i1 %i.ag, label %_ZNK17QArrayDataPointerIP7QCPBarsE16freeSpaceAtBeginEv.exit33, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ah = load ptr, ptr %1, align 8               ; 3 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %_ZNK17QArrayDataPointerIP7QCPBarsE5flagsEv.exit, label %_ZNK17QArrayDataPointerIP7QCPBarsE16freeSpaceAtBeginEv.exit33.thread

_ZNK17QArrayDataPointerIP7QCPBarsE16freeSpaceAtBeginEv.exit33.thread: ; preds = %bb.d
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = ptrtoint ptr %i.ah to i64
  %i.am = add i64 %i.al, 23
  %i.an = and i64 %i.am, -8
  %i.ao = ptrtoint ptr %i.ak to i64
  %i.ap = sub i64 %i.ao, %i.an
  %i.aq = getelementptr i8, ptr %i.ac, i64 %i.ap
  br label %bb.e

_ZNK17QArrayDataPointerIP7QCPBarsE16freeSpaceAtBeginEv.exit33: ; preds = %bb.c
  %i.ar = getelementptr i8, ptr %i.ad, i64 8
  %i.as = load i64, ptr %i.ar, align 8
  %i.at = load i64, ptr %i.b, align 8
  %i.au = add i64 %2, %i.at
  %i.av = sub i64 %i.as, %i.au
  %i.aw = sdiv i64 %i.av, 2
  %i.ax = call noundef i64 @llvm.smax.i64(i64 %i.aw, i64 0)
  %.pr.pre = load ptr, ptr %1, align 8            ; 2 uses
  %i.ay = getelementptr [8 x i8], ptr %i.ac, i64 %i.ax
  %i.az = getelementptr [8 x i8], ptr %i.ay, i64 %2 ; 2 uses
  %.not.i34 = icmp eq ptr %.pr.pre, null
  br i1 %.not.i34, label %_ZNK17QArrayDataPointerIP7QCPBarsE5flagsEv.exit, label %bb.e

bb.e:                                             ; preds = %_ZNK17QArrayDataPointerIP7QCPBarsE16freeSpaceAtBeginEv.exit33.thread, %_ZNK17QArrayDataPointerIP7QCPBarsE16freeSpaceAtBeginEv.exit33
  %i.ba = phi ptr [ %i.aq, %_ZNK17QArrayDataPointerIP7QCPBarsE16freeSpaceAtBeginEv.exit33.thread ], [ %i.az, %_ZNK17QArrayDataPointerIP7QCPBarsE16freeSpaceAtBeginEv.exit33 ]
  %.pr62 = phi ptr [ %i.ah, %_ZNK17QArrayDataPointerIP7QCPBarsE16freeSpaceAtBeginEv.exit33.thread ], [ %.pr.pre, %_ZNK17QArrayDataPointerIP7QCPBarsE16freeSpaceAtBeginEv.exit33 ]
  %i.bb = getelementptr i8, ptr %.pr62, i64 4
  %i.bc = load i32, ptr %i.bb, align 4
  br label %_ZNK17QArrayDataPointerIP7QCPBarsE5flagsEv.exit

_ZNK17QArrayDataPointerIP7QCPBarsE5flagsEv.exit:  ; preds = %bb.d, %_ZNK17QArrayDataPointerIP7QCPBarsE16freeSpaceAtBeginEv.exit33, %bb.e
  %i.bd = phi ptr [ %i.ba, %bb.e ], [ %i.az, %_ZNK17QArrayDataPointerIP7QCPBarsE16freeSpaceAtBeginEv.exit33 ], [ %i.ac, %bb.d ]
  %.sroa.0.0.i = phi i32 [ %i.bc, %bb.e ], [ 0, %_ZNK17QArrayDataPointerIP7QCPBarsE16freeSpaceAtBeginEv.exit33 ], [ 0, %bb.d ]
  %i.be = getelementptr i8, ptr %i.ad, i64 4
  store i32 %.sroa.0.0.i, ptr %i.be, align 4
  br label %bb.f

bb.f:                                             ; preds = %_ZNK17QArrayDataPointerIP7QCPBarsE22constAllocatedCapacityEv.exit31, %_ZNK17QArrayDataPointerIP7QCPBarsE5flagsEv.exit
  %.sink = phi ptr [ %i.bd, %_ZNK17QArrayDataPointerIP7QCPBarsE5flagsEv.exit ], [ %i.ac, %_ZNK17QArrayDataPointerIP7QCPBarsE22constAllocatedCapacityEv.exit31 ]
  store ptr %i.ad, ptr %0, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink, ptr %i.bf, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.bg, align 8
  ret void
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define linkonce_odr noundef ptr @_ZNSt3_V28__rotateIPP7QCPBarsEET_S4_S4_S4_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_ZSt11swap_rangesIPP7QCPBarsS2_ET0_T_S4_S3_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %2, %1
  br i1 %i.b, label %_ZSt11swap_rangesIPP7QCPBarsS2_ET0_T_S4_S3_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.d = ptrtoint ptr %0 to i64                   ; 4 uses
  %i.e = sub i64 %i.c, %i.d
  %i.f = ashr exact i64 %i.e, 3                   ; 2 uses
  %i.g = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.h = sub i64 %i.g, %i.d
  %i.i = ashr exact i64 %i.h, 3                   ; 3 uses
  %i.j = sub nsw i64 %i.f, %i.i
  %i.k = icmp eq i64 %i.i, %i.j
  br i1 %i.k, label %.lr.ph.i.preheader, label %bb.d

.lr.ph.i.preheader:                               ; preds = %bb.c
  %i.l = add i64 %i.g, -8
  %i.m = sub i64 %i.l, %i.d                       ; 3 uses
  %i.n = lshr i64 %i.m, 3
  %i.o = add nuw nsw i64 %i.n, 1                  ; 2 uses
  %min.iters.check186 = icmp ult i64 %i.m, 360
  br i1 %min.iters.check186, label %.lr.ph.i.preheader202, label %vector.scevcheck175

vector.scevcheck175:                              ; preds = %.lr.ph.i.preheader
  %i.p = add i64 %i.g, -8
  %i.q = sub i64 %i.p, %i.d
  %mul176 = and i64 %i.q, -8                      ; 2 uses
  %i.r = getelementptr i8, ptr %0, i64 %mul176
  %i.s = icmp ult ptr %i.r, %0
  %i.t = getelementptr i8, ptr %1, i64 %mul176
  %i.u = icmp ult ptr %i.t, %1
  %i.v = or i1 %i.s, %i.u
  br i1 %i.v, label %.lr.ph.i.preheader202, label %vector.memcheck179

vector.memcheck179:                               ; preds = %vector.scevcheck175
  %i.w = and i64 %i.m, -8
  %i.x = add i64 %i.w, 8                          ; 2 uses
  %scevgep180 = getelementptr i8, ptr %0, i64 %i.x
  %scevgep181 = getelementptr i8, ptr %1, i64 %i.x
  %bound0182 = icmp ult ptr %0, %scevgep181
  %bound1183 = icmp ult ptr %1, %scevgep180
  %found.conflict184 = and i1 %bound0182, %bound1183
  br i1 %found.conflict184, label %.lr.ph.i.preheader202, label %vector.ph187

vector.ph187:                                     ; preds = %vector.memcheck179
  %n.vec188 = and i64 %i.o, 4611686018427387900   ; 3 uses
  %i.y = shl i64 %n.vec188, 3                     ; 2 uses
  %i.z = getelementptr i8, ptr %1, i64 %i.y
  %i.aa = getelementptr i8, ptr %0, i64 %i.y
  br label %vector.body189

vector.body189:                                   ; preds = %vector.body189, %vector.ph187
  %index190 = phi i64 [ 0, %vector.ph187 ], [ %index.next197, %vector.body189 ] ; 2 uses
  %i.ab = shl i64 %index190, 3                    ; 2 uses
  %next.gep191 = getelementptr i8, ptr %1, i64 %i.ab ; 3 uses
  %next.gep192 = getelementptr i8, ptr %0, i64 %i.ab ; 3 uses
  %i.ac = getelementptr i8, ptr %next.gep192, i64 16 ; 2 uses
  %wide.load193 = load <2 x ptr>, ptr %next.gep192, align 8, !alias.scope !1952, !noalias !1953
  %wide.load194 = load <2 x ptr>, ptr %i.ac, align 8, !alias.scope !1952, !noalias !1953
  %i.ad = getelementptr i8, ptr %next.gep191, i64 16 ; 2 uses
  %wide.load195 = load <2 x ptr>, ptr %next.gep191, align 8, !alias.scope !1953
  %wide.load196 = load <2 x ptr>, ptr %i.ad, align 8, !alias.scope !1953
  store <2 x ptr> %wide.load195, ptr %next.gep192, align 8, !alias.scope !1952, !noalias !1953
  store <2 x ptr> %wide.load196, ptr %i.ac, align 8, !alias.scope !1952, !noalias !1953
  store <2 x ptr> %wide.load193, ptr %next.gep191, align 8, !alias.scope !1953
  store <2 x ptr> %wide.load194, ptr %i.ad, align 8, !alias.scope !1953
  %index.next197 = add nuw i64 %index190, 4       ; 2 uses
  %i.ae = icmp eq i64 %index.next197, %n.vec188
  br i1 %i.ae, label %middle.block198, label %vector.body189, !llvm.loop !1937

middle.block198:                                  ; preds = %vector.body189
  %cmp.n199 = icmp eq i64 %i.o, %n.vec188
  br i1 %cmp.n199, label %_ZSt11swap_rangesIPP7QCPBarsS2_ET0_T_S4_S3_.exit, label %.lr.ph.i.preheader202

.lr.ph.i.preheader202:                            ; preds = %vector.memcheck179, %vector.scevcheck175, %.lr.ph.i.preheader, %middle.block198
  %.010.i.ph = phi ptr [ %1, %vector.memcheck179 ], [ %1, %vector.scevcheck175 ], [ %1, %.lr.ph.i.preheader ], [ %i.z, %middle.block198 ]
  %.079.i.ph = phi ptr [ %0, %vector.memcheck179 ], [ %0, %vector.scevcheck175 ], [ %0, %.lr.ph.i.preheader ], [ %i.aa, %middle.block198 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader202, %.lr.ph.i
  %.010.i = phi ptr [ %i.ai, %.lr.ph.i ], [ %.010.i.ph, %.lr.ph.i.preheader202 ] ; 3 uses
  %.079.i = phi ptr [ %i.ah, %.lr.ph.i ], [ %.079.i.ph, %.lr.ph.i.preheader202 ] ; 3 uses
  %i.af = load ptr, ptr %.079.i, align 8
  %i.ag = load ptr, ptr %.010.i, align 8
  store ptr %i.ag, ptr %.079.i, align 8
  store ptr %i.af, ptr %.010.i, align 8
  %i.ah = getelementptr i8, ptr %.079.i, i64 8    ; 2 uses
  %i.ai = getelementptr i8, ptr %.010.i, i64 8
  %.not.i = icmp eq ptr %i.ah, %1
  br i1 %.not.i, label %_ZSt11swap_rangesIPP7QCPBarsS2_ET0_T_S4_S3_.exit, label %.lr.ph.i, !llvm.loop !1938

bb.d:                                             ; preds = %bb.c
  %i.aj = sub i64 %i.c, %i.g
  %i.ak = getelementptr i8, ptr %0, i64 %i.aj     ; 4 uses
  br label %bb.e

bb.e:                                             ; preds = %.backedge, %bb.d
  %.086 = phi i64 [ %i.f, %bb.d ], [ %.086.be, %.backedge ] ; 13 uses
  %.082 = phi i64 [ %i.i, %bb.d ], [ %.082.be, %.backedge ] ; 21 uses
  %.058 = phi ptr [ %0, %bb.d ], [ %.058.be, %.backedge ] ; 28 uses
  %i.al = sub i64 %.086, %.082                    ; 10 uses
  %i.am = icmp slt i64 %.082, %i.al
  br i1 %i.am, label %bb.f, label %bb.m

bb.f:                                             ; preds = %bb.e
  %i.an = icmp eq i64 %.082, 1
  br i1 %i.an, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.ao = load ptr, ptr %.058, align 8
  %i.ap = getelementptr i8, ptr %.058, i64 8      ; 2 uses
  %.idx97 = shl i64 %.086, 3                      ; 2 uses
  %i.aq = getelementptr i8, ptr %.058, i64 %.idx97
  %gepdiff = add i64 %.idx97, -8                  ; 3 uses
  %i.ar = icmp sgt i64 %gepdiff, 8
  br i1 %i.ar, label %bb.h, label %bb.i, !prof !206

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %.058, ptr align 8 %i.ap, i64 %gepdiff, i1 false)
  br label %_ZSt4moveIPP7QCPBarsS2_ET0_T_S4_S3_.exit

bb.i:                                             ; preds = %bb.g
  %i.as = icmp eq i64 %gepdiff, 8
  br i1 %i.as, label %bb.j, label %_ZSt4moveIPP7QCPBarsS2_ET0_T_S4_S3_.exit

bb.j:                                             ; preds = %bb.i
  %i.at = load ptr, ptr %i.ap, align 8
  store ptr %i.at, ptr %.058, align 8
  br label %_ZSt4moveIPP7QCPBarsS2_ET0_T_S4_S3_.exit

_ZSt4moveIPP7QCPBarsS2_ET0_T_S4_S3_.exit:         ; preds = %bb.h, %bb.i, %bb.j
  %i.au = getelementptr i8, ptr %i.aq, i64 -8
  store ptr %i.ao, ptr %i.au, align 8
  br label %_ZSt11swap_rangesIPP7QCPBarsS2_ET0_T_S4_S3_.exit

bb.k:                                             ; preds = %bb.f
  %i.av = icmp sgt i64 %i.al, 0
  br i1 %i.av, label %.lr.ph110.preheader, label %._crit_edge111

.lr.ph110.preheader:                              ; preds = %bb.k
  %i.aw = getelementptr [8 x i8], ptr %.058, i64 %.082 ; 8 uses
  %min.iters.check = icmp ult i64 %i.al, 30
  br i1 %min.iters.check, label %.lr.ph110.preheader203, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph110.preheader
  %i.ax = xor i64 %.082, -1
  %i.ay = add i64 %.086, %i.ax                    ; 2 uses
  %mul.result = shl i64 %i.ay, 3                  ; 2 uses
  %mul.overflow = icmp ugt i64 %i.ay, 2305843009213693951
  %i.az = getelementptr i8, ptr %.058, i64 %mul.result
  %i.ba = icmp ult ptr %i.az, %.058
  %i.bb = getelementptr i8, ptr %i.aw, i64 %mul.result
  %i.bc = icmp ult ptr %i.bb, %i.aw
  %i.bd = or i1 %i.bc, %mul.overflow
  %i.be = or i1 %i.ba, %i.bd
  br i1 %i.be, label %.lr.ph110.preheader203, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.bf = shl i64 %.086, 3
  %i.bg = sub i64 %.086, %.082
  %i.bh = shl i64 %i.bg, 3
  %scevgep = getelementptr i8, ptr %.058, i64 %i.bh
  %scevgep137 = getelementptr i8, ptr %.058, i64 %i.bf
  %bound0 = icmp ult ptr %.058, %scevgep137
  %bound1 = icmp ult ptr %i.aw, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph110.preheader203, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.al, 9223372036854775804     ; 4 uses
  %i.bi = shl i64 %n.vec, 3                       ; 2 uses
  %i.bj = getelementptr i8, ptr %i.aw, i64 %i.bi
  %i.bk = getelementptr i8, ptr %.058, i64 %i.bi  ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bl = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.aw, i64 %i.bl ; 3 uses
  %next.gep138 = getelementptr i8, ptr %.058, i64 %i.bl ; 3 uses
  %i.bm = getelementptr i8, ptr %next.gep138, i64 16 ; 2 uses
  %wide.load = load <2 x ptr>, ptr %next.gep138, align 8, !alias.scope !1954, !noalias !1955
  %wide.load139 = load <2 x ptr>, ptr %i.bm, align 8, !alias.scope !1954, !noalias !1955
  %i.bn = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load140 = load <2 x ptr>, ptr %next.gep, align 8, !alias.scope !1955
  %wide.load141 = load <2 x ptr>, ptr %i.bn, align 8, !alias.scope !1955
  store <2 x ptr> %wide.load140, ptr %next.gep138, align 8, !alias.scope !1954, !noalias !1955
  store <2 x ptr> %wide.load141, ptr %i.bm, align 8, !alias.scope !1954, !noalias !1955
  store <2 x ptr> %wide.load, ptr %next.gep, align 8, !alias.scope !1955
  store <2 x ptr> %wide.load139, ptr %i.bn, align 8, !alias.scope !1955
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bo = icmp eq i64 %index.next, %n.vec
  br i1 %i.bo, label %middle.block, label %vector.body, !llvm.loop !1942

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.al, %n.vec
  br i1 %cmp.n, label %._crit_edge111, label %.lr.ph110.preheader203

.lr.ph110.preheader203:                           ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph110.preheader, %middle.block
  %.054108.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph110.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %.055107.ph = phi ptr [ %i.aw, %vector.memcheck ], [ %i.aw, %vector.scevcheck ], [ %i.aw, %.lr.ph110.preheader ], [ %i.bj, %middle.block ] ; 2 uses
  %.159106.ph = phi ptr [ %.058, %vector.memcheck ], [ %.058, %vector.scevcheck ], [ %.058, %.lr.ph110.preheader ], [ %i.bk, %middle.block ] ; 2 uses
  %i.bp = sub i64 %.086, %.082
  %xtraiter211 = and i64 %i.bp, 3                 ; 2 uses
  %lcmp.mod212.not = icmp eq i64 %xtraiter211, 0
  br i1 %lcmp.mod212.not, label %.lr.ph110.prol.loopexit, label %.lr.ph110.prol

.lr.ph110.prol:                                   ; preds = %.lr.ph110.preheader203, %.lr.ph110.prol
  %.054108.prol = phi i64 [ %i.bu, %.lr.ph110.prol ], [ %.054108.ph, %.lr.ph110.preheader203 ]
  %.055107.prol = phi ptr [ %i.bt, %.lr.ph110.prol ], [ %.055107.ph, %.lr.ph110.preheader203 ] ; 3 uses
  %.159106.prol = phi ptr [ %i.bs, %.lr.ph110.prol ], [ %.159106.ph, %.lr.ph110.preheader203 ] ; 3 uses
  %prol.iter213 = phi i64 [ %prol.iter213.next, %.lr.ph110.prol ], [ 0, %.lr.ph110.preheader203 ]
  %i.bq = load ptr, ptr %.159106.prol, align 8
  %i.br = load ptr, ptr %.055107.prol, align 8
  store ptr %i.br, ptr %.159106.prol, align 8
  store ptr %i.bq, ptr %.055107.prol, align 8
  %i.bs = getelementptr i8, ptr %.159106.prol, i64 8 ; 3 uses
  %i.bt = getelementptr i8, ptr %.055107.prol, i64 8 ; 2 uses
  %i.bu = add nuw nsw i64 %.054108.prol, 1        ; 2 uses
  %prol.iter213.next = add i64 %prol.iter213, 1   ; 2 uses
  %prol.iter213.cmp.not = icmp eq i64 %prol.iter213.next, %xtraiter211
  br i1 %prol.iter213.cmp.not, label %.lr.ph110.prol.loopexit, label %.lr.ph110.prol, !llvm.loop !1943

.lr.ph110.prol.loopexit:                          ; preds = %.lr.ph110.prol, %.lr.ph110.preheader203
  %.lcssa.unr = phi ptr [ poison, %.lr.ph110.preheader203 ], [ %i.bs, %.lr.ph110.prol ]
  %.054108.unr = phi i64 [ %.054108.ph, %.lr.ph110.preheader203 ], [ %i.bu, %.lr.ph110.prol ]
  %.055107.unr = phi ptr [ %.055107.ph, %.lr.ph110.preheader203 ], [ %i.bt, %.lr.ph110.prol ]
  %.159106.unr = phi ptr [ %.159106.ph, %.lr.ph110.preheader203 ], [ %i.bs, %.lr.ph110.prol ]
  %i.bv = sub i64 %.054108.ph, %.086
  %i.bw = add i64 %i.bv, %.082
  %i.bx = icmp ugt i64 %i.bw, -4
  br i1 %i.bx, label %._crit_edge111, label %.lr.ph110

._crit_edge111:                                   ; preds = %.lr.ph110.prol.loopexit, %.lr.ph110, %middle.block, %bb.k
  %.159.lcssa = phi ptr [ %.058, %bb.k ], [ %i.bk, %middle.block ], [ %.lcssa.unr, %.lr.ph110.prol.loopexit ], [ %i.cn, %.lr.ph110 ]
  %i.by = srem i64 %.086, %.082                   ; 2 uses
end_hunk_2
