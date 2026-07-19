inline.NumInlined: 1538
inline.NumDeleted: 693
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN6Assimp11SMDImporter18CreateOutputMeshesEv:bb.a
  br i1 %i.jr, label %.lr.ph376, label %._crit_edge377, !llvm.loop !29

bb.af:                                            ; preds = %_ZNSt12_Vector_baseISt4pairIjfESaIS1_EE11_M_allocateEm.exit.i
  %i.js = landingpad { ptr, i32 }
          cleanup
  br label %bb.cc

bb.ag:                                            ; preds = %._crit_edge377
  store i64 %i.hm, ptr %i.hp, align 16
  %i.jt = getelementptr inbounds nuw i8, ptr %i.hp, i64 8 ; 4 uses
  %i.ju = icmp eq i32 %i.hl, 0
  br i1 %i.ju, label %.loopexit315, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.jv = getelementptr inbounds nuw [16 x i8], ptr %i.jt, i64 %i.hm
  %i.jw = add nuw nsw i64 %i.hm, 1152921504606846975
  %i.jx = and i64 %i.jw, 1152921504606846975
  %xtraiter = and i64 %i.hm, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.ah, %.prol.preheader
  %i.jy = phi ptr [ %i.ka, %.prol.preheader ], [ %i.jt, %bb.ah ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %bb.ah ]
  store i32 0, ptr %i.jy, align 8
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 8
  store ptr null, ptr %i.jz, align 8
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jy, i64 16 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !30

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.ah
  %.unr = phi ptr [ %i.jt, %bb.ah ], [ %i.ka, %.prol.preheader ]
  %i.kb = icmp samesign ult i64 %i.jx, 7
  br i1 %i.kb, label %.loopexit315, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %i.kc = phi ptr [ %i.ks, %.new ], [ %.unr, %.prol.loopexit ] ; 17 uses
  store i32 0, ptr %i.kc, align 8
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 8
  store ptr null, ptr %i.kd, align 8
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kc, i64 16
  store i32 0, ptr %i.ke, align 8
  %i.kf = getelementptr inbounds nuw i8, ptr %i.kc, i64 24
  store ptr null, ptr %i.kf, align 8
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kc, i64 32
  store i32 0, ptr %i.kg, align 8
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kc, i64 40
  store ptr null, ptr %i.kh, align 8
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kc, i64 48
  store i32 0, ptr %i.ki, align 8
  %i.kj = getelementptr inbounds nuw i8, ptr %i.kc, i64 56
  store ptr null, ptr %i.kj, align 8
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kc, i64 64
  store i32 0, ptr %i.kk, align 8
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kc, i64 72
  store ptr null, ptr %i.kl, align 8
  %i.km = getelementptr inbounds nuw i8, ptr %i.kc, i64 80
  store i32 0, ptr %i.km, align 8
  %i.kn = getelementptr inbounds nuw i8, ptr %i.kc, i64 88
  store ptr null, ptr %i.kn, align 8
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kc, i64 96
  store i32 0, ptr %i.ko, align 8
  %i.kp = getelementptr inbounds nuw i8, ptr %i.kc, i64 104
  store ptr null, ptr %i.kp, align 8
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kc, i64 112
  store i32 0, ptr %i.kq, align 8
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kc, i64 120
  store ptr null, ptr %i.kr, align 8
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kc, i64 128 ; 2 uses
  %i.kt = icmp eq ptr %i.ks, %i.jv
  br i1 %i.kt, label %.loopexit315, label %.new

.loopexit315:                                     ; preds = %.prol.loopexit, %.new, %bb.ag
  %i.ku = load ptr, ptr %i.fq, align 8
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 208
  store ptr %i.jt, ptr %i.kv, align 8
  %i.kw = load ptr, ptr %i.fq, align 8
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 4
  %i.ky = load i32, ptr %i.kx, align 4            ; 2 uses
  %i.kz = zext i32 %i.ky to i64
  %i.la = mul nuw nsw i64 %i.kz, 12               ; 2 uses
  %i.lb = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.la) #29
          to label %bb.ai unwind label %bb.an     ; 3 uses

bb.ai:                                            ; preds = %.loopexit315
  %i.lc = icmp eq i32 %i.ky, 0
  br i1 %i.lc, label %.loopexit314, label %.loopexit314.loopexit

.loopexit314.loopexit:                            ; preds = %bb.ai
  %i.ld = add nsw i64 %i.la, -12                  ; 2 uses
  %i.le = urem i64 %i.ld, 12
  %i.lf = sub nuw nsw i64 %i.ld, %i.le
  %i.lg = add nsw i64 %i.lf, 12
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.lb, i8 0, i64 %i.lg, i1 false)
  br label %.loopexit314

.loopexit314:                                     ; preds = %.loopexit314.loopexit, %bb.ai
  %i.lh = load ptr, ptr %i.fq, align 8
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 24
  store ptr %i.lb, ptr %i.li, align 8
  %i.lj = load ptr, ptr %i.fq, align 8
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lj, i64 4
  %i.ll = load i32, ptr %i.lk, align 4            ; 2 uses
  %i.lm = zext i32 %i.ll to i64
  %i.ln = mul nuw nsw i64 %i.lm, 12               ; 2 uses
  %i.lo = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ln) #29
          to label %bb.aj unwind label %bb.ao     ; 3 uses

bb.aj:                                            ; preds = %.loopexit314
  %i.lp = icmp eq i32 %i.ll, 0
  br i1 %i.lp, label %.loopexit313, label %.loopexit313.loopexit

.loopexit313.loopexit:                            ; preds = %bb.aj
  %i.lq = add nsw i64 %i.ln, -12                  ; 2 uses
  %i.lr = urem i64 %i.lq, 12
  %i.ls = sub nuw nsw i64 %i.lq, %i.lr
  %i.lt = add nsw i64 %i.ls, 12
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.lo, i8 0, i64 %i.lt, i1 false)
  br label %.loopexit313

.loopexit313:                                     ; preds = %.loopexit313.loopexit, %bb.aj
  %i.lu = load ptr, ptr %i.fq, align 8
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 16
  store ptr %i.lo, ptr %i.lv, align 8
  %i.lw = load i8, ptr %i.ch, align 8, !range !5, !noundef !6
  %i.lx = trunc nuw i8 %i.lw to i1
  br i1 %i.lx, label %bb.ak, label %bb.aq

bb.ak:                                            ; preds = %.loopexit313
  %i.ly = load ptr, ptr %i.fq, align 8
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 4
  %i.ma = load i32, ptr %i.lz, align 4            ; 2 uses
  %i.mb = zext i32 %i.ma to i64
  %i.mc = mul nuw nsw i64 %i.mb, 12               ; 2 uses
  %i.md = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.mc) #29
          to label %bb.al unwind label %bb.ap     ; 3 uses

bb.al:                                            ; preds = %bb.ak
  %i.me = icmp eq i32 %i.ma, 0
  br i1 %i.me, label %.loopexit312, label %.loopexit312.loopexit

