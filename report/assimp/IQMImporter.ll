inline.NumInlined: 277
inline.NumDeleted: 154
begin_hunk_0_@_ZN6Assimp11IQMImporter14InternReadFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7aiScenePNS_8IOSystemE:._crit_edge.i.i
bb.bh:                                            ; preds = %.lr.ph403, %bb.bh
  %.0235401 = phi ptr [ %i.jn, %.lr.ph403 ], [ %i.jw, %bb.bh ] ; 3 uses
  %.0236400 = phi ptr [ %i.ja, %.lr.ph403 ], [ %i.jx, %bb.bh ] ; 3 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %.0235401, i64 8
  %i.ju = load float, ptr %i.jt, align 4
  %i.jv = load <2 x float>, ptr %.0235401, align 4
  store <2 x float> %i.jv, ptr %.0236400, align 4
  %.sroa.5325.0..0236.sroa_idx = getelementptr inbounds nuw i8, ptr %.0236400, i64 8
  store float %i.ju, ptr %.sroa.5325.0..0236.sroa_idx, align 4
  %i.jw = getelementptr inbounds nuw [4 x i8], ptr %.0235401, i64 %i.jr ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %.0236400, i64 12
  %.not269 = icmp eq ptr %i.jw, %i.jq
  br i1 %.not269, label %.loopexit, label %bb.bh, !llvm.loop !14

bb.bi:                                            ; preds = %bb.bc
  %i.jy = getelementptr inbounds nuw i8, ptr %.0238405, i64 8
  %i.jz = load i32, ptr %i.jy, align 4
  %i.ka = icmp eq i32 %i.jz, 7
  %i.kb = icmp ugt i32 %i.is, 1
  %or.cond3 = select i1 %i.ka, i1 %i.kb, i1 false
  br i1 %or.cond3, label %bb.bj, label %.loopexit

bb.bj:                                            ; preds = %bb.bi
  %i.kc = zext i32 %i.iq to i64
  %i.kd = mul nuw nsw i64 %i.kc, 12               ; 2 uses
  %i.ke = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.kd) #18
          to label %bb.bk unwind label %bb.bl     ; 3 uses

bb.bk:                                            ; preds = %bb.bj
  %i.kf = icmp eq i32 %i.iq, 0
  br i1 %i.kf, label %.loopexit361, label %.loopexit361.loopexit

.loopexit361.loopexit:                            ; preds = %bb.bk
  %i.kg = add nsw i64 %i.kd, -12                  ; 2 uses
  %i.kh = urem i64 %i.kg, 12
  %i.ki = sub nuw nsw i64 %i.kg, %i.kh
  %i.kj = add nsw i64 %i.ki, 12
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ke, i8 0, i64 %i.kj, i1 false)
  br label %.loopexit361

.loopexit361:                                     ; preds = %.loopexit361.loopexit, %bb.bk
  store ptr %i.ke, ptr %i.hp, align 8
  store i32 2, ptr %i.hq, align 8
  %i.kk = getelementptr inbounds nuw i8, ptr %.0238405, i64 16
  %i.kl = load i32, ptr %i.kk, align 4
  %i.km = zext i32 %i.kl to i64
  %i.kn = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.km
  %i.ko = load i32, ptr %i.hn, align 4
  %i.kp = mul i32 %i.ko, %i.is
  %i.kq = zext i32 %i.kp to i64
  %i.kr = getelementptr inbounds nuw [4 x i8], ptr %i.kn, i64 %i.kq ; 2 uses
  %i.ks = mul i32 %i.is, %i.iq                    ; 2 uses
  %i.kt = zext i32 %i.ks to i64
  %.idx418 = shl nuw nsw i64 %i.kt, 2
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kr, i64 %.idx418
  %.not266394 = icmp eq i32 %i.ks, 0
  br i1 %.not266394, label %.loopexit, label %.lr.ph398

.lr.ph398:                                        ; preds = %.loopexit361
  %i.kv = zext i32 %i.is to i64
  br label %bb.bm

bb.bl:                                            ; preds = %bb.bj
  %i.kw = landingpad { ptr, i32 }
          cleanup
  br label %bb.cg

