inline.NumInlined: 1538
inline.NumDeleted: 693
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN6Assimp11SMDImporter18CreateOutputMeshesEv:bb.a
  br i1 %i.jq, label %.lr.ph376, label %._crit_edge377, !llvm.loop !29

bb.af:                                            ; preds = %_ZNSt12_Vector_baseISt4pairIjfESaIS1_EE11_M_allocateEm.exit.i
  %i.jr = landingpad { ptr, i32 }
          cleanup
  br label %bb.cc

bb.ag:                                            ; preds = %._crit_edge377
  store i64 %i.hm, ptr %i.hp, align 16
  %i.js = getelementptr inbounds nuw i8, ptr %i.hp, i64 8 ; 4 uses
  %i.jt = icmp eq i32 %i.hl, 0
  br i1 %i.jt, label %.loopexit315, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ju = getelementptr inbounds nuw [16 x i8], ptr %i.js, i64 %i.hm
  %i.jv = add nuw nsw i64 %i.hm, 1152921504606846975
  %i.jw = and i64 %i.jv, 1152921504606846975
  %xtraiter = and i64 %i.hm, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.ah, %.prol.preheader
  %i.jx = phi ptr [ %i.jz, %.prol.preheader ], [ %i.js, %bb.ah ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %bb.ah ]
  store i32 0, ptr %i.jx, align 8
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 8
  store ptr null, ptr %i.jy, align 8
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jx, i64 16 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !30

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.ah
  %.unr = phi ptr [ %i.js, %bb.ah ], [ %i.jz, %.prol.preheader ]
  %i.ka = icmp samesign ult i64 %i.jw, 7
  br i1 %i.ka, label %.loopexit315, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %i.kb = phi ptr [ %i.kr, %.new ], [ %.unr, %.prol.loopexit ] ; 17 uses
  store i32 0, ptr %i.kb, align 8
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 8
  store ptr null, ptr %i.kc, align 8
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kb, i64 16
  store i32 0, ptr %i.kd, align 8
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kb, i64 24
  store ptr null, ptr %i.ke, align 8
  %i.kf = getelementptr inbounds nuw i8, ptr %i.kb, i64 32
  store i32 0, ptr %i.kf, align 8
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kb, i64 40
  store ptr null, ptr %i.kg, align 8
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kb, i64 48
  store i32 0, ptr %i.kh, align 8
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kb, i64 56
  store ptr null, ptr %i.ki, align 8
  %i.kj = getelementptr inbounds nuw i8, ptr %i.kb, i64 64
  store i32 0, ptr %i.kj, align 8
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kb, i64 72
  store ptr null, ptr %i.kk, align 8
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kb, i64 80
  store i32 0, ptr %i.kl, align 8
  %i.km = getelementptr inbounds nuw i8, ptr %i.kb, i64 88
  store ptr null, ptr %i.km, align 8
  %i.kn = getelementptr inbounds nuw i8, ptr %i.kb, i64 96
  store i32 0, ptr %i.kn, align 8
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kb, i64 104
  store ptr null, ptr %i.ko, align 8
  %i.kp = getelementptr inbounds nuw i8, ptr %i.kb, i64 112
  store i32 0, ptr %i.kp, align 8
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kb, i64 120
  store ptr null, ptr %i.kq, align 8
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kb, i64 128 ; 2 uses
  %i.ks = icmp eq ptr %i.kr, %i.ju
  br i1 %i.ks, label %.loopexit315, label %.new

.loopexit315:                                     ; preds = %.prol.loopexit, %.new, %bb.ag
  %i.kt = load ptr, ptr %i.fq, align 8
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 208
  store ptr %i.js, ptr %i.ku, align 8
  %i.kv = load ptr, ptr %i.fq, align 8
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 4
  %i.kx = load i32, ptr %i.kw, align 4            ; 2 uses
  %i.ky = zext i32 %i.kx to i64
  %i.kz = mul nuw nsw i64 %i.ky, 12               ; 2 uses
  %i.la = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.kz) #29
          to label %bb.ai unwind label %bb.an     ; 3 uses

bb.ai:                                            ; preds = %.loopexit315
  %i.lb = icmp eq i32 %i.kx, 0
  br i1 %i.lb, label %.loopexit314, label %.loopexit314.loopexit

.loopexit314.loopexit:                            ; preds = %bb.ai
  %i.lc = add nsw i64 %i.kz, -12                  ; 2 uses
  %i.ld = urem i64 %i.lc, 12
  %i.le = sub nuw nsw i64 %i.lc, %i.ld
  %i.lf = add nsw i64 %i.le, 12
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.la, i8 0, i64 %i.lf, i1 false)
  br label %.loopexit314

.loopexit314:                                     ; preds = %.loopexit314.loopexit, %bb.ai
  %i.lg = load ptr, ptr %i.fq, align 8
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 24
  store ptr %i.la, ptr %i.lh, align 8
  %i.li = load ptr, ptr %i.fq, align 8
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 4
  %i.lk = load i32, ptr %i.lj, align 4            ; 2 uses
  %i.ll = zext i32 %i.lk to i64
  %i.lm = mul nuw nsw i64 %i.ll, 12               ; 2 uses
  %i.ln = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.lm) #29
          to label %bb.aj unwind label %bb.ao     ; 3 uses

bb.aj:                                            ; preds = %.loopexit314
  %i.lo = icmp eq i32 %i.lk, 0
  br i1 %i.lo, label %.loopexit313, label %.loopexit313.loopexit

.loopexit313.loopexit:                            ; preds = %bb.aj
  %i.lp = add nsw i64 %i.lm, -12                  ; 2 uses
  %i.lq = urem i64 %i.lp, 12
  %i.lr = sub nuw nsw i64 %i.lp, %i.lq
  %i.ls = add nsw i64 %i.lr, 12
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ln, i8 0, i64 %i.ls, i1 false)
  br label %.loopexit313

.loopexit313:                                     ; preds = %.loopexit313.loopexit, %bb.aj
  %i.lt = load ptr, ptr %i.fq, align 8
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 16
  store ptr %i.ln, ptr %i.lu, align 8
  %i.lv = load i8, ptr %i.ch, align 8, !range !5, !noundef !6
  %i.lw = trunc nuw i8 %i.lv to i1
  br i1 %i.lw, label %bb.ak, label %bb.aq

bb.ak:                                            ; preds = %.loopexit313
  %i.lx = load ptr, ptr %i.fq, align 8
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lx, i64 4
  %i.lz = load i32, ptr %i.ly, align 4            ; 2 uses
  %i.ma = zext i32 %i.lz to i64
  %i.mb = mul nuw nsw i64 %i.ma, 12               ; 2 uses
  %i.mc = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.mb) #29
          to label %bb.al unwind label %bb.ap     ; 3 uses

bb.al:                                            ; preds = %bb.ak
  %i.md = icmp eq i32 %i.lz, 0
  br i1 %i.md, label %.loopexit312, label %.loopexit312.loopexit