.loopexit312.loopexit:                            ; preds = %bb.al
  %i.mf = add nsw i64 %i.mc, -12                  ; 2 uses
  %i.mg = urem i64 %i.mf, 12
  %i.mh = sub nuw nsw i64 %i.mf, %i.mg
  %i.mi = add nsw i64 %i.mh, 12
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.md, i8 0, i64 %i.mi, i1 false)
  br label %.loopexit312

.loopexit312:                                     ; preds = %.loopexit312.loopexit, %bb.al
  %i.mj = load ptr, ptr %i.fq, align 8
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 112
  store ptr %i.md, ptr %i.mk, align 8
  %i.ml = load ptr, ptr %i.fq, align 8
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ml, i64 176
  store i32 2, ptr %i.mm, align 8
  br label %bb.aq

bb.am:                                            ; preds = %._crit_edge377
  %i.mn = landingpad { ptr, i32 }
          cleanup
  br label %bb.cc

bb.an:                                            ; preds = %.loopexit315
  %i.mo = landingpad { ptr, i32 }
          cleanup
  br label %bb.cc

bb.ao:                                            ; preds = %.loopexit314
  %i.mp = landingpad { ptr, i32 }
          cleanup
  br label %bb.cc

bb.ap:                                            ; preds = %bb.bt, %bb.ak
  %i.mq = landingpad { ptr, i32 }
          cleanup
  br label %bb.cc

bb.aq:                                            ; preds = %.loopexit312, %.loopexit313
  %.0150 = phi ptr [ %i.md, %.loopexit312 ], [ null, %.loopexit313 ]
  %i.mr = load ptr, ptr %i.fq, align 8            ; 2 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 8
  %i.mt = load i32, ptr %i.ms, align 8
  %.not419 = icmp eq i32 %i.mt, 0
  br i1 %.not419, label %.preheader311, label %.lr.ph400

.preheader311:                                    ; preds = %bb.av, %bb.aq
  %.lcssa349 = phi ptr [ %i.mr, %bb.aq ], [ %i.qf, %bb.av ]
  %i.mu = load ptr, ptr %i.cg, align 8            ; 2 uses
  %i.mv = load ptr, ptr %i.cf, align 8            ; 2 uses
  %i.mw = ptrtoint ptr %i.mu to i64
  %i.mx = ptrtoint ptr %i.mv to i64
  %i.my = sub i64 %i.mw, %i.mx
  %i.mz = sdiv exact i64 %i.my, 144               ; 5 uses
  %.not421 = icmp eq ptr %i.mu, %i.mv
  br i1 %.not421, label %.loopexit310, label %.lr.ph403.preheader

.lr.ph403.preheader:                              ; preds = %.preheader311
  %min.iters.check = icmp ult i64 %i.mz, 11
  br i1 %min.iters.check, label %.lr.ph403.preheader627, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph403.preheader
  %i.na = add nsw i64 %i.mz, -1                   ; 2 uses
  %i.nb = and i64 %i.na, 4294967295
  %i.nc = icmp eq i64 %i.nb, 4294967295
  %i.nd = icmp ugt i64 %i.na, 4294967295
  %i.ne = or i1 %i.nc, %i.nd
  br i1 %i.ne, label %.lr.ph403.preheader627, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %n.mod.vf = and i64 %i.mz, 3                    ; 2 uses
  %i.nf = icmp eq i64 %n.mod.vf, 0
  %i.ng = select i1 %i.nf, i64 4, i64 %n.mod.vf
  %n.vec = sub nsw i64 %i.mz, %i.ng               ; 3 uses
  %1 = trunc i64 %n.vec to i32
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %vec.phi = phi <2 x i32> [ zeroinitializer, %vector.ph ], [ %i.om, %vector.body ]
  %vec.phi571 = phi <2 x i32> [ zeroinitializer, %vector.ph ], [ %i.on, %vector.body ]
  %i.nh = getelementptr inbounds nuw [24 x i8], ptr %.ptr291.ptr, i64 %index ; 2 uses
  %i.ni = getelementptr inbounds nuw [24 x i8], ptr %.ptr291.ptr, i64 %index ; 2 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ni, i64 24
  %i.nk = getelementptr inbounds nuw [24 x i8], ptr %.ptr291.ptr, i64 %index ; 2 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nk, i64 48
  %i.nm = getelementptr inbounds nuw [24 x i8], ptr %.ptr291.ptr, i64 %index ; 2 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nm, i64 72
  %i.no = load ptr, ptr %i.nh, align 8
  %i.np = load ptr, ptr %i.nj, align 8
  %i.nq = insertelement <2 x ptr> poison, ptr %i.no, i64 0
  %i.nr = insertelement <2 x ptr> %i.nq, ptr %i.np, i64 1
  %i.ns = load ptr, ptr %i.nl, align 8
  %i.nt = load ptr, ptr %i.nn, align 8
  %i.nu = insertelement <2 x ptr> poison, ptr %i.ns, i64 0
  %i.nv = insertelement <2 x ptr> %i.nu, ptr %i.nt, i64 1
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nh, i64 8
  %i.nx = getelementptr inbounds nuw i8, ptr %i.ni, i64 32
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nk, i64 56
  %i.nz = getelementptr inbounds nuw i8, ptr %i.nm, i64 80
  %i.oa = load ptr, ptr %i.nw, align 8
  %i.ob = load ptr, ptr %i.nx, align 8
  %i.oc = insertelement <2 x ptr> poison, ptr %i.oa, i64 0
  %i.od = insertelement <2 x ptr> %i.oc, ptr %i.ob, i64 1
  %i.oe = load ptr, ptr %i.ny, align 8
  %i.of = load ptr, ptr %i.nz, align 8
  %i.og = insertelement <2 x ptr> poison, ptr %i.oe, i64 0
  %i.oh = insertelement <2 x ptr> %i.og, ptr %i.of, i64 1
  %i.oi = icmp ne <2 x ptr> %i.nr, %i.od
  %i.oj = icmp ne <2 x ptr> %i.nv, %i.oh
  %i.ok = zext <2 x i1> %i.oi to <2 x i32>
  %i.ol = zext <2 x i1> %i.oj to <2 x i32>
  %i.om = add <2 x i32> %vec.phi, %i.ok           ; 2 uses
  %i.on = add <2 x i32> %vec.phi571, %i.ol        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.oo = icmp eq i64 %index.next, %n.vec
  br i1 %i.oo, label %middle.block, label %vector.body, !llvm.loop !32

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i32> %i.on, %i.om
  %i.op = tail call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %bin.rdx)
  br label %.lr.ph403.preheader627

.lr.ph403.preheader627:                           ; preds = %vector.scevcheck, %.lr.ph403.preheader, %middle.block
  %.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %.lr.ph403.preheader ], [ %n.vec, %middle.block ]
  %.0131402.ph = phi i32 [ 0, %vector.scevcheck ], [ 0, %.lr.ph403.preheader ], [ %1, %middle.block ]
  %.3401.ph = phi i32 [ 0, %vector.scevcheck ], [ 0, %.lr.ph403.preheader ], [ %i.op, %middle.block ]
  br label %.lr.ph403

