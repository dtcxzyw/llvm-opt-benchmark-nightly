Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/casadi/original/integrator?download=true
inline.NumInlined: 5918
inline.NumDeleted: 1143
loop-unroll.NumCompletelyUnrolled: 54
loop-unroll.NumRuntimeUnrolled: 40
loop-unroll.NumUnrolled: 94
begin_hunk_0_@_ZNK6casadi10Integrator13trigger_eventEPNS_16IntegratorMemoryEPx:bb.a
  %.pn.pn = phi { ptr, i32 } [ %i.hi, %bb.as ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i247 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit246 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #35
  br label %bb.av

bb.av:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit249, %bb.ar
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit249 ], [ %i.hh, %bb.ar ] ; 2 uses
  %i.hu = load ptr, ptr %15, align 8, !tbaa !33   ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.hw = icmp eq ptr %i.hu, %i.hv
  br i1 %i.hw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit252, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i250

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i250: ; preds = %bb.av
  %i.hx = load i64, ptr %i.hv, align 8, !tbaa !34
  %i.hy = add i64 %i.hx, 1
  call void @_ZdlPvm(ptr noundef %i.hu, i64 noundef %i.hy) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit252

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit252: ; preds = %bb.av, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i250, %bb.aq
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.hg, %bb.aq ], [ %.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i250 ], [ %.pn.pn.pn, %bb.av ] ; 2 uses
  %i.hz = load ptr, ptr %19, align 8, !tbaa !33   ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.ib = icmp eq ptr %i.hz, %i.ia
  br i1 %i.ib, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit255, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i253

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i253: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit252
  %i.ic = load i64, ptr %i.ia, align 8, !tbaa !34
  %i.id = add i64 %i.ic, 1
  call void @_ZdlPvm(ptr noundef %i.hz, i64 noundef %i.id) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit255

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit255: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit252, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i253, %bb.ap
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.hf, %bb.ap ], [ %.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i253 ], [ %.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit252 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #35
  %i.ie = load ptr, ptr %16, align 8, !tbaa !33   ; 2 uses
  %i.if = icmp eq ptr %i.ie, %i.db
  br i1 %i.if, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit258, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i256

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i256: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit255
  %i.ig = load i64, ptr %i.db, align 8, !tbaa !34
  %i.ih = add i64 %i.ig, 1
  call void @_ZdlPvm(ptr noundef %i.ie, i64 noundef %i.ih) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit258

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit258: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit255, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i256, %bb.ao
  %.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.he, %bb.ao ], [ %.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i256 ], [ %.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit255 ] ; 2 uses
  %i.ii = load ptr, ptr %17, align 8, !tbaa !33   ; 2 uses
  %i.ij = icmp eq ptr %i.ii, %i.cl
  br i1 %i.ij, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit261, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i259

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i259: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit258
  %i.ik = load i64, ptr %i.cl, align 8, !tbaa !34
  %i.il = add i64 %i.ik, 1
  call void @_ZdlPvm(ptr noundef %i.ii, i64 noundef %i.il) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit261

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit261: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit258, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i259, %bb.an
  %.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.hd, %bb.an ], [ %.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i259 ], [ %.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit258 ]
  %i.im = load ptr, ptr %18, align 8, !tbaa !33   ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.io = icmp eq ptr %i.im, %i.in
  br i1 %i.io, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit264, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i262

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i262: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit261
  %i.ip = load i64, ptr %i.in, align 8, !tbaa !34
  %i.iq = add i64 %i.ip, 1
  call void @_ZdlPvm(ptr noundef %i.im, i64 noundef %i.iq) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit264

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit264: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit261, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i262
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #35
  br label %bb.bs

bb.aw:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit243, %bb.z
  %i.ir = getelementptr inbounds nuw i8, ptr %0, i64 1592 ; 5 uses
  %i.is = load i64, ptr %i.ir, align 8, !tbaa !160 ; 2 uses
  %i.it = icmp sgt i64 %i.is, 0
  br i1 %i.it, label %._crit_edge.i.i265, label %._crit_edge.i.i281

._crit_edge.i.i265:                               ; preds = %bb.aw
  %i.iu = getelementptr inbounds nuw i8, ptr %1, i64 224 ; 2 uses
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !232
  %i.iw = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !233 ; 8 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 40
  store ptr %i.iv, ptr %i.iy, align 8, !tbaa !152
  %i.iz = getelementptr inbounds nuw i8, ptr %i.ix, i64 48
  %i.ja = getelementptr inbounds nuw i8, ptr %1, i64 200
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.iz, i8 0, i64 16, i1 false)
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !228
  %i.jc = getelementptr inbounds nuw i8, ptr %i.ix, i64 64
  store ptr %i.jb, ptr %i.jc, align 8, !tbaa !152
  %i.jd = getelementptr inbounds nuw i8, ptr %i.ix, i64 72
  store ptr null, ptr %i.jd, align 8, !tbaa !152
  %i.je = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 2 uses
  %i.jf = load ptr, ptr %i.je, align 8, !tbaa !190
  %i.jg = getelementptr inbounds nuw i8, ptr %0, i64 1640 ; 2 uses
  %i.jh = load i64, ptr %i.jg, align 8, !tbaa !159
  %i.ji = getelementptr inbounds [8 x i8], ptr %i.jf, i64 %i.jh
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ix, i64 80
  store ptr %i.ji, ptr %i.jj, align 8, !tbaa !152
  %i.jk = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !195
  %i.jm = getelementptr inbounds nuw i8, ptr %0, i64 1648
  %i.jn = load i64, ptr %i.jm, align 8, !tbaa !161
  %i.jo = getelementptr inbounds [8 x i8], ptr %i.jl, i64 %i.jn
  %i.jp = getelementptr inbounds nuw i8, ptr %i.ix, i64 88
  store ptr %i.jo, ptr %i.jp, align 8, !tbaa !152
  %i.jq = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.jr = load ptr, ptr %i.jq, align 8, !tbaa !196
  %i.js = getelementptr inbounds nuw i8, ptr %0, i64 1744
  %i.jt = load i64, ptr %i.js, align 8, !tbaa !162
  %i.ju = getelementptr inbounds [8 x i8], ptr %i.jr, i64 %i.jt
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ix, i64 96
  store ptr %i.ju, ptr %i.jv, align 8, !tbaa !152
  %i.jw = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !204
  %i.jy = getelementptr inbounds nuw i8, ptr %0, i64 1768
  %i.jz = load i64, ptr %i.jy, align 8, !tbaa !163
  %i.ka = getelementptr inbounds [8 x i8], ptr %i.jx, i64 %i.jz
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ix, i64 104
  store ptr %i.ka, ptr %i.kb, align 8, !tbaa !152
  %i.kc = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !234 ; 2 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %1, i64 272 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.kd, i8 0, i64 24, i1 false)
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !235
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kd, i64 24
  store ptr %i.kf, ptr %i.kg, align 8, !tbaa !152
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #35
  %i.kh = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 6 uses
  store ptr %i.kh, ptr %23, align 8, !tbaa !29
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.kh, ptr noundef nonnull align 1 dereferenceable(3) @.str.28, i64 3, i1 false)
  %i.ki = getelementptr inbounds nuw i8, ptr %23, i64 8
  store i64 3, ptr %i.ki, align 8, !tbaa !35
  %i.kj = getelementptr inbounds nuw i8, ptr %23, i64 19
  store i8 0, ptr %i.kj, align 1, !tbaa !34
  invoke void @_ZN6casadi16FunctionInternal12forward_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEx(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %22, ptr noundef nonnull align 8 dereferenceable(32) %23, i64 noundef %i.is)
          to label %bb.ax unwind label %bb.az

bb.ax:                                            ; preds = %._crit_edge.i.i265
  %i.kk = invoke noundef i32 @_ZNK6casadi14OracleFunction13calc_functionEPNS_12OracleMemoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKPKdi(ptr noundef nonnull align 8 dereferenceable(1529) %0, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef null, i32 noundef 0)
          to label %bb.ay unwind label %bb.ba

bb.ay:                                            ; preds = %bb.ax
  %.not154 = icmp eq i32 %i.kk, 0
  %i.kl = load ptr, ptr %22, align 8, !tbaa !33   ; 2 uses
  %i.km = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 2 uses
  %i.kn = icmp eq ptr %i.kl, %i.km
  br i1 %i.kn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit271, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i269

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i269: ; preds = %bb.ay
  %i.ko = load i64, ptr %i.km, align 8, !tbaa !34
  %i.kp = add i64 %i.ko, 1
  call void @_ZdlPvm(ptr noundef %i.kl, i64 noundef %i.kp) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit271

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit271: ; preds = %bb.ay, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i269
  %i.kq = load ptr, ptr %23, align 8, !tbaa !33   ; 2 uses
  %i.kr = icmp eq ptr %i.kq, %i.kh
  br i1 %i.kr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit274, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i272

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i272: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit271
  %i.ks = load i64, ptr %i.kh, align 8, !tbaa !34
  %i.kt = add i64 %i.ks, 1
  call void @_ZdlPvm(ptr noundef %i.kq, i64 noundef %i.kt) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit274

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit274: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit271, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i272
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #35
  br i1 %.not154, label %.preheader343, label %bb.br

.preheader343:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit274
  %i.ku = load i64, ptr %i.ir, align 8, !tbaa !160 ; 10 uses
  %i.kv = icmp sgt i64 %i.ku, 0
  br i1 %i.kv, label %.lr.ph, label %._crit_edge.i.i281

