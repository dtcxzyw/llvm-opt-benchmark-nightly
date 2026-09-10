Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/InstrBuilder?download=true
inline.NumInlined: 1772
inline.NumDeleted: 917
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN4llvm3mca12InstrBuilder19createInstrDescImplERKNS_6MCInstERKNS_11SmallVectorIPNS0_10InstrumentELj6EEE:bb.a
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit40

bb.k:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(45) %i.cz, ptr noundef nonnull align 1 dereferenceable(45) @.str.4, i64 45, i1 false)
  %i.df = load ptr, ptr %i.cy, align 8, !tbaa !158
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 45 ; 2 uses
  store ptr %i.dg, ptr %i.cy, align 8, !tbaa !158
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit40

_ZN4llvm11raw_ostreamlsEPKc.exit40:               ; preds = %bb.j, %bb.k
  %i.dh = phi ptr [ %.pre143, %bb.j ], [ %i.dg, %bb.k ] ; 2 uses
  %.0.i.i39 = phi ptr [ %i.de, %bb.j ], [ %i.cv, %bb.k ] ; 4 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.0.i.i39, i64 24
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !157
  %i.dk = ptrtoint ptr %i.dj to i64
  %i.dl = ptrtoint ptr %i.dh to i64
  %i.dm = sub i64 %i.dk, %i.dl
  %i.dn = icmp ult i64 %i.dm, 20
  br i1 %i.dn, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit40
  %i.do = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i39, ptr noundef nonnull @.str.5, i64 noundef 20) #16
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit43

bb.m:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit40
  %i.dp = getelementptr inbounds nuw i8, ptr %.0.i.i39, i64 32 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %i.dh, ptr noundef nonnull align 1 dereferenceable(20) @.str.5, i64 20, i1 false)
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !158
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 20
  store ptr %i.dr, ptr %i.dp, align 8, !tbaa !158
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit43

_ZN4llvm11raw_ostreamlsEPKc.exit43:               ; preds = %bb.l, %bb.m
  %.0.i.i42 = phi ptr [ %i.do, %bb.l ], [ %.0.i.i39, %bb.m ]
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 236
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !44
  %i.du = zext i32 %i.dt to i64
  %i.dv = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i42, i64 noundef %i.du) #16 ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 24
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !157
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dv, i64 32 ; 3 uses
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !158 ; 2 uses
  %i.ea = ptrtoint ptr %i.dx to i64
  %i.eb = ptrtoint ptr %i.dz to i64
  %i.ec = sub i64 %i.ea, %i.eb
  %i.ed = icmp ult i64 %i.ec, 4
  br i1 %i.ed, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit43
  %i.ee = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.dv, ptr noundef nonnull @.str.6, i64 noundef 4) #16 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit46

bb.o:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit43
  store i32 170817891, ptr %i.dz, align 1
  %i.ef = load ptr, ptr %i.dy, align 8, !tbaa !158
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 4
  store ptr %i.eg, ptr %i.dy, align 8, !tbaa !158
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit46

_ZN4llvm11raw_ostreamlsEPKc.exit46:               ; preds = %bb.n, %bb.o
  store i8 0, ptr %i.cg, align 8, !tbaa !42
  br label %bb.p

bb.p:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit46, %bb.f, %bb.e
  %i.eh = load ptr, ptr %i.ca, align 8, !tbaa !38 ; 2 uses
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !144
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 72
  %i.ek = load ptr, ptr %i.ej, align 8
  %i.el = tail call noundef zeroext i1 %i.ek(ptr noundef nonnull align 8 dereferenceable(16) %i.eh, ptr noundef nonnull align 8 dereferenceable(128) %2) #16
  br i1 %i.el, label %bb.q, label %bb.y

bb.q:                                             ; preds = %bb.p
  %i.em = getelementptr inbounds nuw i8, ptr %1, i64 233 ; 2 uses
  %i.en = load i8, ptr %i.em, align 1, !tbaa !43, !range !153, !noundef !81
  %i.eo = trunc nuw i8 %i.en to i1
  br i1 %i.eo, label %bb.r, label %bb.y

bb.r:                                             ; preds = %bb.q
  %i.ep = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm9WithColor7warningEv() #16 ; 4 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 24
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !157
  %i.es = getelementptr inbounds nuw i8, ptr %i.ep, i64 32 ; 3 uses
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !158 ; 2 uses
  %i.eu = ptrtoint ptr %i.er to i64
  %i.ev = ptrtoint ptr %i.et to i64
  %i.ew = sub i64 %i.eu, %i.ev
  %i.ex = icmp ult i64 %i.ew, 39
  br i1 %i.ex, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ey = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.ep, ptr noundef nonnull @.str.7, i64 noundef 39) #16 ; 2 uses
  %.phi.trans.insert144 = getelementptr inbounds nuw i8, ptr %i.ey, i64 32
  %.pre145 = load ptr, ptr %.phi.trans.insert144, align 8, !tbaa !158
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit49

bb.t:                                             ; preds = %bb.r
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %i.et, ptr noundef nonnull align 1 dereferenceable(39) @.str.7, i64 39, i1 false)
  %i.ez = load ptr, ptr %i.es, align 8, !tbaa !158
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 39 ; 2 uses
  store ptr %i.fa, ptr %i.es, align 8, !tbaa !158
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit49

_ZN4llvm11raw_ostreamlsEPKc.exit49:               ; preds = %bb.s, %bb.t
  %i.fb = phi ptr [ %.pre145, %bb.s ], [ %i.fa, %bb.t ] ; 2 uses
  %.0.i.i48 = phi ptr [ %i.ey, %bb.s ], [ %i.ep, %bb.t ] ; 3 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %.0.i.i48, i64 24
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !157
  %i.fe = ptrtoint ptr %i.fd to i64
  %i.ff = ptrtoint ptr %i.fb to i64
  %i.fg = sub i64 %i.fe, %i.ff
  %i.fh = icmp ult i64 %i.fg, 20
  br i1 %i.fh, label %bb.u, label %bb.v

bb.u:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit49
  %i.fi = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i48, ptr noundef nonnull @.str.8, i64 noundef 20) #16 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit52

bb.v:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit49
  %i.fj = getelementptr inbounds nuw i8, ptr %.0.i.i48, i64 32 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %i.fb, ptr noundef nonnull align 1 dereferenceable(20) @.str.8, i64 20, i1 false)
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !158
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 20
  store ptr %i.fl, ptr %i.fj, align 8, !tbaa !158
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit52

_ZN4llvm11raw_ostreamlsEPKc.exit52:               ; preds = %bb.u, %bb.v
  %i.fm = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm9WithColor4noteEv() #16 ; 3 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 24
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !157
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fm, i64 32 ; 3 uses
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !158 ; 2 uses
  %i.fr = ptrtoint ptr %i.fo to i64
  %i.fs = ptrtoint ptr %i.fq to i64
  %i.ft = sub i64 %i.fr, %i.fs
  %i.fu = icmp ult i64 %i.ft, 37
  br i1 %i.fu, label %bb.w, label %bb.x

bb.w:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit52
  %i.fv = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.fm, ptr noundef nonnull @.str.9, i64 noundef 37) #16 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit55

bb.x:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit52
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(37) %i.fq, ptr noundef nonnull align 1 dereferenceable(37) @.str.9, i64 37, i1 false)
  %i.fw = load ptr, ptr %i.fp, align 8, !tbaa !158
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 37
  store ptr %i.fx, ptr %i.fp, align 8, !tbaa !158
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit55

_ZN4llvm11raw_ostreamlsEPKc.exit55:               ; preds = %bb.w, %bb.x
  store i8 0, ptr %i.em, align 1, !tbaa !43
  br label %bb.y

bb.y:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit55, %bb.q, %bb.p
  %i.fy = load ptr, ptr %1, align 8, !tbaa !79, !nonnull !81, !align !82 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !39 ; 3 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fy, i64 208
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !70 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16
  %i.gd = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  store ptr %i.gd, ptr %8, align 8, !tbaa !39
  %i.ge = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 6 uses
  store i32 0, ptr %i.ge, align 8, !tbaa !40
  %i.gf = getelementptr inbounds nuw i8, ptr %8, i64 12 ; 2 uses
  store i32 4, ptr %i.gf, align 4, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gc, i64 48
  %i.gh = load i32, ptr %i.gg, align 8, !tbaa !77 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #16
  %i.gi = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 4 uses
  store i32 %i.gh, ptr %i.gi, align 8, !tbaa !160
  %i.gj = icmp ult i32 %i.gh, 65
  br i1 %i.gj, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  store i64 0, ptr %10, align 8, !tbaa !135
  br label %_ZN4llvm5APIntC2Ejmbb.exit.i

