inline.NumInlined: 998
inline.NumDeleted: 517
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN6Assimp11MD5Importer15LoadMD5MeshFileEv:bb.a
          to label %bb.av unwind label %.loopexit383 ; 3 uses

bb.av:                                            ; preds = %.loopexit382
  %i.js = icmp eq i32 %i.ji, 0
  br i1 %i.js, label %.loopexit381, label %.loopexit381.loopexit

.loopexit381.loopexit:                            ; preds = %bb.av
  %i.jt = add nsw i64 %i.jk, -12                  ; 2 uses
  %i.ju = urem i64 %i.jt, 12
  %i.jv = sub nuw nsw i64 %i.jt, %i.ju
  %i.jw = add nsw i64 %i.jv, 12
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.jr, i8 0, i64 %i.jw, i1 false)
  br label %.loopexit381

.loopexit381:                                     ; preds = %.loopexit381.loopexit, %bb.av
  %i.jx = getelementptr inbounds nuw i8, ptr %i.hq, i64 112
  store ptr %i.jr, ptr %i.jx, align 8
  %i.jy = getelementptr inbounds nuw i8, ptr %i.hq, i64 176
  store i32 2, ptr %i.jy, align 8
  %i.jz = load ptr, ptr %i.hl, align 8            ; 2 uses
  %i.ka = load ptr, ptr %i.hn, align 8
  %.not373412 = icmp eq ptr %i.jz, %i.ka
  br i1 %.not373412, label %._crit_edge417, label %.lr.ph416

._crit_edge417:                                   ; preds = %.lr.ph416, %.loopexit381
  %i.kb = load ptr, ptr %i.fa, align 8            ; 3 uses
  %i.kc = load ptr, ptr %i.da, align 8            ; 3 uses
  %i.kd = ptrtoint ptr %i.kb to i64
  %i.ke = ptrtoint ptr %i.kc to i64
  %i.kf = sub i64 %i.kd, %i.ke
  %i.kg = sdiv exact i64 %i.kf, 1204              ; 3 uses
  %i.kh = icmp ugt i64 %i.kg, 4611686018427387903
  %i.ki = shl nsw i64 %i.kg, 2                    ; 2 uses
  %i.kj = select i1 %i.kh, i64 -1, i64 %i.ki
  %i.kk = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.kj) #27
          to label %bb.ay unwind label %bb.az     ; 5 uses

bb.aw:                                            ; preds = %bb.an, %bb.am
  %i.kl = landingpad { ptr, i32 }
          cleanup
  br label %bb.cw

bb.ax:                                            ; preds = %.noexc.i279
  %i.km = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit310

.loopexit383:                                     ; preds = %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %.loopexit382, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.cu

.loopexit.split-lp:                               ; preds = %bb.as
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.cu

.lr.ph416:                                        ; preds = %.loopexit381, %.lr.ph416
  %.0196414 = phi ptr [ %i.ku, %.lr.ph416 ], [ %i.jr, %.loopexit381 ] ; 4 uses
  %.sroa.0345.0413 = phi ptr [ %i.kt, %.lr.ph416 ], [ %i.jz, %.loopexit381 ] ; 3 uses
  %i.kn = load float, ptr %.sroa.0345.0413, align 4
  store float %i.kn, ptr %.0196414, align 4
  %i.ko = getelementptr inbounds nuw i8, ptr %.sroa.0345.0413, i64 4
  %i.kp = load float, ptr %i.ko, align 4
  %i.kq = fsub float 1.000000e+00, %i.kp
  %i.kr = getelementptr inbounds nuw i8, ptr %.0196414, i64 4
  store float %i.kq, ptr %i.kr, align 4
  %i.ks = getelementptr inbounds nuw i8, ptr %.0196414, i64 8
  store float 0.000000e+00, ptr %i.ks, align 4
  %i.kt = getelementptr inbounds nuw i8, ptr %.sroa.0345.0413, i64 16 ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %.0196414, i64 12
  %i.kv = load ptr, ptr %i.hn, align 8
  %.not373 = icmp eq ptr %i.kt, %i.kv
  br i1 %.not373, label %._crit_edge417, label %.lr.ph416, !llvm.loop !41

bb.ay:                                            ; preds = %._crit_edge417
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.kk, i8 0, i64 %i.ki, i1 false)
  %i.kw = load ptr, ptr %i.hl, align 8            ; 2 uses
  %i.kx = load ptr, ptr %i.hn, align 8            ; 2 uses
  %.not374422 = icmp eq ptr %i.kw, %i.kx
  br i1 %.not374422, label %.preheader380, label %.lr.ph425

.preheader380:                                    ; preds = %._crit_edge421, %bb.ay
  %.not461 = icmp eq ptr %i.kb, %i.kc             ; 2 uses
  br i1 %.not461, label %._crit_edge428, label %.lr.ph427

.lr.ph427:                                        ; preds = %.preheader380
  %i.ky = getelementptr inbounds nuw i8, ptr %i.hq, i64 216 ; 2 uses
  br label %bb.bc

bb.az:                                            ; preds = %.loopexit379, %bb.bf, %._crit_edge417
  %i.kz = landingpad { ptr, i32 }
          cleanup
  br label %bb.cu

.lr.ph425:                                        ; preds = %bb.ay, %._crit_edge421
  %i.la = phi ptr [ %i.li, %._crit_edge421 ], [ %i.kx, %bb.ay ]
  %.sroa.0339.0423 = phi ptr [ %i.lj, %._crit_edge421 ], [ %i.kw, %bb.ay ] ; 3 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %.sroa.0339.0423, i64 8
  %i.lc = load i32, ptr %i.lb, align 4            ; 4 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %.sroa.0339.0423, i64 12 ; 2 uses
  %i.le = load i32, ptr %i.ld, align 4            ; 2 uses
  %i.lf = add i32 %i.le, %i.lc
  %i.lg = icmp ult i32 %i.lc, %i.lf
  br i1 %i.lg, label %.lr.ph420.preheader, label %._crit_edge421

.lr.ph420.preheader:                              ; preds = %.lr.ph425
  %i.lh = zext i32 %i.lc to i64
  br label %.lr.ph420

._crit_edge421.loopexit:                          ; preds = %bb.bb
  %.pre495 = load ptr, ptr %i.hn, align 8
  br label %._crit_edge421

._crit_edge421:                                   ; preds = %._crit_edge421.loopexit, %.lr.ph425
  %i.li = phi ptr [ %.pre495, %._crit_edge421.loopexit ], [ %i.la, %.lr.ph425 ] ; 2 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %.sroa.0339.0423, i64 16 ; 2 uses
  %.not374 = icmp eq ptr %i.lj, %i.li
  br i1 %.not374, label %.preheader380, label %.lr.ph425, !llvm.loop !42

.lr.ph420:                                        ; preds = %.lr.ph420.preheader, %bb.bb
  %i.lk = phi i32 [ %i.le, %.lr.ph420.preheader ], [ %i.lw, %bb.bb ]
  %indvars.iv468 = phi i64 [ %i.lh, %.lr.ph420.preheader ], [ %indvars.iv.next469, %bb.bb ] ; 2 uses
  %i.ll = load ptr, ptr %.sroa.0351.0455, align 8
  %i.lm = getelementptr inbounds nuw [20 x i8], ptr %i.ll, i64 %indvars.iv468 ; 2 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lm, i64 4
  %i.lo = load float, ptr %i.ln, align 4          ; 2 uses
  %i.lp = fcmp uge float %i.lo, f0x34000000
  %i.lq = fcmp ult float %i.lo, f0xB4000000
  %or.cond = or i1 %i.lp, %i.lq
  br i1 %or.cond, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %.lr.ph420
  %i.lr = load i32, ptr %i.lm, align 4
  %i.ls = zext i32 %i.lr to i64
  %i.lt = getelementptr inbounds nuw [4 x i8], ptr %i.kk, i64 %i.ls ; 2 uses
  %i.lu = load i32, ptr %i.lt, align 4
  %i.lv = add i32 %i.lu, 1
  store i32 %i.lv, ptr %i.lt, align 4
  %.pre494 = load i32, ptr %i.ld, align 4
  br label %bb.bb

