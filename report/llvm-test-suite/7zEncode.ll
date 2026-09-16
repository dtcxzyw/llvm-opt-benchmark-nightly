Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/7zEncode?download=true
inline.NumInlined: 400
inline.NumDeleted: 195
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN8NArchive3N7z8CEncoder13EncoderConstrEv:bb.a
  %i.ka = getelementptr inbounds nuw i8, ptr %0, i64 180 ; 4 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 3 uses
  br label %.lr.ph.i110

.lr.ph.i110:                                      ; preds = %_ZNK11NCoderMixer9CBindInfo22FindBinderForOutStreamEj.exit126, %.lr.ph.i110.lr.ph
  %.081.in179 = phi ptr [ %i.jx, %.lr.ph.i110.lr.ph ], [ %i.mx, %_ZNK11NCoderMixer9CBindInfo22FindBinderForOutStreamEj.exit126 ]
  %.081 = load i32, ptr %.081.in179, align 4, !tbaa !10
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ad, %.lr.ph.i110
  %.0 = phi i32 [ 0, %.lr.ph.i110 ], [ %i.kh, %bb.ad ] ; 9 uses
  %.01117.i = phi i32 [ %.081, %.lr.ph.i110 ], [ %i.kg, %bb.ad ] ; 2 uses
  %i.kc = sext i32 %.0 to i64
  %i.kd = getelementptr inbounds [8 x i8], ptr %i.jz, i64 %i.kc
  %i.ke = load i32, ptr %i.kd, align 4, !tbaa !68 ; 2 uses
  %i.kf = icmp ult i32 %.01117.i, %i.ke
  br i1 %i.kf, label %_ZNK11NCoderMixer9CBindInfo12FindInStreamEjRjS1_.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.kg = sub nuw i32 %.01117.i, %i.ke
  %i.kh = add nuw i32 %.0, 1                      ; 2 uses
  %exitcond212.not = icmp eq i32 %i.kh, %i.jv
  br i1 %exitcond212.not, label %._crit_edge.i, label %bb.ac, !llvm.loop !0

._crit_edge.i:                                    ; preds = %bb.ad, %bb.ab
  %i.ki = tail call ptr @__cxa_allocate_exception(i64 4) #16 ; 2 uses
  store i32 1, ptr %i.ki, align 16, !tbaa !10
  tail call void @__cxa_throw(ptr nonnull %i.ki, ptr nonnull @_ZTIi, ptr null) #19
  unreachable

_ZNK11NCoderMixer9CBindInfo12FindInStreamEjRjS1_.exit: ; preds = %bb.ac
  %.not.i111 = icmp eq i32 %.0, 0
  br i1 %.not.i111, label %_ZNK11NCoderMixer9CBindInfo22GetCoderOutStreamIndexEj.exit118, label %.lr.ph.i112.preheader

.lr.ph.i112.preheader:                            ; preds = %_ZNK11NCoderMixer9CBindInfo12FindInStreamEjRjS1_.exit
  %i.kj = add i32 %.0, 2147483647
  %or.cond321 = icmp ult i32 %i.kj, -2147483640
  br i1 %or.cond321, label %.lr.ph.i112.preheader328, label %vector.ph300

vector.ph300:                                     ; preds = %.lr.ph.i112.preheader
  %i.kk = and i32 %.0, 7                          ; 2 uses
  %i.kl = icmp eq i32 %i.kk, 0
  %i.km = select i1 %i.kl, i32 8, i32 %i.kk
  %n.vec301 = sub i32 %.0, %i.km                  ; 2 uses
  br label %vector.body302

vector.body302:                                   ; preds = %vector.body302, %vector.ph300
  %index303 = phi i32 [ 0, %vector.ph300 ], [ %index.next310, %vector.body302 ] ; 3 uses
  %vec.phi304 = phi <4 x i32> [ zeroinitializer, %vector.ph300 ], [ %i.kt, %vector.body302 ]
  %vec.phi305 = phi <4 x i32> [ zeroinitializer, %vector.ph300 ], [ %i.ku, %vector.body302 ]
  %i.kn = sext i32 %index303 to i64
  %i.ko = getelementptr inbounds [8 x i8], ptr %i.jz, i64 %i.kn
  %i.kp = sext i32 %index303 to i64
  %i.kq = getelementptr [8 x i8], ptr %i.jz, i64 %i.kp
  %i.kr = getelementptr inbounds nuw i8, ptr %i.ko, i64 4
  %i.ks = getelementptr i8, ptr %i.kq, i64 36
  %wide.vec306 = load <8 x i32>, ptr %i.kr, align 4, !tbaa !201
  %strided.vec307 = shufflevector <8 x i32> %wide.vec306, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec308 = load <8 x i32>, ptr %i.ks, align 4, !tbaa !201
  %strided.vec309 = shufflevector <8 x i32> %wide.vec308, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.kt = add <4 x i32> %strided.vec307, %vec.phi304 ; 2 uses
  %i.ku = add <4 x i32> %strided.vec309, %vec.phi305 ; 2 uses
  %index.next310 = add nuw i32 %index303, 8       ; 2 uses
  %i.kv = icmp eq i32 %index.next310, %n.vec301
  br i1 %i.kv, label %middle.block311, label %vector.body302, !llvm.loop !186

middle.block311:                                  ; preds = %vector.body302
  %bin.rdx312 = add <4 x i32> %i.ku, %i.kt
  %i.kw = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx312)
  br label %.lr.ph.i112.preheader328

.lr.ph.i112.preheader328:                         ; preds = %.lr.ph.i112.preheader, %middle.block311
  %.08.i113.ph = phi i32 [ 0, %.lr.ph.i112.preheader ], [ %n.vec301, %middle.block311 ] ; 4 uses
  %.067.i114.ph = phi i32 [ 0, %.lr.ph.i112.preheader ], [ %i.kw, %middle.block311 ] ; 2 uses
  %i.kx = sub i32 %.0, %.08.i113.ph
  %xtraiter348 = and i32 %i.kx, 3                 ; 2 uses
  %lcmp.mod349.not = icmp eq i32 %xtraiter348, 0
  br i1 %lcmp.mod349.not, label %.lr.ph.i112.prol.loopexit, label %.lr.ph.i112.prol