.lr.ph:                                           ; preds = %.preheader343
  %i.kw = load ptr, ptr %i.ke, align 8, !tbaa !235 ; 9 uses
  %i.kx = load i64, ptr %2, align 8, !tbaa !209   ; 3 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %0, i64 1776
  %i.kz = load i64, ptr %i.ky, align 8, !tbaa !207 ; 4 uses
  %i.la = getelementptr [8 x i8], ptr %i.kw, i64 %i.kx ; 5 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.lc = load ptr, ptr %i.lb, align 8, !tbaa !229 ; 2 uses
  %i.ld = getelementptr inbounds [8 x i8], ptr %i.lc, i64 %i.kx ; 5 uses
  %min.iters.check = icmp ugt i64 %i.ku, 3
  %ident.check.not = icmp eq i64 %i.kz, 1
  %or.cond = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  br i1 %or.cond, label %vector.memcheck, label %scalar.ph.preheader

vector.memcheck:                                  ; preds = %.lr.ph
  %i.le = shl i64 %i.ku, 3                        ; 2 uses
  %i.lf = getelementptr i8, ptr %i.kw, i64 %i.le  ; 2 uses
  %i.lg = shl nsw i64 %i.kx, 3                    ; 2 uses
  %i.lh = getelementptr i8, ptr %i.kw, i64 %i.le
  %i.li = getelementptr i8, ptr %i.lh, i64 %i.lg
  %i.lj = getelementptr i8, ptr %i.lc, i64 %i.lg
  %i.lk = getelementptr i8, ptr %i.lj, i64 8
  %bound0 = icmp ult ptr %i.kw, %i.li
  %bound1 = icmp ult ptr %i.la, %i.lf
  %found.conflict = and i1 %bound0, %bound1
  %bound0462 = icmp ult ptr %i.kw, %i.lk
  %bound1463 = icmp ult ptr %i.ld, %i.lf
  %found.conflict464 = and i1 %bound0462, %bound1463
  %conflict.rdx = or i1 %found.conflict, %found.conflict464
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ku, 9223372036854775806     ; 3 uses
  %i.ll = load double, ptr %i.ld, align 8, !tbaa !58, !alias.scope !741
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.ll, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.lm = getelementptr [8 x i8], ptr %i.la, i64 %index
  %wide.load = load <2 x double>, ptr %i.lm, align 8, !tbaa !58, !alias.scope !742
  %i.ln = fneg <2 x double> %wide.load
  %i.lo = fdiv <2 x double> %i.ln, %broadcast.splat
  %i.lp = getelementptr inbounds nuw [8 x i8], ptr %i.kw, i64 %index
  store <2 x double> %i.lo, ptr %i.lp, align 8, !tbaa !58, !alias.scope !743, !noalias !744
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.lq = icmp eq i64 %index.next, %n.vec
  br i1 %i.lq, label %middle.block, label %vector.body, !llvm.loop !718

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ku, %n.vec
  br i1 %cmp.n, label %.lr.ph346, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %.0102344.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ] ; 5 uses
  %.neg = or disjoint i64 %.0102344.ph, 1
  %xtraiter = and i64 %i.ku, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.lr = mul nsw i64 %i.kz, %.0102344.ph
  %i.ls = getelementptr [8 x i8], ptr %i.la, i64 %i.lr
  %i.lt = load double, ptr %i.ls, align 8, !tbaa !58
  %i.lu = fneg double %i.lt
  %i.lv = load double, ptr %i.ld, align 8, !tbaa !58
  %i.lw = fdiv double %i.lu, %i.lv
  %i.lx = getelementptr inbounds nuw [8 x i8], ptr %i.kw, i64 %.0102344.ph
  store double %i.lw, ptr %i.lx, align 8, !tbaa !58
  %i.ly = or disjoint i64 %.0102344.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.0102344.unr = phi i64 [ %.0102344.ph, %scalar.ph.preheader ], [ %i.ly, %scalar.ph.prol ]
  %i.lz = icmp eq i64 %i.ku, %.neg
  br i1 %i.lz, label %.lr.ph346, label %scalar.ph

bb.az:                                            ; preds = %._crit_edge.i.i265
  %i.ma = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit277

bb.ba:                                            ; preds = %bb.ax
  %i.mb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.mc = load ptr, ptr %22, align 8, !tbaa !33   ; 2 uses
  %i.md = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 2 uses
  %i.me = icmp eq ptr %i.mc, %i.md
  br i1 %i.me, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit277, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i275

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i275: ; preds = %bb.ba
  %i.mf = load i64, ptr %i.md, align 8, !tbaa !34
  %i.mg = add i64 %i.mf, 1
  call void @_ZdlPvm(ptr noundef %i.mc, i64 noundef %i.mg) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit277

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit277: ; preds = %bb.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i275, %bb.az
  %.pn151 = phi { ptr, i32 } [ %i.ma, %bb.az ], [ %i.mb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i275 ], [ %i.mb, %bb.ba ]
  %i.mh = load ptr, ptr %23, align 8, !tbaa !33   ; 2 uses
  %i.mi = icmp eq ptr %i.mh, %i.kh
  br i1 %i.mi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit280, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i278

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i278: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit277
  %i.mj = load i64, ptr %i.kh, align 8, !tbaa !34
  %i.mk = add i64 %i.mj, 1
  call void @_ZdlPvm(ptr noundef %i.mh, i64 noundef %i.mk) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit280

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit280: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit277, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i278
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #35
  br label %bb.bs

.lr.ph346:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.ml = load i64, ptr %i.jg, align 8, !tbaa !159 ; 10 uses
  %i.mm = load ptr, ptr %i.ke, align 8, !tbaa !235
  %i.mn = load ptr, ptr %i.iu, align 8, !tbaa !232 ; 6 uses
  %i.mo = load ptr, ptr %i.je, align 8, !tbaa !190 ; 4 uses
  %i.mp = icmp ne ptr %i.mn, null
  %i.mq = icmp ne ptr %i.mo, null
  %or.cond.i = and i1 %i.mp, %i.mq
  %i.mr = icmp sgt i64 %i.ml, 0
  %or.cond15.i = and i1 %i.mr, %or.cond.i
  br i1 %or.cond15.i, label %.lr.ph.i.preheader.preheader, label %._crit_edge.i.i281

