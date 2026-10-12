Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ipopt/original/IpTSymLinearSolver?download=true
inline.NumInlined: 450
inline.NumDeleted: 129
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN5Ipopt17INVALID_WARMSTARTC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_i:.noexc.i
  store i8 0, ptr %i.g, align 1, !tbaa !56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  invoke void @_ZN5Ipopt14IpoptExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_iS8_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.a unwind label %bb.b

bb.a:                                             ; preds = %.noexc.i
  %i.h = load ptr, ptr %4, align 8, !tbaa !55     ; 2 uses
  %i.i = icmp eq ptr %i.h, %i.b
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.j = load i64, ptr %i.b, align 8, !tbaa !56
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.k) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5Ipopt17INVALID_WARMSTARTE, i64 16), ptr %0, align 8, !tbaa !15
  ret void

bb.b:                                             ; preds = %.noexc.i
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = load ptr, ptr %4, align 8, !tbaa !55     ; 2 uses
  %i.n = icmp eq ptr %i.m, %i.b
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %bb.b
  %i.o = load i64, ptr %i.b, align 8, !tbaa !56
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.p) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  resume { ptr, i32 } %i.l
}

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #7

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN5Ipopt16TSymLinearSolver10MultiSolveERKNS_9SymMatrixERSt6vectorINS_8SmartPtrIKNS_6VectorEEESaIS8_EERS4_INS5_IS6_EESaISC_EEbi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(133) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %3, i1 noundef zeroext %4, i32 noundef %5) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 70
  %i.b = load i8, ptr %i.a, align 2, !tbaa !38, !range !58, !noundef !59
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef i32 @_ZN5Ipopt16TSymLinearSolver19InitializeStructureERKNS_9SymMatrixE(ptr noundef nonnull align 8 dereferenceable(133) %0, ptr noundef nonnull align 8 dereferenceable(80) %1) ; 2 uses
  %.not.not = icmp eq i32 %i.d, 0
  br i1 %.not.not, label %bb.c, label %bb.ab

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !127
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.h = load i32, ptr %i.g, align 8, !tbaa !128  ; 2 uses
  %.not = icmp eq i32 %i.f, %i.h
  store i32 %i.h, ptr %i.e, align 4, !tbaa !127
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 97
  %i.j = load i8, ptr %i.i, align 1, !tbaa !63, !range !58, !noundef !59
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  tail call void @_ZN5Ipopt16TSymLinearSolver18GiveMatrixToSolverEbRKNS_9SymMatrixE(ptr noundef nonnull align 8 dereferenceable(133) %0, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(80) %1)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.075 = phi i1 [ true, %bb.e ], [ false, %bb.d ]
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !131
  %i.n = load ptr, ptr %2, align 8, !tbaa !132
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = lshr exact i64 %i.q, 3                   ; 3 uses
  %i.s = trunc i64 %i.r to i32                    ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 9 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !84
  %i.v = mul nsw i32 %i.u, %i.s                   ; 2 uses
  %i.w = sext i32 %i.v to i64
  %i.x = icmp slt i32 %i.v, 0
  %i.y = shl nsw i64 %i.w, 3
  %i.z = select i1 %i.x, i64 -1, i64 %i.y
  %i.aa = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.z) #17 ; 10 uses
  %i.ab = icmp sgt i32 %i.s, 0                    ; 2 uses
  br i1 %i.ab, label %.lr.ph102, label %.preheader93

.lr.ph102:                                        ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 88
  %wide.trip.count117 = and i64 %i.r, 2147483647
  br label %bb.g

.preheader93:                                     ; preds = %_ZN5Ipopt9TimedTask3EndEv.exit, %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 72
  br label %bb.n