.lr.ph.i112.prol:                                 ; preds = %.lr.ph.i112.preheader328, %.lr.ph.i112.prol
  %.08.i113.prol = phi i32 [ %i.ld, %.lr.ph.i112.prol ], [ %.08.i113.ph, %.lr.ph.i112.preheader328 ] ; 2 uses
  %.067.i114.prol = phi i32 [ %i.lc, %.lr.ph.i112.prol ], [ %.067.i114.ph, %.lr.ph.i112.preheader328 ]
  %prol.iter350 = phi i32 [ %prol.iter350.next, %.lr.ph.i112.prol ], [ 0, %.lr.ph.i112.preheader328 ]
  %i.ky = sext i32 %.08.i113.prol to i64
  %i.kz = getelementptr inbounds [8 x i8], ptr %i.jz, i64 %i.ky
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 4
  %i.lb = load i32, ptr %i.la, align 4, !tbaa !201
  %i.lc = add i32 %i.lb, %.067.i114.prol          ; 3 uses
  %i.ld = add nuw i32 %.08.i113.prol, 1           ; 2 uses
  %prol.iter350.next = add i32 %prol.iter350, 1   ; 2 uses
  %prol.iter350.cmp.not = icmp eq i32 %prol.iter350.next, %xtraiter348
  br i1 %prol.iter350.cmp.not, label %.lr.ph.i112.prol.loopexit, label %.lr.ph.i112.prol, !llvm.loop !187

.lr.ph.i112.prol.loopexit:                        ; preds = %.lr.ph.i112.prol, %.lr.ph.i112.preheader328
  %.lcssa333.unr = phi i32 [ poison, %.lr.ph.i112.preheader328 ], [ %i.lc, %.lr.ph.i112.prol ]
  %.08.i113.unr = phi i32 [ %.08.i113.ph, %.lr.ph.i112.preheader328 ], [ %i.ld, %.lr.ph.i112.prol ]
  %.067.i114.unr = phi i32 [ %.067.i114.ph, %.lr.ph.i112.preheader328 ], [ %i.lc, %.lr.ph.i112.prol ]
  %i.le = sub i32 %.08.i113.ph, %.0
  %i.lf = icmp ugt i32 %i.le, -4
  br i1 %i.lf, label %_ZNK11NCoderMixer9CBindInfo22GetCoderOutStreamIndexEj.exit118, label %.lr.ph.i112

.lr.ph.i112:                                      ; preds = %.lr.ph.i112.prol.loopexit, %.lr.ph.i112
  %.08.i113 = phi i32 [ %i.md, %.lr.ph.i112 ], [ %.08.i113.unr, %.lr.ph.i112.prol.loopexit ] ; 5 uses
  %.067.i114 = phi i32 [ %i.mc, %.lr.ph.i112 ], [ %.067.i114.unr, %.lr.ph.i112.prol.loopexit ]
  %i.lg = sext i32 %.08.i113 to i64
  %i.lh = getelementptr inbounds [8 x i8], ptr %i.jz, i64 %i.lg
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 4
  %i.lj = load i32, ptr %i.li, align 4, !tbaa !201
  %i.lk = add i32 %i.lj, %.067.i114
  %i.ll = add nuw i32 %.08.i113, 1
  %i.lm = sext i32 %i.ll to i64
  %i.ln = getelementptr inbounds [8 x i8], ptr %i.jz, i64 %i.lm
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 4
  %i.lp = load i32, ptr %i.lo, align 4, !tbaa !201
  %i.lq = add i32 %i.lp, %i.lk
  %i.lr = add nuw i32 %.08.i113, 2
  %i.ls = sext i32 %i.lr to i64
  %i.lt = getelementptr inbounds [8 x i8], ptr %i.jz, i64 %i.ls
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 4
  %i.lv = load i32, ptr %i.lu, align 4, !tbaa !201
  %i.lw = add i32 %i.lv, %i.lq
  %i.lx = add nuw i32 %.08.i113, 3
  %i.ly = sext i32 %i.lx to i64
  %i.lz = getelementptr inbounds [8 x i8], ptr %i.jz, i64 %i.ly
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 4
  %i.mb = load i32, ptr %i.ma, align 4, !tbaa !201
  %i.mc = add i32 %i.mb, %i.lw                    ; 2 uses
  %i.md = add nuw i32 %.08.i113, 4                ; 2 uses
  %exitcond.not.i115.3 = icmp eq i32 %i.md, %.0
  br i1 %exitcond.not.i115.3, label %_ZNK11NCoderMixer9CBindInfo22GetCoderOutStreamIndexEj.exit118, label %.lr.ph.i112, !llvm.loop !188

_ZNK11NCoderMixer9CBindInfo22GetCoderOutStreamIndexEj.exit118: ; preds = %.lr.ph.i112.prol.loopexit, %.lr.ph.i112, %_ZNK11NCoderMixer9CBindInfo12FindInStreamEjRjS1_.exit
  %.06.lcssa.i117 = phi i32 [ 0, %_ZNK11NCoderMixer9CBindInfo12FindInStreamEjRjS1_.exit ], [ %.lcssa333.unr, %.lr.ph.i112.prol.loopexit ], [ %i.mc, %.lr.ph.i112 ] ; 3 uses
  %i.me = load i32, ptr %i.ka, align 4, !tbaa !39 ; 2 uses
  %i.mf = icmp sgt i32 %i.me, 0
  br i1 %i.mf, label %.lr.ph.i120, label %.preheader

.lr.ph.i120:                                      ; preds = %_ZNK11NCoderMixer9CBindInfo22GetCoderOutStreamIndexEj.exit118
  %i.mg = load ptr, ptr %i.kb, align 8, !tbaa !41
  %wide.trip.count.i121 = zext nneg i32 %i.me to i64
  br label %bb.ae

bb.ae:                                            ; preds = %bb.af, %.lr.ph.i120
  %indvars.iv.i122 = phi i64 [ 0, %.lr.ph.i120 ], [ %indvars.iv.next.i123, %bb.af ] ; 3 uses
  %i.mh = getelementptr inbounds nuw [8 x i8], ptr %i.mg, i64 %indvars.iv.i122
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mh, i64 4
  %i.mj = load i32, ptr %i.mi, align 4, !tbaa !203
  %i.mk = icmp eq i32 %i.mj, %.06.lcssa.i117
  br i1 %i.mk, label %_ZNK11NCoderMixer9CBindInfo22FindBinderForOutStreamEj.exit126, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %indvars.iv.next.i123 = add nuw nsw i64 %indvars.iv.i122, 1 ; 2 uses
  %exitcond.not.i124 = icmp eq i64 %indvars.iv.next.i123, %wide.trip.count.i121
  br i1 %exitcond.not.i124, label %.preheader, label %bb.ae, !llvm.loop !183

.preheader:                                       ; preds = %_ZNK11NCoderMixer9CBindInfo22GetCoderOutStreamIndexEj.exit118, %bb.af
  %i.ml = getelementptr inbounds nuw i8, ptr %0, i64 244 ; 5 uses
  %i.mm = load i32, ptr %i.ml, align 4, !tbaa !39 ; 2 uses
  %i.mn = icmp sgt i32 %i.mm, 0
  br i1 %i.mn, label %.lr.ph181, label %.loopexit140

.lr.ph181:                                        ; preds = %.preheader
  %i.mo = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.mp = load ptr, ptr %i.mo, align 8, !tbaa !41
  %wide.trip.count = zext nneg i32 %i.mm to i64
  br label %bb.ag