.loopexit312.loopexit:                            ; preds = %bb.al
  %i.me = add nsw i64 %i.mb, -12                  ; 2 uses
  %i.mf = urem i64 %i.me, 12
  %i.mg = sub nuw nsw i64 %i.me, %i.mf
  %i.mh = add nsw i64 %i.mg, 12
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.mc, i8 0, i64 %i.mh, i1 false)
  br label %.loopexit312

.loopexit312:                                     ; preds = %.loopexit312.loopexit, %bb.al
  %i.mi = load ptr, ptr %i.fq, align 8
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mi, i64 112
  store ptr %i.mc, ptr %i.mj, align 8
  %i.mk = load ptr, ptr %i.fq, align 8
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mk, i64 176
  store i32 2, ptr %i.ml, align 8
  br label %bb.aq

bb.am:                                            ; preds = %._crit_edge377
  %i.mm = landingpad { ptr, i32 }
          cleanup
  br label %bb.cc

bb.an:                                            ; preds = %.loopexit315
  %i.mn = landingpad { ptr, i32 }
          cleanup
  br label %bb.cc

bb.ao:                                            ; preds = %.loopexit314
  %i.mo = landingpad { ptr, i32 }
          cleanup
  br label %bb.cc

bb.ap:                                            ; preds = %bb.bt, %bb.ak
  %i.mp = landingpad { ptr, i32 }
          cleanup
  br label %bb.cc

bb.aq:                                            ; preds = %.loopexit312, %.loopexit313
  %.0150 = phi ptr [ %i.mc, %.loopexit312 ], [ null, %.loopexit313 ]
  %i.mq = load ptr, ptr %i.fq, align 8            ; 2 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mq, i64 8
  %i.ms = load i32, ptr %i.mr, align 8
  %.not419 = icmp eq i32 %i.ms, 0
  br i1 %.not419, label %.preheader311, label %.lr.ph400

.preheader311:                                    ; preds = %bb.av, %bb.aq
  %.lcssa349 = phi ptr [ %i.mq, %bb.aq ], [ %i.qe, %bb.av ]
  %i.mt = load ptr, ptr %i.cg, align 8            ; 2 uses
  %i.mu = load ptr, ptr %i.cf, align 8            ; 2 uses
  %i.mv = ptrtoint ptr %i.mt to i64
  %i.mw = ptrtoint ptr %i.mu to i64
  %i.mx = sub i64 %i.mv, %i.mw
  %i.my = sdiv exact i64 %i.mx, 144               ; 5 uses
  %.not421 = icmp eq ptr %i.mt, %i.mu
  br i1 %.not421, label %.loopexit310, label %.lr.ph403.preheader

.lr.ph403.preheader:                              ; preds = %.preheader311
  %min.iters.check = icmp ult i64 %i.my, 11
  br i1 %min.iters.check, label %.lr.ph403.preheader628, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph403.preheader
  %i.mz = add nsw i64 %i.my, -1                   ; 2 uses
  %i.na = and i64 %i.mz, 4294967295
  %i.nb = icmp eq i64 %i.na, 4294967295
  %i.nc = icmp ugt i64 %i.mz, 4294967295
  %i.nd = or i1 %i.nb, %i.nc
  br i1 %i.nd, label %.lr.ph403.preheader628, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %n.mod.vf = and i64 %i.my, 3                    ; 2 uses
  %i.ne = icmp eq i64 %n.mod.vf, 0
  %i.nf = select i1 %i.ne, i64 4, i64 %n.mod.vf
  %n.vec = sub nsw i64 %i.my, %i.nf               ; 3 uses
  %1 = trunc i64 %n.vec to i32
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %vec.phi = phi <2 x i32> [ zeroinitializer, %vector.ph ], [ %i.ol, %vector.body ]
  %vec.phi572 = phi <2 x i32> [ zeroinitializer, %vector.ph ], [ %i.om, %vector.body ]
  %i.ng = getelementptr inbounds nuw [24 x i8], ptr %.ptr291.ptr, i64 %index ; 2 uses
  %i.nh = getelementptr inbounds nuw [24 x i8], ptr %.ptr291.ptr, i64 %index ; 2 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nh, i64 24
  %i.nj = getelementptr inbounds nuw [24 x i8], ptr %.ptr291.ptr, i64 %index ; 2 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nj, i64 48
  %i.nl = getelementptr inbounds nuw [24 x i8], ptr %.ptr291.ptr, i64 %index ; 2 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nl, i64 72
  %i.nn = load ptr, ptr %i.ng, align 8
  %i.no = load ptr, ptr %i.ni, align 8
  %i.np = insertelement <2 x ptr> poison, ptr %i.nn, i64 0
  %i.nq = insertelement <2 x ptr> %i.np, ptr %i.no, i64 1
  %i.nr = load ptr, ptr %i.nk, align 8
  %i.ns = load ptr, ptr %i.nm, align 8
  %i.nt = insertelement <2 x ptr> poison, ptr %i.nr, i64 0
  %i.nu = insertelement <2 x ptr> %i.nt, ptr %i.ns, i64 1
  %i.nv = getelementptr inbounds nuw i8, ptr %i.ng, i64 8
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nh, i64 32
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nj, i64 56
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nl, i64 80
  %i.nz = load ptr, ptr %i.nv, align 8
  %i.oa = load ptr, ptr %i.nw, align 8
  %i.ob = insertelement <2 x ptr> poison, ptr %i.nz, i64 0
  %i.oc = insertelement <2 x ptr> %i.ob, ptr %i.oa, i64 1
  %i.od = load ptr, ptr %i.nx, align 8
  %i.oe = load ptr, ptr %i.ny, align 8
  %i.of = insertelement <2 x ptr> poison, ptr %i.od, i64 0
  %i.og = insertelement <2 x ptr> %i.of, ptr %i.oe, i64 1
  %i.oh = icmp ne <2 x ptr> %i.nq, %i.oc
  %i.oi = icmp ne <2 x ptr> %i.nu, %i.og
  %i.oj = zext <2 x i1> %i.oh to <2 x i32>
  %i.ok = zext <2 x i1> %i.oi to <2 x i32>
  %i.ol = add <2 x i32> %vec.phi, %i.oj           ; 2 uses
  %i.om = add <2 x i32> %vec.phi572, %i.ok        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.on = icmp eq i64 %index.next, %n.vec
  br i1 %i.on, label %middle.block, label %vector.body, !llvm.loop !32

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i32> %i.om, %i.ol
  %i.oo = tail call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %bin.rdx)
  br label %.lr.ph403.preheader628

.lr.ph403.preheader628:                           ; preds = %vector.scevcheck, %.lr.ph403.preheader, %middle.block
  %.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %.lr.ph403.preheader ], [ %n.vec, %middle.block ]
  %.0131402.ph = phi i32 [ 0, %vector.scevcheck ], [ 0, %.lr.ph403.preheader ], [ %1, %middle.block ]
  %.3401.ph = phi i32 [ 0, %vector.scevcheck ], [ 0, %.lr.ph403.preheader ], [ %i.oo, %middle.block ]
  br label %.lr.ph403