bb.g:                                             ; preds = %.lr.ph102, %_ZN5Ipopt9TimedTask3EndEv.exit
  %indvars.iv114 = phi i64 [ 0, %.lr.ph102 ], [ %indvars.iv.next115, %_ZN5Ipopt9TimedTask3EndEv.exit ] ; 3 uses
  %i.am = load i32, ptr %i.t, align 8, !tbaa !84  ; 2 uses
  %i.an = load ptr, ptr %2, align 8, !tbaa !132
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv114
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !135
  %i.aq = trunc nuw nsw i64 %indvars.iv114 to i32 ; 5 uses
  %i.ar = mul nsw i32 %i.am, %i.aq
  %i.as = sext i32 %i.ar to i64
  %i.at = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.as
  tail call void @_ZN5Ipopt13TripletHelper20FillValuesFromVectorEiRKNS_6VectorEPd(i32 noundef %i.am, ptr noundef nonnull align 8 dereferenceable(205) %i.ap, ptr noundef nonnull %i.at)
  %i.au = load ptr, ptr %i.ac, align 8, !tbaa !48 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !15
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 56
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = tail call noundef zeroext i1 %i.ax(ptr noundef nonnull align 8 dereferenceable(40) %i.au, i32 noundef 11, i32 noundef 7)
  br i1 %i.ay, label %bb.h, label %.loopexit94

bb.h:                                             ; preds = %bb.g
  %i.az = load ptr, ptr %i.ac, align 8, !tbaa !48 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !15
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8
  tail call void (ptr, i32, i32, ptr, ...) %i.bc(ptr noundef nonnull align 8 dereferenceable(40) %i.az, i32 noundef 11, i32 noundef 7, ptr noundef nonnull @.str.8, i32 noundef %i.aq)
  %i.bd = load i32, ptr %i.t, align 8, !tbaa !84  ; 2 uses
  %i.be = icmp sgt i32 %i.bd, 0
  br i1 %i.be, label %.lr.ph, label %.loopexit94

.lr.ph:                                           ; preds = %bb.h, %.lr.ph
  %i.bf = phi i32 [ %i.bq, %.lr.ph ], [ %i.bd, %bb.h ]
  %.07395 = phi i32 [ %i.bp, %.lr.ph ], [ 0, %bb.h ] ; 3 uses
  %i.bg = load ptr, ptr %i.ac, align 8, !tbaa !48 ; 2 uses
  %i.bh = mul nuw nsw i32 %i.bf, %i.aq
  %i.bi = add nsw i32 %i.bh, %.07395
  %i.bj = sext i32 %i.bi to i64
  %i.bk = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.bj
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !85
  %i.bm = load ptr, ptr %i.bg, align 8, !tbaa !15
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bo = load ptr, ptr %i.bn, align 8
  tail call void (ptr, i32, i32, ptr, ...) %i.bo(ptr noundef nonnull align 8 dereferenceable(40) %i.bg, i32 noundef 11, i32 noundef 7, ptr noundef nonnull @.str.9, i32 noundef %i.aq, i32 noundef %.07395, double noundef %i.bl)
  %i.bp = add nuw nsw i32 %.07395, 1              ; 2 uses
  %i.bq = load i32, ptr %i.t, align 8, !tbaa !84  ; 2 uses
  %i.br = icmp slt i32 %i.bp, %i.bq
  br i1 %i.br, label %.lr.ph, label %.loopexit94, !llvm.loop !110

.loopexit94:                                      ; preds = %.lr.ph, %bb.h, %bb.g
  %i.bs = load i8, ptr %i.ad, align 8, !tbaa !62, !range !58, !noundef !59
  %i.bt = trunc nuw i8 %i.bs to i1
  br i1 %i.bt, label %bb.i, label %_ZN5Ipopt9TimedTask3EndEv.exit

bb.i:                                             ; preds = %.loopexit94
  %i.bu = load ptr, ptr %i.ae, align 8, !tbaa !46 ; 7 uses
  %.not90 = icmp eq ptr %i.bu, null
  br i1 %.not90, label %_ZN5Ipopt9TimedTask5StartEv.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 1064
  %i.bw = load i8, ptr %i.bv, align 8, !tbaa !66, !range !58, !noundef !59
  %i.bx = trunc nuw i8 %i.bw to i1
  br i1 %i.bx, label %bb.k, label %_ZN5Ipopt9TimedTask5StartEv.exit

