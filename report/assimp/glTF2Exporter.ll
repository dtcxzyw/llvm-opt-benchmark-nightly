inline.NumInlined: 7264
inline.NumDeleted: 2661
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_Z10ExportSkinRN5glTF25AssetEPK6aiMeshRN10glTFCommon3RefINS_4MeshEEERNS6_INS_6BufferEEERNS6_INS_4SkinEEERSt6vectorI12aiMatrix4x4tIfESaISI_EEb:bb.a
  %i.ih = load i32, ptr %i.ig, align 4
  %i.ii = uitofp i32 %i.ih to float
  %i.ij = getelementptr inbounds nuw i8, ptr %i.hh, i64 4
  store float %i.ii, ptr %i.ij, align 4
  %i.ik = load ptr, ptr %i.hc, align 8
  %i.il = getelementptr inbounds nuw [8 x i8], ptr %i.ik, i64 %i.hy
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 4
  %i.in = load float, ptr %i.im, align 4
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %.sink = phi float [ %i.in, %bb.ak ], [ 0.000000e+00, %bb.aj ]
  %i.io = getelementptr inbounds nuw i8, ptr %i.hi, i64 4
  store float %.sink, ptr %i.io, align 4
  %i.ip = or disjoint i64 %i.he, 2                ; 3 uses
  %i.iq = load ptr, ptr %i.hd, align 8
  %i.ir = load ptr, ptr %i.hc, align 8            ; 2 uses
  %i.is = ptrtoint ptr %i.iq to i64
  %i.it = ptrtoint ptr %i.ir to i64
  %i.iu = sub i64 %i.is, %i.it
  %i.iv = ashr exact i64 %i.iu, 3
  %.not.2 = icmp ult i64 %i.ip, %i.iv
  br i1 %.not.2, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.iw = getelementptr inbounds nuw i8, ptr %i.hh, i64 8
  store float 0.000000e+00, ptr %i.iw, align 4
  br label %bb.ao

bb.an:                                            ; preds = %bb.al
  %i.ix = getelementptr inbounds nuw [8 x i8], ptr %i.ir, i64 %i.ip
  %i.iy = load i32, ptr %i.ix, align 4
  %i.iz = uitofp i32 %i.iy to float
  %i.ja = getelementptr inbounds nuw i8, ptr %i.hh, i64 8
  store float %i.iz, ptr %i.ja, align 4
  %i.jb = load ptr, ptr %i.hc, align 8
  %i.jc = getelementptr inbounds nuw [8 x i8], ptr %i.jb, i64 %i.ip
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 4
  %i.je = load float, ptr %i.jd, align 4
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %.sink506 = phi float [ %i.je, %bb.an ], [ 0.000000e+00, %bb.am ]
  %i.jf = getelementptr inbounds nuw i8, ptr %i.hi, i64 8
  store float %.sink506, ptr %i.jf, align 4
  %i.jg = or disjoint i64 %i.he, 3                ; 3 uses
  %i.jh = load ptr, ptr %i.hd, align 8
  %i.ji = load ptr, ptr %i.hc, align 8            ; 2 uses
  %i.jj = ptrtoint ptr %i.jh to i64
  %i.jk = ptrtoint ptr %i.ji to i64
  %i.jl = sub i64 %i.jj, %i.jk
  %i.jm = ashr exact i64 %i.jl, 3
  %.not.3 = icmp ult i64 %i.jg, %i.jm
  br i1 %.not.3, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.jn = getelementptr inbounds nuw i8, ptr %i.hh, i64 12
  store float 0.000000e+00, ptr %i.jn, align 4
  br label %bb.ar

bb.aq:                                            ; preds = %bb.ao
  %i.jo = getelementptr inbounds nuw [8 x i8], ptr %i.ji, i64 %i.jg
  %i.jp = load i32, ptr %i.jo, align 4
  %i.jq = uitofp i32 %i.jp to float
  %i.jr = getelementptr inbounds nuw i8, ptr %i.hh, i64 12
  store float %i.jq, ptr %i.jr, align 4
  %i.js = load ptr, ptr %i.hc, align 8
  %i.jt = getelementptr inbounds nuw [8 x i8], ptr %i.js, i64 %i.jg
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 4
  %i.jv = load float, ptr %i.ju, align 4
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %.sink508 = phi float [ %i.jv, %bb.aq ], [ 0.000000e+00, %bb.ap ]
  %i.jw = getelementptr inbounds nuw i8, ptr %i.hi, i64 12
  store float %.sink508, ptr %i.jw, align 4
  %i.jx = add nuw i64 %.0157393, 1                ; 2 uses
  %exitcond426.not = icmp eq i64 %i.jx, %i.au
  br i1 %exitcond426.not, label %._crit_edge394, label %.preheader323, !llvm.loop !176

bb.as:                                            ; preds = %.lr.ph402, %_ZNSt6vectorIN10glTFCommon3RefIN5glTF28AccessorEEESaIS4_EE9push_backERKS4_.exit240
  %.0159401 = phi i64 [ 0, %.lr.ph402 ], [ %i.qv, %_ZNSt6vectorIN10glTFCommon3RefIN5glTF28AccessorEEESaIS4_EE9push_backERKS4_.exit240 ] ; 2 uses
  %i.jy = load ptr, ptr %2, align 8
  %i.jz = load i32, ptr %i.gl, align 8
  %i.ka = zext i32 %i.jz to i64
  %i.kb = load ptr, ptr %i.jy, align 8
  %i.kc = getelementptr inbounds nuw [8 x i8], ptr %i.kb, i64 %i.ka
  %i.kd = load ptr, ptr %i.kc, align 8
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 272
  %i.kf = load ptr, ptr %i.ke, align 8            ; 6 uses
  %i.kg = load ptr, ptr %4, align 8
  %i.kh = load i32, ptr %i.gm, align 8
  %i.ki = zext i32 %i.kh to i64
  %i.kj = load ptr, ptr %i.kg, align 8
  %i.kk = getelementptr inbounds nuw [8 x i8], ptr %i.kj, i64 %i.ki
  %i.kl = load ptr, ptr %i.kk, align 8
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 16
  %i.kn = load i32, ptr %i.d, align 4
  %i.ko = zext i32 %i.kn to i64
  %i.kp = mul i64 %.0159401, %i.f                 ; 2 uses
  %i.kq = getelementptr inbounds nuw [16 x i8], ptr %i.az, i64 %i.kp
  %i.kr = invoke { ptr, i32 } @_Z10ExportDataRN5glTF25AssetERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERN10glTFCommon3RefINS_6BufferEEEmPvNS_10AttribType5ValueESG_NS_13ComponentTypeENS_16BufferViewTargetE(ptr noundef nonnull align 8 dereferenceable(3624) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.km, ptr noundef nonnull align 8 dereferenceable(12) %3, i64 noundef %i.ko, ptr noundef nonnull %i.kq, i32 noundef 3, i32 noundef 3, i32 noundef 5126, i32 noundef 0)
          to label %bb.at unwind label %bb.bc     ; 2 uses