bb.aa:                                            ; preds = %bb.y
  call void @_ZN4llvm5APInt12initSlowCaseEmb(ptr noundef nonnull align 8 dereferenceable(12) %10, i64 noundef 0, i1 noundef zeroext false) #16
  br label %_ZN4llvm5APIntC2Ejmbb.exit.i

_ZN4llvm5APIntC2Ejmbb.exit.i:                     ; preds = %bb.aa, %bb.z
  %i.gk = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  %i.gl = load i16, ptr %i.gk, align 2, !tbaa !326 ; 2 uses
  %.not198.i = icmp eq i16 %i.gl, 0
  br i1 %.not198.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN4llvm5APIntC2Ejmbb.exit.i
  %i.gm = getelementptr inbounds nuw i8, ptr %i.fy, i64 184
  %i.gn = getelementptr inbounds nuw i8, ptr %i.ao, i64 2
  %i.go = getelementptr inbounds nuw i8, ptr %i.gc, i64 32
  %i.gp = getelementptr inbounds nuw i8, ptr %11, i64 8
  %.sroa.4150.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %11, i64 16
  %.sroa.5152.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %11, i64 20
  %wide.trip.count.i = zext i16 %i.gl to i64
  br label %bb.aq

._crit_edge.loopexit.i:                           ; preds = %bb.az
  %17 = and i8 %.2117.i, %.2120.i
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %_ZN4llvm5APIntC2Ejmbb.exit.i
  %.0115.lcssa.i = phi i8 [ 0, %_ZN4llvm5APIntC2Ejmbb.exit.i ], [ %17, %._crit_edge.loopexit.i ]
  %i.gq = getelementptr inbounds nuw i8, ptr %i.bl, i64 284 ; 9 uses
  %i.gr = load i8, ptr %i.gq, align 4
  %i.gs = and i8 %i.gr, -2
  %i.gt = or disjoint i8 %i.gs, %.0115.lcssa.i    ; 2 uses
  store i8 %i.gt, ptr %i.gq, align 4
  %.val.i = load ptr, ptr %8, align 8, !tbaa !39  ; 14 uses
  %.val132.i = load i32, ptr %i.ge, align 8, !tbaa !40 ; 4 uses
  %i.gu = zext i32 %.val132.i to i64              ; 2 uses
  %.idx.i.i = mul nuw nsw i64 %i.gu, 24
  %i.gv = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.idx.i.i ; 3 uses
  %.not.i.i.i.i.i = icmp eq i32 %.val132.i, 0
  br i1 %.not.i.i.i.i.i, label %"_ZN4llvm4sortIRNS_11SmallVectorISt4pairImNS_3mca13ResourceUsageEELj4EEEZNS3_L23initializeUsedResourcesERNS3_9InstrDescERKNS_16MCSchedClassDescERKNS_15MCSubtargetInfoENS_8ArrayRefImEEE3$_0EEvOT_T0_.exit.thread.i", label %bb.ab

"_ZN4llvm4sortIRNS_11SmallVectorISt4pairImNS_3mca13ResourceUsageEELj4EEEZNS3_L23initializeUsedResourcesERNS3_9InstrDescERKNS_16MCSchedClassDescERKNS_15MCSubtargetInfoENS_8ArrayRefImEEE3$_0EEvOT_T0_.exit.thread.i": ; preds = %._crit_edge.i
  %i.gw = and i8 %i.gt, -5
  store i8 %i.gw, ptr %i.gq, align 4
  br label %._crit_edge184.i

bb.ab:                                            ; preds = %._crit_edge.i
  %i.gx = ptrtoint ptr %.val.i to i64
  %i.gy = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.gu, i1 true)
  %i.gz = shl nuw nsw i64 %i.gy, 1
  %i.ha = xor i64 %i.gz, 126
  call fastcc void @"_ZSt16__introsort_loopIPSt4pairImN4llvm3mca13ResourceUsageEElN9__gnu_cxx5__ops15_Iter_comp_iterIZNS2_L23initializeUsedResourcesERNS2_9InstrDescERKNS1_16MCSchedClassDescERKNS1_15MCSubtargetInfoENS1_8ArrayRefImEEE3$_0EEEvT_SL_T0_T1_"(ptr noundef %.val.i, ptr noundef nonnull %i.gv, i64 noundef %i.ha)
  %i.hb = icmp ugt i32 %.val132.i, 16
  br i1 %i.hb, label %bb.ac, label %.preheader.i.i.i.i.i.i.i

bb.ac:                                            ; preds = %bb.ab
  %i.hc = getelementptr inbounds nuw i8, ptr %.val.i, i64 8
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ah, %bb.ac
  %indvar = phi i64 [ %indvar.next, %bb.ah ], [ 0, %bb.ac ] ; 2 uses
  %.019.i.idx.i.i.i.i.i.i = phi i64 [ %.019.i.add.i.i.i.i.i.i, %bb.ah ], [ 24, %bb.ac ] ; 3 uses
  %.pn18.i.i.i.i.i.i.i = phi ptr [ %.019.i.ptr.i.i.i.i.i.i, %bb.ah ], [ %.val.i, %bb.ac ] ; 4 uses
  %.019.i.ptr.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.019.i.idx.i.i.i.i.i.i ; 6 uses
  %.0.val.i.i.i.i.i.i.i = load i64, ptr %.019.i.ptr.i.i.i.i.i.i, align 8, !tbaa !164 ; 5 uses
  %.val.i.i.i.i.i.i.i = load i64, ptr %.val.i, align 8, !tbaa !164 ; 2 uses
  %i.hd = insertelement <2 x i64> poison, i64 %.0.val.i.i.i.i.i.i.i, i64 0
  %i.he = insertelement <2 x i64> %i.hd, i64 %.val.i.i.i.i.i.i.i, i64 1
  %i.hf = call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %i.he) ; 2 uses
  %i.hg = extractelement <2 x i64> %i.hf, i64 0   ; 4 uses
  %i.hh = extractelement <2 x i64> %i.hf, i64 1   ; 2 uses
  %i.hi = icmp samesign ult i64 %i.hg, %i.hh
  %i.hj = icmp samesign ule i64 %i.hg, %i.hh
  %i.hk = icmp ult i64 %.0.val.i.i.i.i.i.i.i, %.val.i.i.i.i.i.i.i
  %spec.select.i.i.i.i.i.i.i.i.i = and i1 %i.hk, %i.hj
  %.0.i.i.i.i.i.i.i.i.i = select i1 %i.hi, i1 true, i1 %spec.select.i.i.i.i.i.i.i.i.i
  %.sroa.4.0..0.sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn18.i.i.i.i.i.i.i, i64 32 ; 2 uses
  br i1 %.0.i.i.i.i.i.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ae

.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i:         ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i.i.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..0.sroa_idx.i.i.i.i.i.i.i, i64 16, i1 false)
  %i.hl = getelementptr inbounds nuw i8, ptr %.pn18.i.i.i.i.i.i.i, i64 48
  %i.hm = udiv i64 %.019.i.idx.i.i.i.i.i.i, 24    ; 3 uses
  %xtraiter = and i64 %i.hm, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol:              ; preds = %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i
  %i.hn = getelementptr inbounds i8, ptr %.019.i.ptr.i.i.i.i.i.i, i64 -24 ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %.pn18.i.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.hp = load i64, ptr %i.hn, align 8, !tbaa !78
  store i64 %i.hp, ptr %i.ho, align 8, !tbaa !164
  %i.hq = getelementptr inbounds i8, ptr %.019.i.ptr.i.i.i.i.i.i, i64 -16
  %i.hr = getelementptr inbounds nuw i8, ptr %.pn18.i.i.i.i.i.i.i, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hr, ptr noundef nonnull align 8 dereferenceable(16) %i.hq, i64 16, i1 false), !tbaa.struct !166
  %i.hs = add nsw i64 %i.hm, -1
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit:     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i
  %.010.i.i.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %i.hm, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.hs, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol ]
  %.069.i.i.i.i.i.i.i.i.i.i.i.i.unr = phi ptr [ %i.hl, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ho, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol ]
  %.078.i.i.i.i.i.i.i.i.i.i.i.i.unr = phi ptr [ %.019.i.ptr.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.hn, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol ]
  %i.ht = icmp eq i64 %indvar, 0
  br i1 %i.ht, label %_ZSt13move_backwardIPSt4pairImN4llvm3mca13ResourceUsageEES5_ET0_T_S7_S6_.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %.010.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ie, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.010.i.i.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.069.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ia, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.069.i.i.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 4 uses
  %.078.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.hz, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.078.i.i.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 4 uses
  %i.hu = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i.i.i.i.i.i, i64 -24
  %i.hv = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i.i.i.i.i.i, i64 -24
  %i.hw = load i64, ptr %i.hu, align 8, !tbaa !78
  store i64 %i.hw, ptr %i.hv, align 8, !tbaa !164
  %i.hx = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i.i.i.i.i.i, i64 -16
  %i.hy = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i.i.i.i.i.i, i64 -16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hy, ptr noundef nonnull align 8 dereferenceable(16) %i.hx, i64 16, i1 false), !tbaa.struct !166
  %i.hz = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i.i.i.i.i.i, i64 -48 ; 2 uses
  %i.ia = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i.i.i.i.i.i, i64 -48 ; 2 uses
  %i.ib = load i64, ptr %i.hz, align 8, !tbaa !78
  store i64 %i.ib, ptr %i.ia, align 8, !tbaa !164
  %i.ic = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i.i.i.i.i.i, i64 -40
  %i.id = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i.i.i.i.i.i, i64 -40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.id, ptr noundef nonnull align 8 dereferenceable(16) %i.ic, i64 16, i1 false), !tbaa.struct !166
  %i.ie = add nsw i64 %.010.i.i.i.i.i.i.i.i.i.i.i.i, -2
  %i.if = icmp sgt i64 %.010.i.i.i.i.i.i.i.i.i.i.i.i, 2
  br i1 %i.if, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt13move_backwardIPSt4pairImN4llvm3mca13ResourceUsageEES5_ET0_T_S7_S6_.exit.i.i.i.i.i.i.i, !llvm.loop !278

