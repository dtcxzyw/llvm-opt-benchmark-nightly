Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/casadi/original/sundials_interface?download=true
inline.NumInlined: 2046
inline.NumDeleted: 468
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 25
begin_hunk_0_@_ZNK6casadi17SundialsInterface8init_memEPv:bb.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69
  %i.ft = load i64, ptr %i.fr, align 8, !tbaa !19
  %i.fu = add i64 %i.ft, 1
  call void @_ZdlPvm(ptr noundef %i.fq, i64 noundef %i.fu) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70, %bb.m
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.eq, %bb.m ], [ %.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70 ], [ %.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69 ] ; 4 uses
  %.5 = phi i1 [ true, %bb.m ], [ %.4, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70 ], [ %.4, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69 ] ; 2 uses
  %i.fv = load ptr, ptr %4, align 8, !tbaa !18    ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.fx = icmp eq ptr %i.fv, %i.fw
  br i1 %i.fx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72
  %i.fy = load i64, ptr %i.fw, align 8, !tbaa !19
  %i.fz = add i64 %i.fy, 1
  call void @_ZdlPvm(ptr noundef %i.fv, i64 noundef %i.fz) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73
  %i.ga = load ptr, ptr %5, align 8, !tbaa !18    ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.gc = icmp eq ptr %i.ga, %i.gb
  br i1 %i.gc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75.thread: ; preds = %bb.e
  %i.gd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ge = load ptr, ptr %5, align 8, !tbaa !18    ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.gg = icmp eq ptr %i.ge, %i.gf
  br i1 %i.gg, label %.sink.split, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75.thread
  %i.gh = load i64, ptr %i.gf, align 8, !tbaa !19
  %i.gi = add i64 %i.gh, 1
  call void @_ZdlPvm(ptr noundef %i.ge, i64 noundef %i.gi) #30
  br label %.sink.split

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75
  %i.gj = load i64, ptr %i.gb, align 8, !tbaa !19
  %i.gk = add i64 %i.gj, 1
  call void @_ZdlPvm(ptr noundef %i.ga, i64 noundef %i.gk) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br i1 %.5, label %bb.s, label %bb.t

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br i1 %.5, label %bb.s, label %bb.t

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76.thread
  %.pn.pn.pn.pn.pn.pn.pn82.ph = phi { ptr, i32 } [ %i.gd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76.thread ], [ %i.ep, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78.thread ], [ %i.gd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br label %bb.s

bb.s:                                             ; preds = %.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78
  %.pn.pn.pn.pn.pn.pn.pn82 = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76 ], [ %.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78 ], [ %.pn.pn.pn.pn.pn.pn.pn82.ph, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.eo) #29
  br label %bb.t

bb.t:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76, %bb.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78
  %.pn.pn.pn.pn.pn.pn.pn81 = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn82, %bb.s ], [ %.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78 ], [ %.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76 ]
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn.pn81

bb.u:                                             ; preds = %bb.b
  %i.gl = getelementptr inbounds nuw i8, ptr %1, i64 712
  store ptr null, ptr %i.gl, align 8, !tbaa !167
  br label %bb.v

bb.v:                                             ; preds = %._crit_edge109, %bb.u
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 2176
  %i.gn = tail call noundef i64 @_ZNK6casadi6Linsol8checkoutEv(ptr noundef nonnull align 8 dereferenceable(8) %i.gm)
  %i.go = trunc i64 %i.gn to i32
  %i.gp = getelementptr inbounds nuw i8, ptr %1, i64 720
  store i32 %i.go, ptr %i.gp, align 8, !tbaa !178
  %i.gq = getelementptr inbounds nuw i8, ptr %1, i64 480
  %i.gr = getelementptr inbounds nuw i8, ptr %1, i64 516
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.gq, i8 0, i64 32, i1 false)
  store i32 -1, ptr %i.gr, align 4, !tbaa !179
  %i.gs = getelementptr inbounds nuw i8, ptr %1, i64 512
  store i32 -1, ptr %i.gs, align 8, !tbaa !180
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 1560
  %i.gu = load double, ptr %i.gt, align 8, !tbaa !181
  %i.gv = getelementptr inbounds nuw i8, ptr %1, i64 544
  store double %i.gu, ptr %i.gv, align 8, !tbaa !182
  %i.gw = getelementptr inbounds nuw i8, ptr %1, i64 536
  store double +qnan, ptr %i.gw, align 8, !tbaa !183
  %i.gx = getelementptr inbounds nuw i8, ptr %1, i64 520
  store <2 x double> splat (double +qnan), ptr %i.gx, align 8, !tbaa !48
  %i.gy = getelementptr inbounds nuw i8, ptr %1, i64 552
  %i.gz = getelementptr inbounds nuw i8, ptr %1, i64 604
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.gy, i8 0, i64 48, i1 false)
  store i32 -1, ptr %i.gz, align 4, !tbaa !184
  %i.ha = getelementptr inbounds nuw i8, ptr %1, i64 600
  store i32 -1, ptr %i.ha, align 8, !tbaa !185
  %i.hb = getelementptr inbounds nuw i8, ptr %1, i64 624
  store <2 x double> splat (double +qnan), ptr %i.hb, align 8, !tbaa !48
  %i.hc = getelementptr inbounds nuw i8, ptr %1, i64 608
  store <2 x double> splat (double +qnan), ptr %i.hc, align 8, !tbaa !48
  %i.hd = getelementptr inbounds nuw i8, ptr %1, i64 640
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.hd, i8 0, i64 64, i1 false)
  br label %bb.w

