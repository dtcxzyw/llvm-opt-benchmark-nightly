Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/SMDLoader?download=true
inline.NumInlined: 1538
inline.NumDeleted: 693
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN6Assimp11SMDImporter18CreateOutputMeshesEv:bb.a
  %i.jm = ptrtoint ptr %i.jj to i64
  %i.jn = ptrtoint ptr %i.ji to i64
  %i.jo = sub i64 %i.jm, %i.jn
  %i.jp = sdiv exact i64 %i.jo, 144               ; 2 uses
  %i.jq = icmp ugt i64 %i.jp, %i.jl
  br i1 %i.jq, label %.lr.ph378, label %._crit_edge379, !llvm.loop !29

bb.af:                                            ; preds = %_ZNSt12_Vector_baseISt4pairIjfESaIS1_EE11_M_allocateEm.exit.i
  %i.jr = landingpad { ptr, i32 }
          cleanup
  br label %bb.cc

bb.ag:                                            ; preds = %._crit_edge379
  store i64 %i.hm, ptr %i.hp, align 16
  %i.js = getelementptr inbounds nuw i8, ptr %i.hp, i64 8 ; 4 uses
  %i.jt = icmp eq i32 %i.hl, 0
  br i1 %i.jt, label %.loopexit317, label %bb.ah

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
  br i1 %i.ka, label %.loopexit317, label %.new

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
  br i1 %i.ks, label %.loopexit317, label %.new

.loopexit317:                                     ; preds = %.prol.loopexit, %.new, %bb.ag
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

bb.ai:                                            ; preds = %.loopexit317
  %i.lb = icmp eq i32 %i.kx, 0
  br i1 %i.lb, label %.loopexit316, label %.loopexit316.loopexit

.loopexit316.loopexit:                            ; preds = %bb.ai
  %i.lc = add nsw i64 %i.kz, -12                  ; 2 uses
  %i.ld = urem i64 %i.lc, 12
  %i.le = sub nuw nsw i64 %i.lc, %i.ld
  %i.lf = add nsw i64 %i.le, 12
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.la, i8 0, i64 %i.lf, i1 false)
  br label %.loopexit316

.loopexit316:                                     ; preds = %.loopexit316.loopexit, %bb.ai
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

bb.aj:                                            ; preds = %.loopexit316
  %i.lo = icmp eq i32 %i.lk, 0
  br i1 %i.lo, label %.loopexit315, label %.loopexit315.loopexit

.loopexit315.loopexit:                            ; preds = %bb.aj
  %i.lp = add nsw i64 %i.lm, -12                  ; 2 uses
  %i.lq = urem i64 %i.lp, 12
  %i.lr = sub nuw nsw i64 %i.lp, %i.lq
  %i.ls = add nsw i64 %i.lr, 12
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ln, i8 0, i64 %i.ls, i1 false)
  br label %.loopexit315

.loopexit315:                                     ; preds = %.loopexit315.loopexit, %bb.aj
  %i.lt = load ptr, ptr %i.fq, align 8
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 16
  store ptr %i.ln, ptr %i.lu, align 8
  %i.lv = load i8, ptr %i.ch, align 8, !range !5, !noundef !6
  %i.lw = trunc nuw i8 %i.lv to i1
  br i1 %i.lw, label %bb.ak, label %bb.aq

bb.ak:                                            ; preds = %.loopexit315
  %i.lx = load ptr, ptr %i.fq, align 8
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lx, i64 4
  %i.lz = load i32, ptr %i.ly, align 4            ; 2 uses
  %i.ma = zext i32 %i.lz to i64
  %i.mb = mul nuw nsw i64 %i.ma, 12               ; 2 uses
  %i.mc = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.mb) #29
          to label %bb.al unwind label %bb.ap     ; 3 uses

bb.al:                                            ; preds = %bb.ak
  %i.md = icmp eq i32 %i.lz, 0
  br i1 %i.md, label %.loopexit314, label %.loopexit314.loopexit

.loopexit314.loopexit:                            ; preds = %bb.al
  %i.me = add nsw i64 %i.mb, -12                  ; 2 uses
  %i.mf = urem i64 %i.me, 12
  %i.mg = sub nuw nsw i64 %i.me, %i.mf
  %i.mh = add nsw i64 %i.mg, 12
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.mc, i8 0, i64 %i.mh, i1 false)
  br label %.loopexit314