.lr.ph400:                                        ; preds = %bb.aq, %bb.av
  %indvars.iv444 = phi i64 [ %indvars.iv.next445, %bb.av ], [ 0, %bb.aq ] ; 5 uses
  %.1151397 = phi ptr [ %.2152, %bb.av ], [ %.0150, %bb.aq ] ; 5 uses
  %.0153396 = phi ptr [ %i.pl, %bb.av ], [ %i.lo, %bb.aq ] ; 4 uses
  %.0154395 = phi ptr [ %i.pr, %bb.av ], [ %i.lb, %bb.aq ] ; 4 uses
  %.1394 = phi i32 [ %i.vu, %bb.av ], [ 0, %bb.aq ]
  %i.oq = invoke noalias noundef nonnull dereferenceable(12) ptr @_Znam(i64 noundef 12) #29
          to label %bb.ar unwind label %bb.at

bb.ar:                                            ; preds = %.lr.ph400
  %i.or = load ptr, ptr %i.fq, align 8
  %i.os = getelementptr inbounds nuw i8, ptr %i.or, i64 208
  %i.ot = load ptr, ptr %i.os, align 8
  %i.ou = getelementptr inbounds nuw [16 x i8], ptr %i.ot, i64 %indvars.iv444
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ou, i64 8
  store ptr %i.oq, ptr %i.ov, align 8
  %i.ow = load ptr, ptr %i.fq, align 8
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ow, i64 208
  %i.oy = load ptr, ptr %i.ox, align 8
  %i.oz = getelementptr inbounds nuw [16 x i8], ptr %i.oy, i64 %indvars.iv444
  store i32 3, ptr %i.oz, align 8
  %i.pa = load ptr, ptr %i.fr, align 8
  %i.pb = getelementptr inbounds nuw [4 x i8], ptr %i.pa, i64 %indvars.iv444
  %i.pc = load i32, ptr %i.pb, align 4
  %i.pd = zext i32 %i.pc to i64
  %i.pe = load ptr, ptr %i.ao, align 8
  %i.pf = getelementptr inbounds nuw [200 x i8], ptr %i.pe, i64 %i.pd ; 9 uses
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pf, i64 8 ; 2 uses
  %i.ph = getelementptr inbounds nuw i8, ptr %.0153396, i64 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.0153396, ptr noundef nonnull align 8 dereferenceable(12) %i.pg, i64 12, i1 false)
  %i.pi = getelementptr inbounds nuw i8, ptr %i.pf, i64 72
  %i.pj = getelementptr inbounds nuw i8, ptr %.0153396, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ph, ptr noundef nonnull align 8 dereferenceable(12) %i.pi, i64 12, i1 false)
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pf, i64 136
  %i.pl = getelementptr inbounds nuw i8, ptr %.0153396, i64 36
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.pj, ptr noundef nonnull align 8 dereferenceable(12) %i.pk, i64 12, i1 false)
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pf, i64 20
  %i.pn = getelementptr inbounds nuw i8, ptr %.0154395, i64 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.0154395, ptr noundef nonnull align 4 dereferenceable(12) %i.pm, i64 12, i1 false)
  %i.po = getelementptr inbounds nuw i8, ptr %i.pf, i64 84
  %i.pp = getelementptr inbounds nuw i8, ptr %.0154395, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.pn, ptr noundef nonnull align 4 dereferenceable(12) %i.po, i64 12, i1 false)
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pf, i64 148
  %i.pr = getelementptr inbounds nuw i8, ptr %.0154395, i64 36
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.pp, ptr noundef nonnull align 4 dereferenceable(12) %i.pq, i64 12, i1 false)
  %.not169 = icmp eq ptr %.1151397, null
  br i1 %.not169, label %bb.au, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pf, i64 32
  %i.pt = getelementptr inbounds nuw i8, ptr %.1151397, i64 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.1151397, ptr noundef nonnull align 8 dereferenceable(12) %i.ps, i64 12, i1 false)
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pf, i64 96
  %i.pv = getelementptr inbounds nuw i8, ptr %.1151397, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.pt, ptr noundef nonnull align 8 dereferenceable(12) %i.pu, i64 12, i1 false)
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pf, i64 160
  %i.px = getelementptr inbounds nuw i8, ptr %.1151397, i64 36
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.pv, ptr noundef nonnull align 8 dereferenceable(12) %i.pw, i64 12, i1 false)
  br label %bb.au

bb.at:                                            ; preds = %.lr.ph400
  %i.py = landingpad { ptr, i32 }
          cleanup
  br label %bb.cc

bb.au:                                            ; preds = %bb.as, %bb.ar
  %.2152 = phi ptr [ %i.px, %bb.as ], [ null, %bb.ar ]
  br label %.preheader

.preheader:                                       ; preds = %bb.au, %_ZNSt6vectorISt4pairIjfESaIS1_EE12emplace_backIJRjfEEERS1_DpOT_.exit
  %indvars.iv441 = phi i64 [ 0, %bb.au ], [ %indvars.iv.next442, %_ZNSt6vectorISt4pairIjfESaIS1_EE12emplace_backIJRjfEEERS1_DpOT_.exit ] ; 3 uses
  %.2392 = phi i32 [ %.1394, %bb.au ], [ %i.vu, %_ZNSt6vectorISt4pairIjfESaIS1_EE12emplace_backIJRjfEEERS1_DpOT_.exit ] ; 6 uses
  %i.pz = getelementptr inbounds nuw [64 x i8], ptr %i.pg, i64 %indvars.iv441 ; 4 uses
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pz, i64 40 ; 3 uses
  %i.qb = getelementptr inbounds nuw i8, ptr %i.pz, i64 48 ; 3 uses
  %i.qc = load ptr, ptr %i.qb, align 8
  %i.qd = load ptr, ptr %i.qa, align 8            ; 2 uses
  %.not420 = icmp eq ptr %i.qc, %i.qd
  br i1 %.not420, label %._crit_edge383.thread, label %.lr.ph382

.lr.ph382:                                        ; preds = %.preheader
  %i.qe = getelementptr inbounds nuw i8, ptr %i.pz, i64 36
  br label %bb.aw

bb.av:                                            ; preds = %_ZNSt6vectorISt4pairIjfESaIS1_EE12emplace_backIJRjfEEERS1_DpOT_.exit
  %indvars.iv.next445 = add nuw nsw i64 %indvars.iv444, 1 ; 2 uses
  %i.qf = load ptr, ptr %i.fq, align 8            ; 2 uses
  %i.qg = getelementptr inbounds nuw i8, ptr %i.qf, i64 8
  %i.qh = load i32, ptr %i.qg, align 8
  %i.qi = zext i32 %i.qh to i64
  %i.qj = icmp samesign ult i64 %indvars.iv.next445, %i.qi
  br i1 %i.qj, label %.lr.ph400, label %.preheader311, !llvm.loop !33