bb.at:                                            ; preds = %bb.as
  %.fca.0.extract22 = extractvalue { ptr, i32 } %i.kr, 0 ; 7 uses
  %.fca.1.extract23 = extractvalue { ptr, i32 } %i.kr, 1 ; 3 uses
  %.not.i207 = icmp eq ptr %.fca.0.extract22, null
  br i1 %.not.i207, label %_ZNK10glTFCommon3RefIN5glTF28AccessorEEcvbEv.exit.thread, label %_ZNK10glTFCommon3RefIN5glTF28AccessorEEcvbEv.exit

_ZNK10glTFCommon3RefIN5glTF28AccessorEEcvbEv.exit: ; preds = %bb.at
  %i.ks = zext i32 %.fca.1.extract23 to i64       ; 4 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %.fca.0.extract22, i64 8
  %i.ku = load ptr, ptr %i.kt, align 8
  %i.kv = load ptr, ptr %.fca.0.extract22, align 8 ; 2 uses
  %i.kw = ptrtoint ptr %i.ku to i64
  %i.kx = ptrtoint ptr %i.kv to i64
  %i.ky = sub i64 %i.kw, %i.kx
  %i.kz = ashr exact i64 %i.ky, 3
  %i.la = icmp ugt i64 %i.kz, %i.ks
  br i1 %i.la, label %bb.au, label %_ZNK10glTFCommon3RefIN5glTF28AccessorEEcvbEv.exit.thread

bb.au:                                            ; preds = %_ZNK10glTFCommon3RefIN5glTF28AccessorEEcvbEv.exit
  %i.lb = getelementptr inbounds nuw [8 x i8], ptr %i.kv, i64 %i.ks
  %i.lc = load ptr, ptr %i.lb, align 8            ; 3 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 264
  %i.le = load ptr, ptr %i.ld, align 8
  %i.lf = getelementptr inbounds nuw i8, ptr %i.lc, i64 272
  %i.lg = load i32, ptr %i.lf, align 8
  %i.lh = zext i32 %i.lg to i64
  %i.li = load ptr, ptr %i.le, align 8
  %i.lj = getelementptr inbounds nuw [8 x i8], ptr %i.li, i64 %i.lh
  %i.lk = load ptr, ptr %i.lj, align 8            ; 4 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 280
  %i.lm = load i64, ptr %i.ll, align 8            ; 5 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lk, i64 288
  %i.lo = load i64, ptr %i.ln, align 8            ; 7 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lc, i64 288
  %i.lq = load i32, ptr %i.lp, align 8            ; 3 uses
  %switch.tableidx = add i32 %i.lq, -5120         ; 2 uses
  %i.lr = icmp ult i32 %switch.tableidx, 7
  %switch.maskindex = trunc i32 %i.lq to i8
  %switch.shifted = lshr i8 111, %switch.maskindex
  %switch.lobit = trunc i8 %switch.shifted to i1
  %or.cond = select i1 %i.lr, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ls = call ptr @__cxa_allocate_exception(i64 16) #31 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  invoke void @_Z12ai_to_stringIN5glTF213ComponentTypeEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, i32 noundef %i.lq)
          to label %bb.aw unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.aw:                                            ; preds = %bb.av
  invoke void @_ZN17DeadlyImportErrorC2IJRA34_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.ls, ptr noundef nonnull align 1 dereferenceable(34) @.str.247, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.ax unwind label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  invoke void @__cxa_throw(ptr nonnull %i.ls, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #34
          to label %bb.ba unwind label %bb.ay

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.av
  %i.lt = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  br label %bb.az

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %.0.i208 = phi i1 [ false, %bb.ax ], [ true, %bb.aw ] ; 2 uses
  %i.lu = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.lv = load ptr, ptr %7, align 8               ; 2 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.lx = icmp eq ptr %i.lv, %i.lw
  br i1 %i.lx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.ay
  %i.ly = load i64, ptr %i.lw, align 8
  %i.lz = add i64 %i.ly, 1
  call void @_ZdlPvm(ptr noundef %i.lv, i64 noundef %i.lz) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  br i1 %.0.i208, label %bb.az, label %.body

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  br i1 %.0.i208, label %bb.az, label %.body

bb.az:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn12.i = phi { ptr, i32 } [ %i.lt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.lu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.lu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.ls) #31
  br label %.body

bb.ba:                                            ; preds = %bb.ax
  unreachable

switch.lookup:                                    ; preds = %bb.au
  %i.ma = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN5glTF28Accessor17WriteSparseValuesEmPKvm, i64 %i.ma
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32       ; 2 uses
  %i.mb = shl nuw nsw i64 %i.lo, 1
  %i.mc = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %switch.ext, i1 true)
  %i.md = zext nneg i32 %i.mc to i64
  %i.me = lshr i64 %i.mb, %i.md
  %i.mf = getelementptr inbounds nuw i8, ptr %i.lk, i64 264
  %.sroa.0247.0.copyload = load ptr, ptr %i.mf, align 8 ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.lk, i64 272
  %.sroa.6.0.copyload = load i32, ptr %.sroa.6.0..sroa_idx, align 8
  %i.mg = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.lo) #33
          to label %.preheader unwind label %bb.bd ; 3 uses

.preheader:                                       ; preds = %switch.lookup
  %.not411 = icmp eq i64 %i.lo, 0
  br i1 %.not411, label %_ZN5glTF26Buffer17ReplaceData_jointEmmPKhm.exit, label %.lr.ph399