.lr.ph400:                                        ; preds = %bb.aq, %bb.av
  %indvars.iv444 = phi i64 [ %indvars.iv.next445, %bb.av ], [ 0, %bb.aq ] ; 5 uses
  %.1151397 = phi ptr [ %.2152, %bb.av ], [ %.0150, %bb.aq ] ; 5 uses
  %.0153396 = phi ptr [ %i.pk, %bb.av ], [ %i.ln, %bb.aq ] ; 4 uses
  %.0154395 = phi ptr [ %i.pq, %bb.av ], [ %i.la, %bb.aq ] ; 4 uses
  %.1394 = phi i32 [ %i.vt, %bb.av ], [ 0, %bb.aq ]
  %i.op = invoke noalias noundef nonnull dereferenceable(12) ptr @_Znam(i64 noundef 12) #29
          to label %bb.ar unwind label %bb.at

bb.ar:                                            ; preds = %.lr.ph400
  %i.oq = load ptr, ptr %i.fq, align 8
  %i.or = getelementptr inbounds nuw i8, ptr %i.oq, i64 208
  %i.os = load ptr, ptr %i.or, align 8
  %i.ot = getelementptr inbounds nuw [16 x i8], ptr %i.os, i64 %indvars.iv444
  %i.ou = getelementptr inbounds nuw i8, ptr %i.ot, i64 8
  store ptr %i.op, ptr %i.ou, align 8
  %i.ov = load ptr, ptr %i.fq, align 8
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ov, i64 208
  %i.ox = load ptr, ptr %i.ow, align 8
  %i.oy = getelementptr inbounds nuw [16 x i8], ptr %i.ox, i64 %indvars.iv444
  store i32 3, ptr %i.oy, align 8
  %i.oz = load ptr, ptr %i.fr, align 8
  %i.pa = getelementptr inbounds nuw [4 x i8], ptr %i.oz, i64 %indvars.iv444
  %i.pb = load i32, ptr %i.pa, align 4
  %i.pc = zext i32 %i.pb to i64
  %i.pd = load ptr, ptr %i.ao, align 8
  %i.pe = getelementptr inbounds nuw [200 x i8], ptr %i.pd, i64 %i.pc ; 9 uses
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pe, i64 8 ; 2 uses
  %i.pg = getelementptr inbounds nuw i8, ptr %.0153396, i64 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.0153396, ptr noundef nonnull align 8 dereferenceable(12) %i.pf, i64 12, i1 false)
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pe, i64 72
  %i.pi = getelementptr inbounds nuw i8, ptr %.0153396, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.pg, ptr noundef nonnull align 8 dereferenceable(12) %i.ph, i64 12, i1 false)
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pe, i64 136
  %i.pk = getelementptr inbounds nuw i8, ptr %.0153396, i64 36
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.pi, ptr noundef nonnull align 8 dereferenceable(12) %i.pj, i64 12, i1 false)
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pe, i64 20
  %i.pm = getelementptr inbounds nuw i8, ptr %.0154395, i64 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.0154395, ptr noundef nonnull align 4 dereferenceable(12) %i.pl, i64 12, i1 false)
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pe, i64 84
  %i.po = getelementptr inbounds nuw i8, ptr %.0154395, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.pm, ptr noundef nonnull align 4 dereferenceable(12) %i.pn, i64 12, i1 false)
  %i.pp = getelementptr inbounds nuw i8, ptr %i.pe, i64 148
  %i.pq = getelementptr inbounds nuw i8, ptr %.0154395, i64 36
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.po, ptr noundef nonnull align 4 dereferenceable(12) %i.pp, i64 12, i1 false)
  %.not169 = icmp eq ptr %.1151397, null
  br i1 %.not169, label %bb.au, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pe, i64 32
  %i.ps = getelementptr inbounds nuw i8, ptr %.1151397, i64 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.1151397, ptr noundef nonnull align 8 dereferenceable(12) %i.pr, i64 12, i1 false)
  %i.pt = getelementptr inbounds nuw i8, ptr %i.pe, i64 96
  %i.pu = getelementptr inbounds nuw i8, ptr %.1151397, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ps, ptr noundef nonnull align 8 dereferenceable(12) %i.pt, i64 12, i1 false)
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pe, i64 160
  %i.pw = getelementptr inbounds nuw i8, ptr %.1151397, i64 36
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.pu, ptr noundef nonnull align 8 dereferenceable(12) %i.pv, i64 12, i1 false)
  br label %bb.au

bb.at:                                            ; preds = %.lr.ph400
  %i.px = landingpad { ptr, i32 }
          cleanup
  br label %bb.cc

bb.au:                                            ; preds = %bb.as, %bb.ar
  %.2152 = phi ptr [ %i.pw, %bb.as ], [ null, %bb.ar ]
  br label %.preheader

.preheader:                                       ; preds = %bb.au, %_ZNSt6vectorISt4pairIjfESaIS1_EE12emplace_backIJRjfEEERS1_DpOT_.exit
  %indvars.iv441 = phi i64 [ 0, %bb.au ], [ %indvars.iv.next442, %_ZNSt6vectorISt4pairIjfESaIS1_EE12emplace_backIJRjfEEERS1_DpOT_.exit ] ; 3 uses
  %.2392 = phi i32 [ %.1394, %bb.au ], [ %i.vt, %_ZNSt6vectorISt4pairIjfESaIS1_EE12emplace_backIJRjfEEERS1_DpOT_.exit ] ; 6 uses
  %i.py = getelementptr inbounds nuw [64 x i8], ptr %i.pf, i64 %indvars.iv441 ; 4 uses
  %i.pz = getelementptr inbounds nuw i8, ptr %i.py, i64 40 ; 3 uses
  %i.qa = getelementptr inbounds nuw i8, ptr %i.py, i64 48 ; 3 uses
  %i.qb = load ptr, ptr %i.qa, align 8
  %i.qc = load ptr, ptr %i.pz, align 8            ; 2 uses
  %.not420 = icmp eq ptr %i.qb, %i.qc
  br i1 %.not420, label %._crit_edge383.thread, label %.lr.ph382

.lr.ph382:                                        ; preds = %.preheader
  %i.qd = getelementptr inbounds nuw i8, ptr %i.py, i64 36
  br label %bb.aw

bb.av:                                            ; preds = %_ZNSt6vectorISt4pairIjfESaIS1_EE12emplace_backIJRjfEEERS1_DpOT_.exit
  %indvars.iv.next445 = add nuw nsw i64 %indvars.iv444, 1 ; 2 uses
  %i.qe = load ptr, ptr %i.fq, align 8            ; 2 uses
  %i.qf = getelementptr inbounds nuw i8, ptr %i.qe, i64 8
  %i.qg = load i32, ptr %i.qf, align 8
  %i.qh = zext i32 %i.qg to i64
  %i.qi = icmp samesign ult i64 %indvars.iv.next445, %i.qh
  br i1 %i.qi, label %.lr.ph400, label %.preheader311, !llvm.loop !33

._crit_edge383:                                   ; preds = %bb.bf
  %i.qj = fcmp olt float %.1146, 9.750000e-01
  br i1 %i.qj, label %._crit_edge383.thread, label %_ZNSt6vectorISt4pairIjfESaIS1_EE12emplace_backIJRjfEEERS1_DpOT_.exit