bb.k:                                             ; preds = %bb.j
  %i.by = getelementptr inbounds nuw i8, ptr %i.bu, i64 1016
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bu, i64 1066
  store i8 0, ptr %i.bz, align 2, !tbaa !67
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bu, i64 1065
  store i8 1, ptr %i.ca, align 1, !tbaa !68
  %i.cb = tail call noundef double @_ZN5Ipopt7CpuTimeEv()
  store double %i.cb, ptr %i.by, align 8, !tbaa !69
  %i.cc = tail call noundef double @_ZN5Ipopt7SysTimeEv()
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bu, i64 1032
  store double %i.cc, ptr %i.cd, align 8, !tbaa !70
  %i.ce = tail call noundef double @_ZN5Ipopt13WallclockTimeEv()
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bu, i64 1048
  store double %i.ce, ptr %i.cf, align 8, !tbaa !71
  br label %_ZN5Ipopt9TimedTask5StartEv.exit

_ZN5Ipopt9TimedTask5StartEv.exit:                 ; preds = %bb.k, %bb.j, %bb.i
  %i.cg = load i32, ptr %i.t, align 8, !tbaa !84  ; 4 uses
  %i.ch = icmp sgt i32 %i.cg, 0
  br i1 %i.ch, label %.lr.ph97, label %._crit_edge

.lr.ph97:                                         ; preds = %_ZN5Ipopt9TimedTask5StartEv.exit
  %i.ci = load ptr, ptr %i.af, align 8, !tbaa !41 ; 8 uses
  %i.cj = mul nuw nsw i32 %i.cg, %i.aq
  %6 = zext nneg i32 %i.cj to i64                 ; 2 uses
  %wide.trip.count = zext nneg i32 %i.cg to i64   ; 7 uses
  %invariant.gep = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %6 ; 7 uses
  %min.iters.check = icmp ult i32 %i.cg, 6
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph97
  %i.ck = shl nuw nsw i64 %wide.trip.count, 3
  %i.cl = add nuw nsw i64 %wide.trip.count, %6
  %i.cm = shl nuw nsw i64 %i.cl, 3
  %scevgep = getelementptr i8, ptr %i.aa, i64 %i.cm
  %scevgep153 = getelementptr i8, ptr %i.ci, i64 %i.ck
  %bound0 = icmp ult ptr %invariant.gep, %scevgep153
  %bound1 = icmp ult ptr %i.ci, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %index ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  %wide.load = load <2 x double>, ptr %i.cn, align 8, !tbaa !85, !alias.scope !136
  %wide.load154 = load <2 x double>, ptr %i.co, align 8, !tbaa !85, !alias.scope !136
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %index ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 16 ; 2 uses
  %wide.load155 = load <2 x double>, ptr %i.cp, align 8, !tbaa !85, !alias.scope !137, !noalias !136
  %wide.load156 = load <2 x double>, ptr %i.cq, align 8, !tbaa !85, !alias.scope !137, !noalias !136
  %i.cr = fmul <2 x double> %wide.load, %wide.load155
  %i.cs = fmul <2 x double> %wide.load154, %wide.load156
  store <2 x double> %i.cr, ptr %i.cp, align 8, !tbaa !85, !alias.scope !137, !noalias !136
  store <2 x double> %i.cs, ptr %i.cq, align 8, !tbaa !85, !alias.scope !137, !noalias !136
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ct = icmp eq i64 %index.next, %n.vec
  br i1 %i.ct, label %middle.block, label %vector.body, !llvm.loop !114

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph97, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph97 ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %indvars.iv.prol
  %i.cv = load double, ptr %i.cu, align 8, !tbaa !85
  %gep.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv.prol ; 2 uses
  %i.cw = load double, ptr %gep.prol, align 8, !tbaa !85
  %i.cx = fmul double %i.cv, %i.cw
  store double %i.cx, ptr %gep.prol, align 8, !tbaa !85
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !115

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.cy = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.cz = icmp ugt i64 %i.cy, -4
  br i1 %i.cz, label %._crit_edge, label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %_ZN5Ipopt9TimedTask5StartEv.exit
  %i.da = load ptr, ptr %i.ae, align 8, !tbaa !46 ; 10 uses
  %.not91 = icmp eq ptr %i.da, null
  br i1 %.not91, label %_ZN5Ipopt9TimedTask3EndEv.exit, label %bb.l

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %indvars.iv
  %i.dc = load double, ptr %i.db, align 8, !tbaa !85
  %gep = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv ; 2 uses
  %i.dd = load double, ptr %gep, align 8, !tbaa !85
  %i.de = fmul double %i.dc, %i.dd
  store double %i.de, ptr %gep, align 8, !tbaa !85
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %indvars.iv.next
  %i.dg = load double, ptr %i.df, align 8, !tbaa !85
  %gep.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next ; 2 uses
  %i.dh = load double, ptr %gep.1, align 8, !tbaa !85
  %i.di = fmul double %i.dg, %i.dh
  store double %i.di, ptr %gep.1, align 8, !tbaa !85
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %indvars.iv.next.1
  %i.dk = load double, ptr %i.dj, align 8, !tbaa !85
  %gep.2 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next.1 ; 2 uses
  %i.dl = load double, ptr %gep.2, align 8, !tbaa !85
  %i.dm = fmul double %i.dk, %i.dl
  store double %i.dm, ptr %gep.2, align 8, !tbaa !85
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %indvars.iv.next.2
  %i.do = load double, ptr %i.dn, align 8, !tbaa !85
  %gep.3 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next.2 ; 2 uses
  %i.dp = load double, ptr %gep.3, align 8, !tbaa !85
  %i.dq = fmul double %i.do, %i.dp
  store double %i.dq, ptr %gep.3, align 8, !tbaa !85
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge, label %scalar.ph, !llvm.loop !116