_ZSt13move_backwardIPSt4pairImN4llvm3mca13ResourceUsageEES5_ET0_T_S7_S6_.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit
  store i64 %.0.val.i.i.i.i.i.i.i, ptr %.val.i, align 8, !tbaa !164
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hc, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.i.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !166
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i.i.i.i.i)
  br label %bb.ah

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i.i.i.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..0.sroa_idx.i.i.i.i.i.i.i, i64 16, i1 false)
  br label %bb.af

bb.af:                                            ; preds = %bb.ag, %bb.ae
  %.09.i.i.i.i.i.i.i.i = phi ptr [ %.019.i.ptr.i.i.i.i.i.i, %bb.ae ], [ %.0.i.i.i.i.i.i.i.i, %bb.ag ] ; 6 uses
  %.0.i.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.09.i.i.i.i.i.i.i.i, i64 -24 ; 2 uses
  %.0.val.i.i.i.i.i.i.i.i = load i64, ptr %.0.i.i.i.i.i.i.i.i, align 8, !tbaa !164 ; 3 uses
  %i.ig = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %.0.val.i.i.i.i.i.i.i.i) ; 2 uses
  %i.ih = icmp samesign ult i64 %i.hg, %i.ig
  %i.ii = icmp samesign ule i64 %i.hg, %i.ig
  %i.ij = icmp ult i64 %.0.val.i.i.i.i.i.i.i, %.0.val.i.i.i.i.i.i.i.i
  %spec.select.i.i.i.i.i.i.i.i.i.i = and i1 %i.ij, %i.ii
  %.0.i.i.i.i.i.i.i.i.i.i = select i1 %i.ih, i1 true, i1 %spec.select.i.i.i.i.i.i.i.i.i.i
  br i1 %.0.i.i.i.i.i.i.i.i.i.i, label %bb.ag, label %"_ZSt25__unguarded_linear_insertIPSt4pairImN4llvm3mca13ResourceUsageEEN9__gnu_cxx5__ops14_Val_comp_iterIZNS2_L23initializeUsedResourcesERNS2_9InstrDescERKNS1_16MCSchedClassDescERKNS1_15MCSubtargetInfoENS1_8ArrayRefImEEE3$_0EEEvT_T0_.exit.i.i.i.i.i.i.i"

bb.ag:                                            ; preds = %bb.af
  store i64 %.0.val.i.i.i.i.i.i.i.i, ptr %.09.i.i.i.i.i.i.i.i, align 8, !tbaa !164
  %i.ik = getelementptr inbounds i8, ptr %.09.i.i.i.i.i.i.i.i, i64 -16
  %i.il = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.il, ptr noundef nonnull align 8 dereferenceable(16) %i.ik, i64 16, i1 false), !tbaa.struct !166
  br label %bb.af, !llvm.loop !279

"_ZSt25__unguarded_linear_insertIPSt4pairImN4llvm3mca13ResourceUsageEEN9__gnu_cxx5__ops14_Val_comp_iterIZNS2_L23initializeUsedResourcesERNS2_9InstrDescERKNS1_16MCSchedClassDescERKNS1_15MCSubtargetInfoENS1_8ArrayRefImEEE3$_0EEEvT_T0_.exit.i.i.i.i.i.i.i": ; preds = %bb.af
  store i64 %.0.val.i.i.i.i.i.i.i, ptr %.09.i.i.i.i.i.i.i.i, align 8, !tbaa !164
  %i.im = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.im, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !166
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i.i.i.i.i.i)
  br label %bb.ah

bb.ah:                                            ; preds = %"_ZSt25__unguarded_linear_insertIPSt4pairImN4llvm3mca13ResourceUsageEEN9__gnu_cxx5__ops14_Val_comp_iterIZNS2_L23initializeUsedResourcesERNS2_9InstrDescERKNS1_16MCSchedClassDescERKNS1_15MCSubtargetInfoENS1_8ArrayRefImEEE3$_0EEEvT_T0_.exit.i.i.i.i.i.i.i", %_ZSt13move_backwardIPSt4pairImN4llvm3mca13ResourceUsageEES5_ET0_T_S7_S6_.exit.i.i.i.i.i.i.i
  %.019.i.add.i.i.i.i.i.i = add nuw nsw i64 %.019.i.idx.i.i.i.i.i.i, 24 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i64 %.019.i.add.i.i.i.i.i.i, 384
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i.i.i.i.i.i.i, label %"_ZSt16__insertion_sortIPSt4pairImN4llvm3mca13ResourceUsageEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS2_L23initializeUsedResourcesERNS2_9InstrDescERKNS1_16MCSchedClassDescERKNS1_15MCSubtargetInfoENS1_8ArrayRefImEEE3$_0EEEvT_SL_T0_.exit.i.i.i.i.i.i", label %bb.ad, !llvm.loop !280

"_ZSt16__insertion_sortIPSt4pairImN4llvm3mca13ResourceUsageEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS2_L23initializeUsedResourcesERNS2_9InstrDescERKNS1_16MCSchedClassDescERKNS1_15MCSubtargetInfoENS1_8ArrayRefImEEE3$_0EEEvT_SL_T0_.exit.i.i.i.i.i.i": ; preds = %bb.ah
  %i.in = getelementptr inbounds nuw i8, ptr %.val.i, i64 384
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %"_ZSt25__unguarded_linear_insertIPSt4pairImN4llvm3mca13ResourceUsageEEN9__gnu_cxx5__ops14_Val_comp_iterIZNS2_L23initializeUsedResourcesERNS2_9InstrDescERKNS1_16MCSchedClassDescERKNS1_15MCSubtargetInfoENS1_8ArrayRefImEEE3$_0EEEvT_T0_.exit.i19.i.i.i.i.i.i", %"_ZSt16__insertion_sortIPSt4pairImN4llvm3mca13ResourceUsageEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS2_L23initializeUsedResourcesERNS2_9InstrDescERKNS1_16MCSchedClassDescERKNS1_15MCSubtargetInfoENS1_8ArrayRefImEEE3$_0EEEvT_SL_T0_.exit.i.i.i.i.i.i"
  %.07.i.i.i.i.i.i.i = phi ptr [ %i.iw, %"_ZSt25__unguarded_linear_insertIPSt4pairImN4llvm3mca13ResourceUsageEEN9__gnu_cxx5__ops14_Val_comp_iterIZNS2_L23initializeUsedResourcesERNS2_9InstrDescERKNS1_16MCSchedClassDescERKNS1_15MCSubtargetInfoENS1_8ArrayRefImEEE3$_0EEEvT_T0_.exit.i19.i.i.i.i.i.i" ], [ %i.in, %"_ZSt16__insertion_sortIPSt4pairImN4llvm3mca13ResourceUsageEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS2_L23initializeUsedResourcesERNS2_9InstrDescERKNS1_16MCSchedClassDescERKNS1_15MCSubtargetInfoENS1_8ArrayRefImEEE3$_0EEEvT_SL_T0_.exit.i.i.i.i.i.i" ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i13.i.i.i.i.i.i)
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %.07.i.i.i.i.i.i.i, align 8 ; 3 uses
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i13.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i, i64 16, i1 false)
  %i.io = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i) ; 2 uses
  br label %bb.ai