bb.bm:                                            ; preds = %.lr.ph398, %bb.bm
  %.0232396 = phi ptr [ %i.kr, %.lr.ph398 ], [ %i.lb, %bb.bm ] ; 3 uses
  %.0233395 = phi ptr [ %i.ke, %.lr.ph398 ], [ %i.lc, %bb.bm ] ; 4 uses
  %i.kx = load float, ptr %.0232396, align 4
  %i.ky = getelementptr inbounds nuw i8, ptr %.0232396, i64 4
  %i.kz = load float, ptr %i.ky, align 4
  %i.la = fsub float 1.000000e+00, %i.kz
  store float %i.kx, ptr %.0233395, align 4
  %.sroa.4321.0..0233.sroa_idx = getelementptr inbounds nuw i8, ptr %.0233395, i64 4
  store float %i.la, ptr %.sroa.4321.0..0233.sroa_idx, align 4
  %.sroa.5322.0..0233.sroa_idx = getelementptr inbounds nuw i8, ptr %.0233395, i64 8
  store float 0.000000e+00, ptr %.sroa.5322.0..0233.sroa_idx, align 4
  %i.lb = getelementptr inbounds nuw [4 x i8], ptr %.0232396, i64 %i.kv ; 2 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %.0233395, i64 12
  %.not266 = icmp eq ptr %i.lb, %i.ku
  br i1 %.not266, label %.loopexit, label %bb.bm, !llvm.loop !15

bb.bn:                                            ; preds = %bb.bc
  %i.ld = getelementptr inbounds nuw i8, ptr %.0238405, i64 8
  %i.le = load i32, ptr %i.ld, align 4
  %i.lf = icmp eq i32 %i.le, 7
  %i.lg = icmp ugt i32 %i.is, 2
  %or.cond5 = select i1 %i.lf, i1 %i.lg, i1 false
  br i1 %or.cond5, label %bb.bo, label %.loopexit

bb.bo:                                            ; preds = %bb.bn
  %i.lh = zext i32 %i.iq to i64
  %i.li = mul nuw nsw i64 %i.lh, 12               ; 2 uses
  %i.lj = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.li) #18
          to label %bb.bp unwind label %bb.bq     ; 3 uses

bb.bp:                                            ; preds = %bb.bo
  %i.lk = icmp eq i32 %i.iq, 0
  br i1 %i.lk, label %.loopexit363, label %.loopexit363.loopexit

.loopexit363.loopexit:                            ; preds = %bb.bp
  %i.ll = add nsw i64 %i.li, -12                  ; 2 uses
  %i.lm = urem i64 %i.ll, 12
  %i.ln = sub nuw nsw i64 %i.ll, %i.lm
  %i.lo = add nsw i64 %i.ln, 12
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.lj, i8 0, i64 %i.lo, i1 false)
  br label %.loopexit363

.loopexit363:                                     ; preds = %.loopexit363.loopexit, %bb.bp
  store ptr %i.lj, ptr %i.ho, align 8
  %i.lp = getelementptr inbounds nuw i8, ptr %.0238405, i64 16
  %i.lq = load i32, ptr %i.lp, align 4
  %i.lr = zext i32 %i.lq to i64
  %i.ls = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.lr
  %i.lt = load i32, ptr %i.hn, align 4
  %i.lu = mul i32 %i.lt, %i.is
  %i.lv = zext i32 %i.lu to i64
  %i.lw = getelementptr inbounds nuw [4 x i8], ptr %i.ls, i64 %i.lv ; 2 uses
  %i.lx = mul i32 %i.is, %i.iq                    ; 2 uses
  %i.ly = zext i32 %i.lx to i64
  %.idx417 = shl nuw nsw i64 %i.ly, 2
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lw, i64 %.idx417
  %.not265389 = icmp eq i32 %i.lx, 0
  br i1 %.not265389, label %.loopexit, label %.lr.ph393

.lr.ph393:                                        ; preds = %.loopexit363
  %i.ma = zext i32 %i.is to i64
  br label %bb.br

bb.bq:                                            ; preds = %bb.bo
  %i.mb = landingpad { ptr, i32 }
          cleanup
  br label %bb.cg

bb.br:                                            ; preds = %.lr.ph393, %bb.br
  %.0229391 = phi ptr [ %i.lw, %.lr.ph393 ], [ %i.mf, %bb.br ] ; 3 uses
  %.0230390 = phi ptr [ %i.lj, %.lr.ph393 ], [ %i.mg, %bb.br ] ; 3 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %.0229391, i64 8
  %i.md = load float, ptr %i.mc, align 4
  %i.me = load <2 x float>, ptr %.0229391, align 4
  store <2 x float> %i.me, ptr %.0230390, align 4
  %.sroa.5319.0..0230.sroa_idx = getelementptr inbounds nuw i8, ptr %.0230390, i64 8
  store float %i.md, ptr %.sroa.5319.0..0230.sroa_idx, align 4
  %i.mf = getelementptr inbounds nuw [4 x i8], ptr %.0229391, i64 %i.ma ; 2 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %.0230390, i64 12
  %.not265 = icmp eq ptr %i.mf, %i.lz
  br i1 %.not265, label %.loopexit, label %bb.br, !llvm.loop !16

