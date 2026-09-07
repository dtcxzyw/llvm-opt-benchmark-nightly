Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ipopt/original/IpMa77SolverInterface?download=true
inline.NumInlined: 481
inline.NumDeleted: 62
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN5Ipopt19Ma77SolverInterface14InitializeImplERKNS_11OptionsListERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
bb.bw:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit370
  %i.wh = landingpad { ptr, i32 }
          cleanup
  %i.wi = load ptr, ptr %31, align 8, !tbaa !43   ; 2 uses
  %i.wj = icmp eq ptr %i.wi, %i.sh
  br i1 %i.wj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit424, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i422

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i422: ; preds = %bb.bw
  %i.wk = load i64, ptr %i.sh, align 8, !tbaa !44
  %i.wl = add i64 %i.wk, 1
  call void @_ZdlPvm(ptr noundef %i.wi, i64 noundef %i.wl) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit424

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit424: ; preds = %bb.bw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i422
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #14
  br label %bb.bz

bb.bx:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit377
  %i.wm = landingpad { ptr, i32 }
          cleanup
  %i.wn = load ptr, ptr %32, align 8, !tbaa !43   ; 2 uses
  %i.wo = icmp eq ptr %i.wn, %i.st
  br i1 %i.wo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit427, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i425

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i425: ; preds = %bb.bx
  %i.wp = load i64, ptr %i.st, align 8, !tbaa !44
  %i.wq = add i64 %i.wp, 1
  call void @_ZdlPvm(ptr noundef %i.wn, i64 noundef %i.wq) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit427

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit427: ; preds = %bb.bx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i425
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #14
  br label %bb.bz

bb.by:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit384
  %i.wr = landingpad { ptr, i32 }
          cleanup
  %i.ws = load ptr, ptr %34, align 8, !tbaa !43   ; 2 uses
  %i.wt = icmp eq ptr %i.ws, %i.th
  br i1 %i.wt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit430, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i428

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i428: ; preds = %bb.by
  %i.wu = load i64, ptr %i.th, align 8, !tbaa !44
  %i.wv = add i64 %i.wu, 1
  call void @_ZdlPvm(ptr noundef %i.ws, i64 noundef %i.wv) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit430

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit430: ; preds = %bb.by, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i428
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #14
  %i.ww = load ptr, ptr %33, align 8, !tbaa !43   ; 2 uses
  %i.wx = icmp eq ptr %i.ww, %i.tf
  br i1 %i.wx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit436, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i434

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread467: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit391, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread467
  %.sink = phi i32 [ 0, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread467 ], [ 1, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ]
  %i.wy = getelementptr inbounds nuw i8, ptr %0, i64 376
  store i32 %.sink, ptr %i.wy, align 8, !tbaa !56
  %i.wz = icmp eq ptr %.pre468.pre, %i.tf
  br i1 %i.wz, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i432, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i431

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i432: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.xa = icmp ult i64 %i.ts, 16
  call void @llvm.assume(i1 %i.xa)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit433

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i431: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.xb = load i64, ptr %i.tf, align 8, !tbaa !44
  %i.xc = add i64 %i.xb, 1
  call void @_ZdlPvm(ptr noundef %.pre468.pre, i64 noundef %i.xc) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit433

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit433: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i432, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i431
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #14
  ret i1 true

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i434: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit430
  %i.xd = load i64, ptr %i.tf, align 8, !tbaa !44
  %i.xe = add i64 %i.xd, 1
  call void @_ZdlPvm(ptr noundef %i.ww, i64 noundef %i.xe) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit436

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit436: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit430, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i434
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #14
  br label %bb.bz