bb.w:                                             ; preds = %bb.a, %bb.v
  %.051 = phi i32 [ 0, %bb.v ], [ 1, %bb.a ]
  ret i32 %.051

bb.x:                                             ; preds = %bb.l
  unreachable
}

declare noundef i32 @_ZNK6casadi10Integrator8init_memEPv(ptr noundef nonnull align 8 dereferenceable(1984), ptr noundef) unnamed_addr #4

declare ptr @N_VNew_Serial(i64 noundef) local_unnamed_addr #4

declare noundef i64 @_ZNK6casadi6Linsol8checkoutEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZNK6casadi17SundialsInterface11reset_statsEPNS_14SundialsMemoryE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(2192) %0, ptr nofree noundef writeonly captures(none) initializes((480, 704)) %1) local_unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 480
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 516
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  store i32 -1, ptr %i.b, align 4, !tbaa !179
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 512
  store i32 -1, ptr %i.c, align 8, !tbaa !180
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1560
  %i.e = load double, ptr %i.d, align 8, !tbaa !181
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 544
  store double %i.e, ptr %i.f, align 8, !tbaa !182
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 536
  store double +qnan, ptr %i.g, align 8, !tbaa !183
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 520
  store <2 x double> splat (double +qnan), ptr %i.h, align 8, !tbaa !48
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 552
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 604
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.i, i8 0, i64 48, i1 false)
  store i32 -1, ptr %i.j, align 4, !tbaa !184
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 600
  store i32 -1, ptr %i.k, align 8, !tbaa !185
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 624
  store <2 x double> splat (double +qnan), ptr %i.l, align 8, !tbaa !48
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 608
  store <2 x double> splat (double +qnan), ptr %i.m, align 8, !tbaa !48
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 640
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.n, i8 0, i64 64, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZNK6casadi17SundialsInterface5resetEPNS_16IntegratorMemoryEb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(2192) %0, ptr nofree noundef captures(none) %1, i1 noundef zeroext %2) unnamed_addr #13 align 2 {
bb.a:
  br i1 %2, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 480
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 516
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  store i32 -1, ptr %i.b, align 4, !tbaa !179
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 512
  store i32 -1, ptr %i.c, align 8, !tbaa !180
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1560
  %i.e = load double, ptr %i.d, align 8, !tbaa !181
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 544
  store double %i.e, ptr %i.f, align 8, !tbaa !182
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 536
  store double +qnan, ptr %i.g, align 8, !tbaa !183
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 520
  store <2 x double> splat (double +qnan), ptr %i.h, align 8, !tbaa !48
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 552
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 604
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.i, i8 0, i64 48, i1 false)
  store i32 -1, ptr %i.j, align 4, !tbaa !184
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 600
  store i32 -1, ptr %i.k, align 8, !tbaa !185
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 624
  store <2 x double> splat (double +qnan), ptr %i.l, align 8, !tbaa !48
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 608
  store <2 x double> splat (double +qnan), ptr %i.m, align 8, !tbaa !48
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 640
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.n, i8 0, i64 64, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !337  ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1632
  %i.r = load i64, ptr %i.q, align 8, !tbaa !126  ; 8 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 400
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !162
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !170
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !172  ; 6 uses
  %.not.i = icmp eq ptr %i.w, null
  br i1 %.not.i, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not15.i = icmp eq ptr %i.p, null
  %i.x = icmp sgt i64 %i.r, 0                     ; 2 uses
  br i1 %.not15.i, label %.preheader.i, label %.preheader16.i

.preheader16.i:                                   ; preds = %bb.d
  br i1 %i.x, label %.lr.ph.i.preheader, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit

.lr.ph.i.preheader:                               ; preds = %.preheader16.i
  %min.iters.check = icmp ult i64 %i.r, 8
  %3 = ptrtoaddr ptr %i.w to i64
  %4 = ptrtoaddr ptr %i.p to i64
  %i.y = sub i64 %4, %3
  %diff.check = icmp ugt i64 %i.y, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.preheader85, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.r, 9223372036854775804      ; 4 uses
  %i.z = shl i64 %n.vec, 3                        ; 2 uses
  %i.aa = getelementptr i8, ptr %i.w, i64 %i.z
  %i.ab = getelementptr i8, ptr %i.p, i64 %i.z
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ac = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.w, i64 %i.ac ; 2 uses
  %next.gep42 = getelementptr i8, ptr %i.p, i64 %i.ac ; 2 uses
  %i.ad = getelementptr i8, ptr %next.gep42, i64 16
  %wide.load = load <2 x double>, ptr %next.gep42, align 8, !tbaa !48
  %wide.load43 = load <2 x double>, ptr %i.ad, align 8, !tbaa !48
  %i.ae = getelementptr i8, ptr %next.gep, i64 16
  store <2 x double> %wide.load, ptr %next.gep, align 8, !tbaa !48
  store <2 x double> %wide.load43, ptr %i.ae, align 8, !tbaa !48
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.af = icmp eq i64 %index.next, %n.vec
  br i1 %i.af, label %middle.block, label %vector.body, !llvm.loop !328

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.r, %n.vec
  br i1 %cmp.n, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit, label %.lr.ph.i.preheader85

