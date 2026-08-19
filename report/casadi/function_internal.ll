inline.NumInlined: 11181
inline.NumDeleted: 2147
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_ZNK6casadi16FunctionInternal20get_jac_sparsity_genILb1EEENS_8SparsityExx:bb.a

bb.aq:                                            ; preds = %bb.ab
  %i.jx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit251

bb.ar:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i176, %bb.ag, %.critedge.i182
  %i.jy = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit248

bb.as:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i191, %bb.ai
  %i.jz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit245

bb.at:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %bb.ak
  %i.ka = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.au:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit201
  %i.kb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit242

bb.av:                                            ; preds = %.noexc204
  %i.kc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit239

bb.aw:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit209, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit207, %bb.al
  %i.kd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ke = load ptr, ptr %11, align 8, !tbaa !14   ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.kg = icmp eq ptr %i.ke, %i.kf
  br i1 %i.kg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit239, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i237

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i237: ; preds = %bb.aw
  %i.kh = load i64, ptr %i.kf, align 8, !tbaa !16
  %i.ki = add i64 %i.kh, 1
  call void @_ZdlPvm(ptr noundef %i.ke, i64 noundef %i.ki) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit239

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit239: ; preds = %bb.aw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i237, %bb.av
  %.pn = phi { ptr, i32 } [ %i.kc, %bb.av ], [ %i.kd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i237 ], [ %i.kd, %bb.aw ] ; 2 uses
  %i.kj = load ptr, ptr %12, align 8, !tbaa !14   ; 2 uses
  %i.kk = icmp eq ptr %i.kj, %i.hu
  br i1 %i.kk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit242, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i240

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i240: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit239
  %i.kl = load i64, ptr %i.hu, align 8, !tbaa !16
  %i.km = add i64 %i.kl, 1
  call void @_ZdlPvm(ptr noundef %i.kj, i64 noundef %i.km) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit242

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit242: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit239, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i240, %bb.au
  %.pn.pn = phi { ptr, i32 } [ %i.kb, %bb.au ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i240 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit239 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #38
  br label %bb.ax

bb.ax:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit242, %bb.at
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit242 ], [ %i.ka, %bb.at ] ; 2 uses
  %i.kn = load ptr, ptr %4, align 8, !tbaa !14    ; 2 uses
  %i.ko = icmp eq ptr %i.kn, %i.he
  br i1 %i.ko, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit245, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i243

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i243: ; preds = %bb.ax
  %i.kp = load i64, ptr %i.he, align 8, !tbaa !16
  %i.kq = add i64 %i.kp, 1
  call void @_ZdlPvm(ptr noundef %i.kn, i64 noundef %i.kq) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit245

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit245: ; preds = %bb.ax, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i243, %bb.as
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.jz, %bb.as ], [ %.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i243 ], [ %.pn.pn.pn, %bb.ax ] ; 2 uses
  %i.kr = load ptr, ptr %5, align 8, !tbaa !14    ; 2 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.kt = icmp eq ptr %i.kr, %i.ks
  br i1 %i.kt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit248, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i246

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i246: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit245
  %i.ku = load i64, ptr %i.ks, align 8, !tbaa !16
  %i.kv = add i64 %i.ku, 1
  call void @_ZdlPvm(ptr noundef %i.kr, i64 noundef %i.kv) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit248

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit248: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit245, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i246, %bb.ar
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.jy, %bb.ar ], [ %.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i246 ], [ %.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit245 ] ; 2 uses
  %i.kw = load ptr, ptr %10, align 8, !tbaa !14   ; 2 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.ky = icmp eq ptr %i.kw, %i.kx
  br i1 %i.ky, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit251, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i249

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i249: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit248
  %i.kz = load i64, ptr %i.kx, align 8, !tbaa !16
  %i.la = add i64 %i.kz, 1
  call void @_ZdlPvm(ptr noundef %i.kw, i64 noundef %i.la) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit251

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit251: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit248, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i249, %bb.aq
  %.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.jx, %bb.aq ], [ %.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i249 ], [ %.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit248 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #38
  %i.lb = load ptr, ptr %6, align 8, !tbaa !14    ; 2 uses
  %i.lc = icmp eq ptr %i.lb, %i.eu
  br i1 %i.lc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit254, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i252

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i252: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit251
  %i.ld = load i64, ptr %i.eu, align 8, !tbaa !16
  %i.le = add i64 %i.ld, 1
  call void @_ZdlPvm(ptr noundef %i.lb, i64 noundef %i.le) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit254

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit254: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit251, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i252, %bb.ap
  %.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.jw, %bb.ap ], [ %.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i252 ], [ %.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit251 ] ; 2 uses
  %i.lf = load ptr, ptr %7, align 8, !tbaa !14    ; 2 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.lh = icmp eq ptr %i.lf, %i.lg
  br i1 %i.lh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit257, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i255

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i255: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit254
  %i.li = load i64, ptr %i.lg, align 8, !tbaa !16
  %i.lj = add i64 %i.li, 1
  call void @_ZdlPvm(ptr noundef %i.lf, i64 noundef %i.lj) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit257

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit257: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit254, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i255, %bb.ao
  %.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.jv, %bb.ao ], [ %.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i255 ], [ %.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit254 ] ; 2 uses
  %i.lk = load ptr, ptr %9, align 8, !tbaa !14    ; 2 uses
  %i.ll = icmp eq ptr %i.lk, %i.da
  br i1 %i.ll, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit260, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i258

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i258: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit257
  %i.lm = load i64, ptr %i.da, align 8, !tbaa !16
  %i.ln = add i64 %i.lm, 1
  call void @_ZdlPvm(ptr noundef %i.lk, i64 noundef %i.ln) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit260

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit260: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit257, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i258
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #38
  %i.lo = load ptr, ptr %8, align 8, !tbaa !14    ; 2 uses
  %i.lp = icmp eq ptr %i.lo, %i.dh
  br i1 %i.lp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit263, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i261

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i261: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit260
  %i.lq = load i64, ptr %i.dh, align 8, !tbaa !16
  %i.lr = add i64 %i.lq, 1
  call void @_ZdlPvm(ptr noundef %i.lo, i64 noundef %i.lr) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit263

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit263: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit260, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i261, %bb.an
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ju, %bb.an ], [ %.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i261 ], [ %.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit260 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #38
  br label %bb.el

bb.ay:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236, %_ZNSt6vectorIySaIyEEC2EmRKyRKS0_.exit163
  %i.ls = phi i64 [ %.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236 ], [ %spec.select, %_ZNSt6vectorIySaIyEEC2EmRKyRKS0_.exit163 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #38
  store i64 -10, ptr %i.f, align 8, !tbaa !105
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #38
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #38
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %14, i8 0, i64 24, i1 false)
  %i.lt = icmp sgt i64 %i.ls, 0
  br i1 %i.lt, label %.lr.ph623, label %._crit_edge624

.lr.ph623:                                        ; preds = %bb.ay
  %i.lu = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.lv = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 7 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 6 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.lz = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.ma = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 4 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 4 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.md = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.me = ptrtoint ptr %.0.i.i.i.i.i.i.i159 to i64
  %i.mf = ptrtoint ptr %.sroa.0519.0 to i64
  %i.mg = sub i64 %i.me, %i.mf
  %i.mh = ashr exact i64 %i.mg, 3
  %i.mi = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 3 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 3 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %umax = call i64 @llvm.umax.i64(i64 %i.mh, i64 1)
  br label %bb.az

._crit_edge624:                                   ; preds = %._crit_edge620, %bb.ay
  invoke void @_ZN6casadi8Sparsity7tripletExxRKSt6vectorIxSaIxEES5_(ptr dead_on_unwind writable sret(%"class.casadi::Sparsity") align 8 %0, i64 noundef %i.ab, i64 noundef %i.r, ptr noundef nonnull align 8 dereferenceable(24) %13, ptr noundef nonnull align 8 dereferenceable(24) %14)
          to label %bb.cc unwind label %bb.di

bb.az:                                            ; preds = %.lr.ph623, %._crit_edge620
  %i.mm = phi i64 [ %i.ls, %.lr.ph623 ], [ %i.ry, %._crit_edge620 ]
  %.036621 = phi i64 [ 0, %.lr.ph623 ], [ %i.rx, %._crit_edge620 ] ; 3 uses
  %i.mn = load i8, ptr %i.cp, align 8, !tbaa !209, !range !163, !noundef !164
  %i.mo = trunc nuw i8 %i.mn to i1
  br i1 %i.mo, label %bb.ba, label %bb.bq

bb.ba:                                            ; preds = %bb.az
  %i.mp = mul nuw nsw i64 %.036621, 100
  %i.mq = sdiv i64 %i.mp, %i.mm                   ; 2 uses
  %i.mr = sdiv i64 %i.mq, 10
  %i.ms = load i64, ptr %i.f, align 8, !tbaa !105
  %i.mt = sdiv i64 %i.ms, 10
  %i.mu = icmp sgt i64 %i.mr, %i.mt
  br i1 %i.mu, label %bb.bb, label %bb.bq

bb.bb:                                            ; preds = %bb.ba
  store i64 %i.mq, ptr %i.f, align 8, !tbaa !105
  %i.mv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6casadi4uoutEv()
          to label %bb.bc unwind label %bb.bj

bb.bc:                                            ; preds = %bb.bb
  %i.mw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6casadi14message_prefixERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.mv)
          to label %bb.bd unwind label %bb.bj     ; 2 uses

bb.bd:                                            ; preds = %bb.bc
  %i.mx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.mw, ptr noundef nonnull @.str.150, i64 noundef 10)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit265 unwind label %bb.bj ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit265: ; preds = %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #38
  invoke void @_ZN6casadi3strIxEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %16, ptr noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %bb.be unwind label %bb.bk

bb.be:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit265
  call void @llvm.experimental.noalias.scope.decl(metadata !979)
  %i.my = load i64, ptr %i.lu, align 8, !tbaa !17, !noalias !979
  %i.mz = and i64 %i.my, -2
  %i.na = icmp eq i64 %i.mz, 4611686018427387902
  br i1 %i.na, label %bb.bf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i266

bb.bf:                                            ; preds = %bb.be
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.790) #37
          to label %.noexc271 unwind label %.loopexit.split-lp581

.noexc271:                                        ; preds = %bb.bf
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i266: ; preds = %bb.be
  %i.nb = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull @.str.807, i64 noundef 2)
          to label %.noexc272 unwind label %.loopexit580 ; 6 uses

.noexc272:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i266
  store ptr %i.lv, ptr %15, align 8, !tbaa !8, !alias.scope !979
  %i.nc = load ptr, ptr %i.nb, align 8, !tbaa !14 ; 2 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nb, i64 16 ; 5 uses
  %i.ne = icmp eq ptr %i.nc, %i.nd
  br i1 %i.ne, label %bb.bg, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i267

bb.bg:                                            ; preds = %.noexc272
  %i.nf = getelementptr inbounds nuw i8, ptr %i.nb, i64 8
  %i.ng = load i64, ptr %i.nf, align 8, !tbaa !17 ; 3 uses
  %i.nh = icmp ult i64 %i.ng, 16
  call void @llvm.assume(i1 %i.nh)
  %i.ni = add nuw nsw i64 %i.ng, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.lv, ptr noundef nonnull align 8 dereferenceable(1) %i.nd, i64 %i.ni, i1 false)
  br label %bb.bh

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i267: ; preds = %.noexc272
  store ptr %i.nc, ptr %15, align 8, !tbaa !14, !alias.scope !979
  %i.nj = load i64, ptr %i.nd, align 8, !tbaa !16
  store i64 %i.nj, ptr %i.lv, align 8, !tbaa !16, !alias.scope !979
  %.phi.trans.insert.i268 = getelementptr inbounds nuw i8, ptr %i.nb, i64 8
  %.pre.i269 = load i64, ptr %.phi.trans.insert.i268, align 8, !tbaa !17
  br label %bb.bh