bb.bs:                                            ; preds = %bb.bc
  %i.mh = getelementptr inbounds nuw i8, ptr %.0238405, i64 8
  %i.mi = load i32, ptr %i.mh, align 4            ; 2 uses
  %i.mj = icmp eq i32 %i.mi, 1
  %i.mk = icmp ugt i32 %i.is, 2                   ; 2 uses
  %or.cond7 = select i1 %i.mj, i1 %i.mk, i1 false
  br i1 %or.cond7, label %bb.bt, label %bb.bz

bb.bt:                                            ; preds = %bb.bs
  %i.ml = zext i32 %i.iq to i64
  %i.mm = shl nuw nsw i64 %i.ml, 4                ; 2 uses
  %i.mn = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.mm) #18
          to label %bb.bu unwind label %bb.bv     ; 3 uses

bb.bu:                                            ; preds = %bb.bt
  %i.mo = icmp eq i32 %i.iq, 0
  br i1 %i.mo, label %.loopexit365, label %.loopexit365.loopexit

.loopexit365.loopexit:                            ; preds = %bb.bu
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.mn, i8 0, i64 %i.mm, i1 false)
  br label %.loopexit365

.loopexit365:                                     ; preds = %.loopexit365.loopexit, %bb.bu
  store ptr %i.mn, ptr %i.hm, align 8
  %i.mp = getelementptr inbounds nuw i8, ptr %.0238405, i64 16
  %i.mq = load i32, ptr %i.mp, align 4
  %i.mr = zext i32 %i.mq to i64
  %i.ms = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.mr
  %i.mt = load i32, ptr %i.hn, align 4
  %i.mu = mul i32 %i.mt, %i.is
  %i.mv = zext i32 %i.mu to i64
  %i.mw = getelementptr inbounds nuw i8, ptr %i.ms, i64 %i.mv ; 2 uses
  %i.mx = mul i32 %i.is, %i.iq                    ; 2 uses
  %i.my = zext i32 %i.mx to i64
  %i.mz = getelementptr inbounds nuw i8, ptr %i.mw, i64 %i.my
  %.not264384 = icmp eq i32 %i.mx, 0
  br i1 %.not264384, label %.loopexit, label %.lr.ph388

.lr.ph388:                                        ; preds = %.loopexit365
  %i.na = icmp eq i32 %i.is, 3
  %i.nb = zext i32 %i.is to i64
  br label %bb.bw

bb.bv:                                            ; preds = %bb.bt
  %i.nc = landingpad { ptr, i32 }
          cleanup
  br label %bb.cg

bb.bw:                                            ; preds = %.lr.ph388, %bb.by
  %.0227386 = phi ptr [ %i.mw, %.lr.ph388 ], [ %i.nj, %bb.by ] ; 4 uses
  %.0228385 = phi ptr [ %i.mn, %.lr.ph388 ], [ %i.nk, %bb.by ] ; 4 uses
  %i.nd = load <2 x i8>, ptr %.0227386, align 1
  %8 = uitofp <2 x i8> %i.nd to <2 x float>
  %9 = fdiv <2 x float> %8, splat (float 2.550000e+02)
  %10 = getelementptr inbounds nuw i8, ptr %.0227386, i64 2
  %11 = load i8, ptr %10, align 1
  %12 = uitofp i8 %11 to float
  %13 = fdiv float %12, 2.550000e+02
  br i1 %i.na, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.ne = getelementptr inbounds nuw i8, ptr %.0227386, i64 3
  %i.nf = load i8, ptr %i.ne, align 1
  %i.ng = uitofp i8 %i.nf to float
  %i.nh = fdiv float %i.ng, 2.550000e+02
  br label %bb.by

bb.by:                                            ; preds = %bb.bw, %bb.bx
  %i.ni = phi float [ %i.nh, %bb.bx ], [ 1.000000e+00, %bb.bw ]
  store <2 x float> %9, ptr %.0228385, align 4
  %.sroa.5315.0..0228.sroa_idx = getelementptr inbounds nuw i8, ptr %.0228385, i64 8
  store float %13, ptr %.sroa.5315.0..0228.sroa_idx, align 4
  %.sroa.6316.0..0228.sroa_idx = getelementptr inbounds nuw i8, ptr %.0228385, i64 12
  store float %i.ni, ptr %.sroa.6316.0..0228.sroa_idx, align 4
  %i.nj = getelementptr inbounds nuw i8, ptr %.0227386, i64 %i.nb ; 2 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %.0228385, i64 16
  %.not264 = icmp eq ptr %i.nj, %i.mz
  br i1 %.not264, label %.loopexit, label %bb.bw, !llvm.loop !17