.lr.ph.i.preheader85:                             ; preds = %.lr.ph.i.preheader, %middle.block
  %.020.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %n.vec, %middle.block ] ; 4 uses
  %.01019.i.ph = phi ptr [ %i.w, %.lr.ph.i.preheader ], [ %i.aa, %middle.block ] ; 2 uses
  %.01218.i.ph = phi ptr [ %i.p, %.lr.ph.i.preheader ], [ %i.ab, %middle.block ] ; 2 uses
  %i.ag = sub nsw i64 %i.r, %.020.i.ph
  %xtraiter = and i64 %i.ag, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader85, %.lr.ph.i.prol
  %.020.i.prol = phi i64 [ %i.ak, %.lr.ph.i.prol ], [ %.020.i.ph, %.lr.ph.i.preheader85 ]
  %.01019.i.prol = phi ptr [ %i.aj, %.lr.ph.i.prol ], [ %.01019.i.ph, %.lr.ph.i.preheader85 ] ; 2 uses
  %.01218.i.prol = phi ptr [ %i.ah, %.lr.ph.i.prol ], [ %.01218.i.ph, %.lr.ph.i.preheader85 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader85 ]
  %i.ah = getelementptr inbounds nuw i8, ptr %.01218.i.prol, i64 8 ; 2 uses
  %i.ai = load double, ptr %.01218.i.prol, align 8, !tbaa !48
  %i.aj = getelementptr inbounds nuw i8, ptr %.01019.i.prol, i64 8 ; 2 uses
  store double %i.ai, ptr %.01019.i.prol, align 8, !tbaa !48
  %i.ak = add nuw nsw i64 %.020.i.prol, 1         ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !329

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader85
  %.020.i.unr = phi i64 [ %.020.i.ph, %.lr.ph.i.preheader85 ], [ %i.ak, %.lr.ph.i.prol ]
  %.01019.i.unr = phi ptr [ %.01019.i.ph, %.lr.ph.i.preheader85 ], [ %i.aj, %.lr.ph.i.prol ]
  %.01218.i.unr = phi ptr [ %.01218.i.ph, %.lr.ph.i.preheader85 ], [ %i.ah, %.lr.ph.i.prol ]
  %i.al = sub nsw i64 %.020.i.ph, %i.r
  %i.am = icmp ugt i64 %i.al, -8
  br i1 %i.am, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit, label %.lr.ph.i

.preheader.i:                                     ; preds = %bb.d
  br i1 %i.x, label %.lr.ph23.preheader.i, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit

.lr.ph23.preheader.i:                             ; preds = %.preheader.i
  %i.an = shl nuw i64 %i.r, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.w, i8 0, i64 %i.an, i1 false), !tbaa !48
  br label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.020.i = phi i64 [ %i.bm, %.lr.ph.i ], [ %.020.i.unr, %.lr.ph.i.prol.loopexit ]
  %.01019.i = phi ptr [ %i.bl, %.lr.ph.i ], [ %.01019.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %.01218.i = phi ptr [ %i.bj, %.lr.ph.i ], [ %.01218.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.01218.i, i64 8
  %i.ap = load double, ptr %.01218.i, align 8, !tbaa !48
  %i.aq = getelementptr inbounds nuw i8, ptr %.01019.i, i64 8
  store double %i.ap, ptr %.01019.i, align 8, !tbaa !48
  %i.ar = getelementptr inbounds nuw i8, ptr %.01218.i, i64 16
  %i.as = load double, ptr %i.ao, align 8, !tbaa !48
  %i.at = getelementptr inbounds nuw i8, ptr %.01019.i, i64 16
  store double %i.as, ptr %i.aq, align 8, !tbaa !48
  %i.au = getelementptr inbounds nuw i8, ptr %.01218.i, i64 24
  %i.av = load double, ptr %i.ar, align 8, !tbaa !48
  %i.aw = getelementptr inbounds nuw i8, ptr %.01019.i, i64 24
  store double %i.av, ptr %i.at, align 8, !tbaa !48
  %i.ax = getelementptr inbounds nuw i8, ptr %.01218.i, i64 32
  %i.ay = load double, ptr %i.au, align 8, !tbaa !48
  %i.az = getelementptr inbounds nuw i8, ptr %.01019.i, i64 32
  store double %i.ay, ptr %i.aw, align 8, !tbaa !48
  %i.ba = getelementptr inbounds nuw i8, ptr %.01218.i, i64 40
  %i.bb = load double, ptr %i.ax, align 8, !tbaa !48
  %i.bc = getelementptr inbounds nuw i8, ptr %.01019.i, i64 40
  store double %i.bb, ptr %i.az, align 8, !tbaa !48
  %i.bd = getelementptr inbounds nuw i8, ptr %.01218.i, i64 48
  %i.be = load double, ptr %i.ba, align 8, !tbaa !48
  %i.bf = getelementptr inbounds nuw i8, ptr %.01019.i, i64 48
  store double %i.be, ptr %i.bc, align 8, !tbaa !48
  %i.bg = getelementptr inbounds nuw i8, ptr %.01218.i, i64 56
  %i.bh = load double, ptr %i.bd, align 8, !tbaa !48
  %i.bi = getelementptr inbounds nuw i8, ptr %.01019.i, i64 56
  store double %i.bh, ptr %i.bf, align 8, !tbaa !48
  %i.bj = getelementptr inbounds nuw i8, ptr %.01218.i, i64 64
  %i.bk = load double, ptr %i.bg, align 8, !tbaa !48
  %i.bl = getelementptr inbounds nuw i8, ptr %.01019.i, i64 64
  store double %i.bk, ptr %i.bi, align 8, !tbaa !48
  %i.bm = add nuw nsw i64 %.020.i, 8              ; 2 uses
  %exitcond.not.i.7 = icmp eq i64 %i.bm, %i.r
  br i1 %exitcond.not.i.7, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit, label %.lr.ph.i, !llvm.loop !330

_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit:       ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %bb.c, %.preheader16.i, %.preheader.i, %.lr.ph23.preheader.i
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !338 ; 5 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 1616
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !132 ; 10 uses
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 384
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !161
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !170
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !172 ; 8 uses
  %.not.i11 = icmp eq ptr %i.bv, null
  br i1 %.not.i11, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit32, label %bb.e

bb.e:                                             ; preds = %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit
  %.not15.i12 = icmp eq ptr %i.bo, null
  %i.bw = icmp sgt i64 %i.bq, 0                   ; 2 uses
  br i1 %.not15.i12, label %.preheader.i19, label %.preheader16.i13

.preheader16.i13:                                 ; preds = %bb.e
  br i1 %i.bw, label %.lr.ph.i14.preheader, label %.loopexit

.lr.ph.i14.preheader:                             ; preds = %.preheader16.i13
  %min.iters.check49 = icmp ult i64 %i.bq, 8
  %5 = ptrtoaddr ptr %i.bv to i64
  %6 = ptrtoaddr ptr %i.bo to i64
  %i.bx = sub i64 %6, %5
  %diff.check47 = icmp ugt i64 %i.bx, -32
  %or.cond82 = select i1 %min.iters.check49, i1 true, i1 %diff.check47
  br i1 %or.cond82, label %.lr.ph.i14.preheader84, label %vector.ph50

vector.ph50:                                      ; preds = %.lr.ph.i14.preheader
  %n.vec51 = and i64 %i.bq, 9223372036854775804   ; 4 uses
  %i.by = shl i64 %n.vec51, 3                     ; 2 uses
  %i.bz = getelementptr i8, ptr %i.bv, i64 %i.by
  %i.ca = getelementptr i8, ptr %i.bo, i64 %i.by
  br label %vector.body52

vector.body52:                                    ; preds = %vector.body52, %vector.ph50
  %index53 = phi i64 [ 0, %vector.ph50 ], [ %index.next58, %vector.body52 ] ; 2 uses
  %i.cb = shl i64 %index53, 3                     ; 2 uses
  %next.gep54 = getelementptr i8, ptr %i.bv, i64 %i.cb ; 2 uses
  %next.gep55 = getelementptr i8, ptr %i.bo, i64 %i.cb ; 2 uses
  %i.cc = getelementptr i8, ptr %next.gep55, i64 16
  %wide.load56 = load <2 x double>, ptr %next.gep55, align 8, !tbaa !48
  %wide.load57 = load <2 x double>, ptr %i.cc, align 8, !tbaa !48
  %i.cd = getelementptr i8, ptr %next.gep54, i64 16
  store <2 x double> %wide.load56, ptr %next.gep54, align 8, !tbaa !48
  store <2 x double> %wide.load57, ptr %i.cd, align 8, !tbaa !48
  %index.next58 = add nuw i64 %index53, 4         ; 2 uses
  %i.ce = icmp eq i64 %index.next58, %n.vec51
  br i1 %i.ce, label %middle.block59, label %vector.body52, !llvm.loop !331

middle.block59:                                   ; preds = %vector.body52
  %cmp.n60 = icmp eq i64 %i.bq, %n.vec51
  br i1 %cmp.n60, label %.loopexit, label %.lr.ph.i14.preheader84

.lr.ph.i14.preheader84:                           ; preds = %.lr.ph.i14.preheader, %middle.block59
  %.020.i15.ph = phi i64 [ 0, %.lr.ph.i14.preheader ], [ %n.vec51, %middle.block59 ] ; 4 uses
  %.01019.i16.ph = phi ptr [ %i.bv, %.lr.ph.i14.preheader ], [ %i.bz, %middle.block59 ] ; 2 uses
  %.01218.i17.ph = phi ptr [ %i.bo, %.lr.ph.i14.preheader ], [ %i.ca, %middle.block59 ] ; 2 uses
  %i.cf = sub nsw i64 %i.bq, %.020.i15.ph
  %xtraiter86 = and i64 %i.cf, 7                  ; 2 uses
  %lcmp.mod87.not = icmp eq i64 %xtraiter86, 0
  br i1 %lcmp.mod87.not, label %.lr.ph.i14.prol.loopexit, label %.lr.ph.i14.prol

.lr.ph.i14.prol:                                  ; preds = %.lr.ph.i14.preheader84, %.lr.ph.i14.prol
  %.020.i15.prol = phi i64 [ %i.cj, %.lr.ph.i14.prol ], [ %.020.i15.ph, %.lr.ph.i14.preheader84 ]
  %.01019.i16.prol = phi ptr [ %i.ci, %.lr.ph.i14.prol ], [ %.01019.i16.ph, %.lr.ph.i14.preheader84 ] ; 2 uses
  %.01218.i17.prol = phi ptr [ %i.cg, %.lr.ph.i14.prol ], [ %.01218.i17.ph, %.lr.ph.i14.preheader84 ] ; 2 uses
  %prol.iter88 = phi i64 [ %prol.iter88.next, %.lr.ph.i14.prol ], [ 0, %.lr.ph.i14.preheader84 ]
  %i.cg = getelementptr inbounds nuw i8, ptr %.01218.i17.prol, i64 8 ; 2 uses
  %i.ch = load double, ptr %.01218.i17.prol, align 8, !tbaa !48
  %i.ci = getelementptr inbounds nuw i8, ptr %.01019.i16.prol, i64 8 ; 2 uses
  store double %i.ch, ptr %.01019.i16.prol, align 8, !tbaa !48
  %i.cj = add nuw nsw i64 %.020.i15.prol, 1       ; 2 uses
  %prol.iter88.next = add i64 %prol.iter88, 1     ; 2 uses
  %prol.iter88.cmp.not = icmp eq i64 %prol.iter88.next, %xtraiter86
  br i1 %prol.iter88.cmp.not, label %.lr.ph.i14.prol.loopexit, label %.lr.ph.i14.prol, !llvm.loop !332

.lr.ph.i14.prol.loopexit:                         ; preds = %.lr.ph.i14.prol, %.lr.ph.i14.preheader84
  %.020.i15.unr = phi i64 [ %.020.i15.ph, %.lr.ph.i14.preheader84 ], [ %i.cj, %.lr.ph.i14.prol ]
  %.01019.i16.unr = phi ptr [ %.01019.i16.ph, %.lr.ph.i14.preheader84 ], [ %i.ci, %.lr.ph.i14.prol ]
  %.01218.i17.unr = phi ptr [ %.01218.i17.ph, %.lr.ph.i14.preheader84 ], [ %i.cg, %.lr.ph.i14.prol ]
  %i.ck = sub nsw i64 %.020.i15.ph, %i.bq
  %i.cl = icmp ugt i64 %i.ck, -8
  br i1 %i.cl, label %.loopexit, label %.lr.ph.i14

.preheader.i19:                                   ; preds = %bb.e
  br i1 %i.bw, label %.lr.ph23.preheader.i20, label %.loopexit

.lr.ph23.preheader.i20:                           ; preds = %.preheader.i19
  %i.cm = shl nuw i64 %i.bq, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.bv, i8 0, i64 %i.cm, i1 false), !tbaa !48
  br label %.loopexit

.lr.ph.i14:                                       ; preds = %.lr.ph.i14.prol.loopexit, %.lr.ph.i14
  %.020.i15 = phi i64 [ %i.dl, %.lr.ph.i14 ], [ %.020.i15.unr, %.lr.ph.i14.prol.loopexit ]
  %.01019.i16 = phi ptr [ %i.dk, %.lr.ph.i14 ], [ %.01019.i16.unr, %.lr.ph.i14.prol.loopexit ] ; 9 uses
  %.01218.i17 = phi ptr [ %i.di, %.lr.ph.i14 ], [ %.01218.i17.unr, %.lr.ph.i14.prol.loopexit ] ; 9 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.01218.i17, i64 8
  %i.co = load double, ptr %.01218.i17, align 8, !tbaa !48
  %i.cp = getelementptr inbounds nuw i8, ptr %.01019.i16, i64 8
  store double %i.co, ptr %.01019.i16, align 8, !tbaa !48
  %i.cq = getelementptr inbounds nuw i8, ptr %.01218.i17, i64 16
  %i.cr = load double, ptr %i.cn, align 8, !tbaa !48
  %i.cs = getelementptr inbounds nuw i8, ptr %.01019.i16, i64 16
  store double %i.cr, ptr %i.cp, align 8, !tbaa !48
  %i.ct = getelementptr inbounds nuw i8, ptr %.01218.i17, i64 24
  %i.cu = load double, ptr %i.cq, align 8, !tbaa !48
  %i.cv = getelementptr inbounds nuw i8, ptr %.01019.i16, i64 24
  store double %i.cu, ptr %i.cs, align 8, !tbaa !48
  %i.cw = getelementptr inbounds nuw i8, ptr %.01218.i17, i64 32
  %i.cx = load double, ptr %i.ct, align 8, !tbaa !48
  %i.cy = getelementptr inbounds nuw i8, ptr %.01019.i16, i64 32
  store double %i.cx, ptr %i.cv, align 8, !tbaa !48
  %i.cz = getelementptr inbounds nuw i8, ptr %.01218.i17, i64 40
  %i.da = load double, ptr %i.cw, align 8, !tbaa !48
  %i.db = getelementptr inbounds nuw i8, ptr %.01019.i16, i64 40
  store double %i.da, ptr %i.cy, align 8, !tbaa !48
  %i.dc = getelementptr inbounds nuw i8, ptr %.01218.i17, i64 48
  %i.dd = load double, ptr %i.cz, align 8, !tbaa !48
  %i.de = getelementptr inbounds nuw i8, ptr %.01019.i16, i64 48
  store double %i.dd, ptr %i.db, align 8, !tbaa !48
  %i.df = getelementptr inbounds nuw i8, ptr %.01218.i17, i64 56
  %i.dg = load double, ptr %i.dc, align 8, !tbaa !48
  %i.dh = getelementptr inbounds nuw i8, ptr %.01019.i16, i64 56
  store double %i.dg, ptr %i.de, align 8, !tbaa !48
  %i.di = getelementptr inbounds nuw i8, ptr %.01218.i17, i64 64
  %i.dj = load double, ptr %i.df, align 8, !tbaa !48
  %i.dk = getelementptr inbounds nuw i8, ptr %.01019.i16, i64 64
  store double %i.dj, ptr %i.dh, align 8, !tbaa !48
  %i.dl = add nuw nsw i64 %.020.i15, 8            ; 2 uses
  %exitcond.not.i18.7 = icmp eq i64 %i.dl, %i.bq
  br i1 %exitcond.not.i18.7, label %.loopexit, label %.lr.ph.i14, !llvm.loop !333

.loopexit:                                        ; preds = %.lr.ph.i14.prol.loopexit, %.lr.ph.i14, %middle.block59, %.preheader16.i13, %.preheader.i19, %.lr.ph23.preheader.i20
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !339 ; 6 uses
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 1624
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !125 ; 8 uses
  %i.dq = getelementptr inbounds [8 x i8], ptr %i.bv, i64 %i.bq ; 5 uses
  %.not15.i23 = icmp eq ptr %i.dn, null
  %i.dr = icmp sgt i64 %i.dp, 0                   ; 2 uses
  br i1 %.not15.i23, label %.preheader.i30, label %.preheader16.i24

.preheader16.i24:                                 ; preds = %.loopexit
  br i1 %i.dr, label %.lr.ph.i25.preheader, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit32

.lr.ph.i25.preheader:                             ; preds = %.preheader16.i24
  %min.iters.check67 = icmp ult i64 %i.dp, 14
  br i1 %min.iters.check67, label %.lr.ph.i25.preheader83, label %vector.memcheck64

vector.memcheck64:                                ; preds = %.lr.ph.i25.preheader
  %7 = ptrtoaddr ptr %i.bv to i64
  %i.ds = shl i64 %i.bq, 3
  %8 = ptrtoaddr ptr %i.dn to i64
  %i.dt = add i64 %i.ds, %7
  %i.du = sub i64 %8, %i.dt
  %diff.check65 = icmp ugt i64 %i.du, -32
  br i1 %diff.check65, label %.lr.ph.i25.preheader83, label %vector.ph68

vector.ph68:                                      ; preds = %vector.memcheck64
  %n.vec69 = and i64 %i.dp, 9223372036854775804   ; 4 uses
  %i.dv = shl i64 %n.vec69, 3                     ; 2 uses
  %i.dw = getelementptr i8, ptr %i.dq, i64 %i.dv
  %i.dx = getelementptr i8, ptr %i.dn, i64 %i.dv
  br label %vector.body70

vector.body70:                                    ; preds = %vector.body70, %vector.ph68
  %index71 = phi i64 [ 0, %vector.ph68 ], [ %index.next76, %vector.body70 ] ; 2 uses
  %i.dy = shl i64 %index71, 3                     ; 2 uses
  %next.gep72 = getelementptr i8, ptr %i.dq, i64 %i.dy ; 2 uses
  %next.gep73 = getelementptr i8, ptr %i.dn, i64 %i.dy ; 2 uses
  %i.dz = getelementptr i8, ptr %next.gep73, i64 16
  %wide.load74 = load <2 x double>, ptr %next.gep73, align 8, !tbaa !48
  %wide.load75 = load <2 x double>, ptr %i.dz, align 8, !tbaa !48
  %i.ea = getelementptr i8, ptr %next.gep72, i64 16
  store <2 x double> %wide.load74, ptr %next.gep72, align 8, !tbaa !48
  store <2 x double> %wide.load75, ptr %i.ea, align 8, !tbaa !48
  %index.next76 = add nuw i64 %index71, 4         ; 2 uses
  %i.eb = icmp eq i64 %index.next76, %n.vec69
  br i1 %i.eb, label %middle.block77, label %vector.body70, !llvm.loop !334

middle.block77:                                   ; preds = %vector.body70
  %cmp.n78 = icmp eq i64 %i.dp, %n.vec69
  br i1 %cmp.n78, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit32, label %.lr.ph.i25.preheader83

.lr.ph.i25.preheader83:                           ; preds = %vector.memcheck64, %.lr.ph.i25.preheader, %middle.block77
  %.020.i26.ph = phi i64 [ 0, %vector.memcheck64 ], [ 0, %.lr.ph.i25.preheader ], [ %n.vec69, %middle.block77 ] ; 4 uses
  %.01019.i27.ph = phi ptr [ %i.dq, %vector.memcheck64 ], [ %i.dq, %.lr.ph.i25.preheader ], [ %i.dw, %middle.block77 ] ; 2 uses
  %.01218.i28.ph = phi ptr [ %i.dn, %vector.memcheck64 ], [ %i.dn, %.lr.ph.i25.preheader ], [ %i.dx, %middle.block77 ] ; 2 uses
  %i.ec = sub nsw i64 %i.dp, %.020.i26.ph
  %xtraiter89 = and i64 %i.ec, 7                  ; 2 uses
  %lcmp.mod90.not = icmp eq i64 %xtraiter89, 0
  br i1 %lcmp.mod90.not, label %.lr.ph.i25.prol.loopexit, label %.lr.ph.i25.prol

.lr.ph.i25.prol:                                  ; preds = %.lr.ph.i25.preheader83, %.lr.ph.i25.prol
  %.020.i26.prol = phi i64 [ %i.eg, %.lr.ph.i25.prol ], [ %.020.i26.ph, %.lr.ph.i25.preheader83 ]
  %.01019.i27.prol = phi ptr [ %i.ef, %.lr.ph.i25.prol ], [ %.01019.i27.ph, %.lr.ph.i25.preheader83 ] ; 2 uses
  %.01218.i28.prol = phi ptr [ %i.ed, %.lr.ph.i25.prol ], [ %.01218.i28.ph, %.lr.ph.i25.preheader83 ] ; 2 uses
  %prol.iter91 = phi i64 [ %prol.iter91.next, %.lr.ph.i25.prol ], [ 0, %.lr.ph.i25.preheader83 ]
  %i.ed = getelementptr inbounds nuw i8, ptr %.01218.i28.prol, i64 8 ; 2 uses
  %i.ee = load double, ptr %.01218.i28.prol, align 8, !tbaa !48
  %i.ef = getelementptr inbounds nuw i8, ptr %.01019.i27.prol, i64 8 ; 2 uses
  store double %i.ee, ptr %.01019.i27.prol, align 8, !tbaa !48
  %i.eg = add nuw nsw i64 %.020.i26.prol, 1       ; 2 uses
  %prol.iter91.next = add i64 %prol.iter91, 1     ; 2 uses
  %prol.iter91.cmp.not = icmp eq i64 %prol.iter91.next, %xtraiter89
  br i1 %prol.iter91.cmp.not, label %.lr.ph.i25.prol.loopexit, label %.lr.ph.i25.prol, !llvm.loop !335

.lr.ph.i25.prol.loopexit:                         ; preds = %.lr.ph.i25.prol, %.lr.ph.i25.preheader83
  %.020.i26.unr = phi i64 [ %.020.i26.ph, %.lr.ph.i25.preheader83 ], [ %i.eg, %.lr.ph.i25.prol ]
  %.01019.i27.unr = phi ptr [ %.01019.i27.ph, %.lr.ph.i25.preheader83 ], [ %i.ef, %.lr.ph.i25.prol ]
  %.01218.i28.unr = phi ptr [ %.01218.i28.ph, %.lr.ph.i25.preheader83 ], [ %i.ed, %.lr.ph.i25.prol ]
  %i.eh = sub nsw i64 %.020.i26.ph, %i.dp
  %i.ei = icmp ugt i64 %i.eh, -8
  br i1 %i.ei, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit32, label %.lr.ph.i25

.preheader.i30:                                   ; preds = %.loopexit
  br i1 %i.dr, label %.lr.ph23.preheader.i31, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit32

.lr.ph23.preheader.i31:                           ; preds = %.preheader.i30
  %i.ej = shl nuw i64 %i.dp, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.dq, i8 0, i64 %i.ej, i1 false), !tbaa !48
  br label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit32