._crit_edge383:                                   ; preds = %bb.bf
  %i.qk = fcmp olt float %.1146, 9.750000e-01
  br i1 %i.qk, label %._crit_edge383.thread, label %_ZNSt6vectorISt4pairIjfESaIS1_EE12emplace_backIJRjfEEERS1_DpOT_.exit

bb.aw:                                            ; preds = %.lr.ph382, %bb.bf
  %i.ql = phi ptr [ %i.qd, %.lr.ph382 ], [ %i.sv, %bb.bf ]
  %i.qm = phi i64 [ 0, %.lr.ph382 ], [ %i.st, %bb.bf ]
  %.0144381 = phi i32 [ 0, %.lr.ph382 ], [ %i.ss, %bb.bf ]
  %.0145380 = phi float [ 0.000000e+00, %.lr.ph382 ], [ %.1146, %bb.bf ] ; 2 uses
  %i.qn = getelementptr inbounds nuw [8 x i8], ptr %i.ql, i64 %i.qm ; 2 uses
  %i.qo = load i32, ptr %i.qn, align 4            ; 2 uses
  %i.qp = zext i32 %i.qo to i64                   ; 2 uses
  %i.qq = load ptr, ptr %i.cg, align 8
  %i.qr = load ptr, ptr %i.cf, align 8
  %i.qs = ptrtoint ptr %i.qq to i64
  %i.qt = ptrtoint ptr %i.qr to i64
  %i.qu = sub i64 %i.qs, %i.qt
  %i.qv = sdiv exact i64 %i.qu, 144
  %.not173 = icmp ugt i64 %i.qv, %i.qp
  br i1 %.not173, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.qw = load i32, ptr %i.qe, align 4
  %i.qx = icmp eq i32 %i.qo, %i.qw
  br i1 %i.qx, label %bb.ay, label %bb.ba

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %i.qy = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.az unwind label %.loopexit

bb.az:                                            ; preds = %bb.ay
  invoke void @_ZN6Assimp6Logger5errorEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.qy, ptr noundef nonnull @.str.10)
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
  %i.qz = getelementptr inbounds nuw [24 x i8], ptr %.ptr291.ptr, i64 %i.qp ; 4 uses
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qn, i64 4 ; 3 uses
  %i.rb = getelementptr inbounds nuw i8, ptr %i.qz, i64 8 ; 4 uses
  %i.rc = load ptr, ptr %i.rb, align 8            ; 6 uses
  %i.rd = getelementptr inbounds nuw i8, ptr %i.qz, i64 16 ; 2 uses
  %i.re = load ptr, ptr %i.rd, align 8
  %.not.i198 = icmp eq ptr %i.rc, %i.re
  br i1 %.not.i198, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  store i32 %.2392, ptr %i.rc, align 4
  %i.rf = getelementptr inbounds nuw i8, ptr %i.rc, i64 4
  %i.rg = load float, ptr %i.ra, align 4
  store float %i.rg, ptr %i.rf, align 4
  %i.rh = load ptr, ptr %i.rb, align 8
  %i.ri = getelementptr inbounds nuw i8, ptr %i.rh, i64 8
  store ptr %i.ri, ptr %i.rb, align 8
  br label %_ZNSt6vectorISt4pairIjfESaIS1_EE12emplace_backIJRjRfEEERS1_DpOT_.exit

bb.bc:                                            ; preds = %bb.ba
  %i.rj = load ptr, ptr %i.qz, align 8            ; 7 uses
  %i.rk = ptrtoint ptr %i.rc to i64               ; 2 uses
  %i.rl = ptrtoint ptr %i.rj to i64               ; 3 uses
  %i.rm = sub i64 %i.rk, %i.rl                    ; 4 uses
  %i.rn = icmp eq i64 %i.rm, 9223372036854775800
  br i1 %i.rn, label %bb.bd, label %_ZNKSt6vectorISt4pairIjfESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.bd:                                            ; preds = %bb.bc
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.65) #28
          to label %.noexc202 unwind label %.loopexit.split-lp

.noexc202:                                        ; preds = %bb.bd
  unreachable

_ZNKSt6vectorISt4pairIjfESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.bc
  %i.ro = ashr exact i64 %i.rm, 3                 ; 3 uses
  %.sroa.speculated.i.i.i199 = tail call i64 @llvm.umax.i64(i64 %i.ro, i64 1)
  %i.rp = add nsw i64 %.sroa.speculated.i.i.i199, %i.ro ; 2 uses
  %i.rq = icmp ult i64 %i.rp, %i.ro
  %i.rr = tail call i64 @llvm.umin.i64(i64 %i.rp, i64 1152921504606846975)
  %i.rs = select i1 %i.rq, i64 1152921504606846975, i64 %i.rr ; 3 uses
  %.not.i.i.i200 = icmp ne i64 %i.rs, 0
  tail call void @llvm.assume(i1 %.not.i.i.i200)
  %i.rt = shl nuw nsw i64 %i.rs, 3
  %i.ru = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.rt) #29
          to label %.noexc203 unwind label %.loopexit ; 8 uses

.noexc203:                                        ; preds = %_ZNKSt6vectorISt4pairIjfESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.rv = getelementptr inbounds nuw i8, ptr %i.ru, i64 %i.rm ; 2 uses
  store i32 %.2392, ptr %i.rv, align 4
  %i.rw = getelementptr inbounds nuw i8, ptr %i.rv, i64 4
  %i.rx = load float, ptr %i.ra, align 4
  store float %i.rx, ptr %i.rw, align 4
  %.not10.i.i.i.i.i = icmp eq ptr %i.rj, %i.rc
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt4pairIjfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %.noexc203
  %i.ry = ptrtoaddr ptr %i.ru to i64
  %i.rz = sub i64 %i.rk, %i.rl
end_hunk_0
begin_hunk_1_@_ZN6Assimp11SMDImporter18CreateOutputMeshesEv:bb.a
  br i1 %i.tl, label %bb.bk, label %_ZNSt6vectorISt4pairIjfESaIS1_EE12emplace_backIJRjfEEERS1_DpOT_.exit

bb.bk:                                            ; preds = %bb.bj
  %i.tm = fdiv nnan float 1.000000e+00, %.0145.lcssa534
  %i.tn = load ptr, ptr %i.qa, align 8            ; 2 uses
  %i.to = load ptr, ptr %i.qb, align 8            ; 2 uses
  %.not293388 = icmp eq ptr %i.tn, %i.to
  br i1 %.not293388, label %_ZNSt6vectorISt4pairIjfESaIS1_EE12emplace_backIJRjfEEERS1_DpOT_.exit, label %.lr.ph391

bb.bl:                                            ; preds = %bb.bi, %bb.bh
  %i.tp = landingpad { ptr, i32 }
          cleanup
  br label %bb.cc