.lr.ph.i.preheader.preheader:                     ; preds = %.lr.ph346
  %i.ms = shl i64 %i.ml, 3                        ; 3 uses
  %scevgep = getelementptr i8, ptr %i.mo, i64 %i.ms
  %i.mt = shl i64 %i.ku, 3
  %i.mu = add i64 %i.mt, 8
  %i.mv = mul i64 %i.ml, %i.mu
  %scevgep466 = getelementptr i8, ptr %i.mo, i64 %i.mv
  %scevgep467 = getelementptr i8, ptr %i.mn, i64 %i.ms
  %min.iters.check472 = icmp ult i64 %i.ml, 4
  %bound0468 = icmp ult ptr %scevgep, %scevgep467
  %bound1469 = icmp ult ptr %i.mn, %scevgep466
  %found.conflict470 = and i1 %bound0468, %bound1469
  %stride.check = icmp slt i64 %i.ms, 0
  %i.mw = or i1 %found.conflict470, %stride.check
  %n.vec474 = and i64 %i.ml, 9223372036854775804  ; 4 uses
  %i.mx = shl i64 %n.vec474, 3                    ; 2 uses
  %i.my = getelementptr i8, ptr %i.mn, i64 %i.mx
  %cmp.n486 = icmp eq i64 %i.ml, %n.vec474
  %xtraiter539 = and i64 %i.ml, 3                 ; 2 uses
  %lcmp.mod540.not = icmp eq i64 %xtraiter539, 0
  br label %.lr.ph.i.preheader

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.0102344 = phi i64 [ %i.no, %scalar.ph ], [ %.0102344.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.mz = mul nsw i64 %i.kz, %.0102344
  %i.na = getelementptr [8 x i8], ptr %i.la, i64 %i.mz
  %i.nb = load double, ptr %i.na, align 8, !tbaa !58
  %i.nc = fneg double %i.nb
  %i.nd = load double, ptr %i.ld, align 8, !tbaa !58
  %i.ne = fdiv double %i.nc, %i.nd
  %i.nf = getelementptr inbounds nuw [8 x i8], ptr %i.kw, i64 %.0102344
  store double %i.ne, ptr %i.nf, align 8, !tbaa !58
  %i.ng = add nuw nsw i64 %.0102344, 1            ; 2 uses
  %i.nh = mul nsw i64 %i.kz, %i.ng
  %i.ni = getelementptr [8 x i8], ptr %i.la, i64 %i.nh
  %i.nj = load double, ptr %i.ni, align 8, !tbaa !58
  %i.nk = fneg double %i.nj
  %i.nl = load double, ptr %i.ld, align 8, !tbaa !58
  %i.nm = fdiv double %i.nk, %i.nl
  %i.nn = getelementptr inbounds nuw [8 x i8], ptr %i.kw, i64 %i.ng
  store double %i.nm, ptr %i.nn, align 8, !tbaa !58
  %i.no = add nuw nsw i64 %.0102344, 2            ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.no, %i.ku
  br i1 %exitcond.not.1, label %.lr.ph346, label %scalar.ph, !llvm.loop !719

.lr.ph.i.preheader:                               ; preds = %.lr.ph.i.preheader.preheader, %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit.loopexit
  %.0101345 = phi i64 [ %i.nr, %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit.loopexit ], [ 0, %.lr.ph.i.preheader.preheader ] ; 2 uses
  %i.np = getelementptr inbounds nuw [8 x i8], ptr %i.mm, i64 %.0101345
  %i.nq = load double, ptr %i.np, align 8, !tbaa !58 ; 6 uses
  %i.nr = add nuw nsw i64 %.0101345, 1            ; 3 uses
  %i.ns = mul nuw nsw i64 %i.ml, %i.nr
  %i.nt = getelementptr inbounds nuw [8 x i8], ptr %i.mo, i64 %i.ns ; 3 uses
  %brmerge = or i1 %min.iters.check472, %i.mw
  br i1 %brmerge, label %.lr.ph.i.preheader538, label %vector.ph473

vector.ph473:                                     ; preds = %.lr.ph.i.preheader
  %i.nu = getelementptr i8, ptr %i.nt, i64 %i.mx
  %broadcast.splatinsert475 = insertelement <2 x double> poison, double %i.nq, i64 0
  %broadcast.splat476 = shufflevector <2 x double> %broadcast.splatinsert475, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body477

vector.body477:                                   ; preds = %vector.body477, %vector.ph473
  %index478 = phi i64 [ 0, %vector.ph473 ], [ %index.next484, %vector.body477 ] ; 2 uses
  %i.nv = shl i64 %index478, 3                    ; 2 uses
  %next.gep = getelementptr i8, ptr %i.nt, i64 %i.nv ; 3 uses
  %next.gep479 = getelementptr i8, ptr %i.mn, i64 %i.nv ; 2 uses
  %i.nw = getelementptr i8, ptr %next.gep479, i64 16
  %wide.load480 = load <2 x double>, ptr %next.gep479, align 8, !tbaa !58, !alias.scope !745
  %wide.load481 = load <2 x double>, ptr %i.nw, align 8, !tbaa !58, !alias.scope !745
  %i.nx = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load482 = load <2 x double>, ptr %next.gep, align 8, !tbaa !58, !alias.scope !746, !noalias !745
  %wide.load483 = load <2 x double>, ptr %i.nx, align 8, !tbaa !58, !alias.scope !746, !noalias !745
  %i.ny = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat476, <2 x double> %wide.load480, <2 x double> %wide.load482)
  %i.nz = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat476, <2 x double> %wide.load481, <2 x double> %wide.load483)
  store <2 x double> %i.ny, ptr %next.gep, align 8, !tbaa !58, !alias.scope !746, !noalias !745
  store <2 x double> %i.nz, ptr %i.nx, align 8, !tbaa !58, !alias.scope !746, !noalias !745
  %index.next484 = add nuw i64 %index478, 4       ; 2 uses
  %i.oa = icmp eq i64 %index.next484, %n.vec474
  br i1 %i.oa, label %middle.block485, label %vector.body477, !llvm.loop !723

middle.block485:                                  ; preds = %vector.body477
  br i1 %cmp.n486, label %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit.loopexit, label %.lr.ph.i.preheader538

.lr.ph.i.preheader538:                            ; preds = %.lr.ph.i.preheader, %middle.block485
  %.014.i.ph = phi i64 [ %n.vec474, %middle.block485 ], [ 0, %.lr.ph.i.preheader ] ; 3 uses
  %.0813.i.ph = phi ptr [ %i.nu, %middle.block485 ], [ %i.nt, %.lr.ph.i.preheader ] ; 2 uses
  %.0912.i.ph = phi ptr [ %i.my, %middle.block485 ], [ %i.mn, %.lr.ph.i.preheader ] ; 2 uses
  br i1 %lcmp.mod540.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader538, %.lr.ph.i.prol
  %.014.i.prol = phi i64 [ %i.og, %.lr.ph.i.prol ], [ %.014.i.ph, %.lr.ph.i.preheader538 ]
  %.0813.i.prol = phi ptr [ %i.od, %.lr.ph.i.prol ], [ %.0813.i.ph, %.lr.ph.i.preheader538 ] ; 3 uses
  %.0912.i.prol = phi ptr [ %i.ob, %.lr.ph.i.prol ], [ %.0912.i.ph, %.lr.ph.i.preheader538 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader538 ]
end_hunk_0
begin_hunk_1_@_ZNK6casadi10Integrator13trigger_eventEPNS_16IntegratorMemoryEPx:bb.a
  store ptr null, ptr %i.rp, align 8, !tbaa !152
  %i.rq = getelementptr inbounds nuw i8, ptr %1, i64 272
  %i.rr = load ptr, ptr %i.rq, align 8, !tbaa !235
  %i.rs = getelementptr inbounds nuw i8, ptr %i.rk, i64 72
  store ptr %i.rr, ptr %i.rs, align 8, !tbaa !152
  %i.rt = load ptr, ptr %i.pv, align 8, !tbaa !190
  %i.ru = getelementptr inbounds nuw i8, ptr %0, i64 1640
  %i.rv = load i64, ptr %i.ru, align 8, !tbaa !159 ; 2 uses
  %i.rw = getelementptr inbounds [8 x i8], ptr %i.rt, i64 %i.rv
  %i.rx = getelementptr inbounds nuw i8, ptr %i.rk, i64 80
  store ptr %i.rw, ptr %i.rx, align 8, !tbaa !152
  %i.ry = load ptr, ptr %i.py, align 8, !tbaa !195
  %i.rz = getelementptr inbounds nuw i8, ptr %0, i64 1648
  %i.sa = load i64, ptr %i.rz, align 8, !tbaa !161 ; 2 uses
  %i.sb = getelementptr inbounds [8 x i8], ptr %i.ry, i64 %i.sa
  %i.sc = getelementptr inbounds nuw i8, ptr %i.rk, i64 88
  store ptr %i.sb, ptr %i.sc, align 8, !tbaa !152
  %i.sd = load ptr, ptr %i.qb, align 8, !tbaa !196
  %i.se = getelementptr inbounds nuw i8, ptr %0, i64 1744
  %i.sf = load i64, ptr %i.se, align 8, !tbaa !162
  %i.sg = getelementptr inbounds [8 x i8], ptr %i.sd, i64 %i.sf
  %i.sh = getelementptr inbounds nuw i8, ptr %i.rk, i64 96
  store ptr %i.sg, ptr %i.sh, align 8, !tbaa !152
  %i.si = load ptr, ptr %i.qe, align 8, !tbaa !204
  %i.sj = getelementptr inbounds nuw i8, ptr %0, i64 1768
  %i.sk = load i64, ptr %i.sj, align 8, !tbaa !163
  %i.sl = getelementptr inbounds [8 x i8], ptr %i.si, i64 %i.sk
  %i.sm = getelementptr inbounds nuw i8, ptr %i.rk, i64 104
  store ptr %i.sl, ptr %i.sm, align 8, !tbaa !152
  %i.sn = load ptr, ptr %i.qh, align 8, !tbaa !236
  %i.so = getelementptr inbounds [8 x i8], ptr %i.sn, i64 %i.rv
  %i.sp = load ptr, ptr %i.qj, align 8, !tbaa !234 ; 2 uses
  store ptr %i.so, ptr %i.sp, align 8, !tbaa !152
  %i.sq = load ptr, ptr %i.qh, align 8, !tbaa !236
  %i.sr = getelementptr inbounds [8 x i8], ptr %i.sq, i64 %i.rm
  %i.ss = getelementptr inbounds [8 x i8], ptr %i.sr, i64 %i.sa
  %i.st = getelementptr inbounds nuw i8, ptr %i.sp, i64 8
  store ptr %i.ss, ptr %i.st, align 8, !tbaa !152
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #35
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %27, ptr noundef nonnull @.str.83, ptr noundef nonnull align 1 dereferenceable(1) %28)
          to label %bb.bh unwind label %bb.bk

bb.bh:                                            ; preds = %bb.bg
  %i.su = load i64, ptr %i.ir, align 8, !tbaa !160
  invoke void @_ZN6casadi16FunctionInternal12forward_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEx(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %26, ptr noundef nonnull align 8 dereferenceable(32) %27, i64 noundef %i.su)
          to label %bb.bi unwind label %bb.bl

bb.bi:                                            ; preds = %bb.bh
  %i.sv = invoke noundef i32 @_ZNK6casadi14OracleFunction13calc_functionEPNS_12OracleMemoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKPKdi(ptr noundef nonnull align 8 dereferenceable(1529) %0, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(32) %26, ptr noundef null, i32 noundef 0)
          to label %bb.bj unwind label %bb.bm     ; 0 uses

bb.bj:                                            ; preds = %bb.bi
  %i.sw = load ptr, ptr %26, align 8, !tbaa !33   ; 2 uses
  %i.sx = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 2 uses
  %i.sy = icmp eq ptr %i.sw, %i.sx
  br i1 %i.sy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit303, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i301

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i301: ; preds = %bb.bj
  %i.sz = load i64, ptr %i.sx, align 8, !tbaa !34
  %i.ta = add i64 %i.sz, 1
  call void @_ZdlPvm(ptr noundef %i.sw, i64 noundef %i.ta) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit303

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit303: ; preds = %bb.bj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i301
  %i.tb = load ptr, ptr %27, align 8, !tbaa !33   ; 2 uses
  %i.tc = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 2 uses
  %i.td = icmp eq ptr %i.tb, %i.tc
  br i1 %i.td, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit306, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i304

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i304: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit303
  %i.te = load i64, ptr %i.tc, align 8, !tbaa !34
  %i.tf = add i64 %i.te, 1
  call void @_ZdlPvm(ptr noundef %i.tb, i64 noundef %i.tf) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit306

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit306: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit303, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i304
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #35
  br label %.thread