bb.ai:                                            ; preds = %bb.aj, %.lr.ph.i.i.i.i.i.i.i
  %.09.i.i14.i.i.i.i.i.i = phi ptr [ %.07.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ], [ %.0.i.i15.i.i.i.i.i.i, %bb.aj ] ; 6 uses
  %.0.i.i15.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.09.i.i14.i.i.i.i.i.i, i64 -24 ; 2 uses
  %.0.val.i.i16.i.i.i.i.i.i = load i64, ptr %.0.i.i15.i.i.i.i.i.i, align 8, !tbaa !164 ; 3 uses
  %i.ip = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %.0.val.i.i16.i.i.i.i.i.i) ; 2 uses
  %i.iq = icmp samesign ult i64 %i.io, %i.ip
  %i.ir = icmp samesign ule i64 %i.io, %i.ip
  %i.is = icmp ult i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, %.0.val.i.i16.i.i.i.i.i.i
  %spec.select.i.i.i.i17.i.i.i.i.i.i = and i1 %i.is, %i.ir
  %.0.i.i.i.i18.i.i.i.i.i.i = select i1 %i.iq, i1 true, i1 %spec.select.i.i.i.i17.i.i.i.i.i.i
  br i1 %.0.i.i.i.i18.i.i.i.i.i.i, label %bb.aj, label %"_ZSt25__unguarded_linear_insertIPSt4pairImN4llvm3mca13ResourceUsageEEN9__gnu_cxx5__ops14_Val_comp_iterIZNS2_L23initializeUsedResourcesERNS2_9InstrDescERKNS1_16MCSchedClassDescERKNS1_15MCSubtargetInfoENS1_8ArrayRefImEEE3$_0EEEvT_T0_.exit.i19.i.i.i.i.i.i"

bb.aj:                                            ; preds = %bb.ai
  store i64 %.0.val.i.i16.i.i.i.i.i.i, ptr %.09.i.i14.i.i.i.i.i.i, align 8, !tbaa !164
  %i.it = getelementptr inbounds i8, ptr %.09.i.i14.i.i.i.i.i.i, i64 -16
  %i.iu = getelementptr inbounds nuw i8, ptr %.09.i.i14.i.i.i.i.i.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.iu, ptr noundef nonnull align 8 dereferenceable(16) %i.it, i64 16, i1 false), !tbaa.struct !166
  br label %bb.ai, !llvm.loop !279

"_ZSt25__unguarded_linear_insertIPSt4pairImN4llvm3mca13ResourceUsageEEN9__gnu_cxx5__ops14_Val_comp_iterIZNS2_L23initializeUsedResourcesERNS2_9InstrDescERKNS1_16MCSchedClassDescERKNS1_15MCSubtargetInfoENS1_8ArrayRefImEEE3$_0EEEvT_T0_.exit.i19.i.i.i.i.i.i": ; preds = %bb.ai
  store i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, ptr %.09.i.i14.i.i.i.i.i.i, align 8, !tbaa !164
  %i.iv = getelementptr inbounds nuw i8, ptr %.09.i.i14.i.i.i.i.i.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.iv, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i13.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !166
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i13.i.i.i.i.i.i)
  %i.iw = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i20.i.i.i.i.i.i = icmp eq ptr %i.iw, %i.gv
  br i1 %.not.i20.i.i.i.i.i.i, label %"_ZN4llvm4sortIRNS_11SmallVectorISt4pairImNS_3mca13ResourceUsageEELj4EEEZNS3_L23initializeUsedResourcesERNS3_9InstrDescERKNS_16MCSchedClassDescERKNS_15MCSubtargetInfoENS_8ArrayRefImEEE3$_0EEvOT_T0_.exit.i", label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !281

.preheader.i.i.i.i.i.i.i:                         ; preds = %bb.ab
  %.not17.i.i.i.i.i.i.i = icmp eq i32 %.val132.i, 1
  br i1 %.not17.i.i.i.i.i.i.i, label %"_ZN4llvm4sortIRNS_11SmallVectorISt4pairImNS_3mca13ResourceUsageEELj4EEEZNS3_L23initializeUsedResourcesERNS3_9InstrDescERKNS_16MCSchedClassDescERKNS_15MCSubtargetInfoENS_8ArrayRefImEEE3$_0EEvOT_T0_.exit.i", label %.lr.ph.i24.i.i.i.i.i.i

.lr.ph.i24.i.i.i.i.i.i:                           ; preds = %.preheader.i.i.i.i.i.i.i
  %.016.i23.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val.i, i64 24
  %i.ix = getelementptr inbounds nuw i8, ptr %.val.i, i64 8
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ap, %.lr.ph.i24.i.i.i.i.i.i
  %.019.i25.i.i.i.i.i.i = phi ptr [ %.016.i23.i.i.i.i.i.i, %.lr.ph.i24.i.i.i.i.i.i ], [ %.0.i38.i.i.i.i.i.i, %bb.ap ] ; 6 uses
  %.pn18.i26.i.i.i.i.i.i = phi ptr [ %.val.i, %.lr.ph.i24.i.i.i.i.i.i ], [ %.019.i25.i.i.i.i.i.i, %bb.ap ] ; 2 uses
  %.0.val.i27.i.i.i.i.i.i = load i64, ptr %.019.i25.i.i.i.i.i.i, align 8, !tbaa !164 ; 5 uses
  %.val.i28.i.i.i.i.i.i = load i64, ptr %.val.i, align 8, !tbaa !164 ; 2 uses
  %i.iy = insertelement <2 x i64> poison, i64 %.0.val.i27.i.i.i.i.i.i, i64 0
  %i.iz = insertelement <2 x i64> %i.iy, i64 %.val.i28.i.i.i.i.i.i, i64 1
  %i.ja = call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %i.iz) ; 2 uses
  %i.jb = extractelement <2 x i64> %i.ja, i64 0   ; 4 uses
  %i.jc = extractelement <2 x i64> %i.ja, i64 1   ; 2 uses
  %i.jd = icmp samesign ult i64 %i.jb, %i.jc
  %i.je = icmp samesign ule i64 %i.jb, %i.jc
  %i.jf = icmp ult i64 %.0.val.i27.i.i.i.i.i.i, %.val.i28.i.i.i.i.i.i
  %spec.select.i.i.i29.i.i.i.i.i.i = and i1 %i.jf, %i.je
  %.0.i.i.i30.i.i.i.i.i.i = select i1 %i.jd, i1 true, i1 %spec.select.i.i.i29.i.i.i.i.i.i
  %.sroa.4.0..0.sroa_idx.i31.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn18.i26.i.i.i.i.i.i, i64 32 ; 2 uses
  br i1 %.0.i.i.i30.i.i.i.i.i.i, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i22.i.i.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.i22.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..0.sroa_idx.i31.i.i.i.i.i.i, i64 16, i1 false)
  %i.jg = ptrtoint ptr %.019.i25.i.i.i.i.i.i to i64
  %i.jh = sub i64 %i.jg, %i.gx                    ; 2 uses
  %i.ji = icmp sgt i64 %i.jh, 0
  br i1 %i.ji, label %.lr.ph.preheader.i.i.i.i.i.i41.i.i.i.i.i.i, label %_ZSt13move_backwardIPSt4pairImN4llvm3mca13ResourceUsageEES5_ET0_T_S7_S6_.exit.i40.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i41.i.i.i.i.i.i:       ; preds = %bb.al
  %i.jj = getelementptr inbounds nuw i8, ptr %.pn18.i26.i.i.i.i.i.i, i64 48
  %i.jk = udiv exact i64 %i.jh, 24
  br label %.lr.ph.i.i.i.i.i.i42.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i42.i.i.i.i.i.i:                 ; preds = %.lr.ph.i.i.i.i.i.i42.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i41.i.i.i.i.i.i
  %.010.i.i.i.i.i.i43.i.i.i.i.i.i = phi i64 [ %i.jq, %.lr.ph.i.i.i.i.i.i42.i.i.i.i.i.i ], [ %i.jk, %.lr.ph.preheader.i.i.i.i.i.i41.i.i.i.i.i.i ] ; 2 uses
  %.069.i.i.i.i.i.i44.i.i.i.i.i.i = phi ptr [ %i.jm, %.lr.ph.i.i.i.i.i.i42.i.i.i.i.i.i ], [ %i.jj, %.lr.ph.preheader.i.i.i.i.i.i41.i.i.i.i.i.i ] ; 2 uses
  %.078.i.i.i.i.i.i45.i.i.i.i.i.i = phi ptr [ %i.jl, %.lr.ph.i.i.i.i.i.i42.i.i.i.i.i.i ], [ %.019.i25.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i41.i.i.i.i.i.i ] ; 2 uses
  %i.jl = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i45.i.i.i.i.i.i, i64 -24 ; 2 uses
  %i.jm = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i44.i.i.i.i.i.i, i64 -24 ; 2 uses
  %i.jn = load i64, ptr %i.jl, align 8, !tbaa !78
  store i64 %i.jn, ptr %i.jm, align 8, !tbaa !164
  %i.jo = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i45.i.i.i.i.i.i, i64 -16
  %i.jp = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i44.i.i.i.i.i.i, i64 -16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.jp, ptr noundef nonnull align 8 dereferenceable(16) %i.jo, i64 16, i1 false), !tbaa.struct !166
  %i.jq = add nsw i64 %.010.i.i.i.i.i.i43.i.i.i.i.i.i, -1
  %i.jr = icmp samesign ugt i64 %.010.i.i.i.i.i.i43.i.i.i.i.i.i, 1
  br i1 %i.jr, label %.lr.ph.i.i.i.i.i.i42.i.i.i.i.i.i, label %_ZSt13move_backwardIPSt4pairImN4llvm3mca13ResourceUsageEES5_ET0_T_S7_S6_.exit.i40.i.i.i.i.i.i, !llvm.loop !278