.loopexit314:                                     ; preds = %.loopexit314.loopexit, %bb.al
  %i.mi = load ptr, ptr %i.fq, align 8
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mi, i64 112
  store ptr %i.mc, ptr %i.mj, align 8
  %i.mk = load ptr, ptr %i.fq, align 8
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mk, i64 176
  store i32 2, ptr %i.ml, align 8
  br label %bb.aq

bb.am:                                            ; preds = %._crit_edge379
  %i.mm = landingpad { ptr, i32 }
          cleanup
  br label %bb.cc

bb.an:                                            ; preds = %.loopexit317
  %i.mn = landingpad { ptr, i32 }
          cleanup
  br label %bb.cc

bb.ao:                                            ; preds = %.loopexit316
  %i.mo = landingpad { ptr, i32 }
          cleanup
  br label %bb.cc

bb.ap:                                            ; preds = %bb.bt, %bb.ak
  %i.mp = landingpad { ptr, i32 }
          cleanup
  br label %bb.cc

bb.aq:                                            ; preds = %.loopexit314, %.loopexit315
  %.0135 = phi ptr [ %i.mc, %.loopexit314 ], [ null, %.loopexit315 ]
  %i.mq = load ptr, ptr %i.fq, align 8            ; 2 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mq, i64 8
  %i.ms = load i32, ptr %i.mr, align 8
  %.not421 = icmp eq i32 %i.ms, 0
  br i1 %.not421, label %.preheader313, label %.lr.ph402

.preheader313:                                    ; preds = %bb.av, %bb.aq
  %.lcssa351 = phi ptr [ %i.mq, %bb.aq ], [ %i.qf, %bb.av ]
  %i.mt = load ptr, ptr %i.cg, align 8            ; 2 uses
  %i.mu = load ptr, ptr %i.cf, align 8            ; 2 uses
  %i.mv = ptrtoint ptr %i.mt to i64
  %i.mw = ptrtoint ptr %i.mu to i64
  %i.mx = sub i64 %i.mv, %i.mw
  %i.my = sdiv i64 %i.mx, 144                     ; 4 uses
  %.not423 = icmp eq ptr %i.mt, %i.mu
  br i1 %.not423, label %.loopexit312, label %.lr.ph405.preheader

.lr.ph405.preheader:                              ; preds = %.preheader313
  %1 = tail call i64 @llvm.umax.i64(i64 %i.my, i64 1) ; 2 uses
  %min.iters.check = icmp ult i64 %i.my, 9
  br i1 %min.iters.check, label %.lr.ph405.preheader632, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph405.preheader
  %i.mz = add nsw i64 %i.my, -1                   ; 2 uses
  %i.na = and i64 %i.mz, 4294967295
  %i.nb = icmp eq i64 %i.na, 4294967295
  %i.nc = icmp ugt i64 %i.mz, 4294967295
  %i.nd = or i1 %i.nb, %i.nc
  br i1 %i.nd, label %.lr.ph405.preheader632, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %i.ne = and i64 %1, 3                           ; 2 uses
  %i.nf = icmp eq i64 %i.ne, 0
  %i.ng = select i1 %i.nf, i64 4, i64 %i.ne
  %n.vec = sub nsw i64 %1, %i.ng                  ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %vec.phi = phi <2 x i32> [ zeroinitializer, %vector.ph ], [ %i.om, %vector.body ]
  %vec.phi580 = phi <2 x i32> [ zeroinitializer, %vector.ph ], [ %i.on, %vector.body ]
  %i.nh = getelementptr inbounds nuw [24 x i8], ptr %.ptr293.ptr, i64 %index ; 2 uses
  %i.ni = getelementptr inbounds nuw [24 x i8], ptr %.ptr293.ptr, i64 %index ; 2 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ni, i64 24
  %i.nk = getelementptr inbounds nuw [24 x i8], ptr %.ptr293.ptr, i64 %index ; 2 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nk, i64 48
  %i.nm = getelementptr inbounds nuw [24 x i8], ptr %.ptr293.ptr, i64 %index ; 2 uses
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
  %i.on = add <2 x i32> %vec.phi580, %i.ol        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.oo = icmp eq i64 %index.next, %n.vec
  br i1 %i.oo, label %middle.block, label %vector.body, !llvm.loop !32

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i32> %i.on, %i.om
  %i.op = tail call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %bin.rdx)
  br label %.lr.ph405.preheader632