.lr.ph399:                                        ; preds = %.preheader
  %i.mh = zext i32 %.sroa.6.0.copyload to i64     ; 2 uses
  br label %bb.be

bb.bb:                                            ; preds = %bb.be
  %i.mi = load ptr, ptr %.sroa.0247.0.copyload, align 8
  %i.mj = getelementptr inbounds nuw [8 x i8], ptr %i.mi, i64 %i.mh
  %i.mk = load ptr, ptr %i.mj, align 8            ; 2 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mk, i64 264 ; 2 uses
  %i.mm = load i64, ptr %i.ml, align 8            ; 3 uses
  %i.mn = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.mm) #33
          to label %.noexc209 unwind label %.loopexit ; 4 uses

.noexc209:                                        ; preds = %bb.bb
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mk, i64 296 ; 2 uses
  %i.mp = load ptr, ptr %i.mo, align 8            ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.mn, ptr align 1 %i.mp, i64 %i.lm, i1 false)
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mn, i64 %i.lm
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.mq, ptr nonnull align 1 %i.mg, i64 %i.lo, i1 false)
  %i.mr = add i64 %i.lo, %i.lm                    ; 2 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mn, i64 %i.mr
  %i.mt = getelementptr i8, ptr %i.mp, i64 %i.lm
  %i.mu = getelementptr i8, ptr %i.mt, i64 %i.lo
  %i.mv = sub i64 %i.mm, %i.mr
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ms, ptr align 1 %i.mu, i64 %i.mv, i1 false)
  invoke void @_ZNSt12__shared_ptrIhLN9__gnu_cxx12_Lock_policyE2EE5resetIhSt14default_deleteIA_hEEENSt9enable_ifIXsr21__sp_is_constructibleIhT_EE5valueEvE4typeEPS8_T0_(ptr noundef nonnull align 8 dereferenceable(16) %i.mo, ptr noundef nonnull %i.mn)
          to label %.noexc210 unwind label %.loopexit

.noexc210:                                        ; preds = %.noexc209
  store i64 %i.mm, ptr %i.ml, align 8
  br label %_ZN5glTF26Buffer17ReplaceData_jointEmmPKhm.exit

bb.bc:                                            ; preds = %bb.as
  %i.mw = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.bd:                                            ; preds = %switch.lookup
  %i.mx = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.be:                                            ; preds = %.lr.ph399, %bb.be
  %i.my = phi i64 [ 0, %.lr.ph399 ], [ %i.nn, %bb.be ]
  %.0147398 = phi i32 [ 0, %.lr.ph399 ], [ %i.nm, %bb.be ]
  %.0148397 = phi i32 [ 0, %.lr.ph399 ], [ %i.nl, %bb.be ] ; 2 uses
  %i.mz = load ptr, ptr %.sroa.0247.0.copyload, align 8
  %i.na = getelementptr inbounds nuw [8 x i8], ptr %i.mz, i64 %i.mh
  %i.nb = load ptr, ptr %i.na, align 8
  %i.nc = getelementptr inbounds nuw i8, ptr %i.nb, i64 296
  %i.nd = load ptr, ptr %i.nc, align 8
  %i.ne = getelementptr i8, ptr %i.nd, i64 %i.lm
  %i.nf = getelementptr i8, ptr %i.ne, i64 %i.my
  %i.ng = load float, ptr %i.nf, align 4
  %i.nh = fptoui float %i.ng to i16
  %i.ni = shl i32 %.0148397, 1
  %i.nj = zext i32 %i.ni to i64
  %i.nk = getelementptr inbounds nuw i8, ptr %i.mg, i64 %i.nj
  store i16 %i.nh, ptr %i.nk, align 1
  %i.nl = add i32 %.0148397, 1
  %i.nm = add i32 %.0147398, %switch.ext          ; 2 uses
  %i.nn = zext i32 %i.nm to i64                   ; 2 uses
  %i.no = icmp ugt i64 %i.lo, %i.nn
  br i1 %i.no, label %bb.be, label %bb.bb, !llvm.loop !177

_ZN5glTF26Buffer17ReplaceData_jointEmmPKhm.exit:  ; preds = %.preheader, %.noexc210
  %i.np = load ptr, ptr %.fca.0.extract22, align 8
  %i.nq = getelementptr inbounds nuw [8 x i8], ptr %i.np, i64 %i.ks
  %i.nr = load ptr, ptr %i.nq, align 8
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nr, i64 288
  store i32 5123, ptr %i.ns, align 8
  %i.nt = load ptr, ptr %.fca.0.extract22, align 8
  %i.nu = getelementptr inbounds nuw [8 x i8], ptr %i.nt, i64 %i.ks
  %i.nv = load ptr, ptr %i.nu, align 8            ; 2 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nv, i64 264
  %i.nx = load ptr, ptr %i.nw, align 8
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nv, i64 272
  %i.nz = load i32, ptr %i.ny, align 8
  %i.oa = zext i32 %i.nz to i64
  %i.ob = load ptr, ptr %i.nx, align 8
  %i.oc = getelementptr inbounds nuw [8 x i8], ptr %i.ob, i64 %i.oa
  %i.od = load ptr, ptr %i.oc, align 8
  %i.oe = getelementptr inbounds nuw i8, ptr %i.od, i64 288
  store i64 %i.me, ptr %i.oe, align 8
  %i.of = getelementptr inbounds i8, ptr %i.kf, i64 -136 ; 2 uses
  %i.og = getelementptr inbounds i8, ptr %i.kf, i64 -128 ; 4 uses
  %i.oh = load ptr, ptr %i.og, align 8            ; 6 uses
  %i.oi = getelementptr inbounds i8, ptr %i.kf, i64 -120 ; 2 uses
  %i.oj = load ptr, ptr %i.oi, align 8
  %.not.i211 = icmp eq ptr %i.oh, %i.oj
  br i1 %.not.i211, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %_ZN5glTF26Buffer17ReplaceData_jointEmmPKhm.exit
  store ptr %.fca.0.extract22, ptr %i.oh, align 8
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.oh, i64 8
  store i32 %.fca.1.extract23, ptr %.sroa.13.0..sroa_idx, align 8
  %i.ok = load ptr, ptr %i.og, align 8
  %i.ol = getelementptr inbounds nuw i8, ptr %i.ok, i64 16
  store ptr %i.ol, ptr %i.og, align 8
  br label %_ZNSt6vectorIN10glTFCommon3RefIN5glTF28AccessorEEESaIS4_EE9push_backERKS4_.exit