_ZSt13move_backwardIPSt4pairImN4llvm3mca13ResourceUsageEES5_ET0_T_S7_S6_.exit.i40.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i42.i.i.i.i.i.i, %bb.al
  store i64 %.0.val.i27.i.i.i.i.i.i, ptr %.val.i, align 8, !tbaa !164
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ix, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.i22.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !166
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i22.i.i.i.i.i.i)
  br label %bb.ap

bb.am:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i21.i.i.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i21.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..0.sroa_idx.i31.i.i.i.i.i.i, i64 16, i1 false)
  br label %bb.an

bb.an:                                            ; preds = %bb.ao, %bb.am
  %.09.i.i32.i.i.i.i.i.i = phi ptr [ %.019.i25.i.i.i.i.i.i, %bb.am ], [ %.0.i.i33.i.i.i.i.i.i, %bb.ao ] ; 6 uses
  %.0.i.i33.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.09.i.i32.i.i.i.i.i.i, i64 -24 ; 2 uses
  %.0.val.i.i34.i.i.i.i.i.i = load i64, ptr %.0.i.i33.i.i.i.i.i.i, align 8, !tbaa !164 ; 3 uses
  %i.js = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %.0.val.i.i34.i.i.i.i.i.i) ; 2 uses
  %i.jt = icmp samesign ult i64 %i.jb, %i.js
  %i.ju = icmp samesign ule i64 %i.jb, %i.js
  %i.jv = icmp ult i64 %.0.val.i27.i.i.i.i.i.i, %.0.val.i.i34.i.i.i.i.i.i
  %spec.select.i.i.i.i35.i.i.i.i.i.i = and i1 %i.jv, %i.ju
  %.0.i.i.i.i36.i.i.i.i.i.i = select i1 %i.jt, i1 true, i1 %spec.select.i.i.i.i35.i.i.i.i.i.i
  br i1 %.0.i.i.i.i36.i.i.i.i.i.i, label %bb.ao, label %"_ZSt25__unguarded_linear_insertIPSt4pairImN4llvm3mca13ResourceUsageEEN9__gnu_cxx5__ops14_Val_comp_iterIZNS2_L23initializeUsedResourcesERNS2_9InstrDescERKNS1_16MCSchedClassDescERKNS1_15MCSubtargetInfoENS1_8ArrayRefImEEE3$_0EEEvT_T0_.exit.i37.i.i.i.i.i.i"

bb.ao:                                            ; preds = %bb.an
  store i64 %.0.val.i.i34.i.i.i.i.i.i, ptr %.09.i.i32.i.i.i.i.i.i, align 8, !tbaa !164
  %i.jw = getelementptr inbounds i8, ptr %.09.i.i32.i.i.i.i.i.i, i64 -16
  %i.jx = getelementptr inbounds nuw i8, ptr %.09.i.i32.i.i.i.i.i.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.jx, ptr noundef nonnull align 8 dereferenceable(16) %i.jw, i64 16, i1 false), !tbaa.struct !166
  br label %bb.an, !llvm.loop !279

"_ZSt25__unguarded_linear_insertIPSt4pairImN4llvm3mca13ResourceUsageEEN9__gnu_cxx5__ops14_Val_comp_iterIZNS2_L23initializeUsedResourcesERNS2_9InstrDescERKNS1_16MCSchedClassDescERKNS1_15MCSubtargetInfoENS1_8ArrayRefImEEE3$_0EEEvT_T0_.exit.i37.i.i.i.i.i.i": ; preds = %bb.an
  store i64 %.0.val.i27.i.i.i.i.i.i, ptr %.09.i.i32.i.i.i.i.i.i, align 8, !tbaa !164
  %i.jy = getelementptr inbounds nuw i8, ptr %.09.i.i32.i.i.i.i.i.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.jy, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i21.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !166
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i21.i.i.i.i.i.i)
  br label %bb.ap

bb.ap:                                            ; preds = %"_ZSt25__unguarded_linear_insertIPSt4pairImN4llvm3mca13ResourceUsageEEN9__gnu_cxx5__ops14_Val_comp_iterIZNS2_L23initializeUsedResourcesERNS2_9InstrDescERKNS1_16MCSchedClassDescERKNS1_15MCSubtargetInfoENS1_8ArrayRefImEEE3$_0EEEvT_T0_.exit.i37.i.i.i.i.i.i", %_ZSt13move_backwardIPSt4pairImN4llvm3mca13ResourceUsageEES5_ET0_T_S7_S6_.exit.i40.i.i.i.i.i.i
  %.0.i38.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.019.i25.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i39.i.i.i.i.i.i = icmp eq ptr %.0.i38.i.i.i.i.i.i, %i.gv
  br i1 %.not.i39.i.i.i.i.i.i, label %"_ZN4llvm4sortIRNS_11SmallVectorISt4pairImNS_3mca13ResourceUsageEELj4EEEZNS3_L23initializeUsedResourcesERNS3_9InstrDescERKNS_16MCSchedClassDescERKNS_15MCSubtargetInfoENS_8ArrayRefImEEE3$_0EEvOT_T0_.exit.i", label %bb.ak, !llvm.loop !280

"_ZN4llvm4sortIRNS_11SmallVectorISt4pairImNS_3mca13ResourceUsageEELj4EEEZNS3_L23initializeUsedResourcesERNS3_9InstrDescERKNS_16MCSchedClassDescERKNS_15MCSubtargetInfoENS_8ArrayRefImEEE3$_0EEvOT_T0_.exit.i": ; preds = %bb.ap, %"_ZSt25__unguarded_linear_insertIPSt4pairImN4llvm3mca13ResourceUsageEEN9__gnu_cxx5__ops14_Val_comp_iterIZNS2_L23initializeUsedResourcesERNS2_9InstrDescERKNS1_16MCSchedClassDescERKNS1_15MCSubtargetInfoENS1_8ArrayRefImEEE3$_0EEEvT_T0_.exit.i19.i.i.i.i.i.i", %.preheader.i.i.i.i.i.i.i
  %.pr.i = load i32, ptr %i.ge, align 8, !tbaa !40 ; 3 uses
  %i.jz = load i8, ptr %i.gq, align 4
  %i.ka = and i8 %i.jz, -5
  store i8 %i.ka, ptr %i.gq, align 4
  %.not199.i = icmp eq i32 %.pr.i, 0
  br i1 %.not199.i, label %._crit_edge184.i, label %.lr.ph183.i

.lr.ph183.i:                                      ; preds = %"_ZN4llvm4sortIRNS_11SmallVectorISt4pairImNS_3mca13ResourceUsageEELj4EEEZNS3_L23initializeUsedResourcesERNS3_9InstrDescERKNS_16MCSchedClassDescERKNS_15MCSubtargetInfoENS_8ArrayRefImEEE3$_0EEvOT_T0_.exit.i"
  %i.kb = getelementptr inbounds nuw i8, ptr %i.bl, i64 144 ; 3 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %9, i64 20 ; 2 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  %i.kf = zext i32 %.pr.i to i64                  ; 2 uses
  br label %bb.ba