bb.bh:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i267, %bb.bg
  %i.nk = phi i64 [ %i.ng, %bb.bg ], [ %.pre.i269, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i267 ]
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nb, i64 8
  store i64 %i.nk, ptr %i.lw, align 8, !tbaa !17, !alias.scope !979
  store ptr %i.nd, ptr %i.nb, align 8, !tbaa !14
  store i64 0, ptr %i.nl, align 8, !tbaa !17
  store i8 0, ptr %i.nd, align 8, !tbaa !16
  %i.nm = load ptr, ptr %15, align 8, !tbaa !14
  %i.nn = load i64, ptr %i.lw, align 8, !tbaa !17
  %i.no = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.mw, ptr noundef %i.nm, i64 noundef %i.nn)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit275 unwind label %bb.bl ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit275: ; preds = %bb.bh
  %i.np = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.no, ptr noundef nonnull @.str.18, i64 noundef 4)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit277 unwind label %bb.bl ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit277: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit275
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #38
  store ptr %i.lx, ptr %18, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #38
  store i64 68, ptr %i.b, align 8, !tbaa !12
  %i.nq = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc280 unwind label %bb.bm ; 3 uses

.noexc280:                                        ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit277
  store ptr %i.nq, ptr %18, align 8, !tbaa !14
  %i.nr = load i64, ptr %i.b, align 8, !tbaa !12  ; 3 uses
  store i64 %i.nr, ptr %i.lx, align 8, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(68) %i.nq, ptr noundef nonnull align 1 dereferenceable(68) @.str.808, i64 68, i1 false)
  store i64 %i.nr, ptr %i.ly, align 8, !tbaa !17
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nq, i64 %i.nr
  store i8 0, ptr %i.ns, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #38
  invoke void @_ZN6casadi9trim_pathERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %17, ptr noundef nonnull align 8 dereferenceable(32) %18)
          to label %bb.bi unwind label %bb.bn

bb.bi:                                            ; preds = %.noexc280
  %i.nt = load ptr, ptr %17, align 8, !tbaa !14
  %i.nu = load i64, ptr %i.lz, align 8, !tbaa !17
  %i.nv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.no, ptr noundef %i.nt, i64 noundef %i.nu)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit283 unwind label %bb.bo ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit283: ; preds = %bb.bi
  %i.nw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.nv, ptr noundef nonnull @.str.20, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit285 unwind label %bb.bo ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit285: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit283
  %i.nx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.nv)
          to label %_ZNSolsEPFRSoS_E.exit287 unwind label %bb.bo ; 0 uses

_ZNSolsEPFRSoS_E.exit287:                         ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit285
  %i.ny = load ptr, ptr %17, align 8, !tbaa !14   ; 2 uses
  %i.nz = icmp eq ptr %i.ny, %i.ma
  br i1 %i.nz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit290, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i288

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i288: ; preds = %_ZNSolsEPFRSoS_E.exit287
  %i.oa = load i64, ptr %i.ma, align 8, !tbaa !16
  %i.ob = add i64 %i.oa, 1
  call void @_ZdlPvm(ptr noundef %i.ny, i64 noundef %i.ob) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit290

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit290: ; preds = %_ZNSolsEPFRSoS_E.exit287, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i288
  %i.oc = load ptr, ptr %18, align 8, !tbaa !14   ; 2 uses
  %i.od = icmp eq ptr %i.oc, %i.lx
  br i1 %i.od, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit293, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i291

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i291: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit290
  %i.oe = load i64, ptr %i.lx, align 8, !tbaa !16
  %i.of = add i64 %i.oe, 1
  call void @_ZdlPvm(ptr noundef %i.oc, i64 noundef %i.of) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit293

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit293: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit290, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i291
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #38
  %i.og = load ptr, ptr %15, align 8, !tbaa !14   ; 2 uses
  %i.oh = icmp eq ptr %i.og, %i.lv
  br i1 %i.oh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit296, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i294

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i294: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit293
  %i.oi = load i64, ptr %i.lv, align 8, !tbaa !16
  %i.oj = add i64 %i.oi, 1
  call void @_ZdlPvm(ptr noundef %i.og, i64 noundef %i.oj) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit296

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit296: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit293, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i294
  %i.ok = load ptr, ptr %16, align 8, !tbaa !14   ; 2 uses
  %i.ol = icmp eq ptr %i.ok, %i.mb
  br i1 %i.ol, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit299, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i297

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i297: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit296
  %i.om = load i64, ptr %i.mb, align 8, !tbaa !16
  %i.on = add i64 %i.om, 1
  call void @_ZdlPvm(ptr noundef %i.ok, i64 noundef %i.on) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit299

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit299: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit296, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i297
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #38
  br label %bb.bq

bb.bj:                                            ; preds = %bb.bd, %bb.bc, %bb.bb
  %i.oo = landingpad { ptr, i32 }
          cleanup
  br label %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit

bb.bk:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit265
  %i.op = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit311

.loopexit580:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i266
  %lpad.loopexit582 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit308

.loopexit.split-lp581:                            ; preds = %bb.bf
  %lpad.loopexit.split-lp583 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit308

bb.bl:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit275, %bb.bh
  %i.oq = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

bb.bm:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit277
  %i.or = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit305

bb.bn:                                            ; preds = %.noexc280
  %i.os = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit302

bb.bo:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit285, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit283, %bb.bi
  %i.ot = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ou = load ptr, ptr %17, align 8, !tbaa !14   ; 2 uses
  %i.ov = icmp eq ptr %i.ou, %i.ma
  br i1 %i.ov, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit302, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i300

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i300: ; preds = %bb.bo
  %i.ow = load i64, ptr %i.ma, align 8, !tbaa !16
  %i.ox = add i64 %i.ow, 1
  call void @_ZdlPvm(ptr noundef %i.ou, i64 noundef %i.ox) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit302

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit302: ; preds = %bb.bo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i300, %bb.bn
  %.pn104 = phi { ptr, i32 } [ %i.os, %bb.bn ], [ %i.ot, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i300 ], [ %i.ot, %bb.bo ] ; 2 uses
  %i.oy = load ptr, ptr %18, align 8, !tbaa !14   ; 2 uses
  %i.oz = icmp eq ptr %i.oy, %i.lx
  br i1 %i.oz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit305, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i303

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i303: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit302
  %i.pa = load i64, ptr %i.lx, align 8, !tbaa !16
  %i.pb = add i64 %i.pa, 1
  call void @_ZdlPvm(ptr noundef %i.oy, i64 noundef %i.pb) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit305

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit305: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit302, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i303, %bb.bm
  %.pn104.pn = phi { ptr, i32 } [ %i.or, %bb.bm ], [ %.pn104, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i303 ], [ %.pn104, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit302 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #38
  br label %bb.bp

bb.bp:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit305, %bb.bl
  %.pn104.pn.pn = phi { ptr, i32 } [ %.pn104.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit305 ], [ %i.oq, %bb.bl ] ; 2 uses
  %i.pc = load ptr, ptr %15, align 8, !tbaa !14   ; 2 uses
  %i.pd = icmp eq ptr %i.pc, %i.lv
  br i1 %i.pd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit308, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i306

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i306: ; preds = %bb.bp
  %i.pe = load i64, ptr %i.lv, align 8, !tbaa !16
  %i.pf = add i64 %i.pe, 1
  call void @_ZdlPvm(ptr noundef %i.pc, i64 noundef %i.pf) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit308

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit308: ; preds = %bb.bp, %.loopexit580, %.loopexit.split-lp581, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i306
  %.pn104.pn.pn.pn = phi { ptr, i32 } [ %.pn104.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i306 ], [ %lpad.loopexit.split-lp583, %.loopexit.split-lp581 ], [ %lpad.loopexit582, %.loopexit580 ], [ %.pn104.pn.pn, %bb.bp ] ; 2 uses
  %i.pg = load ptr, ptr %16, align 8, !tbaa !14   ; 2 uses
  %i.ph = icmp eq ptr %i.pg, %i.mb
  br i1 %i.ph, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit311, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i309

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i309: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit308
  %i.pi = load i64, ptr %i.mb, align 8, !tbaa !16
  %i.pj = add i64 %i.pi, 1
  call void @_ZdlPvm(ptr noundef %i.pg, i64 noundef %i.pj) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit311

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit311: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit308, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i309, %bb.bk
  %.pn104.pn.pn.pn.pn = phi { ptr, i32 } [ %i.op, %bb.bk ], [ %.pn104.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i309 ], [ %.pn104.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit308 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #38
  br label %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit

bb.bq:                                            ; preds = %bb.ba, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit299, %bb.az
  %i.pk = shl nsw i64 %.036621, 6                 ; 4 uses
  %i.pl = sub i64 %i.cl, %i.pk
  %.fr626 = freeze i64 %i.pl                      ; 3 uses
  %.sroa.speculated = call i64 @llvm.smin.i64(i64 %.fr626, i64 64) ; 5 uses
  %i.pm = icmp sgt i64 %.fr626, 0                 ; 3 uses
  br i1 %i.pm, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.bq
  %i.pn = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0528.0, i64 %i.pk ; 2 uses
  %min.iters.check = icmp slt i64 %.fr626, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %.sroa.speculated, 124         ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %i.po = shl nuw <2 x i64> splat (i64 1), %vec.ind
  %i.pp = shl nuw <2 x i64> splat (i64 4), %vec.ind
  %i.pq = getelementptr inbounds nuw [8 x i8], ptr %i.pn, i64 %index ; 3 uses
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pq, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.pq, align 8, !tbaa !105
  %wide.load814 = load <2 x i64>, ptr %i.pr, align 8, !tbaa !105
  %i.ps = or <2 x i64> %wide.load, %i.po
  %i.pt = or <2 x i64> %wide.load814, %i.pp
  store <2 x i64> %i.ps, ptr %i.pq, align 8, !tbaa !105
  store <2 x i64> %i.pt, ptr %i.pr, align 8, !tbaa !105
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.pu = icmp eq i64 %index.next, %n.vec
  br i1 %i.pu, label %middle.block, label %vector.body, !llvm.loop !982

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.sroa.speculated, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %.035609.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %bb.bq
  %i.pv = load ptr, ptr %i.md, align 8, !tbaa !137
  %i.pw = load ptr, ptr %i.mc, align 8, !tbaa !47 ; 2 uses
  %.not.i.i.i.not = icmp eq ptr %i.pv, %i.pw
  br i1 %.not.i.i.i.not, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %._crit_edge
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.784, i64 noundef 0, i64 noundef 0) #37
          to label %.noexc316 unwind label %.loopexit.split-lp586

.noexc316:                                        ; preds = %bb.br
  unreachable

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.035609 = phi i64 [ %i.qb, %scalar.ph ], [ %.035609.ph, %scalar.ph.preheader ] ; 3 uses
  %i.px = shl nuw i64 1, %.035609
  %i.py = getelementptr inbounds nuw [8 x i8], ptr %i.pn, i64 %.035609 ; 2 uses
  %i.pz = load i64, ptr %i.py, align 8, !tbaa !105
  %i.qa = or i64 %i.pz, %i.px
  store i64 %i.qa, ptr %i.py, align 8, !tbaa !105
  %i.qb = add nuw nsw i64 %.035609, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.qb, %.sroa.speculated
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !983

bb.bs:                                            ; preds = %._crit_edge
  %i.qc = load ptr, ptr %i.pw, align 8, !tbaa !145
  invoke void @_ZN6casadi17JacSparsityTraitsILb1EE2spEPKNS_16FunctionInternalEPPKyPPyPxS8_Pv(ptr noundef nonnull %1, ptr noundef %.sroa.0564.0, ptr noundef %.sroa.0557.0, ptr noundef %.sroa.0550.0, ptr noundef %.sroa.0544.0, ptr noundef %i.qc)
          to label %.preheader579 unwind label %.loopexit585

.preheader579:                                    ; preds = %bb.bs
  br i1 %i.cg, label %.preheader578, label %.lr.ph614

.lr.ph614:                                        ; preds = %.preheader579
  br i1 %i.pm, label %.lr.ph614.split.us, label %._crit_edge620

.lr.ph614.split.us:                               ; preds = %.lr.ph614, %..loopexit_crit_edge.us
  %storemerge612.us = phi i64 [ %i.rv, %..loopexit_crit_edge.us ], [ 0, %.lr.ph614 ] ; 4 uses
  %i.qd = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0519.0, i64 %storemerge612.us
  %i.qe = load i64, ptr %i.qd, align 8, !tbaa !105 ; 2 uses
  %.not111.us = icmp eq i64 %i.qe, 0
  br i1 %.not111.us, label %..loopexit_crit_edge.us, label %.preheader.us

.preheader.us:                                    ; preds = %.lr.ph614.split.us, %_ZNSt6vectorIxSaIxEE9push_backEOx.exit.us
  %.034610.us = phi i64 [ %i.ru, %_ZNSt6vectorIxSaIxEE9push_backEOx.exit.us ], [ 0, %.lr.ph614.split.us ] ; 3 uses
  %i.qf = shl nuw i64 1, %.034610.us
  %i.qg = and i64 %i.qf, %i.qe
  %.not112.us = icmp eq i64 %i.qg, 0
  br i1 %.not112.us, label %_ZNSt6vectorIxSaIxEE9push_backEOx.exit.us, label %bb.bt

bb.bt:                                            ; preds = %.preheader.us
  %i.qh = load ptr, ptr %i.mi, align 8, !tbaa !829 ; 4 uses
  %i.qi = load ptr, ptr %i.mj, align 8, !tbaa !500
  %.not.i317.us = icmp eq ptr %i.qh, %i.qi
  br i1 %.not.i317.us, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  store i64 %storemerge612.us, ptr %i.qh, align 8, !tbaa !105
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qh, i64 8
  store ptr %i.qj, ptr %i.mi, align 8, !tbaa !829
  br label %_ZNSt6vectorIxSaIxEE9push_backERKx.exit.us

bb.bv:                                            ; preds = %bb.bt
  %i.qk = load ptr, ptr %13, align 8, !tbaa !497  ; 4 uses
  %i.ql = ptrtoint ptr %i.qh to i64
  %i.qm = ptrtoint ptr %i.qk to i64
  %i.qn = sub i64 %i.ql, %i.qm                    ; 6 uses
  %i.qo = icmp eq i64 %i.qn, 9223372036854775800
  br i1 %i.qo, label %.split.us, label %_ZNKSt6vectorIxSaIxEE12_M_check_lenEmPKc.exit.i.i.us

_ZNKSt6vectorIxSaIxEE12_M_check_lenEmPKc.exit.i.i.us: ; preds = %bb.bv
  %i.qp = ashr exact i64 %i.qn, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.us = call i64 @llvm.umax.i64(i64 %i.qp, i64 1)
  %i.qq = add nsw i64 %.sroa.speculated.i.i.i.us, %i.qp ; 2 uses
  %i.qr = icmp ult i64 %i.qq, %i.qp
  %i.qs = call i64 @llvm.umin.i64(i64 %i.qq, i64 1152921504606846975)
  %i.qt = select i1 %i.qr, i64 1152921504606846975, i64 %i.qs ; 3 uses
  %.not.i.i.i318.us = icmp ne i64 %i.qt, 0
  call void @llvm.assume(i1 %.not.i.i.i318.us)
  %i.qu = shl nuw nsw i64 %i.qt, 3
  %i.qv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.qu) #41
          to label %.noexc320.us unwind label %.loopexit572.split.us ; 4 uses