bb.bk:                                            ; preds = %bb.bg
  %i.tg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit312

bb.bl:                                            ; preds = %bb.bh
  %i.th = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit309

bb.bm:                                            ; preds = %bb.bi
  %i.ti = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.tj = load ptr, ptr %26, align 8, !tbaa !33   ; 2 uses
  %i.tk = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 2 uses
  %i.tl = icmp eq ptr %i.tj, %i.tk
  br i1 %i.tl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit309, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i307

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i307: ; preds = %bb.bm
  %i.tm = load i64, ptr %i.tk, align 8, !tbaa !34
  %i.tn = add i64 %i.tm, 1
  call void @_ZdlPvm(ptr noundef %i.tj, i64 noundef %i.tn) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit309

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit309: ; preds = %bb.bm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i307, %bb.bl
  %.pn160 = phi { ptr, i32 } [ %i.th, %bb.bl ], [ %i.ti, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i307 ], [ %i.ti, %bb.bm ] ; 2 uses
  %i.to = load ptr, ptr %27, align 8, !tbaa !33   ; 2 uses
  %i.tp = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 2 uses
  %i.tq = icmp eq ptr %i.to, %i.tp
  br i1 %i.tq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit312, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i310

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i310: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit309
  %i.tr = load i64, ptr %i.tp, align 8, !tbaa !34
  %i.ts = add i64 %i.tr, 1
  call void @_ZdlPvm(ptr noundef %i.to, i64 noundef %i.ts) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit312

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit312: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit309, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i310, %bb.bk
  %.pn160.pn = phi { ptr, i32 } [ %i.tg, %bb.bk ], [ %.pn160, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i310 ], [ %.pn160, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit309 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #35
  br label %bb.bo

.thread:                                          ; preds = %bb.bf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit306
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #35
  br label %bb.bp

bb.bn:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit294
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #35
  br label %bb.br

bb.bo:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit312, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit300
  %.pn160.pn.pn = phi { ptr, i32 } [ %.pn160.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit312 ], [ %i.rc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit300 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #35
  br label %bb.bs

bb.bp:                                            ; preds = %.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit287
  %i.tt = getelementptr inbounds nuw i8, ptr %1, i64 280
  %i.tu = load ptr, ptr %i.tt, align 8, !tbaa !236 ; 5 uses
  %i.tv = ptrtoaddr ptr %i.tu to i64
  %i.tw = getelementptr inbounds nuw i8, ptr %0, i64 1616
  %i.tx = load i64, ptr %i.tw, align 8, !tbaa !189 ; 2 uses
  %i.ty = getelementptr inbounds nuw i8, ptr %0, i64 1624
  %i.tz = load i64, ptr %i.ty, align 8, !tbaa !194 ; 2 uses
  %i.ua = add i64 %i.tz, %i.tx                    ; 6 uses
  %i.ub = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 2 uses
  %i.uc = load ptr, ptr %i.ub, align 8, !tbaa !190 ; 6 uses
  %i.ud = ptrtoaddr ptr %i.uc to i64
  %.not.i313 = icmp eq ptr %i.uc, null
  br i1 %.not.i313, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %.not15.i = icmp eq ptr %i.tu, null
  %i.ue = icmp sgt i64 %i.ua, 0                   ; 2 uses
  br i1 %.not15.i, label %.preheader.i, label %.preheader16.i

.preheader16.i:                                   ; preds = %bb.bq
  br i1 %i.ue, label %.lr.ph.i314.preheader, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit

.lr.ph.i314.preheader:                            ; preds = %.preheader16.i
  %min.iters.check492 = icmp ult i64 %i.ua, 8
  %i.uf = sub i64 %i.tv, %i.ud
  %diff.check = icmp ugt i64 %i.uf, -32
  %or.cond535 = select i1 %min.iters.check492, i1 true, i1 %diff.check
  br i1 %or.cond535, label %.lr.ph.i314.preheader537, label %vector.ph493

vector.ph493:                                     ; preds = %.lr.ph.i314.preheader
  %n.vec494 = and i64 %i.ua, 9223372036854775804  ; 4 uses
  %i.ug = shl i64 %n.vec494, 3                    ; 2 uses
  %i.uh = getelementptr i8, ptr %i.uc, i64 %i.ug
  %i.ui = getelementptr i8, ptr %i.tu, i64 %i.ug
  br label %vector.body495

vector.body495:                                   ; preds = %vector.body495, %vector.ph493
  %index496 = phi i64 [ 0, %vector.ph493 ], [ %index.next501, %vector.body495 ] ; 2 uses
  %i.uj = shl i64 %index496, 3                    ; 2 uses
  %next.gep497 = getelementptr i8, ptr %i.uc, i64 %i.uj ; 2 uses
  %next.gep498 = getelementptr i8, ptr %i.tu, i64 %i.uj ; 2 uses
  %i.uk = getelementptr i8, ptr %next.gep498, i64 16
  %wide.load499 = load <2 x double>, ptr %next.gep498, align 8, !tbaa !58
  %wide.load500 = load <2 x double>, ptr %i.uk, align 8, !tbaa !58
  %i.ul = getelementptr i8, ptr %next.gep497, i64 16
  store <2 x double> %wide.load499, ptr %next.gep497, align 8, !tbaa !58
  store <2 x double> %wide.load500, ptr %i.ul, align 8, !tbaa !58
  %index.next501 = add nuw i64 %index496, 4       ; 2 uses
  %i.um = icmp eq i64 %index.next501, %n.vec494
  br i1 %i.um, label %middle.block502, label %vector.body495, !llvm.loop !727

middle.block502:                                  ; preds = %vector.body495
  %cmp.n503 = icmp eq i64 %i.ua, %n.vec494
  br i1 %cmp.n503, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit, label %.lr.ph.i314.preheader537

.lr.ph.i314.preheader537:                         ; preds = %.lr.ph.i314.preheader, %middle.block502
  %.020.i.ph = phi i64 [ 0, %.lr.ph.i314.preheader ], [ %n.vec494, %middle.block502 ] ; 4 uses
  %.01019.i.ph = phi ptr [ %i.uc, %.lr.ph.i314.preheader ], [ %i.uh, %middle.block502 ] ; 2 uses
  %.01218.i.ph = phi ptr [ %i.tu, %.lr.ph.i314.preheader ], [ %i.ui, %middle.block502 ] ; 2 uses
  %i.un = add i64 %i.tx, %i.tz                    ; 2 uses
  %i.uo = sub i64 %i.un, %.020.i.ph
  %xtraiter541 = and i64 %i.uo, 7                 ; 2 uses
  %lcmp.mod542.not = icmp eq i64 %xtraiter541, 0
  br i1 %lcmp.mod542.not, label %.lr.ph.i314.prol.loopexit, label %.lr.ph.i314.prol

.lr.ph.i314.prol:                                 ; preds = %.lr.ph.i314.preheader537, %.lr.ph.i314.prol
  %.020.i.prol = phi i64 [ %i.us, %.lr.ph.i314.prol ], [ %.020.i.ph, %.lr.ph.i314.preheader537 ]
  %.01019.i.prol = phi ptr [ %i.ur, %.lr.ph.i314.prol ], [ %.01019.i.ph, %.lr.ph.i314.preheader537 ] ; 2 uses
  %.01218.i.prol = phi ptr [ %i.up, %.lr.ph.i314.prol ], [ %.01218.i.ph, %.lr.ph.i314.preheader537 ] ; 2 uses
  %prol.iter543 = phi i64 [ %prol.iter543.next, %.lr.ph.i314.prol ], [ 0, %.lr.ph.i314.preheader537 ]
  %i.up = getelementptr inbounds nuw i8, ptr %.01218.i.prol, i64 8 ; 2 uses
  %i.uq = load double, ptr %.01218.i.prol, align 8, !tbaa !58
  %i.ur = getelementptr inbounds nuw i8, ptr %.01019.i.prol, i64 8 ; 2 uses
  store double %i.uq, ptr %.01019.i.prol, align 8, !tbaa !58
  %i.us = add nuw nsw i64 %.020.i.prol, 1         ; 2 uses
  %prol.iter543.next = add i64 %prol.iter543, 1   ; 2 uses
  %prol.iter543.cmp.not = icmp eq i64 %prol.iter543.next, %xtraiter541
  br i1 %prol.iter543.cmp.not, label %.lr.ph.i314.prol.loopexit, label %.lr.ph.i314.prol, !llvm.loop !728

.lr.ph.i314.prol.loopexit:                        ; preds = %.lr.ph.i314.prol, %.lr.ph.i314.preheader537
  %.020.i.unr = phi i64 [ %.020.i.ph, %.lr.ph.i314.preheader537 ], [ %i.us, %.lr.ph.i314.prol ]
  %.01019.i.unr = phi ptr [ %.01019.i.ph, %.lr.ph.i314.preheader537 ], [ %i.ur, %.lr.ph.i314.prol ]
  %.01218.i.unr = phi ptr [ %.01218.i.ph, %.lr.ph.i314.preheader537 ], [ %i.up, %.lr.ph.i314.prol ]
  %i.ut = sub i64 %.020.i.ph, %i.un
  %i.uu = icmp ugt i64 %i.ut, -8
  br i1 %i.uu, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit, label %.lr.ph.i314

.preheader.i:                                     ; preds = %bb.bq
  br i1 %i.ue, label %.lr.ph23.preheader.i, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit

.lr.ph23.preheader.i:                             ; preds = %.preheader.i
  %i.uv = shl nuw i64 %i.ua, 3
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.uc, i8 0, i64 %i.uv, i1 false), !tbaa !58
  br label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit

.lr.ph.i314:                                      ; preds = %.lr.ph.i314.prol.loopexit, %.lr.ph.i314
  %.020.i = phi i64 [ %i.vu, %.lr.ph.i314 ], [ %.020.i.unr, %.lr.ph.i314.prol.loopexit ]
  %.01019.i = phi ptr [ %i.vt, %.lr.ph.i314 ], [ %.01019.i.unr, %.lr.ph.i314.prol.loopexit ] ; 9 uses
  %.01218.i = phi ptr [ %i.vr, %.lr.ph.i314 ], [ %.01218.i.unr, %.lr.ph.i314.prol.loopexit ] ; 9 uses
  %i.uw = getelementptr inbounds nuw i8, ptr %.01218.i, i64 8
  %i.ux = load double, ptr %.01218.i, align 8, !tbaa !58
  %i.uy = getelementptr inbounds nuw i8, ptr %.01019.i, i64 8
  store double %i.ux, ptr %.01019.i, align 8, !tbaa !58
  %i.uz = getelementptr inbounds nuw i8, ptr %.01218.i, i64 16
  %i.va = load double, ptr %i.uw, align 8, !tbaa !58
  %i.vb = getelementptr inbounds nuw i8, ptr %.01019.i, i64 16
  store double %i.va, ptr %i.uy, align 8, !tbaa !58
  %i.vc = getelementptr inbounds nuw i8, ptr %.01218.i, i64 24
  %i.vd = load double, ptr %i.uz, align 8, !tbaa !58
  %i.ve = getelementptr inbounds nuw i8, ptr %.01019.i, i64 24
  store double %i.vd, ptr %i.vb, align 8, !tbaa !58
  %i.vf = getelementptr inbounds nuw i8, ptr %.01218.i, i64 32
  %i.vg = load double, ptr %i.vc, align 8, !tbaa !58
  %i.vh = getelementptr inbounds nuw i8, ptr %.01019.i, i64 32
  store double %i.vg, ptr %i.ve, align 8, !tbaa !58
  %i.vi = getelementptr inbounds nuw i8, ptr %.01218.i, i64 40
  %i.vj = load double, ptr %i.vf, align 8, !tbaa !58
  %i.vk = getelementptr inbounds nuw i8, ptr %.01019.i, i64 40
  store double %i.vj, ptr %i.vh, align 8, !tbaa !58
  %i.vl = getelementptr inbounds nuw i8, ptr %.01218.i, i64 48
  %i.vm = load double, ptr %i.vi, align 8, !tbaa !58
  %i.vn = getelementptr inbounds nuw i8, ptr %.01019.i, i64 48
  store double %i.vm, ptr %i.vk, align 8, !tbaa !58
  %i.vo = getelementptr inbounds nuw i8, ptr %.01218.i, i64 56
  %i.vp = load double, ptr %i.vl, align 8, !tbaa !58
  %i.vq = getelementptr inbounds nuw i8, ptr %.01019.i, i64 56
  store double %i.vp, ptr %i.vn, align 8, !tbaa !58
  %i.vr = getelementptr inbounds nuw i8, ptr %.01218.i, i64 64
  %i.vs = load double, ptr %i.vo, align 8, !tbaa !58
  %i.vt = getelementptr inbounds nuw i8, ptr %.01019.i, i64 64
  store double %i.vs, ptr %i.vq, align 8, !tbaa !58
  %i.vu = add nuw nsw i64 %.020.i, 8              ; 2 uses
  %exitcond.not.i315.7 = icmp eq i64 %i.vu, %i.ua
  br i1 %exitcond.not.i315.7, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit, label %.lr.ph.i314, !llvm.loop !729

_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit:       ; preds = %.lr.ph.i314.prol.loopexit, %.lr.ph.i314, %middle.block502, %bb.bp, %.preheader16.i, %.preheader.i, %.lr.ph23.preheader.i
  %i.vv = call noundef i32 @_ZNK6casadi10Integrator9calc_edotEPNS_16IntegratorMemoryE(ptr noundef nonnull align 8 dereferenceable(1984) %0, ptr noundef nonnull %1)
  %.not164 = icmp eq i32 %i.vv, 0
  br i1 %.not164, label %.preheader, label %bb.br

.preheader:                                       ; preds = %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit
  %i.vw = load i64, ptr %i.ir, align 8, !tbaa !160 ; 3 uses
  %i.vx = icmp sgt i64 %i.vw, 0
  br i1 %i.vx, label %.lr.ph348, label %._crit_edge.split

.lr.ph348:                                        ; preds = %.preheader
  %i.vy = getelementptr inbounds nuw i8, ptr %0, i64 1640
  %i.vz = load i64, ptr %i.vy, align 8, !tbaa !159 ; 10 uses
  %i.wa = getelementptr inbounds nuw i8, ptr %1, i64 272
  %i.wb = load ptr, ptr %i.wa, align 8, !tbaa !235
  %i.wc = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.wd = load ptr, ptr %i.wc, align 8, !tbaa !232 ; 6 uses
  %i.we = load ptr, ptr %i.ub, align 8, !tbaa !190 ; 4 uses
  %i.wf = icmp ne ptr %i.wd, null
  %i.wg = icmp ne ptr %i.we, null
  %or.cond.i316 = and i1 %i.wf, %i.wg
  %i.wh = icmp sgt i64 %i.vz, 0
  %or.cond15.i317 = and i1 %i.wh, %or.cond.i316
  br i1 %or.cond15.i317, label %.lr.ph.i318.preheader.preheader, label %._crit_edge.split

.lr.ph.i318.preheader.preheader:                  ; preds = %.lr.ph348
  %i.wi = shl i64 %i.vz, 3                        ; 3 uses
  %scevgep508 = getelementptr i8, ptr %i.we, i64 %i.wi
  %i.wj = shl i64 %i.vw, 3
  %i.wk = add i64 %i.wj, 8
  %i.wl = mul i64 %i.vz, %i.wk
  %scevgep509 = getelementptr i8, ptr %i.we, i64 %i.wl
  %scevgep510 = getelementptr i8, ptr %i.wd, i64 %i.wi
  %min.iters.check516 = icmp ult i64 %i.vz, 4
  %bound0511 = icmp ult ptr %scevgep508, %scevgep510
  %bound1512 = icmp ult ptr %i.wd, %scevgep509
  %found.conflict513 = and i1 %bound0511, %bound1512
  %stride.check514 = icmp slt i64 %i.wi, 0
  %i.wm = or i1 %found.conflict513, %stride.check514
  %n.vec518 = and i64 %i.vz, 9223372036854775804  ; 4 uses
  %i.wn = shl i64 %n.vec518, 3                    ; 2 uses
  %i.wo = getelementptr i8, ptr %i.wd, i64 %i.wn
  %cmp.n531 = icmp eq i64 %i.vz, %n.vec518
  %xtraiter544 = and i64 %i.vz, 3                 ; 2 uses
  %lcmp.mod545.not = icmp eq i64 %xtraiter544, 0
  br label %.lr.ph.i318.preheader

._crit_edge.split:                                ; preds = %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit323.loopexit, %.lr.ph348, %.preheader
  store i64 -1, ptr %2, align 8, !tbaa !209
  br label %bb.br

.lr.ph.i318.preheader:                            ; preds = %.lr.ph.i318.preheader.preheader, %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit323.loopexit
  %.0347 = phi i64 [ %i.ws, %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit323.loopexit ], [ 0, %.lr.ph.i318.preheader.preheader ] ; 2 uses
  %i.wp = getelementptr inbounds nuw [8 x i8], ptr %i.wb, i64 %.0347
  %i.wq = load double, ptr %i.wp, align 8, !tbaa !58
  %i.wr = fneg double %i.wq                       ; 6 uses
  %i.ws = add nuw nsw i64 %.0347, 1               ; 3 uses
  %i.wt = mul nuw nsw i64 %i.vz, %i.ws
  %i.wu = getelementptr inbounds nuw [8 x i8], ptr %i.we, i64 %i.wt ; 3 uses
  %brmerge555 = or i1 %min.iters.check516, %i.wm
  br i1 %brmerge555, label %.lr.ph.i318.preheader536, label %vector.ph517

vector.ph517:                                     ; preds = %.lr.ph.i318.preheader
  %i.wv = getelementptr i8, ptr %i.wu, i64 %i.wn
  %broadcast.splatinsert519 = insertelement <2 x double> poison, double %i.wr, i64 0
  %broadcast.splat520 = shufflevector <2 x double> %broadcast.splatinsert519, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body521

vector.body521:                                   ; preds = %vector.body521, %vector.ph517
  %index522 = phi i64 [ 0, %vector.ph517 ], [ %index.next529, %vector.body521 ] ; 2 uses
  %i.ww = shl i64 %index522, 3                    ; 2 uses
  %next.gep523 = getelementptr i8, ptr %i.wu, i64 %i.ww ; 3 uses
  %next.gep524 = getelementptr i8, ptr %i.wd, i64 %i.ww ; 2 uses
  %i.wx = getelementptr i8, ptr %next.gep524, i64 16
  %wide.load525 = load <2 x double>, ptr %next.gep524, align 8, !tbaa !58, !alias.scope !747
  %wide.load526 = load <2 x double>, ptr %i.wx, align 8, !tbaa !58, !alias.scope !747
  %i.wy = getelementptr i8, ptr %next.gep523, i64 16 ; 2 uses
  %wide.load527 = load <2 x double>, ptr %next.gep523, align 8, !tbaa !58, !alias.scope !748, !noalias !747
  %wide.load528 = load <2 x double>, ptr %i.wy, align 8, !tbaa !58, !alias.scope !748, !noalias !747
  %i.wz = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat520, <2 x double> %wide.load525, <2 x double> %wide.load527)
  %i.xa = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat520, <2 x double> %wide.load526, <2 x double> %wide.load528)
  store <2 x double> %i.wz, ptr %next.gep523, align 8, !tbaa !58, !alias.scope !748, !noalias !747
  store <2 x double> %i.xa, ptr %i.wy, align 8, !tbaa !58, !alias.scope !748, !noalias !747
  %index.next529 = add nuw i64 %index522, 4       ; 2 uses
  %i.xb = icmp eq i64 %index.next529, %n.vec518
  br i1 %i.xb, label %middle.block530, label %vector.body521, !llvm.loop !733