bb.bz:                                            ; preds = %bb.bs
  %i.nl = icmp eq i32 %i.mi, 7
  %or.cond9 = select i1 %i.nl, i1 %i.mk, i1 false
  br i1 %or.cond9, label %bb.ca, label %.loopexit

bb.ca:                                            ; preds = %bb.bz
  %i.nm = zext i32 %i.iq to i64
  %i.nn = shl nuw nsw i64 %i.nm, 4                ; 2 uses
  %i.no = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.nn) #18
          to label %bb.cb unwind label %bb.cc     ; 3 uses

bb.cb:                                            ; preds = %bb.ca
  %i.np = icmp eq i32 %i.iq, 0
  br i1 %i.np, label %.loopexit367, label %.loopexit367.loopexit

.loopexit367.loopexit:                            ; preds = %bb.cb
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.no, i8 0, i64 %i.nn, i1 false)
  br label %.loopexit367

.loopexit367:                                     ; preds = %.loopexit367.loopexit, %bb.cb
  store ptr %i.no, ptr %i.hm, align 8
  %i.nq = getelementptr inbounds nuw i8, ptr %.0238405, i64 16
  %i.nr = load i32, ptr %i.nq, align 4
  %i.ns = zext i32 %i.nr to i64
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ns
  %i.nu = load i32, ptr %i.hn, align 4
  %i.nv = mul i32 %i.nu, %i.is
  %i.nw = zext i32 %i.nv to i64
  %i.nx = getelementptr inbounds nuw [4 x i8], ptr %i.nt, i64 %i.nw ; 2 uses
  %i.ny = mul i32 %i.is, %i.iq                    ; 2 uses
  %i.nz = zext i32 %i.ny to i64
  %.idx416 = shl nuw nsw i64 %i.nz, 2
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nx, i64 %.idx416
  %.not263379 = icmp eq i32 %i.ny, 0
  br i1 %.not263379, label %.loopexit, label %.lr.ph383

.lr.ph383:                                        ; preds = %.loopexit367
  %i.ob = icmp eq i32 %i.is, 3
  %i.oc = zext i32 %i.is to i64
  br label %bb.cd

bb.cc:                                            ; preds = %bb.ca
  %i.od = landingpad { ptr, i32 }
          cleanup
  br label %bb.cg

bb.cd:                                            ; preds = %.lr.ph383, %bb.cf
  %.0213381 = phi ptr [ %i.nx, %.lr.ph383 ], [ %i.ok, %bb.cf ] ; 4 uses
  %.0214380 = phi ptr [ %i.no, %.lr.ph383 ], [ %i.ol, %bb.cf ] ; 4 uses
  %i.oe = load <2 x float>, ptr %.0213381, align 4
  %i.of = getelementptr inbounds nuw i8, ptr %.0213381, i64 8
  %i.og = load float, ptr %i.of, align 4
  br i1 %i.ob, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.oh = getelementptr inbounds nuw i8, ptr %.0213381, i64 12
  %i.oi = load float, ptr %i.oh, align 4
  br label %bb.cf

bb.cf:                                            ; preds = %bb.cd, %bb.ce
  %i.oj = phi float [ %i.oi, %bb.ce ], [ 1.000000e+00, %bb.cd ]
  store <2 x float> %i.oe, ptr %.0214380, align 4
  %.sroa.5.0..0214.sroa_idx = getelementptr inbounds nuw i8, ptr %.0214380, i64 8
  store float %i.og, ptr %.sroa.5.0..0214.sroa_idx, align 4
  %.sroa.6.0..0214.sroa_idx = getelementptr inbounds nuw i8, ptr %.0214380, i64 12
  store float %i.oj, ptr %.sroa.6.0..0214.sroa_idx, align 4
  %i.ok = getelementptr inbounds nuw [4 x i8], ptr %.0213381, i64 %i.oc ; 2 uses
  %i.ol = getelementptr inbounds nuw i8, ptr %.0214380, i64 16
  %.not263 = icmp eq ptr %i.ok, %i.oa
  br i1 %.not263, label %.loopexit, label %bb.cd, !llvm.loop !18

.loopexit:                                        ; preds = %bb.cf, %bb.by, %bb.br, %bb.bm, %bb.bh, %.loopexit367, %.loopexit365, %.loopexit363, %.loopexit361, %.loopexit359, %bb.bc, %bb.bz, %bb.bn, %bb.bi, %bb.bd
  %i.om = getelementptr inbounds nuw i8, ptr %.0238405, i64 20 ; 2 uses
  %.not262 = icmp eq ptr %i.om, %i.hk
  br i1 %.not262, label %._crit_edge408, label %bb.bc, !llvm.loop !19