.noexc320.us:                                     ; preds = %_ZNKSt6vectorIxSaIxEE12_M_check_lenEmPKc.exit.i.i.us
  %i.qw = getelementptr inbounds i8, ptr %i.qv, i64 %i.qn ; 2 uses
  store i64 %storemerge612.us, ptr %i.qw, align 8, !tbaa !105
  %i.qx = icmp sgt i64 %i.qn, 0
  br i1 %i.qx, label %bb.bw, label %_ZNSt6vectorIxSaIxEE11_S_relocateEPxS2_S2_RS0_.exit16.i.i.us

bb.bw:                                            ; preds = %.noexc320.us
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.qv, ptr align 8 %i.qk, i64 %i.qn, i1 false)
  br label %_ZNSt6vectorIxSaIxEE11_S_relocateEPxS2_S2_RS0_.exit16.i.i.us

_ZNSt6vectorIxSaIxEE11_S_relocateEPxS2_S2_RS0_.exit16.i.i.us: ; preds = %bb.bw, %.noexc320.us
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qw, i64 8
  %.not.i17.i.i.us = icmp eq ptr %i.qk, null
  br i1 %.not.i17.i.i.us, label %_ZNSt6vectorIxSaIxEE17_M_realloc_insertIJRKxEEEvN9__gnu_cxx17__normal_iteratorIPxS1_EEDpOT_.exit.i.us, label %bb.bx

bb.bx:                                            ; preds = %_ZNSt6vectorIxSaIxEE11_S_relocateEPxS2_S2_RS0_.exit16.i.i.us
  call void @_ZdlPvm(ptr noundef nonnull %i.qk, i64 noundef %i.qn) #39
  br label %_ZNSt6vectorIxSaIxEE17_M_realloc_insertIJRKxEEEvN9__gnu_cxx17__normal_iteratorIPxS1_EEDpOT_.exit.i.us

_ZNSt6vectorIxSaIxEE17_M_realloc_insertIJRKxEEEvN9__gnu_cxx17__normal_iteratorIPxS1_EEDpOT_.exit.i.us: ; preds = %bb.bx, %_ZNSt6vectorIxSaIxEE11_S_relocateEPxS2_S2_RS0_.exit16.i.i.us
  store ptr %i.qv, ptr %13, align 8, !tbaa !497
  store ptr %i.qy, ptr %i.mi, align 8, !tbaa !829
  %i.qz = getelementptr inbounds nuw [8 x i8], ptr %i.qv, i64 %i.qt
  store ptr %i.qz, ptr %i.mj, align 8, !tbaa !500
  br label %_ZNSt6vectorIxSaIxEE9push_backERKx.exit.us

_ZNSt6vectorIxSaIxEE9push_backERKx.exit.us:       ; preds = %_ZNSt6vectorIxSaIxEE17_M_realloc_insertIJRKxEEEvN9__gnu_cxx17__normal_iteratorIPxS1_EEDpOT_.exit.i.us, %bb.bu
  %i.ra = add nuw nsw i64 %.034610.us, %i.pk      ; 2 uses
  %i.rb = load ptr, ptr %i.mk, align 8, !tbaa !829 ; 4 uses
  %i.rc = load ptr, ptr %i.ml, align 8, !tbaa !500
  %.not.i.i.us = icmp eq ptr %i.rb, %i.rc
  br i1 %.not.i.i.us, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %_ZNSt6vectorIxSaIxEE9push_backERKx.exit.us
  store i64 %i.ra, ptr %i.rb, align 8, !tbaa !105
  %i.rd = getelementptr inbounds nuw i8, ptr %i.rb, i64 8
  store ptr %i.rd, ptr %i.mk, align 8, !tbaa !829
  br label %_ZNSt6vectorIxSaIxEE9push_backEOx.exit.us

bb.bz:                                            ; preds = %_ZNSt6vectorIxSaIxEE9push_backERKx.exit.us
  %i.re = load ptr, ptr %14, align 8, !tbaa !497  ; 4 uses
  %i.rf = ptrtoint ptr %i.rb to i64
  %i.rg = ptrtoint ptr %i.re to i64
  %i.rh = sub i64 %i.rf, %i.rg                    ; 6 uses
  %i.ri = icmp eq i64 %i.rh, 9223372036854775800
  br i1 %i.ri, label %.split616.us, label %_ZNKSt6vectorIxSaIxEE12_M_check_lenEmPKc.exit.i.i.i.us

_ZNKSt6vectorIxSaIxEE12_M_check_lenEmPKc.exit.i.i.i.us: ; preds = %bb.bz
  %i.rj = ashr exact i64 %i.rh, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i.us = call i64 @llvm.umax.i64(i64 %i.rj, i64 1)
  %i.rk = add nsw i64 %.sroa.speculated.i.i.i.i.us, %i.rj ; 2 uses
  %i.rl = icmp ult i64 %i.rk, %i.rj
  %i.rm = call i64 @llvm.umin.i64(i64 %i.rk, i64 1152921504606846975)
  %i.rn = select i1 %i.rl, i64 1152921504606846975, i64 %i.rm ; 3 uses
  %.not.i.i.i.i321.us = icmp ne i64 %i.rn, 0
  call void @llvm.assume(i1 %.not.i.i.i.i321.us)
  %i.ro = shl nuw nsw i64 %i.rn, 3
  %i.rp = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ro) #41
          to label %.noexc323.us unwind label %.loopexit573.split.us ; 4 uses

.noexc323.us:                                     ; preds = %_ZNKSt6vectorIxSaIxEE12_M_check_lenEmPKc.exit.i.i.i.us
  %i.rq = getelementptr inbounds i8, ptr %i.rp, i64 %i.rh ; 2 uses
  store i64 %i.ra, ptr %i.rq, align 8, !tbaa !105
  %i.rr = icmp sgt i64 %i.rh, 0
  br i1 %i.rr, label %bb.ca, label %_ZNSt6vectorIxSaIxEE11_S_relocateEPxS2_S2_RS0_.exit16.i.i.i.us

bb.ca:                                            ; preds = %.noexc323.us
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.rp, ptr align 8 %i.re, i64 %i.rh, i1 false)
  br label %_ZNSt6vectorIxSaIxEE11_S_relocateEPxS2_S2_RS0_.exit16.i.i.i.us

_ZNSt6vectorIxSaIxEE11_S_relocateEPxS2_S2_RS0_.exit16.i.i.i.us: ; preds = %bb.ca, %.noexc323.us
  %i.rs = getelementptr inbounds nuw i8, ptr %i.rq, i64 8
  %.not.i17.i.i.i.us = icmp eq ptr %i.re, null
  br i1 %.not.i17.i.i.i.us, label %_ZNSt6vectorIxSaIxEE17_M_realloc_insertIJxEEEvN9__gnu_cxx17__normal_iteratorIPxS1_EEDpOT_.exit.i.i.us, label %bb.cb

bb.cb:                                            ; preds = %_ZNSt6vectorIxSaIxEE11_S_relocateEPxS2_S2_RS0_.exit16.i.i.i.us
  call void @_ZdlPvm(ptr noundef nonnull %i.re, i64 noundef %i.rh) #39
  br label %_ZNSt6vectorIxSaIxEE17_M_realloc_insertIJxEEEvN9__gnu_cxx17__normal_iteratorIPxS1_EEDpOT_.exit.i.i.us

_ZNSt6vectorIxSaIxEE17_M_realloc_insertIJxEEEvN9__gnu_cxx17__normal_iteratorIPxS1_EEDpOT_.exit.i.i.us: ; preds = %bb.cb, %_ZNSt6vectorIxSaIxEE11_S_relocateEPxS2_S2_RS0_.exit16.i.i.i.us
  store ptr %i.rp, ptr %14, align 8, !tbaa !497
  store ptr %i.rs, ptr %i.mk, align 8, !tbaa !829
  %i.rt = getelementptr inbounds nuw [8 x i8], ptr %i.rp, i64 %i.rn
  store ptr %i.rt, ptr %i.ml, align 8, !tbaa !500
  br label %_ZNSt6vectorIxSaIxEE9push_backEOx.exit.us

_ZNSt6vectorIxSaIxEE9push_backEOx.exit.us:        ; preds = %_ZNSt6vectorIxSaIxEE17_M_realloc_insertIJxEEEvN9__gnu_cxx17__normal_iteratorIPxS1_EEDpOT_.exit.i.i.us, %bb.by, %.preheader.us
  %i.ru = add nuw nsw i64 %.034610.us, 1          ; 2 uses
  %exitcond628.not = icmp eq i64 %i.ru, %.sroa.speculated
  br i1 %exitcond628.not, label %..loopexit_crit_edge.us, label %.preheader.us, !llvm.loop !984