middle.block530:                                  ; preds = %vector.body521
  br i1 %cmp.n531, label %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit323.loopexit, label %.lr.ph.i318.preheader536

.lr.ph.i318.preheader536:                         ; preds = %.lr.ph.i318.preheader, %middle.block530
  %.014.i319.ph = phi i64 [ %n.vec518, %middle.block530 ], [ 0, %.lr.ph.i318.preheader ] ; 3 uses
  %.0813.i320.ph = phi ptr [ %i.wv, %middle.block530 ], [ %i.wu, %.lr.ph.i318.preheader ] ; 2 uses
  %.0912.i321.ph = phi ptr [ %i.wo, %middle.block530 ], [ %i.wd, %.lr.ph.i318.preheader ] ; 2 uses
  br i1 %lcmp.mod545.not, label %.lr.ph.i318.prol.loopexit, label %.lr.ph.i318.prol

.lr.ph.i318.prol:                                 ; preds = %.lr.ph.i318.preheader536, %.lr.ph.i318.prol
  %.014.i319.prol = phi i64 [ %i.xh, %.lr.ph.i318.prol ], [ %.014.i319.ph, %.lr.ph.i318.preheader536 ]
  %.0813.i320.prol = phi ptr [ %i.xe, %.lr.ph.i318.prol ], [ %.0813.i320.ph, %.lr.ph.i318.preheader536 ] ; 3 uses
  %.0912.i321.prol = phi ptr [ %i.xc, %.lr.ph.i318.prol ], [ %.0912.i321.ph, %.lr.ph.i318.preheader536 ] ; 2 uses
  %prol.iter546 = phi i64 [ %prol.iter546.next, %.lr.ph.i318.prol ], [ 0, %.lr.ph.i318.preheader536 ]
  %i.xc = getelementptr inbounds nuw i8, ptr %.0912.i321.prol, i64 8 ; 2 uses
  %i.xd = load double, ptr %.0912.i321.prol, align 8, !tbaa !58
  %i.xe = getelementptr inbounds nuw i8, ptr %.0813.i320.prol, i64 8 ; 2 uses
  %i.xf = load double, ptr %.0813.i320.prol, align 8, !tbaa !58
  %i.xg = call double @llvm.fmuladd.f64(double %i.wr, double %i.xd, double %i.xf)
  store double %i.xg, ptr %.0813.i320.prol, align 8, !tbaa !58
  %i.xh = add nuw nsw i64 %.014.i319.prol, 1      ; 2 uses
  %prol.iter546.next = add i64 %prol.iter546, 1   ; 2 uses
  %prol.iter546.cmp.not = icmp eq i64 %prol.iter546.next, %xtraiter544
  br i1 %prol.iter546.cmp.not, label %.lr.ph.i318.prol.loopexit, label %.lr.ph.i318.prol, !llvm.loop !734