bb.bg:                                            ; preds = %_ZN5glTF26Buffer17ReplaceData_jointEmmPKhm.exit
  %i.om = load ptr, ptr %i.of, align 8            ; 5 uses
  %i.on = ptrtoint ptr %i.oh to i64
  %i.oo = ptrtoint ptr %i.om to i64
  %i.op = sub i64 %i.on, %i.oo                    ; 4 uses
  %i.oq = icmp eq i64 %i.op, 9223372036854775792
  br i1 %i.oq, label %bb.bh, label %_ZNKSt6vectorIN10glTFCommon3RefIN5glTF28AccessorEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i

bb.bh:                                            ; preds = %bb.bg
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.90) #34
          to label %.noexc221 unwind label %.loopexit.split-lp

.noexc221:                                        ; preds = %bb.bh
  unreachable

_ZNKSt6vectorIN10glTFCommon3RefIN5glTF28AccessorEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.bg
  %i.or = ashr exact i64 %i.op, 4                 ; 3 uses
  %.sroa.speculated.i.i.i212 = call i64 @llvm.umax.i64(i64 %i.or, i64 1)
  %i.os = add nsw i64 %.sroa.speculated.i.i.i212, %i.or ; 2 uses
  %i.ot = icmp ult i64 %i.os, %i.or
  %i.ou = call i64 @llvm.umin.i64(i64 %i.os, i64 576460752303423487)
  %i.ov = select i1 %i.ot, i64 576460752303423487, i64 %i.ou ; 3 uses
  %.not.i.i.i213 = icmp ne i64 %i.ov, 0
  call void @llvm.assume(i1 %.not.i.i.i213)
  %i.ow = shl nuw nsw i64 %i.ov, 4
  %i.ox = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ow) #33
          to label %.noexc222 unwind label %.loopexit ; 5 uses

.noexc222:                                        ; preds = %_ZNKSt6vectorIN10glTFCommon3RefIN5glTF28AccessorEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ox, i64 %i.op ; 2 uses
  store ptr %.fca.0.extract22, ptr %i.oy, align 8
  %.sroa.13.0..sroa_idx258 = getelementptr inbounds nuw i8, ptr %i.oy, i64 8
  store i32 %.fca.1.extract23, ptr %.sroa.13.0..sroa_idx258, align 8
  %.not10.i.i.i.i.i214 = icmp eq ptr %i.om, %i.oh
  br i1 %.not10.i.i.i.i.i214, label %_ZNSt6vectorIN10glTFCommon3RefIN5glTF28AccessorEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i, label %.lr.ph.i.i.i.i.i215

.lr.ph.i.i.i.i.i215:                              ; preds = %.noexc222, %.lr.ph.i.i.i.i.i215
  %.012.i.i.i.i.i216 = phi ptr [ %i.pa, %.lr.ph.i.i.i.i.i215 ], [ %i.ox, %.noexc222 ] ; 2 uses
  %.0911.i.i.i.i.i217 = phi ptr [ %i.oz, %.lr.ph.i.i.i.i.i215 ], [ %i.om, %.noexc222 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i216, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i217, i64 16, i1 false), !alias.scope !178
  %i.oz = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i217, i64 16 ; 2 uses
  %i.pa = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i216, i64 16 ; 2 uses
  %.not.i.i.i.i.i218 = icmp eq ptr %i.oz, %i.oh
  br i1 %.not.i.i.i.i.i218, label %_ZNSt6vectorIN10glTFCommon3RefIN5glTF28AccessorEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i, label %.lr.ph.i.i.i.i.i215, !llvm.loop !45

_ZNSt6vectorIN10glTFCommon3RefIN5glTF28AccessorEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i215, %.noexc222
  %.0.lcssa.i.i.i.i.i219 = phi ptr [ %i.ox, %.noexc222 ], [ %i.pa, %.lr.ph.i.i.i.i.i215 ]
  %i.pb = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i219, i64 16
  %.not.i23.i.i220 = icmp eq ptr %i.om, null
  br i1 %.not.i23.i.i220, label %_ZNSt6vectorIN10glTFCommon3RefIN5glTF28AccessorEEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i, label %bb.bi

bb.bi:                                            ; preds = %_ZNSt6vectorIN10glTFCommon3RefIN5glTF28AccessorEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.om, i64 noundef %i.op) #32
  br label %_ZNSt6vectorIN10glTFCommon3RefIN5glTF28AccessorEEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i

_ZNSt6vectorIN10glTFCommon3RefIN5glTF28AccessorEEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i: ; preds = %bb.bi, %_ZNSt6vectorIN10glTFCommon3RefIN5glTF28AccessorEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i
  store ptr %i.ox, ptr %i.of, align 8
  store ptr %i.pb, ptr %i.og, align 8
  %i.pc = getelementptr inbounds nuw [16 x i8], ptr %i.ox, i64 %i.ov
  store ptr %i.pc, ptr %i.oi, align 8
  br label %_ZNSt6vectorIN10glTFCommon3RefIN5glTF28AccessorEEESaIS4_EE9push_backERKS4_.exit

_ZNSt6vectorIN10glTFCommon3RefIN5glTF28AccessorEEESaIS4_EE9push_backERKS4_.exit: ; preds = %_ZNSt6vectorIN10glTFCommon3RefIN5glTF28AccessorEEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i, %bb.bf
  call void @_ZdaPv(ptr noundef nonnull %i.mg) #32
  br label %_ZNK10glTFCommon3RefIN5glTF28AccessorEEcvbEv.exit.thread

.loopexit:                                        ; preds = %bb.bb, %.noexc209, %_ZNKSt6vectorIN10glTFCommon3RefIN5glTF28AccessorEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %bb.bh
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNK10glTFCommon3RefIN5glTF28AccessorEEcvbEv.exit.thread: ; preds = %bb.at, %_ZNSt6vectorIN10glTFCommon3RefIN5glTF28AccessorEEESaIS4_EE9push_backERKS4_.exit, %_ZNK10glTFCommon3RefIN5glTF28AccessorEEcvbEv.exit
  %i.pd = load ptr, ptr %4, align 8
  %i.pe = load i32, ptr %i.gm, align 8
  %i.pf = zext i32 %i.pe to i64
  %i.pg = load ptr, ptr %i.pd, align 8
  %i.ph = getelementptr inbounds nuw [8 x i8], ptr %i.pg, i64 %i.pf
  %i.pi = load ptr, ptr %i.ph, align 8
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pi, i64 16
  %i.pk = load i32, ptr %i.d, align 4