..loopexit_crit_edge.us:                          ; preds = %_ZNSt6vectorIxSaIxEE9push_backEOx.exit.us, %.lr.ph614.split.us
  %i.rv = add nuw i64 %storemerge612.us, 1        ; 2 uses
  %exitcond629.not = icmp eq i64 %i.rv, %umax
  br i1 %exitcond629.not, label %.preheader578, label %.lr.ph614.split.us, !llvm.loop !985

.loopexit572.split.us:                            ; preds = %_ZNKSt6vectorIxSaIxEE12_M_check_lenEmPKc.exit.i.i.us
  %lpad.loopexit.us = landingpad { ptr, i32 }
          cleanup
  br label %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit

.loopexit573.split.us:                            ; preds = %_ZNKSt6vectorIxSaIxEE12_M_check_lenEmPKc.exit.i.i.i.us
  %lpad.loopexit575.us = landingpad { ptr, i32 }
          cleanup
  br label %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit

.preheader578:                                    ; preds = %..loopexit_crit_edge.us, %.preheader579
  br i1 %i.pm, label %.lr.ph619, label %._crit_edge620

.lr.ph619:                                        ; preds = %.preheader578
  %31 = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0528.0, i64 %i.pk
  %i.rw = shl nuw nsw i64 %.sroa.speculated, 3
  call void @llvm.memset.p0.i64(ptr align 8 %31, i8 0, i64 %i.rw, i1 false), !tbaa !105
  br label %._crit_edge620

.loopexit585:                                     ; preds = %bb.bs
  %lpad.loopexit587 = landingpad { ptr, i32 }
          cleanup
  br label %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit

.loopexit.split-lp586:                            ; preds = %bb.br
  %lpad.loopexit.split-lp588 = landingpad { ptr, i32 }
          cleanup
  br label %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit

.split.us:                                        ; preds = %bb.bv
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.798) #37
          to label %.noexc319 unwind label %.loopexit.split-lp

.noexc319:                                        ; preds = %.split.us
  unreachable

.split616.us:                                     ; preds = %bb.bz
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.798) #37
          to label %.noexc322 unwind label %.loopexit.split-lp574

.noexc322:                                        ; preds = %.split616.us
  unreachable

.loopexit.split-lp:                               ; preds = %.split.us
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit

.loopexit.split-lp574:                            ; preds = %.split616.us
  %lpad.loopexit.split-lp576 = landingpad { ptr, i32 }
          cleanup
  br label %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit

._crit_edge620:                                   ; preds = %.lr.ph614, %.lr.ph619, %.preheader578
  %i.rx = add nuw nsw i64 %.036621, 1             ; 2 uses
  %i.ry = load i64, ptr %i.d, align 8, !tbaa !105 ; 2 uses
  %i.rz = icmp slt i64 %i.rx, %i.ry
  br i1 %i.rz, label %bb.az, label %._crit_edge624, !llvm.loop !986

bb.cc:                                            ; preds = %._crit_edge624
  %i.sa = load i8, ptr %i.cp, align 8, !tbaa !209, !range !163, !noundef !164
  %i.sb = trunc nuw i8 %i.sa to i1
  br i1 %i.sb, label %bb.cd, label %bb.dy

bb.cd:                                            ; preds = %bb.cc
  %i.sc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6casadi4uoutEv()
          to label %bb.ce unwind label %bb.dj

bb.ce:                                            ; preds = %bb.cd
  %i.sd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6casadi14message_prefixERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.sc)
          to label %bb.cf unwind label %bb.dj     ; 2 uses

bb.cf:                                            ; preds = %bb.ce
  %i.se = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.sd, ptr noundef nonnull @.str.150, i64 noundef 10)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit325 unwind label %bb.dj ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit325: ; preds = %bb.cf
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #38
  %i.sf = invoke { i64, i64 } @_ZNK6casadi8Sparsity4sizeEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.cg unwind label %bb.dk     ; 2 uses

bb.cg:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit325
  %i.sg = extractvalue { i64, i64 } %i.sf, 0
  store i64 %i.sg, ptr %26, align 8
  %i.sh = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.si = extractvalue { i64, i64 } %i.sf, 1
  store i64 %i.si, ptr %i.sh, align 8
  invoke void @_ZN6casadi3strIxxEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt4pairIT_T0_Eb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %25, ptr noundef nonnull align 8 dereferenceable(16) %26, i1 noundef zeroext false)
          to label %bb.ch unwind label %bb.dk

bb.ch:                                            ; preds = %bb.cg
  %i.sj = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %25, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.275, i64 noundef 44)
          to label %.noexc330 unwind label %bb.dl ; 6 uses

.noexc330:                                        ; preds = %bb.ch
  %i.sk = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 7 uses
  store ptr %i.sk, ptr %24, align 8, !tbaa !8, !alias.scope !987
  %i.sl = load ptr, ptr %i.sj, align 8, !tbaa !14 ; 2 uses
  %i.sm = getelementptr inbounds nuw i8, ptr %i.sj, i64 16 ; 5 uses
  %i.sn = icmp eq ptr %i.sl, %i.sm
  br i1 %i.sn, label %bb.ci, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i326

bb.ci:                                            ; preds = %.noexc330
  %i.so = getelementptr inbounds nuw i8, ptr %i.sj, i64 8
  %i.sp = load i64, ptr %i.so, align 8, !tbaa !17 ; 3 uses
  %i.sq = icmp ult i64 %i.sp, 16
  call void @llvm.assume(i1 %i.sq)
  %i.sr = add nuw nsw i64 %i.sp, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.sk, ptr noundef nonnull align 8 dereferenceable(1) %i.sm, i64 %i.sr, i1 false)
  br label %bb.cj

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i326: ; preds = %.noexc330
  store ptr %i.sl, ptr %24, align 8, !tbaa !14, !alias.scope !987
  %i.ss = load i64, ptr %i.sm, align 8, !tbaa !16
  store i64 %i.ss, ptr %i.sk, align 8, !tbaa !16, !alias.scope !987
  %.phi.trans.insert.i327 = getelementptr inbounds nuw i8, ptr %i.sj, i64 8
  %.pre.i328 = load i64, ptr %.phi.trans.insert.i327, align 8, !tbaa !17
  br label %bb.cj

bb.cj:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i326, %bb.ci
  %i.st = phi i64 [ %i.sp, %bb.ci ], [ %.pre.i328, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i326 ]
  %i.su = getelementptr inbounds nuw i8, ptr %i.sj, i64 8
  %i.sv = getelementptr inbounds nuw i8, ptr %24, i64 8 ; 2 uses
  store i64 %i.st, ptr %i.sv, align 8, !tbaa !17, !alias.scope !987
  store ptr %i.sm, ptr %i.sj, align 8, !tbaa !14
  store i64 0, ptr %i.su, align 8, !tbaa !17
  store i8 0, ptr %i.sm, align 8, !tbaa !16
  call void @llvm.experimental.noalias.scope.decl(metadata !990)
  %i.sw = load i64, ptr %i.sv, align 8, !tbaa !17, !noalias !990
  %i.sx = and i64 %i.sw, -2
  %i.sy = icmp eq i64 %i.sx, 4611686018427387902
  br i1 %i.sy, label %bb.ck, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i331

bb.ck:                                            ; preds = %bb.cj
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.790) #37
          to label %.noexc336 unwind label %bb.dm

.noexc336:                                        ; preds = %bb.ck
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i331: ; preds = %bb.cj
  %i.sz = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %24, ptr noundef nonnull @.str.222, i64 noundef 2)
          to label %.noexc337 unwind label %bb.dm ; 6 uses

.noexc337:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i331
  %i.ta = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 9 uses
  store ptr %i.ta, ptr %23, align 8, !tbaa !8, !alias.scope !990
  %i.tb = load ptr, ptr %i.sz, align 8, !tbaa !14 ; 2 uses
  %i.tc = getelementptr inbounds nuw i8, ptr %i.sz, i64 16 ; 5 uses
  %i.td = icmp eq ptr %i.tb, %i.tc
  br i1 %i.td, label %bb.cl, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i332

bb.cl:                                            ; preds = %.noexc337
  %i.te = getelementptr inbounds nuw i8, ptr %i.sz, i64 8
  %i.tf = load i64, ptr %i.te, align 8, !tbaa !17 ; 3 uses
  %i.tg = icmp ult i64 %i.tf, 16
  call void @llvm.assume(i1 %i.tg)
  %i.th = add nuw nsw i64 %i.tf, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ta, ptr noundef nonnull align 8 dereferenceable(1) %i.tc, i64 %i.th, i1 false)
  br label %bb.cm

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i332: ; preds = %.noexc337
  store ptr %i.tb, ptr %23, align 8, !tbaa !14, !alias.scope !990
  %i.ti = load i64, ptr %i.tc, align 8, !tbaa !16
  store i64 %i.ti, ptr %i.ta, align 8, !tbaa !16, !alias.scope !990
  %.phi.trans.insert.i333 = getelementptr inbounds nuw i8, ptr %i.sz, i64 8
  %.pre.i334 = load i64, ptr %.phi.trans.insert.i333, align 8, !tbaa !17
  br label %bb.cm

bb.cm:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i332, %bb.cl
  %i.tj = phi i64 [ %i.tf, %bb.cl ], [ %.pre.i334, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i332 ]
  %i.tk = getelementptr inbounds nuw i8, ptr %i.sz, i64 8
  %i.tl = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 2 uses
  store i64 %i.tj, ptr %i.tl, align 8, !tbaa !17, !alias.scope !990
  store ptr %i.tc, ptr %i.sz, align 8, !tbaa !14
  store i64 0, ptr %i.tk, align 8, !tbaa !17
  store i8 0, ptr %i.tc, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #38
  %i.tm = invoke noundef i64 @_ZNK6casadi8Sparsity3nnzEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.cn unwind label %bb.dn

bb.cn:                                            ; preds = %bb.cm
  store i64 %i.tm, ptr %i.g, align 8, !tbaa !105
  invoke void @_ZN6casadi3strIxEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %27, ptr noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %bb.co unwind label %bb.dn

bb.co:                                            ; preds = %bb.cn
  call void @llvm.experimental.noalias.scope.decl(metadata !993)
  %i.tn = load i64, ptr %i.tl, align 8, !tbaa !17, !noalias !993 ; 4 uses
  %i.to = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.tp = load i64, ptr %i.to, align 8, !tbaa !17, !noalias !993 ; 4 uses
  %i.tq = add i64 %i.tp, %i.tn                    ; 2 uses
  %i.tr = load ptr, ptr %23, align 8, !tbaa !14, !noalias !993 ; 2 uses
  %i.ts = icmp eq ptr %i.tr, %i.ta
  br i1 %i.ts, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i351, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i339

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i351: ; preds = %bb.co
  %i.tt = icmp ult i64 %i.tn, 16
  call void @llvm.assume(i1 %i.tt)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i340

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i339: ; preds = %bb.co
  %i.tu = load i64, ptr %i.ta, align 8, !tbaa !16, !noalias !993
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i340

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i340: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i339, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i351
  %i.tv = phi i64 [ %i.tu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i339 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i351 ]
  %i.tw = icmp ugt i64 %i.tq, %i.tv
  br i1 %i.tw, label %bb.cp, label %bb.cr
end_hunk_0
begin_hunk_1_@_ZNK6casadi16FunctionInternal20get_jac_sparsity_genILb0EEENS_8SparsityExx:bb.a
          cleanup
  br label %bb.ax

bb.au:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit204
  %i.jz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit245

bb.av:                                            ; preds = %.noexc207
  %i.ka = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit242