bb.bz:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit436, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit427, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit424, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit421, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit418, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit415, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit412, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit409, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit406, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit403, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit400, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit397, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit394
  %.pn124.pn = phi { ptr, i32 } [ %i.wr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit436 ], [ %i.wm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit427 ], [ %i.wh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit424 ], [ %i.wc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit421 ], [ %i.vx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit418 ], [ %i.vs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit415 ], [ %i.vn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit412 ], [ %i.vi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit409 ], [ %.pn106, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit406 ], [ %.pn104, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit403 ], [ %.pn102, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit400 ], [ %.pn100, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit397 ], [ %.pn98, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit394 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #14
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit300, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit297, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit294, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit291, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit288, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit285, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit282, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit279, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit276, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit273, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit270, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit267, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit264, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit261, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit258, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit255, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit252, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit249
  %.pn124.pn.pn = phi { ptr, i32 } [ %.pn124.pn, %bb.bz ], [ %i.mk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit300 ], [ %.pn94, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit297 ], [ %i.lz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit294 ], [ %i.lu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit291 ], [ %i.lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit288 ], [ %.pn86, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit285 ], [ %.pn84, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit282 ], [ %i.ky, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit279 ], [ %i.kt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit276 ], [ %i.ko, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit273 ], [ %.pn76, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit270 ], [ %i.kd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit267 ], [ %i.jy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit264 ], [ %.pn70, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit261 ], [ %.pn68, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit258 ], [ %i.jh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit255 ], [ %.pn64, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit252 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit249 ]
  resume { ptr, i32 } %.pn124.pn.pn
}

declare noundef ptr @_ZN5Ipopt13LibraryLoader10loadSymbolERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define noundef range(i32 0, 5) i32 @_ZN5Ipopt19Ma77SolverInterface19InitializeStructureEiiPKiS2_(ptr noundef nonnull align 8 dereferenceable(536) initializes((52, 56)) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr noundef %4) unnamed_addr #5 align 2 {
bb.a:
  %5 = alloca %struct.ma77_info_d, align 8        ; 6 uses
  %6 = alloca %struct.mc68_control_i, align 4     ; 7 uses
  %7 = alloca %struct.mc68_info_i, align 8        ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  store i32 %1, ptr %i.a, align 4, !tbaa !57
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !35   ; 7 uses
  %.not72 = icmp eq ptr %i.c, null
  br i1 %.not72, label %_ZN5Ipopt9TimedTask5StartEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 1120
  %i.e = load i8, ptr %i.d, align 8, !tbaa !59, !range !60, !noundef !61
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.c, label %_ZN5Ipopt9TimedTask5StartEv.exit

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 1072
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 1122
  store i8 0, ptr %i.h, align 2, !tbaa !62
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 1121
  store i8 1, ptr %i.i, align 1, !tbaa !63
  %i.j = tail call noundef double @_ZN5Ipopt7CpuTimeEv()
  store double %i.j, ptr %i.g, align 8, !tbaa !64
  %i.k = tail call noundef double @_ZN5Ipopt7SysTimeEv()
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 1088
  store double %i.k, ptr %i.l, align 8, !tbaa !65
  %i.m = tail call noundef double @_ZN5Ipopt13WallclockTimeEv()
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 1104
  store double %i.m, ptr %i.n, align 8, !tbaa !66
  br label %_ZN5Ipopt9TimedTask5StartEv.exit

_ZN5Ipopt9TimedTask5StartEv.exit:                 ; preds = %bb.c, %bb.b, %bb.a
  %i.o = add nsw i32 %1, 1
  %i.p = zext nneg i32 %i.o to i64
  %i.q = icmp slt i32 %1, -1
  %i.r = shl nuw nsw i64 %i.p, 2
  %i.s = select i1 %i.q, i64 -1, i64 %i.r
  %i.t = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.s) #16 ; 7 uses
  %i.u = sext i32 %1 to i64                       ; 3 uses
  %i.v = getelementptr inbounds [4 x i8], ptr %3, i64 %i.u
  %i.w = load i32, ptr %i.v, align 4, !tbaa !55   ; 2 uses
  %i.x = add nsw i32 %i.w, -1
  %i.y = sext i32 %i.x to i64
  %i.z = icmp slt i32 %i.w, 1
  %i.aa = shl nsw i64 %i.y, 2
  %i.ab = select i1 %i.z, i64 -1, i64 %i.aa
  %i.ac = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ab) #16 ; 8 uses
  %i.ad = icmp sgt i32 %1, 0
  br i1 %i.ad, label %.lr.ph79.preheader, label %._crit_edge