bb.bb:                                            ; preds = %.lr.ph420, %bb.ba
  %i.lw = phi i32 [ %i.lk, %.lr.ph420 ], [ %.pre494, %bb.ba ] ; 2 uses
  %indvars.iv.next469 = add nuw nsw i64 %indvars.iv468, 1 ; 2 uses
  %i.lx = add i32 %i.lw, %i.lc
  %i.ly = zext i32 %i.lx to i64
  %i.lz = icmp samesign ult i64 %indvars.iv.next469, %i.ly
  br i1 %i.lz, label %.lr.ph420, label %._crit_edge421.loopexit, !llvm.loop !43

._crit_edge428:                                   ; preds = %bb.be, %.preheader380
  %i.ma = getelementptr inbounds nuw i8, ptr %i.hq, i64 216 ; 3 uses
  %i.mb = load i32, ptr %i.ma, align 8            ; 2 uses
  %.not218 = icmp eq i32 %i.mb, 0
  br i1 %.not218, label %.loopexit379, label %bb.bf

bb.bc:                                            ; preds = %.lr.ph427, %bb.be
  %indvars.iv471 = phi i64 [ 0, %.lr.ph427 ], [ %indvars.iv.next472, %bb.be ] ; 2 uses
  %i.mc = getelementptr inbounds nuw [4 x i8], ptr %i.kk, i64 %indvars.iv471
  %i.md = load i32, ptr %i.mc, align 4
  %.not241 = icmp eq i32 %i.md, 0
  br i1 %.not241, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.me = load i32, ptr %i.ky, align 8
  %i.mf = add i32 %i.me, 1
  store i32 %i.mf, ptr %i.ky, align 8
  br label %bb.be

bb.be:                                            ; preds = %bb.bc, %bb.bd
  %indvars.iv.next472 = add i64 %indvars.iv471, 1 ; 2 uses
  %i.mg = and i64 %indvars.iv.next472, 4294967295
  %i.mh = icmp ugt i64 %i.kg, %i.mg
  br i1 %i.mh, label %bb.bc, label %._crit_edge428, !llvm.loop !44

bb.bf:                                            ; preds = %._crit_edge428
  %i.mi = zext i32 %i.mb to i64
  %i.mj = shl nuw nsw i64 %i.mi, 3
  %i.mk = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.mj) #27
          to label %bb.bg unwind label %bb.az

bb.bg:                                            ; preds = %bb.bf
  store ptr %i.mk, ptr %i.hu, align 8
  br i1 %.not461, label %._crit_edge433, label %.lr.ph432

._crit_edge433:                                   ; preds = %bb.bm, %bb.bg
  %i.ml = load ptr, ptr %i.hl, align 8            ; 2 uses
  %i.mm = load ptr, ptr %i.hn, align 8
  %.not375442 = icmp eq ptr %i.ml, %i.mm
  br i1 %.not375442, label %.preheader378, label %.lr.ph447

.lr.ph447:                                        ; preds = %._crit_edge433
  %i.mn = load ptr, ptr %i.ht, align 8
  %i.mo = getelementptr inbounds nuw i8, ptr %.sroa.0351.0455, i64 8
  br label %bb.bo

.lr.ph432:                                        ; preds = %bb.bg, %bb.bm
  %i.mp = phi ptr [ %i.op, %bb.bm ], [ %i.kc, %bb.bg ]
  %i.mq = phi ptr [ %i.oq, %bb.bm ], [ %i.kb, %bb.bg ]
  %i.mr = phi i64 [ %i.os, %bb.bm ], [ 0, %bb.bg ] ; 2 uses
  %.0202430 = phi i32 [ %i.or, %bb.bm ], [ 0, %bb.bg ]
  %.0204429 = phi i32 [ %.1205, %bb.bm ], [ 0, %bb.bg ] ; 4 uses
  %i.ms = getelementptr inbounds nuw [4 x i8], ptr %i.kk, i64 %i.mr ; 2 uses
  %i.mt = load i32, ptr %i.ms, align 4
  %.not229 = icmp eq i32 %i.mt, 0
  br i1 %.not229, label %bb.bm, label %bb.bh

bb.bh:                                            ; preds = %.lr.ph432
  %i.mu = invoke noalias noundef nonnull dereferenceable(1120) ptr @_Znwm(i64 noundef 1120) #27
          to label %bb.bi unwind label %bb.bn     ; 13 uses

bb.bi:                                            ; preds = %bb.bh
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mu, i64 1056 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1120) %i.mu, i8 0, i64 1056, i1 false)
  store float 1.000000e+00, ptr %i.mv, align 4
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mu, i64 1060
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mu, i64 1076
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.mw, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.mx, align 4
  %i.my = getelementptr inbounds nuw i8, ptr %i.mu, i64 1080
  %i.mz = getelementptr inbounds nuw i8, ptr %i.mu, i64 1096
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.my, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.mz, align 4
  %i.na = getelementptr inbounds nuw i8, ptr %i.mu, i64 1100
  %i.nb = getelementptr inbounds nuw i8, ptr %i.mu, i64 1116
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.na, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.nb, align 4
  %i.nc = load ptr, ptr %i.hu, align 8
  %i.nd = zext i32 %.0204429 to i64
  %i.ne = getelementptr inbounds nuw [8 x i8], ptr %i.nc, i64 %i.nd
  store ptr %i.mu, ptr %i.ne, align 8
  %i.nf = load i32, ptr %i.ms, align 4            ; 3 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %i.mu, i64 1028
  store i32 %i.nf, ptr %i.ng, align 4
  %i.nh = zext i32 %i.nf to i64
  %i.ni = shl nuw nsw i64 %i.nh, 3                ; 2 uses
  %i.nj = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ni) #27
          to label %bb.bj unwind label %bb.bn     ; 2 uses

bb.bj:                                            ; preds = %bb.bi
  %i.nk = icmp eq i32 %i.nf, 0
  br i1 %i.nk, label %.loopexit376, label %.loopexit376.loopexit

.loopexit376.loopexit:                            ; preds = %bb.bj
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.nj, i8 0, i64 %i.ni, i1 false)
  br label %.loopexit376