bb.aw:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit212, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit210, %bb.al
  %i.kb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.kc = load ptr, ptr %11, align 8, !tbaa !14   ; 2 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.ke = icmp eq ptr %i.kc, %i.kd
  br i1 %i.ke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit242, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i240

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i240: ; preds = %bb.aw
  %i.kf = load i64, ptr %i.kd, align 8, !tbaa !16
  %i.kg = add i64 %i.kf, 1
  call void @_ZdlPvm(ptr noundef %i.kc, i64 noundef %i.kg) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit242

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit242: ; preds = %bb.aw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i240, %bb.av
  %.pn = phi { ptr, i32 } [ %i.ka, %bb.av ], [ %i.kb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i240 ], [ %i.kb, %bb.aw ] ; 2 uses
  %i.kh = load ptr, ptr %12, align 8, !tbaa !14   ; 2 uses
  %i.ki = icmp eq ptr %i.kh, %i.hs
  br i1 %i.ki, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit245, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i243

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i243: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit242
  %i.kj = load i64, ptr %i.hs, align 8, !tbaa !16
  %i.kk = add i64 %i.kj, 1
  call void @_ZdlPvm(ptr noundef %i.kh, i64 noundef %i.kk) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit245

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit245: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit242, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i243, %bb.au
  %.pn.pn = phi { ptr, i32 } [ %i.jz, %bb.au ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i243 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit242 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #38
  br label %bb.ax

bb.ax:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit245, %bb.at
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit245 ], [ %i.jy, %bb.at ] ; 2 uses
  %i.kl = load ptr, ptr %4, align 8, !tbaa !14    ; 2 uses
  %i.km = icmp eq ptr %i.kl, %i.hc
  br i1 %i.km, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit248, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i246

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i246: ; preds = %bb.ax
  %i.kn = load i64, ptr %i.hc, align 8, !tbaa !16
  %i.ko = add i64 %i.kn, 1
  call void @_ZdlPvm(ptr noundef %i.kl, i64 noundef %i.ko) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit248

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit248: ; preds = %bb.ax, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i246, %bb.as
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.jx, %bb.as ], [ %.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i246 ], [ %.pn.pn.pn, %bb.ax ] ; 2 uses
  %i.kp = load ptr, ptr %5, align 8, !tbaa !14    ; 2 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.kr = icmp eq ptr %i.kp, %i.kq
  br i1 %i.kr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit251, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i249

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i249: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit248
  %i.ks = load i64, ptr %i.kq, align 8, !tbaa !16
  %i.kt = add i64 %i.ks, 1
  call void @_ZdlPvm(ptr noundef %i.kp, i64 noundef %i.kt) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit251

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit251: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit248, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i249, %bb.ar
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.jw, %bb.ar ], [ %.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i249 ], [ %.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit248 ] ; 2 uses
  %i.ku = load ptr, ptr %10, align 8, !tbaa !14   ; 2 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.kw = icmp eq ptr %i.ku, %i.kv
  br i1 %i.kw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit254, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i252

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i252: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit251
  %i.kx = load i64, ptr %i.kv, align 8, !tbaa !16
  %i.ky = add i64 %i.kx, 1
  call void @_ZdlPvm(ptr noundef %i.ku, i64 noundef %i.ky) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit254

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit254: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit251, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i252, %bb.aq
  %.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.jv, %bb.aq ], [ %.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i252 ], [ %.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit251 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #38
  %i.kz = load ptr, ptr %6, align 8, !tbaa !14    ; 2 uses
  %i.la = icmp eq ptr %i.kz, %i.es
  br i1 %i.la, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit257, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i255

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i255: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit254
  %i.lb = load i64, ptr %i.es, align 8, !tbaa !16
  %i.lc = add i64 %i.lb, 1
  call void @_ZdlPvm(ptr noundef %i.kz, i64 noundef %i.lc) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit257

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit257: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit254, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i255, %bb.ap
  %.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ju, %bb.ap ], [ %.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i255 ], [ %.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit254 ] ; 2 uses
  %i.ld = load ptr, ptr %7, align 8, !tbaa !14    ; 2 uses
  %i.le = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.lf = icmp eq ptr %i.ld, %i.le
  br i1 %i.lf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit260, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i258

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i258: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit257
  %i.lg = load i64, ptr %i.le, align 8, !tbaa !16
  %i.lh = add i64 %i.lg, 1
  call void @_ZdlPvm(ptr noundef %i.ld, i64 noundef %i.lh) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit260

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit260: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit257, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i258, %bb.ao
  %.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.jt, %bb.ao ], [ %.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i258 ], [ %.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit257 ] ; 2 uses
  %i.li = load ptr, ptr %9, align 8, !tbaa !14    ; 2 uses
  %i.lj = icmp eq ptr %i.li, %i.cy
  br i1 %i.lj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit263, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i261

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i261: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit260
  %i.lk = load i64, ptr %i.cy, align 8, !tbaa !16
  %i.ll = add i64 %i.lk, 1
  call void @_ZdlPvm(ptr noundef %i.li, i64 noundef %i.ll) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit263

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit263: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit260, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i261
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #38
  %i.lm = load ptr, ptr %8, align 8, !tbaa !14    ; 2 uses
  %i.ln = icmp eq ptr %i.lm, %i.df
  br i1 %i.ln, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit266, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i264

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i264: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit263
  %i.lo = load i64, ptr %i.df, align 8, !tbaa !16
  %i.lp = add i64 %i.lo, 1
  call void @_ZdlPvm(ptr noundef %i.lm, i64 noundef %i.lp) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit266

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit266: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit263, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i264, %bb.an
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.js, %bb.an ], [ %.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i264 ], [ %.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit263 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #38
  br label %bb.el

bb.ay:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit239, %_ZNSt6vectorIySaIyEEC2EmRKyRKS0_.exit166
  %i.lq = phi i64 [ %.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit239 ], [ %spec.select, %_ZNSt6vectorIySaIyEEC2EmRKyRKS0_.exit166 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #38
  store i64 -10, ptr %i.f, align 8, !tbaa !105
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #38
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %13, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #38
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %14, i8 0, i64 24, i1 false)
  %i.lr = icmp sgt i64 %i.lq, 0
  br i1 %i.lr, label %.lr.ph634, label %._crit_edge635

.lr.ph634:                                        ; preds = %bb.ay
  %i.ls = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.lt = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 7 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 6 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.lx = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.ly = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 4 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 4 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.mb = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.mc = ptrtoint ptr %.0.i.i.i.i.i.i.i152 to i64
  %i.md = ptrtoint ptr %.sroa.0537.1 to i64
  %i.me = sub i64 %i.mc, %i.md
  %i.mf = ashr exact i64 %i.me, 3
  %i.mg = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 3 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 3 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 3 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 3 uses
  %umax = call i64 @llvm.umax.i64(i64 %i.mf, i64 1) ; 2 uses
  %i.mk = shl nuw i64 %umax, 3
  br label %bb.az

._crit_edge635.loopexit:                          ; preds = %._crit_edge631
  %i.ml = load <2 x ptr>, ptr %14, align 16, !tbaa !826
  %.pre645 = load ptr, ptr %i.mj, align 16, !tbaa !500
  %i.mm = load <2 x ptr>, ptr %13, align 16, !tbaa !826
  %.pre650 = load ptr, ptr %i.mh, align 16, !tbaa !500
  br label %._crit_edge635

._crit_edge635:                                   ; preds = %._crit_edge635.loopexit, %bb.ay
  %i.mn = phi ptr [ %.pre650, %._crit_edge635.loopexit ], [ null, %bb.ay ]
  %i.mo = phi ptr [ %.pre645, %._crit_edge635.loopexit ], [ null, %bb.ay ]
  %i.mp = phi <2 x ptr> [ %i.mm, %._crit_edge635.loopexit ], [ splat (ptr null), %bb.ay ]
  %i.mq = phi <2 x ptr> [ %i.ml, %._crit_edge635.loopexit ], [ splat (ptr null), %bb.ay ]
  %i.mr = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  store <2 x ptr> %i.mp, ptr %14, align 16, !tbaa !826
  %i.ms = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  store ptr %i.mn, ptr %i.mr, align 16, !tbaa !500
  store <2 x ptr> %i.mq, ptr %13, align 16, !tbaa !826
  store ptr %i.mo, ptr %i.ms, align 16, !tbaa !500
  invoke void @_ZN6casadi8Sparsity7tripletExxRKSt6vectorIxSaIxEES5_(ptr dead_on_unwind writable sret(%"class.casadi::Sparsity") align 8 %0, i64 noundef %i.ab, i64 noundef %i.r, ptr noundef nonnull align 8 dereferenceable(24) %13, ptr noundef nonnull align 8 dereferenceable(24) %14)
          to label %bb.cc unwind label %bb.di

bb.az:                                            ; preds = %.lr.ph634, %._crit_edge631
  %i.mt = phi i64 [ %i.lq, %.lr.ph634 ], [ %i.sf, %._crit_edge631 ]
  %.036632 = phi i64 [ 0, %.lr.ph634 ], [ %i.se, %._crit_edge631 ] ; 3 uses
  %i.mu = load i8, ptr %i.cn, align 8, !tbaa !209, !range !163, !noundef !164
  %i.mv = trunc nuw i8 %i.mu to i1
  br i1 %i.mv, label %bb.ba, label %bb.bq

bb.ba:                                            ; preds = %bb.az
  %i.mw = mul nuw nsw i64 %.036632, 100
  %i.mx = sdiv i64 %i.mw, %i.mt                   ; 2 uses
  %i.my = sdiv i64 %i.mx, 10
  %i.mz = load i64, ptr %i.f, align 8, !tbaa !105
  %i.na = sdiv i64 %i.mz, 10
  %i.nb = icmp sgt i64 %i.my, %i.na
  br i1 %i.nb, label %bb.bb, label %bb.bq

bb.bb:                                            ; preds = %bb.ba
  store i64 %i.mx, ptr %i.f, align 8, !tbaa !105
  %i.nc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6casadi4uoutEv()
          to label %bb.bc unwind label %bb.bj

bb.bc:                                            ; preds = %bb.bb
  %i.nd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6casadi14message_prefixERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.nc)
          to label %bb.bd unwind label %bb.bj     ; 2 uses

bb.bd:                                            ; preds = %bb.bc
  %i.ne = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.nd, ptr noundef nonnull @.str.150, i64 noundef 10)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit268 unwind label %bb.bj ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit268: ; preds = %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #38
  invoke void @_ZN6casadi3strIxEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %16, ptr noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %bb.be unwind label %bb.bk

bb.be:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit268
  call void @llvm.experimental.noalias.scope.decl(metadata !1017)
  %i.nf = load i64, ptr %i.ls, align 8, !tbaa !17, !noalias !1017
  %i.ng = and i64 %i.nf, -2
  %i.nh = icmp eq i64 %i.ng, 4611686018427387902
  br i1 %i.nh, label %bb.bf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i269

bb.bf:                                            ; preds = %bb.be
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.790) #37
          to label %.noexc274 unwind label %.loopexit.split-lp592

.noexc274:                                        ; preds = %bb.bf
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i269: ; preds = %bb.be
  %i.ni = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull @.str.807, i64 noundef 2)
          to label %.noexc275 unwind label %.loopexit591 ; 6 uses

.noexc275:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i269
  store ptr %i.lt, ptr %15, align 8, !tbaa !8, !alias.scope !1017
  %i.nj = load ptr, ptr %i.ni, align 8, !tbaa !14 ; 2 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %i.ni, i64 16 ; 5 uses
  %i.nl = icmp eq ptr %i.nj, %i.nk
  br i1 %i.nl, label %bb.bg, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i270

bb.bg:                                            ; preds = %.noexc275
  %i.nm = getelementptr inbounds nuw i8, ptr %i.ni, i64 8
  %i.nn = load i64, ptr %i.nm, align 8, !tbaa !17 ; 3 uses
  %i.no = icmp ult i64 %i.nn, 16
  call void @llvm.assume(i1 %i.no)
  %i.np = add nuw nsw i64 %i.nn, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.lt, ptr noundef nonnull align 8 dereferenceable(1) %i.nk, i64 %i.np, i1 false)
  br label %bb.bh

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i270: ; preds = %.noexc275
  store ptr %i.nj, ptr %15, align 8, !tbaa !14, !alias.scope !1017
  %i.nq = load i64, ptr %i.nk, align 8, !tbaa !16
  store i64 %i.nq, ptr %i.lt, align 8, !tbaa !16, !alias.scope !1017
  %.phi.trans.insert.i271 = getelementptr inbounds nuw i8, ptr %i.ni, i64 8
  %.pre.i272 = load i64, ptr %.phi.trans.insert.i271, align 8, !tbaa !17
  br label %bb.bh