bb.ag:                                            ; preds = %.lr.ph181, %bb.ai
  %indvars.iv213 = phi i64 [ 0, %.lr.ph181 ], [ %indvars.iv.next214, %bb.ai ] ; 3 uses
  %i.mq = getelementptr inbounds nuw [4 x i8], ptr %i.mp, i64 %indvars.iv213
  %i.mr = load i32, ptr %i.mq, align 4, !tbaa !10
  %i.ms = icmp eq i32 %i.mr, %.06.lcssa.i117
  br i1 %i.ms, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.mt = trunc nuw nsw i64 %indvars.iv213 to i32
  %i.mu = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  tail call void @_ZN17CBaseRecordVector6DeleteEii(ptr noundef nonnull align 8 dereferenceable(32) %i.mu, i32 noundef %i.mt, i32 noundef 1)
  tail call void @_ZN17CBaseRecordVector13InsertOneItemEi(ptr noundef nonnull align 8 dereferenceable(32) %i.mu, i32 noundef 0)
  %i.mv = load ptr, ptr %i.mo, align 8, !tbaa !41
  store i32 %.06.lcssa.i117, ptr %i.mv, align 4, !tbaa !10
  br label %.loopexit140

bb.ai:                                            ; preds = %bb.ag
  %indvars.iv.next214 = add nuw nsw i64 %indvars.iv213, 1 ; 2 uses
  %exitcond216.not = icmp eq i64 %indvars.iv.next214, %wide.trip.count
  br i1 %exitcond216.not, label %.loopexit140, label %bb.ag, !llvm.loop !189

_ZNK11NCoderMixer9CBindInfo22FindBinderForOutStreamEj.exit126: ; preds = %bb.ae
  %i.mw = load ptr, ptr %i.kb, align 8, !tbaa !41
  %i.mx = getelementptr inbounds nuw [8 x i8], ptr %i.mw, i64 %indvars.iv.i122
  br label %.lr.ph.i110

.loopexit140:                                     ; preds = %bb.ai, %.preheader, %bb.ah
  %i.my = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.mz = load i8, ptr %i.my, align 4, !tbaa !193, !range !83, !noundef !84
  %i.na = trunc nuw i8 %i.mz to i1
  br i1 %i.na, label %bb.aj, label %.loopexit

bb.aj:                                            ; preds = %.loopexit140
  %i.nb = load i32, ptr %i.ml, align 4, !tbaa !39 ; 3 uses
  %i.nc = icmp sgt i32 %i.nb, 0
  br i1 %i.nc, label %.lr.ph184, label %._crit_edge185

.lr.ph184:                                        ; preds = %bb.aj
  %i.nd = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.ne = getelementptr inbounds nuw i8, ptr %0, i64 168
  %wide.trip.count220 = zext nneg i32 %i.nb to i64
  br label %bb.ak

bb.ak:                                            ; preds = %.lr.ph184, %bb.ak
  %indvars.iv217 = phi i64 [ 0, %.lr.ph184 ], [ %indvars.iv.next218, %bb.ak ] ; 3 uses
  %i.nf = trunc nuw nsw i64 %indvars.iv217 to i32
  %i.ng = add i32 %.082.lcssa, %i.nf
  %i.nh = load ptr, ptr %i.nd, align 8, !tbaa !41
  %i.ni = getelementptr inbounds nuw [4 x i8], ptr %i.nh, i64 %indvars.iv217
  %i.nj = load i32, ptr %i.ni, align 4, !tbaa !10
  %.sroa.4.0.insert.ext = zext i32 %i.nj to i64
  %.sroa.4.0.insert.shift = shl nuw i64 %.sroa.4.0.insert.ext, 32
  %.sroa.05.0.insert.ext = zext i32 %i.ng to i64
  %.sroa.05.0.insert.insert = or disjoint i64 %.sroa.4.0.insert.shift, %.sroa.05.0.insert.ext
  tail call void @_ZN17CBaseRecordVector18ReserveOnePositionEv(ptr noundef nonnull align 8 dereferenceable(32) %i.ne)
  %i.nk = load ptr, ptr %i.kb, align 8, !tbaa !41
  %i.nl = load i32, ptr %i.ka, align 4, !tbaa !39
  %i.nm = sext i32 %i.nl to i64
  %i.nn = getelementptr inbounds [8 x i8], ptr %i.nk, i64 %i.nm
  store i64 %.sroa.05.0.insert.insert, ptr %i.nn, align 4
  %i.no = load i32, ptr %i.ka, align 4, !tbaa !39
  %i.np = add nsw i32 %i.no, 1
  store i32 %i.np, ptr %i.ka, align 4, !tbaa !39
  %indvars.iv.next218 = add nuw nsw i64 %indvars.iv217, 1 ; 2 uses
  %exitcond221.not = icmp eq i64 %indvars.iv.next218, %wide.trip.count220
  br i1 %exitcond221.not, label %.lr.ph188, label %bb.ak, !llvm.loop !190

._crit_edge185:                                   ; preds = %bb.aj
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 232
  tail call void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %3)
  br label %.loopexit

.lr.ph188:                                        ; preds = %bb.ak
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  tail call void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %4)
  %i.nq = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ns = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.nt = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.nv = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.nw = getelementptr inbounds nuw i8, ptr %0, i64 248
  br label %bb.al

bb.al:                                            ; preds = %.lr.ph188, %_ZN7CMethodD2Ev.exit137
  %.6186 = phi i32 [ 0, %.lr.ph188 ], [ %i.pa, %_ZN7CMethodD2Ev.exit137 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.nr, i8 0, i64 16, i1 false)
  store i64 8, ptr %i.ns, align 8, !tbaa !18
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorI5CPropE, i64 16), ptr %i.nq, align 8, !tbaa !14
  store i32 1, ptr %i.nt, align 8, !tbaa !195
  store i32 1, ptr %i.nu, align 4, !tbaa !196
  store i64 116459265, ptr %2, align 8, !tbaa !50
  %i.nx = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #15
          to label %.noexc128 unwind label %bb.ar ; 7 uses

.noexc128:                                        ; preds = %bb.al
  %i.ny = load i64, ptr %2, align 8, !tbaa !50
  store i64 %i.ny, ptr %i.nx, align 8, !tbaa !50
  %i.nz = getelementptr inbounds nuw i8, ptr %i.nx, i64 8 ; 3 uses
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nx, i64 16
  %i.ob = getelementptr inbounds nuw i8, ptr %i.nx, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.oa, i8 0, i64 16, i1 false)
  store i64 8, ptr %i.ob, align 8, !tbaa !18
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorI5CPropE, i64 16), ptr %i.nz, align 8, !tbaa !14
  %i.oc = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN13CObjectVectorI5CPropEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(32) %i.nz, ptr noundef nonnull align 8 dereferenceable(32) %i.nq)
          to label %bb.am unwind label %.body.i127 ; 0 uses