.loopexit376:                                     ; preds = %.loopexit376.loopexit, %bb.bj
  %i.nl = getelementptr inbounds nuw i8, ptr %i.mu, i64 1048
  store ptr %i.nj, ptr %i.nl, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  %i.nm = load ptr, ptr %i.da, align 8
  %i.nn = getelementptr inbounds nuw [1204 x i8], ptr %i.nm, i64 %i.mr ; 9 uses
  %i.no = load i32, ptr %i.nn, align 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %i.fb, i8 0, i64 1024, i1 false)
  %spec.select.i = call i32 @llvm.umin.i32(i32 %i.no, i32 1023) ; 3 uses
  store i32 %spec.select.i, ptr %7, align 4
  %i.np = getelementptr inbounds nuw i8, ptr %i.nn, i64 4
  %i.nq = zext nneg i32 %spec.select.i to i64     ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.fb, ptr nonnull align 4 %i.np, i64 %i.nq, i1 false)
  %i.nr = getelementptr inbounds nuw i8, ptr %i.fb, i64 %i.nq
  store i8 0, ptr %i.nr, align 1
  store i32 %spec.select.i, ptr %i.mu, align 8
  %i.ns = getelementptr inbounds nuw i8, ptr %i.mu, i64 4 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ns, ptr nonnull align 4 %i.fb, i64 %i.nq, i1 false)
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ns, i64 %i.nq
  store i8 0, ptr %i.nt, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nn, i64 1136
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.mv, ptr noundef nonnull align 4 dereferenceable(64) %i.nu, i64 64, i1 false)
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nn, i64 1200
  store i32 %.0204429, ptr %i.nv, align 4
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nn, i64 1044
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nn, i64 1056
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nn, i64 1060
  %i.nz = load <2 x float>, ptr %i.nw, align 4    ; 3 uses
  store <2 x float> %i.nz, ptr %i.ny, align 4
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nn, i64 1052
  %i.ob = load float, ptr %i.oa, align 4          ; 3 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %i.nn, i64 1068
  store float %i.ob, ptr %i.oc, align 4
  %i.od = extractelement <2 x float> %i.nz, i64 0 ; 2 uses
  %i.oe = fneg float %i.od
  %i.of = call float @llvm.fmuladd.f32(float %i.oe, float %i.od, float 1.000000e+00)
  %i.og = extractelement <2 x float> %i.nz, i64 1 ; 2 uses
  %i.oh = fneg float %i.og
  %i.oi = call float @llvm.fmuladd.f32(float %i.oh, float %i.og, float %i.of)
  %i.oj = fneg float %i.ob
  %i.ok = call float @llvm.fmuladd.f32(float %i.oj, float %i.ob, float %i.oi) ; 2 uses
  %i.ol = fcmp olt float %i.ok, 0.000000e+00
  br i1 %i.ol, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %.loopexit376
  %i.om = call noundef float @sqrtf(float noundef %i.ok) #23
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %.loopexit376
  %storemerge.i = phi float [ %i.om, %bb.bk ], [ 0.000000e+00, %.loopexit376 ]
  %i.on = fneg float %storemerge.i
  store float %i.on, ptr %i.nx, align 4
  %i.oo = add i32 %.0204429, 1
  %.pre496 = load ptr, ptr %i.fa, align 8
  %.pre497 = load ptr, ptr %i.da, align 8
  br label %bb.bm

bb.bm:                                            ; preds = %.lr.ph432, %bb.bl
  %i.op = phi ptr [ %.pre497, %bb.bl ], [ %i.mp, %.lr.ph432 ] ; 2 uses
  %i.oq = phi ptr [ %.pre496, %bb.bl ], [ %i.mq, %.lr.ph432 ] ; 2 uses
  %.1205 = phi i32 [ %i.oo, %bb.bl ], [ %.0204429, %.lr.ph432 ]
  %i.or = add i32 %.0202430, 1                    ; 2 uses
  %i.os = zext i32 %i.or to i64                   ; 2 uses
  %i.ot = ptrtoint ptr %i.oq to i64
  %i.ou = ptrtoint ptr %i.op to i64
  %i.ov = sub i64 %i.ot, %i.ou
  %i.ow = sdiv exact i64 %i.ov, 1204
  %i.ox = icmp ugt i64 %i.ow, %i.os
  br i1 %i.ox, label %.lr.ph432, label %._crit_edge433, !llvm.loop !45

bb.bn:                                            ; preds = %bb.bi, %bb.bh
  %i.oy = landingpad { ptr, i32 }
          cleanup
  br label %bb.cu

.preheader378:                                    ; preds = %.loopexit, %._crit_edge433
  %i.oz = load i32, ptr %i.ma, align 8
  %.not463 = icmp eq i32 %i.oz, 0
  br i1 %.not463, label %.loopexit379, label %.lr.ph449

bb.bo:                                            ; preds = %.lr.ph447, %.loopexit
  %.2198444 = phi ptr [ %i.mn, %.lr.ph447 ], [ %i.ug, %.loopexit ] ; 6 uses
  %.sroa.0331.0443 = phi ptr [ %i.ml, %.lr.ph447 ], [ %i.uf, %.loopexit ] ; 3 uses
  store <2 x float> zeroinitializer, ptr %.2198444, align 4
  %.sroa.5.0..2198.sroa_idx = getelementptr inbounds nuw i8, ptr %.2198444, i64 8 ; 3 uses
  store float 0.000000e+00, ptr %.sroa.5.0..2198.sroa_idx, align 4
  %i.pa = getelementptr inbounds nuw i8, ptr %.sroa.0331.0443, i64 8
  %i.pb = load i32, ptr %i.pa, align 4            ; 5 uses
  %i.pc = getelementptr inbounds nuw i8, ptr %.sroa.0331.0443, i64 12 ; 2 uses
  %i.pd = load i32, ptr %i.pc, align 4            ; 2 uses
  %i.pe = add i32 %i.pd, %i.pb                    ; 2 uses
  %i.pf = icmp ult i32 %i.pb, %i.pe
  br i1 %i.pf, label %.lr.ph437, label %._crit_edge438.thread

.lr.ph437:                                        ; preds = %bb.bo
  %i.pg = load ptr, ptr %.sroa.0351.0455, align 8 ; 5 uses
  %i.ph = zext i32 %i.pb to i64                   ; 4 uses
  %wide.trip.count = zext i32 %i.pe to i64        ; 3 uses
  %i.pi = sub nsw i64 %wide.trip.count, %i.ph
  %xtraiter = and i64 %i.pi, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph437, %.prol.preheader
  %indvars.iv474.prol = phi i64 [ %indvars.iv.next475.prol, %.prol.preheader ], [ %i.ph, %.lr.ph437 ] ; 2 uses
  %.0206434.prol = phi float [ %i.pm, %.prol.preheader ], [ 0.000000e+00, %.lr.ph437 ]
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph437 ]
  %i.pj = getelementptr inbounds nuw [20 x i8], ptr %i.pg, i64 %indvars.iv474.prol
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pj, i64 4
  %i.pl = load float, ptr %i.pk, align 4
  %i.pm = fadd float %.0206434.prol, %i.pl        ; 3 uses
  %indvars.iv.next475.prol = add nuw nsw i64 %indvars.iv474.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !46

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph437
  %.lcssa.unr = phi float [ poison, %.lr.ph437 ], [ %i.pm, %.prol.preheader ]
  %indvars.iv474.unr = phi i64 [ %i.ph, %.lr.ph437 ], [ %indvars.iv.next475.prol, %.prol.preheader ]
  %.0206434.unr = phi float [ 0.000000e+00, %.lr.ph437 ], [ %i.pm, %.prol.preheader ]
  %i.pn = sub nsw i64 %i.ph, %wide.trip.count
  %i.po = icmp ugt i64 %i.pn, -4
  br i1 %i.po, label %._crit_edge438, label %.lr.ph437.new

._crit_edge438:                                   ; preds = %.lr.ph437.new, %.prol.loopexit
  %.lcssa = phi float [ %.lcssa.unr, %.prol.loopexit ], [ %i.qh, %.lr.ph437.new ] ; 2 uses
  %i.pp = fcmp une float %.lcssa, 0.000000e+00
  br i1 %i.pp, label %.lr.ph441, label %._crit_edge438.thread

.lr.ph441:                                        ; preds = %._crit_edge438
  %i.pq = ptrtoint ptr %.2198444 to i64
  %i.pr = zext i32 %i.pb to i64
  br label %bb.br