bb.l:                                             ; preds = %._crit_edge
  %i.dr = getelementptr inbounds nuw i8, ptr %i.da, i64 1064
  %i.ds = load i8, ptr %i.dr, align 8, !tbaa !66, !range !58, !noundef !59
  %i.dt = trunc nuw i8 %i.ds to i1
  br i1 %i.dt, label %bb.m, label %_ZN5Ipopt9TimedTask3EndEv.exit

bb.m:                                             ; preds = %bb.l
  %i.du = getelementptr inbounds nuw i8, ptr %i.da, i64 1016
  %i.dv = getelementptr inbounds nuw i8, ptr %i.da, i64 1066
  store i8 1, ptr %i.dv, align 2, !tbaa !67
  %i.dw = getelementptr inbounds nuw i8, ptr %i.da, i64 1065
  store i8 0, ptr %i.dw, align 1, !tbaa !68
  %i.dx = tail call noundef double @_ZN5Ipopt7CpuTimeEv()
  %i.dy = load double, ptr %i.du, align 8, !tbaa !69
  %i.dz = fsub double %i.dx, %i.dy
  %i.ea = getelementptr inbounds nuw i8, ptr %i.da, i64 1024 ; 2 uses
  %i.eb = load double, ptr %i.ea, align 8, !tbaa !72
  %i.ec = fadd double %i.eb, %i.dz
  store double %i.ec, ptr %i.ea, align 8, !tbaa !72
  %i.ed = tail call noundef double @_ZN5Ipopt7SysTimeEv()
  %i.ee = getelementptr inbounds nuw i8, ptr %i.da, i64 1032
  %i.ef = load double, ptr %i.ee, align 8, !tbaa !70
  %i.eg = fsub double %i.ed, %i.ef
  %i.eh = getelementptr inbounds nuw i8, ptr %i.da, i64 1040 ; 2 uses
  %i.ei = load double, ptr %i.eh, align 8, !tbaa !73
  %i.ej = fadd double %i.ei, %i.eg
  store double %i.ej, ptr %i.eh, align 8, !tbaa !73
  %i.ek = tail call noundef double @_ZN5Ipopt13WallclockTimeEv()
  %i.el = getelementptr inbounds nuw i8, ptr %i.da, i64 1048
  %i.em = load double, ptr %i.el, align 8, !tbaa !71
  %i.en = fsub double %i.ek, %i.em
  %i.eo = getelementptr inbounds nuw i8, ptr %i.da, i64 1056 ; 2 uses
  %i.ep = load double, ptr %i.eo, align 8, !tbaa !74
  %i.eq = fadd double %i.ep, %i.en
  store double %i.eq, ptr %i.eo, align 8, !tbaa !74
  br label %_ZN5Ipopt9TimedTask3EndEv.exit