.lr.ph.i318.prol.loopexit:                        ; preds = %.lr.ph.i318.prol, %.lr.ph.i318.preheader536
  %.014.i319.unr = phi i64 [ %.014.i319.ph, %.lr.ph.i318.preheader536 ], [ %i.xh, %.lr.ph.i318.prol ]
  %.0813.i320.unr = phi ptr [ %.0813.i320.ph, %.lr.ph.i318.preheader536 ], [ %i.xe, %.lr.ph.i318.prol ]
  %.0912.i321.unr = phi ptr [ %.0912.i321.ph, %.lr.ph.i318.preheader536 ], [ %i.xc, %.lr.ph.i318.prol ]
  %i.xi = sub nsw i64 %.014.i319.ph, %i.vz
  %i.xj = icmp ugt i64 %i.xi, -4
  br i1 %i.xj, label %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit323.loopexit, label %.lr.ph.i318

.lr.ph.i318:                                      ; preds = %.lr.ph.i318.prol.loopexit, %.lr.ph.i318
  %.014.i319 = phi i64 [ %i.ye, %.lr.ph.i318 ], [ %.014.i319.unr, %.lr.ph.i318.prol.loopexit ]
  %.0813.i320 = phi ptr [ %i.yb, %.lr.ph.i318 ], [ %.0813.i320.unr, %.lr.ph.i318.prol.loopexit ] ; 6 uses
  %.0912.i321 = phi ptr [ %i.xz, %.lr.ph.i318 ], [ %.0912.i321.unr, %.lr.ph.i318.prol.loopexit ] ; 5 uses
  %i.xk = getelementptr inbounds nuw i8, ptr %.0912.i321, i64 8
end_hunk_1
begin_hunk_2_@_ZNK6casadi10Integrator10sp_reverseEPPyS2_PxS1_Pv:bb.a
  %i.ad = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef %i.ab, i64 noundef %i.ac)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.f ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  %i.ae = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ad, ptr noundef nonnull @.str.49, i64 noundef 4)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #35
  %i.af = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 6 uses
  store ptr %i.af, ptr %8, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #35
  store i64 61, ptr %i.a, align 8, !tbaa !31
  %i.ag = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.g     ; 3 uses

.noexc:                                           ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  store ptr %i.ag, ptr %8, align 8, !tbaa !33
  %i.ah = load i64, ptr %i.a, align 8, !tbaa !31  ; 3 uses
  store i64 %i.ah, ptr %i.af, align 8, !tbaa !34
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(61) %i.ag, ptr noundef nonnull align 1 dereferenceable(61) @.str.183, i64 61, i1 false)
  %i.ai = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.ah, ptr %i.ai, align 8, !tbaa !35
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ah
  store i8 0, ptr %i.aj, align 1, !tbaa !34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #35
  invoke void @_ZN6casadi9trim_pathERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %.noexc
  %i.ak = load ptr, ptr %7, align 8, !tbaa !33
  %i.al = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.am = load i64, ptr %i.al, align 8, !tbaa !35
  %i.an = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ad, ptr noundef %i.ak, i64 noundef %i.am)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit236 unwind label %bb.i ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit236: ; preds = %bb.e
  %i.ao = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.an, ptr noundef nonnull @.str.51, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit238 unwind label %bb.i ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit238: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit236
  %i.ap = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.an)
          to label %_ZNSolsEPFRSoS_E.exit unwind label %bb.i ; 0 uses

_ZNSolsEPFRSoS_E.exit:                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit238
  %i.aq = load ptr, ptr %7, align 8, !tbaa !33    ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSolsEPFRSoS_E.exit
  %i.at = load i64, ptr %i.ar, align 8, !tbaa !34
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.au) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSolsEPFRSoS_E.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.av = load ptr, ptr %8, align 8, !tbaa !33    ; 2 uses
  %i.aw = icmp eq ptr %i.av, %i.af
  br i1 %i.aw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit242, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i240

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i240: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ax = load i64, ptr %i.af, align 8, !tbaa !34
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.ay) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit242

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit242: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i240
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #35
  %i.az = load ptr, ptr %6, align 8, !tbaa !33    ; 2 uses
  %i.ba = icmp eq ptr %i.az, %i.l
  br i1 %i.ba, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit245, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i243

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i243: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit242
  %i.bb = load i64, ptr %i.l, align 8, !tbaa !34
  %i.bc = add i64 %i.bb, 1
  call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.bc) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit245

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit245: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit242, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i243
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #35
  br label %bb.k

bb.f:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.g:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit251

bb.h:                                             ; preds = %.noexc
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit248