.lr.ph437.new:                                    ; preds = %.prol.loopexit, %.lr.ph437.new
  %indvars.iv474 = phi i64 [ %indvars.iv.next475.3, %.lr.ph437.new ], [ %indvars.iv474.unr, %.prol.loopexit ] ; 5 uses
  %.0206434 = phi float [ %i.qh, %.lr.ph437.new ], [ %.0206434.unr, %.prol.loopexit ]
  %i.ps = getelementptr inbounds nuw [20 x i8], ptr %i.pg, i64 %indvars.iv474
  %i.pt = getelementptr inbounds nuw i8, ptr %i.ps, i64 4
  %i.pu = load float, ptr %i.pt, align 4
  %i.pv = fadd float %.0206434, %i.pu
  %i.pw = getelementptr inbounds nuw [20 x i8], ptr %i.pg, i64 %indvars.iv474
  %i.px = getelementptr inbounds nuw i8, ptr %i.pw, i64 24
  %i.py = load float, ptr %i.px, align 4
  %i.pz = fadd float %i.pv, %i.py
  %i.qa = getelementptr inbounds nuw [20 x i8], ptr %i.pg, i64 %indvars.iv474
  %i.qb = getelementptr inbounds nuw i8, ptr %i.qa, i64 44
  %i.qc = load float, ptr %i.qb, align 4
  %i.qd = fadd float %i.pz, %i.qc
  %i.qe = getelementptr inbounds nuw [20 x i8], ptr %i.pg, i64 %indvars.iv474
  %i.qf = getelementptr inbounds nuw i8, ptr %i.qe, i64 64
  %i.qg = load float, ptr %i.qf, align 4
  %i.qh = fadd float %i.qd, %i.qg                 ; 2 uses
  %indvars.iv.next475.3 = add nuw nsw i64 %indvars.iv474, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next475.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge438, label %.lr.ph437.new, !llvm.loop !47

._crit_edge438.thread:                            ; preds = %bb.bo, %._crit_edge438
  %i.qi = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.bp unwind label %bb.bq

bb.bp:                                            ; preds = %._crit_edge438.thread
  invoke void @_ZN6Assimp6Logger5errorEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.qi, ptr noundef nonnull @.str.15)
          to label %.loopexit unwind label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %._crit_edge438.thread
  %i.qj = landingpad { ptr, i32 }
          cleanup
  br label %bb.cu

bb.br:                                            ; preds = %.lr.ph441, %bb.by
  %i.qk = phi i32 [ %i.pd, %.lr.ph441 ], [ %i.ub, %bb.by ]
  %indvars.iv478 = phi i64 [ %i.pr, %.lr.ph441 ], [ %indvars.iv.next479, %bb.by ] ; 3 uses
  %i.ql = load ptr, ptr %i.mo, align 8
  %i.qm = load ptr, ptr %.sroa.0351.0455, align 8 ; 2 uses
  %i.qn = ptrtoint ptr %i.ql to i64
  %i.qo = ptrtoint ptr %i.qm to i64
  %i.qp = sub i64 %i.qn, %i.qo
  %i.qq = sdiv exact i64 %i.qp, 20
  %.not223 = icmp ugt i64 %i.qq, %indvars.iv478
  br i1 %.not223, label %bb.bw, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.qr = call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.qr, ptr noundef nonnull @.str.16)
          to label %bb.bt unwind label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  invoke void @__cxa_throw(ptr nonnull %i.qr, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #25
          to label %bb.da unwind label %bb.bv

bb.bu:                                            ; preds = %bb.bs
  %i.qs = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.qr) #23
  br label %bb.cu

bb.bv:                                            ; preds = %bb.bt
  %i.qt = landingpad { ptr, i32 }
          cleanup
  br label %bb.cu

bb.bw:                                            ; preds = %bb.br
  %i.qu = getelementptr inbounds nuw [20 x i8], ptr %i.qm, i64 %indvars.iv478 ; 4 uses
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qu, i64 4
  %i.qw = load float, ptr %i.qv, align 4          ; 5 uses
  %i.qx = fcmp uge float %i.qw, f0x34000000
  %i.qy = fcmp ult float %i.qw, f0xB4000000
  %or.cond370 = or i1 %i.qx, %i.qy
  br i1 %or.cond370, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  %i.qz = fdiv float %i.qw, %.lcssa
  %i.ra = load i32, ptr %i.qu, align 4
  %i.rb = zext i32 %i.ra to i64
  %i.rc = load ptr, ptr %i.da, align 8
  %i.rd = getelementptr inbounds nuw [1204 x i8], ptr %i.rc, i64 %i.rb ; 5 uses
  %i.re = getelementptr inbounds nuw i8, ptr %i.rd, i64 1056
  %i.rf = getelementptr inbounds nuw i8, ptr %i.qu, i64 8
  %i.rg = getelementptr inbounds nuw i8, ptr %i.qu, i64 12
  %.sroa.016.0.copyload.i = load <2 x float>, ptr %i.re, align 4 ; 6 uses
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.rd, i64 1064
  %.sroa.9.0.copyload.i = load <2 x float>, ptr %.sroa.9.0..sroa_idx.i, align 4 ; 6 uses
  %.sroa.016.0.vec.extract18.i = extractelement <2 x float> %.sroa.016.0.copyload.i, i64 0 ; 2 uses
  %.sroa.016.4.vec.extract22.i = extractelement <2 x float> %.sroa.016.0.copyload.i, i64 1 ; 3 uses
  %.sroa.9.8.vec.extract26.i = extractelement <2 x float> %.sroa.9.0.copyload.i, i64 0
  %.sroa.9.12.vec.extract30.i = extractelement <2 x float> %.sroa.9.0.copyload.i, i64 1
  %i.rh = getelementptr inbounds nuw i8, ptr %i.rd, i64 1032
  %i.ri = getelementptr inbounds nuw i8, ptr %i.rd, i64 1040
  %i.rj = load float, ptr %i.ri, align 4
  %i.rk = load <2 x float>, ptr %i.rf, align 4    ; 4 uses
  %i.rl = load <2 x float>, ptr %i.rg, align 4    ; 3 uses
  %i.rm = fneg <2 x float> %.sroa.9.0.copyload.i  ; 4 uses
  %i.rn = fneg float %.sroa.016.4.vec.extract22.i ; 3 uses
  %i.ro = extractelement <2 x float> %i.rk, i64 0 ; 2 uses
  %i.rp = fneg float %i.ro
  %i.rq = fmul float %.sroa.016.4.vec.extract22.i, %i.rp
  %i.rr = call float @llvm.fmuladd.f32(float %.sroa.016.0.vec.extract18.i, float 0.000000e+00, float %i.rq)
  %i.rs = extractelement <2 x float> %i.rm, i64 0 ; 2 uses
  %i.rt = extractelement <2 x float> %i.rk, i64 1 ; 2 uses
  %i.ru = call float @llvm.fmuladd.f32(float %i.rs, float %i.rt, float %i.rr)
  %i.rv = extractelement <2 x float> %i.rm, i64 1 ; 2 uses
  %i.rw = extractelement <2 x float> %i.rl, i64 1 ; 2 uses
  %i.rx = call float @llvm.fmuladd.f32(float %i.rv, float %i.rw, float %i.ru) ; 2 uses
  %i.ry = shufflevector <2 x float> %.sroa.9.0.copyload.i, <2 x float> %.sroa.016.0.copyload.i, <2 x i32> <i32 1, i32 3>
  %i.rz = fmul <2 x float> %i.ry, zeroinitializer
  %i.sa = fmul float %.sroa.9.8.vec.extract26.i, 0.000000e+00
  %i.sb = shufflevector <2 x float> %.sroa.016.0.copyload.i, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.sc = shufflevector <2 x float> %i.rl, <2 x float> %i.rk, <2 x i32> <i32 1, i32 2>
  %i.sd = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.sb, <2 x float> %i.sc, <2 x float> %i.rz)
  %i.se = call float @llvm.fmuladd.f32(float %.sroa.016.0.vec.extract18.i, float %i.rt, float %i.sa)
  %i.sf = shufflevector <2 x float> %.sroa.016.0.copyload.i, <2 x float> %.sroa.9.0.copyload.i, <2 x i32> <i32 1, i32 2>
  %i.sg = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.sf, <2 x float> %i.rl, <2 x float> %i.sd)
  %i.sh = call float @llvm.fmuladd.f32(float %.sroa.9.12.vec.extract30.i, float %i.ro, float %i.se)
  %i.si = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.rm, <2 x float> %i.rk, <2 x float> %i.sg) ; 5 uses
  %i.sj = call float @llvm.fmuladd.f32(float %i.rn, float %i.rw, float %i.sh) ; 3 uses
  %i.sk = shufflevector <2 x float> %i.si, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.sl = insertelement <2 x float> %i.sk, float %i.sj, i64 1
  %i.sm = fmul <2 x float> %i.sb, %i.sl
  %i.sn = insertelement <2 x float> poison, float %i.rx, i64 0
  %i.so = shufflevector <2 x float> %i.sn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.sp = shufflevector <2 x float> %i.rm, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN6Assimp11MD5Importer14MakeDataUniqueERNS_3MD58MeshDescE:bb.a
  %.not74.2 = icmp eq i64 %i.dv, 0
  br i1 %.not74.2, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dw = getelementptr inbounds nuw [16 x i8], ptr %i.dj, i64 %i.dp
  %i.dx = zext i32 %.240.1 to i64
  %i.dy = getelementptr inbounds nuw [16 x i8], ptr %i.dj, i64 %i.dx
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.dy, ptr noundef nonnull align 4 dereferenceable(16) %i.dw, i64 16, i1 false)
  %i.dz = add i32 %.240.1, 1
  %i.ea = load ptr, ptr %i.bi, align 8
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  store i32 %.240.1, ptr %i.eb, align 4
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  %i.ec = or i64 %i.dt, %i.du
  store i64 %i.ec, ptr %i.dr, align 8
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.240.2 = phi i32 [ %i.dz, %bb.u ], [ %.240.1, %bb.v ]
  %i.ed = load ptr, ptr %i.bi, align 8            ; 3 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 8 ; 2 uses
  %i.ef = load i32, ptr %i.ed, align 4
  %i.eg = load i32, ptr %i.ee, align 4
  store i32 %i.eg, ptr %i.ed, align 4
  store i32 %i.ef, ptr %i.ee, align 4
  %i.eh = getelementptr inbounds nuw i8, ptr %.sroa.062.079, i64 16 ; 2 uses
  %.not73 = icmp eq ptr %i.eh, %i.bh
  br i1 %.not73, label %._crit_edge.thread, label %.preheader, !llvm.loop !59