.lr.ph.i25:                                       ; preds = %.lr.ph.i25.prol.loopexit, %.lr.ph.i25
  %.020.i26 = phi i64 [ %i.fi, %.lr.ph.i25 ], [ %.020.i26.unr, %.lr.ph.i25.prol.loopexit ]
  %.01019.i27 = phi ptr [ %i.fh, %.lr.ph.i25 ], [ %.01019.i27.unr, %.lr.ph.i25.prol.loopexit ] ; 9 uses
  %.01218.i28 = phi ptr [ %i.ff, %.lr.ph.i25 ], [ %.01218.i28.unr, %.lr.ph.i25.prol.loopexit ] ; 9 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.01218.i28, i64 8
  %i.el = load double, ptr %.01218.i28, align 8, !tbaa !48
  %i.em = getelementptr inbounds nuw i8, ptr %.01019.i27, i64 8
  store double %i.el, ptr %.01019.i27, align 8, !tbaa !48
  %i.en = getelementptr inbounds nuw i8, ptr %.01218.i28, i64 16
  %i.eo = load double, ptr %i.ek, align 8, !tbaa !48
  %i.ep = getelementptr inbounds nuw i8, ptr %.01019.i27, i64 16
  store double %i.eo, ptr %i.em, align 8, !tbaa !48
  %i.eq = getelementptr inbounds nuw i8, ptr %.01218.i28, i64 24
  %i.er = load double, ptr %i.en, align 8, !tbaa !48
  %i.es = getelementptr inbounds nuw i8, ptr %.01019.i27, i64 24
  store double %i.er, ptr %i.ep, align 8, !tbaa !48
  %i.et = getelementptr inbounds nuw i8, ptr %.01218.i28, i64 32
  %i.eu = load double, ptr %i.eq, align 8, !tbaa !48
  %i.ev = getelementptr inbounds nuw i8, ptr %.01019.i27, i64 32
  store double %i.eu, ptr %i.es, align 8, !tbaa !48
  %i.ew = getelementptr inbounds nuw i8, ptr %.01218.i28, i64 40
  %i.ex = load double, ptr %i.et, align 8, !tbaa !48
  %i.ey = getelementptr inbounds nuw i8, ptr %.01019.i27, i64 40
  store double %i.ex, ptr %i.ev, align 8, !tbaa !48
  %i.ez = getelementptr inbounds nuw i8, ptr %.01218.i28, i64 48
  %i.fa = load double, ptr %i.ew, align 8, !tbaa !48
  %i.fb = getelementptr inbounds nuw i8, ptr %.01019.i27, i64 48
  store double %i.fa, ptr %i.ey, align 8, !tbaa !48
  %i.fc = getelementptr inbounds nuw i8, ptr %.01218.i28, i64 56
  %i.fd = load double, ptr %i.ez, align 8, !tbaa !48
  %i.fe = getelementptr inbounds nuw i8, ptr %.01019.i27, i64 56
  store double %i.fd, ptr %i.fb, align 8, !tbaa !48
  %i.ff = getelementptr inbounds nuw i8, ptr %.01218.i28, i64 64
  %i.fg = load double, ptr %i.fc, align 8, !tbaa !48
  %i.fh = getelementptr inbounds nuw i8, ptr %.01019.i27, i64 64
  store double %i.fg, ptr %i.fe, align 8, !tbaa !48
  %i.fi = add nuw nsw i64 %.020.i26, 8            ; 2 uses
  %exitcond.not.i29.7 = icmp eq i64 %i.fi, %i.dp
  br i1 %exitcond.not.i29.7, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit32, label %.lr.ph.i25, !llvm.loop !336