.lr.ph405.preheader632:                           ; preds = %vector.scevcheck, %.lr.ph405.preheader, %middle.block
  %indvars.iv449.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %.lr.ph405.preheader ], [ %n.vec, %middle.block ]
  %.3403.ph = phi i32 [ 0, %vector.scevcheck ], [ 0, %.lr.ph405.preheader ], [ %i.op, %middle.block ]
  br label %.lr.ph405

.lr.ph402:                                        ; preds = %bb.aq, %bb.av
  %indvars.iv446 = phi i64 [ %indvars.iv.next447, %bb.av ], [ 0, %bb.aq ] ; 5 uses
  %.1136399 = phi ptr [ %.2, %bb.av ], [ %.0135, %bb.aq ] ; 5 uses
  %.0137398 = phi ptr [ %i.pl, %bb.av ], [ %i.ln, %bb.aq ] ; 4 uses
  %.0138397 = phi ptr [ %i.pr, %bb.av ], [ %i.la, %bb.aq ] ; 4 uses
  %.1281396 = phi i32 [ %i.vu, %bb.av ], [ 0, %bb.aq ]
  %i.oq = invoke noalias noundef nonnull dereferenceable(12) ptr @_Znam(i64 noundef 12) #29
          to label %bb.ar unwind label %bb.at

bb.ar:                                            ; preds = %.lr.ph402
  %i.or = load ptr, ptr %i.fq, align 8
  %i.os = getelementptr inbounds nuw i8, ptr %i.or, i64 208
  %i.ot = load ptr, ptr %i.os, align 8
  %i.ou = getelementptr inbounds nuw [16 x i8], ptr %i.ot, i64 %indvars.iv446
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ou, i64 8
  store ptr %i.oq, ptr %i.ov, align 8
  %i.ow = load ptr, ptr %i.fq, align 8
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ow, i64 208
  %i.oy = load ptr, ptr %i.ox, align 8
  %i.oz = getelementptr inbounds nuw [16 x i8], ptr %i.oy, i64 %indvars.iv446
  store i32 3, ptr %i.oz, align 8
  %i.pa = load ptr, ptr %i.fr, align 8
  %i.pb = getelementptr inbounds nuw [4 x i8], ptr %i.pa, i64 %indvars.iv446
  %i.pc = load i32, ptr %i.pb, align 4
  %i.pd = zext i32 %i.pc to i64
  %i.pe = load ptr, ptr %i.ao, align 8
  %i.pf = getelementptr inbounds nuw [200 x i8], ptr %i.pe, i64 %i.pd ; 9 uses
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pf, i64 8 ; 2 uses
  %i.ph = getelementptr inbounds nuw i8, ptr %.0137398, i64 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.0137398, ptr noundef nonnull align 8 dereferenceable(12) %i.pg, i64 12, i1 false)
  %i.pi = getelementptr inbounds nuw i8, ptr %i.pf, i64 72
  %i.pj = getelementptr inbounds nuw i8, ptr %.0137398, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ph, ptr noundef nonnull align 8 dereferenceable(12) %i.pi, i64 12, i1 false)
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pf, i64 136
  %i.pl = getelementptr inbounds nuw i8, ptr %.0137398, i64 36
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.pj, ptr noundef nonnull align 8 dereferenceable(12) %i.pk, i64 12, i1 false)
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pf, i64 20
  %i.pn = getelementptr inbounds nuw i8, ptr %.0138397, i64 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.0138397, ptr noundef nonnull align 4 dereferenceable(12) %i.pm, i64 12, i1 false)
  %i.po = getelementptr inbounds nuw i8, ptr %i.pf, i64 84
  %i.pp = getelementptr inbounds nuw i8, ptr %.0138397, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.pn, ptr noundef nonnull align 4 dereferenceable(12) %i.po, i64 12, i1 false)
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pf, i64 148
  %i.pr = getelementptr inbounds nuw i8, ptr %.0138397, i64 36
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.pp, ptr noundef nonnull align 4 dereferenceable(12) %i.pq, i64 12, i1 false)
  %.not169 = icmp eq ptr %.1136399, null
  br i1 %.not169, label %bb.au, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pf, i64 32
  %i.pt = getelementptr inbounds nuw i8, ptr %.1136399, i64 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.1136399, ptr noundef nonnull align 8 dereferenceable(12) %i.ps, i64 12, i1 false)
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pf, i64 96
  %i.pv = getelementptr inbounds nuw i8, ptr %.1136399, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.pt, ptr noundef nonnull align 8 dereferenceable(12) %i.pu, i64 12, i1 false)
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pf, i64 160
  %i.px = getelementptr inbounds nuw i8, ptr %.1136399, i64 36
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.pv, ptr noundef nonnull align 8 dereferenceable(12) %i.pw, i64 12, i1 false)
  br label %bb.au