bb.x:                                             ; preds = %bb.j, %bb.k, %bb.g, %bb.f
  %.pn.pn.pn = phi { ptr, i32 } [ %i.by, %bb.f ], [ %i.bz, %bb.g ], [ %i.cc, %bb.k ], [ %i.cb, %bb.j ]
  %.not.i.i55 = icmp eq ptr %.sroa.066.0, null
  br i1 %.not.i.i55, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit56, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ei = ptrtoint ptr %.sroa.1571.0 to i64
  %i.ej = ptrtoint ptr %.sroa.066.0 to i64
  %i.ek = sub i64 %i.ei, %i.ej                    ; 2 uses
  %i.el = ashr exact i64 %i.ek, 3
  %i.em = sub nsw i64 0, %i.el
  %i.en = getelementptr inbounds [8 x i8], ptr %.sroa.1571.0, i64 %i.em
  tail call void @_ZdlPvm(ptr noundef %i.en, i64 noundef %i.ek) #24
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit56

_ZNSt13_Bvector_baseISaIbEED2Ev.exit56:           ; preds = %bb.y, %bb.x
  resume { ptr, i32 } %.pn.pn.pn

bb.z:                                             ; preds = %bb.i
  unreachable
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp11MD5Importer17AttachChilds_MeshEiP6aiNodeRSt6vectorINS_3MD58BoneDescESaIS5_EE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(140) %0, i32 noundef %1, ptr noundef %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %3) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %struct.aiString, align 4           ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = load ptr, ptr %3, align 8                ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = sdiv exact i64 %i.f, 1204
  %i.h = trunc i64 %i.g to i32
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 1104 ; 2 uses
  %i.k = zext i32 %1 to i64
  br label %bb.b