bb.i:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit238, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit236, %bb.e
  %i.bg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bh = load ptr, ptr %7, align 8, !tbaa !33    ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.bj = icmp eq ptr %i.bh, %i.bi
  br i1 %i.bj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit248, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i246

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i246: ; preds = %bb.i
  %i.bk = load i64, ptr %i.bi, align 8, !tbaa !34
  %i.bl = add i64 %i.bk, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bl) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit248

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit248: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i246, %bb.h
  %.pn = phi { ptr, i32 } [ %i.bf, %bb.h ], [ %i.bg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i246 ], [ %i.bg, %bb.i ] ; 2 uses
  %i.bm = load ptr, ptr %8, align 8, !tbaa !33    ; 2 uses
  %i.bn = icmp eq ptr %i.bm, %i.af
  br i1 %i.bn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit251, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i249

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i249: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit248
  %i.bo = load i64, ptr %i.af, align 8, !tbaa !34
  %i.bp = add i64 %i.bo, 1
  call void @_ZdlPvm(ptr noundef %i.bm, i64 noundef %i.bp) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit251

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit251: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit248, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i249, %bb.g
  %.pn.pn = phi { ptr, i32 } [ %i.be, %bb.g ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i249 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit248 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #35
  br label %bb.j

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit251, %bb.f
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit251 ], [ %i.bd, %bb.f ]
  %i.bq = load ptr, ptr %6, align 8, !tbaa !33    ; 2 uses
  %i.br = icmp eq ptr %i.bq, %i.l
  br i1 %i.br, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit254, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i252

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i252: ; preds = %bb.j
  %i.bs = load i64, ptr %i.l, align 8, !tbaa !34
  %i.bt = add i64 %i.bs, 1
  call void @_ZdlPvm(ptr noundef %i.bq, i64 noundef %i.bt) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit254

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit254: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i252
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #35
  br label %common.resume

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit245, %bb.a
  %i.bu = load ptr, ptr %1, align 8, !tbaa !246   ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !246 ; 4 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !246 ; 4 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !246
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !246
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !267
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ce
  %i.cg = load ptr, ptr %2, align 8, !tbaa !246   ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !246 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !246 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !246 ; 4 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !246 ; 6 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !246
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !268
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.cs
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 1616 ; 17 uses
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !189 ; 3 uses
  %i.cw = getelementptr [8 x i8], ptr %4, i64 %i.cv ; 14 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 1664 ; 10 uses
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !214 ; 3 uses
  %i.cz = getelementptr [8 x i8], ptr %i.cw, i64 %i.cy ; 5 uses
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 1672 ; 5 uses
  %i.db = load i64, ptr %i.da, align 8, !tbaa !215
  %i.dc = getelementptr [8 x i8], ptr %i.cz, i64 %i.db ; 5 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 1680 ; 4 uses
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !218
  %i.df = getelementptr [8 x i8], ptr %i.dc, i64 %i.de ; 20 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 1624 ; 8 uses
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !194 ; 2 uses
  %i.di = getelementptr [8 x i8], ptr %i.df, i64 %i.cv
  %i.dj = getelementptr [8 x i8], ptr %i.di, i64 %i.dh ; 6 uses
  %i.dk = getelementptr [8 x i8], ptr %i.dj, i64 %i.cy ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #35
  store ptr %i.cf, ptr %9, align 8, !tbaa !270
  %i.dl = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %i.ct, ptr %i.dl, align 8, !tbaa !271
  %i.dm = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %3, ptr %i.dm, align 8, !tbaa !272
  %i.dn = getelementptr inbounds nuw i8, ptr %9, i64 24
  store ptr %i.dk, ptr %i.dn, align 8, !tbaa !273
  %i.do = add nsw i64 %i.dh, %i.cv                ; 2 uses
  %i.dp = icmp slt i64 %i.do, 1
  br i1 %i.dp, label %_ZSt6fill_nIPyxiET_S1_T0_RKT1_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.k
  %i.dq = shl nuw nsw i64 %i.do, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.df, i8 0, i64 %i.dq, i1 false), !tbaa !209
  %.pre = load i64, ptr %i.cx, align 8, !tbaa !214
  br label %_ZSt6fill_nIPyxiET_S1_T0_RKT1_.exit

_ZSt6fill_nIPyxiET_S1_T0_RKT1_.exit:              ; preds = %.lr.ph.i.i.i.i, %bb.k
  %i.dr = phi i64 [ %.pre, %.lr.ph.i.i.i.i ], [ %i.cy, %bb.k ] ; 4 uses
  %i.ds = icmp sgt i64 %i.dr, 0
  br i1 %i.ds, label %bb.l, label %bb.at

bb.l:                                             ; preds = %_ZSt6fill_nIPyxiET_S1_T0_RKT1_.exit
  %.not213 = icmp eq ptr %i.cm, null
  br i1 %.not213, label %_ZSt6fill_nIPyxiET_S1_T0_RKT1_.exit261.sink.split, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.not.i = icmp eq i64 %i.dr, 1
  br i1 %.not.i, label %bb.o, label %bb.n, !prof !151

bb.n:                                             ; preds = %bb.m
  %.idx.i.i255 = shl nuw nsw i64 %i.dr, 3
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.cw, ptr nonnull align 8 %i.cm, i64 %.idx.i.i255, i1 false)
  br label %_ZSt6copy_nIPyxS0_ET1_T_T0_S1_.exit

bb.o:                                             ; preds = %bb.m
  %i.dt = load i64, ptr %i.cm, align 8, !tbaa !209
  store i64 %i.dt, ptr %i.cw, align 8, !tbaa !209
  br label %_ZSt6copy_nIPyxS0_ET1_T_T0_S1_.exit

_ZSt6copy_nIPyxS0_ET1_T_T0_S1_.exit:              ; preds = %bb.n, %bb.o
  %i.du = load i64, ptr %i.cx, align 8, !tbaa !214 ; 2 uses
  %i.dv = icmp slt i64 %i.du, 1
  br i1 %i.dv, label %_ZSt6fill_nIPyxiET_S1_T0_RKT1_.exit261, label %_ZSt6fill_nIPyxiET_S1_T0_RKT1_.exit261.sink.split

_ZSt6fill_nIPyxiET_S1_T0_RKT1_.exit261.sink.split: ; preds = %bb.l, %_ZSt6copy_nIPyxS0_ET1_T_T0_S1_.exit
  %.sink473 = phi i64 [ %i.du, %_ZSt6copy_nIPyxS0_ET1_T_T0_S1_.exit ], [ %i.dr, %bb.l ]
  %.sink = phi ptr [ %i.cm, %_ZSt6copy_nIPyxS0_ET1_T_T0_S1_.exit ], [ %i.cw, %bb.l ]
  %.idx.i.i257 = shl nuw nsw i64 %.sink473, 3
  call void @llvm.memset.p0.i64(ptr align 8 %.sink, i8 0, i64 %.idx.i.i257, i1 false), !tbaa !209
  br label %_ZSt6fill_nIPyxiET_S1_T0_RKT1_.exit261

_ZSt6fill_nIPyxiET_S1_T0_RKT1_.exit261:           ; preds = %_ZSt6fill_nIPyxiET_S1_T0_RKT1_.exit261.sink.split, %_ZSt6copy_nIPyxS0_ET1_T_T0_S1_.exit
  %i.dw = load i64, ptr %i.da, align 8, !tbaa !215 ; 2 uses
  %i.dx = icmp slt i64 %i.dw, 1
  br i1 %i.dx, label %_ZSt6fill_nIPyxiET_S1_T0_RKT1_.exit273, label %.lr.ph.i.i.i.i268

.lr.ph.i.i.i.i268:                                ; preds = %_ZSt6fill_nIPyxiET_S1_T0_RKT1_.exit261
  %.idx.i.i269 = shl nuw nsw i64 %i.dw, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.cz, i8 0, i64 %.idx.i.i269, i1 false), !tbaa !209
  br label %_ZSt6fill_nIPyxiET_S1_T0_RKT1_.exit273

_ZSt6fill_nIPyxiET_S1_T0_RKT1_.exit273:           ; preds = %.lr.ph.i.i.i.i268, %_ZSt6fill_nIPyxiET_S1_T0_RKT1_.exit261
  %i.dy = icmp ne ptr %i.co, null                 ; 3 uses
  br i1 %i.dy, label %bb.p, label %_ZSt6copy_nIPyxS0_ET1_T_T0_S1_.exit278

bb.p:                                             ; preds = %_ZSt6fill_nIPyxiET_S1_T0_RKT1_.exit273
  %i.dz = load i64, ptr %i.dd, align 8, !tbaa !218 ; 3 uses
  %i.ea = icmp slt i64 %i.dz, 1
  br i1 %i.ea, label %_ZSt6copy_nIPyxS0_ET1_T_T0_S1_.exit278, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.not.i275 = icmp eq i64 %i.dz, 1
  br i1 %.not.i275, label %bb.s, label %bb.r, !prof !151

bb.r:                                             ; preds = %bb.q
  %.idx.i.i274 = shl nuw nsw i64 %i.dz, 3
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.dc, ptr nonnull align 8 %i.co, i64 %.idx.i.i274, i1 false)
  br label %_ZSt6copy_nIPyxS0_ET1_T_T0_S1_.exit278

bb.s:                                             ; preds = %bb.q
  %i.eb = load i64, ptr %i.co, align 8, !tbaa !209
  store i64 %i.eb, ptr %i.dc, align 8, !tbaa !209
  br label %_ZSt6copy_nIPyxS0_ET1_T_T0_S1_.exit278