.body.i127:                                       ; preds = %.noexc128
  %i.od = landingpad { ptr, i32 }
          cleanup
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.nz) #16
  call void @_ZdlPvm(ptr noundef nonnull %i.nx, i64 noundef 48) #17
  br label %.body129

bb.am:                                            ; preds = %.noexc128
  %i.oe = getelementptr inbounds nuw i8, ptr %i.nx, i64 40
  %i.of = load i64, ptr %i.nt, align 8
  store i64 %i.of, ptr %i.oe, align 8
  invoke void @_ZN17CBaseRecordVector18ReserveOnePositionEv(ptr noundef nonnull align 8 dereferenceable(32) %i.d)
          to label %bb.an unwind label %bb.ar

bb.an:                                            ; preds = %bb.am
  %i.og = load ptr, ptr %i.nv, align 8, !tbaa !41
  %i.oh = load i32, ptr %i.e, align 4, !tbaa !39  ; 2 uses
  %i.oi = sext i32 %i.oh to i64
  %i.oj = getelementptr inbounds [8 x i8], ptr %i.og, i64 %i.oi
  store ptr %i.nx, ptr %i.oj, align 8, !tbaa !42
  %i.ok = add nsw i32 %i.oh, 1
  store i32 %i.ok, ptr %i.e, align 4, !tbaa !39
  invoke void @_ZN17CBaseRecordVector18ReserveOnePositionEv(ptr noundef nonnull align 8 dereferenceable(32) %i.jp)
          to label %bb.ao unwind label %bb.ar

bb.ao:                                            ; preds = %bb.an
  %i.ol = load ptr, ptr %i.jy, align 8, !tbaa !41
  %i.om = load i32, ptr %i.ju, align 4, !tbaa !39
  %i.on = sext i32 %i.om to i64
  %i.oo = getelementptr inbounds [8 x i8], ptr %i.ol, i64 %i.on
  store i64 4294967297, ptr %i.oo, align 4
  %i.op = load i32, ptr %i.ju, align 4, !tbaa !39
  %i.oq = add nsw i32 %i.op, 1
  store i32 %i.oq, ptr %i.ju, align 4, !tbaa !39
  invoke void @_ZN17CBaseRecordVector18ReserveOnePositionEv(ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.ap unwind label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  %i.or = add i32 %.6186, %.083.lcssa
  %i.os = load ptr, ptr %i.nw, align 8, !tbaa !41
  %i.ot = load i32, ptr %i.ml, align 4, !tbaa !39
  %i.ou = sext i32 %i.ot to i64
  %i.ov = getelementptr inbounds [4 x i8], ptr %i.os, i64 %i.ou
  store i32 %i.or, ptr %i.ov, align 4, !tbaa !10
  %i.ow = load i32, ptr %i.ml, align 4, !tbaa !39
  %i.ox = add nsw i32 %i.ow, 1
  store i32 %i.ox, ptr %i.ml, align 4, !tbaa !39
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorI5CPropE, i64 16), ptr %i.nq, align 8, !tbaa !14
  invoke void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %i.nq)
          to label %_ZN7CMethodD2Ev.exit137 unwind label %bb.aq, !inline_history !85

bb.aq:                                            ; preds = %bb.ap
  %i.oy = landingpad { ptr, i32 }
          catch ptr null
  %i.oz = extractvalue { ptr, i32 } %i.oy, 0
  call void @__clang_call_terminate(ptr %i.oz) #18, !inline_history !85
  unreachable

_ZN7CMethodD2Ev.exit137:                          ; preds = %bb.ap
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.nq) #16, !inline_history !85
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  %i.pa = add nuw nsw i32 %.6186, 1               ; 2 uses
  %exitcond222.not = icmp eq i32 %i.pa, %i.nb
  br i1 %exitcond222.not, label %.loopexit, label %bb.al, !llvm.loop !191

bb.ar:                                            ; preds = %bb.ao, %bb.an, %bb.am, %bb.al
  %i.pb = landingpad { ptr, i32 }
          cleanup
  br label %.body129

.body129:                                         ; preds = %.body.i127, %bb.ar
  %eh.lpad-body130 = phi { ptr, i32 } [ %i.pb, %bb.ar ], [ %i.od, %.body.i127 ]
  call void @_ZN7CMethodD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %2) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  br label %bb.aw

.loopexit:                                        ; preds = %_ZN7CMethodD2Ev.exit137, %._crit_edge185, %.loopexit140, %_ZN7CMethodD2Ev.exit
  %i.pc = load i32, ptr %i.e, align 4, !tbaa !39  ; 2 uses
  %i.pd = icmp sgt i32 %i.pc, 0
  br i1 %i.pd, label %.lr.ph191, label %._crit_edge192

.lr.ph191:                                        ; preds = %.loopexit
  %i.pe = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.pf = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.pg = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.ph = getelementptr inbounds nuw i8, ptr %0, i64 412 ; 2 uses
  %i.pi = zext nneg i32 %i.pc to i64
  br label %bb.as

._crit_edge192:                                   ; preds = %bb.as, %.loopexit
  %i.pj = call noalias noundef nonnull dereferenceable(272) ptr @_Znwm(i64 noundef 272) #15 ; 4 uses
  %i.pk = getelementptr inbounds nuw i8, ptr %0, i64 136
  invoke void @_ZN11NCoderMixer21CBindReverseConverterC1ERKNS_9CBindInfoE(ptr noundef nonnull align 8 dereferenceable(272) %i.pj, ptr noundef nonnull align 8 dereferenceable(128) %i.pk)
          to label %bb.at unwind label %bb.au

bb.as:                                            ; preds = %.lr.ph191, %bb.as
  %indvars.iv223 = phi i64 [ %i.pi, %.lr.ph191 ], [ %indvars.iv.next224, %bb.as ] ; 2 uses
  %indvars.iv.next224 = add nsw i64 %indvars.iv223, -1 ; 2 uses
  %i.pl = load ptr, ptr %i.pe, align 8, !tbaa !41
  %i.pm = getelementptr inbounds nuw [8 x i8], ptr %i.pl, i64 %indvars.iv.next224
  %i.pn = load ptr, ptr %i.pm, align 8, !tbaa !42
  %i.po = load i64, ptr %i.pn, align 8, !tbaa !50
  call void @_ZN17CBaseRecordVector18ReserveOnePositionEv(ptr noundef nonnull align 8 dereferenceable(32) %i.pf)
  %i.pp = load ptr, ptr %i.pg, align 8, !tbaa !41
  %i.pq = load i32, ptr %i.ph, align 4, !tbaa !39 ; 2 uses
  %i.pr = sext i32 %i.pq to i64
  %i.ps = getelementptr inbounds [8 x i8], ptr %i.pp, i64 %i.pr
  store i64 %i.po, ptr %i.ps, align 8, !tbaa !72
  %i.pt = add nsw i32 %i.pq, 1
  store i32 %i.pt, ptr %i.ph, align 4, !tbaa !39
  %i.pu = icmp samesign ugt i64 %indvars.iv223, 1
  br i1 %i.pu, label %bb.as, label %._crit_edge192, !llvm.loop !192