end_hunk_0
begin_hunk_1_@_ZNSt6vectorIS_I19boneIndexWeightPairSaIS0_EESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_:bb.a
  %i.l = select i1 %i.j, i64 384307168202282325, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 24                 ; 2 uses
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #33 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 7 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8              ; 2 uses
  %i.t = load ptr, ptr %2, align 8                ; 4 uses
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v                       ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.s, %i.t
  br i1 %.not.i.i.i.i, label %.thread, label %bb.c

.thread:                                          ; preds = %_ZNKSt6vectorIS_I19boneIndexWeightPairSaIS0_EESaIS2_EE12_M_check_lenEmPKc.exit
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.y = getelementptr inbounds i8, ptr null, i64 %i.w ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.q, i8 0, i64 16, i1 false)
  store ptr %i.y, ptr %i.z, align 8
  br label %bb.g

bb.c:                                             ; preds = %_ZNKSt6vectorIS_I19boneIndexWeightPairSaIS0_EESaIS2_EE12_M_check_lenEmPKc.exit
  %i.aa = icmp ugt i64 %i.w, 9223372036854775800
  br i1 %i.aa, label %.noexc.i.i, label %_ZNSt15__new_allocatorI19boneIndexWeightPairE8allocateEmPKv.exit.i.i.i.i, !prof !6

.noexc.i.i:                                       ; preds = %bb.c
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #34
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorI19boneIndexWeightPairE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.c
  %i.ab = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #33
          to label %.noexc26 unwind label %bb.j   ; 5 uses

.noexc26:                                         ; preds = %_ZNSt15__new_allocatorI19boneIndexWeightPairE8allocateEmPKv.exit.i.i.i.i
  store ptr %i.ab, ptr %i.q, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 4 uses
  store ptr %i.ab, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.w ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store ptr %i.ad, ptr %i.ae, align 8
  %i.af = icmp samesign ugt i64 %i.w, 8
  br i1 %i.af, label %bb.d, label %bb.e, !prof !635

bb.d:                                             ; preds = %.noexc26
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ab, ptr align 4 %i.t, i64 %i.w, i1 false)
  br label %bb.g

bb.e:                                             ; preds = %.noexc26
  %i.ag = icmp eq i64 %i.w, 8
  br i1 %i.ag, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ah = load i64, ptr %i.t, align 4
  store i64 %i.ah, ptr %i.ab, align 4
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %.thread
  %i.ai = phi ptr [ %i.ad, %bb.d ], [ %i.ad, %bb.e ], [ %i.ad, %bb.f ], [ %i.y, %.thread ]
  %i.aj = phi ptr [ %i.ac, %bb.d ], [ %i.ac, %bb.e ], [ %i.ac, %bb.f ], [ %i.x, %.thread ]
  store ptr %i.ai, ptr %i.aj, align 8
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIS_I19boneIndexWeightPairSaIS0_EESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.g, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i ], [ %i.p, %bb.g ] ; 3 uses
  %.0911.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i ], [ %i.c, %bb.g ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !636)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !639)
  %i.ak = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !alias.scope !639, !noalias !636
  store <2 x ptr> %i.ak, ptr %.012.i.i.i, align 8, !alias.scope !636, !noalias !639
  %i.al = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  %i.am = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !alias.scope !639, !noalias !636
  store ptr %i.an, ptr %i.al, align 8, !alias.scope !636, !noalias !639
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i, i8 0, i64 24, i1 false), !alias.scope !639, !noalias !636
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ao, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIS_I19boneIndexWeightPairSaIS0_EESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i, !llvm.loop !641

_ZNSt6vectorIS_I19boneIndexWeightPairSaIS0_EESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %.lr.ph.i.i.i, %bb.g
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %bb.g ], [ %i.ap, %.lr.ph.i.i.i ]
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 24 ; 2 uses
  %.not10.i.i.i27 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i27, label %_ZNSt6vectorIS_I19boneIndexWeightPairSaIS0_EESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit33, label %.lr.ph.i.i.i28

.lr.ph.i.i.i28:                                   ; preds = %_ZNSt6vectorIS_I19boneIndexWeightPairSaIS0_EESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, %.lr.ph.i.i.i28
  %.012.i.i.i29 = phi ptr [ %i.aw, %.lr.ph.i.i.i28 ], [ %i.aq, %_ZNSt6vectorIS_I19boneIndexWeightPairSaIS0_EESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 3 uses
  %.0911.i.i.i30 = phi ptr [ %i.av, %.lr.ph.i.i.i28 ], [ %1, %_ZNSt6vectorIS_I19boneIndexWeightPairSaIS0_EESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !642)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !645)
  %i.ar = load <2 x ptr>, ptr %.0911.i.i.i30, align 8, !alias.scope !645, !noalias !642
  store <2 x ptr> %i.ar, ptr %.012.i.i.i29, align 8, !alias.scope !642, !noalias !645
  %i.as = getelementptr inbounds nuw i8, ptr %.012.i.i.i29, i64 16
  %i.at = getelementptr inbounds nuw i8, ptr %.0911.i.i.i30, i64 16
  %i.au = load ptr, ptr %i.at, align 8, !alias.scope !645, !noalias !642
  store ptr %i.au, ptr %i.as, align 8, !alias.scope !642, !noalias !645
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i30, i8 0, i64 24, i1 false), !alias.scope !645, !noalias !642
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i.i30, i64 24 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.012.i.i.i29, i64 24 ; 2 uses
  %.not.i.i.i31 = icmp eq ptr %i.av, %i.b
  br i1 %.not.i.i.i31, label %_ZNSt6vectorIS_I19boneIndexWeightPairSaIS0_EESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit33, label %.lr.ph.i.i.i28, !llvm.loop !641