_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit32:     ; preds = %.lr.ph.i25.prol.loopexit, %.lr.ph.i25, %middle.block77, %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit, %.preheader16.i24, %.preheader.i30, %.lr.ph23.preheader.i31
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZNK6casadi17SundialsInterface12save_offsetsEPNS_14SundialsMemoryE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(2192) %0, ptr nofree noundef captures(none) initializes((656, 704)) %1) local_unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 568
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 656
  %i.c = load <2 x i64>, ptr %i.a, align 8, !tbaa !16
  store <2 x i64> %i.c, ptr %i.b, align 8, !tbaa !16
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 584
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 672
  %i.f = load <2 x i64>, ptr %i.d, align 8, !tbaa !16
  store <2 x i64> %i.f, ptr %i.e, align 8, !tbaa !16
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 640
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 688
  %i.i = load <2 x i64>, ptr %i.g, align 8, !tbaa !16
  store <2 x i64> %i.i, ptr %i.h, align 8, !tbaa !16
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZNK6casadi17SundialsInterface11add_offsetsEPNS_14SundialsMemoryE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(2192) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 656
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 568 ; 2 uses
  %i.c = load <2 x i64>, ptr %i.a, align 8, !tbaa !16
  %i.d = load <2 x i64>, ptr %i.b, align 8, !tbaa !16
  %i.e = add nsw <2 x i64> %i.d, %i.c
  store <2 x i64> %i.e, ptr %i.b, align 8, !tbaa !16
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 672
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 584 ; 2 uses
  %i.h = load <2 x i64>, ptr %i.f, align 8, !tbaa !16
  %i.i = load <2 x i64>, ptr %i.g, align 8, !tbaa !16
  %i.j = add nsw <2 x i64> %i.i, %i.h
  store <2 x i64> %i.j, ptr %i.g, align 8, !tbaa !16
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 688
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 640 ; 2 uses
  %i.m = load <2 x i64>, ptr %i.k, align 8, !tbaa !16
  %i.n = load <2 x i64>, ptr %i.l, align 8, !tbaa !16
  %i.o = add nsw <2 x i64> %i.n, %i.m
  store <2 x i64> %i.o, ptr %i.l, align 8, !tbaa !16
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6casadi17SundialsInterface6resetBEPNS_16IntegratorMemoryE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(2192) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !186  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1736
  %i.d = load i64, ptr %i.c, align 8, !tbaa !187  ; 2 uses
  %.not.i = icmp ne ptr %i.b, null
  %i.e = icmp sgt i64 %i.d, 0
  %or.cond.i = and i1 %.not.i, %i.e
  br i1 %or.cond.i, label %.lr.ph.preheader.i, label %_ZN6casadi12casadi_clearIdEEvPT_x.exit