_ZN5Ipopt9TimedTask3EndEv.exit:                   ; preds = %bb.m, %bb.l, %.loopexit94, %._crit_edge
  %indvars.iv.next115 = add nuw nsw i64 %indvars.iv114, 1 ; 2 uses
  %exitcond118.not = icmp eq i64 %indvars.iv.next115, %wide.trip.count117
  br i1 %exitcond118.not, label %.preheader93, label %bb.g, !llvm.loop !117

bb.n:                                             ; preds = %bb.t, %.preheader93
  %i.er = load i32, ptr %i.ag, align 8, !tbaa !60
  %i.es = icmp eq i32 %i.er, 0
  br i1 %i.es, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.et = load ptr, ptr %i.aj, align 8, !tbaa !42
  %i.eu = load ptr, ptr %i.ak, align 8, !tbaa !43
  br label %_ZN5Ipopt9TimedTask3EndEv.exit83

bb.p:                                             ; preds = %bb.n
  %i.ev = load ptr, ptr %i.ah, align 8, !tbaa !46 ; 8 uses
  %.not86 = icmp eq ptr %i.ev, null
  br i1 %.not86, label %_ZN5Ipopt9TimedTask5StartEv.exit82.thread, label %bb.q

_ZN5Ipopt9TimedTask5StartEv.exit82.thread:        ; preds = %bb.p
  %i.ew = load ptr, ptr %i.ai, align 8, !tbaa !44 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 24
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !91
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ew, i64 32
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !92
  br label %_ZN5Ipopt9TimedTask3EndEv.exit83

bb.q:                                             ; preds = %bb.p
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ev, i64 1288
  %i.fc = load i8, ptr %i.fb, align 8, !tbaa !66, !range !58, !noundef !59
  %i.fd = trunc nuw i8 %i.fc to i1
  br i1 %i.fd, label %_ZN5Ipopt9TimedTask5StartEv.exit82, label %_ZN5Ipopt9TimedTask5StartEv.exit82.thread143

_ZN5Ipopt9TimedTask5StartEv.exit82.thread143:     ; preds = %bb.q
  %i.fe = load ptr, ptr %i.ai, align 8, !tbaa !44 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 24
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !91
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fe, i64 32
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !92
  br label %bb.r

_ZN5Ipopt9TimedTask5StartEv.exit82:               ; preds = %bb.q
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ev, i64 1240
  %i.fk = getelementptr inbounds nuw i8, ptr %i.ev, i64 1290
  store i8 0, ptr %i.fk, align 2, !tbaa !67
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ev, i64 1289
  store i8 1, ptr %i.fl, align 1, !tbaa !68
  %i.fm = tail call noundef double @_ZN5Ipopt7CpuTimeEv()
  store double %i.fm, ptr %i.fj, align 8, !tbaa !69
  %i.fn = tail call noundef double @_ZN5Ipopt7SysTimeEv()
  %i.fo = getelementptr inbounds nuw i8, ptr %i.ev, i64 1256
  store double %i.fn, ptr %i.fo, align 8, !tbaa !70
  %i.fp = tail call noundef double @_ZN5Ipopt13WallclockTimeEv()
  %i.fq = getelementptr inbounds nuw i8, ptr %i.ev, i64 1272
  store double %i.fp, ptr %i.fq, align 8, !tbaa !71
  %.pr.pre = load ptr, ptr %i.ah, align 8, !tbaa !46 ; 2 uses
  %i.fr = load ptr, ptr %i.ai, align 8, !tbaa !44 ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 24
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !91 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fr, i64 32
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !92 ; 2 uses
  %.not87 = icmp eq ptr %.pr.pre, null
  br i1 %.not87, label %_ZN5Ipopt9TimedTask3EndEv.exit83, label %bb.r