._crit_edge:                                      ; preds = %bb.e, %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 1104 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8              ; 2 uses
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %bb.p, label %bb.f

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %i.n = phi ptr [ %i.c, %.lr.ph ], [ %i.v, %bb.e ] ; 3 uses
  %i.o = phi ptr [ %i.b, %.lr.ph ], [ %i.w, %bb.e ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 3 uses
  %.not66 = icmp eq i64 %indvars.iv, %i.k
  br i1 %.not66, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw [1204 x i8], ptr %i.n, i64 %indvars.iv
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 1028
  %i.r = load i32, ptr %i.q, align 4
  %i.s = icmp eq i32 %i.r, %1
  br i1 %i.s, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.t = load i32, ptr %i.j, align 8
  %i.u = add i32 %i.t, 1
  store i32 %i.u, ptr %i.j, align 8
  %.pre = load ptr, ptr %i.a, align 8
  %.pre128 = load ptr, ptr %3, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.c, %bb.d
  %i.v = phi ptr [ %i.n, %bb.b ], [ %i.n, %bb.c ], [ %.pre128, %bb.d ] ; 2 uses
  %i.w = phi ptr [ %i.o, %bb.b ], [ %i.o, %bb.c ], [ %.pre, %bb.d ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = ptrtoint ptr %i.v to i64
  %i.z = sub i64 %i.x, %i.y
  %i.aa = sdiv exact i64 %i.z, 1204
  %sext = shl i64 %i.aa, 32
  %i.ab = ashr exact i64 %sext, 32
  %i.ac = icmp slt i64 %indvars.iv.next, %i.ab
  br i1 %i.ac, label %bb.b, label %._crit_edge, !llvm.loop !60

bb.f:                                             ; preds = %._crit_edge
  %i.ad = zext i32 %i.m to i64                    ; 2 uses
  %i.ae = shl nuw nsw i64 %i.ad, 3
  %i.af = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ae) #27 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 1112 ; 5 uses
  store ptr %i.af, ptr %i.ag, align 8
  %i.ah = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.ai = load ptr, ptr %3, align 8               ; 2 uses
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = sdiv exact i64 %i.al, 1204
  %i.an = trunc i64 %i.am to i32
  %i.ao = icmp sgt i32 %i.an, 0
  br i1 %i.ao, label %.lr.ph122, label %._crit_edge123

.lr.ph122:                                        ; preds = %bb.f
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 4 uses
  %.not65 = icmp eq i32 %1, -1
  %i.aq = sext i32 %1 to i64
  %i.ar = zext i32 %1 to i64
  br label %bb.g

._crit_edge123.loopexit:                          ; preds = %bb.o
  %.pre131 = load i32, ptr %i.l, align 8
  %.pre132 = load ptr, ptr %i.ag, align 8
  %.pre133 = zext i32 %.pre131 to i64
  br label %._crit_edge123

._crit_edge123:                                   ; preds = %._crit_edge123.loopexit, %bb.f
  %.pre-phi = phi i64 [ %.pre133, %._crit_edge123.loopexit ], [ %i.ad, %bb.f ]
  %i.as = phi ptr [ %.pre132, %._crit_edge123.loopexit ], [ %i.af, %bb.f ]
  %i.at = sub nsw i64 0, %.pre-phi
  %i.au = getelementptr inbounds [8 x i8], ptr %i.as, i64 %i.at
  store ptr %i.au, ptr %i.ag, align 8
  br label %bb.p

bb.g:                                             ; preds = %.lr.ph122, %bb.o
  %i.av = phi ptr [ %i.ai, %.lr.ph122 ], [ %i.gr, %bb.o ] ; 3 uses
  %i.aw = phi ptr [ %i.ah, %.lr.ph122 ], [ %i.gs, %bb.o ] ; 2 uses
  %indvars.iv125 = phi i64 [ 0, %.lr.ph122 ], [ %indvars.iv.next126, %bb.o ] ; 10 uses
  %.not64 = icmp eq i64 %indvars.iv125, %i.ar
  br i1 %.not64, label %bb.o, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ax = getelementptr inbounds nuw [1204 x i8], ptr %i.av, i64 %indvars.iv125
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 1028
  %i.az = load i32, ptr %i.ay, align 4
  %i.ba = icmp eq i32 %i.az, %1
  br i1 %i.ba, label %bb.i, label %bb.o

bb.i:                                             ; preds = %bb.h
  %i.bb = tail call noalias noundef nonnull dereferenceable(1144) ptr @_Znwm(i64 noundef 1144) #27 ; 11 uses
  invoke void @_ZN6aiNodeC1Ev(ptr noundef nonnull align 8 dereferenceable(1144) %i.bb)
          to label %bb.j unwind label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.bc = load ptr, ptr %i.ag, align 8            ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store ptr %i.bd, ptr %i.ag, align 8
  store ptr %i.bb, ptr %i.bc, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.be = load ptr, ptr %3, align 8
  %i.bf = getelementptr inbounds nuw [1204 x i8], ptr %i.be, i64 %indvars.iv125 ; 11 uses
  %i.bg = load i32, ptr %i.bf, align 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %i.ap, i8 0, i64 1024, i1 false)
  %spec.select.i = tail call i32 @llvm.umin.i32(i32 %i.bg, i32 1023) ; 3 uses
  store i32 %spec.select.i, ptr %4, align 4
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 4
  %i.bi = zext nneg i32 %spec.select.i to i64     ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ap, ptr nonnull align 4 %i.bh, i64 %i.bi, i1 false)
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.bi
  store i8 0, ptr %i.bj, align 1
  store i32 %spec.select.i, ptr %i.bb, align 4
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bb, i64 4 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.bk, ptr nonnull align 4 %i.ap, i64 %i.bi, i1 false)
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bi
  store i8 0, ptr %i.bl, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bb, i64 1096
  store ptr %2, ptr %i.bm, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bf, i64 1044
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bf, i64 1048
  %i.bp = load <2 x float>, ptr %i.bn, align 4    ; 5 uses
  %i.bq = extractelement <2 x float> %i.bp, i64 0 ; 7 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bf, i64 1052
  %i.bs = load <2 x float>, ptr %i.bo, align 4    ; 6 uses
  %i.bt = load float, ptr %i.br, align 4          ; 7 uses
  %i.bu = fneg float %i.bq
  %i.bv = tail call float @llvm.fmuladd.f32(float %i.bu, float %i.bq, float 1.000000e+00)
  %i.bw = extractelement <2 x float> %i.bs, i64 0 ; 5 uses
  %i.bx = fneg float %i.bw
  %i.by = tail call float @llvm.fmuladd.f32(float %i.bx, float %i.bw, float %i.bv)
  %i.bz = fneg float %i.bt
  %i.ca = tail call float @llvm.fmuladd.f32(float %i.bz, float %i.bt, float %i.by) ; 2 uses
  %i.cb = fcmp olt float %i.ca, 0.000000e+00
  br i1 %i.cb, label %_ZN6Assimp3MD517ConvertQuaternionERK10aiVector3tIfER13aiQuaterniontIfE.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cc = tail call noundef float @sqrtf(float noundef %i.ca) #23
  br label %_ZN6Assimp3MD517ConvertQuaternionERK10aiVector3tIfER13aiQuaterniontIfE.exit