.lr.ph.preheader.i:                               ; preds = %bb.a
  %i.f = shl nuw i64 %i.d, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.b, i8 0, i64 %i.f, i1 false), !tbaa !48
  br label %_ZN6casadi12casadi_clearIdEEvPT_x.exit

_ZN6casadi12casadi_clearIdEEvPT_x.exit:           ; preds = %bb.a, %.lr.ph.preheader.i
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 408
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !165
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !170
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !172  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1664
  %i.m = load i64, ptr %i.l, align 8, !tbaa !163
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1672
  %i.o = load i64, ptr %i.n, align 8, !tbaa !164
  %i.p = add nsw i64 %i.o, %i.m                   ; 2 uses
  %.not.i5 = icmp ne ptr %i.k, null
  %i.q = icmp sgt i64 %i.p, 0
  %or.cond.i6 = and i1 %.not.i5, %i.q
  br i1 %or.cond.i6, label %.lr.ph.preheader.i7, label %_ZN6casadi12casadi_clearIdEEvPT_x.exit8

.lr.ph.preheader.i7:                              ; preds = %_ZN6casadi12casadi_clearIdEEvPT_x.exit
  %i.r = shl nuw i64 %i.p, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.k, i8 0, i64 %i.r, i1 false), !tbaa !48
  br label %_ZN6casadi12casadi_clearIdEEvPT_x.exit8

_ZN6casadi12casadi_clearIdEEvPT_x.exit8:          ; preds = %_ZN6casadi12casadi_clearIdEEvPT_x.exit, %.lr.ph.preheader.i7
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 424
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !166
  tail call void @N_VConst(double noundef 0.000000e+00, ptr noundef %i.t)
  ret void
}

declare void @N_VConst(double noundef, ptr noundef) local_unnamed_addr #4
end_hunk_0