bb.r:                                             ; preds = %_ZN5Ipopt9TimedTask5StartEv.exit82.thread143, %_ZN5Ipopt9TimedTask5StartEv.exit82
  %i.fw = phi ptr [ %i.fi, %_ZN5Ipopt9TimedTask5StartEv.exit82.thread143 ], [ %i.fv, %_ZN5Ipopt9TimedTask5StartEv.exit82 ] ; 2 uses
  %i.fx = phi ptr [ %i.fg, %_ZN5Ipopt9TimedTask5StartEv.exit82.thread143 ], [ %i.ft, %_ZN5Ipopt9TimedTask5StartEv.exit82 ] ; 2 uses
  %.pr146 = phi ptr [ %i.ev, %_ZN5Ipopt9TimedTask5StartEv.exit82.thread143 ], [ %.pr.pre, %_ZN5Ipopt9TimedTask5StartEv.exit82 ] ; 9 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %.pr146, i64 1288
  %i.fz = load i8, ptr %i.fy, align 8, !tbaa !66, !range !58, !noundef !59
  %i.ga = trunc nuw i8 %i.fz to i1
  br i1 %i.ga, label %bb.s, label %_ZN5Ipopt9TimedTask3EndEv.exit83

bb.s:                                             ; preds = %bb.r
  %i.gb = getelementptr inbounds nuw i8, ptr %.pr146, i64 1240
  %i.gc = getelementptr inbounds nuw i8, ptr %.pr146, i64 1290
  store i8 1, ptr %i.gc, align 2, !tbaa !67
  %i.gd = getelementptr inbounds nuw i8, ptr %.pr146, i64 1289
  store i8 0, ptr %i.gd, align 1, !tbaa !68
  %i.ge = tail call noundef double @_ZN5Ipopt7CpuTimeEv()
  %i.gf = load double, ptr %i.gb, align 8, !tbaa !69
  %i.gg = fsub double %i.ge, %i.gf
  %i.gh = getelementptr inbounds nuw i8, ptr %.pr146, i64 1248 ; 2 uses
  %i.gi = load double, ptr %i.gh, align 8, !tbaa !72
  %i.gj = fadd double %i.gi, %i.gg
  store double %i.gj, ptr %i.gh, align 8, !tbaa !72
  %i.gk = tail call noundef double @_ZN5Ipopt7SysTimeEv()
  %i.gl = getelementptr inbounds nuw i8, ptr %.pr146, i64 1256
  %i.gm = load double, ptr %i.gl, align 8, !tbaa !70
  %i.gn = fsub double %i.gk, %i.gm
  %i.go = getelementptr inbounds nuw i8, ptr %.pr146, i64 1264 ; 2 uses
  %i.gp = load double, ptr %i.go, align 8, !tbaa !73
  %i.gq = fadd double %i.gp, %i.gn
  store double %i.gq, ptr %i.go, align 8, !tbaa !73
  %i.gr = tail call noundef double @_ZN5Ipopt13WallclockTimeEv()
  %i.gs = getelementptr inbounds nuw i8, ptr %.pr146, i64 1272
  %i.gt = load double, ptr %i.gs, align 8, !tbaa !71
  %i.gu = fsub double %i.gr, %i.gt
  %i.gv = getelementptr inbounds nuw i8, ptr %.pr146, i64 1280 ; 2 uses
  %i.gw = load double, ptr %i.gv, align 8, !tbaa !74
  %i.gx = fadd double %i.gw, %i.gu
  store double %i.gx, ptr %i.gv, align 8, !tbaa !74
  br label %_ZN5Ipopt9TimedTask3EndEv.exit83