bb.aw:                                            ; preds = %.lr.ph382, %bb.bf
  %i.qk = phi ptr [ %i.qc, %.lr.ph382 ], [ %i.su, %bb.bf ]
  %i.ql = phi i64 [ 0, %.lr.ph382 ], [ %i.ss, %bb.bf ]
  %.0144381 = phi i32 [ 0, %.lr.ph382 ], [ %i.sr, %bb.bf ]
  %.0145380 = phi float [ 0.000000e+00, %.lr.ph382 ], [ %.1146, %bb.bf ] ; 2 uses
  %i.qm = getelementptr inbounds nuw [8 x i8], ptr %i.qk, i64 %i.ql ; 2 uses
  %i.qn = load i32, ptr %i.qm, align 4            ; 2 uses
  %i.qo = zext i32 %i.qn to i64                   ; 2 uses
  %i.qp = load ptr, ptr %i.cg, align 8
  %i.qq = load ptr, ptr %i.cf, align 8
  %i.qr = ptrtoint ptr %i.qp to i64
  %i.qs = ptrtoint ptr %i.qq to i64
  %i.qt = sub i64 %i.qr, %i.qs
  %i.qu = sdiv exact i64 %i.qt, 144
  %.not173 = icmp ugt i64 %i.qu, %i.qo
  br i1 %.not173, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.qv = load i32, ptr %i.qd, align 4
  %i.qw = icmp eq i32 %i.qn, %i.qv
  br i1 %i.qw, label %bb.ay, label %bb.ba

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %i.qx = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.az unwind label %.loopexit

bb.az:                                            ; preds = %bb.ay
  invoke void @_ZN6Assimp6Logger5errorEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.qx, ptr noundef nonnull @.str.10)
          to label %bb.bf unwind label %.loopexit

.loopexit:                                        ; preds = %bb.ay, %bb.az, %_ZNKSt6vectorISt4pairIjfESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.cc

.loopexit.split-lp:                               ; preds = %bb.bd
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.cc

bb.ba:                                            ; preds = %bb.ax
  %i.qy = getelementptr inbounds nuw [24 x i8], ptr %.ptr291.ptr, i64 %i.qo ; 4 uses
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qm, i64 4 ; 3 uses
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qy, i64 8 ; 4 uses
  %i.rb = load ptr, ptr %i.ra, align 8            ; 6 uses
  %i.rc = getelementptr inbounds nuw i8, ptr %i.qy, i64 16 ; 2 uses
  %i.rd = load ptr, ptr %i.rc, align 8
  %.not.i198 = icmp eq ptr %i.rb, %i.rd
  br i1 %.not.i198, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  store i32 %.2392, ptr %i.rb, align 4
  %i.re = getelementptr inbounds nuw i8, ptr %i.rb, i64 4
  %i.rf = load float, ptr %i.qz, align 4
  store float %i.rf, ptr %i.re, align 4
  %i.rg = load ptr, ptr %i.ra, align 8
  %i.rh = getelementptr inbounds nuw i8, ptr %i.rg, i64 8
  store ptr %i.rh, ptr %i.ra, align 8
  br label %_ZNSt6vectorISt4pairIjfESaIS1_EE12emplace_backIJRjRfEEERS1_DpOT_.exit

bb.bc:                                            ; preds = %bb.ba
  %i.ri = load ptr, ptr %i.qy, align 8            ; 7 uses
  %i.rj = ptrtoint ptr %i.rb to i64               ; 2 uses
  %i.rk = ptrtoint ptr %i.ri to i64               ; 3 uses
  %i.rl = sub i64 %i.rj, %i.rk                    ; 4 uses
  %i.rm = icmp eq i64 %i.rl, 9223372036854775800
  br i1 %i.rm, label %bb.bd, label %_ZNKSt6vectorISt4pairIjfESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.bd:                                            ; preds = %bb.bc
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.65) #28
          to label %.noexc202 unwind label %.loopexit.split-lp

.noexc202:                                        ; preds = %bb.bd
  unreachable

_ZNKSt6vectorISt4pairIjfESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.bc
  %i.rn = ashr exact i64 %i.rl, 3                 ; 3 uses
  %.sroa.speculated.i.i.i199 = tail call i64 @llvm.umax.i64(i64 %i.rn, i64 1)
  %i.ro = add nsw i64 %.sroa.speculated.i.i.i199, %i.rn ; 2 uses
  %i.rp = icmp ult i64 %i.ro, %i.rn
  %i.rq = tail call i64 @llvm.umin.i64(i64 %i.ro, i64 1152921504606846975)
  %i.rr = select i1 %i.rp, i64 1152921504606846975, i64 %i.rq ; 3 uses
  %.not.i.i.i200 = icmp ne i64 %i.rr, 0
  tail call void @llvm.assume(i1 %.not.i.i.i200)
  %i.rs = shl nuw nsw i64 %i.rr, 3
  %i.rt = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.rs) #29
          to label %.noexc203 unwind label %.loopexit ; 8 uses

.noexc203:                                        ; preds = %_ZNKSt6vectorISt4pairIjfESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.ru = getelementptr inbounds nuw i8, ptr %i.rt, i64 %i.rl ; 2 uses
  store i32 %.2392, ptr %i.ru, align 4
  %i.rv = getelementptr inbounds nuw i8, ptr %i.ru, i64 4
  %i.rw = load float, ptr %i.qz, align 4
  store float %i.rw, ptr %i.rv, align 4
  %.not10.i.i.i.i.i = icmp eq ptr %i.ri, %i.rb
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt4pairIjfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %.noexc203
  %i.rx = ptrtoaddr ptr %i.rt to i64
  %i.ry = sub i64 %i.rj, %i.rk
end_hunk_0
begin_hunk_1_@_ZN6Assimp11SMDImporter18CreateOutputMeshesEv:bb.a
  br i1 %i.tk, label %bb.bk, label %_ZNSt6vectorISt4pairIjfESaIS1_EE12emplace_backIJRjfEEERS1_DpOT_.exit

bb.bk:                                            ; preds = %bb.bj
  %i.tl = fdiv nnan float 1.000000e+00, %.0145.lcssa534
  %i.tm = load ptr, ptr %i.pz, align 8            ; 2 uses
  %i.tn = load ptr, ptr %i.qa, align 8            ; 2 uses
  %.not293388 = icmp eq ptr %i.tm, %i.tn
  br i1 %.not293388, label %_ZNSt6vectorISt4pairIjfESaIS1_EE12emplace_backIJRjfEEERS1_DpOT_.exit, label %.lr.ph391

bb.bl:                                            ; preds = %bb.bi, %bb.bh
  %i.to = landingpad { ptr, i32 }
          cleanup
  br label %bb.cc