bb.bh:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i270, %bb.bg
  %i.nr = phi i64 [ %i.nn, %bb.bg ], [ %.pre.i272, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i270 ]
  %i.ns = getelementptr inbounds nuw i8, ptr %i.ni, i64 8
  store i64 %i.nr, ptr %i.lu, align 8, !tbaa !17, !alias.scope !1017
  store ptr %i.nk, ptr %i.ni, align 8, !tbaa !14
  store i64 0, ptr %i.ns, align 8, !tbaa !17
  store i8 0, ptr %i.nk, align 8, !tbaa !16
  %i.nt = load ptr, ptr %15, align 8, !tbaa !14
  %i.nu = load i64, ptr %i.lu, align 8, !tbaa !17
  %i.nv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.nd, ptr noundef %i.nt, i64 noundef %i.nu)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit278 unwind label %bb.bl ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit278: ; preds = %bb.bh
  %i.nw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.nv, ptr noundef nonnull @.str.18, i64 noundef 4)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit280 unwind label %bb.bl ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit280: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit278
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #38
  store ptr %i.lv, ptr %18, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #38
  store i64 68, ptr %i.b, align 8, !tbaa !12
  %i.nx = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc283 unwind label %bb.bm ; 3 uses

.noexc283:                                        ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit280
  store ptr %i.nx, ptr %18, align 8, !tbaa !14
  %i.ny = load i64, ptr %i.b, align 8, !tbaa !12  ; 3 uses
  store i64 %i.ny, ptr %i.lv, align 8, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(68) %i.nx, ptr noundef nonnull align 1 dereferenceable(68) @.str.808, i64 68, i1 false)
  store i64 %i.ny, ptr %i.lw, align 8, !tbaa !17
  %i.nz = getelementptr inbounds nuw i8, ptr %i.nx, i64 %i.ny
  store i8 0, ptr %i.nz, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #38
  invoke void @_ZN6casadi9trim_pathERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %17, ptr noundef nonnull align 8 dereferenceable(32) %18)
          to label %bb.bi unwind label %bb.bn

bb.bi:                                            ; preds = %.noexc283
  %i.oa = load ptr, ptr %17, align 8, !tbaa !14
  %i.ob = load i64, ptr %i.lx, align 8, !tbaa !17
  %i.oc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.nv, ptr noundef %i.oa, i64 noundef %i.ob)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit286 unwind label %bb.bo ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit286: ; preds = %bb.bi
  %i.od = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.oc, ptr noundef nonnull @.str.20, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit288 unwind label %bb.bo ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit288: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit286
  %i.oe = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.oc)
          to label %_ZNSolsEPFRSoS_E.exit290 unwind label %bb.bo ; 0 uses

_ZNSolsEPFRSoS_E.exit290:                         ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit288
  %i.of = load ptr, ptr %17, align 8, !tbaa !14   ; 2 uses
  %i.og = icmp eq ptr %i.of, %i.ly
  br i1 %i.og, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit293, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i291

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i291: ; preds = %_ZNSolsEPFRSoS_E.exit290
  %i.oh = load i64, ptr %i.ly, align 8, !tbaa !16
  %i.oi = add i64 %i.oh, 1
  call void @_ZdlPvm(ptr noundef %i.of, i64 noundef %i.oi) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit293

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit293: ; preds = %_ZNSolsEPFRSoS_E.exit290, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i291
  %i.oj = load ptr, ptr %18, align 8, !tbaa !14   ; 2 uses
  %i.ok = icmp eq ptr %i.oj, %i.lv
  br i1 %i.ok, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit296, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i294

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i294: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit293
  %i.ol = load i64, ptr %i.lv, align 8, !tbaa !16
  %i.om = add i64 %i.ol, 1
  call void @_ZdlPvm(ptr noundef %i.oj, i64 noundef %i.om) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit296

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit296: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit293, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i294
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #38
  %i.on = load ptr, ptr %15, align 8, !tbaa !14   ; 2 uses
  %i.oo = icmp eq ptr %i.on, %i.lt
  br i1 %i.oo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit299, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i297

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i297: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit296
  %i.op = load i64, ptr %i.lt, align 8, !tbaa !16
  %i.oq = add i64 %i.op, 1
  call void @_ZdlPvm(ptr noundef %i.on, i64 noundef %i.oq) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit299

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit299: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit296, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i297
  %i.or = load ptr, ptr %16, align 8, !tbaa !14   ; 2 uses
  %i.os = icmp eq ptr %i.or, %i.lz
  br i1 %i.os, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit302, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i300

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i300: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit299
  %i.ot = load i64, ptr %i.lz, align 8, !tbaa !16
  %i.ou = add i64 %i.ot, 1
  call void @_ZdlPvm(ptr noundef %i.or, i64 noundef %i.ou) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit302

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit302: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit299, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i300
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #38
  br label %bb.bq

bb.bj:                                            ; preds = %bb.bd, %bb.bc, %bb.bb
  %i.ov = landingpad { ptr, i32 }
          cleanup
  br label %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit

bb.bk:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit268
  %i.ow = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit314

.loopexit591:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i269
  %lpad.loopexit593 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit311

.loopexit.split-lp592:                            ; preds = %bb.bf
  %lpad.loopexit.split-lp594 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit311

bb.bl:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit278, %bb.bh
  %i.ox = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

bb.bm:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit280
  %i.oy = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit308

bb.bn:                                            ; preds = %.noexc283
  %i.oz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit305

bb.bo:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit288, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit286, %bb.bi
  %i.pa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.pb = load ptr, ptr %17, align 8, !tbaa !14   ; 2 uses
  %i.pc = icmp eq ptr %i.pb, %i.ly
  br i1 %i.pc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit305, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i303

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i303: ; preds = %bb.bo
  %i.pd = load i64, ptr %i.ly, align 8, !tbaa !16
  %i.pe = add i64 %i.pd, 1
  call void @_ZdlPvm(ptr noundef %i.pb, i64 noundef %i.pe) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit305

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit305: ; preds = %bb.bo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i303, %bb.bn
  %.pn104 = phi { ptr, i32 } [ %i.oz, %bb.bn ], [ %i.pa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i303 ], [ %i.pa, %bb.bo ] ; 2 uses
  %i.pf = load ptr, ptr %18, align 8, !tbaa !14   ; 2 uses
  %i.pg = icmp eq ptr %i.pf, %i.lv
  br i1 %i.pg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit308, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i306

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i306: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit305
  %i.ph = load i64, ptr %i.lv, align 8, !tbaa !16
  %i.pi = add i64 %i.ph, 1
  call void @_ZdlPvm(ptr noundef %i.pf, i64 noundef %i.pi) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit308

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit308: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit305, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i306, %bb.bm
  %.pn104.pn = phi { ptr, i32 } [ %i.oy, %bb.bm ], [ %.pn104, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i306 ], [ %.pn104, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit305 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #38
  br label %bb.bp

bb.bp:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit308, %bb.bl
  %.pn104.pn.pn = phi { ptr, i32 } [ %.pn104.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit308 ], [ %i.ox, %bb.bl ] ; 2 uses
  %i.pj = load ptr, ptr %15, align 8, !tbaa !14   ; 2 uses
  %i.pk = icmp eq ptr %i.pj, %i.lt
  br i1 %i.pk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit311, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i309

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i309: ; preds = %bb.bp
  %i.pl = load i64, ptr %i.lt, align 8, !tbaa !16
  %i.pm = add i64 %i.pl, 1
  call void @_ZdlPvm(ptr noundef %i.pj, i64 noundef %i.pm) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit311

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit311: ; preds = %bb.bp, %.loopexit591, %.loopexit.split-lp592, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i309
  %.pn104.pn.pn.pn = phi { ptr, i32 } [ %.pn104.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i309 ], [ %lpad.loopexit.split-lp594, %.loopexit.split-lp592 ], [ %lpad.loopexit593, %.loopexit591 ], [ %.pn104.pn.pn, %bb.bp ] ; 2 uses
  %i.pn = load ptr, ptr %16, align 8, !tbaa !14   ; 2 uses
  %i.po = icmp eq ptr %i.pn, %i.lz
  br i1 %i.po, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit314, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i312

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i312: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit311
  %i.pp = load i64, ptr %i.lz, align 8, !tbaa !16
  %i.pq = add i64 %i.pp, 1
  call void @_ZdlPvm(ptr noundef %i.pn, i64 noundef %i.pq) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit314

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit314: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit311, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i312, %bb.bk
  %.pn104.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ow, %bb.bk ], [ %.pn104.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i312 ], [ %.pn104.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit311 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #38
  br label %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit

bb.bq:                                            ; preds = %bb.ba, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit302, %bb.az
  %i.pr = shl nsw i64 %.036632, 6                 ; 4 uses
  %i.ps = sub i64 %i.cj, %i.pr
  %.fr637 = freeze i64 %i.ps                      ; 3 uses
  %.sroa.speculated = call i64 @llvm.smin.i64(i64 %.fr637, i64 64) ; 5 uses
  %i.pt = icmp sgt i64 %.fr637, 0                 ; 3 uses
  br i1 %i.pt, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.bq
  %i.pu = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0524.0, i64 %i.pr ; 2 uses
  %min.iters.check = icmp slt i64 %.fr637, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %.sroa.speculated, 124         ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %i.pv = shl nuw <2 x i64> splat (i64 1), %vec.ind
  %i.pw = shl nuw <2 x i64> splat (i64 4), %vec.ind
  %i.px = getelementptr inbounds nuw [8 x i8], ptr %i.pu, i64 %index ; 3 uses
  %i.py = getelementptr inbounds nuw i8, ptr %i.px, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.px, align 8, !tbaa !105
  %wide.load835 = load <2 x i64>, ptr %i.py, align 8, !tbaa !105
  %i.pz = or <2 x i64> %wide.load, %i.pv
  %i.qa = or <2 x i64> %wide.load835, %i.pw
  store <2 x i64> %i.pz, ptr %i.px, align 8, !tbaa !105
  store <2 x i64> %i.qa, ptr %i.py, align 8, !tbaa !105
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.qb = icmp eq i64 %index.next, %n.vec
  br i1 %i.qb, label %middle.block, label %vector.body, !llvm.loop !1020

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.sroa.speculated, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %.035620.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %bb.bq
  %i.qc = load ptr, ptr %i.mb, align 8, !tbaa !137
  %i.qd = load ptr, ptr %i.ma, align 8, !tbaa !47 ; 2 uses
  %.not.i.i.i.not = icmp eq ptr %i.qc, %i.qd
  br i1 %.not.i.i.i.not, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %._crit_edge
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.784, i64 noundef 0, i64 noundef 0) #37
          to label %.noexc319 unwind label %.loopexit.split-lp597

.noexc319:                                        ; preds = %bb.br
  unreachable

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.035620 = phi i64 [ %i.qi, %scalar.ph ], [ %.035620.ph, %scalar.ph.preheader ] ; 3 uses
  %i.qe = shl nuw i64 1, %.035620
  %i.qf = getelementptr inbounds nuw [8 x i8], ptr %i.pu, i64 %.035620 ; 2 uses
  %i.qg = load i64, ptr %i.qf, align 8, !tbaa !105
  %i.qh = or i64 %i.qg, %i.qe
  store i64 %i.qh, ptr %i.qf, align 8, !tbaa !105
  %i.qi = add nuw nsw i64 %.035620, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.qi, %.sroa.speculated
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !1021

bb.bs:                                            ; preds = %._crit_edge
  %i.qj = load ptr, ptr %i.qd, align 8, !tbaa !145
  invoke void @_ZN6casadi17JacSparsityTraitsILb0EE2spEPKNS_16FunctionInternalEPPyS6_PxS5_Pv(ptr noundef nonnull %1, ptr noundef %.sroa.0575.0, ptr noundef %.sroa.0568.0, ptr noundef %.sroa.0561.0, ptr noundef %.sroa.0556.0, ptr noundef %i.qj)
          to label %.preheader590 unwind label %.loopexit596