bb.aq:                                            ; preds = %bb.az, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.az ] ; 2 uses
  %.0115173.i = phi i8 [ 1, %.lr.ph.i ], [ %.2117.i, %bb.az ] ; 2 uses
  %.0118172.i = phi i8 [ 0, %.lr.ph.i ], [ %.2120.i, %bb.az ] ; 3 uses
  %i.kg = load ptr, ptr %i.gm, align 8, !tbaa !327
  %i.kh = load i16, ptr %i.gn, align 2, !tbaa !328
  %i.ki = zext i16 %i.kh to i64
  %i.kj = getelementptr inbounds nuw [6 x i8], ptr %i.kg, i64 %i.ki
  %i.kk = getelementptr inbounds nuw [6 x i8], ptr %i.kj, i64 %indvars.iv.i ; 2 uses
  %i.kl = load i16, ptr %i.kk, align 2, !tbaa !330 ; 2 uses
  %i.km = load ptr, ptr %i.go, align 8, !tbaa !331
  %i.kn = zext i16 %i.kl to i64                   ; 2 uses
  %i.ko = getelementptr inbounds nuw [32 x i8], ptr %i.km, i64 %i.kn
  %i.kp = getelementptr inbounds nuw i8, ptr %i.kk, i64 2 ; 3 uses
  %i.kq = load i16, ptr %i.kp, align 2, !tbaa !332
  %.not129.i = icmp eq i16 %i.kq, 0
  br i1 %.not129.i, label %bb.az, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.kr = zext i16 %i.kl to i32
  %i.ks = getelementptr inbounds nuw [8 x i8], ptr %i.ga, i64 %i.kn
  %i.kt = load i64, ptr %i.ks, align 8, !tbaa !78 ; 2 uses
  %i.ku = call noundef i32 @_ZNK4llvm12MCSchedModel21getResourceBufferSizeEj(ptr noundef nonnull align 8 dereferenceable(80) %i.gc, i32 noundef %i.kr) #16 ; 3 uses
  %i.kv = icmp slt i32 %i.ku, 0
  br i1 %i.kv, label %bb.av, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.kw = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.kt, i1 false)
  %i.kx = trunc nuw nsw i64 %i.kw to i32
  %i.ky = sub nsw i32 63, %i.kx                   ; 2 uses
  %i.kz = and i32 %i.ky, 63
  %i.la = zext nneg i32 %i.kz to i64
  %i.lb = shl nuw i64 1, %i.la                    ; 2 uses
  %i.lc = load i32, ptr %i.gi, align 8, !tbaa !160
  %i.ld = icmp ult i32 %i.lc, 65
  br i1 %i.ld, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.le = load i64, ptr %10, align 8, !tbaa !135
  %i.lf = or i64 %i.le, %i.lb
  store i64 %i.lf, ptr %10, align 8, !tbaa !135
  br label %_ZN4llvm5APInt6setBitEj.exit.i

bb.au:                                            ; preds = %bb.as
  %i.lg = load ptr, ptr %10, align 8, !tbaa !135
  %i.lh = lshr i32 %i.ky, 6
  %i.li = zext nneg i32 %i.lh to i64
  %i.lj = getelementptr inbounds nuw [8 x i8], ptr %i.lg, i64 %i.li ; 2 uses
  %i.lk = load i64, ptr %i.lj, align 8, !tbaa !78
  %i.ll = or i64 %i.lk, %i.lb
  store i64 %i.ll, ptr %i.lj, align 8, !tbaa !78
  br label %_ZN4llvm5APInt6setBitEj.exit.i

_ZN4llvm5APInt6setBitEj.exit.i:                   ; preds = %bb.au, %bb.at
  %i.lm = icmp eq i32 %i.ku, 0
  %i.ln = zext i1 %i.lm to i8
  %i.lo = or i8 %.0118172.i, %i.ln
  %i.lp = icmp samesign ult i32 %i.ku, 2
  %18 = select i1 %i.lp, i8 %.0115173.i, i8 0
  br label %bb.av

bb.av:                                            ; preds = %_ZN4llvm5APInt6setBitEj.exit.i, %bb.ar
  %.1119.i = phi i8 [ %i.lo, %_ZN4llvm5APInt6setBitEj.exit.i ], [ %.0118172.i, %bb.ar ] ; 2 uses
  %.1116.i = phi i8 [ %18, %_ZN4llvm5APInt6setBitEj.exit.i ], [ 0, %bb.ar ] ; 2 uses
  %i.lq = load i16, ptr %i.kp, align 2, !tbaa !332
  %.sroa.0153.4.insert.ext.i = zext i16 %i.lq to i64
  %.sroa.0153.4.insert.shift.i = shl nuw nsw i64 %.sroa.0153.4.insert.ext.i, 32
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #16
  store i64 %i.kt, ptr %11, align 8, !tbaa !164
  store i64 %.sroa.0153.4.insert.shift.i, ptr %i.gp, align 8
  store i8 0, ptr %.sroa.4150.0..sroa_idx.i, align 8, !tbaa !165
  store i32 1, ptr %.sroa.5152.0..sroa_idx.i, align 4, !tbaa !136
  %i.lr = load i32, ptr %i.ge, align 8, !tbaa !40 ; 2 uses
  %i.ls = load i32, ptr %i.gf, align 4, !tbaa !41
  %.not.i.i56 = icmp ult i32 %i.lr, %i.ls
  br i1 %.not.i.i56, label %bb.ax, label %bb.aw, !prof !167

bb.aw:                                            ; preds = %bb.av
  %i.lt = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN4llvm23SmallVectorTemplateBaseISt4pairImNS_3mca13ResourceUsageEELb1EE18growAndEmplaceBackIJS4_EEERS4_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(24) %11) ; 0 uses
  br label %_ZN4llvm15SmallVectorImplISt4pairImNS_3mca13ResourceUsageEEE12emplace_backIJS4_EEERS4_DpOT_.exit.i

bb.ax:                                            ; preds = %bb.av
  %i.lu = zext i32 %i.lr to i64
  %i.lv = load ptr, ptr %8, align 8, !tbaa !39
  %i.lw = getelementptr inbounds nuw [24 x i8], ptr %i.lv, i64 %i.lu
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.lw, ptr noundef nonnull align 8 dereferenceable(24) %11, i64 24, i1 false)
  %i.lx = load i32, ptr %i.ge, align 8, !tbaa !40
  %i.ly = add i32 %i.lx, 1
  store i32 %i.ly, ptr %i.ge, align 8, !tbaa !40
  br label %_ZN4llvm15SmallVectorImplISt4pairImNS_3mca13ResourceUsageEEE12emplace_backIJS4_EEERS4_DpOT_.exit.i