.lr.ph391:                                        ; preds = %bb.bk, %bb.bn
  %.sroa.0240.0389 = phi ptr [ %i.ue, %bb.bn ], [ %i.tn, %bb.bk ] ; 2 uses
  %i.tq = load i32, ptr %.sroa.0240.0389, align 4
  %i.tr = zext i32 %i.tq to i64                   ; 2 uses
  %i.ts = load ptr, ptr %i.cg, align 8
  %i.tt = load ptr, ptr %i.cf, align 8
  %i.tu = ptrtoint ptr %i.ts to i64
  %i.tv = ptrtoint ptr %i.tt to i64
  %i.tw = sub i64 %i.tu, %i.tv
  %i.tx = sdiv exact i64 %i.tw, 144
  %.not172 = icmp ugt i64 %i.tx, %i.tr
  br i1 %.not172, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %.lr.ph391
  %i.ty = getelementptr inbounds nuw [24 x i8], ptr %.ptr291.ptr, i64 %i.tr
  %i.tz = getelementptr inbounds nuw i8, ptr %i.ty, i64 8
  %i.ua = load ptr, ptr %i.tz, align 8
  %i.ub = getelementptr inbounds i8, ptr %i.ua, i64 -4 ; 2 uses
  %i.uc = load float, ptr %i.ub, align 4
  %i.ud = fmul float %i.tm, %i.uc
  store float %i.ud, ptr %i.ub, align 4
  br label %bb.bn

bb.bn:                                            ; preds = %.lr.ph391, %bb.bm
  %i.ue = getelementptr inbounds nuw i8, ptr %.sroa.0240.0389, i64 8 ; 2 uses
  %.not293 = icmp eq ptr %i.ue, %i.to
  br i1 %.not293, label %_ZNSt6vectorISt4pairIjfESaIS1_EE12emplace_backIJRjfEEERS1_DpOT_.exit, label %.lr.ph391

bb.bo:                                            ; preds = %bb.bg
  %i.uf = getelementptr inbounds nuw [24 x i8], ptr %.ptr291.ptr, i64 %i.td ; 4 uses
  %i.ug = fsub float 1.000000e+00, %.0145.lcssa534 ; 2 uses
  %i.uh = getelementptr inbounds nuw i8, ptr %i.uf, i64 8 ; 4 uses
  %i.ui = load ptr, ptr %i.uh, align 8            ; 6 uses
  %i.uj = getelementptr inbounds nuw i8, ptr %i.uf, i64 16 ; 2 uses
  %i.uk = load ptr, ptr %i.uj, align 8
  %.not.i204 = icmp eq ptr %i.ui, %i.uk
  br i1 %.not.i204, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  store i32 %.2392, ptr %i.ui, align 4
  %i.ul = getelementptr inbounds nuw i8, ptr %i.ui, i64 4
  store float %i.ug, ptr %i.ul, align 4
  %i.um = load ptr, ptr %i.uh, align 8
  %i.un = getelementptr inbounds nuw i8, ptr %i.um, i64 8
  store ptr %i.un, ptr %i.uh, align 8
  br label %_ZNSt6vectorISt4pairIjfESaIS1_EE12emplace_backIJRjfEEERS1_DpOT_.exit

bb.bq:                                            ; preds = %bb.bo
  %i.uo = load ptr, ptr %i.uf, align 8            ; 7 uses
  %i.up = ptrtoint ptr %i.ui to i64               ; 2 uses
  %i.uq = ptrtoint ptr %i.uo to i64               ; 3 uses
  %i.ur = sub i64 %i.up, %i.uq                    ; 4 uses
  %i.us = icmp eq i64 %i.ur, 9223372036854775800
  br i1 %i.us, label %bb.br, label %_ZNKSt6vectorISt4pairIjfESaIS1_EE12_M_check_lenEmPKc.exit.i.i205

bb.br:                                            ; preds = %bb.bq
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.65) #28
          to label %.noexc216 unwind label %.loopexit.split-lp306

.noexc216:                                        ; preds = %bb.br
  unreachable

_ZNKSt6vectorISt4pairIjfESaIS1_EE12_M_check_lenEmPKc.exit.i.i205: ; preds = %bb.bq
  %i.ut = ashr exact i64 %i.ur, 3                 ; 3 uses
  %.sroa.speculated.i.i.i206 = tail call i64 @llvm.umax.i64(i64 %i.ut, i64 1)
  %i.uu = add nsw i64 %.sroa.speculated.i.i.i206, %i.ut ; 2 uses
  %i.uv = icmp ult i64 %i.uu, %i.ut
  %i.uw = tail call i64 @llvm.umin.i64(i64 %i.uu, i64 1152921504606846975)
  %i.ux = select i1 %i.uv, i64 1152921504606846975, i64 %i.uw ; 3 uses
  %.not.i.i.i207 = icmp ne i64 %i.ux, 0
  tail call void @llvm.assume(i1 %.not.i.i.i207)
  %i.uy = shl nuw nsw i64 %i.ux, 3
  %i.uz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.uy) #29
          to label %.noexc217 unwind label %.loopexit305 ; 8 uses

.noexc217:                                        ; preds = %_ZNKSt6vectorISt4pairIjfESaIS1_EE12_M_check_lenEmPKc.exit.i.i205
  %i.va = getelementptr inbounds nuw i8, ptr %i.uz, i64 %i.ur ; 2 uses
  store i32 %.2392, ptr %i.va, align 4
  %i.vb = getelementptr inbounds nuw i8, ptr %i.va, i64 4
  store float %i.ug, ptr %i.vb, align 4
  %.not10.i.i.i.i.i208 = icmp eq ptr %i.uo, %i.ui
  br i1 %.not10.i.i.i.i.i208, label %_ZNSt6vectorISt4pairIjfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i213, label %.lr.ph.i.i.i.i.i209.preheader

.lr.ph.i.i.i.i.i209.preheader:                    ; preds = %.noexc217
  %i.vc = ptrtoaddr ptr %i.uz to i64
  %i.vd = sub i64 %i.up, %i.uq
  %i.ve = add i64 %i.vd, -8                       ; 2 uses
  %i.vf = lshr i64 %i.ve, 3
  %i.vg = add nuw nsw i64 %i.vf, 1                ; 2 uses
  %min.iters.check574 = icmp ult i64 %i.ve, 24
  %i.vh = sub i64 %i.uq, %i.vc
  %diff.check = icmp ugt i64 %i.vh, -32
  %or.cond623 = or i1 %min.iters.check574, %diff.check
  br i1 %or.cond623, label %.lr.ph.i.i.i.i.i209.preheader625, label %vector.ph575

vector.ph575:                                     ; preds = %.lr.ph.i.i.i.i.i209.preheader
  %n.vec577 = and i64 %i.vg, 4611686018427387900  ; 3 uses
  %i.vi = shl i64 %n.vec577, 3                    ; 2 uses
  %i.vj = getelementptr i8, ptr %i.uz, i64 %i.vi  ; 2 uses
  %i.vk = getelementptr i8, ptr %i.uo, i64 %i.vi
  br label %vector.body578