.preheader590:                                    ; preds = %bb.bs
  br i1 %i.bx, label %.preheader589, label %.lr.ph625

.lr.ph625:                                        ; preds = %.preheader590
  br i1 %i.pt, label %.lr.ph625.split.us, label %.preheader589.thread

.preheader589.thread:                             ; preds = %.lr.ph625
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %.sroa.0537.1, i8 0, i64 %i.mk, i1 false), !tbaa !105
  br label %._crit_edge631

.lr.ph625.split.us:                               ; preds = %.lr.ph625, %..loopexit_crit_edge.us
  %storemerge623.us = phi i64 [ %i.sc, %..loopexit_crit_edge.us ], [ 0, %.lr.ph625 ] ; 4 uses
  %i.qk = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0537.1, i64 %storemerge623.us ; 2 uses
  %i.ql = load i64, ptr %i.qk, align 8, !tbaa !105 ; 2 uses
  store i64 0, ptr %i.qk, align 8, !tbaa !105
  %.not111.us = icmp eq i64 %i.ql, 0
  br i1 %.not111.us, label %..loopexit_crit_edge.us, label %.preheader.us

.preheader.us:                                    ; preds = %.lr.ph625.split.us, %_ZNSt6vectorIxSaIxEE9push_backEOx.exit.us
  %.034621.us = phi i64 [ %i.sb, %_ZNSt6vectorIxSaIxEE9push_backEOx.exit.us ], [ 0, %.lr.ph625.split.us ] ; 3 uses
  %i.qm = shl nuw i64 1, %.034621.us
  %i.qn = and i64 %i.qm, %i.ql
  %.not112.us = icmp eq i64 %i.qn, 0
  br i1 %.not112.us, label %_ZNSt6vectorIxSaIxEE9push_backEOx.exit.us, label %bb.bt

bb.bt:                                            ; preds = %.preheader.us
  %i.qo = load ptr, ptr %i.mg, align 8, !tbaa !829 ; 4 uses
  %i.qp = load ptr, ptr %i.mh, align 16, !tbaa !500
  %.not.i320.us = icmp eq ptr %i.qo, %i.qp
  br i1 %.not.i320.us, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  store i64 %storemerge623.us, ptr %i.qo, align 8, !tbaa !105
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qo, i64 8
  store ptr %i.qq, ptr %i.mg, align 8, !tbaa !829
  br label %_ZNSt6vectorIxSaIxEE9push_backERKx.exit.us

bb.bv:                                            ; preds = %bb.bt
  %i.qr = load ptr, ptr %13, align 16, !tbaa !497 ; 4 uses
  %i.qs = ptrtoint ptr %i.qo to i64
  %i.qt = ptrtoint ptr %i.qr to i64
  %i.qu = sub i64 %i.qs, %i.qt                    ; 6 uses
  %i.qv = icmp eq i64 %i.qu, 9223372036854775800
  br i1 %i.qv, label %.split.us, label %_ZNKSt6vectorIxSaIxEE12_M_check_lenEmPKc.exit.i.i.us

_ZNKSt6vectorIxSaIxEE12_M_check_lenEmPKc.exit.i.i.us: ; preds = %bb.bv
  %i.qw = ashr exact i64 %i.qu, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.us = call i64 @llvm.umax.i64(i64 %i.qw, i64 1)
  %i.qx = add nsw i64 %.sroa.speculated.i.i.i.us, %i.qw ; 2 uses
  %i.qy = icmp ult i64 %i.qx, %i.qw
  %i.qz = call i64 @llvm.umin.i64(i64 %i.qx, i64 1152921504606846975)
  %i.ra = select i1 %i.qy, i64 1152921504606846975, i64 %i.qz ; 3 uses
  %.not.i.i.i321.us = icmp ne i64 %i.ra, 0
  call void @llvm.assume(i1 %.not.i.i.i321.us)
  %i.rb = shl nuw nsw i64 %i.ra, 3
  %i.rc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.rb) #41
          to label %.noexc323.us unwind label %.loopexit583.split.us ; 4 uses

.noexc323.us:                                     ; preds = %_ZNKSt6vectorIxSaIxEE12_M_check_lenEmPKc.exit.i.i.us
  %i.rd = getelementptr inbounds i8, ptr %i.rc, i64 %i.qu ; 2 uses
  store i64 %storemerge623.us, ptr %i.rd, align 8, !tbaa !105
  %i.re = icmp sgt i64 %i.qu, 0
  br i1 %i.re, label %bb.bw, label %_ZNSt6vectorIxSaIxEE11_S_relocateEPxS2_S2_RS0_.exit16.i.i.us

bb.bw:                                            ; preds = %.noexc323.us
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.rc, ptr align 8 %i.qr, i64 %i.qu, i1 false)
  br label %_ZNSt6vectorIxSaIxEE11_S_relocateEPxS2_S2_RS0_.exit16.i.i.us

_ZNSt6vectorIxSaIxEE11_S_relocateEPxS2_S2_RS0_.exit16.i.i.us: ; preds = %bb.bw, %.noexc323.us
  %i.rf = getelementptr inbounds nuw i8, ptr %i.rd, i64 8
  %.not.i17.i.i.us = icmp eq ptr %i.qr, null
  br i1 %.not.i17.i.i.us, label %_ZNSt6vectorIxSaIxEE17_M_realloc_insertIJRKxEEEvN9__gnu_cxx17__normal_iteratorIPxS1_EEDpOT_.exit.i.us, label %bb.bx

bb.bx:                                            ; preds = %_ZNSt6vectorIxSaIxEE11_S_relocateEPxS2_S2_RS0_.exit16.i.i.us
  call void @_ZdlPvm(ptr noundef nonnull %i.qr, i64 noundef %i.qu) #39
  br label %_ZNSt6vectorIxSaIxEE17_M_realloc_insertIJRKxEEEvN9__gnu_cxx17__normal_iteratorIPxS1_EEDpOT_.exit.i.us

_ZNSt6vectorIxSaIxEE17_M_realloc_insertIJRKxEEEvN9__gnu_cxx17__normal_iteratorIPxS1_EEDpOT_.exit.i.us: ; preds = %bb.bx, %_ZNSt6vectorIxSaIxEE11_S_relocateEPxS2_S2_RS0_.exit16.i.i.us
  store ptr %i.rc, ptr %13, align 16, !tbaa !497
  store ptr %i.rf, ptr %i.mg, align 8, !tbaa !829
  %i.rg = getelementptr inbounds nuw [8 x i8], ptr %i.rc, i64 %i.ra
  store ptr %i.rg, ptr %i.mh, align 16, !tbaa !500
  br label %_ZNSt6vectorIxSaIxEE9push_backERKx.exit.us

_ZNSt6vectorIxSaIxEE9push_backERKx.exit.us:       ; preds = %_ZNSt6vectorIxSaIxEE17_M_realloc_insertIJRKxEEEvN9__gnu_cxx17__normal_iteratorIPxS1_EEDpOT_.exit.i.us, %bb.bu
  %i.rh = add nuw nsw i64 %.034621.us, %i.pr      ; 2 uses
  %i.ri = load ptr, ptr %i.mi, align 8, !tbaa !829 ; 4 uses
  %i.rj = load ptr, ptr %i.mj, align 16, !tbaa !500
  %.not.i.i.us = icmp eq ptr %i.ri, %i.rj
  br i1 %.not.i.i.us, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %_ZNSt6vectorIxSaIxEE9push_backERKx.exit.us
  store i64 %i.rh, ptr %i.ri, align 8, !tbaa !105
  %i.rk = getelementptr inbounds nuw i8, ptr %i.ri, i64 8
  store ptr %i.rk, ptr %i.mi, align 8, !tbaa !829
  br label %_ZNSt6vectorIxSaIxEE9push_backEOx.exit.us

bb.bz:                                            ; preds = %_ZNSt6vectorIxSaIxEE9push_backERKx.exit.us
  %i.rl = load ptr, ptr %14, align 16, !tbaa !497 ; 4 uses
  %i.rm = ptrtoint ptr %i.ri to i64
  %i.rn = ptrtoint ptr %i.rl to i64
  %i.ro = sub i64 %i.rm, %i.rn                    ; 6 uses
  %i.rp = icmp eq i64 %i.ro, 9223372036854775800
  br i1 %i.rp, label %.split627.us, label %_ZNKSt6vectorIxSaIxEE12_M_check_lenEmPKc.exit.i.i.i.us

_ZNKSt6vectorIxSaIxEE12_M_check_lenEmPKc.exit.i.i.i.us: ; preds = %bb.bz
  %i.rq = ashr exact i64 %i.ro, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i.us = call i64 @llvm.umax.i64(i64 %i.rq, i64 1)
  %i.rr = add nsw i64 %.sroa.speculated.i.i.i.i.us, %i.rq ; 2 uses
  %i.rs = icmp ult i64 %i.rr, %i.rq
  %i.rt = call i64 @llvm.umin.i64(i64 %i.rr, i64 1152921504606846975)
  %i.ru = select i1 %i.rs, i64 1152921504606846975, i64 %i.rt ; 3 uses
  %.not.i.i.i.i324.us = icmp ne i64 %i.ru, 0
  call void @llvm.assume(i1 %.not.i.i.i.i324.us)
  %i.rv = shl nuw nsw i64 %i.ru, 3
  %i.rw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.rv) #41
          to label %.noexc326.us unwind label %.loopexit584.split.us ; 4 uses

.noexc326.us:                                     ; preds = %_ZNKSt6vectorIxSaIxEE12_M_check_lenEmPKc.exit.i.i.i.us
  %i.rx = getelementptr inbounds i8, ptr %i.rw, i64 %i.ro ; 2 uses
  store i64 %i.rh, ptr %i.rx, align 8, !tbaa !105
  %i.ry = icmp sgt i64 %i.ro, 0
  br i1 %i.ry, label %bb.ca, label %_ZNSt6vectorIxSaIxEE11_S_relocateEPxS2_S2_RS0_.exit16.i.i.i.us

bb.ca:                                            ; preds = %.noexc326.us
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.rw, ptr align 8 %i.rl, i64 %i.ro, i1 false)
  br label %_ZNSt6vectorIxSaIxEE11_S_relocateEPxS2_S2_RS0_.exit16.i.i.i.us

_ZNSt6vectorIxSaIxEE11_S_relocateEPxS2_S2_RS0_.exit16.i.i.i.us: ; preds = %bb.ca, %.noexc326.us
  %i.rz = getelementptr inbounds nuw i8, ptr %i.rx, i64 8
  %.not.i17.i.i.i.us = icmp eq ptr %i.rl, null
  br i1 %.not.i17.i.i.i.us, label %_ZNSt6vectorIxSaIxEE17_M_realloc_insertIJxEEEvN9__gnu_cxx17__normal_iteratorIPxS1_EEDpOT_.exit.i.i.us, label %bb.cb

bb.cb:                                            ; preds = %_ZNSt6vectorIxSaIxEE11_S_relocateEPxS2_S2_RS0_.exit16.i.i.i.us
  call void @_ZdlPvm(ptr noundef nonnull %i.rl, i64 noundef %i.ro) #39
  br label %_ZNSt6vectorIxSaIxEE17_M_realloc_insertIJxEEEvN9__gnu_cxx17__normal_iteratorIPxS1_EEDpOT_.exit.i.i.us

_ZNSt6vectorIxSaIxEE17_M_realloc_insertIJxEEEvN9__gnu_cxx17__normal_iteratorIPxS1_EEDpOT_.exit.i.i.us: ; preds = %bb.cb, %_ZNSt6vectorIxSaIxEE11_S_relocateEPxS2_S2_RS0_.exit16.i.i.i.us
  store ptr %i.rw, ptr %14, align 16, !tbaa !497
  store ptr %i.rz, ptr %i.mi, align 8, !tbaa !829
  %i.sa = getelementptr inbounds nuw [8 x i8], ptr %i.rw, i64 %i.ru
  store ptr %i.sa, ptr %i.mj, align 16, !tbaa !500
  br label %_ZNSt6vectorIxSaIxEE9push_backEOx.exit.us