_ZN6Assimp3MD517ConvertQuaternionERK10aiVector3tIfER13aiQuaterniontIfE.exit: ; preds = %bb.j, %bb.k
  %storemerge.i = phi float [ %i.cc, %bb.k ], [ 0.000000e+00, %bb.j ] ; 4 uses
  %i.cd = fneg float %storemerge.i                ; 3 uses
  %i.ce = fmul float %i.bt, %i.bt                 ; 2 uses
  %i.cf = tail call float @llvm.fmuladd.f32(float %i.bw, float %i.bw, float %i.ce)
  %5 = fmul float %i.bt, %storemerge.i
  %6 = fmul float %i.bw, %i.cd
  %i.cg = fmul float %i.bt, %i.cd
  %i.ch = tail call float @llvm.fmuladd.f32(float %i.bq, float %i.bq, float %i.ce)
  %i.ci = fmul float %i.bq, %storemerge.i
  %foldExtExtBinop = fmul <2 x float> %i.bs, %i.bs
  %i.cj = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.ck = tail call float @llvm.fmuladd.f32(float %i.bq, float %i.bq, float %i.cj)
  %i.cl = tail call float @llvm.fmuladd.f32(float %i.ck, float -2.000000e+00, float 1.000000e+00)
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bf, i64 1072
  %i.cn = shufflevector <2 x float> %i.bp, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 poison> ; 2 uses
  %i.co = shufflevector <4 x float> <float -2.000000e+00, float poison, float poison, float 0.000000e+00>, <4 x float> %i.cn, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.cp = shufflevector <2 x float> %i.bp, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.cq = insertelement <4 x float> %i.cp, float -0.000000e+00, i64 3
  %i.cr = shufflevector <2 x float> %i.bs, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 poison> ; 3 uses
  %i.cs = shufflevector <4 x float> %i.cq, <4 x float> %i.cr, <4 x i32> <i32 poison, i32 1, i32 5, i32 3>
  %i.ct = insertelement <4 x float> %i.cs, float %i.cf, i64 0
  %7 = insertelement <4 x float> <float 1.000000e+00, float poison, float poison, float 1.000000e+00>, float %5, i64 1
  %8 = insertelement <4 x float> %7, float %6, i64 2
  %i.cu = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.co, <4 x float> %i.ct, <4 x float> %8)
  %i.cv = fmul <4 x float> %i.cu, <float 1.000000e+00, float 2.000000e+00, float 2.000000e+00, float 0.000000e+00>
  store <4 x float> %i.cv, ptr %i.cm, align 4
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bf, i64 1088
  %i.cw = insertelement <4 x float> %i.cn, float 0.000000e+00, i64 3
  %i.cx = insertelement <4 x float> %i.cw, float %i.ch, i64 1
  %i.cy = shufflevector <4 x float> %i.cx, <4 x float> %i.cr, <4 x i32> <i32 0, i32 1, i32 4, i32 3>
  %i.cz = shufflevector <4 x float> %i.cr, <4 x float> <float poison, float -2.000000e+00, float poison, float -0.000000e+00>, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  %i.da = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float 1.000000e+00>, float %i.cg, i64 0
  %i.db = insertelement <4 x float> %i.da, float %i.ci, i64 2
  %i.dc = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cy, <4 x float> %i.cz, <4 x float> %i.db)
  %i.dd = fmul <4 x float> %i.dc, <float 2.000000e+00, float 1.000000e+00, float 2.000000e+00, float 0.000000e+00>
  store <4 x float> %i.dd, ptr %.sroa.7.0..sroa_idx, align 4
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bf, i64 1104
  %i.de = shufflevector <2 x float> %i.bs, <2 x float> %i.bp, <2 x i32> <i32 0, i32 2>
  %9 = insertelement <2 x float> poison, float %storemerge.i, i64 0
  %10 = insertelement <2 x float> %9, float %i.cd, i64 1
  %i.df = fmul <2 x float> %i.de, %10
  %i.dg = shufflevector <2 x float> %i.bp, <2 x float> %i.bs, <2 x i32> <i32 0, i32 2>
  %i.dh = insertelement <2 x float> poison, float %i.bt, i64 0
  %i.di = shufflevector <2 x float> %i.dh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dg, <2 x float> %i.di, <2 x float> %i.df)
  %i.dk = fmul <2 x float> %i.dj, splat (float 2.000000e+00)
  store <2 x float> %i.dk, ptr %.sroa.11.0..sroa_idx, align 4
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bf, i64 1112
  store float %i.cl, ptr %.sroa.13.0..sroa_idx, align 4
  %.sroa.14113.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bf, i64 1116
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.14113.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bf, i64 1132
  store float 1.000000e+00, ptr %.sroa.15.0..sroa_idx, align 4
  %i.dl = load ptr, ptr %3, align 8
  %i.dm = getelementptr inbounds nuw [1204 x i8], ptr %i.dl, i64 %indvars.iv125 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 1032
  %i.do = load float, ptr %i.dn, align 4
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dm, i64 1084
  store float %i.do, ptr %i.dp, align 4
  %i.dq = load ptr, ptr %3, align 8
  %i.dr = getelementptr inbounds nuw [1204 x i8], ptr %i.dq, i64 %indvars.iv125 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 1036
  %i.dt = load float, ptr %i.ds, align 4
  %i.du = getelementptr inbounds nuw i8, ptr %i.dr, i64 1100
  store float %i.dt, ptr %i.du, align 4
  %i.dv = load ptr, ptr %3, align 8
  %i.dw = getelementptr inbounds nuw [1204 x i8], ptr %i.dv, i64 %indvars.iv125 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 1040
  %i.dy = load float, ptr %i.dx, align 4
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dw, i64 1116
  store float %i.dy, ptr %i.dz, align 4
  %i.ea = load ptr, ptr %3, align 8
  %i.eb = getelementptr inbounds nuw [1204 x i8], ptr %i.ea, i64 %indvars.iv125 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 1072 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.eb, i64 1136
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.ed, ptr noundef nonnull align 4 dereferenceable(64) %i.ec, i64 64, i1 false)
  %i.ee = getelementptr inbounds nuw i8, ptr %i.bb, i64 1028 ; 3 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.ee, ptr noundef nonnull align 4 dereferenceable(64) %i.ec, i64 64, i1 false)
  %i.ef = load ptr, ptr %3, align 8
  %i.eg = getelementptr inbounds nuw [1204 x i8], ptr %i.ef, i64 %indvars.iv125
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 1136
  %i.ei = tail call noundef nonnull align 4 dereferenceable(64) ptr @_ZN12aiMatrix4x4tIfE7InverseEv(ptr noundef nonnull align 4 dereferenceable(64) %i.eh) ; 0 uses
  br i1 %.not65, label %bb.n, label %bb.l