.lr.ph79.preheader:                               ; preds = %_ZN5Ipopt9TimedTask5StartEv.exit
  %wide.trip.count = zext nneg i32 %1 to i64
  %.pre = load i32, ptr %3, align 4, !tbaa !55
  br label %.lr.ph79

.loopexit:                                        ; preds = %.lr.ph.prol.loopexit, %bb.g, %.lr.ph79
  %.1.lcssa = phi i32 [ %.06477, %.lr.ph79 ], [ %.2.lcssa.unr, %.lr.ph.prol.loopexit ], [ %.2.1, %bb.g ] ; 2 uses
  %exitcond85.not = icmp eq i64 %indvars.iv.next83, %wide.trip.count
  br i1 %exitcond85.not, label %._crit_edge.loopexit, label %.lr.ph79, !llvm.loop !99

._crit_edge.loopexit:                             ; preds = %.loopexit
  %i.ae = add nsw i32 %.1.lcssa, 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZN5Ipopt9TimedTask5StartEv.exit
  %.064.lcssa = phi i32 [ 1, %_ZN5Ipopt9TimedTask5StartEv.exit ], [ %i.ae, %._crit_edge.loopexit ]
  %i.af = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.u
  store i32 %.064.lcssa, ptr %i.af, align 4, !tbaa !55
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !53
  call void %i.ah(ptr noundef nonnull %6)
  store i32 1, ptr %6, align 4, !tbaa !103
  %i.ai = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 1, ptr %i.ai, align 4, !tbaa !104
  %i.aj = icmp slt i32 %1, 0
  %i.ak = shl nsw i64 %i.u, 2
  %i.al = select i1 %i.aj, i64 -1, i64 %i.ak
  %i.am = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.al) #16 ; 8 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 3 uses
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !56 ; 2 uses
  %i.ap = icmp eq i32 %i.ao, 1
  br i1 %i.ap, label %bb.h, label %bb.k

.lr.ph79:                                         ; preds = %.lr.ph79.preheader, %.loopexit
  %i.aq = phi i32 [ %.pre, %.lr.ph79.preheader ], [ %i.au, %.loopexit ] ; 4 uses
  %indvars.iv82 = phi i64 [ 0, %.lr.ph79.preheader ], [ %indvars.iv.next83, %.loopexit ] ; 5 uses
  %.06477 = phi i32 [ 0, %.lr.ph79.preheader ], [ %.1.lcssa, %.loopexit ] ; 6 uses
  %i.ar = add nsw i32 %.06477, 1
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv82
  store i32 %i.ar, ptr %i.as, align 4, !tbaa !55
  %indvars.iv.next83 = add nuw nsw i64 %indvars.iv82, 1 ; 3 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next83
  %i.au = load i32, ptr %i.at, align 4, !tbaa !55 ; 5 uses
  %i.av = add i32 %i.au, -1
  %i.aw = icmp slt i32 %i.aq, %i.au
  br i1 %i.aw, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %.lr.ph79
  %i.ax = add i32 %i.aq, -1
  %i.ay = sext i32 %i.ax to i64                   ; 3 uses
  %i.az = sub i32 %i.au, %i.aq
  %.neg = add i32 %i.aq, 1
  %xtraiter = and i32 %i.az, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.ba = getelementptr inbounds [4 x i8], ptr %4, i64 %i.ay
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !55 ; 2 uses
  %i.bc = sext i32 %i.bb to i64
  %.not71.not.prol = icmp slt i64 %indvars.iv82, %i.bc
  br i1 %.not71.not.prol, label %bb.d, label %.lr.ph.prol.loopexit.unr-lcssa