_ZNSt6vectorIxSaIxEE9push_backEOx.exit.us:        ; preds = %_ZNSt6vectorIxSaIxEE17_M_realloc_insertIJxEEEvN9__gnu_cxx17__normal_iteratorIPxS1_EEDpOT_.exit.i.i.us, %bb.by, %.preheader.us
  %i.sb = add nuw nsw i64 %.034621.us, 1          ; 2 uses
  %exitcond639.not = icmp eq i64 %i.sb, %.sroa.speculated
  br i1 %exitcond639.not, label %..loopexit_crit_edge.us, label %.preheader.us, !llvm.loop !1022

..loopexit_crit_edge.us:                          ; preds = %_ZNSt6vectorIxSaIxEE9push_backEOx.exit.us, %.lr.ph625.split.us
  %i.sc = add nuw i64 %storemerge623.us, 1        ; 2 uses
  %exitcond641.not = icmp eq i64 %i.sc, %umax
  br i1 %exitcond641.not, label %.preheader589, label %.lr.ph625.split.us, !llvm.loop !1023

.loopexit583.split.us:                            ; preds = %_ZNKSt6vectorIxSaIxEE12_M_check_lenEmPKc.exit.i.i.us
  %lpad.loopexit.us = landingpad { ptr, i32 }
          cleanup
  br label %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit

.loopexit584.split.us:                            ; preds = %_ZNKSt6vectorIxSaIxEE12_M_check_lenEmPKc.exit.i.i.i.us
  %lpad.loopexit586.us = landingpad { ptr, i32 }
          cleanup
  br label %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit

.preheader589:                                    ; preds = %..loopexit_crit_edge.us, %.preheader590
  br i1 %i.pt, label %.lr.ph630, label %._crit_edge631

.lr.ph630:                                        ; preds = %.preheader589
  %31 = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0524.0, i64 %i.pr
  %i.sd = shl nuw nsw i64 %.sroa.speculated, 3
  call void @llvm.memset.p0.i64(ptr align 8 %31, i8 0, i64 %i.sd, i1 false), !tbaa !105
  br label %._crit_edge631

.loopexit596:                                     ; preds = %bb.bs
  %lpad.loopexit598 = landingpad { ptr, i32 }
          cleanup
  br label %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit

.loopexit.split-lp597:                            ; preds = %bb.br
  %lpad.loopexit.split-lp599 = landingpad { ptr, i32 }
          cleanup
  br label %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit

.split.us:                                        ; preds = %bb.bv
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.798) #37
          to label %.noexc322 unwind label %.loopexit.split-lp

.noexc322:                                        ; preds = %.split.us
  unreachable

.split627.us:                                     ; preds = %bb.bz
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.798) #37
          to label %.noexc325 unwind label %.loopexit.split-lp585

.noexc325:                                        ; preds = %.split627.us
  unreachable

.loopexit.split-lp:                               ; preds = %.split.us
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit

.loopexit.split-lp585:                            ; preds = %.split627.us
  %lpad.loopexit.split-lp587 = landingpad { ptr, i32 }
          cleanup
  br label %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit

._crit_edge631:                                   ; preds = %.preheader589.thread, %.lr.ph630, %.preheader589
  %i.se = add nuw nsw i64 %.036632, 1             ; 2 uses
  %i.sf = load i64, ptr %i.d, align 8, !tbaa !105 ; 2 uses
  %i.sg = icmp slt i64 %i.se, %i.sf
  br i1 %i.sg, label %bb.az, label %._crit_edge635.loopexit, !llvm.loop !1024

bb.cc:                                            ; preds = %._crit_edge635
  %i.sh = load i8, ptr %i.cn, align 8, !tbaa !209, !range !163, !noundef !164
  %i.si = trunc nuw i8 %i.sh to i1
  br i1 %i.si, label %bb.cd, label %bb.dy

bb.cd:                                            ; preds = %bb.cc
  %i.sj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6casadi4uoutEv()
          to label %bb.ce unwind label %bb.dj

bb.ce:                                            ; preds = %bb.cd
  %i.sk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6casadi14message_prefixERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.sj)
          to label %bb.cf unwind label %bb.dj     ; 2 uses

bb.cf:                                            ; preds = %bb.ce
  %i.sl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.sk, ptr noundef nonnull @.str.150, i64 noundef 10)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit328 unwind label %bb.dj ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit328: ; preds = %bb.cf
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #38
  %i.sm = invoke { i64, i64 } @_ZNK6casadi8Sparsity4sizeEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.cg unwind label %bb.dk     ; 2 uses

bb.cg:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit328
  %i.sn = extractvalue { i64, i64 } %i.sm, 0
  store i64 %i.sn, ptr %26, align 8
  %i.so = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.sp = extractvalue { i64, i64 } %i.sm, 1
  store i64 %i.sp, ptr %i.so, align 8
  invoke void @_ZN6casadi3strIxxEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt4pairIT_T0_Eb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %25, ptr noundef nonnull align 8 dereferenceable(16) %26, i1 noundef zeroext false)
          to label %bb.ch unwind label %bb.dk

bb.ch:                                            ; preds = %bb.cg
  %i.sq = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %25, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.275, i64 noundef 44)
          to label %.noexc333 unwind label %bb.dl ; 6 uses

.noexc333:                                        ; preds = %bb.ch
  %i.sr = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 7 uses
  store ptr %i.sr, ptr %24, align 8, !tbaa !8, !alias.scope !1025
  %i.ss = load ptr, ptr %i.sq, align 8, !tbaa !14 ; 2 uses
  %i.st = getelementptr inbounds nuw i8, ptr %i.sq, i64 16 ; 5 uses
  %i.su = icmp eq ptr %i.ss, %i.st
  br i1 %i.su, label %bb.ci, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i329

bb.ci:                                            ; preds = %.noexc333
  %i.sv = getelementptr inbounds nuw i8, ptr %i.sq, i64 8
  %i.sw = load i64, ptr %i.sv, align 8, !tbaa !17 ; 3 uses
  %i.sx = icmp ult i64 %i.sw, 16
  call void @llvm.assume(i1 %i.sx)
  %i.sy = add nuw nsw i64 %i.sw, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.sr, ptr noundef nonnull align 8 dereferenceable(1) %i.st, i64 %i.sy, i1 false)
  br label %bb.cj

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i329: ; preds = %.noexc333
  store ptr %i.ss, ptr %24, align 8, !tbaa !14, !alias.scope !1025
  %i.sz = load i64, ptr %i.st, align 8, !tbaa !16
  store i64 %i.sz, ptr %i.sr, align 8, !tbaa !16, !alias.scope !1025
  %.phi.trans.insert.i330 = getelementptr inbounds nuw i8, ptr %i.sq, i64 8
  %.pre.i331 = load i64, ptr %.phi.trans.insert.i330, align 8, !tbaa !17
  br label %bb.cj

bb.cj:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i329, %bb.ci
  %i.ta = phi i64 [ %i.sw, %bb.ci ], [ %.pre.i331, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i329 ]
  %i.tb = getelementptr inbounds nuw i8, ptr %i.sq, i64 8
  %i.tc = getelementptr inbounds nuw i8, ptr %24, i64 8 ; 2 uses
  store i64 %i.ta, ptr %i.tc, align 8, !tbaa !17, !alias.scope !1025
  store ptr %i.st, ptr %i.sq, align 8, !tbaa !14
  store i64 0, ptr %i.tb, align 8, !tbaa !17
  store i8 0, ptr %i.st, align 8, !tbaa !16
  call void @llvm.experimental.noalias.scope.decl(metadata !1028)
  %i.td = load i64, ptr %i.tc, align 8, !tbaa !17, !noalias !1028
  %i.te = and i64 %i.td, -2
  %i.tf = icmp eq i64 %i.te, 4611686018427387902
  br i1 %i.tf, label %bb.ck, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i334

bb.ck:                                            ; preds = %bb.cj
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.790) #37
          to label %.noexc339 unwind label %bb.dm

.noexc339:                                        ; preds = %bb.ck
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i334: ; preds = %bb.cj
  %i.tg = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %24, ptr noundef nonnull @.str.222, i64 noundef 2)
          to label %.noexc340 unwind label %bb.dm ; 6 uses

.noexc340:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i334
  %i.th = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 9 uses
  store ptr %i.th, ptr %23, align 8, !tbaa !8, !alias.scope !1028
  %i.ti = load ptr, ptr %i.tg, align 8, !tbaa !14 ; 2 uses
  %i.tj = getelementptr inbounds nuw i8, ptr %i.tg, i64 16 ; 5 uses
  %i.tk = icmp eq ptr %i.ti, %i.tj
  br i1 %i.tk, label %bb.cl, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i335

bb.cl:                                            ; preds = %.noexc340
  %i.tl = getelementptr inbounds nuw i8, ptr %i.tg, i64 8
  %i.tm = load i64, ptr %i.tl, align 8, !tbaa !17 ; 3 uses
  %i.tn = icmp ult i64 %i.tm, 16
  call void @llvm.assume(i1 %i.tn)
  %i.to = add nuw nsw i64 %i.tm, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.th, ptr noundef nonnull align 8 dereferenceable(1) %i.tj, i64 %i.to, i1 false)
  br label %bb.cm

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i335: ; preds = %.noexc340
  store ptr %i.ti, ptr %23, align 8, !tbaa !14, !alias.scope !1028
  %i.tp = load i64, ptr %i.tj, align 8, !tbaa !16
  store i64 %i.tp, ptr %i.th, align 8, !tbaa !16, !alias.scope !1028
  %.phi.trans.insert.i336 = getelementptr inbounds nuw i8, ptr %i.tg, i64 8
  %.pre.i337 = load i64, ptr %.phi.trans.insert.i336, align 8, !tbaa !17
  br label %bb.cm

bb.cm:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i335, %bb.cl
  %i.tq = phi i64 [ %i.tm, %bb.cl ], [ %.pre.i337, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i335 ]
  %i.tr = getelementptr inbounds nuw i8, ptr %i.tg, i64 8
  %i.ts = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 2 uses
  store i64 %i.tq, ptr %i.ts, align 8, !tbaa !17, !alias.scope !1028
  store ptr %i.tj, ptr %i.tg, align 8, !tbaa !14
  store i64 0, ptr %i.tr, align 8, !tbaa !17
  store i8 0, ptr %i.tj, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #38
  %i.tt = invoke noundef i64 @_ZNK6casadi8Sparsity3nnzEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.cn unwind label %bb.dn

bb.cn:                                            ; preds = %bb.cm
  store i64 %i.tt, ptr %i.g, align 8, !tbaa !105
  invoke void @_ZN6casadi3strIxEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %27, ptr noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %bb.co unwind label %bb.dn

bb.co:                                            ; preds = %bb.cn
  call void @llvm.experimental.noalias.scope.decl(metadata !1031)
  %i.tu = load i64, ptr %i.ts, align 8, !tbaa !17, !noalias !1031 ; 4 uses
  %i.tv = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.tw = load i64, ptr %i.tv, align 8, !tbaa !17, !noalias !1031 ; 4 uses
  %i.tx = add i64 %i.tw, %i.tu                    ; 2 uses
  %i.ty = load ptr, ptr %23, align 8, !tbaa !14, !noalias !1031 ; 2 uses
  %i.tz = icmp eq ptr %i.ty, %i.th
  br i1 %i.tz, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i354, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i342

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i354: ; preds = %bb.co
  %i.ua = icmp ult i64 %i.tu, 16
  call void @llvm.assume(i1 %i.ua)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i343

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i342: ; preds = %bb.co
  %i.ub = load i64, ptr %i.th, align 8, !tbaa !16, !noalias !1031
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i343

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i343: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i342, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i354
  %i.uc = phi i64 [ %i.ub, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i342 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i354 ]
  %i.ud = icmp ugt i64 %i.tx, %i.uc
  br i1 %i.ud, label %bb.cp, label %bb.cr
end_hunk_1