bb.at:                                            ; preds = %.lr.ph402
  %i.py = landingpad { ptr, i32 }
          cleanup
  br label %bb.cc

bb.au:                                            ; preds = %bb.as, %bb.ar
  %.2 = phi ptr [ %i.px, %bb.as ], [ null, %bb.ar ]
  br label %.preheader

.preheader:                                       ; preds = %bb.au, %_ZNSt6vectorISt4pairIjfESaIS1_EE12emplace_backIJRjfEEERS1_DpOT_.exit
  %indvars.iv443 = phi i64 [ 0, %bb.au ], [ %indvars.iv.next444, %_ZNSt6vectorISt4pairIjfESaIS1_EE12emplace_backIJRjfEEERS1_DpOT_.exit ] ; 3 uses
  %.2282394 = phi i32 [ %.1281396, %bb.au ], [ %i.vu, %_ZNSt6vectorISt4pairIjfESaIS1_EE12emplace_backIJRjfEEERS1_DpOT_.exit ] ; 6 uses
  %i.pz = getelementptr inbounds nuw [64 x i8], ptr %i.pg, i64 %indvars.iv443 ; 4 uses
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pz, i64 40 ; 3 uses
  %i.qb = getelementptr inbounds nuw i8, ptr %i.pz, i64 48 ; 3 uses
  %i.qc = load ptr, ptr %i.qb, align 8
  %i.qd = load ptr, ptr %i.qa, align 8            ; 2 uses
  %.not422 = icmp eq ptr %i.qc, %i.qd
  br i1 %.not422, label %._crit_edge385.thread, label %.lr.ph384

.lr.ph384:                                        ; preds = %.preheader
  %i.qe = getelementptr inbounds nuw i8, ptr %i.pz, i64 36
  br label %bb.aw

bb.av:                                            ; preds = %_ZNSt6vectorISt4pairIjfESaIS1_EE12emplace_backIJRjfEEERS1_DpOT_.exit
  %indvars.iv.next447 = add nuw nsw i64 %indvars.iv446, 1 ; 2 uses
  %i.qf = load ptr, ptr %i.fq, align 8            ; 2 uses
  %i.qg = getelementptr inbounds nuw i8, ptr %i.qf, i64 8
  %i.qh = load i32, ptr %i.qg, align 8
  %i.qi = zext i32 %i.qh to i64
  %i.qj = icmp samesign ult i64 %indvars.iv.next447, %i.qi
  br i1 %i.qj, label %.lr.ph402, label %.preheader313, !llvm.loop !33

._crit_edge385:                                   ; preds = %bb.bf
  %i.qk = fcmp olt float %.1, 9.750000e-01
  br i1 %i.qk, label %._crit_edge385.thread, label %_ZNSt6vectorISt4pairIjfESaIS1_EE12emplace_backIJRjfEEERS1_DpOT_.exit

bb.aw:                                            ; preds = %.lr.ph384, %bb.bf
  %i.ql = phi ptr [ %i.qd, %.lr.ph384 ], [ %i.sv, %bb.bf ]
  %i.qm = phi i64 [ 0, %.lr.ph384 ], [ %i.st, %bb.bf ]
  %.0131383 = phi i32 [ 0, %.lr.ph384 ], [ %i.ss, %bb.bf ]
  %.0132382 = phi float [ 0.000000e+00, %.lr.ph384 ], [ %.1, %bb.bf ] ; 2 uses
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
  %i.qz = getelementptr inbounds nuw [24 x i8], ptr %.ptr293.ptr, i64 %i.qp ; 4 uses
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qn, i64 4 ; 3 uses
  %i.rb = getelementptr inbounds nuw i8, ptr %i.qz, i64 8 ; 4 uses
  %i.rc = load ptr, ptr %i.rb, align 8            ; 6 uses
  %i.rd = getelementptr inbounds nuw i8, ptr %i.qz, i64 16 ; 2 uses
  %i.re = load ptr, ptr %i.rd, align 8
  %.not.i198 = icmp eq ptr %i.rc, %i.re
  br i1 %.not.i198, label %bb.bc, label %bb.bb

end_hunk_0