bb.d:                                             ; preds = %.lr.ph.prol
  %i.bd = add nsw i32 %.06477, 1
  %i.be = sext i32 %.06477 to i64
  %i.bf = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %i.be
  store i32 %i.bb, ptr %i.bf, align 4, !tbaa !55
  br label %.lr.ph.prol.loopexit.unr-lcssa

.lr.ph.prol.loopexit.unr-lcssa:                   ; preds = %bb.d, %.lr.ph.prol
  %.2.prol = phi i32 [ %i.bd, %bb.d ], [ %.06477, %.lr.ph.prol ] ; 2 uses
  %indvars.iv.next.prol = add nsw i64 %i.ay, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol.loopexit.unr-lcssa, %.lr.ph.preheader
  %.2.lcssa.unr = phi i32 [ poison, %.lr.ph.preheader ], [ %.2.prol, %.lr.ph.prol.loopexit.unr-lcssa ]
  %indvars.iv.unr = phi i64 [ %i.ay, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol.loopexit.unr-lcssa ]
  %.174.unr = phi i32 [ %.06477, %.lr.ph.preheader ], [ %.2.prol, %.lr.ph.prol.loopexit.unr-lcssa ]
  %i.bg = icmp eq i32 %i.au, %.neg
  br i1 %i.bg, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %bb.g
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %bb.g ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %.174 = phi i32 [ %.2.1, %bb.g ], [ %.174.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %i.bh = getelementptr inbounds [4 x i8], ptr %4, i64 %indvars.iv
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !55 ; 2 uses
  %i.bj = sext i32 %i.bi to i64
  %.not71.not = icmp slt i64 %indvars.iv82, %i.bj
  br i1 %.not71.not, label %bb.e, label %.lr.ph.1

bb.e:                                             ; preds = %.lr.ph
  %i.bk = add nsw i32 %.174, 1
  %i.bl = sext i32 %.174 to i64
  %i.bm = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %i.bl
  store i32 %i.bi, ptr %i.bm, align 4, !tbaa !55
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph, %bb.e
  %.2 = phi i32 [ %i.bk, %bb.e ], [ %.174, %.lr.ph ] ; 3 uses
  %i.bn = getelementptr [4 x i8], ptr %4, i64 %indvars.iv
  %i.bo = getelementptr i8, ptr %i.bn, i64 4
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !55 ; 2 uses
  %i.bq = sext i32 %i.bp to i64
  %.not71.not.1 = icmp slt i64 %indvars.iv82, %i.bq
  br i1 %.not71.not.1, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph.1
  %i.br = add nsw i32 %.2, 1
  %i.bs = sext i32 %.2 to i64
  %i.bt = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %i.bs
  store i32 %i.bp, ptr %i.bt, align 4, !tbaa !55
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph.1
  %.2.1 = phi i32 [ %i.br, %bb.f ], [ %.2, %.lr.ph.1 ] ; 2 uses
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, 2 ; 2 uses
  %lftr.wideiv.1 = trunc i64 %indvars.iv.next.1 to i32
  %exitcond.not.1 = icmp eq i32 %i.av, %lftr.wideiv.1
  br i1 %exitcond.not.1, label %.loopexit, label %.lr.ph, !llvm.loop !100

bb.h:                                             ; preds = %._crit_edge
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !54
  call void %i.bv(i32 noundef 3, i32 noundef %1, ptr noundef nonnull %i.t, ptr noundef nonnull %i.ac, ptr noundef nonnull %i.am, ptr noundef nonnull %6, ptr noundef nonnull %7)
  %i.bw = load i32, ptr %7, align 8, !tbaa !106   ; 2 uses
  %i.bx = icmp eq i32 %i.bw, -5
  br i1 %i.bx, label %.thread, label %bb.i

.thread:                                          ; preds = %bb.h
  store i32 0, ptr %i.an, align 8, !tbaa !56
  br label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.by = icmp slt i32 %i.bw, 0
  br i1 %i.by, label %bb.j, label %thread-pre-split

bb.j:                                             ; preds = %bb.i
  call void @_ZdaPv(ptr noundef nonnull %i.t) #13
  call void @_ZdaPv(ptr noundef nonnull %i.ac) #13
  call void @_ZdaPv(ptr noundef nonnull %i.am) #13
  br label %bb.v

thread-pre-split:                                 ; preds = %bb.i
  %.pr = load i32, ptr %i.an, align 8, !tbaa !56
  br label %bb.k

bb.k:                                             ; preds = %thread-pre-split, %._crit_edge
  %i.bz = phi i32 [ %.pr, %thread-pre-split ], [ %i.ao, %._crit_edge ]
  %i.ca = icmp eq i32 %i.bz, 0
  br i1 %i.ca, label %bb.l, label %bb.n

bb.l:                                             ; preds = %.thread, %bb.k
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !54
  call void %i.cc(i32 noundef 1, i32 noundef %1, ptr noundef nonnull %i.t, ptr noundef nonnull %i.ac, ptr noundef nonnull %i.am, ptr noundef nonnull %6, ptr noundef nonnull %7)
  %i.cd = load i32, ptr %7, align 8, !tbaa !106
  %i.ce = icmp slt i32 %i.cd, 0
  br i1 %i.ce, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call void @_ZdaPv(ptr noundef nonnull %i.t) #13
  call void @_ZdaPv(ptr noundef nonnull %i.ac) #13
  call void @_ZdaPv(ptr noundef nonnull %i.am) #13
  br label %bb.v

bb.n:                                             ; preds = %bb.k, %bb.l
  call void @_ZdaPv(ptr noundef nonnull %i.t) #13
  call void @_ZdaPv(ptr noundef nonnull %i.ac) #13
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !47
  %i.ch = load i32, ptr %i.a, align 4, !tbaa !57
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  call void %i.cg(i32 noundef %i.ch, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.58, ptr noundef nonnull %i.ci, ptr noundef nonnull %i.cj, ptr noundef nonnull %5)
  %i.ck = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 3 uses
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !69
  %i.cm = icmp slt i32 %i.cl, 0
  br i1 %i.cm, label %bb.o, label %.preheader

.preheader:                                       ; preds = %bb.n
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 416
  %smax = call i32 @llvm.smax.i32(i32 %1, i32 0)
  %wide.trip.count89 = zext nneg i32 %smax to i64
  %exitcond90.not96 = icmp slt i32 %1, 1
  br i1 %exitcond90.not96, label %.critedge, label %.lr.ph98

bb.o:                                             ; preds = %bb.n
  call void @_ZdaPv(ptr noundef nonnull %i.am) #13
  br label %bb.v

bb.p:                                             ; preds = %.lr.ph98
  %exitcond90.not = icmp eq i64 %indvars.iv.next87, %wide.trip.count89
  br i1 %exitcond90.not, label %.critedge, label %.lr.ph98, !llvm.loop !101

.lr.ph98:                                         ; preds = %.preheader, %bb.p
  %indvars.iv8697 = phi i64 [ %indvars.iv.next87, %bb.p ], [ 0, %.preheader ] ; 2 uses
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !48
  %indvars.iv.next87 = add nuw nsw i64 %indvars.iv8697, 1 ; 4 uses
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next87
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !55
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv8697
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !55 ; 2 uses
  %i.ct = sub nsw i32 %i.cq, %i.cs
  %i.cu = sext i32 %i.cs to i64
  %i.cv = getelementptr [4 x i8], ptr %4, i64 %i.cu
  %i.cw = getelementptr i8, ptr %i.cv, i64 -4
  %i.cx = trunc nuw i64 %indvars.iv.next87 to i32
  call void %i.co(i32 noundef %i.cx, i32 noundef %i.ct, ptr noundef %i.cw, ptr noundef nonnull %i.ci, ptr noundef nonnull %i.cj, ptr noundef nonnull %5)
  %i.cy = load i32, ptr %i.ck, align 4, !tbaa !69
  %i.cz = icmp slt i32 %i.cy, 0
  br i1 %i.cz, label %bb.q, label %bb.p, !llvm.loop !101

bb.q:                                             ; preds = %.lr.ph98
  call void @_ZdaPv(ptr noundef nonnull %i.am) #13
  br label %bb.v

.critedge:                                        ; preds = %bb.p, %.preheader
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !50
  call void %i.db(ptr noundef nonnull %i.am, ptr noundef nonnull %i.ci, ptr noundef nonnull %i.cj, ptr noundef nonnull %5)
  call void @_ZdaPv(ptr noundef nonnull %i.am) #13
  %i.dc = load ptr, ptr %i.b, align 8, !tbaa !35  ; 10 uses
  %.not73 = icmp eq ptr %i.dc, null
  br i1 %.not73, label %_ZN5Ipopt9TimedTask3EndEv.exit, label %bb.r

bb.r:                                             ; preds = %.critedge
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 1120
  %i.de = load i8, ptr %i.dd, align 8, !tbaa !59, !range !60, !noundef !61
  %i.df = trunc nuw i8 %i.de to i1
  br i1 %i.df, label %bb.s, label %_ZN5Ipopt9TimedTask3EndEv.exit

bb.s:                                             ; preds = %bb.r
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dc, i64 1072
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dc, i64 1122
  store i8 1, ptr %i.dh, align 2, !tbaa !62
  %i.di = getelementptr inbounds nuw i8, ptr %i.dc, i64 1121
  store i8 0, ptr %i.di, align 1, !tbaa !63
  %i.dj = call noundef double @_ZN5Ipopt7CpuTimeEv()
  %i.dk = load double, ptr %i.dg, align 8, !tbaa !64
  %i.dl = fsub double %i.dj, %i.dk
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dc, i64 1080 ; 2 uses
  %i.dn = load double, ptr %i.dm, align 8, !tbaa !70
  %i.do = fadd double %i.dn, %i.dl
  store double %i.do, ptr %i.dm, align 8, !tbaa !70
  %i.dp = call noundef double @_ZN5Ipopt7SysTimeEv()
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dc, i64 1088
  %i.dr = load double, ptr %i.dq, align 8, !tbaa !65
  %i.ds = fsub double %i.dp, %i.dr
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dc, i64 1096 ; 2 uses
  %i.du = load double, ptr %i.dt, align 8, !tbaa !71
  %i.dv = fadd double %i.du, %i.ds
  store double %i.dv, ptr %i.dt, align 8, !tbaa !71
  %i.dw = call noundef double @_ZN5Ipopt13WallclockTimeEv()
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dc, i64 1104
  %i.dy = load double, ptr %i.dx, align 8, !tbaa !66
  %i.dz = fsub double %i.dw, %i.dy
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dc, i64 1112 ; 2 uses
  %i.eb = load double, ptr %i.ea, align 8, !tbaa !72
  %i.ec = fadd double %i.eb, %i.dz
  store double %i.ec, ptr %i.ea, align 8, !tbaa !72
  br label %_ZN5Ipopt9TimedTask3EndEv.exit

_ZN5Ipopt9TimedTask3EndEv.exit:                   ; preds = %bb.s, %bb.r, %.critedge
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !30 ; 2 uses
  %.not70 = icmp eq ptr %i.ee, null
  br i1 %.not70, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_ZN5Ipopt9TimedTask3EndEv.exit
  call void @_ZdaPv(ptr noundef nonnull %i.ee) #13
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %_ZN5Ipopt9TimedTask3EndEv.exit
  %i.ef = zext nneg i32 %2 to i64
  %i.eg = icmp slt i32 %2, 0
  %i.eh = shl nuw nsw i64 %i.ef, 3
  %i.ei = select i1 %i.eg, i64 -1, i64 %i.eh
  %i.ej = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ei) #16
  store ptr %i.ej, ptr %i.ed, align 8, !tbaa !30
end_hunk_0