vector.body578:                                   ; preds = %vector.body578, %vector.ph575
  %index579 = phi i64 [ 0, %vector.ph575 ], [ %index.next582, %vector.body578 ] ; 2 uses
  %i.vl = shl i64 %index579, 3                    ; 2 uses
  %next.gep = getelementptr i8, ptr %i.uz, i64 %i.vl ; 2 uses
  %next.gep580 = getelementptr i8, ptr %i.uo, i64 %i.vl ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45)
  %i.vm = getelementptr i8, ptr %next.gep580, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep580, align 4, !alias.scope !45, !noalias !42
  %wide.load581 = load <2 x i64>, ptr %i.vm, align 4, !alias.scope !45, !noalias !42
  %i.vn = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 4, !alias.scope !42, !noalias !45
  store <2 x i64> %wide.load581, ptr %i.vn, align 4, !alias.scope !42, !noalias !45
  %index.next582 = add nuw i64 %index579, 4       ; 2 uses
  %i.vo = icmp eq i64 %index.next582, %n.vec577
  br i1 %i.vo, label %middle.block583, label %vector.body578, !llvm.loop !47

middle.block583:                                  ; preds = %vector.body578
  %cmp.n = icmp eq i64 %i.vg, %n.vec577
  br i1 %cmp.n, label %_ZNSt6vectorISt4pairIjfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i213, label %.lr.ph.i.i.i.i.i209.preheader625

.lr.ph.i.i.i.i.i209.preheader625:                 ; preds = %.lr.ph.i.i.i.i.i209.preheader, %middle.block583
  %.012.i.i.i.i.i210.ph = phi ptr [ %i.uz, %.lr.ph.i.i.i.i.i209.preheader ], [ %i.vj, %middle.block583 ]
  %.0911.i.i.i.i.i211.ph = phi ptr [ %i.uo, %.lr.ph.i.i.i.i.i209.preheader ], [ %i.vk, %middle.block583 ]
  br label %.lr.ph.i.i.i.i.i209

.lr.ph.i.i.i.i.i209:                              ; preds = %.lr.ph.i.i.i.i.i209.preheader625, %.lr.ph.i.i.i.i.i209
  %.012.i.i.i.i.i210 = phi ptr [ %i.vr, %.lr.ph.i.i.i.i.i209 ], [ %.012.i.i.i.i.i210.ph, %.lr.ph.i.i.i.i.i209.preheader625 ] ; 2 uses
  %.0911.i.i.i.i.i211 = phi ptr [ %i.vq, %.lr.ph.i.i.i.i.i209 ], [ %.0911.i.i.i.i.i211.ph, %.lr.ph.i.i.i.i.i209.preheader625 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45)
  %i.vp = load i64, ptr %.0911.i.i.i.i.i211, align 4, !alias.scope !45, !noalias !42
  store i64 %i.vp, ptr %.012.i.i.i.i.i210, align 4, !alias.scope !42, !noalias !45
  %i.vq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i211, i64 8 ; 2 uses
  %i.vr = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i210, i64 8 ; 2 uses
  %.not.i.i.i.i.i212 = icmp eq ptr %i.vq, %i.ui
  br i1 %.not.i.i.i.i.i212, label %_ZNSt6vectorISt4pairIjfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i213, label %.lr.ph.i.i.i.i.i209, !llvm.loop !48

_ZNSt6vectorISt4pairIjfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i213: ; preds = %.lr.ph.i.i.i.i.i209, %middle.block583, %.noexc217
  %.0.lcssa.i.i.i.i.i214 = phi ptr [ %i.uz, %.noexc217 ], [ %i.vj, %middle.block583 ], [ %i.vr, %.lr.ph.i.i.i.i.i209 ]
  %i.vs = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i214, i64 8
  %.not.i34.i.i215 = icmp eq ptr %i.uo, null
  br i1 %.not.i34.i.i215, label %_ZNSt6vectorISt4pairIjfESaIS1_EE17_M_realloc_insertIJRjfEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.bs

bb.bs:                                            ; preds = %_ZNSt6vectorISt4pairIjfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i213
  tail call void @_ZdlPvm(ptr noundef nonnull %i.uo, i64 noundef %i.ur) #30
  br label %_ZNSt6vectorISt4pairIjfESaIS1_EE17_M_realloc_insertIJRjfEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorISt4pairIjfESaIS1_EE17_M_realloc_insertIJRjfEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.bs, %_ZNSt6vectorISt4pairIjfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i213
  store ptr %i.uz, ptr %i.uf, align 8
  store ptr %i.vs, ptr %i.uh, align 8
  %i.vt = getelementptr inbounds nuw [8 x i8], ptr %i.uz, i64 %i.ux
  store ptr %i.vt, ptr %i.uj, align 8
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
  %i.vu = add i32 %.2392, 1                       ; 2 uses
  %i.vv = load ptr, ptr %i.fq, align 8
  %i.vw = getelementptr inbounds nuw i8, ptr %i.vv, i64 208
  %i.vx = load ptr, ptr %i.vw, align 8
  %i.vy = getelementptr inbounds nuw [16 x i8], ptr %i.vx, i64 %indvars.iv444
  %i.vz = getelementptr inbounds nuw i8, ptr %i.vy, i64 8
  %i.wa = load ptr, ptr %i.vz, align 8
  %i.wb = getelementptr inbounds nuw [4 x i8], ptr %i.wa, i64 %indvars.iv441
  store i32 %.2392, ptr %i.wb, align 4
  %indvars.iv.next442 = add nuw nsw i64 %indvars.iv441, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next442, 3
  br i1 %exitcond.not, label %bb.av, label %.preheader, !llvm.loop !49

._crit_edge404:                                   ; preds = %.lr.ph403
  %.not = icmp eq i32 %spec.select, 0
  br i1 %.not, label %.loopexit310, label %bb.bt

.lr.ph403:                                        ; preds = %.lr.ph403.preheader627, %.lr.ph403
  %i.wc = phi i64 [ %3, %.lr.ph403 ], [ %.ph, %.lr.ph403.preheader627 ]
  %.0131402 = phi i32 [ %2, %.lr.ph403 ], [ %.0131402.ph, %.lr.ph403.preheader627 ]
  %.3401 = phi i32 [ %spec.select, %.lr.ph403 ], [ %.3401.ph, %.lr.ph403.preheader627 ]
  %i.wd = getelementptr inbounds nuw [24 x i8], ptr %.ptr291.ptr, i64 %i.wc ; 2 uses
  %i.we = load ptr, ptr %i.wd, align 8
  %i.wf = getelementptr inbounds nuw i8, ptr %i.wd, i64 8
  %i.wg = load ptr, ptr %i.wf, align 8
  %i.wh = icmp ne ptr %i.we, %i.wg
  %i.wi = zext i1 %i.wh to i32
  %spec.select = add i32 %.3401, %i.wi            ; 3 uses
  %2 = add i32 %.0131402, 1                       ; 2 uses
  %3 = zext i32 %2 to i64                         ; 2 uses
  %i.wj = icmp ugt i64 %i.mz, %3
  br i1 %i.wj, label %.lr.ph403, label %._crit_edge404, !llvm.loop !50