.lr.ph391:                                        ; preds = %bb.bk, %bb.bn
  %.sroa.0240.0389 = phi ptr [ %i.ud, %bb.bn ], [ %i.tm, %bb.bk ] ; 2 uses
  %i.tp = load i32, ptr %.sroa.0240.0389, align 4
  %i.tq = zext i32 %i.tp to i64                   ; 2 uses
  %i.tr = load ptr, ptr %i.cg, align 8
  %i.ts = load ptr, ptr %i.cf, align 8
  %i.tt = ptrtoint ptr %i.tr to i64
  %i.tu = ptrtoint ptr %i.ts to i64
  %i.tv = sub i64 %i.tt, %i.tu
  %i.tw = sdiv exact i64 %i.tv, 144
  %.not172 = icmp ugt i64 %i.tw, %i.tq
  br i1 %.not172, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %.lr.ph391
  %i.tx = getelementptr inbounds nuw [24 x i8], ptr %.ptr291.ptr, i64 %i.tq
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tx, i64 8
  %i.tz = load ptr, ptr %i.ty, align 8
  %i.ua = getelementptr inbounds i8, ptr %i.tz, i64 -4 ; 2 uses
  %i.ub = load float, ptr %i.ua, align 4
  %i.uc = fmul float %i.tl, %i.ub
  store float %i.uc, ptr %i.ua, align 4
  br label %bb.bn

bb.bn:                                            ; preds = %.lr.ph391, %bb.bm
  %i.ud = getelementptr inbounds nuw i8, ptr %.sroa.0240.0389, i64 8 ; 2 uses
  %.not293 = icmp eq ptr %i.ud, %i.tn
  br i1 %.not293, label %_ZNSt6vectorISt4pairIjfESaIS1_EE12emplace_backIJRjfEEERS1_DpOT_.exit, label %.lr.ph391

bb.bo:                                            ; preds = %bb.bg
  %i.ue = getelementptr inbounds nuw [24 x i8], ptr %.ptr291.ptr, i64 %i.tc ; 4 uses
  %i.uf = fsub float 1.000000e+00, %.0145.lcssa534 ; 2 uses
  %i.ug = getelementptr inbounds nuw i8, ptr %i.ue, i64 8 ; 4 uses
  %i.uh = load ptr, ptr %i.ug, align 8            ; 6 uses
  %i.ui = getelementptr inbounds nuw i8, ptr %i.ue, i64 16 ; 2 uses
  %i.uj = load ptr, ptr %i.ui, align 8
  %.not.i204 = icmp eq ptr %i.uh, %i.uj
  br i1 %.not.i204, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  store i32 %.2392, ptr %i.uh, align 4
  %i.uk = getelementptr inbounds nuw i8, ptr %i.uh, i64 4
  store float %i.uf, ptr %i.uk, align 4
  %i.ul = load ptr, ptr %i.ug, align 8
  %i.um = getelementptr inbounds nuw i8, ptr %i.ul, i64 8
  store ptr %i.um, ptr %i.ug, align 8
  br label %_ZNSt6vectorISt4pairIjfESaIS1_EE12emplace_backIJRjfEEERS1_DpOT_.exit

bb.bq:                                            ; preds = %bb.bo
  %i.un = load ptr, ptr %i.ue, align 8            ; 7 uses
  %i.uo = ptrtoint ptr %i.uh to i64               ; 2 uses
  %i.up = ptrtoint ptr %i.un to i64               ; 3 uses
  %i.uq = sub i64 %i.uo, %i.up                    ; 4 uses
  %i.ur = icmp eq i64 %i.uq, 9223372036854775800
  br i1 %i.ur, label %bb.br, label %_ZNKSt6vectorISt4pairIjfESaIS1_EE12_M_check_lenEmPKc.exit.i.i205

bb.br:                                            ; preds = %bb.bq
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.65) #28
          to label %.noexc216 unwind label %.loopexit.split-lp306

.noexc216:                                        ; preds = %bb.br
  unreachable

_ZNKSt6vectorISt4pairIjfESaIS1_EE12_M_check_lenEmPKc.exit.i.i205: ; preds = %bb.bq
  %i.us = ashr exact i64 %i.uq, 3                 ; 3 uses
  %.sroa.speculated.i.i.i206 = tail call i64 @llvm.umax.i64(i64 %i.us, i64 1)
  %i.ut = add nsw i64 %.sroa.speculated.i.i.i206, %i.us ; 2 uses
  %i.uu = icmp ult i64 %i.ut, %i.us
  %i.uv = tail call i64 @llvm.umin.i64(i64 %i.ut, i64 1152921504606846975)
  %i.uw = select i1 %i.uu, i64 1152921504606846975, i64 %i.uv ; 3 uses
  %.not.i.i.i207 = icmp ne i64 %i.uw, 0
  tail call void @llvm.assume(i1 %.not.i.i.i207)
  %i.ux = shl nuw nsw i64 %i.uw, 3
  %i.uy = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ux) #29
          to label %.noexc217 unwind label %.loopexit305 ; 8 uses

.noexc217:                                        ; preds = %_ZNKSt6vectorISt4pairIjfESaIS1_EE12_M_check_lenEmPKc.exit.i.i205
  %i.uz = getelementptr inbounds nuw i8, ptr %i.uy, i64 %i.uq ; 2 uses
  store i32 %.2392, ptr %i.uz, align 4
  %i.va = getelementptr inbounds nuw i8, ptr %i.uz, i64 4
  store float %i.uf, ptr %i.va, align 4
  %.not10.i.i.i.i.i208 = icmp eq ptr %i.un, %i.uh
  br i1 %.not10.i.i.i.i.i208, label %_ZNSt6vectorISt4pairIjfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i213, label %.lr.ph.i.i.i.i.i209.preheader

.lr.ph.i.i.i.i.i209.preheader:                    ; preds = %.noexc217
  %i.vb = ptrtoaddr ptr %i.uy to i64
  %i.vc = sub i64 %i.uo, %i.up
  %i.vd = add i64 %i.vc, -8                       ; 2 uses
  %i.ve = lshr i64 %i.vd, 3
  %i.vf = add nuw nsw i64 %i.ve, 1                ; 2 uses
  %min.iters.check575 = icmp ult i64 %i.vd, 24
  %i.vg = sub i64 %i.up, %i.vb
  %diff.check = icmp ugt i64 %i.vg, -32
  %or.cond624 = or i1 %min.iters.check575, %diff.check
  br i1 %or.cond624, label %.lr.ph.i.i.i.i.i209.preheader626, label %vector.ph576

vector.ph576:                                     ; preds = %.lr.ph.i.i.i.i.i209.preheader
  %n.vec578 = and i64 %i.vf, 4611686018427387900  ; 3 uses
  %i.vh = shl i64 %n.vec578, 3                    ; 2 uses
  %i.vi = getelementptr i8, ptr %i.uy, i64 %i.vh  ; 2 uses
  %i.vj = getelementptr i8, ptr %i.un, i64 %i.vh
  br label %vector.body579