_ZNSt6vectorIS_I19boneIndexWeightPairSaIS0_EESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit33: ; preds = %.lr.ph.i.i.i28, %_ZNSt6vectorIS_I19boneIndexWeightPairSaIS0_EESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %.0.lcssa.i.i.i32 = phi ptr [ %i.aq, %_ZNSt6vectorIS_I19boneIndexWeightPairSaIS0_EESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ], [ %i.aw, %.lr.ph.i.i.i28 ]
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i34 = icmp eq ptr %i.c, null
  br i1 %.not.i34, label %_ZNSt12_Vector_baseISt6vectorI19boneIndexWeightPairSaIS1_EESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIS_I19boneIndexWeightPairSaIS0_EESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit33
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = sub i64 %i.az, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ba) #32
  br label %_ZNSt12_Vector_baseISt6vectorI19boneIndexWeightPairSaIS1_EESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseISt6vectorI19boneIndexWeightPairSaIS1_EESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %_ZNSt6vectorIS_I19boneIndexWeightPairSaIS0_EESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit33, %bb.h
  store ptr %i.p, ptr %0, align 8
  store ptr %.0.lcssa.i.i.i32, ptr %i.a, align 8
  %i.bb = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bb, ptr %i.ax, align 8
  ret void

bb.i:                                             ; preds = %bb.j
  %i.bc = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.k unwind label %bb.l

bb.j:                                             ; preds = %_ZNSt15__new_allocatorI19boneIndexWeightPairE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i
  %i.bd = landingpad { ptr, i32 }
          catch ptr null
  %i.be = extractvalue { ptr, i32 } %i.bd, 0
  %i.bf = tail call ptr @__cxa_begin_catch(ptr %i.be) #31 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.o) #32
  invoke void @__cxa_rethrow() #34
          to label %bb.m unwind label %bb.i

bb.k:                                             ; preds = %bb.i
  resume { ptr, i32 } %i.bc

bb.l:                                             ; preds = %bb.i
  %i.bg = landingpad { ptr, i32 }
          catch ptr null
  %i.bh = extractvalue { ptr, i32 } %i.bg, 0
  tail call void @__clang_call_terminate(ptr %i.bh) #35
  unreachable