bb.at:                                            ; preds = %._crit_edge192
  %i.pv = getelementptr inbounds nuw i8, ptr %0, i64 392
  store ptr %i.pj, ptr %i.pv, align 8, !tbaa !73
  %i.pw = getelementptr inbounds nuw i8, ptr %0, i64 264
  call void @_ZN11NCoderMixer21CBindReverseConverter21CreateReverseBindInfoERNS_9CBindInfoE(ptr noundef nonnull align 8 dereferenceable(272) %i.pj, ptr noundef nonnull align 8 dereferenceable(128) %i.pw)
  store i8 1, ptr %i.a, align 8, !tbaa !82
  br label %bb.av

bb.au:                                            ; preds = %._crit_edge192
  %i.px = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.pj, i64 noundef 272) #17
  br label %bb.aw

bb.av:                                            ; preds = %bb.a, %bb.at
  ret i32 0

bb.aw:                                            ; preds = %bb.au, %.body129, %.body
  %.pn = phi { ptr, i32 } [ %i.px, %bb.au ], [ %eh.lpad-body, %.body ], [ %eh.lpad-body130, %.body129 ]
  resume { ptr, i32 } %.pn
}

declare void @_ZN16CInOutTempBufferC1Ev(ptr noundef nonnull align 8 dereferenceable(1164)) unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZN16CInOutTempBufferD1Ev(ptr noundef nonnull align 8 dead_on_return(1164) dereferenceable(1164)) unnamed_addr #7

declare void @_ZN16CInOutTempBuffer6CreateEv(ptr noundef nonnull align 8 dereferenceable(1164)) local_unnamed_addr #5

declare void @_ZN16CInOutTempBuffer11InitWritingEv(ptr noundef nonnull align 8 dereferenceable(1164)) local_unnamed_addr #5

declare void @_ZNK19CDynBufSeqOutStream12CopyToBufferER7CBufferIhE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #5

declare noundef i32 @_ZN16CInOutTempBuffer13WriteToStreamEP20ISequentialOutStream(ptr noundef nonnull align 8 dereferenceable(1164), ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN13CObjectVectorI9CMyComPtrI20ISequentialOutStreamEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorI9CMyComPtrI20ISequentialOutStreamEE, i64 16), ptr %0, align 8, !tbaa !14
  invoke void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  ret void

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          catch ptr null
  %i.b = extractvalue { ptr, i32 } %i.a, 0
  tail call void @__clang_call_terminate(ptr %i.b) #18
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN13CObjectVectorIP27CSequentialOutTempBufferImpED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorIP27CSequentialOutTempBufferImpE, i64 16), ptr %0, align 8, !tbaa !14
  invoke void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  ret void

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          catch ptr null
  %i.b = extractvalue { ptr, i32 } %i.a, 0
  tail call void @__clang_call_terminate(ptr %i.b) #18
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN13CObjectVectorI16CInOutTempBufferED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorI16CInOutTempBufferE, i64 16), ptr %0, align 8, !tbaa !14
  invoke void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  ret void

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          catch ptr null
  %i.b = extractvalue { ptr, i32 } %i.a, 0
  tail call void @__clang_call_terminate(ptr %i.b) #18
  unreachable
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN8NArchive3N7z8CEncoderC2ERKNS0_22CCompressionMethodModeE(ptr noundef nonnull align 8 dereferenceable(433) initializes((8, 48)) %0, ptr noundef nonnull align 8 dereferenceable(88) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr null, ptr %i.a, align 8, !tbaa !38
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  store i64 8, ptr %i.d, align 8, !tbaa !18
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorIN8NArchive3N7z10CCoderInfoEE, i64 16), ptr %i.b, align 8, !tbaa !14
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  invoke void @_ZN8NArchive3N7z22CCompressionMethodModeC2Ev(ptr noundef nonnull align 8 dereferenceable(88) %i.e)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 160
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  store i64 8, ptr %i.h, align 8, !tbaa !18
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CRecordVectorIN11NCoderMixer17CCoderStreamsInfoEE, i64 16), ptr %i.f, align 8, !tbaa !14
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 192
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, i8 0, i64 16, i1 false)
  store i64 8, ptr %i.k, align 8, !tbaa !18
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CRecordVectorIN11NCoderMixer9CBindPairEE, i64 16), ptr %i.i, align 8, !tbaa !14
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 208
end_hunk_0
begin_hunk_1_@_ZN13CObjectVectorI9CMyComPtrI20ISequentialOutStreamEE6DeleteEii:_ZNK17CBaseRecordVector22TestIndexAndCorrectNumEiRi.exit
  br i1 %i.v, label %bb.a, label %._crit_edge, !llvm.loop !234
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN16CInOutTempBufferC2ERKS_(ptr noundef nonnull align 8 dereferenceable(1164) %0, ptr noundef nonnull align 8 dereferenceable(1164) %1) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %1, align 8, !tbaa !246, !range !83, !noundef !84
  store i8 %i.a, ptr %0, align 8, !tbaa !246
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.g = load i32, ptr %i.f, align 8, !tbaa !56   ; 2 uses
  %i.h = add nsw i32 %i.g, 1                      ; 3 uses
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = zext nneg i32 %i.h to i64
  %i.k = icmp slt i32 %i.g, -1
  %i.l = shl nuw nsw i64 %i.j, 2
  %i.m = select i1 %i.k, i64 -1, i64 %i.l
  %i.n = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.m) #15 ; 10 uses
  %i.o = ptrtoaddr ptr %i.n to i64
  %i.p = load i32, ptr %i.e, align 4, !tbaa !86
  %i.q = icmp sgt i32 %i.p, 0
  %.pre4.i.i = load i32, ptr %i.d, align 8, !tbaa !56 ; 5 uses
  br i1 %i.q, label %.preheader.i.i.i, label %bb.c