bb.bt:                                            ; preds = %._crit_edge404
  %i.wk = getelementptr inbounds nuw i8, ptr %.lcssa349, i64 216
  store i32 %spec.select, ptr %i.wk, align 8
  %i.wl = load ptr, ptr %i.fq, align 8
  %i.wm = getelementptr inbounds nuw i8, ptr %i.wl, i64 216
  %i.wn = load i32, ptr %i.wm, align 8
  %i.wo = zext i32 %i.wn to i64
  %i.wp = shl nuw nsw i64 %i.wo, 3
  %i.wq = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.wp) #29
          to label %bb.bu unwind label %bb.ap

bb.bu:                                            ; preds = %bb.bt
  %i.wr = load ptr, ptr %i.fq, align 8
  %i.ws = getelementptr inbounds nuw i8, ptr %i.wr, i64 224
  store ptr %i.wq, ptr %i.ws, align 8
  %i.wt = load ptr, ptr %i.cg, align 8            ; 2 uses
  %i.wu = load ptr, ptr %i.cf, align 8            ; 2 uses
  %.not422 = icmp eq ptr %i.wt, %i.wu
  br i1 %.not422, label %.loopexit310, label %.lr.ph412

.lr.ph412:                                        ; preds = %bb.bu, %bb.ca
  %i.wv = phi ptr [ %i.zz, %bb.ca ], [ %i.wu, %bb.bu ]
  %i.ww = phi ptr [ %i.aaa, %bb.ca ], [ %i.wt, %bb.bu ]
  %i.wx = phi i64 [ %i.aac, %bb.ca ], [ 0, %bb.bu ] ; 4 uses
  %.0130410 = phi i32 [ %i.aab, %bb.ca ], [ 0, %bb.bu ]
  %.5409 = phi i32 [ %.6, %bb.ca ], [ 0, %bb.bu ] ; 3 uses
  %i.wy = getelementptr inbounds nuw [24 x i8], ptr %.ptr291.ptr, i64 %i.wx ; 5 uses
  %i.wz = load ptr, ptr %i.wy, align 8
  %i.xa = getelementptr inbounds nuw i8, ptr %i.wy, i64 8 ; 2 uses
  %i.xb = load ptr, ptr %i.xa, align 8
  %i.xc = icmp eq ptr %i.wz, %i.xb
  br i1 %i.xc, label %bb.ca, label %bb.bv

bb.bv:                                            ; preds = %.lr.ph412
  %i.xd = invoke noalias noundef nonnull dereferenceable(1120) ptr @_Znwm(i64 noundef 1120) #29
          to label %bb.bw unwind label %bb.bz     ; 10 uses

bb.bw:                                            ; preds = %bb.bv
  %i.xe = getelementptr inbounds nuw i8, ptr %i.xd, i64 1056
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1120) %i.xd, i8 0, i64 1056, i1 false)
  store float 1.000000e+00, ptr %i.xe, align 4
  %i.xf = getelementptr inbounds nuw i8, ptr %i.xd, i64 1060
  %i.xg = getelementptr inbounds nuw i8, ptr %i.xd, i64 1076
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.xf, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.xg, align 4
  %i.xh = getelementptr inbounds nuw i8, ptr %i.xd, i64 1080
  %i.xi = getelementptr inbounds nuw i8, ptr %i.xd, i64 1096
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.xh, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.xi, align 4
  %i.xj = getelementptr inbounds nuw i8, ptr %i.xd, i64 1100
  %i.xk = getelementptr inbounds nuw i8, ptr %i.xd, i64 1116
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.xj, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.xk, align 4
  %i.xl = load ptr, ptr %i.fq, align 8
  %i.xm = getelementptr inbounds nuw i8, ptr %i.xl, i64 224
  %i.xn = load ptr, ptr %i.xm, align 8
  %i.xo = zext i32 %.5409 to i64
  %i.xp = getelementptr inbounds nuw [8 x i8], ptr %i.xn, i64 %i.xo ; 8 uses
  store ptr %i.xd, ptr %i.xp, align 8
  %i.xq = load ptr, ptr %i.xa, align 8
  %i.xr = load ptr, ptr %i.wy, align 8
  %i.xs = ptrtoint ptr %i.xq to i64
  %i.xt = ptrtoint ptr %i.xr to i64
  %i.xu = sub i64 %i.xs, %i.xt
  %i.xv = lshr exact i64 %i.xu, 3
  %i.xw = trunc i64 %i.xv to i32
  %i.xx = getelementptr inbounds nuw i8, ptr %i.xd, i64 1028
  store i32 %i.xw, ptr %i.xx, align 4
  %i.xy = load ptr, ptr %i.xp, align 8
  %i.xz = getelementptr inbounds nuw i8, ptr %i.xy, i64 1028
  %i.ya = load i32, ptr %i.xz, align 4            ; 2 uses
  %i.yb = zext i32 %i.ya to i64
  %i.yc = shl nuw nsw i64 %i.yb, 3                ; 2 uses
  %i.yd = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.yc) #29
          to label %bb.bx unwind label %bb.bz     ; 2 uses

bb.bx:                                            ; preds = %bb.bw
  %i.ye = icmp eq i32 %i.ya, 0
  br i1 %i.ye, label %.loopexit304, label %.loopexit304.loopexit

.loopexit304.loopexit:                            ; preds = %bb.bx
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.yd, i8 0, i64 %i.yc, i1 false)
  br label %.loopexit304

.loopexit304:                                     ; preds = %.loopexit304.loopexit, %bb.bx
  %i.yf = load ptr, ptr %i.xp, align 8
  %i.yg = getelementptr inbounds nuw i8, ptr %i.yf, i64 1048
  store ptr %i.yd, ptr %i.yg, align 8
  %i.yh = load ptr, ptr %i.cf, align 8
  %i.yi = getelementptr inbounds nuw [144 x i8], ptr %i.yh, i64 %i.wx
  %i.yj = getelementptr inbounds nuw i8, ptr %i.yi, i64 72
  %i.yk = load ptr, ptr %i.xp, align 8
  %i.yl = getelementptr inbounds nuw i8, ptr %i.yk, i64 1056
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.yl, ptr noundef nonnull align 8 dereferenceable(64) %i.yj, i64 64, i1 false)
  %i.ym = load ptr, ptr %i.cf, align 8            ; 2 uses
  %i.yn = getelementptr inbounds nuw [144 x i8], ptr %i.ym, i64 %i.wx ; 2 uses
  %i.yo = getelementptr inbounds nuw i8, ptr %i.yn, i64 8
  %i.yp = load i64, ptr %i.yo, align 8            ; 4 uses
  %i.yq = icmp ugt i64 %i.yp, 1023
  br i1 %i.yq, label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %bb.by