vector.body579:                                   ; preds = %vector.body579, %vector.ph576
  %index580 = phi i64 [ 0, %vector.ph576 ], [ %index.next583, %vector.body579 ] ; 2 uses
  %i.vk = shl i64 %index580, 3                    ; 2 uses
  %next.gep = getelementptr i8, ptr %i.uy, i64 %i.vk ; 2 uses
  %next.gep581 = getelementptr i8, ptr %i.un, i64 %i.vk ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45)
  %i.vl = getelementptr i8, ptr %next.gep581, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep581, align 4, !alias.scope !45, !noalias !42
  %wide.load582 = load <2 x i64>, ptr %i.vl, align 4, !alias.scope !45, !noalias !42
  %i.vm = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 4, !alias.scope !42, !noalias !45
  store <2 x i64> %wide.load582, ptr %i.vm, align 4, !alias.scope !42, !noalias !45
  %index.next583 = add nuw i64 %index580, 4       ; 2 uses
  %i.vn = icmp eq i64 %index.next583, %n.vec578
  br i1 %i.vn, label %middle.block584, label %vector.body579, !llvm.loop !47

middle.block584:                                  ; preds = %vector.body579
  %cmp.n = icmp eq i64 %i.vf, %n.vec578
  br i1 %cmp.n, label %_ZNSt6vectorISt4pairIjfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i213, label %.lr.ph.i.i.i.i.i209.preheader626

.lr.ph.i.i.i.i.i209.preheader626:                 ; preds = %.lr.ph.i.i.i.i.i209.preheader, %middle.block584
  %.012.i.i.i.i.i210.ph = phi ptr [ %i.uy, %.lr.ph.i.i.i.i.i209.preheader ], [ %i.vi, %middle.block584 ]
  %.0911.i.i.i.i.i211.ph = phi ptr [ %i.un, %.lr.ph.i.i.i.i.i209.preheader ], [ %i.vj, %middle.block584 ]
  br label %.lr.ph.i.i.i.i.i209

.lr.ph.i.i.i.i.i209:                              ; preds = %.lr.ph.i.i.i.i.i209.preheader626, %.lr.ph.i.i.i.i.i209
  %.012.i.i.i.i.i210 = phi ptr [ %i.vq, %.lr.ph.i.i.i.i.i209 ], [ %.012.i.i.i.i.i210.ph, %.lr.ph.i.i.i.i.i209.preheader626 ] ; 2 uses
  %.0911.i.i.i.i.i211 = phi ptr [ %i.vp, %.lr.ph.i.i.i.i.i209 ], [ %.0911.i.i.i.i.i211.ph, %.lr.ph.i.i.i.i.i209.preheader626 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45)
  %i.vo = load i64, ptr %.0911.i.i.i.i.i211, align 4, !alias.scope !45, !noalias !42
  store i64 %i.vo, ptr %.012.i.i.i.i.i210, align 4, !alias.scope !42, !noalias !45
  %i.vp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i211, i64 8 ; 2 uses
  %i.vq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i210, i64 8 ; 2 uses
  %.not.i.i.i.i.i212 = icmp eq ptr %i.vp, %i.uh
  br i1 %.not.i.i.i.i.i212, label %_ZNSt6vectorISt4pairIjfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i213, label %.lr.ph.i.i.i.i.i209, !llvm.loop !48

_ZNSt6vectorISt4pairIjfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i213: ; preds = %.lr.ph.i.i.i.i.i209, %middle.block584, %.noexc217
  %.0.lcssa.i.i.i.i.i214 = phi ptr [ %i.uy, %.noexc217 ], [ %i.vi, %middle.block584 ], [ %i.vq, %.lr.ph.i.i.i.i.i209 ]
  %i.vr = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i214, i64 8
  %.not.i34.i.i215 = icmp eq ptr %i.un, null
  br i1 %.not.i34.i.i215, label %_ZNSt6vectorISt4pairIjfESaIS1_EE17_M_realloc_insertIJRjfEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.bs

bb.bs:                                            ; preds = %_ZNSt6vectorISt4pairIjfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i213
  tail call void @_ZdlPvm(ptr noundef nonnull %i.un, i64 noundef %i.uq) #30
  br label %_ZNSt6vectorISt4pairIjfESaIS1_EE17_M_realloc_insertIJRjfEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorISt4pairIjfESaIS1_EE17_M_realloc_insertIJRjfEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.bs, %_ZNSt6vectorISt4pairIjfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i213
  store ptr %i.uy, ptr %i.ue, align 8
  store ptr %i.vr, ptr %i.ug, align 8
  %i.vs = getelementptr inbounds nuw [8 x i8], ptr %i.uy, i64 %i.uw
  store ptr %i.vs, ptr %i.ui, align 8
  br label %_ZNSt6vectorISt4pairIjfESaIS1_EE12emplace_backIJRjfEEERS1_DpOT_.exit

.loopexit305:                                     ; preds = %_ZNKSt6vectorISt4pairIjfESaIS1_EE12_M_check_lenEmPKc.exit.i.i205
  %lpad.loopexit307 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cc

.loopexit.split-lp306:                            ; preds = %bb.br
  %lpad.loopexit.split-lp308 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cc

_ZNSt6vectorISt4pairIjfESaIS1_EE12emplace_backIJRjfEEERS1_DpOT_.exit: ; preds = %bb.bn, %bb.bk, %bb.bp, %_ZNSt6vectorISt4pairIjfESaIS1_EE17_M_realloc_insertIJRjfEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.bj, %._crit_edge383.thread, %._crit_edge383
  %i.vt = add i32 %.2392, 1                       ; 2 uses
  %i.vu = load ptr, ptr %i.fq, align 8
  %i.vv = getelementptr inbounds nuw i8, ptr %i.vu, i64 208
  %i.vw = load ptr, ptr %i.vv, align 8
  %i.vx = getelementptr inbounds nuw [16 x i8], ptr %i.vw, i64 %indvars.iv444
  %i.vy = getelementptr inbounds nuw i8, ptr %i.vx, i64 8
  %i.vz = load ptr, ptr %i.vy, align 8
  %i.wa = getelementptr inbounds nuw [4 x i8], ptr %i.vz, i64 %indvars.iv441
  store i32 %.2392, ptr %i.wa, align 4
  %indvars.iv.next442 = add nuw nsw i64 %indvars.iv441, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next442, 3
  br i1 %exitcond.not, label %bb.av, label %.preheader, !llvm.loop !49

._crit_edge404:                                   ; preds = %.lr.ph403
  %.not = icmp eq i32 %spec.select, 0
  br i1 %.not, label %.loopexit310, label %bb.bt

.lr.ph403:                                        ; preds = %.lr.ph403.preheader628, %.lr.ph403
  %i.wb = phi i64 [ %3, %.lr.ph403 ], [ %.ph, %.lr.ph403.preheader628 ]
  %.0131402 = phi i32 [ %2, %.lr.ph403 ], [ %.0131402.ph, %.lr.ph403.preheader628 ]
  %.3401 = phi i32 [ %spec.select, %.lr.ph403 ], [ %.3401.ph, %.lr.ph403.preheader628 ]
  %i.wc = getelementptr inbounds nuw [24 x i8], ptr %.ptr291.ptr, i64 %i.wb ; 2 uses
  %i.wd = load ptr, ptr %i.wc, align 8
  %i.we = getelementptr inbounds nuw i8, ptr %i.wc, i64 8
  %i.wf = load ptr, ptr %i.we, align 8
  %i.wg = icmp ne ptr %i.wd, %i.wf
  %i.wh = zext i1 %i.wg to i32
  %spec.select = add i32 %.3401, %i.wh            ; 3 uses
  %2 = add i32 %.0131402, 1                       ; 2 uses
  %3 = zext i32 %2 to i64                         ; 2 uses
  %i.wi = icmp ugt i64 %i.my, %3
  br i1 %i.wi, label %.lr.ph403, label %._crit_edge404, !llvm.loop !50