.preheader.i.i.i:                                 ; preds = %bb.b
  %i.r = icmp sgt i32 %.pre4.i.i, 0
  %.pre.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !57 ; 9 uses
  br i1 %i.r, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i
  %.pre.i.i.i14 = ptrtoaddr ptr %.pre.i.i.i to i64
  %wide.trip.count.i.i.i = zext nneg i32 %.pre4.i.i to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %.pre4.i.i, 8
  %i.s = sub i64 %.pre.i.i.i14, %i.o
  %diff.check = icmp ugt i64 %i.s, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i
  %n.vec = and i64 %wide.trip.count.i.i.i, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i.i, i64 %index ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %wide.load = load <4 x i32>, ptr %i.t, align 4, !tbaa !59
  %wide.load15 = load <4 x i32>, ptr %i.u, align 4, !tbaa !59
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %index ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store <4 x i32> %wide.load, ptr %i.v, align 4, !tbaa !59
  store <4 x i32> %wide.load15, ptr %i.w, align 4, !tbaa !59
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !235

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i.i
  br i1 %cmp.n, label %._crit_edge.thread.i.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i.i, %middle.block
  %indvars.iv.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i, 3   ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.i.i.prol = phi i64 [ %indvars.iv.next.i.i.i.prol, %scalar.ph.prol ], [ %indvars.iv.i.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i.i, i64 %indvars.iv.i.i.i.prol
  %i.z = load i32, ptr %i.y, align 4, !tbaa !59
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv.i.i.i.prol
  store i32 %i.z, ptr %i.aa, align 4, !tbaa !59
  %indvars.iv.next.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !236

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i.i.prol, %scalar.ph.prol ]
  %i.ab = sub nsw i64 %indvars.iv.i.i.i.ph, %wide.trip.count.i.i.i
  %i.ac = icmp ugt i64 %i.ab, -4
  br i1 %i.ac, label %._crit_edge.thread.i.i.i, label %scalar.ph

._crit_edge.i.i.i:                                ; preds = %.preheader.i.i.i
  %i.ad = icmp eq ptr %.pre.i.i.i, null
  br i1 %i.ad, label %bb.c, label %._crit_edge.thread.i.i.i

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.3, %scalar.ph ], [ %indvars.iv.i.i.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i.i, i64 %indvars.iv.i.i.i
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !59
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv.i.i.i
  store i32 %i.af, ptr %i.ag, align 4, !tbaa !59
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i.i, i64 %indvars.iv.next.i.i.i
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !59
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv.next.i.i.i
  store i32 %i.ai, ptr %i.aj, align 4, !tbaa !59
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i.i, i64 %indvars.iv.next.i.i.i.1
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !59
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv.next.i.i.i.1
  store i32 %i.al, ptr %i.am, align 4, !tbaa !59
  %indvars.iv.next.i.i.i.2 = add nuw nsw i64 %indvars.iv.i.i.i, 3 ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i.i, i64 %indvars.iv.next.i.i.i.2
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !59
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv.next.i.i.i.2
  store i32 %i.ao, ptr %i.ap, align 4, !tbaa !59
  %indvars.iv.next.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.3, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i.3, label %._crit_edge.thread.i.i.i, label %scalar.ph, !llvm.loop !237

._crit_edge.thread.i.i.i:                         ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %._crit_edge.i.i.i
  tail call void @_ZdaPv(ptr noundef nonnull %.pre.i.i.i) #17
  %.pre.i.i = load i32, ptr %i.d, align 8, !tbaa !56
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge.thread.i.i.i, %._crit_edge.i.i.i, %bb.b
  %i.aq = phi i32 [ %.pre.i.i, %._crit_edge.thread.i.i.i ], [ %.pre4.i.i, %._crit_edge.i.i.i ], [ %.pre4.i.i, %bb.b ]
  store ptr %i.n, ptr %i.b, align 8, !tbaa !57
  %i.ar = sext i32 %i.aq to i64
  %i.as = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.ar
  store i32 0, ptr %i.as, align 4, !tbaa !59
  store i32 %i.h, ptr %i.e, align 4, !tbaa !86
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i

_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i:      ; preds = %bb.c, %bb.a
  %i.at = phi ptr [ null, %bb.a ], [ %i.n, %bb.c ]
  %i.au = load ptr, ptr %i.c, align 8, !tbaa !57
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i
  %.04.i.i.i = phi ptr [ %i.at, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i ], [ %i.ax, %bb.d ] ; 2 uses
  %.0.i.i.i = phi ptr [ %i.au, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i ], [ %i.av, %bb.d ] ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 4
  %i.aw = load i32, ptr %.0.i.i.i, align 4, !tbaa !59 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.04.i.i.i, i64 4
  store i32 %i.aw, ptr %.04.i.i.i, align 4, !tbaa !59
  %.not.i.i.i = icmp eq i32 %i.aw, 0
  br i1 %.not.i.i.i, label %_ZN8NWindows5NFile10NDirectory9CTempFileC2ERKS2_.exit, label %bb.d, !llvm.loop !2

_ZN8NWindows5NFile10NDirectory9CTempFileC2ERKS2_.exit: ; preds = %bb.d
  %i.ay = load i32, ptr %i.f, align 8, !tbaa !56
  store i32 %i.ay, ptr %i.d, align 8, !tbaa !56
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN8NWindows5NFile3NIO9CFileBaseE, i64 16), ptr %i.az, align 8, !tbaa !14
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !247
  store i32 %i.bc, ptr %i.ba, align 8, !tbaa !247
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bd, i8 0, i64 16, i1 false)
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !248
  %i.bj = add nsw i32 %i.bi, 1                    ; 3 uses
  %i.bk = icmp eq i32 %i.bj, 0
  br i1 %i.bk, label %_ZN11CStringBaseIcE11SetCapacityEi.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %_ZN8NWindows5NFile10NDirectory9CTempFileC2ERKS2_.exit
  %i.bl = sext i32 %i.bj to i64
  %i.bm = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.bl) #15
          to label %.noexc unwind label %bb.m     ; 11 uses

.noexc:                                           ; preds = %bb.e
  %i.bn = ptrtoaddr ptr %i.bm to i64
  %i.bo = load i32, ptr %i.bg, align 4, !tbaa !249
  %i.bp = icmp sgt i32 %i.bo, 0
  %.pre4.i.i.i = load i32, ptr %i.bf, align 8, !tbaa !248 ; 6 uses
  br i1 %i.bp, label %.preheader.i.i.i.i, label %bb.f

.preheader.i.i.i.i:                               ; preds = %.noexc
  %i.bq = icmp sgt i32 %.pre4.i.i.i, 0
  %.pre.i.i.i.i = load ptr, ptr %i.bd, align 8, !tbaa !250 ; 10 uses
  br i1 %i.bq, label %iter.check, label %._crit_edge.i.i.i.i

iter.check:                                       ; preds = %.preheader.i.i.i.i
  %.pre.i.i.i.i17 = ptrtoaddr ptr %.pre.i.i.i.i to i64
  %wide.trip.count.i.i.i.i = zext nneg i32 %.pre4.i.i.i to i64 ; 8 uses
  %min.iters.check20 = icmp ult i32 %.pre4.i.i.i, 4
  %i.br = sub i64 %.pre.i.i.i.i17, %i.bn
  %diff.check18 = icmp ugt i64 %i.br, -32
  %or.cond52 = select i1 %min.iters.check20, i1 true, i1 %diff.check18
  br i1 %or.cond52, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check21 = icmp ult i32 %.pre4.i.i.i, 32
  br i1 %min.iters.check21, label %vec.epilog.ph, label %vector.ph22

vector.ph22:                                      ; preds = %vector.main.loop.iter.check
  %n.vec23 = and i64 %wide.trip.count.i.i.i.i, 2147483616 ; 4 uses
  br label %vector.body24