bb.by:                                            ; preds = %.loopexit304
  %i.yr = load ptr, ptr %i.xp, align 8            ; 2 uses
  %i.ys = trunc nuw nsw i64 %i.yp to i32
  store i32 %i.ys, ptr %i.yr, align 4
  %i.yt = getelementptr inbounds nuw i8, ptr %i.yr, i64 4 ; 2 uses
  %i.yu = load ptr, ptr %i.yn, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.yt, ptr align 1 %i.yu, i64 %i.yp, i1 false)
  %i.yv = getelementptr inbounds nuw i8, ptr %i.yt, i64 %i.yp
  store i8 0, ptr %i.yv, align 1
  %.pre461 = load ptr, ptr %i.cf, align 8
  br label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %.loopexit304, %bb.by
  %i.yw = phi ptr [ %i.ym, %.loopexit304 ], [ %.pre461, %bb.by ]
  %i.yx = getelementptr inbounds nuw [144 x i8], ptr %i.yw, i64 %i.wx
  %i.yy = getelementptr inbounds nuw i8, ptr %i.yx, i64 136
  store i8 1, ptr %i.yy, align 8
  %i.yz = load ptr, ptr %i.xp, align 8            ; 2 uses
  %i.za = getelementptr inbounds nuw i8, ptr %i.yz, i64 1028
  %i.zb = load i32, ptr %i.za, align 4
  %.not423 = icmp eq i32 %i.zb, 0
  br i1 %.not423, label %._crit_edge408, label %.lr.ph407

._crit_edge408:                                   ; preds = %.lr.ph407, %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.zc = add i32 %.5409, 1
  %.pre462 = load ptr, ptr %i.cg, align 8
  %.pre463 = load ptr, ptr %i.cf, align 8
  br label %bb.ca

bb.bz:                                            ; preds = %bb.bw, %bb.bv
  %i.zd = landingpad { ptr, i32 }
          cleanup
  br label %bb.cc

.lr.ph407:                                        ; preds = %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %.lr.ph407
  %indvars.iv447 = phi i64 [ %indvars.iv.next448.a, %.lr.ph407 ], [ 0, %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ] ; 5 uses
  %i.ze = phi ptr [ %i.zu, %.lr.ph407 ], [ %i.yz, %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ]
  %i.zf = load ptr, ptr %i.wy, align 8
  %i.zg = getelementptr inbounds nuw [8 x i8], ptr %i.zf, i64 %indvars.iv447
  %i.zh = load i32, ptr %i.zg, align 4
  %i.zi = getelementptr inbounds nuw i8, ptr %i.ze, i64 1048
  %i.zj = load ptr, ptr %i.zi, align 8
  %i.zk = getelementptr inbounds nuw [8 x i8], ptr %i.zj, i64 %indvars.iv447
  store i32 %i.zh, ptr %i.zk, align 4
  %i.zl = load ptr, ptr %i.wy, align 8
  %i.zm = getelementptr inbounds nuw [8 x i8], ptr %i.zl, i64 %indvars.iv447
  %i.zn = getelementptr inbounds nuw i8, ptr %i.zm, i64 4
  %i.zo = load float, ptr %i.zn, align 4
  %i.zp = load ptr, ptr %i.xp, align 8
  %i.zq = getelementptr inbounds nuw i8, ptr %i.zp, i64 1048
  %i.zr = load ptr, ptr %i.zq, align 8
  %i.zs = getelementptr inbounds nuw [8 x i8], ptr %i.zr, i64 %indvars.iv447
  %i.zt = getelementptr inbounds nuw i8, ptr %i.zs, i64 4
  store float %i.zo, ptr %i.zt, align 4
  %indvars.iv.next448.a = add nuw nsw i64 %indvars.iv447, 1 ; 2 uses
  %i.zu = load ptr, ptr %i.xp, align 8            ; 2 uses
  %i.zv = getelementptr inbounds nuw i8, ptr %i.zu, i64 1028
  %i.zw = load i32, ptr %i.zv, align 4
  %i.zx = zext i32 %i.zw to i64
  %i.zy = icmp samesign ult i64 %indvars.iv.next448.a, %i.zx
  br i1 %i.zy, label %.lr.ph407, label %._crit_edge408, !llvm.loop !51

bb.ca:                                            ; preds = %.lr.ph412, %._crit_edge408
  %i.zz = phi ptr [ %i.wv, %.lr.ph412 ], [ %.pre463, %._crit_edge408 ] ; 2 uses
  %i.aaa = phi ptr [ %i.ww, %.lr.ph412 ], [ %.pre462, %._crit_edge408 ] ; 2 uses
  %.6 = phi i32 [ %.5409, %.lr.ph412 ], [ %i.zc, %._crit_edge408 ]
  %i.aab = add i32 %.0130410, 1                   ; 2 uses
  %i.aac = zext i32 %i.aab to i64                 ; 2 uses
  %i.aad = ptrtoint ptr %i.aaa to i64
  %i.aae = ptrtoint ptr %i.zz to i64
  %i.aaf = sub i64 %i.aad, %i.aae
  %i.aag = sdiv exact i64 %i.aaf, 144
  %i.aah = icmp ugt i64 %i.aag, %i.aac
  br i1 %i.aah, label %.lr.ph412, label %.loopexit310, !llvm.loop !52

.loopexit310:                                     ; preds = %bb.ca, %.preheader311, %bb.bu, %._crit_edge404
  %i.aai = load i64, ptr %i.hd, align 16          ; 2 uses
  %i.aaj = icmp eq i64 %i.aai, 0
  br i1 %i.aaj, label %_ZNSt10unique_ptrIA_St6vectorISt4pairIjfESaIS2_EESt14default_deleteIS5_EED2Ev.exit, label %.preheader.preheader.i.i220

.preheader.preheader.i.i220:                      ; preds = %.loopexit310
  %.idx.i.i219 = mul i64 %i.aai, 24
  %.add288 = add i64 %.idx.i.i219, 8              ; 2 uses
  br label %.preheader.i.i221

.preheader.i.i221:                                ; preds = %_ZNSt6vectorISt4pairIjfESaIS1_EED2Ev.exit.i.i, %.preheader.preheader.i.i220
  %.idx286 = phi i64 [ %.add287, %_ZNSt6vectorISt4pairIjfESaIS1_EED2Ev.exit.i.i ], [ %.add288, %.preheader.preheader.i.i220 ] ; 2 uses
  %.add287 = add nsw i64 %.idx286, -24            ; 3 uses
  %.ptr290 = getelementptr inbounds i8, ptr %i.hd, i64 %.add287
  %i.aak = load ptr, ptr %.ptr290, align 8        ; 3 uses
  %.not.i.i.i.i.i222 = icmp eq ptr %i.aak, null
  br i1 %.not.i.i.i.i.i222, label %_ZNSt6vectorISt4pairIjfESaIS1_EED2Ev.exit.i.i, label %bb.cb

bb.cb:                                            ; preds = %.preheader.i.i221
  %.ptr289 = getelementptr inbounds i8, ptr %i.hd, i64 %.idx286
  %i.aal = getelementptr inbounds i8, ptr %.ptr289, i64 -8
  %i.aam = load ptr, ptr %i.aal, align 8
end_hunk_1