_ZN4llvm15SmallVectorImplISt4pairImNS_3mca13ResourceUsageEEE12emplace_backIJS4_EEERS4_DpOT_.exit.i: ; preds = %bb.ax, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #16
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ko, i64 12 ; 2 uses
  %i.ma = load i32, ptr %i.lz, align 4, !tbaa !334
  %.not130.i = icmp eq i32 %i.ma, 0
  br i1 %.not130.i, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %_ZN4llvm15SmallVectorImplISt4pairImNS_3mca13ResourceUsageEEE12emplace_backIJS4_EEERS4_DpOT_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #16
  %i.mb = load i32, ptr %i.lz, align 4, !tbaa !334
  %i.mc = zext i32 %i.mb to i64
  %i.md = getelementptr inbounds nuw [8 x i8], ptr %i.ga, i64 %i.mc
  %i.me = load i64, ptr %i.md, align 8, !tbaa !78
  store i64 %i.me, ptr %i.e, align 8, !tbaa !78
  %i.mf = load i16, ptr %i.kp, align 2, !tbaa !332
  %i.mg = zext i16 %i.mf to i32
  %i.mh = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapImjNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImjEEEEmjS3_S6_E24lookupOrInsertIntoBucketIRKmJEEESt4pairIPS6_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.e)
  %.fca.0.extract.i.i = extractvalue { ptr, i8 } %i.mh, 0
  %i.mi = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i, i64 8 ; 2 uses
  %i.mj = load i32, ptr %i.mi, align 4, !tbaa !136
  %i.mk = add i32 %i.mj, %i.mg
  store i32 %i.mk, ptr %i.mi, align 4, !tbaa !136
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #16
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %_ZN4llvm15SmallVectorImplISt4pairImNS_3mca13ResourceUsageEEE12emplace_backIJS4_EEERS4_DpOT_.exit.i, %bb.aq
  %.2120.i = phi i8 [ %.0118172.i, %bb.aq ], [ %.1119.i, %bb.ay ], [ %.1119.i, %_ZN4llvm15SmallVectorImplISt4pairImNS_3mca13ResourceUsageEEE12emplace_backIJS4_EEERS4_DpOT_.exit.i ] ; 2 uses
  %.2117.i = phi i8 [ %.0115173.i, %bb.aq ], [ %.1116.i, %bb.ay ], [ %.1116.i, %_ZN4llvm15SmallVectorImplISt4pairImNS_3mca13ResourceUsageEEE12emplace_backIJS4_EEERS4_DpOT_.exit.i ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.loopexit.i, label %bb.aq, !llvm.loop !282

._crit_edge184.i:                                 ; preds = %.loopexit.i, %"_ZN4llvm4sortIRNS_11SmallVectorISt4pairImNS_3mca13ResourceUsageEELj4EEEZNS3_L23initializeUsedResourcesERNS3_9InstrDescERKNS_16MCSchedClassDescERKNS_15MCSubtargetInfoENS_8ArrayRefImEEE3$_0EEvOT_T0_.exit.i", %"_ZN4llvm4sortIRNS_11SmallVectorISt4pairImNS_3mca13ResourceUsageEELj4EEEZNS3_L23initializeUsedResourcesERNS3_9InstrDescERKNS_16MCSchedClassDescERKNS_15MCSubtargetInfoENS_8ArrayRefImEEE3$_0EEvOT_T0_.exit.thread.i"
  %.0112.lcssa.i = phi i64 [ 0, %"_ZN4llvm4sortIRNS_11SmallVectorISt4pairImNS_3mca13ResourceUsageEELj4EEEZNS3_L23initializeUsedResourcesERNS3_9InstrDescERKNS_16MCSchedClassDescERKNS_15MCSubtargetInfoENS_8ArrayRefImEEE3$_0EEvOT_T0_.exit.i" ], [ 0, %"_ZN4llvm4sortIRNS_11SmallVectorISt4pairImNS_3mca13ResourceUsageEELj4EEEZNS3_L23initializeUsedResourcesERNS3_9InstrDescERKNS_16MCSchedClassDescERKNS_15MCSubtargetInfoENS_8ArrayRefImEEE3$_0EEvOT_T0_.exit.thread.i" ], [ %.2114.i, %.loopexit.i ]
  %.0109.lcssa.i = phi i64 [ 0, %"_ZN4llvm4sortIRNS_11SmallVectorISt4pairImNS_3mca13ResourceUsageEELj4EEEZNS3_L23initializeUsedResourcesERNS3_9InstrDescERKNS_16MCSchedClassDescERKNS_15MCSubtargetInfoENS_8ArrayRefImEEE3$_0EEvOT_T0_.exit.i" ], [ 0, %"_ZN4llvm4sortIRNS_11SmallVectorISt4pairImNS_3mca13ResourceUsageEELj4EEEZNS3_L23initializeUsedResourcesERNS3_9InstrDescERKNS_16MCSchedClassDescERKNS_15MCSubtargetInfoENS_8ArrayRefImEEE3$_0EEvOT_T0_.exit.thread.i" ], [ %.2111.i, %.loopexit.i ]
  %i.ml = load ptr, ptr %i.bs, align 8, !tbaa !39 ; 2 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %i.bl, i64 144 ; 2 uses
  %i.mn = load i32, ptr %i.mm, align 16, !tbaa !40 ; 2 uses
  %i.mo = zext i32 %i.mn to i64
  %.idx.i = mul nuw nsw i64 %i.mo, 24
  %i.mp = getelementptr inbounds nuw i8, ptr %i.ml, i64 %.idx.i
  %.not187.i = icmp eq i32 %i.mn, 0
  br i1 %.not187.i, label %._crit_edge191.i, label %.lr.ph190.i

bb.ba:                                            ; preds = %.loopexit.i, %.lr.ph183.i
  %indvars.iv213.i = phi i64 [ 0, %.lr.ph183.i ], [ %indvars.iv.next214.pre-phi.i, %.loopexit.i ] ; 3 uses
  %indvars.iv207.i = phi i64 [ 1, %.lr.ph183.i ], [ %indvars.iv.next208.i, %.loopexit.i ] ; 3 uses
  %.0108181.i = phi i64 [ 0, %.lr.ph183.i ], [ %.2.i, %.loopexit.i ] ; 4 uses
  %.0109180.i = phi i64 [ 0, %.lr.ph183.i ], [ %.2111.i, %.loopexit.i ] ; 3 uses
  %.0112179.i = phi i64 [ 0, %.lr.ph183.i ], [ %.2114.i, %.loopexit.i ] ; 3 uses
  %i.mq = load ptr, ptr %8, align 8, !tbaa !39
  %i.mr = getelementptr inbounds nuw [24 x i8], ptr %i.mq, i64 %indvars.iv213.i ; 8 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 8 ; 2 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %i.mr, i64 12 ; 2 uses
  %i.mu = load i32, ptr %i.mt, align 4, !tbaa !335
  %i.mv = load i32, ptr %i.ms, align 4, !tbaa !336
  %.not127.i = icmp eq i32 %i.mu, %i.mv
  br i1 %.not127.i, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.mw = load i64, ptr %i.mr, align 8, !tbaa !164 ; 2 uses
  %.not.i133.i = icmp eq i64 %i.mw, 0
  %i.mx = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.mw, i1 true)
  %i.my = lshr exact i64 -9223372036854775808, %i.mx
  %.0.i134.i = select i1 %.not.i133.i, i64 0, i64 %i.my
  %i.mz = or i64 %.0.i134.i, %.0109180.i
  %.pre228.i = add nuw nsw i64 %indvars.iv213.i, 1
  br label %.loopexit.i

bb.bc:                                            ; preds = %bb.ba
  %i.na = load i32, ptr %i.kb, align 16, !tbaa !40 ; 2 uses
  %i.nb = load i32, ptr %i.bu, align 4, !tbaa !41
  %.not.i135.i = icmp ult i32 %i.na, %i.nb
  br i1 %.not.i135.i, label %bb.be, label %bb.bd, !prof !167

bb.bd:                                            ; preds = %bb.bc
  %i.nc = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN4llvm23SmallVectorTemplateBaseISt4pairImNS_3mca13ResourceUsageEELb1EE18growAndEmplaceBackIJRS4_EEES7_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.bs, ptr noundef nonnull align 8 dereferenceable(24) %i.mr) ; 0 uses
  br label %_ZN4llvm15SmallVectorImplISt4pairImNS_3mca13ResourceUsageEEE12emplace_backIJRS4_EEES7_DpOT_.exit.i

bb.be:                                            ; preds = %bb.bc
  %i.nd = zext i32 %i.na to i64
  %i.ne = load ptr, ptr %i.bs, align 8, !tbaa !39
  %i.nf = getelementptr inbounds nuw [24 x i8], ptr %i.ne, i64 %i.nd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.nf, ptr noundef nonnull align 8 dereferenceable(24) %i.mr, i64 24, i1 false)
  %i.ng = load i32, ptr %i.kb, align 16, !tbaa !40
  %i.nh = add i32 %i.ng, 1
  store i32 %i.nh, ptr %i.kb, align 16, !tbaa !40
  br label %_ZN4llvm15SmallVectorImplISt4pairImNS_3mca13ResourceUsageEEE12emplace_backIJRS4_EEES7_DpOT_.exit.i

_ZN4llvm15SmallVectorImplISt4pairImNS_3mca13ResourceUsageEEE12emplace_backIJRS4_EEES7_DpOT_.exit.i: ; preds = %bb.be, %bb.bd
  %i.ni = load i64, ptr %i.mr, align 8, !tbaa !164 ; 8 uses
  %i.nj = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.ni)
  %i.nk = icmp eq i64 %i.nj, 1
  br i1 %i.nk, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %_ZN4llvm15SmallVectorImplISt4pairImNS_3mca13ResourceUsageEEE12emplace_backIJRS4_EEES7_DpOT_.exit.i
  %i.nl = or i64 %i.ni, %.0112179.i
  br label %bb.bj

bb.bg:                                            ; preds = %_ZN4llvm15SmallVectorImplISt4pairImNS_3mca13ResourceUsageEEE12emplace_backIJRS4_EEES7_DpOT_.exit.i
  %.not.i137.i = icmp eq i64 %i.ni, 0
  %i.nm = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ni, i1 true)
  %i.nn = lshr exact i64 -9223372036854775808, %i.nm
  %.0.i138.i = select i1 %.not.i137.i, i64 0, i64 %i.nn
  %i.no = xor i64 %.0.i138.i, %i.ni               ; 4 uses
  %i.np = and i64 %i.no, %.0108181.i
  %.not128.i = icmp eq i64 %i.np, 0
  br i1 %.not128.i, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.nq = load i8, ptr %i.gq, align 4
  %i.nr = or i8 %i.nq, 4
  store i8 %i.nr, ptr %i.gq, align 4
  %.pre.i = load i64, ptr %i.mr, align 8, !tbaa !164
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %i.ns = phi i64 [ %.pre.i, %bb.bh ], [ %i.ni, %bb.bg ] ; 2 uses
  %i.nt = or i64 %i.no, %.0108181.i
  %i.nu = xor i64 %i.ns, %i.no
  %i.nv = or i64 %i.nu, %.0109180.i
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bf
  %i.nw = phi i64 [ %i.ni, %bb.bf ], [ %i.ns, %bb.bi ] ; 2 uses
  %.1113.i = phi i64 [ %i.nl, %bb.bf ], [ %.0112179.i, %bb.bi ] ; 2 uses
  %.1110.i = phi i64 [ %.0109180.i, %bb.bf ], [ %i.nv, %bb.bi ] ; 2 uses
  %.1.i = phi i64 [ %.0108181.i, %bb.bf ], [ %i.nt, %bb.bi ] ; 2 uses
  %.0106.i = phi i64 [ %i.ni, %bb.bf ], [ %i.no, %bb.bi ] ; 2 uses
  %i.nx = add nuw nsw i64 %indvars.iv213.i, 1     ; 3 uses
  %i.ny = icmp samesign ult i64 %i.nx, %i.kf
  br i1 %i.ny, label %.lr.ph178.preheader.i, label %.loopexit.i