vector.body24:                                    ; preds = %vector.body24, %vector.ph22
  %index25 = phi i64 [ 0, %vector.ph22 ], [ %index.next28, %vector.body24 ] ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.pre.i.i.i.i, i64 %index25 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %wide.load26 = load <16 x i8>, ptr %i.bs, align 1, !tbaa !251
  %wide.load27 = load <16 x i8>, ptr %i.bt, align 1, !tbaa !251
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bm, i64 %index25 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  store <16 x i8> %wide.load26, ptr %i.bu, align 1, !tbaa !251
  store <16 x i8> %wide.load27, ptr %i.bv, align 1, !tbaa !251
  %index.next28 = add nuw i64 %index25, 32        ; 2 uses
  %i.bw = icmp eq i64 %index.next28, %n.vec23
  br i1 %i.bw, label %middle.block29, label %vector.body24, !llvm.loop !238

middle.block29:                                   ; preds = %vector.body24
  %2 = and i64 %wide.trip.count.i.i.i.i, 28
  %cmp.n30 = icmp eq i64 %n.vec23, %wide.trip.count.i.i.i.i
  br i1 %cmp.n30, label %._crit_edge.thread.i.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block29
  %min.epilog.iters.check = icmp eq i64 %2, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !252

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec23, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec31 = and i64 %wide.trip.count.i.i.i.i, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index32 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next34, %vec.epilog.vector.body ] ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.pre.i.i.i.i, i64 %index32
  %wide.load33 = load <4 x i8>, ptr %i.bx, align 1, !tbaa !251
  %i.by = getelementptr inbounds nuw i8, ptr %i.bm, i64 %index32
  store <4 x i8> %wide.load33, ptr %i.by, align 1, !tbaa !251
  %index.next34 = add nuw i64 %index32, 4         ; 2 uses
  %i.bz = icmp eq i64 %index.next34, %n.vec31
  br i1 %i.bz, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !239

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n35 = icmp eq i64 %n.vec31, %wide.trip.count.i.i.i.i
  br i1 %cmp.n35, label %._crit_edge.thread.i.i.i.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.i.i.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec23, %vec.epilog.iter.check ], [ %n.vec31, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter54 = and i64 %wide.trip.count.i.i.i.i, 3 ; 2 uses
  %lcmp.mod55.not = icmp eq i64 %xtraiter54, 0
  br i1 %lcmp.mod55.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv.i.i.i.i.prol = phi i64 [ %indvars.iv.next.i.i.i.i.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv.i.i.i.i.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter56 = phi i64 [ %prol.iter56.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.ca = getelementptr inbounds nuw i8, ptr %.pre.i.i.i.i, i64 %indvars.iv.i.i.i.i.prol
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !251
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bm, i64 %indvars.iv.i.i.i.i.prol
  store i8 %i.cb, ptr %i.cc, align 1, !tbaa !251
  %indvars.iv.next.i.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter56.next = add i64 %prol.iter56, 1     ; 2 uses
  %prol.iter56.cmp.not = icmp eq i64 %prol.iter56.next, %xtraiter54
  br i1 %prol.iter56.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !240

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.i.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.i.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.i.i.i.i.prol, %vec.epilog.scalar.ph.prol ]
  %i.cd = sub nsw i64 %indvars.iv.i.i.i.i.ph, %wide.trip.count.i.i.i.i
  %i.ce = icmp ugt i64 %i.cd, -4
  br i1 %i.ce, label %._crit_edge.thread.i.i.i.i, label %vec.epilog.scalar.ph

._crit_edge.i.i.i.i:                              ; preds = %.preheader.i.i.i.i
  %i.cf = icmp eq ptr %.pre.i.i.i.i, null
  br i1 %i.cf, label %bb.f, label %._crit_edge.thread.i.i.i.i

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.3, %vec.epilog.scalar.ph ], [ %indvars.iv.i.i.i.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.pre.i.i.i.i, i64 %indvars.iv.i.i.i.i
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !251
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bm, i64 %indvars.iv.i.i.i.i
  store i8 %i.ch, ptr %i.ci, align 1, !tbaa !251
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.pre.i.i.i.i, i64 %indvars.iv.next.i.i.i.i
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !251
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bm, i64 %indvars.iv.next.i.i.i.i
  store i8 %i.ck, ptr %i.cl, align 1, !tbaa !251
  %indvars.iv.next.i.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i.i, 2 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.pre.i.i.i.i, i64 %indvars.iv.next.i.i.i.i.1
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !251
  %i.co = getelementptr inbounds nuw i8, ptr %i.bm, i64 %indvars.iv.next.i.i.i.i.1
  store i8 %i.cn, ptr %i.co, align 1, !tbaa !251
  %indvars.iv.next.i.i.i.i.2 = add nuw nsw i64 %indvars.iv.i.i.i.i, 3 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.pre.i.i.i.i, i64 %indvars.iv.next.i.i.i.i.2
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !251
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bm, i64 %indvars.iv.next.i.i.i.i.2
  store i8 %i.cq, ptr %i.cr, align 1, !tbaa !251
  %indvars.iv.next.i.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.i.3, %wide.trip.count.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.3, label %._crit_edge.thread.i.i.i.i, label %vec.epilog.scalar.ph, !llvm.loop !241

._crit_edge.thread.i.i.i.i:                       ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block29, %vec.epilog.middle.block, %._crit_edge.i.i.i.i
  tail call void @_ZdaPv(ptr noundef nonnull %.pre.i.i.i.i) #17
  %.pre.i.i.i9 = load i32, ptr %i.bf, align 8, !tbaa !248
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge.thread.i.i.i.i, %._crit_edge.i.i.i.i, %.noexc
  %i.cs = phi i32 [ %.pre.i.i.i9, %._crit_edge.thread.i.i.i.i ], [ %.pre4.i.i.i, %._crit_edge.i.i.i.i ], [ %.pre4.i.i.i, %.noexc ]
  store ptr %i.bm, ptr %i.bd, align 8, !tbaa !250
  %i.ct = sext i32 %i.cs to i64
  %i.cu = getelementptr inbounds i8, ptr %i.bm, i64 %i.ct
  store i8 0, ptr %i.cu, align 1, !tbaa !251
  store i32 %i.bj, ptr %i.bg, align 4, !tbaa !249
  br label %_ZN11CStringBaseIcE11SetCapacityEi.exit.i.i.i

_ZN11CStringBaseIcE11SetCapacityEi.exit.i.i.i:    ; preds = %bb.f, %_ZN8NWindows5NFile10NDirectory9CTempFileC2ERKS2_.exit
  %i.cv = phi ptr [ null, %_ZN8NWindows5NFile10NDirectory9CTempFileC2ERKS2_.exit ], [ %i.bm, %bb.f ]
  %i.cw = load ptr, ptr %i.be, align 8, !tbaa !250
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %_ZN11CStringBaseIcE11SetCapacityEi.exit.i.i.i
  %.04.i.i.i.i = phi ptr [ %i.cv, %_ZN11CStringBaseIcE11SetCapacityEi.exit.i.i.i ], [ %i.cz, %bb.g ] ; 2 uses
  %.0.i.i.i.i = phi ptr [ %i.cw, %_ZN11CStringBaseIcE11SetCapacityEi.exit.i.i.i ], [ %i.cx, %bb.g ] ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 1
  %i.cy = load i8, ptr %.0.i.i.i.i, align 1, !tbaa !251 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.04.i.i.i.i, i64 1
  store i8 %i.cy, ptr %.04.i.i.i.i, align 1, !tbaa !251
  %.not.i.i.i.i = icmp eq i8 %i.cy, 0
  br i1 %.not.i.i.i.i, label %bb.h, label %bb.g, !llvm.loop !242

bb.h:                                             ; preds = %bb.g
  %i.da = load i32, ptr %i.bh, align 8, !tbaa !248
  store i32 %i.da, ptr %i.bf, align 8, !tbaa !248
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1052) %i.db, ptr noundef nonnull align 8 dereferenceable(1052) %i.dc, i64 1052, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN8NWindows5NFile3NIO8COutFileE, i64 16), ptr %i.az, align 8, !tbaa !14
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 1112
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 1112
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.dd, ptr noundef nonnull align 8 dereferenceable(12) %i.de, i64 12, i1 false)
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 1128 ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 1128
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 1136 ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 1140 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 1136 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.df, i8 0, i64 16, i1 false)
  %i.dk = load i32, ptr %i.dj, align 8, !tbaa !56 ; 2 uses
  %i.dl = add nsw i32 %i.dk, 1                    ; 3 uses
  %i.dm = icmp eq i32 %i.dl, 0
  br i1 %i.dm, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.dn = zext nneg i32 %i.dl to i64
  %i.do = icmp slt i32 %i.dk, -1
  %i.dp = shl nuw nsw i64 %i.dn, 2
  %i.dq = select i1 %i.do, i64 -1, i64 %i.dp
  %i.dr = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.dq) #15
          to label %.noexc11 unwind label %bb.n   ; 10 uses