.thread355:                                       ; preds = %bb.r, %bb.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit297, %bb.z, %bb.y
  %.pn275.ph = phi { ptr, i32 } [ %i.di, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit297 ], [ %i.ay, %bb.z ], [ %i.ax, %bb.y ], [ %i.an, %bb.s ], [ %i.am, %bb.r ]
  call void @_ZdlPvm(ptr noundef nonnull %i.ad, i64 noundef %i.x) #16
  br label %_ZNKSt14default_deleteIN6Assimp8IOStreamEEclEPS1_.exit.i311

bb.cg:                                            ; preds = %bb.at, %bb.bg, %bb.bl, %bb.bq, %bb.bv, %bb.cc, %bb.bb, %bb.ay, %bb.av, %bb.au
  %.pn275 = phi { ptr, i32 } [ %i.js, %bb.bg ], [ %i.kw, %bb.bl ], [ %i.mb, %bb.bq ], [ %i.nc, %bb.bv ], [ %i.od, %bb.cc ], [ %i.hr, %bb.at ], [ %i.io, %bb.bb ], [ %i.ht, %bb.av ], [ %i.hs, %bb.au ], [ %.pn259, %bb.ay ]
  call void @_ZdlPvm(ptr noundef nonnull %i.ad, i64 noundef %i.x) #16
  br label %_ZNKSt14default_deleteIN6Assimp8IOStreamEEclEPS1_.exit.i311

_ZNKSt14default_deleteIN6Assimp8IOStreamEEclEPS1_.exit.i311: ; preds = %bb.cg, %bb.j, %bb.i, %bb.q, %.thread355
  %.pn278.pn347 = phi { ptr, i32 } [ %.pn275.ph, %.thread355 ], [ %.pn275, %bb.cg ], [ %i.al, %bb.q ], [ %i.ab, %bb.j ], [ %i.aa, %bb.i ]
  %i.on = load ptr, ptr %i.i, align 8
  %i.oo = getelementptr inbounds nuw i8, ptr %i.on, i64 8
  %i.op = load ptr, ptr %i.oo, align 8
  call void %i.op(ptr noundef nonnull align 8 dereferenceable(8) %i.i) #15, !inline_history !4
  br label %_ZNSt10unique_ptrIN6Assimp8IOStreamESt14default_deleteIS1_EED2Ev.exit312

_ZNSt10unique_ptrIN6Assimp8IOStreamESt14default_deleteIS1_EED2Ev.exit312: ; preds = %bb.d, %_ZNKSt14default_deleteIN6Assimp8IOStreamEEclEPS1_.exit.i311, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit285
  %.pn278.pn.pn = phi { ptr, i32 } [ %i.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit285 ], [ %i.t, %bb.d ], [ %.pn278.pn347, %_ZNKSt14default_deleteIN6Assimp8IOStreamEEclEPS1_.exit.i311 ]
  resume { ptr, i32 } %.pn278.pn.pn

bb.ch:                                            ; preds = %bb.x, %bb.p, %bb.h
  unreachable
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN17DeadlyImportErrorC2IJRA21_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA2_S1_EEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(21) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(2) %3) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(376) %4)
  invoke void @_ZN15DeadlyErrorBaseC2IJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA2_KcERA21_S9_EEN6Assimp9Formatter15basic_formatterIcS4_S5_EEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %4, ptr noundef nonnull align 1 dereferenceable(21) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(2) %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.a, ptr %4, align 8
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.c = getelementptr i8, ptr %i.a, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %4, i64 %i.d
  store ptr %i.b, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.k = load i64, ptr %i.i, align 8
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #16
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.f, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.m) #15
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.n) #15
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV17DeadlyImportError, i64 16), ptr %0, align 8
  ret void

bb.c:                                             ; preds = %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %4) #15
  resume { ptr, i32 } %i.o
}

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN17DeadlyImportErrorC2IJRA10_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA15_S1_EEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(10) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(15) %3) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(376) %4)
  invoke void @_ZN15DeadlyErrorBaseC2IJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA15_KcERA10_S9_EEN6Assimp9Formatter15basic_formatterIcS4_S5_EEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %4, ptr noundef nonnull align 1 dereferenceable(10) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(15) %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.a, ptr %4, align 8
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.c = getelementptr i8, ptr %i.a, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %4, i64 %i.d
  store ptr %i.b, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.k = load i64, ptr %i.i, align 8
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #16
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.f, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.m) #15
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 112
end_hunk_0