bb.m:                                             ; preds = %bb.j
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIP19boneIndexWeightPairSt6vectorIS2_SaIS2_EEEElNS0_5__ops15_Iter_comp_iterIS2_EEEvT_SB_T0_T1_(ptr %0, ptr %1, i64 noundef %2, i64 %3) local_unnamed_addr #3 comdat {
bb.a:
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8 ; 4 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = ashr exact i64 %i.c, 3                   ; 2 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIP19boneIndexWeightPairSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIS2_EEEvT_SB_SB_T0_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.i = icmp eq i64 %2, 0
  br i1 %i.i, label %._crit_edge, label %.lr.ph38

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIP19boneIndexWeightPairSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIS2_EEET_SB_SB_T0_.exit
  %i.j = icmp eq i64 %i.az, 0
  br i1 %i.j, label %._crit_edge, label %.lr.ph38, !llvm.loop !647

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %storemerge21.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.011.1.i.i, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store i64 %3, ptr %4, align 8
  call void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIP19boneIndexWeightPairSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIS2_EEEvT_SB_RT0_(ptr %0, ptr %storemerge21.lcssa, ptr noundef nonnull align 4 dereferenceable(8) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %._crit_edge, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIP19boneIndexWeightPairSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIS2_EEEvT_SB_SB_RT0_.exit.i.i
  %.sroa.0.05.i.i = phi ptr [ %i.k, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIP19boneIndexWeightPairSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIS2_EEEvT_SB_SB_RT0_.exit.i.i ], [ %storemerge21.lcssa, %._crit_edge ]
  %i.k = getelementptr inbounds i8, ptr %.sroa.0.05.i.i, i64 -8 ; 4 uses
  %.sroa.03.0.copyload.i.i.i = load i64, ptr %i.k, align 4 ; 2 uses
  %i.l = load i64, ptr %0, align 4
  store i64 %i.l, ptr %i.k, align 4
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.m, %i.a                       ; 3 uses
  %i.o = ashr exact i64 %i.n, 3                   ; 3 uses
  %i.p = add nsw i64 %i.o, -1
  %5 = lshr i64 %i.p, 1
  %i.q = icmp sgt i64 %i.o, 2
  br i1 %i.q, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i, %.lr.ph.i.i.i.i
  %.037.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.r = shl i64 %.037.i.i.i.i, 1                 ; 2 uses
  %i.s = add i64 %i.r, 2                          ; 2 uses
  %i.t = getelementptr inbounds [8 x i8], ptr %0, i64 %i.s
  %i.u = or disjoint i64 %i.r, 1                  ; 2 uses
  %i.v = getelementptr inbounds [8 x i8], ptr %0, i64 %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.x = load float, ptr %i.w, align 4
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.z = load float, ptr %i.y, align 4
  %i.aa = fcmp ogt float %i.x, %i.z
  %spec.select.i.i.i.i = select i1 %i.aa, i64 %i.u, i64 %i.s ; 4 uses
  %i.ab = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.i.i.i.i
  %i.ac = getelementptr inbounds [8 x i8], ptr %0, i64 %.037.i.i.i.i
  %i.ad = load i64, ptr %i.ab, align 4
  store i64 %i.ad, ptr %i.ac, align 4
  %i.ae = icmp slt i64 %spec.select.i.i.i.i, %5
  br i1 %i.ae, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !648

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 5 uses
  %i.af = and i64 %i.n, 8
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ah = add nsw i64 %i.o, -2
  %i.ai = ashr exact i64 %i.ah, 1
  %i.aj = icmp eq i64 %.0.lcssa.i.i.i.i, %i.ai
  br i1 %i.aj, label %.thread.i.i.i, label %bb.d

.thread.i.i.i:                                    ; preds = %bb.c
  %i.ak = shl nuw nsw i64 %.0.lcssa.i.i.i.i, 1
  %i.al = or disjoint i64 %i.ak, 1                ; 2 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.al
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i
  %i.ao = load i64, ptr %i.am, align 4
  store i64 %i.ao, ptr %i.an, align 4
  br label %.lr.ph.i.i.preheader.i.i.i

bb.d:                                             ; preds = %bb.c, %._crit_edge.i.i.i.i
  %.not.i.i.i = icmp eq i64 %.0.lcssa.i.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIP19boneIndexWeightPairSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIS2_EEEvT_SB_SB_RT0_.exit.i.i, label %.lr.ph.i.i.preheader.i.i.i

.lr.ph.i.i.preheader.i.i.i:                       ; preds = %bb.d, %.thread.i.i.i
  %.1.i15.i.i.i = phi i64 [ %i.al, %.thread.i.i.i ], [ %.0.lcssa.i.i.i.i, %bb.d ]
  %.in.in.i.i.i = lshr i64 %.sroa.03.0.copyload.i.i.i, 32
  %.in.i.i.i = trunc nuw i64 %.in.in.i.i.i to i32
  %i.ap = bitcast i32 %.in.i.i.i to float
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.e, %.lr.ph.i.i.preheader.i.i.i
  %.020.i.i.i.i.i = phi i64 [ %.0921.i.i89.i.i.i, %bb.e ], [ %.1.i15.i.i.i, %.lr.ph.i.i.preheader.i.i.i ] ; 3 uses
  %.0921.in.i.i.i.i.i = add nsw i64 %.020.i.i.i.i.i, -1
  %.0921.i.i89.i.i.i = lshr i64 %.0921.in.i.i.i.i.i, 1 ; 3 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0921.i.i89.i.i.i ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  %i.as = load float, ptr %i.ar, align 4
  %i.at = fcmp ogt float %i.as, %i.ap
  br i1 %i.at, label %bb.e, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIP19boneIndexWeightPairSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIS2_EEEvT_SB_SB_RT0_.exit.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.au = getelementptr inbounds [8 x i8], ptr %0, i64 %.020.i.i.i.i.i
  %i.av = load i64, ptr %i.aq, align 4
  store i64 %i.av, ptr %i.au, align 4
  %.not10.i.i.i = icmp eq i64 %.0921.i.i89.i.i.i, 0
  br i1 %.not10.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIP19boneIndexWeightPairSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIS2_EEEvT_SB_SB_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !649

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIP19boneIndexWeightPairSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIS2_EEEvT_SB_SB_RT0_.exit.i.i: ; preds = %bb.e, %.lr.ph.i.i.i.i.i, %bb.d
  %.0.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.d ], [ %.020.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ 0, %bb.e ]
  %i.aw = getelementptr inbounds [8 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i.i
  store i64 %.sroa.03.0.copyload.i.i.i, ptr %i.aw, align 4
  %i.ax = icmp sgt i64 %i.n, 8
  br i1 %i.ax, label %.lr.ph.i.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIP19boneIndexWeightPairSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIS2_EEEvT_SB_SB_T0_.exit, !llvm.loop !650

.lr.ph38:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2137 = phi ptr [ %.sroa.011.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 4 uses
  %.02236 = phi i64 [ %i.az, %bb.b ], [ %2, %.lr.ph ]
  %i.ay = phi i64 [ %i.ck, %bb.b ], [ %i.d, %.lr.ph ]
  %i.az = add nsw i64 %.02236, -1                 ; 3 uses
  %i.ba = lshr i64 %i.ay, 1
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ba ; 5 uses
  %i.bc = getelementptr inbounds i8, ptr %storemerge2137, i64 -8 ; 4 uses
  %i.bd = load float, ptr %i.g, align 4           ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 4
  %i.bf = load float, ptr %i.be, align 4          ; 3 uses
  %i.bg = fcmp ogt float %i.bd, %i.bf
  %i.bh = getelementptr inbounds i8, ptr %storemerge2137, i64 -4
  %i.bi = load float, ptr %i.bh, align 4          ; 4 uses
  br i1 %i.bg, label %bb.f, label %bb.k

bb.f:                                             ; preds = %.lr.ph38
  %i.bj = fcmp ogt float %i.bf, %i.bi
  br i1 %i.bj, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bk = load i64, ptr %0, align 4
  %i.bl = load i64, ptr %i.bb, align 4
  store i64 %i.bl, ptr %0, align 4
  store i64 %i.bk, ptr %i.bb, align 4
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIP19boneIndexWeightPairSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIS2_EEEvT_SB_SB_SB_T0_.exit.i.preheader

bb.h:                                             ; preds = %bb.f
  %i.bm = fcmp ogt float %i.bd, %i.bi
  %i.bn = load i64, ptr %0, align 4               ; 2 uses
  br i1 %i.bm, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bo = load i64, ptr %i.bc, align 4
  store i64 %i.bo, ptr %0, align 4
  store i64 %i.bn, ptr %i.bc, align 4
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIP19boneIndexWeightPairSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIS2_EEEvT_SB_SB_SB_T0_.exit.i.preheader

bb.j:                                             ; preds = %bb.h
  %i.bp = load i64, ptr %i.f, align 4
  store i64 %i.bp, ptr %0, align 4
  store i64 %i.bn, ptr %i.f, align 4
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIP19boneIndexWeightPairSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIS2_EEEvT_SB_SB_SB_T0_.exit.i.preheader

bb.k:                                             ; preds = %.lr.ph38
  %i.bq = fcmp ogt float %i.bd, %i.bi
  br i1 %i.bq, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.br = load <2 x i64>, ptr %0, align 4
  %i.bs = shufflevector <2 x i64> %i.br, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i64> %i.bs, ptr %0, align 4
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIP19boneIndexWeightPairSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIS2_EEEvT_SB_SB_SB_T0_.exit.i.preheader

bb.m:                                             ; preds = %bb.k
  %i.bt = fcmp ogt float %i.bf, %i.bi
  %i.bu = load i64, ptr %0, align 4               ; 2 uses
  br i1 %i.bt, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bv = load i64, ptr %i.bc, align 4
  store i64 %i.bv, ptr %0, align 4
  store i64 %i.bu, ptr %i.bc, align 4
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIP19boneIndexWeightPairSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIS2_EEEvT_SB_SB_SB_T0_.exit.i.preheader

bb.o:                                             ; preds = %bb.m
  %i.bw = load i64, ptr %i.bb, align 4
  store i64 %i.bw, ptr %0, align 4
  store i64 %i.bu, ptr %i.bb, align 4
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIP19boneIndexWeightPairSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIS2_EEEvT_SB_SB_SB_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIP19boneIndexWeightPairSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIS2_EEEvT_SB_SB_SB_T0_.exit.i.preheader: ; preds = %bb.o, %bb.n, %bb.l, %bb.j, %bb.i, %bb.g
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIP19boneIndexWeightPairSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIS2_EEEvT_SB_SB_SB_T0_.exit.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIP19boneIndexWeightPairSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIS2_EEEvT_SB_SB_SB_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIP19boneIndexWeightPairSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIS2_EEEvT_SB_SB_SB_T0_.exit.i.preheader, %bb.r
  %.sroa.08.0.i.i = phi ptr [ %.sroa.08.1.i.i, %bb.r ], [ %storemerge2137, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIP19boneIndexWeightPairSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIS2_EEEvT_SB_SB_SB_T0_.exit.i.preheader ]
  %.sroa.011.0.i.i = phi ptr [ %i.cb, %bb.r ], [ %i.f, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIP19boneIndexWeightPairSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIS2_EEEvT_SB_SB_SB_T0_.exit.i.preheader ]
  %i.bx = load float, ptr %i.h, align 4           ; 2 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIP19boneIndexWeightPairSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIS2_EEEvT_SB_SB_SB_T0_.exit.i
  %.sroa.011.1.i.i = phi ptr [ %.sroa.011.0.i.i, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIP19boneIndexWeightPairSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIS2_EEEvT_SB_SB_SB_T0_.exit.i ], [ %i.cb, %bb.p ] ; 9 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.011.1.i.i, i64 4
  %i.bz = load float, ptr %i.by, align 4
  %i.ca = fcmp ogt float %i.bz, %i.bx
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.011.1.i.i, i64 8 ; 2 uses
  br i1 %i.ca, label %bb.p, label %.preheader.i.i, !llvm.loop !651

.preheader.i.i:                                   ; preds = %bb.p, %.preheader.i.i
  %.sroa.08.0.pn.i.i = phi ptr [ %.sroa.08.1.i.i, %.preheader.i.i ], [ %.sroa.08.0.i.i, %bb.p ] ; 2 uses
  %.sroa.08.1.i.i = getelementptr inbounds i8, ptr %.sroa.08.0.pn.i.i, i64 -8 ; 5 uses
  %i.cc = getelementptr inbounds i8, ptr %.sroa.08.0.pn.i.i, i64 -4
  %i.cd = load float, ptr %i.cc, align 4
  %i.ce = fcmp ogt float %i.bx, %i.cd
  br i1 %i.ce, label %.preheader.i.i, label %bb.q, !llvm.loop !652

bb.q:                                             ; preds = %.preheader.i.i
  %i.cf = icmp ult ptr %.sroa.011.1.i.i, %.sroa.08.1.i.i
  br i1 %i.cf, label %bb.r, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIP19boneIndexWeightPairSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIS2_EEET_SB_SB_T0_.exit

bb.r:                                             ; preds = %bb.q
  %i.cg = load i64, ptr %.sroa.011.1.i.i, align 4
  %i.ch = load i64, ptr %.sroa.08.1.i.i, align 4
  store i64 %i.ch, ptr %.sroa.011.1.i.i, align 4
  store i64 %i.cg, ptr %.sroa.08.1.i.i, align 4
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIP19boneIndexWeightPairSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIS2_EEEvT_SB_SB_SB_T0_.exit.i, !llvm.loop !653

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIP19boneIndexWeightPairSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIS2_EEET_SB_SB_T0_.exit: ; preds = %bb.q
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIP19boneIndexWeightPairSt6vectorIS2_SaIS2_EEEElNS0_5__ops15_Iter_comp_iterIS2_EEEvT_SB_T0_T1_(ptr nonnull %.sroa.011.1.i.i, ptr %storemerge2137, i64 noundef %i.az, i64 %3)
  %i.ci = ptrtoint ptr %.sroa.011.1.i.i to i64
  %i.cj = sub i64 %i.ci, %i.a
  %i.ck = ashr exact i64 %i.cj, 3                 ; 2 uses
  %i.cl = icmp sgt i64 %i.ck, 16
  br i1 %i.cl, label %bb.b, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIP19boneIndexWeightPairSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIS2_EEEvT_SB_SB_T0_.exit, !llvm.loop !647

_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIP19boneIndexWeightPairSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIS2_EEEvT_SB_SB_T0_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIP19boneIndexWeightPairSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIS2_EEET_SB_SB_T0_.exit, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIP19boneIndexWeightPairSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIS2_EEEvT_SB_SB_RT0_.exit.i.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIP19boneIndexWeightPairSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIS2_EEEvT_SB_T0_(ptr %0, ptr %1, i64 %2) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 128
  br i1 %i.d, label %.lr.ph.i, label %bb.h

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  %scevgep = getelementptr i8, ptr %0, i64 8
  br label %bb.b

bb.b:                                             ; preds = %bb.g, %.lr.ph.i
  %.sroa.0.021.i.idx = phi i64 [ 8, %.lr.ph.i ], [ %.sroa.0.021.i.add, %bb.g ] ; 4 uses
  %.pn20.i = phi ptr [ %0, %.lr.ph.i ], [ %.sroa.0.021.i.ptr, %bb.g ] ; 3 uses
  %.sroa.0.021.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.021.i.idx ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.pn20.i, i64 12
  %i.g = load float, ptr %i.f, align 4            ; 4 uses
  %i.h = load float, ptr %i.e, align 4
  %i.i = fcmp ogt float %i.g, %i.h
  br i1 %i.i, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.j = load i64, ptr %.sroa.0.021.i.ptr, align 4
  %i.k = icmp samesign ugt i64 %.sroa.0.021.i.idx, 8
  br i1 %i.k, label %bb.d, label %bb.e, !prof !92

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, ptr noundef nonnull align 4 dereferenceable(1) %0, i64 %.sroa.0.021.i.idx, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIP19boneIndexWeightPairSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %.pn20.i, i64 8
  %i.m = load i64, ptr %0, align 4
  store i64 %i.m, ptr %i.l, align 4
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIP19boneIndexWeightPairSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIP19boneIndexWeightPairSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit.i: ; preds = %bb.e, %bb.d
  store i64 %i.j, ptr %0, align 4
  br label %bb.g
end_hunk_1