.lr.ph178.preheader.i:                            ; preds = %bb.bj
  %.pre225.i = load ptr, ptr %8, align 8, !tbaa !39
  br label %.lr.ph178.i

.lr.ph178.i:                                      ; preds = %bb.bq, %.lr.ph178.preheader.i
  %i.nz = phi i64 [ %i.nw, %.lr.ph178.preheader.i ], [ %i.sf, %bb.bq ] ; 3 uses
  %i.oa = phi i64 [ %i.nw, %.lr.ph178.preheader.i ], [ %i.sg, %bb.bq ] ; 4 uses
  %i.ob = phi ptr [ %.pre225.i, %.lr.ph178.preheader.i ], [ %i.sh, %bb.bq ] ; 4 uses
  %indvars.iv209.i = phi i64 [ %indvars.iv207.i, %.lr.ph178.preheader.i ], [ %indvars.iv.next210.i, %bb.bq ] ; 2 uses
  %i.oc = getelementptr inbounds nuw [24 x i8], ptr %i.ob, i64 %indvars.iv209.i ; 4 uses
  %i.od = load i64, ptr %i.oc, align 8, !tbaa !164 ; 2 uses
  %i.oe = and i64 %i.od, %.0106.i
  %i.of = icmp eq i64 %i.oe, %.0106.i
  br i1 %i.of, label %bb.bk, label %bb.bq

bb.bk:                                            ; preds = %.lr.ph178.i
  %i.og = load i32, ptr %i.mt, align 4, !tbaa !335
  %i.oh = load i32, ptr %i.ms, align 8, !tbaa !336
  %i.oi = load ptr, ptr %9, align 8, !tbaa !170, !noalias !337 ; 3 uses
  %i.oj = load ptr, ptr %i.kc, align 8, !tbaa !171, !noalias !337 ; 3 uses
  %i.ok = load i32, ptr %i.kd, align 4, !tbaa !172, !noalias !337 ; 4 uses
  %i.ol = icmp eq i32 %i.ok, 0
  br i1 %i.ol, label %.loopexit.i.i, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.om = add i32 %i.ok, -1                       ; 2 uses
  %i.on = mul i64 %i.oa, -4658895280553007687     ; 2 uses
  %i.oo = lshr i64 %i.on, 31
  %i.op = xor i64 %i.oo, %i.on
  %i.oq = trunc i64 %i.op to i32
  %i.or = and i32 %i.om, %i.oq                    ; 3 uses
  %i.os = zext i32 %i.or to i64                   ; 2 uses
  %i.ot = getelementptr inbounds nuw [16 x i8], ptr %i.oi, i64 %i.os ; 2 uses
  %i.ou = lshr i64 %i.os, 5
  %i.ov = getelementptr inbounds nuw [4 x i8], ptr %i.oj, i64 %i.ou
  %i.ow = load i32, ptr %i.ov, align 4, !tbaa !136
  %i.ox = and i32 %i.or, 31
  %i.oy = lshr i32 %i.ow, %i.ox
  %i.oz = trunc i32 %i.oy to i1
  br i1 %i.oz, label %.lr.ph.i.i145.i, label %.loopexit.i.i, !prof !173

.lr.ph.i.i145.i:                                  ; preds = %bb.bl, %bb.bm
  %i.pa = phi ptr [ %i.pg, %bb.bm ], [ %i.ot, %bb.bl ] ; 2 uses
  %.024.i.i.i = phi i32 [ %i.pe, %bb.bm ], [ %i.or, %bb.bl ]
  %i.pb = load i64, ptr %i.pa, align 8, !tbaa !78
  %i.pc = icmp eq i64 %i.oa, %i.pb
  br i1 %i.pc, label %_ZN4llvm12DenseMapBaseINS_8DenseMapImjNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImjEEEEmjS3_S6_E24lookupOrInsertIntoBucketIRKmJEEESt4pairIPS6_bEOT_DpOT0_.exit.loopexit.i, label %bb.bm, !prof !167

bb.bm:                                            ; preds = %.lr.ph.i.i145.i
  %i.pd = add nuw i32 %.024.i.i.i, 1
  %i.pe = and i32 %i.pd, %i.om                    ; 3 uses
  %i.pf = zext i32 %i.pe to i64                   ; 2 uses
  %i.pg = getelementptr inbounds nuw [16 x i8], ptr %i.oi, i64 %i.pf ; 2 uses
  %i.ph = lshr i64 %i.pf, 5
  %i.pi = getelementptr inbounds nuw [4 x i8], ptr %i.oj, i64 %i.ph
  %i.pj = load i32, ptr %i.pi, align 4, !tbaa !136
  %i.pk = and i32 %i.pe, 31
  %i.pl = lshr i32 %i.pj, %i.pk
  %i.pm = trunc i32 %i.pl to i1
  br i1 %i.pm, label %.lr.ph.i.i145.i, label %.loopexit.i.i, !prof !174, !llvm.loop !0

.loopexit.i.i:                                    ; preds = %bb.bm, %bb.bl, %bb.bk
  %.lcssa28.sink.i.ph.i.i = phi ptr [ %i.ot, %bb.bl ], [ null, %bb.bk ], [ %i.pg, %bb.bm ]
  %i.pn = load i32, ptr %i.ke, align 8, !tbaa !175
  %i.po = shl i32 %i.pn, 2
  %i.pp = add i32 %i.po, 4
  %i.pq = mul i32 %i.ok, 3
  %.not.i.i144.i = icmp ult i32 %i.pp, %i.pq
  br i1 %.not.i.i144.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapImjNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImjEEEEmjS3_S6_E22findBucketForInsertionImEEPS6_RKT_SA_.exit.i.i, label %bb.bn, !prof !167

bb.bn:                                            ; preds = %.loopexit.i.i
  %i.pr = shl i32 %i.ok, 1
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapImjNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImjEEEEmjS3_S6_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %9, i32 noundef %i.pr)
  %i.ps = load ptr, ptr %9, align 8, !tbaa !170, !noalias !338 ; 5 uses
  %i.pt = load ptr, ptr %i.kc, align 8, !tbaa !171, !noalias !338 ; 5 uses
  %i.pu = load i32, ptr %i.kd, align 4, !tbaa !172, !noalias !338 ; 2 uses
  %i.pv = icmp ne i32 %i.pu, 0
  call void @llvm.assume(i1 %i.pv)
  %i.pw = add i32 %i.pu, -1                       ; 2 uses
  %i.px = load i64, ptr %i.mr, align 8, !tbaa !78 ; 5 uses
  %i.py = mul i64 %i.px, -4658895280553007687     ; 2 uses
  %i.pz = lshr i64 %i.py, 31
  %i.qa = xor i64 %i.pz, %i.py
  %i.qb = trunc i64 %i.qa to i32
  %i.qc = and i32 %i.pw, %i.qb                    ; 3 uses
  %i.qd = zext i32 %i.qc to i64                   ; 2 uses
  %i.qe = getelementptr inbounds nuw [16 x i8], ptr %i.ps, i64 %i.qd ; 2 uses
  %i.qf = lshr i64 %i.qd, 5
  %i.qg = getelementptr inbounds nuw [4 x i8], ptr %i.pt, i64 %i.qf
  %i.qh = load i32, ptr %i.qg, align 4, !tbaa !136
  %i.qi = and i32 %i.qc, 31
  %i.qj = lshr i32 %i.qh, %i.qi
  %i.qk = trunc i32 %i.qj to i1
  %.pre224.i = load ptr, ptr %8, align 8, !tbaa !39 ; 3 uses
  br i1 %i.qk, label %.lr.ph.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapImjNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImjEEEEmjS3_S6_E22findBucketForInsertionImEEPS6_RKT_SA_.exit.i.i, !prof !173
end_hunk_0