bb.l:                                             ; preds = %_ZN6Assimp3MD517ConvertQuaternionERK10aiVector3tIfER13aiQuaterniontIfE.exit
  %i.ej = load ptr, ptr %3, align 8
  %i.ek = getelementptr inbounds nuw [1204 x i8], ptr %i.ej, i64 %i.aq ; 16 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 1136
  %.sroa.0.0.copyload68 = load float, ptr %i.el, align 4
  %.sroa.6.0..sroa_idx69 = getelementptr inbounds nuw i8, ptr %i.ek, i64 1140
  %.sroa.6.0.copyload70 = load float, ptr %.sroa.6.0..sroa_idx69, align 4
  %.sroa.8.0..sroa_idx71 = getelementptr inbounds nuw i8, ptr %i.ek, i64 1144
  %.sroa.8.0.copyload72 = load float, ptr %.sroa.8.0..sroa_idx71, align 4
  %.sroa.10.0..sroa_idx73 = getelementptr inbounds nuw i8, ptr %i.ek, i64 1148
  %.sroa.10.0.copyload74 = load float, ptr %.sroa.10.0..sroa_idx73, align 4
  %.sroa.12.0..sroa_idx75 = getelementptr inbounds nuw i8, ptr %i.ek, i64 1152
  %.sroa.12.0.copyload76 = load float, ptr %.sroa.12.0..sroa_idx75, align 4
  %.sroa.14.0..sroa_idx77 = getelementptr inbounds nuw i8, ptr %i.ek, i64 1156
  %.sroa.14.0.copyload78 = load float, ptr %.sroa.14.0..sroa_idx77, align 4
  %.sroa.16.0..sroa_idx79 = getelementptr inbounds nuw i8, ptr %i.ek, i64 1160
  %.sroa.16.0.copyload80 = load float, ptr %.sroa.16.0..sroa_idx79, align 4
  %.sroa.18.0..sroa_idx81 = getelementptr inbounds nuw i8, ptr %i.ek, i64 1164
  %.sroa.18.0.copyload82 = load float, ptr %.sroa.18.0..sroa_idx81, align 4
  %.sroa.20.0..sroa_idx83 = getelementptr inbounds nuw i8, ptr %i.ek, i64 1168
  %.sroa.20.0.copyload84 = load float, ptr %.sroa.20.0..sroa_idx83, align 4
  %.sroa.22.0..sroa_idx85 = getelementptr inbounds nuw i8, ptr %i.ek, i64 1172
  %.sroa.22.0.copyload86 = load float, ptr %.sroa.22.0..sroa_idx85, align 4
  %.sroa.24.0..sroa_idx87 = getelementptr inbounds nuw i8, ptr %i.ek, i64 1176
  %.sroa.24.0.copyload88 = load float, ptr %.sroa.24.0..sroa_idx87, align 4
  %.sroa.26.0..sroa_idx89 = getelementptr inbounds nuw i8, ptr %i.ek, i64 1180
  %.sroa.26.0.copyload90 = load float, ptr %.sroa.26.0..sroa_idx89, align 4
  %.sroa.28.0..sroa_idx91 = getelementptr inbounds nuw i8, ptr %i.ek, i64 1184
  %.sroa.28.0.copyload92 = load float, ptr %.sroa.28.0..sroa_idx91, align 4
  %.sroa.30.0..sroa_idx93 = getelementptr inbounds nuw i8, ptr %i.ek, i64 1188
  %.sroa.30.0.copyload94 = load float, ptr %.sroa.30.0..sroa_idx93, align 4
  %.sroa.32.0..sroa_idx95 = getelementptr inbounds nuw i8, ptr %i.ek, i64 1192
  %.sroa.32.0.copyload96 = load float, ptr %.sroa.32.0..sroa_idx95, align 4
  %.sroa.34.0..sroa_idx97 = getelementptr inbounds nuw i8, ptr %i.ek, i64 1196
  %.sroa.34.0.copyload98 = load float, ptr %.sroa.34.0..sroa_idx97, align 4
  %i.em = getelementptr inbounds nuw i8, ptr %i.bb, i64 1044 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.bb, i64 1060 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.bb, i64 1076 ; 2 uses
  %i.ep = load <4 x float>, ptr %i.ee, align 4    ; 4 uses
  %i.eq = load <4 x float>, ptr %i.em, align 4    ; 4 uses
  %i.er = insertelement <4 x float> poison, float %.sroa.6.0.copyload70, i64 0
  %i.es = shufflevector <4 x float> %i.er, <4 x float> poison, <4 x i32> zeroinitializer
  %i.et = fmul <4 x float> %i.es, %i.eq
  %i.eu = insertelement <4 x float> poison, float %.sroa.0.0.copyload68, i64 0
  %i.ev = shufflevector <4 x float> %i.eu, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ew = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ep, <4 x float> %i.ev, <4 x float> %i.et)
  %i.ex = load <4 x float>, ptr %i.en, align 4    ; 4 uses
  %i.ey = insertelement <4 x float> poison, float %.sroa.8.0.copyload72, i64 0
  %i.ez = shufflevector <4 x float> %i.ey, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fa = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ex, <4 x float> %i.ez, <4 x float> %i.ew)
  %i.fb = load <4 x float>, ptr %i.eo, align 4    ; 4 uses
  %i.fc = insertelement <4 x float> poison, float %.sroa.10.0.copyload74, i64 0
  %i.fd = shufflevector <4 x float> %i.fc, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fe = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fb, <4 x float> %i.fd, <4 x float> %i.fa)
  store <4 x float> %i.fe, ptr %i.ee, align 4
  %i.ff = insertelement <4 x float> poison, float %.sroa.14.0.copyload78, i64 0
  %i.fg = shufflevector <4 x float> %i.ff, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fh = fmul <4 x float> %i.fg, %i.eq
  %i.fi = insertelement <4 x float> poison, float %.sroa.12.0.copyload76, i64 0
  %i.fj = shufflevector <4 x float> %i.fi, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fk = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ep, <4 x float> %i.fj, <4 x float> %i.fh)
  %i.fl = insertelement <4 x float> poison, float %.sroa.16.0.copyload80, i64 0
  %i.fm = shufflevector <4 x float> %i.fl, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fn = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ex, <4 x float> %i.fm, <4 x float> %i.fk)
  %i.fo = insertelement <4 x float> poison, float %.sroa.18.0.copyload82, i64 0
  %i.fp = shufflevector <4 x float> %i.fo, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fq = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fb, <4 x float> %i.fp, <4 x float> %i.fn)
  store <4 x float> %i.fq, ptr %i.em, align 4
  %i.fr = insertelement <4 x float> poison, float %.sroa.22.0.copyload86, i64 0
  %i.fs = shufflevector <4 x float> %i.fr, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ft = fmul <4 x float> %i.fs, %i.eq
  %i.fu = insertelement <4 x float> poison, float %.sroa.20.0.copyload84, i64 0
  %i.fv = shufflevector <4 x float> %i.fu, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fw = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ep, <4 x float> %i.fv, <4 x float> %i.ft)
  %i.fx = insertelement <4 x float> poison, float %.sroa.24.0.copyload88, i64 0
  %i.fy = shufflevector <4 x float> %i.fx, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fz = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ex, <4 x float> %i.fy, <4 x float> %i.fw)
  %i.ga = insertelement <4 x float> poison, float %.sroa.26.0.copyload90, i64 0
  %i.gb = shufflevector <4 x float> %i.ga, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gc = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fb, <4 x float> %i.gb, <4 x float> %i.fz)
  store <4 x float> %i.gc, ptr %i.en, align 4
  %i.gd = insertelement <4 x float> poison, float %.sroa.30.0.copyload94, i64 0
  %i.ge = shufflevector <4 x float> %i.gd, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gf = fmul <4 x float> %i.ge, %i.eq
  %i.gg = insertelement <4 x float> poison, float %.sroa.28.0.copyload92, i64 0
  %i.gh = shufflevector <4 x float> %i.gg, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gi = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ep, <4 x float> %i.gh, <4 x float> %i.gf)
  %i.gj = insertelement <4 x float> poison, float %.sroa.32.0.copyload96, i64 0
  %i.gk = shufflevector <4 x float> %i.gj, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gl = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ex, <4 x float> %i.gk, <4 x float> %i.gi)
  %i.gm = insertelement <4 x float> poison, float %.sroa.34.0.copyload98, i64 0
  %i.gn = shufflevector <4 x float> %i.gm, <4 x float> poison, <4 x i32> zeroinitializer
  %i.go = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fb, <4 x float> %i.gn, <4 x float> %i.gl)
  store <4 x float> %i.go, ptr %i.eo, align 4
  br label %bb.n

bb.m:                                             ; preds = %bb.i
  %i.gp = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bb, i64 noundef 1144) #24
  resume { ptr, i32 } %i.gp

bb.n:                                             ; preds = %bb.l, %_ZN6Assimp3MD517ConvertQuaternionERK10aiVector3tIfER13aiQuaterniontIfE.exit
  %i.gq = trunc nuw nsw i64 %indvars.iv125 to i32
  tail call void @_ZN6Assimp11MD5Importer17AttachChilds_MeshEiP6aiNodeRSt6vectorINS_3MD58BoneDescESaIS5_EE(ptr noundef nonnull align 8 dereferenceable(140) %0, i32 noundef %i.gq, ptr noundef nonnull %i.bb, ptr noundef nonnull align 8 dereferenceable(24) %3)
  %.pre129 = load ptr, ptr %i.a, align 8
  %.pre130 = load ptr, ptr %3, align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.g, %bb.h, %bb.n
  %i.gr = phi ptr [ %i.av, %bb.g ], [ %i.av, %bb.h ], [ %.pre130, %bb.n ] ; 2 uses
  %i.gs = phi ptr [ %i.aw, %bb.g ], [ %i.aw, %bb.h ], [ %.pre129, %bb.n ] ; 2 uses
  %indvars.iv.next126 = add nuw nsw i64 %indvars.iv125, 1 ; 2 uses
  %i.gt = ptrtoint ptr %i.gs to i64
  %i.gu = ptrtoint ptr %i.gr to i64
  %i.gv = sub i64 %i.gt, %i.gu
  %i.gw = sdiv exact i64 %i.gv, 1204
  %sext135 = shl i64 %i.gw, 32
  %i.gx = ashr exact i64 %sext135, 32
  %i.gy = icmp slt i64 %indvars.iv.next126, %i.gx
  br i1 %i.gy, label %bb.g, label %._crit_edge123.loopexit, !llvm.loop !61

bb.p:                                             ; preds = %._crit_edge123, %._crit_edge
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #12

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #10

declare void @_ZN6aiNodeC1Ev(ptr noundef nonnull align 8 dereferenceable(1144)) unnamed_addr #3

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 4 dereferenceable(64) ptr @_ZN12aiMatrix4x4tIfE7InverseEv(ptr noundef nonnull align 4 dereferenceable(64) %0) local_unnamed_addr #13 comdat align 2 {
bb.a:
  %i.a = load float, ptr %0, align 4              ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.e = load float, ptr %i.d, align 4            ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.n = load float, ptr %i.m, align 4            ; 10 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
end_hunk_1