.noexc11:                                         ; preds = %bb.i
  %i.ds = ptrtoaddr ptr %i.dr to i64
  %i.dt = load i32, ptr %i.di, align 4, !tbaa !86
  %i.du = icmp sgt i32 %i.dt, 0
  %.pre4.i = load i32, ptr %i.dh, align 8, !tbaa !56 ; 5 uses
  br i1 %i.du, label %.preheader.i.i, label %bb.j

.preheader.i.i:                                   ; preds = %.noexc11
  %i.dv = icmp sgt i32 %.pre4.i, 0
  %.pre.i.i10 = load ptr, ptr %i.df, align 8, !tbaa !57 ; 9 uses
  br i1 %i.dv, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i
  %.pre.i.i1038 = ptrtoaddr ptr %.pre.i.i10 to i64
  %wide.trip.count.i.i = zext nneg i32 %.pre4.i to i64 ; 5 uses
  %min.iters.check41 = icmp ult i32 %.pre4.i, 8
  %i.dw = sub i64 %.pre.i.i1038, %i.ds
  %diff.check39 = icmp ugt i64 %i.dw, -32
  %or.cond53 = select i1 %min.iters.check41, i1 true, i1 %diff.check39
  br i1 %or.cond53, label %scalar.ph40.preheader, label %vector.ph42

vector.ph42:                                      ; preds = %.lr.ph.i.i
  %n.vec43 = and i64 %wide.trip.count.i.i, 2147483640 ; 3 uses
  br label %vector.body44

vector.body44:                                    ; preds = %vector.body44, %vector.ph42
  %index45 = phi i64 [ 0, %vector.ph42 ], [ %index.next48, %vector.body44 ] ; 3 uses
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i10, i64 %index45 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %wide.load46 = load <4 x i32>, ptr %i.dx, align 4, !tbaa !59
  %wide.load47 = load <4 x i32>, ptr %i.dy, align 4, !tbaa !59
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.dr, i64 %index45 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  store <4 x i32> %wide.load46, ptr %i.dz, align 4, !tbaa !59
  store <4 x i32> %wide.load47, ptr %i.ea, align 4, !tbaa !59
  %index.next48 = add nuw i64 %index45, 8         ; 2 uses
  %i.eb = icmp eq i64 %index.next48, %n.vec43
  br i1 %i.eb, label %middle.block49, label %vector.body44, !llvm.loop !243

middle.block49:                                   ; preds = %vector.body44
  %cmp.n50 = icmp eq i64 %n.vec43, %wide.trip.count.i.i
  br i1 %cmp.n50, label %._crit_edge.thread.i.i, label %scalar.ph40.preheader

scalar.ph40.preheader:                            ; preds = %.lr.ph.i.i, %middle.block49
  %indvars.iv.i.i.ph = phi i64 [ 0, %.lr.ph.i.i ], [ %n.vec43, %middle.block49 ] ; 3 uses
  %xtraiter57 = and i64 %wide.trip.count.i.i, 3   ; 2 uses
  %lcmp.mod58.not = icmp eq i64 %xtraiter57, 0
  br i1 %lcmp.mod58.not, label %scalar.ph40.prol.loopexit, label %scalar.ph40.prol

scalar.ph40.prol:                                 ; preds = %scalar.ph40.preheader, %scalar.ph40.prol
  %indvars.iv.i.i.prol = phi i64 [ %indvars.iv.next.i.i.prol, %scalar.ph40.prol ], [ %indvars.iv.i.i.ph, %scalar.ph40.preheader ] ; 3 uses
  %prol.iter59 = phi i64 [ %prol.iter59.next, %scalar.ph40.prol ], [ 0, %scalar.ph40.preheader ]
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i10, i64 %indvars.iv.i.i.prol
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !59
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.dr, i64 %indvars.iv.i.i.prol
  store i32 %i.ed, ptr %i.ee, align 4, !tbaa !59
  %indvars.iv.next.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.prol, 1 ; 2 uses
  %prol.iter59.next = add i64 %prol.iter59, 1     ; 2 uses
  %prol.iter59.cmp.not = icmp eq i64 %prol.iter59.next, %xtraiter57
  br i1 %prol.iter59.cmp.not, label %scalar.ph40.prol.loopexit, label %scalar.ph40.prol, !llvm.loop !244

scalar.ph40.prol.loopexit:                        ; preds = %scalar.ph40.prol, %scalar.ph40.preheader
  %indvars.iv.i.i.unr = phi i64 [ %indvars.iv.i.i.ph, %scalar.ph40.preheader ], [ %indvars.iv.next.i.i.prol, %scalar.ph40.prol ]
end_hunk_1