_ZSt6copy_nIPyxS0_ET1_T_T0_S1_.exit278:           ; preds = %bb.p, %bb.s, %bb.r, %_ZSt6fill_nIPyxiET_S1_T0_RKT1_.exit273
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 1568 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 1576 ; 2 uses
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !59
  %i.ef = load ptr, ptr %i.ec, align 8, !tbaa !55
  %i.eg = ptrtoint ptr %i.ee to i64
  %i.eh = ptrtoint ptr %i.ef to i64
  %i.ei = sub i64 %i.eg, %i.eh
  %.not220378 = icmp sgt i64 %i.ei, 0
  br i1 %.not220378, label %.lr.ph384, label %.critedge

.lr.ph384:                                        ; preds = %_ZSt6copy_nIPyxS0_ET1_T_T0_S1_.exit278
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 1688 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 1552
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 1736
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 1760
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph384, %bb.as
  %.0166383 = phi i64 [ 0, %.lr.ph384 ], [ %i.gl, %bb.as ]
  %.0167382 = phi ptr [ %i.cq, %.lr.ph384 ], [ %.1168, %bb.as ] ; 4 uses
  %.0177381 = phi ptr [ %i.cc, %.lr.ph384 ], [ %.1178, %bb.as ] ; 4 uses
  %.0179380 = phi ptr [ %i.ca, %.lr.ph384 ], [ %.1180, %bb.as ] ; 4 uses
  %.0181379 = phi ptr [ %i.by, %.lr.ph384 ], [ %.1182, %bb.as ] ; 4 uses
  br i1 %i.dy, label %bb.u, label %_ZSt6copy_nIPyxS0_ET1_T_T0_S1_.exit283

bb.u:                                             ; preds = %bb.t
  %i.en = load i64, ptr %i.dd, align 8, !tbaa !218 ; 3 uses
  %i.eo = icmp slt i64 %i.en, 1
  br i1 %i.eo, label %_ZSt6copy_nIPyxS0_ET1_T_T0_S1_.exit283, label %bb.v

bb.v:                                             ; preds = %bb.u
  %.not.i280 = icmp eq i64 %i.en, 1
  br i1 %.not.i280, label %bb.x, label %bb.w, !prof !151

bb.w:                                             ; preds = %bb.v
  %.idx.i.i279 = shl nuw nsw i64 %i.en, 3
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.co, ptr align 8 %i.dc, i64 %.idx.i.i279, i1 false)
  br label %_ZSt6copy_nIPyxS0_ET1_T_T0_S1_.exit283

bb.x:                                             ; preds = %bb.v
  %i.ep = load i64, ptr %i.dc, align 8, !tbaa !209
  store i64 %i.ep, ptr %i.co, align 8, !tbaa !209
  br label %_ZSt6copy_nIPyxS0_ET1_T_T0_S1_.exit283

_ZSt6copy_nIPyxS0_ET1_T_T0_S1_.exit283:           ; preds = %bb.u, %bb.x, %bb.w, %bb.t
  %.not214 = icmp eq ptr %.0179380, null          ; 2 uses
  br i1 %.not214, label %_ZSt6fill_nIPyxiET_S1_T0_RKT1_.exit289, label %.preheader371

.preheader371:                                    ; preds = %_ZSt6copy_nIPyxS0_ET1_T_T0_S1_.exit283
  %i.eq = load i64, ptr %i.cx, align 8, !tbaa !214
  %i.er = icmp sgt i64 %i.eq, 0
  br i1 %i.er, label %.lr.ph, label %_ZSt6fill_nIPyxiET_S1_T0_RKT1_.exit289

._crit_edge:                                      ; preds = %.lr.ph
  %i.es = icmp slt i64 %i.ez, 1
  br i1 %i.es, label %_ZSt6fill_nIPyxiET_S1_T0_RKT1_.exit289, label %.lr.ph.i.i.i.i284

.lr.ph.i.i.i.i284:                                ; preds = %._crit_edge
  %.idx.i.i285 = shl nuw nsw i64 %i.ez, 3
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %.0179380, i8 0, i64 %.idx.i.i285, i1 false), !tbaa !209
  br label %_ZSt6fill_nIPyxiET_S1_T0_RKT1_.exit289

.lr.ph:                                           ; preds = %.preheader371, %.lr.ph
  %.0164377 = phi i64 [ %i.ey, %.lr.ph ], [ 0, %.preheader371 ] ; 3 uses
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %.0179380, i64 %.0164377
  %i.eu = load i64, ptr %i.et, align 8, !tbaa !209
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %.0164377 ; 2 uses
  %i.ew = load i64, ptr %i.ev, align 8, !tbaa !209
  %i.ex = or i64 %i.ew, %i.eu
  store i64 %i.ex, ptr %i.ev, align 8, !tbaa !209
  %i.ey = add nuw nsw i64 %.0164377, 1            ; 2 uses
  %i.ez = load i64, ptr %i.cx, align 8, !tbaa !214 ; 3 uses
  %i.fa = icmp slt i64 %i.ey, %i.ez
  br i1 %i.fa, label %.lr.ph, label %._crit_edge, !llvm.loop !1024

_ZSt6fill_nIPyxiET_S1_T0_RKT1_.exit289:           ; preds = %.preheader371, %.lr.ph.i.i.i.i284, %._crit_edge, %_ZSt6copy_nIPyxS0_ET1_T_T0_S1_.exit283
  %i.fb = load i64, ptr %i.dd, align 8, !tbaa !218
  %i.fc = icmp sgt i64 %i.fb, 0
  %or.cond = and i1 %i.dy, %i.fc
  br i1 %or.cond, label %bb.z, label %bb.y

bb.y:                                             ; preds = %_ZSt6fill_nIPyxiET_S1_T0_RKT1_.exit289
  %i.fd = load i64, ptr %i.ej, align 8, !tbaa !217
  %i.fe = icmp sgt i64 %i.fd, 0
  %i.ff = icmp ne ptr %.0167382, null
  %or.cond4 = select i1 %i.fe, i1 %i.ff, i1 false
  br i1 %or.cond4, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y, %_ZSt6fill_nIPyxiET_S1_T0_RKT1_.exit289
  %i.fg = load i64, ptr %i.cu, align 8, !tbaa !189
  %i.fh = getelementptr inbounds [8 x i8], ptr %i.df, i64 %i.fg
  %i.fi = call noundef i32 @_ZNK6casadi10Integrator16bquad_sp_reverseEPNS_12SpReverseMemEPyS3_S3_S3_S3_S3_S3_S3_S3_(ptr noundef nonnull align 8 dereferenceable(1984) %0, ptr noundef nonnull %9, ptr noundef %i.df, ptr noundef %i.fh, ptr noundef %i.bw, ptr noundef %.0181379, ptr noundef %i.cw, ptr noundef %i.cz, ptr noundef %.0177381, ptr noundef %i.co, ptr noundef %.0167382)
  %.not215 = icmp eq i32 %i.fi, 0
  br i1 %.not215, label %bb.aa, label %.loopexit

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.fj = load i64, ptr %i.cx, align 8, !tbaa !214
  %i.fk = load i64, ptr %i.da, align 8, !tbaa !215
  %i.fl = add nsw i64 %i.fk, %i.fj                ; 2 uses
  %i.fm = icmp slt i64 %i.fl, 1
  br i1 %i.fm, label %_ZSt6fill_nIPyxiET_S1_T0_RKT1_.exit295, label %.lr.ph.i.i.i.i290

.lr.ph.i.i.i.i290:                                ; preds = %bb.aa
  %.idx.i.i291 = shl nuw nsw i64 %i.fl, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.dk, i8 0, i64 %.idx.i.i291, i1 false), !tbaa !209
  br label %_ZSt6fill_nIPyxiET_S1_T0_RKT1_.exit295

_ZSt6fill_nIPyxiET_S1_T0_RKT1_.exit295:           ; preds = %.lr.ph.i.i.i.i290, %bb.aa
  call void @_ZNK6casadi8Sparsity7spsolveEPyS1_b(ptr noundef nonnull align 8 dereferenceable(8) %i.ek, ptr noundef %i.dk, ptr noundef %i.cw, i1 noundef zeroext true)
  %i.fn = load i64, ptr %i.cx, align 8, !tbaa !214 ; 2 uses
  %i.fo = load i64, ptr %i.da, align 8, !tbaa !215
  %i.fp = add nsw i64 %i.fo, %i.fn                ; 3 uses
  %i.fq = icmp slt i64 %i.fp, 1
  br i1 %i.fq, label %_ZSt6copy_nIPyxS0_ET1_T_T0_S1_.exit300, label %bb.ab

bb.ab:                                            ; preds = %_ZSt6fill_nIPyxiET_S1_T0_RKT1_.exit295
  %.not.i297 = icmp eq i64 %i.fp, 1
  br i1 %.not.i297, label %bb.ad, label %bb.ac, !prof !151

bb.ac:                                            ; preds = %bb.ab
  %.idx.i.i296 = shl nuw nsw i64 %i.fp, 3
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.cw, ptr align 8 %i.dk, i64 %.idx.i.i296, i1 false)
  br label %_ZSt6copy_nIPyxS0_ET1_T_T0_S1_.exit300thread-pre-split

bb.ad:                                            ; preds = %bb.ab
  %i.fr = load i64, ptr %i.dk, align 8, !tbaa !209
  store i64 %i.fr, ptr %i.cw, align 8, !tbaa !209
end_hunk_2