bb.bt:                                            ; preds = %._crit_edge404
  %i.wj = getelementptr inbounds nuw i8, ptr %.lcssa349, i64 216
  store i32 %spec.select, ptr %i.wj, align 8
  %i.wk = load ptr, ptr %i.fq, align 8
  %i.wl = getelementptr inbounds nuw i8, ptr %i.wk, i64 216
  %i.wm = load i32, ptr %i.wl, align 8
  %i.wn = zext i32 %i.wm to i64
  %i.wo = shl nuw nsw i64 %i.wn, 3
  %i.wp = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.wo) #29
          to label %bb.bu unwind label %bb.ap

bb.bu:                                            ; preds = %bb.bt
  %i.wq = load ptr, ptr %i.fq, align 8
  %i.wr = getelementptr inbounds nuw i8, ptr %i.wq, i64 224
  store ptr %i.wp, ptr %i.wr, align 8
  %i.ws = load ptr, ptr %i.cg, align 8            ; 2 uses
  %i.wt = load ptr, ptr %i.cf, align 8            ; 2 uses
  %.not422 = icmp eq ptr %i.ws, %i.wt
  br i1 %.not422, label %.loopexit310, label %.lr.ph412

.lr.ph412:                                        ; preds = %bb.bu, %bb.ca
  %i.wu = phi ptr [ %i.zy, %bb.ca ], [ %i.wt, %bb.bu ]
  %i.wv = phi ptr [ %i.zz, %bb.ca ], [ %i.ws, %bb.bu ]
  %i.ww = phi i64 [ %i.aab, %bb.ca ], [ 0, %bb.bu ] ; 4 uses
  %.0130410 = phi i32 [ %i.aaa, %bb.ca ], [ 0, %bb.bu ]
  %.5409 = phi i32 [ %.6, %bb.ca ], [ 0, %bb.bu ] ; 3 uses
  %i.wx = getelementptr inbounds nuw [24 x i8], ptr %.ptr291.ptr, i64 %i.ww ; 5 uses
  %i.wy = load ptr, ptr %i.wx, align 8
  %i.wz = getelementptr inbounds nuw i8, ptr %i.wx, i64 8 ; 2 uses
  %i.xa = load ptr, ptr %i.wz, align 8
  %i.xb = icmp eq ptr %i.wy, %i.xa
  br i1 %i.xb, label %bb.ca, label %bb.bv

bb.bv:                                            ; preds = %.lr.ph412
  %i.xc = invoke noalias noundef nonnull dereferenceable(1120) ptr @_Znwm(i64 noundef 1120) #29
          to label %bb.bw unwind label %bb.bz     ; 10 uses

bb.bw:                                            ; preds = %bb.bv
  %i.xd = getelementptr inbounds nuw i8, ptr %i.xc, i64 1056
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1120) %i.xc, i8 0, i64 1056, i1 false)
  store float 1.000000e+00, ptr %i.xd, align 4
  %i.xe = getelementptr inbounds nuw i8, ptr %i.xc, i64 1060
  %i.xf = getelementptr inbounds nuw i8, ptr %i.xc, i64 1076
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.xe, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.xf, align 4
  %i.xg = getelementptr inbounds nuw i8, ptr %i.xc, i64 1080
  %i.xh = getelementptr inbounds nuw i8, ptr %i.xc, i64 1096
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.xg, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.xh, align 4
  %i.xi = getelementptr inbounds nuw i8, ptr %i.xc, i64 1100
  %i.xj = getelementptr inbounds nuw i8, ptr %i.xc, i64 1116
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.xi, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.xj, align 4
  %i.xk = load ptr, ptr %i.fq, align 8
  %i.xl = getelementptr inbounds nuw i8, ptr %i.xk, i64 224
  %i.xm = load ptr, ptr %i.xl, align 8
  %i.xn = zext i32 %.5409 to i64
  %i.xo = getelementptr inbounds nuw [8 x i8], ptr %i.xm, i64 %i.xn ; 8 uses
  store ptr %i.xc, ptr %i.xo, align 8
  %i.xp = load ptr, ptr %i.wz, align 8
  %i.xq = load ptr, ptr %i.wx, align 8
  %i.xr = ptrtoint ptr %i.xp to i64
  %i.xs = ptrtoint ptr %i.xq to i64
  %i.xt = sub i64 %i.xr, %i.xs
  %i.xu = lshr exact i64 %i.xt, 3
  %i.xv = trunc i64 %i.xu to i32
  %i.xw = getelementptr inbounds nuw i8, ptr %i.xc, i64 1028
  store i32 %i.xv, ptr %i.xw, align 4
  %i.xx = load ptr, ptr %i.xo, align 8
  %i.xy = getelementptr inbounds nuw i8, ptr %i.xx, i64 1028
  %i.xz = load i32, ptr %i.xy, align 4            ; 2 uses
  %i.ya = zext i32 %i.xz to i64
  %i.yb = shl nuw nsw i64 %i.ya, 3                ; 2 uses
  %i.yc = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.yb) #29
          to label %bb.bx unwind label %bb.bz     ; 2 uses

bb.bx:                                            ; preds = %bb.bw
  %i.yd = icmp eq i32 %i.xz, 0
  br i1 %i.yd, label %.loopexit304, label %.loopexit304.loopexit

.loopexit304.loopexit:                            ; preds = %bb.bx
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.yc, i8 0, i64 %i.yb, i1 false)
  br label %.loopexit304

.loopexit304:                                     ; preds = %.loopexit304.loopexit, %bb.bx
  %i.ye = load ptr, ptr %i.xo, align 8
  %i.yf = getelementptr inbounds nuw i8, ptr %i.ye, i64 1048
  store ptr %i.yc, ptr %i.yf, align 8
  %i.yg = load ptr, ptr %i.cf, align 8
  %i.yh = getelementptr inbounds nuw [144 x i8], ptr %i.yg, i64 %i.ww
  %i.yi = getelementptr inbounds nuw i8, ptr %i.yh, i64 72
  %i.yj = load ptr, ptr %i.xo, align 8
  %i.yk = getelementptr inbounds nuw i8, ptr %i.yj, i64 1056
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.yk, ptr noundef nonnull align 8 dereferenceable(64) %i.yi, i64 64, i1 false)
  %i.yl = load ptr, ptr %i.cf, align 8            ; 2 uses
  %i.ym = getelementptr inbounds nuw [144 x i8], ptr %i.yl, i64 %i.ww ; 2 uses
  %i.yn = getelementptr inbounds nuw i8, ptr %i.ym, i64 8
  %i.yo = load i64, ptr %i.yn, align 8            ; 4 uses
  %i.yp = icmp ugt i64 %i.yo, 1023
  br i1 %i.yp, label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %bb.by