_ZN5Ipopt9TimedTask3EndEv.exit83:                 ; preds = %bb.s, %bb.r, %_ZN5Ipopt9TimedTask5StartEv.exit82.thread, %_ZN5Ipopt9TimedTask5StartEv.exit82, %bb.o
  %.069 = phi ptr [ %i.et, %bb.o ], [ %i.ey, %_ZN5Ipopt9TimedTask5StartEv.exit82.thread ], [ %i.ft, %_ZN5Ipopt9TimedTask5StartEv.exit82 ], [ %i.fx, %bb.r ], [ %i.fx, %bb.s ]
  %.068 = phi ptr [ %i.eu, %bb.o ], [ %i.fa, %_ZN5Ipopt9TimedTask5StartEv.exit82.thread ], [ %i.fv, %_ZN5Ipopt9TimedTask5StartEv.exit82 ], [ %i.fw, %bb.r ], [ %i.fw, %bb.s ]
  %i.gy = load ptr, ptr %i.al, align 8, !tbaa !39 ; 2 uses
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !15
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 40
  %i.hb = load ptr, ptr %i.ha, align 8
  %i.hc = tail call noundef i32 %i.hb(ptr noundef nonnull align 8 dereferenceable(49) %i.gy, i1 noundef zeroext %.075, ptr noundef %.069, ptr noundef %.068, i32 noundef %i.s, ptr noundef nonnull %i.aa, i1 noundef zeroext %4, i32 noundef %5) ; 2 uses
  switch i32 %i.hc, label %.loopexit92 [
    i32 3, label %bb.t
    i32 0, label %.preheader
  ]

bb.t:                                             ; preds = %_ZN5Ipopt9TimedTask3EndEv.exit83
  tail call void @_ZN5Ipopt16TSymLinearSolver18GiveMatrixToSolverEbRKNS_9SymMatrixE(ptr noundef nonnull align 8 dereferenceable(133) %0, i1 noundef zeroext false, ptr noundef nonnull align 8 dereferenceable(80) %1)
  br label %bb.n, !llvm.loop !118

.preheader:                                       ; preds = %_ZN5Ipopt9TimedTask3EndEv.exit83
  br i1 %i.ab, label %.lr.ph110, label %.loopexit92

.lr.ph110:                                        ; preds = %.preheader
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %wide.trip.count127 = and i64 %i.r, 2147483647
  br label %bb.u

bb.u:                                             ; preds = %.lr.ph110, %.loopexit
  %indvars.iv124 = phi i64 [ 0, %.lr.ph110 ], [ %indvars.iv.next125, %.loopexit ] ; 6 uses
  %i.hg = shl i64 %indvars.iv124, 3
  %i.hh = add i64 %i.hg, 8
  %i.hi = load i8, ptr %i.hd, align 8, !tbaa !62, !range !58, !noundef !59
  %i.hj = trunc nuw i8 %i.hi to i1
  br i1 %i.hj, label %bb.v, label %_ZN5Ipopt9TimedTask3EndEv.exit85

bb.v:                                             ; preds = %bb.u
  %i.hk = load ptr, ptr %i.ah, align 8, !tbaa !46 ; 7 uses
  %.not88 = icmp eq ptr %i.hk, null
  br i1 %.not88, label %_ZN5Ipopt9TimedTask5StartEv.exit84, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 1064
  %i.hm = load i8, ptr %i.hl, align 8, !tbaa !66, !range !58, !noundef !59
  %i.hn = trunc nuw i8 %i.hm to i1
  br i1 %i.hn, label %bb.x, label %_ZN5Ipopt9TimedTask5StartEv.exit84

bb.x:                                             ; preds = %bb.w
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hk, i64 1016
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hk, i64 1066
  store i8 0, ptr %i.hp, align 2, !tbaa !67
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hk, i64 1065
end_hunk_0