bb.by:                                            ; preds = %.loopexit304
  %i.yq = load ptr, ptr %i.xo, align 8            ; 2 uses
  %i.yr = trunc nuw nsw i64 %i.yo to i32
  store i32 %i.yr, ptr %i.yq, align 4
  %i.ys = getelementptr inbounds nuw i8, ptr %i.yq, i64 4 ; 2 uses
  %i.yt = load ptr, ptr %i.ym, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ys, ptr align 1 %i.yt, i64 %i.yo, i1 false)
  %i.yu = getelementptr inbounds nuw i8, ptr %i.ys, i64 %i.yo
  store i8 0, ptr %i.yu, align 1
  %.pre461 = load ptr, ptr %i.cf, align 8
  br label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %.loopexit304, %bb.by
  %i.yv = phi ptr [ %i.yl, %.loopexit304 ], [ %.pre461, %bb.by ]
  %i.yw = getelementptr inbounds nuw [144 x i8], ptr %i.yv, i64 %i.ww
  %i.yx = getelementptr inbounds nuw i8, ptr %i.yw, i64 136
  store i8 1, ptr %i.yx, align 8
  %i.yy = load ptr, ptr %i.xo, align 8            ; 2 uses
  %i.yz = getelementptr inbounds nuw i8, ptr %i.yy, i64 1028
  %i.za = load i32, ptr %i.yz, align 4
  %.not423 = icmp eq i32 %i.za, 0
  br i1 %.not423, label %._crit_edge408, label %.lr.ph407

._crit_edge408:                                   ; preds = %.lr.ph407, %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.zb = add i32 %.5409, 1
  %.pre462 = load ptr, ptr %i.cg, align 8
  %.pre463 = load ptr, ptr %i.cf, align 8
  br label %bb.ca

bb.bz:                                            ; preds = %bb.bw, %bb.bv
  %i.zc = landingpad { ptr, i32 }
          cleanup
  br label %bb.cc

.lr.ph407:                                        ; preds = %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %.lr.ph407
  %indvars.iv447 = phi i64 [ %indvars.iv.next448.a, %.lr.ph407 ], [ 0, %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ] ; 5 uses
  %i.zd = phi ptr [ %i.zt, %.lr.ph407 ], [ %i.yy, %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ]
  %i.ze = load ptr, ptr %i.wx, align 8
  %i.zf = getelementptr inbounds nuw [8 x i8], ptr %i.ze, i64 %indvars.iv447
  %i.zg = load i32, ptr %i.zf, align 4
  %i.zh = getelementptr inbounds nuw i8, ptr %i.zd, i64 1048
  %i.zi = load ptr, ptr %i.zh, align 8
  %i.zj = getelementptr inbounds nuw [8 x i8], ptr %i.zi, i64 %indvars.iv447
  store i32 %i.zg, ptr %i.zj, align 4
  %i.zk = load ptr, ptr %i.wx, align 8
  %i.zl = getelementptr inbounds nuw [8 x i8], ptr %i.zk, i64 %indvars.iv447
  %i.zm = getelementptr inbounds nuw i8, ptr %i.zl, i64 4
  %i.zn = load float, ptr %i.zm, align 4
  %i.zo = load ptr, ptr %i.xo, align 8
  %i.zp = getelementptr inbounds nuw i8, ptr %i.zo, i64 1048
  %i.zq = load ptr, ptr %i.zp, align 8
  %i.zr = getelementptr inbounds nuw [8 x i8], ptr %i.zq, i64 %indvars.iv447
  %i.zs = getelementptr inbounds nuw i8, ptr %i.zr, i64 4
  store float %i.zn, ptr %i.zs, align 4
  %indvars.iv.next448.a = add nuw nsw i64 %indvars.iv447, 1 ; 2 uses
  %i.zt = load ptr, ptr %i.xo, align 8            ; 2 uses
  %i.zu = getelementptr inbounds nuw i8, ptr %i.zt, i64 1028
  %i.zv = load i32, ptr %i.zu, align 4
  %i.zw = zext i32 %i.zv to i64
  %i.zx = icmp samesign ult i64 %indvars.iv.next448.a, %i.zw
  br i1 %i.zx, label %.lr.ph407, label %._crit_edge408, !llvm.loop !51

bb.ca:                                            ; preds = %.lr.ph412, %._crit_edge408
  %i.zy = phi ptr [ %i.wu, %.lr.ph412 ], [ %.pre463, %._crit_edge408 ] ; 2 uses
  %i.zz = phi ptr [ %i.wv, %.lr.ph412 ], [ %.pre462, %._crit_edge408 ] ; 2 uses
  %.6 = phi i32 [ %.5409, %.lr.ph412 ], [ %i.zb, %._crit_edge408 ]
  %i.aaa = add i32 %.0130410, 1                   ; 2 uses
  %i.aab = zext i32 %i.aaa to i64                 ; 2 uses
  %i.aac = ptrtoint ptr %i.zz to i64
  %i.aad = ptrtoint ptr %i.zy to i64
  %i.aae = sub i64 %i.aac, %i.aad
  %i.aaf = sdiv exact i64 %i.aae, 144
  %i.aag = icmp ugt i64 %i.aaf, %i.aab
  br i1 %i.aag, label %.lr.ph412, label %.loopexit310, !llvm.loop !52

.loopexit310:                                     ; preds = %bb.ca, %.preheader311, %bb.bu, %._crit_edge404
  %i.aah = load i64, ptr %i.hd, align 16          ; 2 uses
  %i.aai = icmp eq i64 %i.aah, 0
  br i1 %i.aai, label %_ZNSt10unique_ptrIA_St6vectorISt4pairIjfESaIS2_EESt14default_deleteIS5_EED2Ev.exit, label %.preheader.preheader.i.i220

.preheader.preheader.i.i220:                      ; preds = %.loopexit310
  %.idx.i.i219 = mul i64 %i.aah, 24
  %.add288 = add i64 %.idx.i.i219, 8              ; 2 uses
  br label %.preheader.i.i221

.preheader.i.i221:                                ; preds = %_ZNSt6vectorISt4pairIjfESaIS1_EED2Ev.exit.i.i, %.preheader.preheader.i.i220
  %.idx286 = phi i64 [ %.add287, %_ZNSt6vectorISt4pairIjfESaIS1_EED2Ev.exit.i.i ], [ %.add288, %.preheader.preheader.i.i220 ] ; 2 uses
  %.add287 = add nsw i64 %.idx286, -24            ; 3 uses
  %.ptr290 = getelementptr inbounds i8, ptr %i.hd, i64 %.add287
  %i.aaj = load ptr, ptr %.ptr290, align 8        ; 3 uses
  %.not.i.i.i.i.i222 = icmp eq ptr %i.aaj, null
  br i1 %.not.i.i.i.i.i222, label %_ZNSt6vectorISt4pairIjfESaIS1_EED2Ev.exit.i.i, label %bb.cb

bb.cb:                                            ; preds = %.preheader.i.i221
  %.ptr289 = getelementptr inbounds i8, ptr %i.hd, i64 %.idx286
  %i.aak = getelementptr inbounds i8, ptr %.ptr289, i64 -8
  %i.aal = load ptr, ptr %i.aak, align 8
end_hunk_1
