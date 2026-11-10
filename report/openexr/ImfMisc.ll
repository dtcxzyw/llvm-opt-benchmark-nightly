Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openexr/original/ImfMisc?download=true
inline.NumInlined: 360
inline.NumDeleted: 159
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 30
loop-unroll.NumUnrolled: 70
begin_hunk_0_@_ZN7Imf_3_423copyIntoDeepFrameBufferERPKcPcS1_lliiiiiiilllbdNS_10Compressor6FormatENS_9PixelTypeES6_:bb.a

.lr.ph1203:                                       ; preds = %.lr.ph1203, %.lr.ph1203.preheader.new
  %.07041201 = phi ptr [ %i.dd, %.lr.ph1203.preheader.new ], [ %i.dr, %.lr.ph1203 ] ; 2 uses
  %niter2407 = phi i32 [ 0, %.lr.ph1203.preheader.new ], [ %niter2407.next.7, %.lr.ph1203 ]
  store i16 %.033.i.i, ptr %.07041201, align 2, !tbaa !37
  %i.dk = getelementptr inbounds i8, ptr %.07041201, i64 %12 ; 2 uses
  store i16 %.033.i.i, ptr %i.dk, align 2, !tbaa !37
  %i.dl = getelementptr inbounds i8, ptr %i.dk, i64 %12 ; 2 uses
  store i16 %.033.i.i, ptr %i.dl, align 2, !tbaa !37
  %i.dm = getelementptr inbounds i8, ptr %i.dl, i64 %12 ; 2 uses
  store i16 %.033.i.i, ptr %i.dm, align 2, !tbaa !37
  %i.dn = getelementptr inbounds i8, ptr %i.dm, i64 %12 ; 2 uses
  store i16 %.033.i.i, ptr %i.dn, align 2, !tbaa !37
  %i.do = getelementptr inbounds i8, ptr %i.dn, i64 %12 ; 2 uses
  store i16 %.033.i.i, ptr %i.do, align 2, !tbaa !37
  %i.dp = getelementptr inbounds i8, ptr %i.do, i64 %12 ; 2 uses
  store i16 %.033.i.i, ptr %i.dp, align 2, !tbaa !37
  %i.dq = getelementptr inbounds i8, ptr %i.dp, i64 %12 ; 2 uses
  store i16 %.033.i.i, ptr %i.dq, align 2, !tbaa !37
  %i.dr = getelementptr inbounds i8, ptr %i.dq, i64 %12 ; 2 uses
  %niter2407.next.7 = add nuw nsw i32 %niter2407, 8 ; 2 uses
  %niter2407.ncmp.7 = icmp eq i32 %niter2407.next.7, %unroll_iter2406
  br i1 %niter2407.ncmp.7, label %.loopexit982.loopexit.unr-lcssa, label %.lr.ph1203, !llvm.loop !100

.loopexit982.loopexit.unr-lcssa:                  ; preds = %.lr.ph1203
  %lcmp.mod2404.not = icmp eq i32 %xtraiter2402, 0
  br i1 %lcmp.mod2404.not, label %.loopexit982, label %.lr.ph1203.epil.preheader

.lr.ph1203.epil.preheader:                        ; preds = %.loopexit982.loopexit.unr-lcssa, %.lr.ph1203.preheader
  %.07041201.epil.init = phi ptr [ %i.dd, %.lr.ph1203.preheader ], [ %i.dr, %.loopexit982.loopexit.unr-lcssa ]
  %lcmp.mod2405 = icmp ne i32 %xtraiter2402, 0
  tail call void @llvm.assume(i1 %lcmp.mod2405)
  br label %.lr.ph1203.epil

.lr.ph1203.epil:                                  ; preds = %.lr.ph1203.epil, %.lr.ph1203.epil.preheader
  %.07041201.epil = phi ptr [ %i.ds, %.lr.ph1203.epil ], [ %.07041201.epil.init, %.lr.ph1203.epil.preheader ] ; 2 uses
  %epil.iter2403 = phi i32 [ %epil.iter2403.next, %.lr.ph1203.epil ], [ 0, %.lr.ph1203.epil.preheader ]
  store i16 %.033.i.i, ptr %.07041201.epil, align 2, !tbaa !37
  %i.ds = getelementptr inbounds i8, ptr %.07041201.epil, i64 %12
  %epil.iter2403.next = add i32 %epil.iter2403, 1 ; 2 uses
  %epil.iter2403.cmp.not = icmp eq i32 %epil.iter2403.next, %xtraiter2402
  br i1 %epil.iter2403.cmp.not, label %.loopexit982, label %.lr.ph1203.epil, !llvm.loop !101

.loopexit982:                                     ; preds = %.loopexit982.loopexit.unr-lcssa, %.lr.ph1203.epil, %bb.r, %bb.q
  %indvars.iv.next1364 = add nsw i64 %indvars.iv1363, 1 ; 2 uses
  %lftr.wideiv1366 = trunc i64 %indvars.iv.next1364 to i32
  %exitcond1367.not = icmp eq i32 %i.cz, %lftr.wideiv1366
  br i1 %exitcond1367.not, label %.loopexit981, label %bb.q, !llvm.loop !102

bb.s:                                             ; preds = %bb.b
  %i.dt = fptrunc double %16 to float             ; 9 uses
  %.not7611198 = icmp sgt i32 %6, %7
  br i1 %.not7611198, label %.loopexit981, label %.lr.ph1200

.lr.ph1200:                                       ; preds = %bb.s
  %i.du = sub nsw i32 %5, %11
  %i.dv = sext i32 %i.du to i64
  %i.dw = mul nsw i64 %14, %i.dv
  %i.dx = getelementptr inbounds i8, ptr %1, i64 %i.dw
  %i.dy = sub nsw i32 %5, %9
  %i.dz = sext i32 %i.dy to i64
  %i.ea = shl i64 %4, 32
  %i.eb = ashr exact i64 %i.ea, 32
  %i.ec = mul nsw i64 %i.eb, %i.dz
  %i.ed = getelementptr inbounds i8, ptr %2, i64 %i.ec
  %i.ee = shl i64 %3, 32
  %i.ef = ashr exact i64 %i.ee, 32
  %i.eg = sext i32 %6 to i64
  %i.eh = sext i32 %10 to i64
  %i.ei = sext i32 %8 to i64
  %i.ej = add i32 %7, 1
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph1200, %.loopexit984
  %indvars.iv1357 = phi i64 [ %i.eg, %.lr.ph1200 ], [ %indvars.iv.next1358, %.loopexit984 ] ; 3 uses
  %i.ek = sub nsw i64 %indvars.iv1357, %i.eh
  %i.el = mul nsw i64 %13, %i.ek
  %i.em = getelementptr inbounds i8, ptr %i.dx, i64 %i.el
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !41 ; 3 uses
  %.not762 = icmp eq ptr %i.en, null
  br i1 %.not762, label %.loopexit984, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.eo = sub nsw i64 %indvars.iv1357, %i.ei
  %i.ep = mul nsw i64 %i.ef, %i.eo
  %i.eq = getelementptr inbounds i8, ptr %i.ed, i64 %i.ep
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !32 ; 4 uses
  %i.es = icmp sgt i32 %i.er, 0
  br i1 %i.es, label %.lr.ph1197.preheader, label %.loopexit984

.lr.ph1197.preheader:                             ; preds = %bb.u
  %xtraiter2396 = and i32 %i.er, 7                ; 3 uses
  %i.et = icmp ult i32 %i.er, 8
  br i1 %i.et, label %.lr.ph1197.epil.preheader, label %.lr.ph1197.preheader.new

.lr.ph1197.preheader.new:                         ; preds = %.lr.ph1197.preheader
  %unroll_iter2400 = and i32 %i.er, 2147483640
  br label %.lr.ph1197

.lr.ph1197:                                       ; preds = %.lr.ph1197, %.lr.ph1197.preheader.new
  %.07011195 = phi ptr [ %i.en, %.lr.ph1197.preheader.new ], [ %i.fb, %.lr.ph1197 ] ; 2 uses
  %niter2401 = phi i32 [ 0, %.lr.ph1197.preheader.new ], [ %niter2401.next.7, %.lr.ph1197 ]
  store float %i.dt, ptr %.07011195, align 4, !tbaa !39
  %i.eu = getelementptr inbounds i8, ptr %.07011195, i64 %12 ; 2 uses
  store float %i.dt, ptr %i.eu, align 4, !tbaa !39
  %i.ev = getelementptr inbounds i8, ptr %i.eu, i64 %12 ; 2 uses
  store float %i.dt, ptr %i.ev, align 4, !tbaa !39
  %i.ew = getelementptr inbounds i8, ptr %i.ev, i64 %12 ; 2 uses
  store float %i.dt, ptr %i.ew, align 4, !tbaa !39
  %i.ex = getelementptr inbounds i8, ptr %i.ew, i64 %12 ; 2 uses
  store float %i.dt, ptr %i.ex, align 4, !tbaa !39
  %i.ey = getelementptr inbounds i8, ptr %i.ex, i64 %12 ; 2 uses
  store float %i.dt, ptr %i.ey, align 4, !tbaa !39
  %i.ez = getelementptr inbounds i8, ptr %i.ey, i64 %12 ; 2 uses
  store float %i.dt, ptr %i.ez, align 4, !tbaa !39
  %i.fa = getelementptr inbounds i8, ptr %i.ez, i64 %12 ; 2 uses
  store float %i.dt, ptr %i.fa, align 4, !tbaa !39
  %i.fb = getelementptr inbounds i8, ptr %i.fa, i64 %12 ; 2 uses
  %niter2401.next.7 = add nuw nsw i32 %niter2401, 8 ; 2 uses
  %niter2401.ncmp.7 = icmp eq i32 %niter2401.next.7, %unroll_iter2400
  br i1 %niter2401.ncmp.7, label %.loopexit984.loopexit.unr-lcssa, label %.lr.ph1197, !llvm.loop !103

.loopexit984.loopexit.unr-lcssa:                  ; preds = %.lr.ph1197
  %lcmp.mod2398.not.a = icmp eq i32 %xtraiter2396, 0
  br i1 %lcmp.mod2398.not.a, label %.loopexit984, label %.lr.ph1197.epil.preheader

.lr.ph1197.epil.preheader:                        ; preds = %.loopexit984.loopexit.unr-lcssa, %.lr.ph1197.preheader
  %.07011195.epil.init = phi ptr [ %i.en, %.lr.ph1197.preheader ], [ %i.fb, %.loopexit984.loopexit.unr-lcssa ]
  %lcmp.mod2399 = icmp ne i32 %xtraiter2396, 0
  tail call void @llvm.assume(i1 %lcmp.mod2399)
  br label %.lr.ph1197.epil

.lr.ph1197.epil:                                  ; preds = %.lr.ph1197.epil, %.lr.ph1197.epil.preheader
  %.07011195.epil = phi ptr [ %i.fc, %.lr.ph1197.epil ], [ %.07011195.epil.init, %.lr.ph1197.epil.preheader ] ; 2 uses
  %epil.iter2397 = phi i32 [ %epil.iter2397.next, %.lr.ph1197.epil ], [ 0, %.lr.ph1197.epil.preheader ]
  store float %i.dt, ptr %.07011195.epil, align 4, !tbaa !39
  %i.fc = getelementptr inbounds i8, ptr %.07011195.epil, i64 %12
  %epil.iter2397.next = add i32 %epil.iter2397, 1 ; 2 uses
  %epil.iter2397.cmp.not = icmp eq i32 %epil.iter2397.next, %xtraiter2396
  br i1 %epil.iter2397.cmp.not, label %.loopexit984, label %.lr.ph1197.epil, !llvm.loop !104

.loopexit984:                                     ; preds = %.loopexit984.loopexit.unr-lcssa, %.lr.ph1197.epil, %bb.u, %bb.t
  %indvars.iv.next1358 = add nsw i64 %indvars.iv1357, 1 ; 2 uses
  %lftr.wideiv1360 = trunc i64 %indvars.iv.next1358 to i32
  %exitcond1361.not = icmp eq i32 %i.ej, %lftr.wideiv1360
  br i1 %exitcond1361.not, label %.loopexit981, label %bb.t, !llvm.loop !105

bb.v:                                             ; preds = %bb.b
  %i.fd = tail call ptr @__cxa_allocate_exception(i64 72) #19 ; 3 uses
  invoke void @_ZN7Iex_3_46ArgExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.fd, ptr noundef nonnull @.str.9)
          to label %bb.w unwind label %bb.x

bb.w:                                             ; preds = %bb.v
  tail call void @__cxa_throw(ptr nonnull %i.fd, ptr nonnull @_ZTIN7Iex_3_46ArgExcE, ptr nonnull @_ZN7Iex_3_46ArgExcD1Ev) #20
  unreachable

bb.x:                                             ; preds = %bb.v
  %i.fe = landingpad { ptr, i32 }
          cleanup
  br label %bb.da

bb.y:                                             ; preds = %bb.a
  %i.ff = icmp eq i32 %17, 1
  br i1 %i.ff, label %bb.z, label %bb.bm

bb.z:                                             ; preds = %bb.y
  switch i32 %18, label %bb.bj [
    i32 0, label %bb.aa
    i32 1, label %bb.al
    i32 2, label %bb.aw
  ]

bb.aa:                                            ; preds = %bb.z
  switch i32 %19, label %bb.ai [
    i32 0, label %.preheader987
    i32 1, label %.preheader991
    i32 2, label %.preheader995
  ]

.preheader995:                                    ; preds = %bb.aa
  %.not7551179 = icmp sgt i32 %6, %7
  br i1 %.not7551179, label %.loopexit981, label %.lr.ph1181

.lr.ph1181:                                       ; preds = %.preheader995
  %i.fg = sub nsw i32 %5, %11
  %i.fh = sext i32 %i.fg to i64
  %i.fi = mul nsw i64 %14, %i.fh
  %i.fj = getelementptr inbounds i8, ptr %1, i64 %i.fi
  %i.fk = sub nsw i32 %5, %9
  %i.fl = sext i32 %i.fk to i64
  %i.fm = shl i64 %4, 32
  %i.fn = ashr exact i64 %i.fm, 32
  %i.fo = mul nsw i64 %i.fn, %i.fl
  %i.fp = getelementptr inbounds i8, ptr %2, i64 %i.fo
  %i.fq = shl i64 %3, 32
  %i.fr = ashr exact i64 %i.fq, 32
  %i.fs = sext i32 %6 to i64
  %i.ft = sext i32 %10 to i64
  %i.fu = sext i32 %8 to i64
  %i.fv = add i32 %7, 1
  %scevgep2029 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %scevgep2073 = getelementptr inbounds nuw i8, ptr %i.g, i64 1024 ; 2 uses
  %bound02076 = icmp ult ptr %0, %scevgep2073
  %bound12077 = icmp ult ptr %i.g, %scevgep2029
  %found.conflict2078 = and i1 %bound02076, %bound12077
  %bound12034 = icmp ult ptr %i.g, %scevgep2029
  br label %bb.ag

.preheader991:                                    ; preds = %bb.aa
  %.not7571185 = icmp sgt i32 %6, %7
  br i1 %.not7571185, label %.loopexit981, label %.lr.ph1187

.lr.ph1187:                                       ; preds = %.preheader991
  %i.fw = sub nsw i32 %5, %11
  %i.fx = sext i32 %i.fw to i64
  %i.fy = mul nsw i64 %14, %i.fx
  %i.fz = getelementptr inbounds i8, ptr %1, i64 %i.fy
  %i.ga = sub nsw i32 %5, %9
  %i.gb = sext i32 %i.ga to i64
  %i.gc = shl i64 %4, 32
  %i.gd = ashr exact i64 %i.gc, 32
  %i.ge = mul nsw i64 %i.gd, %i.gb
  %i.gf = getelementptr inbounds i8, ptr %2, i64 %i.ge
  %i.gg = shl i64 %3, 32
  %i.gh = ashr exact i64 %i.gg, 32
  %i.gi = sext i32 %6 to i64
  %i.gj = sext i32 %10 to i64
  %i.gk = sext i32 %8 to i64
  %i.gl = add i32 %7, 1
  %scevgep2114 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %scevgep2158 = getelementptr inbounds nuw i8, ptr %i.h, i64 1024 ; 2 uses
  %bound02161 = icmp ult ptr %0, %scevgep2158
  %bound12162 = icmp ult ptr %i.h, %scevgep2114
  %found.conflict2163 = and i1 %bound02161, %bound12162
  %bound12119 = icmp ult ptr %i.h, %scevgep2114
  br label %bb.ae

.preheader987:                                    ; preds = %bb.aa
  %.not7591192 = icmp sgt i32 %6, %7
  br i1 %.not7591192, label %.loopexit981, label %.lr.ph1194

.lr.ph1194:                                       ; preds = %.preheader987
  %i.gm = sub nsw i32 %5, %11
  %i.gn = sext i32 %i.gm to i64
  %i.go = mul nsw i64 %14, %i.gn
  %i.gp = getelementptr inbounds i8, ptr %1, i64 %i.go
  %i.gq = sub nsw i32 %5, %9
  %i.gr = sext i32 %i.gq to i64
  %i.gs = shl i64 %4, 32
  %i.gt = ashr exact i64 %i.gs, 32
  %i.gu = mul nsw i64 %i.gt, %i.gr
  %i.gv = getelementptr inbounds i8, ptr %2, i64 %i.gu
  %i.gw = shl i64 %3, 32
  %i.gx = ashr exact i64 %i.gw, 32
  %i.gy = sext i32 %6 to i64
  %i.gz = sext i32 %10 to i64
  %i.ha = sext i32 %8 to i64
  %i.hb = add i32 %7, 1
  %scevgep2199 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %scevgep2243 = getelementptr inbounds nuw i8, ptr %i.i, i64 1024 ; 2 uses
  %bound02246 = icmp ult ptr %0, %scevgep2243
  %bound12247 = icmp ult ptr %i.i, %scevgep2199
  %found.conflict2248 = and i1 %bound02246, %bound12247
  %bound12204 = icmp ult ptr %i.i, %scevgep2199
  br label %bb.ab

bb.ab:                                            ; preds = %.lr.ph1194, %.loopexit986
  %indvars.iv1351 = phi i64 [ %i.gy, %.lr.ph1194 ], [ %indvars.iv.next1352, %.loopexit986 ] ; 3 uses
  %i.hc = sub nsw i64 %indvars.iv1351, %i.gz
  %i.hd = mul nsw i64 %13, %i.hc
  %i.he = getelementptr inbounds i8, ptr %i.gp, i64 %i.hd
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !41 ; 2 uses
  %i.hg = sub nsw i64 %indvars.iv1351, %i.ha
  %i.hh = mul nsw i64 %i.gx, %i.hg
  %i.hi = getelementptr inbounds i8, ptr %i.gv, i64 %i.hh
  %i.hj = load i32, ptr %i.hi, align 4, !tbaa !32 ; 4 uses
  %.not760 = icmp eq ptr %i.hf, null
  br i1 %.not760, label %bb.ad, label %.preheader

.preheader:                                       ; preds = %bb.ab
  %i.hk = icmp sgt i32 %i.hj, 0
  br i1 %i.hk, label %.lr.ph1190, label %.loopexit986

.lr.ph1190:                                       ; preds = %.preheader
  %.promoted1191 = load ptr, ptr %0, align 8, !tbaa !41
  br label %bb.ac

bb.ac:                                            ; preds = %.lr.ph1190, %bb.ac
  %i.hl = phi ptr [ %.promoted1191, %.lr.ph1190 ], [ %i.hs, %bb.ac ] ; 5 uses
  %.06951189 = phi i32 [ 0, %.lr.ph1190 ], [ %i.hv, %bb.ac ]
  %.06961188 = phi ptr [ %i.hf, %.lr.ph1190 ], [ %i.hu, %bb.ac ] ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 1 ; 2 uses
  store ptr %i.hm, ptr %0, align 8, !tbaa !41
  %i.hn = load i8, ptr %i.hl, align 1, !tbaa !42
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hl, i64 2 ; 2 uses
  store ptr %i.ho, ptr %0, align 8, !tbaa !41
  %i.hp = load i8, ptr %i.hm, align 1, !tbaa !42
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hl, i64 3 ; 2 uses
  store ptr %i.hq, ptr %0, align 8, !tbaa !41
  %i.hr = load i8, ptr %i.ho, align 1, !tbaa !42
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hl, i64 4 ; 2 uses
  store ptr %i.hs, ptr %0, align 8, !tbaa !41
  %i.ht = load i8, ptr %i.hq, align 1, !tbaa !42
  %.sroa.6.0.insert.ext.i = zext i8 %i.ht to i32
  %.sroa.6.0.insert.shift.i = shl nuw i32 %.sroa.6.0.insert.ext.i, 24
  %.sroa.5.0.insert.ext.i = zext i8 %i.hr to i32
  %.sroa.5.0.insert.shift.i = shl nuw nsw i32 %.sroa.5.0.insert.ext.i, 16
  %.sroa.4.0.insert.ext.i = zext i8 %i.hp to i32
  %.sroa.4.0.insert.shift.i = shl nuw nsw i32 %.sroa.4.0.insert.ext.i, 8
  %.sroa.0.0.insert.ext.i = zext i8 %i.hn to i32
  %.sroa.5.0.insert.insert.i = or disjoint i32 %.sroa.4.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  %.sroa.4.0.insert.insert.i = or disjoint i32 %.sroa.5.0.insert.insert.i, %.sroa.5.0.insert.shift.i
  %.sroa.0.0.insert.insert.i = or disjoint i32 %.sroa.4.0.insert.insert.i, %.sroa.6.0.insert.shift.i
  store i32 %.sroa.0.0.insert.insert.i, ptr %.06961188, align 4, !tbaa !32
  %i.hu = getelementptr inbounds i8, ptr %.06961188, i64 %12
  %i.hv = add nuw nsw i32 %.06951189, 1           ; 2 uses
  %exitcond1350.not = icmp eq i32 %i.hv, %i.hj
  br i1 %exitcond1350.not, label %.loopexit986, label %bb.ac, !llvm.loop !106

bb.ad:                                            ; preds = %bb.ab
  %i.hw = shl nsw i32 %i.hj, 2                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #19
  %.promoted10.i = load ptr, ptr %0, align 8      ; 2 uses
  %i.hx = icmp sgt i32 %i.hj, 255
  br i1 %i.hx, label %vector.memcheck2245, label %._crit_edge.i

vector.memcheck2245:                              ; preds = %bb.ad, %_ZN7Imf_3_49CharPtrIO9readCharsERPKcPci.exit.i
  %.013.i = phi i32 [ %i.iz, %_ZN7Imf_3_49CharPtrIO9readCharsERPKcPci.exit.i ], [ %i.hw, %bb.ad ] ; 2 uses
  %.promoted1112.i = phi ptr [ %.lcssa, %_ZN7Imf_3_49CharPtrIO9readCharsERPKcPci.exit.i ], [ %.promoted10.i, %bb.ad ] ; 10 uses
  %i.hy = getelementptr i8, ptr %.promoted1112.i, i64 1024 ; 2 uses
  %bound02249 = icmp ult ptr %0, %i.hy
  %bound12250 = icmp ult ptr %.promoted1112.i, %scevgep2199
  %found.conflict2251 = and i1 %bound02249, %bound12250
  %conflict.rdx2252 = or i1 %found.conflict2248, %found.conflict2251
  %bound02253 = icmp ult ptr %i.i, %i.hy
  %bound12254 = icmp ult ptr %.promoted1112.i, %scevgep2243
  %found.conflict2255 = and i1 %bound02253, %bound12254
  %conflict.rdx2256 = or i1 %conflict.rdx2252, %found.conflict2255
  br i1 %conflict.rdx2256, label %.lr.ph.i.i, label %vector.ph2257

vector.ph2257:                                    ; preds = %vector.memcheck2245
  %i.hz = getelementptr i8, ptr %.promoted1112.i, i64 1024
  br label %vector.body2258

vector.body2258:                                  ; preds = %vector.body2258, %vector.ph2257
  %index2259 = phi i64 [ 0, %vector.ph2257 ], [ %index.next2265.3, %vector.body2258 ] ; 6 uses
  %next.gep2260 = getelementptr i8, ptr %.promoted1112.i, i64 %index2259 ; 2 uses
  %next.gep2262 = getelementptr i8, ptr %i.i, i64 %index2259 ; 2 uses
  %i.ia = getelementptr i8, ptr %next.gep2260, i64 2
  %wide.load2263 = load <2 x i8>, ptr %next.gep2260, align 1, !tbaa !42, !alias.scope !262
  %wide.load2264 = load <2 x i8>, ptr %i.ia, align 1, !tbaa !42, !alias.scope !262
  %i.ib = getelementptr i8, ptr %next.gep2262, i64 2
  store <2 x i8> %wide.load2263, ptr %next.gep2262, align 16, !tbaa !42, !alias.scope !263, !noalias !262
  store <2 x i8> %wide.load2264, ptr %i.ib, align 2, !tbaa !42, !alias.scope !263, !noalias !262
  %index.next2265 = or disjoint i64 %index2259, 4 ; 2 uses
  %next.gep2260.1 = getelementptr i8, ptr %.promoted1112.i, i64 %index.next2265 ; 2 uses
  %next.gep2262.1 = getelementptr i8, ptr %i.i, i64 %index.next2265 ; 2 uses
  %i.ic = getelementptr i8, ptr %next.gep2260.1, i64 2
  %wide.load2263.1 = load <2 x i8>, ptr %next.gep2260.1, align 1, !tbaa !42, !alias.scope !262
  %wide.load2264.1 = load <2 x i8>, ptr %i.ic, align 1, !tbaa !42, !alias.scope !262
  %i.id = getelementptr i8, ptr %next.gep2262.1, i64 2
  store <2 x i8> %wide.load2263.1, ptr %next.gep2262.1, align 4, !tbaa !42, !alias.scope !263, !noalias !262
  store <2 x i8> %wide.load2264.1, ptr %i.id, align 2, !tbaa !42, !alias.scope !263, !noalias !262
  %index.next2265.1 = or disjoint i64 %index2259, 8 ; 2 uses
  %next.gep2260.2 = getelementptr i8, ptr %.promoted1112.i, i64 %index.next2265.1 ; 2 uses
  %next.gep2262.2 = getelementptr i8, ptr %i.i, i64 %index.next2265.1 ; 2 uses
  %i.ie = getelementptr i8, ptr %next.gep2260.2, i64 2
  %wide.load2263.2 = load <2 x i8>, ptr %next.gep2260.2, align 1, !tbaa !42, !alias.scope !262
  %wide.load2264.2 = load <2 x i8>, ptr %i.ie, align 1, !tbaa !42, !alias.scope !262
  %i.if = getelementptr i8, ptr %next.gep2262.2, i64 2
  store <2 x i8> %wide.load2263.2, ptr %next.gep2262.2, align 8, !tbaa !42, !alias.scope !263, !noalias !262
  store <2 x i8> %wide.load2264.2, ptr %i.if, align 2, !tbaa !42, !alias.scope !263, !noalias !262
  %index.next2265.2 = or disjoint i64 %index2259, 12 ; 3 uses
  %next.gep2260.3 = getelementptr i8, ptr %.promoted1112.i, i64 %index.next2265.2 ; 2 uses
  %next.gep2262.3 = getelementptr i8, ptr %i.i, i64 %index.next2265.2 ; 2 uses
  %i.ig = getelementptr i8, ptr %next.gep2260.3, i64 2
  %wide.load2263.3 = load <2 x i8>, ptr %next.gep2260.3, align 1, !tbaa !42, !alias.scope !262
  %wide.load2264.3 = load <2 x i8>, ptr %i.ig, align 1, !tbaa !42, !alias.scope !262
  %i.ih = getelementptr i8, ptr %next.gep2262.3, i64 2
  store <2 x i8> %wide.load2263.3, ptr %next.gep2262.3, align 4, !tbaa !42, !alias.scope !263, !noalias !262
  store <2 x i8> %wide.load2264.3, ptr %i.ih, align 2, !tbaa !42, !alias.scope !263, !noalias !262
  %index.next2265.3 = add nuw nsw i64 %index2259, 16 ; 2 uses
  %i.ii = icmp eq i64 %index.next2265.3, 1024
  br i1 %i.ii, label %middle.block2266, label %vector.body2258, !llvm.loop !110

middle.block2266:                                 ; preds = %vector.body2258
  %i.ij = getelementptr i8, ptr %.promoted1112.i, i64 %index.next2265.2
  %i.ik = getelementptr i8, ptr %i.ij, i64 4
  store ptr %i.ik, ptr %0, align 8, !tbaa !41, !alias.scope !264, !noalias !265
  br label %_ZN7Imf_3_49CharPtrIO9readCharsERPKcPci.exit.i

.lr.ph.i.i:                                       ; preds = %vector.memcheck2245, %.lr.ph.i.i
  %i.il = phi ptr [ %i.iw, %.lr.ph.i.i ], [ %.promoted1112.i, %vector.memcheck2245 ] ; 5 uses
  %.05.i.i = phi i32 [ %i.iv, %.lr.ph.i.i ], [ 1024, %vector.memcheck2245 ]
  %.024.i.i = phi ptr [ %i.iy, %.lr.ph.i.i ], [ %i.i, %vector.memcheck2245 ] ; 5 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 1 ; 2 uses
  store ptr %i.im, ptr %0, align 8, !tbaa !41
  %i.in = load i8, ptr %i.il, align 1, !tbaa !42
  %i.io = getelementptr inbounds nuw i8, ptr %.024.i.i, i64 1
  store i8 %i.in, ptr %.024.i.i, align 1, !tbaa !42
  %i.ip = getelementptr inbounds nuw i8, ptr %i.il, i64 2 ; 2 uses
  store ptr %i.ip, ptr %0, align 8, !tbaa !41
  %i.iq = load i8, ptr %i.im, align 1, !tbaa !42
  %i.ir = getelementptr inbounds nuw i8, ptr %.024.i.i, i64 2
  store i8 %i.iq, ptr %i.io, align 1, !tbaa !42
  %i.is = getelementptr inbounds nuw i8, ptr %i.il, i64 3 ; 2 uses
  store ptr %i.is, ptr %0, align 8, !tbaa !41
  %i.it = load i8, ptr %i.ip, align 1, !tbaa !42
  %i.iu = getelementptr inbounds nuw i8, ptr %.024.i.i, i64 3
  store i8 %i.it, ptr %i.ir, align 1, !tbaa !42
  %i.iv = add nsw i32 %.05.i.i, -4                ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.il, i64 4 ; 3 uses
  store ptr %i.iw, ptr %0, align 8, !tbaa !41
  %i.ix = load i8, ptr %i.is, align 1, !tbaa !42
  %i.iy = getelementptr inbounds nuw i8, ptr %.024.i.i, i64 4
  store i8 %i.ix, ptr %i.iu, align 1, !tbaa !42
  %.not.i.i769.3 = icmp eq i32 %i.iv, 0
  br i1 %.not.i.i769.3, label %_ZN7Imf_3_49CharPtrIO9readCharsERPKcPci.exit.i, label %.lr.ph.i.i, !llvm.loop !112

_ZN7Imf_3_49CharPtrIO9readCharsERPKcPci.exit.i:   ; preds = %.lr.ph.i.i, %middle.block2266
  %.lcssa = phi ptr [ %i.hz, %middle.block2266 ], [ %i.iw, %.lr.ph.i.i ] ; 2 uses
  %i.iz = add nsw i32 %.013.i, -1024              ; 2 uses
  %i.ja = icmp sgt i32 %.013.i, 2047
  br i1 %i.ja, label %vector.memcheck2245, label %._crit_edge.i, !llvm.loop !1

._crit_edge.i:                                    ; preds = %_ZN7Imf_3_49CharPtrIO9readCharsERPKcPci.exit.i, %bb.ad
  %.promoted.i768 = phi ptr [ %.promoted10.i, %bb.ad ], [ %.lcssa, %_ZN7Imf_3_49CharPtrIO9readCharsERPKcPci.exit.i ] ; 8 uses
  %.0.lcssa.i = phi i32 [ %i.hw, %bb.ad ], [ %i.iz, %_ZN7Imf_3_49CharPtrIO9readCharsERPKcPci.exit.i ] ; 7 uses
  %i.jb = icmp sgt i32 %.0.lcssa.i, 0
  br i1 %i.jb, label %.lr.ph.i5.i.preheader, label %_ZN7Imf_3_43Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit

.lr.ph.i5.i.preheader:                            ; preds = %._crit_edge.i
  %i.jc = zext nneg i32 %.0.lcssa.i to i64        ; 2 uses
  %min.iters.check2201 = icmp ult i32 %.0.lcssa.i, 12
  br i1 %min.iters.check2201, label %.lr.ph.i5.i.preheader2269, label %vector.memcheck2202

vector.memcheck2202:                              ; preds = %.lr.ph.i5.i.preheader
  %i.jd = zext nneg i32 %.0.lcssa.i to i64        ; 2 uses
  %i.je = getelementptr i8, ptr %i.i, i64 %i.jd   ; 2 uses
  %i.jf = getelementptr i8, ptr %.promoted.i768, i64 %i.jd ; 2 uses
  %bound02203 = icmp ult ptr %0, %i.je
  %found.conflict2205 = and i1 %bound02203, %bound12204
  %bound02206 = icmp ult ptr %0, %i.jf
  %bound12207 = icmp ult ptr %.promoted.i768, %scevgep2199
  %found.conflict2208 = and i1 %bound02206, %bound12207
  %conflict.rdx2209 = or i1 %found.conflict2205, %found.conflict2208
  %bound02210 = icmp ult ptr %i.i, %i.jf
  %bound12211 = icmp ult ptr %.promoted.i768, %i.je
  %found.conflict2212 = and i1 %bound02210, %bound12211
  %conflict.rdx2213 = or i1 %conflict.rdx2209, %found.conflict2212
  br i1 %conflict.rdx2213, label %.lr.ph.i5.i.preheader2269, label %vector.ph2214

vector.ph2214:                                    ; preds = %vector.memcheck2202
  %n.vec2215 = and i64 %i.jc, 2147483644          ; 5 uses
  %i.jg = getelementptr i8, ptr %.promoted.i768, i64 %n.vec2215
  %i.jh = trunc nuw nsw i64 %n.vec2215 to i32
  %i.ji = sub nsw i32 %.0.lcssa.i, %i.jh
  %i.jj = getelementptr i8, ptr %i.i, i64 %n.vec2215
  br label %vector.body2216

vector.body2216:                                  ; preds = %vector.body2216, %vector.ph2214
  %index2217 = phi i64 [ 0, %vector.ph2214 ], [ %index.next2223, %vector.body2216 ] ; 4 uses
  %next.gep2218 = getelementptr i8, ptr %.promoted.i768, i64 %index2217 ; 2 uses
  %next.gep2220 = getelementptr i8, ptr %i.i, i64 %index2217 ; 2 uses
  %i.jk = getelementptr i8, ptr %next.gep2218, i64 2
  %wide.load2221 = load <2 x i8>, ptr %next.gep2218, align 1, !tbaa !42, !alias.scope !266
  %wide.load2222 = load <2 x i8>, ptr %i.jk, align 1, !tbaa !42, !alias.scope !266
  %i.jl = getelementptr i8, ptr %next.gep2220, i64 2
  store <2 x i8> %wide.load2221, ptr %next.gep2220, align 4, !tbaa !42, !alias.scope !267, !noalias !266
  store <2 x i8> %wide.load2222, ptr %i.jl, align 2, !tbaa !42, !alias.scope !267, !noalias !266
  %index.next2223 = add nuw i64 %index2217, 4     ; 2 uses
  %i.jm = icmp eq i64 %index.next2223, %n.vec2215
  br i1 %i.jm, label %middle.block2224, label %vector.body2216, !llvm.loop !116

middle.block2224:                                 ; preds = %vector.body2216
  %i.jn = getelementptr i8, ptr %.promoted.i768, i64 %index2217
  %i.jo = getelementptr i8, ptr %i.jn, i64 4
  store ptr %i.jo, ptr %0, align 8, !tbaa !41, !alias.scope !268, !noalias !269
  %cmp.n2225 = icmp eq i64 %n.vec2215, %i.jc
  br i1 %cmp.n2225, label %_ZN7Imf_3_43Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit, label %.lr.ph.i5.i.preheader2269

.lr.ph.i5.i.preheader2269:                        ; preds = %vector.memcheck2202, %.lr.ph.i5.i.preheader, %middle.block2224
  %.ph = phi ptr [ %.promoted.i768, %vector.memcheck2202 ], [ %.promoted.i768, %.lr.ph.i5.i.preheader ], [ %i.jg, %middle.block2224 ] ; 2 uses
  %.05.i6.i.ph = phi i32 [ %.0.lcssa.i, %vector.memcheck2202 ], [ %.0.lcssa.i, %.lr.ph.i5.i.preheader ], [ %i.ji, %middle.block2224 ] ; 4 uses
  %.024.i7.i.ph = phi ptr [ %i.i, %vector.memcheck2202 ], [ %i.i, %.lr.ph.i5.i.preheader ], [ %i.jj, %middle.block2224 ] ; 2 uses
  %i.jp = add nsw i32 %.05.i6.i.ph, -1
  %xtraiter2392 = and i32 %.05.i6.i.ph, 3         ; 2 uses
  %lcmp.mod2393.not = icmp eq i32 %xtraiter2392, 0
  br i1 %lcmp.mod2393.not, label %.lr.ph.i5.i.prol.loopexit, label %.lr.ph.i5.i.prol

.lr.ph.i5.i.prol:                                 ; preds = %.lr.ph.i5.i.preheader2269, %.lr.ph.i5.i.prol
  %i.jq = phi ptr [ %i.js, %.lr.ph.i5.i.prol ], [ %.ph, %.lr.ph.i5.i.preheader2269 ] ; 2 uses
  %.05.i6.i.prol = phi i32 [ %i.jr, %.lr.ph.i5.i.prol ], [ %.05.i6.i.ph, %.lr.ph.i5.i.preheader2269 ]
  %.024.i7.i.prol = phi ptr [ %i.ju, %.lr.ph.i5.i.prol ], [ %.024.i7.i.ph, %.lr.ph.i5.i.preheader2269 ] ; 2 uses
  %prol.iter2394 = phi i32 [ %prol.iter2394.next, %.lr.ph.i5.i.prol ], [ 0, %.lr.ph.i5.i.preheader2269 ]
  %i.jr = add nsw i32 %.05.i6.i.prol, -1          ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %i.jq, i64 1 ; 3 uses
  store ptr %i.js, ptr %0, align 8, !tbaa !41
  %i.jt = load i8, ptr %i.jq, align 1, !tbaa !42
  %i.ju = getelementptr inbounds nuw i8, ptr %.024.i7.i.prol, i64 1 ; 2 uses
  store i8 %i.jt, ptr %.024.i7.i.prol, align 1, !tbaa !42
  %prol.iter2394.next = add i32 %prol.iter2394, 1 ; 2 uses
  %prol.iter2394.cmp.not = icmp eq i32 %prol.iter2394.next, %xtraiter2392
  br i1 %prol.iter2394.cmp.not, label %.lr.ph.i5.i.prol.loopexit, label %.lr.ph.i5.i.prol, !llvm.loop !118

.lr.ph.i5.i.prol.loopexit:                        ; preds = %.lr.ph.i5.i.prol, %.lr.ph.i5.i.preheader2269
  %.unr2395 = phi ptr [ %.ph, %.lr.ph.i5.i.preheader2269 ], [ %i.js, %.lr.ph.i5.i.prol ]
  %.05.i6.i.unr = phi i32 [ %.05.i6.i.ph, %.lr.ph.i5.i.preheader2269 ], [ %i.jr, %.lr.ph.i5.i.prol ]
  %.024.i7.i.unr = phi ptr [ %.024.i7.i.ph, %.lr.ph.i5.i.preheader2269 ], [ %i.ju, %.lr.ph.i5.i.prol ]
  %i.jv = icmp ult i32 %i.jp, 3
  br i1 %i.jv, label %_ZN7Imf_3_43Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit, label %.lr.ph.i5.i

.lr.ph.i5.i:                                      ; preds = %.lr.ph.i5.i.prol.loopexit, %.lr.ph.i5.i
  %i.jw = phi ptr [ %i.kh, %.lr.ph.i5.i ], [ %.unr2395, %.lr.ph.i5.i.prol.loopexit ] ; 5 uses
  %.05.i6.i = phi i32 [ %i.kg, %.lr.ph.i5.i ], [ %.05.i6.i.unr, %.lr.ph.i5.i.prol.loopexit ]
  %.024.i7.i = phi ptr [ %i.kj, %.lr.ph.i5.i ], [ %.024.i7.i.unr, %.lr.ph.i5.i.prol.loopexit ] ; 5 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 1 ; 2 uses
  store ptr %i.jx, ptr %0, align 8, !tbaa !41
  %i.jy = load i8, ptr %i.jw, align 1, !tbaa !42
  %i.jz = getelementptr inbounds nuw i8, ptr %.024.i7.i, i64 1
  store i8 %i.jy, ptr %.024.i7.i, align 1, !tbaa !42
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jw, i64 2 ; 2 uses
  store ptr %i.ka, ptr %0, align 8, !tbaa !41
  %i.kb = load i8, ptr %i.jx, align 1, !tbaa !42
  %i.kc = getelementptr inbounds nuw i8, ptr %.024.i7.i, i64 2
  store i8 %i.kb, ptr %i.jz, align 1, !tbaa !42
  %i.kd = getelementptr inbounds nuw i8, ptr %i.jw, i64 3 ; 2 uses
  store ptr %i.kd, ptr %0, align 8, !tbaa !41
  %i.ke = load i8, ptr %i.ka, align 1, !tbaa !42
  %i.kf = getelementptr inbounds nuw i8, ptr %.024.i7.i, i64 3
  store i8 %i.ke, ptr %i.kc, align 1, !tbaa !42
  %i.kg = add nsw i32 %.05.i6.i, -4               ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %i.jw, i64 4 ; 2 uses
  store ptr %i.kh, ptr %0, align 8, !tbaa !41
  %i.ki = load i8, ptr %i.kd, align 1, !tbaa !42
  %i.kj = getelementptr inbounds nuw i8, ptr %.024.i7.i, i64 4
  store i8 %i.ki, ptr %i.kf, align 1, !tbaa !42
  %.not.i8.i.3 = icmp eq i32 %i.kg, 0
  br i1 %.not.i8.i.3, label %_ZN7Imf_3_43Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit, label %.lr.ph.i5.i, !llvm.loop !119

_ZN7Imf_3_43Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit: ; preds = %.lr.ph.i5.i.prol.loopexit, %.lr.ph.i5.i, %middle.block2224, %._crit_edge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #19
  br label %.loopexit986

.loopexit986:                                     ; preds = %bb.ac, %.preheader, %_ZN7Imf_3_43Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit
  %indvars.iv.next1352 = add nsw i64 %indvars.iv1351, 1 ; 2 uses
  %lftr.wideiv1354 = trunc i64 %indvars.iv.next1352 to i32
  %exitcond1355.not = icmp eq i32 %i.hb, %lftr.wideiv1354
  br i1 %exitcond1355.not, label %.loopexit981, label %bb.ab, !llvm.loop !120

bb.ae:                                            ; preds = %.lr.ph1187, %.loopexit990
  %indvars.iv1345 = phi i64 [ %i.gi, %.lr.ph1187 ], [ %indvars.iv.next1346, %.loopexit990 ] ; 3 uses
  %i.kk = sub nsw i64 %indvars.iv1345, %i.gj
  %i.kl = mul nsw i64 %13, %i.kk
  %i.km = getelementptr inbounds i8, ptr %i.fz, i64 %i.kl
  %i.kn = load ptr, ptr %i.km, align 8, !tbaa !41 ; 2 uses
  %i.ko = sub nsw i64 %indvars.iv1345, %i.gk
  %i.kp = mul nsw i64 %i.gh, %i.ko
  %i.kq = getelementptr inbounds i8, ptr %i.gf, i64 %i.kp
  %i.kr = load i32, ptr %i.kq, align 4, !tbaa !32 ; 4 uses
  %.not758 = icmp eq ptr %i.kn, null
  br i1 %.not758, label %bb.af, label %.preheader989

.preheader989:                                    ; preds = %bb.ae
  %i.ks = icmp sgt i32 %i.kr, 0
  br i1 %i.ks, label %.lr.ph1184, label %.loopexit990

.lr.ph1184:                                       ; preds = %.preheader989, %.lr.ph1184
  %.06921183 = phi i32 [ %i.kz, %.lr.ph1184 ], [ 0, %.preheader989 ]
  %.06931182 = phi ptr [ %i.ky, %.lr.ph1184 ], [ %i.kn, %.preheader989 ] ; 2 uses
  %.promoted.i770 = load ptr, ptr %0, align 8, !tbaa !41 ; 3 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %.promoted.i770, i64 1 ; 2 uses
  store ptr %i.kt, ptr %0, align 8, !tbaa !41
  %i.ku = load i8, ptr %.promoted.i770, align 1, !tbaa !42
  %i.kv = getelementptr inbounds nuw i8, ptr %.promoted.i770, i64 2
  store ptr %i.kv, ptr %0, align 8, !tbaa !41
  %i.kw = load i8, ptr %i.kt, align 1, !tbaa !42
  %.sroa.4.0.insert.ext.i771 = zext i8 %i.kw to i16
  %.sroa.4.0.insert.shift.i772 = shl nuw i16 %.sroa.4.0.insert.ext.i771, 8
  %.sroa.0.0.insert.ext.i773 = zext i8 %i.ku to i16
  %.sroa.0.0.insert.insert.i774 = or disjoint i16 %.sroa.4.0.insert.shift.i772, %.sroa.0.0.insert.ext.i773
  %i.kx = tail call noundef i32 @_ZN7Imf_3_410halfToUintEN9Imath_3_24halfE(i16 %.sroa.0.0.insert.insert.i774)
  store i32 %i.kx, ptr %.06931182, align 4, !tbaa !32
  %i.ky = getelementptr inbounds i8, ptr %.06931182, i64 %12
  %i.kz = add nuw nsw i32 %.06921183, 1           ; 2 uses
  %exitcond1344.not = icmp eq i32 %i.kz, %i.kr
  br i1 %exitcond1344.not, label %.loopexit990, label %.lr.ph1184, !llvm.loop !121

bb.af:                                            ; preds = %bb.ae
  %i.la = shl nsw i32 %i.kr, 1                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #19
  %.promoted10.i775 = load ptr, ptr %0, align 8   ; 2 uses
  %i.lb = icmp sgt i32 %i.kr, 511
  br i1 %i.lb, label %vector.memcheck2160, label %._crit_edge.i776

vector.memcheck2160:                              ; preds = %bb.af, %_ZN7Imf_3_49CharPtrIO9readCharsERPKcPci.exit.i790
  %.013.i784 = phi i32 [ %i.md, %_ZN7Imf_3_49CharPtrIO9readCharsERPKcPci.exit.i790 ], [ %i.la, %bb.af ] ; 2 uses
  %.promoted1112.i785 = phi ptr [ %.lcssa1509, %_ZN7Imf_3_49CharPtrIO9readCharsERPKcPci.exit.i790 ], [ %.promoted10.i775, %bb.af ] ; 10 uses
  %i.lc = getelementptr i8, ptr %.promoted1112.i785, i64 1024 ; 2 uses
  %bound02164 = icmp ult ptr %0, %i.lc
  %bound12165 = icmp ult ptr %.promoted1112.i785, %scevgep2114
  %found.conflict2166 = and i1 %bound02164, %bound12165
  %conflict.rdx2167 = or i1 %found.conflict2163, %found.conflict2166
  %bound02168 = icmp ult ptr %i.h, %i.lc
  %bound12169 = icmp ult ptr %.promoted1112.i785, %scevgep2158
  %found.conflict2170 = and i1 %bound02168, %bound12169
  %conflict.rdx2171 = or i1 %conflict.rdx2167, %found.conflict2170
  br i1 %conflict.rdx2171, label %.lr.ph.i.i786, label %vector.ph2172

vector.ph2172:                                    ; preds = %vector.memcheck2160
  %i.ld = getelementptr i8, ptr %.promoted1112.i785, i64 1024
  br label %vector.body2173

vector.body2173:                                  ; preds = %vector.body2173, %vector.ph2172
  %index2174 = phi i64 [ 0, %vector.ph2172 ], [ %index.next2180.3, %vector.body2173 ] ; 6 uses
  %next.gep2175 = getelementptr i8, ptr %.promoted1112.i785, i64 %index2174 ; 2 uses
  %next.gep2177 = getelementptr i8, ptr %i.h, i64 %index2174 ; 2 uses
  %i.le = getelementptr i8, ptr %next.gep2175, i64 2
  %wide.load2178 = load <2 x i8>, ptr %next.gep2175, align 1, !tbaa !42, !alias.scope !270
  %wide.load2179 = load <2 x i8>, ptr %i.le, align 1, !tbaa !42, !alias.scope !270
  %i.lf = getelementptr i8, ptr %next.gep2177, i64 2
  store <2 x i8> %wide.load2178, ptr %next.gep2177, align 16, !tbaa !42, !alias.scope !271, !noalias !270
  store <2 x i8> %wide.load2179, ptr %i.lf, align 2, !tbaa !42, !alias.scope !271, !noalias !270
  %index.next2180 = or disjoint i64 %index2174, 4 ; 2 uses
  %next.gep2175.1 = getelementptr i8, ptr %.promoted1112.i785, i64 %index.next2180 ; 2 uses
  %next.gep2177.1 = getelementptr i8, ptr %i.h, i64 %index.next2180 ; 2 uses
  %i.lg = getelementptr i8, ptr %next.gep2175.1, i64 2
  %wide.load2178.1 = load <2 x i8>, ptr %next.gep2175.1, align 1, !tbaa !42, !alias.scope !270
  %wide.load2179.1 = load <2 x i8>, ptr %i.lg, align 1, !tbaa !42, !alias.scope !270
  %i.lh = getelementptr i8, ptr %next.gep2177.1, i64 2
  store <2 x i8> %wide.load2178.1, ptr %next.gep2177.1, align 4, !tbaa !42, !alias.scope !271, !noalias !270
  store <2 x i8> %wide.load2179.1, ptr %i.lh, align 2, !tbaa !42, !alias.scope !271, !noalias !270
  %index.next2180.1 = or disjoint i64 %index2174, 8 ; 2 uses
  %next.gep2175.2 = getelementptr i8, ptr %.promoted1112.i785, i64 %index.next2180.1 ; 2 uses
  %next.gep2177.2 = getelementptr i8, ptr %i.h, i64 %index.next2180.1 ; 2 uses
  %i.li = getelementptr i8, ptr %next.gep2175.2, i64 2
  %wide.load2178.2 = load <2 x i8>, ptr %next.gep2175.2, align 1, !tbaa !42, !alias.scope !270
  %wide.load2179.2 = load <2 x i8>, ptr %i.li, align 1, !tbaa !42, !alias.scope !270
  %i.lj = getelementptr i8, ptr %next.gep2177.2, i64 2
  store <2 x i8> %wide.load2178.2, ptr %next.gep2177.2, align 8, !tbaa !42, !alias.scope !271, !noalias !270
  store <2 x i8> %wide.load2179.2, ptr %i.lj, align 2, !tbaa !42, !alias.scope !271, !noalias !270
  %index.next2180.2 = or disjoint i64 %index2174, 12 ; 3 uses
  %next.gep2175.3 = getelementptr i8, ptr %.promoted1112.i785, i64 %index.next2180.2 ; 2 uses
  %next.gep2177.3 = getelementptr i8, ptr %i.h, i64 %index.next2180.2 ; 2 uses
  %i.lk = getelementptr i8, ptr %next.gep2175.3, i64 2
  %wide.load2178.3 = load <2 x i8>, ptr %next.gep2175.3, align 1, !tbaa !42, !alias.scope !270
  %wide.load2179.3 = load <2 x i8>, ptr %i.lk, align 1, !tbaa !42, !alias.scope !270
  %i.ll = getelementptr i8, ptr %next.gep2177.3, i64 2
  store <2 x i8> %wide.load2178.3, ptr %next.gep2177.3, align 4, !tbaa !42, !alias.scope !271, !noalias !270
  store <2 x i8> %wide.load2179.3, ptr %i.ll, align 2, !tbaa !42, !alias.scope !271, !noalias !270
  %index.next2180.3 = add nuw nsw i64 %index2174, 16 ; 2 uses
  %i.lm = icmp eq i64 %index.next2180.3, 1024
  br i1 %i.lm, label %middle.block2181, label %vector.body2173, !llvm.loop !125

middle.block2181:                                 ; preds = %vector.body2173
  %i.ln = getelementptr i8, ptr %.promoted1112.i785, i64 %index.next2180.2
  %i.lo = getelementptr i8, ptr %i.ln, i64 4
  store ptr %i.lo, ptr %0, align 8, !tbaa !41, !alias.scope !272, !noalias !273
  br label %_ZN7Imf_3_49CharPtrIO9readCharsERPKcPci.exit.i790

.lr.ph.i.i786:                                    ; preds = %vector.memcheck2160, %.lr.ph.i.i786
  %i.lp = phi ptr [ %i.ma, %.lr.ph.i.i786 ], [ %.promoted1112.i785, %vector.memcheck2160 ] ; 5 uses
  %.05.i.i787 = phi i32 [ %i.lz, %.lr.ph.i.i786 ], [ 1024, %vector.memcheck2160 ]
  %.024.i.i788 = phi ptr [ %i.mc, %.lr.ph.i.i786 ], [ %i.h, %vector.memcheck2160 ] ; 5 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 1 ; 2 uses
  store ptr %i.lq, ptr %0, align 8, !tbaa !41
  %i.lr = load i8, ptr %i.lp, align 1, !tbaa !42
  %i.ls = getelementptr inbounds nuw i8, ptr %.024.i.i788, i64 1
  store i8 %i.lr, ptr %.024.i.i788, align 1, !tbaa !42
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lp, i64 2 ; 2 uses
  store ptr %i.lt, ptr %0, align 8, !tbaa !41
  %i.lu = load i8, ptr %i.lq, align 1, !tbaa !42
  %i.lv = getelementptr inbounds nuw i8, ptr %.024.i.i788, i64 2
  store i8 %i.lu, ptr %i.ls, align 1, !tbaa !42
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lp, i64 3 ; 2 uses
  store ptr %i.lw, ptr %0, align 8, !tbaa !41
  %i.lx = load i8, ptr %i.lt, align 1, !tbaa !42
  %i.ly = getelementptr inbounds nuw i8, ptr %.024.i.i788, i64 3
  store i8 %i.lx, ptr %i.lv, align 1, !tbaa !42
  %i.lz = add nsw i32 %.05.i.i787, -4             ; 2 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lp, i64 4 ; 3 uses
  store ptr %i.ma, ptr %0, align 8, !tbaa !41
  %i.mb = load i8, ptr %i.lw, align 1, !tbaa !42
  %i.mc = getelementptr inbounds nuw i8, ptr %.024.i.i788, i64 4
  store i8 %i.mb, ptr %i.ly, align 1, !tbaa !42
  %.not.i.i789.3 = icmp eq i32 %i.lz, 0
  br i1 %.not.i.i789.3, label %_ZN7Imf_3_49CharPtrIO9readCharsERPKcPci.exit.i790, label %.lr.ph.i.i786, !llvm.loop !127

_ZN7Imf_3_49CharPtrIO9readCharsERPKcPci.exit.i790: ; preds = %.lr.ph.i.i786, %middle.block2181
  %.lcssa1509 = phi ptr [ %i.ld, %middle.block2181 ], [ %i.ma, %.lr.ph.i.i786 ] ; 2 uses
  %i.md = add nsw i32 %.013.i784, -1024           ; 2 uses
  %i.me = icmp sgt i32 %.013.i784, 2047
  br i1 %i.me, label %vector.memcheck2160, label %._crit_edge.i776, !llvm.loop !1

._crit_edge.i776:                                 ; preds = %_ZN7Imf_3_49CharPtrIO9readCharsERPKcPci.exit.i790, %bb.af
  %.promoted.i777 = phi ptr [ %.promoted10.i775, %bb.af ], [ %.lcssa1509, %_ZN7Imf_3_49CharPtrIO9readCharsERPKcPci.exit.i790 ] ; 8 uses
  %.0.lcssa.i778 = phi i32 [ %i.la, %bb.af ], [ %i.md, %_ZN7Imf_3_49CharPtrIO9readCharsERPKcPci.exit.i790 ] ; 7 uses
  %i.mf = icmp sgt i32 %.0.lcssa.i778, 0
  br i1 %i.mf, label %.lr.ph.i5.i779.preheader, label %_ZN7Imf_3_43Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit791

.lr.ph.i5.i779.preheader:                         ; preds = %._crit_edge.i776
  %i.mg = zext nneg i32 %.0.lcssa.i778 to i64     ; 2 uses
  %min.iters.check2116 = icmp ult i32 %.0.lcssa.i778, 12
  br i1 %min.iters.check2116, label %.lr.ph.i5.i779.preheader2273, label %vector.memcheck2117

vector.memcheck2117:                              ; preds = %.lr.ph.i5.i779.preheader
  %i.mh = zext nneg i32 %.0.lcssa.i778 to i64     ; 2 uses
  %i.mi = getelementptr i8, ptr %i.h, i64 %i.mh   ; 2 uses
  %i.mj = getelementptr i8, ptr %.promoted.i777, i64 %i.mh ; 2 uses
  %bound02118 = icmp ult ptr %0, %i.mi
  %found.conflict2120 = and i1 %bound02118, %bound12119
  %bound02121 = icmp ult ptr %0, %i.mj
  %bound12122 = icmp ult ptr %.promoted.i777, %scevgep2114
  %found.conflict2123 = and i1 %bound02121, %bound12122
  %conflict.rdx2124 = or i1 %found.conflict2120, %found.conflict2123
  %bound02125 = icmp ult ptr %i.h, %i.mj
  %bound12126 = icmp ult ptr %.promoted.i777, %i.mi
  %found.conflict2127 = and i1 %bound02125, %bound12126
  %conflict.rdx2128 = or i1 %conflict.rdx2124, %found.conflict2127
  br i1 %conflict.rdx2128, label %.lr.ph.i5.i779.preheader2273, label %vector.ph2129

vector.ph2129:                                    ; preds = %vector.memcheck2117
  %n.vec2130 = and i64 %i.mg, 2147483644          ; 5 uses
  %i.mk = getelementptr i8, ptr %.promoted.i777, i64 %n.vec2130
  %i.ml = trunc nuw nsw i64 %n.vec2130 to i32
  %i.mm = sub nsw i32 %.0.lcssa.i778, %i.ml
  %i.mn = getelementptr i8, ptr %i.h, i64 %n.vec2130
  br label %vector.body2131

vector.body2131:                                  ; preds = %vector.body2131, %vector.ph2129
  %index2132 = phi i64 [ 0, %vector.ph2129 ], [ %index.next2138, %vector.body2131 ] ; 4 uses
  %next.gep2133 = getelementptr i8, ptr %.promoted.i777, i64 %index2132 ; 2 uses
  %next.gep2135 = getelementptr i8, ptr %i.h, i64 %index2132 ; 2 uses
  %i.mo = getelementptr i8, ptr %next.gep2133, i64 2
  %wide.load2136 = load <2 x i8>, ptr %next.gep2133, align 1, !tbaa !42, !alias.scope !274
  %wide.load2137 = load <2 x i8>, ptr %i.mo, align 1, !tbaa !42, !alias.scope !274
  %i.mp = getelementptr i8, ptr %next.gep2135, i64 2
  store <2 x i8> %wide.load2136, ptr %next.gep2135, align 4, !tbaa !42, !alias.scope !275, !noalias !274
  store <2 x i8> %wide.load2137, ptr %i.mp, align 2, !tbaa !42, !alias.scope !275, !noalias !274
  %index.next2138 = add nuw i64 %index2132, 4     ; 2 uses
  %i.mq = icmp eq i64 %index.next2138, %n.vec2130
  br i1 %i.mq, label %middle.block2139, label %vector.body2131, !llvm.loop !131

middle.block2139:                                 ; preds = %vector.body2131
  %i.mr = getelementptr i8, ptr %.promoted.i777, i64 %index2132
  %i.ms = getelementptr i8, ptr %i.mr, i64 4
  store ptr %i.ms, ptr %0, align 8, !tbaa !41, !alias.scope !276, !noalias !277
  %cmp.n2140 = icmp eq i64 %n.vec2130, %i.mg
  br i1 %cmp.n2140, label %_ZN7Imf_3_43Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit791, label %.lr.ph.i5.i779.preheader2273

.lr.ph.i5.i779.preheader2273:                     ; preds = %vector.memcheck2117, %.lr.ph.i5.i779.preheader, %middle.block2139
  %.ph2274 = phi ptr [ %.promoted.i777, %vector.memcheck2117 ], [ %.promoted.i777, %.lr.ph.i5.i779.preheader ], [ %i.mk, %middle.block2139 ] ; 2 uses
  %.05.i6.i780.ph = phi i32 [ %.0.lcssa.i778, %vector.memcheck2117 ], [ %.0.lcssa.i778, %.lr.ph.i5.i779.preheader ], [ %i.mm, %middle.block2139 ] ; 4 uses
  %.024.i7.i781.ph = phi ptr [ %i.h, %vector.memcheck2117 ], [ %i.h, %.lr.ph.i5.i779.preheader ], [ %i.mn, %middle.block2139 ] ; 2 uses
  %i.mt = add nsw i32 %.05.i6.i780.ph, -1
  %xtraiter2388 = and i32 %.05.i6.i780.ph, 3      ; 2 uses
  %lcmp.mod2389.not = icmp eq i32 %xtraiter2388, 0
  br i1 %lcmp.mod2389.not, label %.lr.ph.i5.i779.prol.loopexit, label %.lr.ph.i5.i779.prol

.lr.ph.i5.i779.prol:                              ; preds = %.lr.ph.i5.i779.preheader2273, %.lr.ph.i5.i779.prol
  %i.mu = phi ptr [ %i.mw, %.lr.ph.i5.i779.prol ], [ %.ph2274, %.lr.ph.i5.i779.preheader2273 ] ; 2 uses
  %.05.i6.i780.prol = phi i32 [ %i.mv, %.lr.ph.i5.i779.prol ], [ %.05.i6.i780.ph, %.lr.ph.i5.i779.preheader2273 ]
  %.024.i7.i781.prol = phi ptr [ %i.my, %.lr.ph.i5.i779.prol ], [ %.024.i7.i781.ph, %.lr.ph.i5.i779.preheader2273 ] ; 2 uses
  %prol.iter2390 = phi i32 [ %prol.iter2390.next, %.lr.ph.i5.i779.prol ], [ 0, %.lr.ph.i5.i779.preheader2273 ]
  %i.mv = add nsw i32 %.05.i6.i780.prol, -1       ; 2 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mu, i64 1 ; 3 uses
  store ptr %i.mw, ptr %0, align 8, !tbaa !41
  %i.mx = load i8, ptr %i.mu, align 1, !tbaa !42
  %i.my = getelementptr inbounds nuw i8, ptr %.024.i7.i781.prol, i64 1 ; 2 uses
  store i8 %i.mx, ptr %.024.i7.i781.prol, align 1, !tbaa !42
  %prol.iter2390.next = add i32 %prol.iter2390, 1 ; 2 uses
  %prol.iter2390.cmp.not = icmp eq i32 %prol.iter2390.next, %xtraiter2388
  br i1 %prol.iter2390.cmp.not, label %.lr.ph.i5.i779.prol.loopexit, label %.lr.ph.i5.i779.prol, !llvm.loop !133

.lr.ph.i5.i779.prol.loopexit:                     ; preds = %.lr.ph.i5.i779.prol, %.lr.ph.i5.i779.preheader2273
  %.unr2391 = phi ptr [ %.ph2274, %.lr.ph.i5.i779.preheader2273 ], [ %i.mw, %.lr.ph.i5.i779.prol ]
  %.05.i6.i780.unr = phi i32 [ %.05.i6.i780.ph, %.lr.ph.i5.i779.preheader2273 ], [ %i.mv, %.lr.ph.i5.i779.prol ]
  %.024.i7.i781.unr = phi ptr [ %.024.i7.i781.ph, %.lr.ph.i5.i779.preheader2273 ], [ %i.my, %.lr.ph.i5.i779.prol ]
  %i.mz = icmp ult i32 %i.mt, 3
  br i1 %i.mz, label %_ZN7Imf_3_43Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit791, label %.lr.ph.i5.i779

.lr.ph.i5.i779:                                   ; preds = %.lr.ph.i5.i779.prol.loopexit, %.lr.ph.i5.i779
  %i.na = phi ptr [ %i.nl, %.lr.ph.i5.i779 ], [ %.unr2391, %.lr.ph.i5.i779.prol.loopexit ] ; 5 uses
  %.05.i6.i780 = phi i32 [ %i.nk, %.lr.ph.i5.i779 ], [ %.05.i6.i780.unr, %.lr.ph.i5.i779.prol.loopexit ]
  %.024.i7.i781 = phi ptr [ %i.nn, %.lr.ph.i5.i779 ], [ %.024.i7.i781.unr, %.lr.ph.i5.i779.prol.loopexit ] ; 5 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %i.na, i64 1 ; 2 uses
  store ptr %i.nb, ptr %0, align 8, !tbaa !41
  %i.nc = load i8, ptr %i.na, align 1, !tbaa !42
  %i.nd = getelementptr inbounds nuw i8, ptr %.024.i7.i781, i64 1
  store i8 %i.nc, ptr %.024.i7.i781, align 1, !tbaa !42
  %i.ne = getelementptr inbounds nuw i8, ptr %i.na, i64 2 ; 2 uses
  store ptr %i.ne, ptr %0, align 8, !tbaa !41
  %i.nf = load i8, ptr %i.nb, align 1, !tbaa !42
  %i.ng = getelementptr inbounds nuw i8, ptr %.024.i7.i781, i64 2
  store i8 %i.nf, ptr %i.nd, align 1, !tbaa !42
  %i.nh = getelementptr inbounds nuw i8, ptr %i.na, i64 3 ; 2 uses
  store ptr %i.nh, ptr %0, align 8, !tbaa !41
  %i.ni = load i8, ptr %i.ne, align 1, !tbaa !42
  %i.nj = getelementptr inbounds nuw i8, ptr %.024.i7.i781, i64 3
  store i8 %i.ni, ptr %i.ng, align 1, !tbaa !42
  %i.nk = add nsw i32 %.05.i6.i780, -4            ; 2 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %i.na, i64 4 ; 2 uses
  store ptr %i.nl, ptr %0, align 8, !tbaa !41
  %i.nm = load i8, ptr %i.nh, align 1, !tbaa !42
  %i.nn = getelementptr inbounds nuw i8, ptr %.024.i7.i781, i64 4
  store i8 %i.nm, ptr %i.nj, align 1, !tbaa !42
  %.not.i8.i782.3 = icmp eq i32 %i.nk, 0
  br i1 %.not.i8.i782.3, label %_ZN7Imf_3_43Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit791, label %.lr.ph.i5.i779, !llvm.loop !134

_ZN7Imf_3_43Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit791: ; preds = %.lr.ph.i5.i779.prol.loopexit, %.lr.ph.i5.i779, %middle.block2139, %._crit_edge.i776
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #19
  br label %.loopexit990

.loopexit990:                                     ; preds = %.lr.ph1184, %.preheader989, %_ZN7Imf_3_43Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit791
  %indvars.iv.next1346 = add nsw i64 %indvars.iv1345, 1 ; 2 uses
  %lftr.wideiv1348 = trunc i64 %indvars.iv.next1346 to i32
  %exitcond1349.not = icmp eq i32 %i.gl, %lftr.wideiv1348
  br i1 %exitcond1349.not, label %.loopexit981, label %bb.ae, !llvm.loop !135

bb.ag:                                            ; preds = %.lr.ph1181, %.loopexit994
  %indvars.iv1339 = phi i64 [ %i.fs, %.lr.ph1181 ], [ %indvars.iv.next1340, %.loopexit994 ] ; 3 uses
  %i.no = sub nsw i64 %indvars.iv1339, %i.ft
  %i.np = mul nsw i64 %13, %i.no
  %i.nq = getelementptr inbounds i8, ptr %i.fj, i64 %i.np
  %i.nr = load ptr, ptr %i.nq, align 8, !tbaa !41 ; 2 uses
  %i.ns = sub nsw i64 %indvars.iv1339, %i.fu
  %i.nt = mul nsw i64 %i.fr, %i.ns
  %i.nu = getelementptr inbounds i8, ptr %i.fp, i64 %i.nt
  %i.nv = load i32, ptr %i.nu, align 4, !tbaa !32 ; 4 uses
  %.not756 = icmp eq ptr %i.nr, null
  br i1 %.not756, label %bb.ah, label %.preheader993

.preheader993:                                    ; preds = %bb.ag
  %i.nw = icmp sgt i32 %i.nv, 0
  br i1 %i.nw, label %.lr.ph1178, label %.loopexit994

.lr.ph1178:                                       ; preds = %.preheader993, %.lr.ph1178
  %.06881177 = phi i32 [ %i.oi, %.lr.ph1178 ], [ 0, %.preheader993 ]
  %.06891176 = phi ptr [ %i.oh, %.lr.ph1178 ], [ %i.nr, %.preheader993 ] ; 2 uses
  %.promoted.i792 = load ptr, ptr %0, align 8, !tbaa !41 ; 5 uses
  %i.nx = getelementptr inbounds nuw i8, ptr %.promoted.i792, i64 1 ; 2 uses
  store ptr %i.nx, ptr %0, align 8, !tbaa !41
  %i.ny = load i8, ptr %.promoted.i792, align 1, !tbaa !42
  %i.nz = getelementptr inbounds nuw i8, ptr %.promoted.i792, i64 2 ; 2 uses
  store ptr %i.nz, ptr %0, align 8, !tbaa !41
  %i.oa = load i8, ptr %i.nx, align 1, !tbaa !42
  %i.ob = getelementptr inbounds nuw i8, ptr %.promoted.i792, i64 3 ; 2 uses
  store ptr %i.ob, ptr %0, align 8, !tbaa !41
  %i.oc = load i8, ptr %i.nz, align 1, !tbaa !42
  %i.od = getelementptr inbounds nuw i8, ptr %.promoted.i792, i64 4
  store ptr %i.od, ptr %0, align 8, !tbaa !41
  %i.oe = load i8, ptr %i.ob, align 1, !tbaa !42
  %.sroa.6.0.insert.ext.i793 = zext i8 %i.oe to i32
  %.sroa.6.0.insert.shift.i794 = shl nuw i32 %.sroa.6.0.insert.ext.i793, 24
  %.sroa.5.0.insert.ext.i795 = zext i8 %i.oc to i32
  %.sroa.5.0.insert.shift.i796 = shl nuw nsw i32 %.sroa.5.0.insert.ext.i795, 16
  %.sroa.4.0.insert.ext.i798 = zext i8 %i.oa to i32
  %.sroa.4.0.insert.shift.i799 = shl nuw nsw i32 %.sroa.4.0.insert.ext.i798, 8
  %.sroa.0.0.insert.ext.i801 = zext i8 %i.ny to i32
  %.sroa.5.0.insert.insert.i797 = or disjoint i32 %.sroa.4.0.insert.shift.i799, %.sroa.0.0.insert.ext.i801
  %.sroa.4.0.insert.insert.i800 = or disjoint i32 %.sroa.5.0.insert.insert.i797, %.sroa.5.0.insert.shift.i796
  %.sroa.0.0.insert.insert.i802 = or disjoint i32 %.sroa.4.0.insert.insert.i800, %.sroa.6.0.insert.shift.i794
  %i.of = bitcast i32 %.sroa.0.0.insert.insert.i802 to float
  %i.og = tail call noundef i32 @_ZN7Imf_3_411floatToUintEf(float noundef %i.of)
  store i32 %i.og, ptr %.06891176, align 4, !tbaa !32
  %i.oh = getelementptr inbounds i8, ptr %.06891176, i64 %12
  %i.oi = add nuw nsw i32 %.06881177, 1           ; 2 uses
  %exitcond1338.not = icmp eq i32 %i.oi, %i.nv
  br i1 %exitcond1338.not, label %.loopexit994, label %.lr.ph1178, !llvm.loop !136

bb.ah:                                            ; preds = %bb.ag
  %i.oj = shl nsw i32 %i.nv, 2                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #19
  %.promoted10.i803 = load ptr, ptr %0, align 8   ; 2 uses
  %i.ok = icmp sgt i32 %i.nv, 255
  br i1 %i.ok, label %vector.memcheck2075, label %._crit_edge.i804

vector.memcheck2075:                              ; preds = %bb.ah, %_ZN7Imf_3_49CharPtrIO9readCharsERPKcPci.exit.i818
  %.013.i812 = phi i32 [ %i.pm, %_ZN7Imf_3_49CharPtrIO9readCharsERPKcPci.exit.i818 ], [ %i.oj, %bb.ah ] ; 2 uses
  %.promoted1112.i813 = phi ptr [ %.lcssa1511, %_ZN7Imf_3_49CharPtrIO9readCharsERPKcPci.exit.i818 ], [ %.promoted10.i803, %bb.ah ] ; 10 uses
  %i.ol = getelementptr i8, ptr %.promoted1112.i813, i64 1024 ; 2 uses
  %bound02079 = icmp ult ptr %0, %i.ol
  %bound12080 = icmp ult ptr %.promoted1112.i813, %scevgep2029
  %found.conflict2081 = and i1 %bound02079, %bound12080
  %conflict.rdx2082 = or i1 %found.conflict2078, %found.conflict2081
  %bound02083 = icmp ult ptr %i.g, %i.ol
  %bound12084 = icmp ult ptr %.promoted1112.i813, %scevgep2073
  %found.conflict2085 = and i1 %bound02083, %bound12084
  %conflict.rdx2086 = or i1 %conflict.rdx2082, %found.conflict2085
  br i1 %conflict.rdx2086, label %.lr.ph.i.i814, label %vector.ph2087

vector.ph2087:                                    ; preds = %vector.memcheck2075
  %i.om = getelementptr i8, ptr %.promoted1112.i813, i64 1024
  br label %vector.body2088

vector.body2088:                                  ; preds = %vector.body2088, %vector.ph2087
  %index2089 = phi i64 [ 0, %vector.ph2087 ], [ %index.next2095.3, %vector.body2088 ] ; 6 uses
  %next.gep2090 = getelementptr i8, ptr %.promoted1112.i813, i64 %index2089 ; 2 uses
  %next.gep2092 = getelementptr i8, ptr %i.g, i64 %index2089 ; 2 uses
  %i.on = getelementptr i8, ptr %next.gep2090, i64 2
  %wide.load2093 = load <2 x i8>, ptr %next.gep2090, align 1, !tbaa !42, !alias.scope !278
  %wide.load2094 = load <2 x i8>, ptr %i.on, align 1, !tbaa !42, !alias.scope !278
  %i.oo = getelementptr i8, ptr %next.gep2092, i64 2
  store <2 x i8> %wide.load2093, ptr %next.gep2092, align 16, !tbaa !42, !alias.scope !279, !noalias !278
  store <2 x i8> %wide.load2094, ptr %i.oo, align 2, !tbaa !42, !alias.scope !279, !noalias !278
  %index.next2095 = or disjoint i64 %index2089, 4 ; 2 uses
  %next.gep2090.1 = getelementptr i8, ptr %.promoted1112.i813, i64 %index.next2095 ; 2 uses
  %next.gep2092.1 = getelementptr i8, ptr %i.g, i64 %index.next2095 ; 2 uses
  %i.op = getelementptr i8, ptr %next.gep2090.1, i64 2
  %wide.load2093.1 = load <2 x i8>, ptr %next.gep2090.1, align 1, !tbaa !42, !alias.scope !278
  %wide.load2094.1 = load <2 x i8>, ptr %i.op, align 1, !tbaa !42, !alias.scope !278
  %i.oq = getelementptr i8, ptr %next.gep2092.1, i64 2
  store <2 x i8> %wide.load2093.1, ptr %next.gep2092.1, align 4, !tbaa !42, !alias.scope !279, !noalias !278
  store <2 x i8> %wide.load2094.1, ptr %i.oq, align 2, !tbaa !42, !alias.scope !279, !noalias !278
  %index.next2095.1 = or disjoint i64 %index2089, 8 ; 2 uses
  %next.gep2090.2 = getelementptr i8, ptr %.promoted1112.i813, i64 %index.next2095.1 ; 2 uses
  %next.gep2092.2 = getelementptr i8, ptr %i.g, i64 %index.next2095.1 ; 2 uses
  %i.or = getelementptr i8, ptr %next.gep2090.2, i64 2
  %wide.load2093.2 = load <2 x i8>, ptr %next.gep2090.2, align 1, !tbaa !42, !alias.scope !278
  %wide.load2094.2 = load <2 x i8>, ptr %i.or, align 1, !tbaa !42, !alias.scope !278
  %i.os = getelementptr i8, ptr %next.gep2092.2, i64 2
  store <2 x i8> %wide.load2093.2, ptr %next.gep2092.2, align 8, !tbaa !42, !alias.scope !279, !noalias !278
  store <2 x i8> %wide.load2094.2, ptr %i.os, align 2, !tbaa !42, !alias.scope !279, !noalias !278
  %index.next2095.2 = or disjoint i64 %index2089, 12 ; 3 uses
  %next.gep2090.3 = getelementptr i8, ptr %.promoted1112.i813, i64 %index.next2095.2 ; 2 uses
  %next.gep2092.3 = getelementptr i8, ptr %i.g, i64 %index.next2095.2 ; 2 uses
  %i.ot = getelementptr i8, ptr %next.gep2090.3, i64 2
  %wide.load2093.3 = load <2 x i8>, ptr %next.gep2090.3, align 1, !tbaa !42, !alias.scope !278
  %wide.load2094.3 = load <2 x i8>, ptr %i.ot, align 1, !tbaa !42, !alias.scope !278
  %i.ou = getelementptr i8, ptr %next.gep2092.3, i64 2
  store <2 x i8> %wide.load2093.3, ptr %next.gep2092.3, align 4, !tbaa !42, !alias.scope !279, !noalias !278
  store <2 x i8> %wide.load2094.3, ptr %i.ou, align 2, !tbaa !42, !alias.scope !279, !noalias !278
  %index.next2095.3 = add nuw nsw i64 %index2089, 16 ; 2 uses
  %i.ov = icmp eq i64 %index.next2095.3, 1024
  br i1 %i.ov, label %middle.block2096, label %vector.body2088, !llvm.loop !140

middle.block2096:                                 ; preds = %vector.body2088
  %i.ow = getelementptr i8, ptr %.promoted1112.i813, i64 %index.next2095.2
  %i.ox = getelementptr i8, ptr %i.ow, i64 4
  store ptr %i.ox, ptr %0, align 8, !tbaa !41, !alias.scope !280, !noalias !281
  br label %_ZN7Imf_3_49CharPtrIO9readCharsERPKcPci.exit.i818

.lr.ph.i.i814:                                    ; preds = %vector.memcheck2075, %.lr.ph.i.i814
  %i.oy = phi ptr [ %i.pj, %.lr.ph.i.i814 ], [ %.promoted1112.i813, %vector.memcheck2075 ] ; 5 uses
  %.05.i.i815 = phi i32 [ %i.pi, %.lr.ph.i.i814 ], [ 1024, %vector.memcheck2075 ]
  %.024.i.i816 = phi ptr [ %i.pl, %.lr.ph.i.i814 ], [ %i.g, %vector.memcheck2075 ] ; 5 uses
  %i.oz = getelementptr inbounds nuw i8, ptr %i.oy, i64 1 ; 2 uses
  store ptr %i.oz, ptr %0, align 8, !tbaa !41
  %i.pa = load i8, ptr %i.oy, align 1, !tbaa !42
  %i.pb = getelementptr inbounds nuw i8, ptr %.024.i.i816, i64 1
  store i8 %i.pa, ptr %.024.i.i816, align 1, !tbaa !42
  %i.pc = getelementptr inbounds nuw i8, ptr %i.oy, i64 2 ; 2 uses
  store ptr %i.pc, ptr %0, align 8, !tbaa !41
  %i.pd = load i8, ptr %i.oz, align 1, !tbaa !42
  %i.pe = getelementptr inbounds nuw i8, ptr %.024.i.i816, i64 2
  store i8 %i.pd, ptr %i.pb, align 1, !tbaa !42
  %i.pf = getelementptr inbounds nuw i8, ptr %i.oy, i64 3 ; 2 uses
  store ptr %i.pf, ptr %0, align 8, !tbaa !41
  %i.pg = load i8, ptr %i.pc, align 1, !tbaa !42
  %i.ph = getelementptr inbounds nuw i8, ptr %.024.i.i816, i64 3
  store i8 %i.pg, ptr %i.pe, align 1, !tbaa !42
  %i.pi = add nsw i32 %.05.i.i815, -4             ; 2 uses
  %i.pj = getelementptr inbounds nuw i8, ptr %i.oy, i64 4 ; 3 uses
  store ptr %i.pj, ptr %0, align 8, !tbaa !41
  %i.pk = load i8, ptr %i.pf, align 1, !tbaa !42
  %i.pl = getelementptr inbounds nuw i8, ptr %.024.i.i816, i64 4
  store i8 %i.pk, ptr %i.ph, align 1, !tbaa !42
  %.not.i.i817.3 = icmp eq i32 %i.pi, 0
  br i1 %.not.i.i817.3, label %_ZN7Imf_3_49CharPtrIO9readCharsERPKcPci.exit.i818, label %.lr.ph.i.i814, !llvm.loop !142

_ZN7Imf_3_49CharPtrIO9readCharsERPKcPci.exit.i818: ; preds = %.lr.ph.i.i814, %middle.block2096
  %.lcssa1511 = phi ptr [ %i.om, %middle.block2096 ], [ %i.pj, %.lr.ph.i.i814 ] ; 2 uses
  %i.pm = add nsw i32 %.013.i812, -1024           ; 2 uses
  %i.pn = icmp sgt i32 %.013.i812, 2047
  br i1 %i.pn, label %vector.memcheck2075, label %._crit_edge.i804, !llvm.loop !1

._crit_edge.i804:                                 ; preds = %_ZN7Imf_3_49CharPtrIO9readCharsERPKcPci.exit.i818, %bb.ah
  %.promoted.i805 = phi ptr [ %.promoted10.i803, %bb.ah ], [ %.lcssa1511, %_ZN7Imf_3_49CharPtrIO9readCharsERPKcPci.exit.i818 ] ; 8 uses
  %.0.lcssa.i806 = phi i32 [ %i.oj, %bb.ah ], [ %i.pm, %_ZN7Imf_3_49CharPtrIO9readCharsERPKcPci.exit.i818 ] ; 7 uses
  %i.po = icmp sgt i32 %.0.lcssa.i806, 0
  br i1 %i.po, label %.lr.ph.i5.i807.preheader, label %_ZN7Imf_3_43Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit819

.lr.ph.i5.i807.preheader:                         ; preds = %._crit_edge.i804
  %i.pp = zext nneg i32 %.0.lcssa.i806 to i64     ; 2 uses
  %min.iters.check2031 = icmp ult i32 %.0.lcssa.i806, 12
  br i1 %min.iters.check2031, label %.lr.ph.i5.i807.preheader2278, label %vector.memcheck2032

vector.memcheck2032:                              ; preds = %.lr.ph.i5.i807.preheader
  %i.pq = zext nneg i32 %.0.lcssa.i806 to i64     ; 2 uses
  %i.pr = getelementptr i8, ptr %i.g, i64 %i.pq   ; 2 uses
  %i.ps = getelementptr i8, ptr %.promoted.i805, i64 %i.pq ; 2 uses
  %bound02033 = icmp ult ptr %0, %i.pr
  %found.conflict2035 = and i1 %bound02033, %bound12034
  %bound02036 = icmp ult ptr %0, %i.ps
  %bound12037 = icmp ult ptr %.promoted.i805, %scevgep2029
  %found.conflict2038 = and i1 %bound02036, %bound12037
  %conflict.rdx2039 = or i1 %found.conflict2035, %found.conflict2038
  %bound02040 = icmp ult ptr %i.g, %i.ps
  %bound12041 = icmp ult ptr %.promoted.i805, %i.pr
  %found.conflict2042 = and i1 %bound02040, %bound12041
  %conflict.rdx2043 = or i1 %conflict.rdx2039, %found.conflict2042
  br i1 %conflict.rdx2043, label %.lr.ph.i5.i807.preheader2278, label %vector.ph2044

vector.ph2044:                                    ; preds = %vector.memcheck2032
  %n.vec2045 = and i64 %i.pp, 2147483644          ; 5 uses
  %i.pt = getelementptr i8, ptr %.promoted.i805, i64 %n.vec2045
  %i.pu = trunc nuw nsw i64 %n.vec2045 to i32
  %i.pv = sub nsw i32 %.0.lcssa.i806, %i.pu
  %i.pw = getelementptr i8, ptr %i.g, i64 %n.vec2045
  br label %vector.body2046

vector.body2046:                                  ; preds = %vector.body2046, %vector.ph2044
  %index2047 = phi i64 [ 0, %vector.ph2044 ], [ %index.next2053, %vector.body2046 ] ; 4 uses
  %next.gep2048 = getelementptr i8, ptr %.promoted.i805, i64 %index2047 ; 2 uses
  %next.gep2050 = getelementptr i8, ptr %i.g, i64 %index2047 ; 2 uses
  %i.px = getelementptr i8, ptr %next.gep2048, i64 2
  %wide.load2051 = load <2 x i8>, ptr %next.gep2048, align 1, !tbaa !42, !alias.scope !282
  %wide.load2052 = load <2 x i8>, ptr %i.px, align 1, !tbaa !42, !alias.scope !282
  %i.py = getelementptr i8, ptr %next.gep2050, i64 2
  store <2 x i8> %wide.load2051, ptr %next.gep2050, align 4, !tbaa !42, !alias.scope !283, !noalias !282
  store <2 x i8> %wide.load2052, ptr %i.py, align 2, !tbaa !42, !alias.scope !283, !noalias !282
  %index.next2053 = add nuw i64 %index2047, 4     ; 2 uses
  %i.pz = icmp eq i64 %index.next2053, %n.vec2045
  br i1 %i.pz, label %middle.block2054, label %vector.body2046, !llvm.loop !146

middle.block2054:                                 ; preds = %vector.body2046
  %i.qa = getelementptr i8, ptr %.promoted.i805, i64 %index2047
  %i.qb = getelementptr i8, ptr %i.qa, i64 4
  store ptr %i.qb, ptr %0, align 8, !tbaa !41, !alias.scope !284, !noalias !285
  %cmp.n2055 = icmp eq i64 %n.vec2045, %i.pp
  br i1 %cmp.n2055, label %_ZN7Imf_3_43Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit819, label %.lr.ph.i5.i807.preheader2278

.lr.ph.i5.i807.preheader2278:                     ; preds = %vector.memcheck2032, %.lr.ph.i5.i807.preheader, %middle.block2054
  %.ph2279 = phi ptr [ %.promoted.i805, %vector.memcheck2032 ], [ %.promoted.i805, %.lr.ph.i5.i807.preheader ], [ %i.pt, %middle.block2054 ] ; 2 uses
  %.05.i6.i808.ph = phi i32 [ %.0.lcssa.i806, %vector.memcheck2032 ], [ %.0.lcssa.i806, %.lr.ph.i5.i807.preheader ], [ %i.pv, %middle.block2054 ] ; 4 uses
  %.024.i7.i809.ph = phi ptr [ %i.g, %vector.memcheck2032 ], [ %i.g, %.lr.ph.i5.i807.preheader ], [ %i.pw, %middle.block2054 ] ; 2 uses
  %i.qc = add nsw i32 %.05.i6.i808.ph, -1
  %xtraiter2384 = and i32 %.05.i6.i808.ph, 3      ; 2 uses
  %lcmp.mod2385.not = icmp eq i32 %xtraiter2384, 0
  br i1 %lcmp.mod2385.not, label %.lr.ph.i5.i807.prol.loopexit, label %.lr.ph.i5.i807.prol

.lr.ph.i5.i807.prol:                              ; preds = %.lr.ph.i5.i807.preheader2278, %.lr.ph.i5.i807.prol
  %i.qd = phi ptr [ %i.qf, %.lr.ph.i5.i807.prol ], [ %.ph2279, %.lr.ph.i5.i807.preheader2278 ] ; 2 uses
  %.05.i6.i808.prol = phi i32 [ %i.qe, %.lr.ph.i5.i807.prol ], [ %.05.i6.i808.ph, %.lr.ph.i5.i807.preheader2278 ]
  %.024.i7.i809.prol = phi ptr [ %i.qh, %.lr.ph.i5.i807.prol ], [ %.024.i7.i809.ph, %.lr.ph.i5.i807.preheader2278 ] ; 2 uses
  %prol.iter2386 = phi i32 [ %prol.iter2386.next, %.lr.ph.i5.i807.prol ], [ 0, %.lr.ph.i5.i807.preheader2278 ]
  %i.qe = add nsw i32 %.05.i6.i808.prol, -1       ; 2 uses
  %i.qf = getelementptr inbounds nuw i8, ptr %i.qd, i64 1 ; 3 uses
  store ptr %i.qf, ptr %0, align 8, !tbaa !41
  %i.qg = load i8, ptr %i.qd, align 1, !tbaa !42
  %i.qh = getelementptr inbounds nuw i8, ptr %.024.i7.i809.prol, i64 1 ; 2 uses
  store i8 %i.qg, ptr %.024.i7.i809.prol, align 1, !tbaa !42
  %prol.iter2386.next = add i32 %prol.iter2386, 1 ; 2 uses
  %prol.iter2386.cmp.not = icmp eq i32 %prol.iter2386.next, %xtraiter2384
  br i1 %prol.iter2386.cmp.not, label %.lr.ph.i5.i807.prol.loopexit, label %.lr.ph.i5.i807.prol, !llvm.loop !148

.lr.ph.i5.i807.prol.loopexit:                     ; preds = %.lr.ph.i5.i807.prol, %.lr.ph.i5.i807.preheader2278
  %.unr2387 = phi ptr [ %.ph2279, %.lr.ph.i5.i807.preheader2278 ], [ %i.qf, %.lr.ph.i5.i807.prol ]
  %.05.i6.i808.unr = phi i32 [ %.05.i6.i808.ph, %.lr.ph.i5.i807.preheader2278 ], [ %i.qe, %.lr.ph.i5.i807.prol ]
  %.024.i7.i809.unr = phi ptr [ %.024.i7.i809.ph, %.lr.ph.i5.i807.preheader2278 ], [ %i.qh, %.lr.ph.i5.i807.prol ]
  %i.qi = icmp ult i32 %i.qc, 3
  br i1 %i.qi, label %_ZN7Imf_3_43Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit819, label %.lr.ph.i5.i807

.lr.ph.i5.i807:                                   ; preds = %.lr.ph.i5.i807.prol.loopexit, %.lr.ph.i5.i807
  %i.qj = phi ptr [ %i.qu, %.lr.ph.i5.i807 ], [ %.unr2387, %.lr.ph.i5.i807.prol.loopexit ] ; 5 uses
  %.05.i6.i808 = phi i32 [ %i.qt, %.lr.ph.i5.i807 ], [ %.05.i6.i808.unr, %.lr.ph.i5.i807.prol.loopexit ]
  %.024.i7.i809 = phi ptr [ %i.qw, %.lr.ph.i5.i807 ], [ %.024.i7.i809.unr, %.lr.ph.i5.i807.prol.loopexit ] ; 5 uses
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qj, i64 1 ; 2 uses
  store ptr %i.qk, ptr %0, align 8, !tbaa !41
  %i.ql = load i8, ptr %i.qj, align 1, !tbaa !42
  %i.qm = getelementptr inbounds nuw i8, ptr %.024.i7.i809, i64 1
  store i8 %i.ql, ptr %.024.i7.i809, align 1, !tbaa !42
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qj, i64 2 ; 2 uses
  store ptr %i.qn, ptr %0, align 8, !tbaa !41
  %i.qo = load i8, ptr %i.qk, align 1, !tbaa !42
  %i.qp = getelementptr inbounds nuw i8, ptr %.024.i7.i809, i64 2
  store i8 %i.qo, ptr %i.qm, align 1, !tbaa !42
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qj, i64 3 ; 2 uses
  store ptr %i.qq, ptr %0, align 8, !tbaa !41
  %i.qr = load i8, ptr %i.qn, align 1, !tbaa !42
  %i.qs = getelementptr inbounds nuw i8, ptr %.024.i7.i809, i64 3
  store i8 %i.qr, ptr %i.qp, align 1, !tbaa !42
  %i.qt = add nsw i32 %.05.i6.i808, -4            ; 2 uses
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qj, i64 4 ; 2 uses
  store ptr %i.qu, ptr %0, align 8, !tbaa !41
  %i.qv = load i8, ptr %i.qq, align 1, !tbaa !42
  %i.qw = getelementptr inbounds nuw i8, ptr %.024.i7.i809, i64 4
  store i8 %i.qv, ptr %i.qs, align 1, !tbaa !42
  %.not.i8.i810.3 = icmp eq i32 %i.qt, 0
  br i1 %.not.i8.i810.3, label %_ZN7Imf_3_43Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit819, label %.lr.ph.i5.i807, !llvm.loop !149

_ZN7Imf_3_43Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit819: ; preds = %.lr.ph.i5.i807.prol.loopexit, %.lr.ph.i5.i807, %middle.block2054, %._crit_edge.i804
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #19
  br label %.loopexit994

.loopexit994:                                     ; preds = %.lr.ph1178, %.preheader993, %_ZN7Imf_3_43Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit819
  %indvars.iv.next1340 = add nsw i64 %indvars.iv1339, 1 ; 2 uses
  %lftr.wideiv1342 = trunc i64 %indvars.iv.next1340 to i32
  %exitcond1343.not = icmp eq i32 %i.fv, %lftr.wideiv1342
  br i1 %exitcond1343.not, label %.loopexit981, label %bb.ag, !llvm.loop !150

bb.ai:                                            ; preds = %bb.aa
  %i.qx = tail call ptr @__cxa_allocate_exception(i64 72) #19 ; 3 uses
  invoke void @_ZN7Iex_3_46ArgExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.qx, ptr noundef nonnull @.str.9)
          to label %bb.aj unwind label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  tail call void @__cxa_throw(ptr nonnull %i.qx, ptr nonnull @_ZTIN7Iex_3_46ArgExcE, ptr nonnull @_ZN7Iex_3_46ArgExcD1Ev) #20
  unreachable

bb.ak:                                            ; preds = %bb.ai
  %i.qy = landingpad { ptr, i32 }
          cleanup
  br label %bb.da

bb.al:                                            ; preds = %bb.z
  switch i32 %19, label %bb.at [
    i32 0, label %.preheader999
    i32 1, label %.preheader1003
    i32 2, label %.preheader1007
  ]

.preheader1007:                                   ; preds = %bb.al
  %.not7491160 = icmp sgt i32 %6, %7
  br i1 %.not7491160, label %.loopexit981, label %.lr.ph1162

.lr.ph1162:                                       ; preds = %.preheader1007
  %i.qz = sub nsw i32 %5, %11
  %i.ra = sext i32 %i.qz to i64
  %i.rb = mul nsw i64 %14, %i.ra
  %i.rc = getelementptr inbounds i8, ptr %1, i64 %i.rb
  %i.rd = sub nsw i32 %5, %9
  %i.re = sext i32 %i.rd to i64
  %i.rf = shl i64 %4, 32
  %i.rg = ashr exact i64 %i.rf, 32
  %i.rh = mul nsw i64 %i.rg, %i.re
  %i.ri = getelementptr inbounds i8, ptr %2, i64 %i.rh
  %i.rj = shl i64 %3, 32
  %i.rk = ashr exact i64 %i.rj, 32
  %i.rl = sext i32 %6 to i64
  %i.rm = sext i32 %10 to i64
  %i.rn = sext i32 %8 to i64
  %i.ro = add i32 %7, 1
  %scevgep1774 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %scevgep1818 = getelementptr inbounds nuw i8, ptr %i.d, i64 1024 ; 2 uses
  %bound01821 = icmp ult ptr %0, %scevgep1818
  %bound11822 = icmp ult ptr %i.d, %scevgep1774
  %found.conflict1823 = and i1 %bound01821, %bound11822
  %bound11779 = icmp ult ptr %i.d, %scevgep1774
  br label %bb.ar

.preheader1003:                                   ; preds = %bb.al
  %.not7511167 = icmp sgt i32 %6, %7
  br i1 %.not7511167, label %.loopexit981, label %.lr.ph1169

.lr.ph1169:                                       ; preds = %.preheader1003
  %i.rp = sub nsw i32 %5, %11
  %i.rq = sext i32 %i.rp to i64
  %i.rr = mul nsw i64 %14, %i.rq
  %i.rs = getelementptr inbounds i8, ptr %1, i64 %i.rr
  %i.rt = sub nsw i32 %5, %9
  %i.ru = sext i32 %i.rt to i64
  %i.rv = shl i64 %4, 32
  %i.rw = ashr exact i64 %i.rv, 32
  %i.rx = mul nsw i64 %i.rw, %i.ru
  %i.ry = getelementptr inbounds i8, ptr %2, i64 %i.rx
  %i.rz = shl i64 %3, 32
  %i.sa = ashr exact i64 %i.rz, 32
  %i.sb = sext i32 %6 to i64
  %i.sc = sext i32 %10 to i64
  %i.sd = sext i32 %8 to i64
  %i.se = add i32 %7, 1
  %scevgep1859 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %scevgep1903 = getelementptr inbounds nuw i8, ptr %i.e, i64 1024 ; 2 uses
  %bound01906 = icmp ult ptr %0, %scevgep1903
  %bound11907 = icmp ult ptr %i.e, %scevgep1859
  %found.conflict1908 = and i1 %bound01906, %bound11907
  %bound11864 = icmp ult ptr %i.e, %scevgep1859
  br label %bb.ao

.preheader999:                                    ; preds = %bb.al
  %.not7531173 = icmp sgt i32 %6, %7
  br i1 %.not7531173, label %.loopexit981, label %.lr.ph1175

.lr.ph1175:                                       ; preds = %.preheader999
  %i.sf = sub nsw i32 %5, %11
  %i.sg = sext i32 %i.sf to i64
  %i.sh = mul nsw i64 %14, %i.sg
  %i.si = getelementptr inbounds i8, ptr %1, i64 %i.sh
  %i.sj = sub nsw i32 %5, %9
  %i.sk = sext i32 %i.sj to i64
  %i.sl = shl i64 %4, 32
  %i.sm = ashr exact i64 %i.sl, 32
  %i.sn = mul nsw i64 %i.sm, %i.sk
  %i.so = getelementptr inbounds i8, ptr %2, i64 %i.sn
  %i.sp = shl i64 %3, 32
  %i.sq = ashr exact i64 %i.sp, 32
  %i.sr = sext i32 %6 to i64
  %i.ss = sext i32 %10 to i64
  %i.st = sext i32 %8 to i64
  %i.su = add i32 %7, 1
  %scevgep1944 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %scevgep1988 = getelementptr inbounds nuw i8, ptr %i.f, i64 1024 ; 2 uses
  %bound01991 = icmp ult ptr %0, %scevgep1988
  %bound11992 = icmp ult ptr %i.f, %scevgep1944
  %found.conflict1993 = and i1 %bound01991, %bound11992
  %bound11949 = icmp ult ptr %i.f, %scevgep1944
  br label %bb.am

bb.am:                                            ; preds = %.lr.ph1175, %.loopexit998
  %indvars.iv1333 = phi i64 [ %i.sr, %.lr.ph1175 ], [ %indvars.iv.next1334, %.loopexit998 ] ; 3 uses
  %i.sv = sub nsw i64 %indvars.iv1333, %i.ss
  %i.sw = mul nsw i64 %13, %i.sv
  %i.sx = getelementptr inbounds i8, ptr %i.si, i64 %i.sw
  %i.sy = load ptr, ptr %i.sx, align 8, !tbaa !41 ; 2 uses
  %i.sz = sub nsw i64 %indvars.iv1333, %i.st
  %i.ta = mul nsw i64 %i.sq, %i.sz
  %i.tb = getelementptr inbounds i8, ptr %i.so, i64 %i.ta
  %i.tc = load i32, ptr %i.tb, align 4, !tbaa !32 ; 4 uses
  %.not754 = icmp eq ptr %i.sy, null
  br i1 %.not754, label %bb.an, label %.preheader997

.preheader997:                                    ; preds = %bb.am
  %i.td = icmp sgt i32 %i.tc, 0
  br i1 %i.td, label %.lr.ph1172, label %.loopexit998

.lr.ph1172:                                       ; preds = %.preheader997, %.lr.ph1172
  %.06851171 = phi i32 [ %i.to, %.lr.ph1172 ], [ 0, %.preheader997 ]
  %.06861170 = phi ptr [ %i.tn, %.lr.ph1172 ], [ %i.sy, %.preheader997 ] ; 2 uses
  %.promoted.i820 = load ptr, ptr %0, align 8, !tbaa !41 ; 5 uses
  %i.te = getelementptr inbounds nuw i8, ptr %.promoted.i820, i64 1 ; 2 uses
  store ptr %i.te, ptr %0, align 8, !tbaa !41
  %i.tf = load i8, ptr %.promoted.i820, align 1, !tbaa !42
  %i.tg = getelementptr inbounds nuw i8, ptr %.promoted.i820, i64 2 ; 2 uses
  store ptr %i.tg, ptr %0, align 8, !tbaa !41
  %i.th = load i8, ptr %i.te, align 1, !tbaa !42
  %i.ti = getelementptr inbounds nuw i8, ptr %.promoted.i820, i64 3 ; 2 uses
  store ptr %i.ti, ptr %0, align 8, !tbaa !41
  %i.tj = load i8, ptr %i.tg, align 1, !tbaa !42
  %i.tk = getelementptr inbounds nuw i8, ptr %.promoted.i820, i64 4
  store ptr %i.tk, ptr %0, align 8, !tbaa !41
  %i.tl = load i8, ptr %i.ti, align 1, !tbaa !42
  %.sroa.6.0.insert.ext.i821 = zext i8 %i.tl to i32
  %.sroa.6.0.insert.shift.i822 = shl nuw i32 %.sroa.6.0.insert.ext.i821, 24
  %.sroa.5.0.insert.ext.i823 = zext i8 %i.tj to i32
  %.sroa.5.0.insert.shift.i824 = shl nuw nsw i32 %.sroa.5.0.insert.ext.i823, 16
  %.sroa.4.0.insert.ext.i826 = zext i8 %i.th to i32
  %.sroa.4.0.insert.shift.i827 = shl nuw nsw i32 %.sroa.4.0.insert.ext.i826, 8
  %.sroa.0.0.insert.ext.i829 = zext i8 %i.tf to i32
  %.sroa.5.0.insert.insert.i825 = or disjoint i32 %.sroa.4.0.insert.shift.i827, %.sroa.0.0.insert.ext.i829
  %.sroa.4.0.insert.insert.i828 = or disjoint i32 %.sroa.5.0.insert.insert.i825, %.sroa.5.0.insert.shift.i824
  %.sroa.0.0.insert.insert.i830 = or disjoint i32 %.sroa.4.0.insert.insert.i828, %.sroa.6.0.insert.shift.i822
  %i.tm = tail call i16 @_ZN7Imf_3_410uintToHalfEj(i32 noundef %.sroa.0.0.insert.insert.i830)
  store i16 %i.tm, ptr %.06861170, align 2, !tbaa !37
  %i.tn = getelementptr inbounds i8, ptr %.06861170, i64 %12
  %i.to = add nuw nsw i32 %.06851171, 1           ; 2 uses
  %exitcond1332.not = icmp eq i32 %i.to, %i.tc
  br i1 %exitcond1332.not, label %.loopexit998, label %.lr.ph1172, !llvm.loop !151

bb.an:                                            ; preds = %bb.am
  %i.tp = shl nsw i32 %i.tc, 2                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #19
  %.promoted10.i831 = load ptr, ptr %0, align 8   ; 2 uses
  %i.tq = icmp sgt i32 %i.tc, 255
  br i1 %i.tq, label %vector.memcheck1990, label %._crit_edge.i832

vector.memcheck1990:                              ; preds = %bb.an, %_ZN7Imf_3_49CharPtrIO9readCharsERPKcPci.exit.i846
  %.013.i840 = phi i32 [ %i.us, %_ZN7Imf_3_49CharPtrIO9readCharsERPKcPci.exit.i846 ], [ %i.tp, %bb.an ] ; 2 uses
  %.promoted1112.i841 = phi ptr [ %.lcssa1513, %_ZN7Imf_3_49CharPtrIO9readCharsERPKcPci.exit.i846 ], [ %.promoted10.i831, %bb.an ] ; 10 uses
  %i.tr = getelementptr i8, ptr %.promoted1112.i841, i64 1024 ; 2 uses
  %bound01994 = icmp ult ptr %0, %i.tr
  %bound11995 = icmp ult ptr %.promoted1112.i841, %scevgep1944
  %found.conflict1996 = and i1 %bound01994, %bound11995
  %conflict.rdx1997 = or i1 %found.conflict1993, %found.conflict1996
  %bound01998 = icmp ult ptr %i.f, %i.tr
  %bound11999 = icmp ult ptr %.promoted1112.i841, %scevgep1988
  %found.conflict2000 = and i1 %bound01998, %bound11999
  %conflict.rdx2001 = or i1 %conflict.rdx1997, %found.conflict2000
  br i1 %conflict.rdx2001, label %.lr.ph.i.i842, label %vector.ph2002

vector.ph2002:                                    ; preds = %vector.memcheck1990
  %i.ts = getelementptr i8, ptr %.promoted1112.i841, i64 1024
  br label %vector.body2003

vector.body2003:                                  ; preds = %vector.body2003, %vector.ph2002
  %index2004 = phi i64 [ 0, %vector.ph2002 ], [ %index.next2010.3, %vector.body2003 ] ; 6 uses
  %next.gep2005 = getelementptr i8, ptr %.promoted1112.i841, i64 %index2004 ; 2 uses
  %next.gep2007 = getelementptr i8, ptr %i.f, i64 %index2004 ; 2 uses
  %i.tt = getelementptr i8, ptr %next.gep2005, i64 2
  %wide.load2008 = load <2 x i8>, ptr %next.gep2005, align 1, !tbaa !42, !alias.scope !286
  %wide.load2009 = load <2 x i8>, ptr %i.tt, align 1, !tbaa !42, !alias.scope !286
  %i.tu = getelementptr i8, ptr %next.gep2007, i64 2
  store <2 x i8> %wide.load2008, ptr %next.gep2007, align 16, !tbaa !42, !alias.scope !287, !noalias !286
  store <2 x i8> %wide.load2009, ptr %i.tu, align 2, !tbaa !42, !alias.scope !287, !noalias !286
  %index.next2010 = or disjoint i64 %index2004, 4 ; 2 uses
  %next.gep2005.1 = getelementptr i8, ptr %.promoted1112.i841, i64 %index.next2010 ; 2 uses
  %next.gep2007.1 = getelementptr i8, ptr %i.f, i64 %index.next2010 ; 2 uses
  %i.tv = getelementptr i8, ptr %next.gep2005.1, i64 2
  %wide.load2008.1 = load <2 x i8>, ptr %next.gep2005.1, align 1, !tbaa !42, !alias.scope !286
  %wide.load2009.1 = load <2 x i8>, ptr %i.tv, align 1, !tbaa !42, !alias.scope !286
  %i.tw = getelementptr i8, ptr %next.gep2007.1, i64 2
  store <2 x i8> %wide.load2008.1, ptr %next.gep2007.1, align 4, !tbaa !42, !alias.scope !287, !noalias !286
  store <2 x i8> %wide.load2009.1, ptr %i.tw, align 2, !tbaa !42, !alias.scope !287, !noalias !286
  %index.next2010.1 = or disjoint i64 %index2004, 8 ; 2 uses
  %next.gep2005.2 = getelementptr i8, ptr %.promoted1112.i841, i64 %index.next2010.1 ; 2 uses
  %next.gep2007.2 = getelementptr i8, ptr %i.f, i64 %index.next2010.1 ; 2 uses
  %i.tx = getelementptr i8, ptr %next.gep2005.2, i64 2
  %wide.load2008.2 = load <2 x i8>, ptr %next.gep2005.2, align 1, !tbaa !42, !alias.scope !286
  %wide.load2009.2 = load <2 x i8>, ptr %i.tx, align 1, !tbaa !42, !alias.scope !286
  %i.ty = getelementptr i8, ptr %next.gep2007.2, i64 2
  store <2 x i8> %wide.load2008.2, ptr %next.gep2007.2, align 8, !tbaa !42, !alias.scope !287, !noalias !286
  store <2 x i8> %wide.load2009.2, ptr %i.ty, align 2, !tbaa !42, !alias.scope !287, !noalias !286
  %index.next2010.2 = or disjoint i64 %index2004, 12 ; 3 uses
  %next.gep2005.3 = getelementptr i8, ptr %.promoted1112.i841, i64 %index.next2010.2 ; 2 uses
  %next.gep2007.3 = getelementptr i8, ptr %i.f, i64 %index.next2010.2 ; 2 uses
  %i.tz = getelementptr i8, ptr %next.gep2005.3, i64 2
  %wide.load2008.3 = load <2 x i8>, ptr %next.gep2005.3, align 1, !tbaa !42, !alias.scope !286
  %wide.load2009.3 = load <2 x i8>, ptr %i.tz, align 1, !tbaa !42, !alias.scope !286
  %i.ua = getelementptr i8, ptr %next.gep2007.3, i64 2
  store <2 x i8> %wide.load2008.3, ptr %next.gep2007.3, align 4, !tbaa !42, !alias.scope !287, !noalias !286
  store <2 x i8> %wide.load2009.3, ptr %i.ua, align 2, !tbaa !42, !alias.scope !287, !noalias !286
  %index.next2010.3 = add nuw nsw i64 %index2004, 16 ; 2 uses
  %i.ub = icmp eq i64 %index.next2010.3, 1024
  br i1 %i.ub, label %middle.block2011, label %vector.body2003, !llvm.loop !155

middle.block2011:                                 ; preds = %vector.body2003
  %i.uc = getelementptr i8, ptr %.promoted1112.i841, i64 %index.next2010.2
  %i.ud = getelementptr i8, ptr %i.uc, i64 4
  store ptr %i.ud, ptr %0, align 8, !tbaa !41, !alias.scope !288, !noalias !289
  br label %_ZN7Imf_3_49CharPtrIO9readCharsERPKcPci.exit.i846

.lr.ph.i.i842:                                    ; preds = %vector.memcheck1990, %.lr.ph.i.i842
  %i.ue = phi ptr [ %i.up, %.lr.ph.i.i842 ], [ %.promoted1112.i841, %vector.memcheck1990 ] ; 5 uses
  %.05.i.i843 = phi i32 [ %i.uo, %.lr.ph.i.i842 ], [ 1024, %vector.memcheck1990 ]
  %.024.i.i844 = phi ptr [ %i.ur, %.lr.ph.i.i842 ], [ %i.f, %vector.memcheck1990 ] ; 5 uses
  %i.uf = getelementptr inbounds nuw i8, ptr %i.ue, i64 1 ; 2 uses
  store ptr %i.uf, ptr %0, align 8, !tbaa !41
  %i.ug = load i8, ptr %i.ue, align 1, !tbaa !42
  %i.uh = getelementptr inbounds nuw i8, ptr %.024.i.i844, i64 1
  store i8 %i.ug, ptr %.024.i.i844, align 1, !tbaa !42
  %i.ui = getelementptr inbounds nuw i8, ptr %i.ue, i64 2 ; 2 uses
  store ptr %i.ui, ptr %0, align 8, !tbaa !41
  %i.uj = load i8, ptr %i.uf, align 1, !tbaa !42
  %i.uk = getelementptr inbounds nuw i8, ptr %.024.i.i844, i64 2
  store i8 %i.uj, ptr %i.uh, align 1, !tbaa !42
  %i.ul = getelementptr inbounds nuw i8, ptr %i.ue, i64 3 ; 2 uses
  store ptr %i.ul, ptr %0, align 8, !tbaa !41
  %i.um = load i8, ptr %i.ui, align 1, !tbaa !42
  %i.un = getelementptr inbounds nuw i8, ptr %.024.i.i844, i64 3
  store i8 %i.um, ptr %i.uk, align 1, !tbaa !42
  %i.uo = add nsw i32 %.05.i.i843, -4             ; 2 uses
  %i.up = getelementptr inbounds nuw i8, ptr %i.ue, i64 4 ; 3 uses
  store ptr %i.up, ptr %0, align 8, !tbaa !41
  %i.uq = load i8, ptr %i.ul, align 1, !tbaa !42
  %i.ur = getelementptr inbounds nuw i8, ptr %.024.i.i844, i64 4
  store i8 %i.uq, ptr %i.un, align 1, !tbaa !42
  %.not.i.i845.3 = icmp eq i32 %i.uo, 0
  br i1 %.not.i.i845.3, label %_ZN7Imf_3_49CharPtrIO9readCharsERPKcPci.exit.i846, label %.lr.ph.i.i842, !llvm.loop !157

_ZN7Imf_3_49CharPtrIO9readCharsERPKcPci.exit.i846: ; preds = %.lr.ph.i.i842, %middle.block2011
  %.lcssa1513 = phi ptr [ %i.ts, %middle.block2011 ], [ %i.up, %.lr.ph.i.i842 ] ; 2 uses
  %i.us = add nsw i32 %.013.i840, -1024           ; 2 uses
  %i.ut = icmp sgt i32 %.013.i840, 2047
  br i1 %i.ut, label %vector.memcheck1990, label %._crit_edge.i832, !llvm.loop !1

._crit_edge.i832:                                 ; preds = %_ZN7Imf_3_49CharPtrIO9readCharsERPKcPci.exit.i846, %bb.an
  %.promoted.i833 = phi ptr [ %.promoted10.i831, %bb.an ], [ %.lcssa1513, %_ZN7Imf_3_49CharPtrIO9readCharsERPKcPci.exit.i846 ] ; 8 uses
  %.0.lcssa.i834 = phi i32 [ %i.tp, %bb.an ], [ %i.us, %_ZN7Imf_3_49CharPtrIO9readCharsERPKcPci.exit.i846 ] ; 7 uses
  %i.uu = icmp sgt i32 %.0.lcssa.i834, 0
  br i1 %i.uu, label %.lr.ph.i5.i835.preheader, label %_ZN7Imf_3_43Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit847

.lr.ph.i5.i835.preheader:                         ; preds = %._crit_edge.i832
  %i.uv = zext nneg i32 %.0.lcssa.i834 to i64     ; 2 uses
  %min.iters.check1946 = icmp ult i32 %.0.lcssa.i834, 12
  br i1 %min.iters.check1946, label %.lr.ph.i5.i835.preheader2283, label %vector.memcheck1947

vector.memcheck1947:                              ; preds = %.lr.ph.i5.i835.preheader
  %i.uw = zext nneg i32 %.0.lcssa.i834 to i64     ; 2 uses
  %i.ux = getelementptr i8, ptr %i.f, i64 %i.uw   ; 2 uses
  %i.uy = getelementptr i8, ptr %.promoted.i833, i64 %i.uw ; 2 uses
  %bound01948 = icmp ult ptr %0, %i.ux
  %found.conflict1950 = and i1 %bound01948, %bound11949
  %bound01951 = icmp ult ptr %0, %i.uy
  %bound11952 = icmp ult ptr %.promoted.i833, %scevgep1944
  %found.conflict1953 = and i1 %bound01951, %bound11952
  %conflict.rdx1954 = or i1 %found.conflict1950, %found.conflict1953
  %bound01955 = icmp ult ptr %i.f, %i.uy
  %bound11956 = icmp ult ptr %.promoted.i833, %i.ux
  %found.conflict1957 = and i1 %bound01955, %bound11956
  %conflict.rdx1958 = or i1 %conflict.rdx1954, %found.conflict1957
  br i1 %conflict.rdx1958, label %.lr.ph.i5.i835.preheader2283, label %vector.ph1959

vector.ph1959:                                    ; preds = %vector.memcheck1947
  %n.vec1960 = and i64 %i.uv, 2147483644          ; 5 uses
  %i.uz = getelementptr i8, ptr %.promoted.i833, i64 %n.vec1960
  %i.va = trunc nuw nsw i64 %n.vec1960 to i32
  %i.vb = sub nsw i32 %.0.lcssa.i834, %i.va
  %i.vc = getelementptr i8, ptr %i.f, i64 %n.vec1960
  br label %vector.body1961

vector.body1961:                                  ; preds = %vector.body1961, %vector.ph1959
  %index1962 = phi i64 [ 0, %vector.ph1959 ], [ %index.next1968, %vector.body1961 ] ; 4 uses
  %next.gep1963 = getelementptr i8, ptr %.promoted.i833, i64 %index1962 ; 2 uses
  %next.gep1965 = getelementptr i8, ptr %i.f, i64 %index1962 ; 2 uses
  %i.vd = getelementptr i8, ptr %next.gep1963, i64 2
  %wide.load1966 = load <2 x i8>, ptr %next.gep1963, align 1, !tbaa !42, !alias.scope !290
  %wide.load1967 = load <2 x i8>, ptr %i.vd, align 1, !tbaa !42, !alias.scope !290
  %i.ve = getelementptr i8, ptr %next.gep1965, i64 2
  store <2 x i8> %wide.load1966, ptr %next.gep1965, align 4, !tbaa !42, !alias.scope !291, !noalias !290
  store <2 x i8> %wide.load1967, ptr %i.ve, align 2, !tbaa !42, !alias.scope !291, !noalias !290
  %index.next1968 = add nuw i64 %index1962, 4     ; 2 uses
  %i.vf = icmp eq i64 %index.next1968, %n.vec1960
  br i1 %i.vf, label %middle.block1969, label %vector.body1961, !llvm.loop !161

middle.block1969:                                 ; preds = %vector.body1961
  %i.vg = getelementptr i8, ptr %.promoted.i833, i64 %index1962
  %i.vh = getelementptr i8, ptr %i.vg, i64 4
  store ptr %i.vh, ptr %0, align 8, !tbaa !41, !alias.scope !292, !noalias !293
  %cmp.n1970 = icmp eq i64 %n.vec1960, %i.uv
  br i1 %cmp.n1970, label %_ZN7Imf_3_43Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit847, label %.lr.ph.i5.i835.preheader2283

.lr.ph.i5.i835.preheader2283:                     ; preds = %vector.memcheck1947, %.lr.ph.i5.i835.preheader, %middle.block1969
  %.ph2284 = phi ptr [ %.promoted.i833, %vector.memcheck1947 ], [ %.promoted.i833, %.lr.ph.i5.i835.preheader ], [ %i.uz, %middle.block1969 ] ; 2 uses
  %.05.i6.i836.ph = phi i32 [ %.0.lcssa.i834, %vector.memcheck1947 ], [ %.0.lcssa.i834, %.lr.ph.i5.i835.preheader ], [ %i.vb, %middle.block1969 ] ; 4 uses
  %.024.i7.i837.ph = phi ptr [ %i.f, %vector.memcheck1947 ], [ %i.f, %.lr.ph.i5.i835.preheader ], [ %i.vc, %middle.block1969 ] ; 2 uses
  %i.vi = add nsw i32 %.05.i6.i836.ph, -1
  %xtraiter2380 = and i32 %.05.i6.i836.ph, 3      ; 2 uses
  %lcmp.mod2381.not.a = icmp eq i32 %xtraiter2380, 0
  br i1 %lcmp.mod2381.not.a, label %.lr.ph.i5.i835.prol.loopexit, label %.lr.ph.i5.i835.prol

.lr.ph.i5.i835.prol:                              ; preds = %.lr.ph.i5.i835.preheader2283, %.lr.ph.i5.i835.prol
  %i.vj = phi ptr [ %i.vl, %.lr.ph.i5.i835.prol ], [ %.ph2284, %.lr.ph.i5.i835.preheader2283 ] ; 2 uses
  %.05.i6.i836.prol = phi i32 [ %i.vk, %.lr.ph.i5.i835.prol ], [ %.05.i6.i836.ph, %.lr.ph.i5.i835.preheader2283 ]
  %.024.i7.i837.prol = phi ptr [ %i.vn, %.lr.ph.i5.i835.prol ], [ %.024.i7.i837.ph, %.lr.ph.i5.i835.preheader2283 ] ; 2 uses
  %prol.iter2382 = phi i32 [ %prol.iter2382.next, %.lr.ph.i5.i835.prol ], [ 0, %.lr.ph.i5.i835.preheader2283 ]
  %i.vk = add nsw i32 %.05.i6.i836.prol, -1       ; 2 uses
  %i.vl = getelementptr inbounds nuw i8, ptr %i.vj, i64 1 ; 3 uses
  store ptr %i.vl, ptr %0, align 8, !tbaa !41
  %i.vm = load i8, ptr %i.vj, align 1, !tbaa !42
  %i.vn = getelementptr inbounds nuw i8, ptr %.024.i7.i837.prol, i64 1 ; 2 uses
  store i8 %i.vm, ptr %.024.i7.i837.prol, align 1, !tbaa !42
  %prol.iter2382.next = add i32 %prol.iter2382, 1 ; 2 uses
  %prol.iter2382.cmp.not = icmp eq i32 %prol.iter2382.next, %xtraiter2380
  br i1 %prol.iter2382.cmp.not, label %.lr.ph.i5.i835.prol.loopexit, label %.lr.ph.i5.i835.prol, !llvm.loop !163

.lr.ph.i5.i835.prol.loopexit:                     ; preds = %.lr.ph.i5.i835.prol, %.lr.ph.i5.i835.preheader2283
  %.unr2383 = phi ptr [ %.ph2284, %.lr.ph.i5.i835.preheader2283 ], [ %i.vl, %.lr.ph.i5.i835.prol ]
  %.05.i6.i836.unr = phi i32 [ %.05.i6.i836.ph, %.lr.ph.i5.i835.preheader2283 ], [ %i.vk, %.lr.ph.i5.i835.prol ]
  %.024.i7.i837.unr = phi ptr [ %.024.i7.i837.ph, %.lr.ph.i5.i835.preheader2283 ], [ %i.vn, %.lr.ph.i5.i835.prol ]
  %i.vo = icmp ult i32 %i.vi, 3
  br i1 %i.vo, label %_ZN7Imf_3_43Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit847, label %.lr.ph.i5.i835

.lr.ph.i5.i835:                                   ; preds = %.lr.ph.i5.i835.prol.loopexit, %.lr.ph.i5.i835
  %i.vp = phi ptr [ %i.wa, %.lr.ph.i5.i835 ], [ %.unr2383, %.lr.ph.i5.i835.prol.loopexit ] ; 5 uses
  %.05.i6.i836 = phi i32 [ %i.vz, %.lr.ph.i5.i835 ], [ %.05.i6.i836.unr, %.lr.ph.i5.i835.prol.loopexit ]
  %.024.i7.i837 = phi ptr [ %i.wc, %.lr.ph.i5.i835 ], [ %.024.i7.i837.unr, %.lr.ph.i5.i835.prol.loopexit ] ; 5 uses
  %i.vq = getelementptr inbounds nuw i8, ptr %i.vp, i64 1 ; 2 uses
  store ptr %i.vq, ptr %0, align 8, !tbaa !41
  %i.vr = load i8, ptr %i.vp, align 1, !tbaa !42
  %i.vs = getelementptr inbounds nuw i8, ptr %.024.i7.i837, i64 1
  store i8 %i.vr, ptr %.024.i7.i837, align 1, !tbaa !42
  %i.vt = getelementptr inbounds nuw i8, ptr %i.vp, i64 2 ; 2 uses
  store ptr %i.vt, ptr %0, align 8, !tbaa !41
  %i.vu = load i8, ptr %i.vq, align 1, !tbaa !42
  %i.vv = getelementptr inbounds nuw i8, ptr %.024.i7.i837, i64 2
  store i8 %i.vu, ptr %i.vs, align 1, !tbaa !42
  %i.vw = getelementptr inbounds nuw i8, ptr %i.vp, i64 3 ; 2 uses
  store ptr %i.vw, ptr %0, align 8, !tbaa !41
  %i.vx = load i8, ptr %i.vt, align 1, !tbaa !42
  %i.vy = getelementptr inbounds nuw i8, ptr %.024.i7.i837, i64 3
  store i8 %i.vx, ptr %i.vv, align 1, !tbaa !42
  %i.vz = add nsw i32 %.05.i6.i836, -4            ; 2 uses
  %i.wa = getelementptr inbounds nuw i8, ptr %i.vp, i64 4 ; 2 uses
  store ptr %i.wa, ptr %0, align 8, !tbaa !41
  %i.wb = load i8, ptr %i.vw, align 1, !tbaa !42
  %i.wc = getelementptr inbounds nuw i8, ptr %.024.i7.i837, i64 4
  store i8 %i.wb, ptr %i.vy, align 1, !tbaa !42
  %.not.i8.i838.3 = icmp eq i32 %i.vz, 0
  br i1 %.not.i8.i838.3, label %_ZN7Imf_3_43Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit847, label %.lr.ph.i5.i835, !llvm.loop !164

_ZN7Imf_3_43Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit847: ; preds = %.lr.ph.i5.i835.prol.loopexit, %.lr.ph.i5.i835, %middle.block1969, %._crit_edge.i832
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #19
  br label %.loopexit998

.loopexit998:                                     ; preds = %.lr.ph1172, %.preheader997, %_ZN7Imf_3_43Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit847
  %indvars.iv.next1334 = add nsw i64 %indvars.iv1333, 1 ; 2 uses
  %lftr.wideiv1336 = trunc i64 %indvars.iv.next1334 to i32
  %exitcond1337.not = icmp eq i32 %i.su, %lftr.wideiv1336
  br i1 %exitcond1337.not, label %.loopexit981, label %bb.am, !llvm.loop !165

bb.ao:                                            ; preds = %.lr.ph1169, %.loopexit1002
  %indvars.iv1327 = phi i64 [ %i.sb, %.lr.ph1169 ], [ %indvars.iv.next1328, %.loopexit1002 ] ; 3 uses
  %i.wd = sub nsw i64 %indvars.iv1327, %i.sc
  %i.we = mul nsw i64 %13, %i.wd
  %i.wf = getelementptr inbounds i8, ptr %i.rs, i64 %i.we
  %i.wg = load ptr, ptr %i.wf, align 8, !tbaa !41 ; 3 uses
  %i.wh = sub nsw i64 %indvars.iv1327, %i.sd
  %i.wi = mul nsw i64 %i.sa, %i.wh
  %i.wj = getelementptr inbounds i8, ptr %i.ry, i64 %i.wi
  %i.wk = load i32, ptr %i.wj, align 4, !tbaa !32 ; 7 uses
  %.not752 = icmp eq ptr %i.wg, null
  br i1 %.not752, label %bb.aq, label %.preheader1001

.preheader1001:                                   ; preds = %bb.ao
  %i.wl = icmp sgt i32 %i.wk, 0
  br i1 %i.wl, label %.lr.ph1165, label %.loopexit1002

.lr.ph1165:                                       ; preds = %.preheader1001
  %.promoted1166 = load ptr, ptr %0, align 8, !tbaa !41 ; 2 uses
  %xtraiter2368.a = and i32 %i.wk, 1
  %i.wm = icmp eq i32 %i.wk, 1
  br i1 %i.wm, label %.epil.preheader2367, label %.lr.ph1165.new

.lr.ph1165.new:                                   ; preds = %.lr.ph1165
  %unroll_iter2374 = and i32 %i.wk, 2147483646
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ap, %.lr.ph1165.new
  %i.wn = phi ptr [ %.promoted1166, %.lr.ph1165.new ], [ %i.wv, %bb.ap ] ; 5 uses
  %.06821163 = phi ptr [ %i.wg, %.lr.ph1165.new ], [ %i.wx, %bb.ap ] ; 2 uses
  %niter2375 = phi i32 [ 0, %.lr.ph1165.new ], [ %niter2375.next.1, %bb.ap ]
  %i.wo = getelementptr inbounds nuw i8, ptr %i.wn, i64 1 ; 2 uses
  store ptr %i.wo, ptr %0, align 8, !tbaa !41
  %i.wp = load i8, ptr %i.wn, align 1, !tbaa !42
  %i.wq = getelementptr inbounds nuw i8, ptr %i.wn, i64 2 ; 2 uses
  store ptr %i.wq, ptr %0, align 8, !tbaa !41
  %i.wr = load i8, ptr %i.wo, align 1, !tbaa !42
  %.sroa.4.0.insert.ext.i849 = zext i8 %i.wr to i16
  %.sroa.4.0.insert.shift.i850 = shl nuw i16 %.sroa.4.0.insert.ext.i849, 8
  %.sroa.0.0.insert.ext.i851 = zext i8 %i.wp to i16
  %.sroa.0.0.insert.insert.i852 = or disjoint i16 %.sroa.4.0.insert.shift.i850, %.sroa.0.0.insert.ext.i851
  store i16 %.sroa.0.0.insert.insert.i852, ptr %.06821163, align 2, !tbaa !44
  %i.ws = getelementptr inbounds i8, ptr %.06821163, i64 %12 ; 2 uses
  %i.wt = getelementptr inbounds nuw i8, ptr %i.wn, i64 3 ; 2 uses
  store ptr %i.wt, ptr %0, align 8, !tbaa !41
  %i.wu = load i8, ptr %i.wq, align 1, !tbaa !42
  %i.wv = getelementptr inbounds nuw i8, ptr %i.wn, i64 4 ; 3 uses
  store ptr %i.wv, ptr %0, align 8, !tbaa !41
  %i.ww = load i8, ptr %i.wt, align 1, !tbaa !42
  %.sroa.4.0.insert.ext.i849.1 = zext i8 %i.ww to i16
  %.sroa.4.0.insert.shift.i850.1 = shl nuw i16 %.sroa.4.0.insert.ext.i849.1, 8
  %.sroa.0.0.insert.ext.i851.1 = zext i8 %i.wu to i16
  %.sroa.0.0.insert.insert.i852.1 = or disjoint i16 %.sroa.4.0.insert.shift.i850.1, %.sroa.0.0.insert.ext.i851.1
  store i16 %.sroa.0.0.insert.insert.i852.1, ptr %i.ws, align 2, !tbaa !44
  %i.wx = getelementptr inbounds i8, ptr %i.ws, i64 %12 ; 2 uses
  %niter2375.next.1 = add nuw nsw i32 %niter2375, 2 ; 2 uses
  %niter2375.ncmp.1 = icmp eq i32 %niter2375.next.1, %unroll_iter2374
  br i1 %niter2375.ncmp.1, label %.loopexit1002.loopexit.unr-lcssa, label %bb.ap, !llvm.loop !166

bb.aq:                                            ; preds = %bb.ao
  %i.wy = shl nsw i32 %i.wk, 1                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #19
  %.promoted10.i853 = load ptr, ptr %0, align 8   ; 2 uses
  %i.wz = icmp sgt i32 %i.wk, 511
  br i1 %i.wz, label %vector.memcheck1905, label %._crit_edge.i854

vector.memcheck1905:                              ; preds = %bb.aq, %_ZN7Imf_3_49CharPtrIO9readCharsERPKcPci.exit.i868
  %.013.i862 = phi i32 [ %i.yb, %_ZN7Imf_3_49CharPtrIO9readCharsERPKcPci.exit.i868 ], [ %i.wy, %bb.aq ] ; 2 uses
  %.promoted1112.i863 = phi ptr [ %.lcssa1515, %_ZN7Imf_3_49CharPtrIO9readCharsERPKcPci.exit.i868 ], [ %.promoted10.i853, %bb.aq ] ; 10 uses
  %i.xa = getelementptr i8, ptr %.promoted1112.i863, i64 1024 ; 2 uses
  %bound01909 = icmp ult ptr %0, %i.xa
  %bound11910 = icmp ult ptr %.promoted1112.i863, %scevgep1859
  %found.conflict1911 = and i1 %bound01909, %bound11910
  %conflict.rdx1912 = or i1 %found.conflict1908, %found.conflict1911
  %bound01913 = icmp ult ptr %i.e, %i.xa
  %bound11914 = icmp ult ptr %.promoted1112.i863, %scevgep1903
  %found.conflict1915 = and i1 %bound01913, %bound11914
  %conflict.rdx1916 = or i1 %conflict.rdx1912, %found.conflict1915
  br i1 %conflict.rdx1916, label %.lr.ph.i.i864, label %vector.ph1917

vector.ph1917:                                    ; preds = %vector.memcheck1905
  %i.xb = getelementptr i8, ptr %.promoted1112.i863, i64 1024
  br label %vector.body1918

vector.body1918:                                  ; preds = %vector.body1918, %vector.ph1917
  %index1919 = phi i64 [ 0, %vector.ph1917 ], [ %index.next1925.3, %vector.body1918 ] ; 6 uses
  %next.gep1920 = getelementptr i8, ptr %.promoted1112.i863, i64 %index1919 ; 2 uses
  %next.gep1922 = getelementptr i8, ptr %i.e, i64 %index1919 ; 2 uses
  %i.xc = getelementptr i8, ptr %next.gep1920, i64 2
  %wide.load1923 = load <2 x i8>, ptr %next.gep1920, align 1, !tbaa !42, !alias.scope !294
  %wide.load1924 = load <2 x i8>, ptr %i.xc, align 1, !tbaa !42, !alias.scope !294
  %i.xd = getelementptr i8, ptr %next.gep1922, i64 2
  store <2 x i8> %wide.load1923, ptr %next.gep1922, align 16, !tbaa !42, !alias.scope !295, !noalias !294
  store <2 x i8> %wide.load1924, ptr %i.xd, align 2, !tbaa !42, !alias.scope !295, !noalias !294
  %index.next1925 = or disjoint i64 %index1919, 4 ; 2 uses
  %next.gep1920.1 = getelementptr i8, ptr %.promoted1112.i863, i64 %index.next1925 ; 2 uses
  %next.gep1922.1 = getelementptr i8, ptr %i.e, i64 %index.next1925 ; 2 uses
  %i.xe = getelementptr i8, ptr %next.gep1920.1, i64 2
  %wide.load1923.1 = load <2 x i8>, ptr %next.gep1920.1, align 1, !tbaa !42, !alias.scope !294
  %wide.load1924.1 = load <2 x i8>, ptr %i.xe, align 1, !tbaa !42, !alias.scope !294
  %i.xf = getelementptr i8, ptr %next.gep1922.1, i64 2
  store <2 x i8> %wide.load1923.1, ptr %next.gep1922.1, align 4, !tbaa !42, !alias.scope !295, !noalias !294
  store <2 x i8> %wide.load1924.1, ptr %i.xf, align 2, !tbaa !42, !alias.scope !295, !noalias !294
  %index.next1925.1 = or disjoint i64 %index1919, 8 ; 2 uses
  %next.gep1920.2 = getelementptr i8, ptr %.promoted1112.i863, i64 %index.next1925.1 ; 2 uses
  %next.gep1922.2 = getelementptr i8, ptr %i.e, i64 %index.next1925.1 ; 2 uses
  %i.xg = getelementptr i8, ptr %next.gep1920.2, i64 2
  %wide.load1923.2 = load <2 x i8>, ptr %next.gep1920.2, align 1, !tbaa !42, !alias.scope !294
  %wide.load1924.2 = load <2 x i8>, ptr %i.xg, align 1, !tbaa !42, !alias.scope !294
  %i.xh = getelementptr i8, ptr %next.gep1922.2, i64 2
  store <2 x i8> %wide.load1923.2, ptr %next.gep1922.2, align 8, !tbaa !42, !alias.scope !295, !noalias !294
  store <2 x i8> %wide.load1924.2, ptr %i.xh, align 2, !tbaa !42, !alias.scope !295, !noalias !294
  %index.next1925.2 = or disjoint i64 %index1919, 12 ; 3 uses
  %next.gep1920.3 = getelementptr i8, ptr %.promoted1112.i863, i64 %index.next1925.2 ; 2 uses
  %next.gep1922.3 = getelementptr i8, ptr %i.e, i64 %index.next1925.2 ; 2 uses
  %i.xi = getelementptr i8, ptr %next.gep1920.3, i64 2
  %wide.load1923.3 = load <2 x i8>, ptr %next.gep1920.3, align 1, !tbaa !42, !alias.scope !294
  %wide.load1924.3 = load <2 x i8>, ptr %i.xi, align 1, !tbaa !42, !alias.scope !294
  %i.xj = getelementptr i8, ptr %next.gep1922.3, i64 2
  store <2 x i8> %wide.load1923.3, ptr %next.gep1922.3, align 4, !tbaa !42, !alias.scope !295, !noalias !294
  store <2 x i8> %wide.load1924.3, ptr %i.xj, align 2, !tbaa !42, !alias.scope !295, !noalias !294
  %index.next1925.3 = add nuw nsw i64 %index1919, 16 ; 2 uses
  %i.xk = icmp eq i64 %index.next1925.3, 1024
  br i1 %i.xk, label %middle.block1926, label %vector.body1918, !llvm.loop !170

middle.block1926:                                 ; preds = %vector.body1918
  %i.xl = getelementptr i8, ptr %.promoted1112.i863, i64 %index.next1925.2
  %i.xm = getelementptr i8, ptr %i.xl, i64 4
  store ptr %i.xm, ptr %0, align 8, !tbaa !41, !alias.scope !296, !noalias !297
  br label %_ZN7Imf_3_49CharPtrIO9readCharsERPKcPci.exit.i868

.lr.ph.i.i864:                                    ; preds = %vector.memcheck1905, %.lr.ph.i.i864
  %i.xn = phi ptr [ %i.xy, %.lr.ph.i.i864 ], [ %.promoted1112.i863, %vector.memcheck1905 ] ; 5 uses
  %.05.i.i865 = phi i32 [ %i.xx, %.lr.ph.i.i864 ], [ 1024, %vector.memcheck1905 ]
  %.024.i.i866 = phi ptr [ %i.ya, %.lr.ph.i.i864 ], [ %i.e, %vector.memcheck1905 ] ; 5 uses
  %i.xo = getelementptr inbounds nuw i8, ptr %i.xn, i64 1 ; 2 uses
  store ptr %i.xo, ptr %0, align 8, !tbaa !41
  %i.xp = load i8, ptr %i.xn, align 1, !tbaa !42
  %i.xq = getelementptr inbounds nuw i8, ptr %.024.i.i866, i64 1
  store i8 %i.xp, ptr %.024.i.i866, align 1, !tbaa !42
  %i.xr = getelementptr inbounds nuw i8, ptr %i.xn, i64 2 ; 2 uses
  store ptr %i.xr, ptr %0, align 8, !tbaa !41
  %i.xs = load i8, ptr %i.xo, align 1, !tbaa !42
  %i.xt = getelementptr inbounds nuw i8, ptr %.024.i.i866, i64 2
  store i8 %i.xs, ptr %i.xq, align 1, !tbaa !42
  %i.xu = getelementptr inbounds nuw i8, ptr %i.xn, i64 3 ; 2 uses
  store ptr %i.xu, ptr %0, align 8, !tbaa !41
  %i.xv = load i8, ptr %i.xr, align 1, !tbaa !42
  %i.xw = getelementptr inbounds nuw i8, ptr %.024.i.i866, i64 3
  store i8 %i.xv, ptr %i.xt, align 1, !tbaa !42
  %i.xx = add nsw i32 %.05.i.i865, -4             ; 2 uses
  %i.xy = getelementptr inbounds nuw i8, ptr %i.xn, i64 4 ; 3 uses
  store ptr %i.xy, ptr %0, align 8, !tbaa !41
  %i.xz = load i8, ptr %i.xu, align 1, !tbaa !42
  %i.ya = getelementptr inbounds nuw i8, ptr %.024.i.i866, i64 4
  store i8 %i.xz, ptr %i.xw, align 1, !tbaa !42
  %.not.i.i867.3 = icmp eq i32 %i.xx, 0
  br i1 %.not.i.i867.3, label %_ZN7Imf_3_49CharPtrIO9readCharsERPKcPci.exit.i868, label %.lr.ph.i.i864, !llvm.loop !172

_ZN7Imf_3_49CharPtrIO9readCharsERPKcPci.exit.i868: ; preds = %.lr.ph.i.i864, %middle.block1926
  %.lcssa1515 = phi ptr [ %i.xb, %middle.block1926 ], [ %i.xy, %.lr.ph.i.i864 ] ; 2 uses
  %i.yb = add nsw i32 %.013.i862, -1024           ; 2 uses
  %i.yc = icmp sgt i32 %.013.i862, 2047
  br i1 %i.yc, label %vector.memcheck1905, label %._crit_edge.i854, !llvm.loop !1

._crit_edge.i854:                                 ; preds = %_ZN7Imf_3_49CharPtrIO9readCharsERPKcPci.exit.i868, %bb.aq
  %.promoted.i855 = phi ptr [ %.promoted10.i853, %bb.aq ], [ %.lcssa1515, %_ZN7Imf_3_49CharPtrIO9readCharsERPKcPci.exit.i868 ] ; 8 uses
  %.0.lcssa.i856 = phi i32 [ %i.wy, %bb.aq ], [ %i.yb, %_ZN7Imf_3_49CharPtrIO9readCharsERPKcPci.exit.i868 ] ; 7 uses
  %i.yd = icmp sgt i32 %.0.lcssa.i856, 0
  br i1 %i.yd, label %.lr.ph.i5.i857.preheader, label %_ZN7Imf_3_43Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit869

.lr.ph.i5.i857.preheader:                         ; preds = %._crit_edge.i854
  %i.ye = zext nneg i32 %.0.lcssa.i856 to i64     ; 2 uses
  %min.iters.check1861 = icmp ult i32 %.0.lcssa.i856, 12
  br i1 %min.iters.check1861, label %.lr.ph.i5.i857.preheader2288, label %vector.memcheck1862

vector.memcheck1862:                              ; preds = %.lr.ph.i5.i857.preheader
  %i.yf = zext nneg i32 %.0.lcssa.i856 to i64     ; 2 uses
  %i.yg = getelementptr i8, ptr %i.e, i64 %i.yf   ; 2 uses
  %i.yh = getelementptr i8, ptr %.promoted.i855, i64 %i.yf ; 2 uses
  %bound01863 = icmp ult ptr %0, %i.yg
  %found.conflict1865 = and i1 %bound01863, %bound11864
  %bound01866 = icmp ult ptr %0, %i.yh
  %bound11867 = icmp ult ptr %.promoted.i855, %scevgep1859
  %found.conflict1868 = and i1 %bound01866, %bound11867
  %conflict.rdx1869 = or i1 %found.conflict1865, %found.conflict1868
  %bound01870 = icmp ult ptr %i.e, %i.yh
  %bound11871 = icmp ult ptr %.promoted.i855, %i.yg
  %found.conflict1872 = and i1 %bound01870, %bound11871
  %conflict.rdx1873 = or i1 %conflict.rdx1869, %found.conflict1872
  br i1 %conflict.rdx1873, label %.lr.ph.i5.i857.preheader2288, label %vector.ph1874

vector.ph1874:                                    ; preds = %vector.memcheck1862
  %n.vec1875 = and i64 %i.ye, 2147483644          ; 5 uses
  %i.yi = getelementptr i8, ptr %.promoted.i855, i64 %n.vec1875
  %i.yj = trunc nuw nsw i64 %n.vec1875 to i32
  %i.yk = sub nsw i32 %.0.lcssa.i856, %i.yj
  %i.yl = getelementptr i8, ptr %i.e, i64 %n.vec1875
  br label %vector.body1876

vector.body1876:                                  ; preds = %vector.body1876, %vector.ph1874
  %index1877 = phi i64 [ 0, %vector.ph1874 ], [ %index.next1883, %vector.body1876 ] ; 4 uses
  %next.gep1878 = getelementptr i8, ptr %.promoted.i855, i64 %index1877 ; 2 uses
  %next.gep1880 = getelementptr i8, ptr %i.e, i64 %index1877 ; 2 uses
  %i.ym = getelementptr i8, ptr %next.gep1878, i64 2
  %wide.load1881 = load <2 x i8>, ptr %next.gep1878, align 1, !tbaa !42, !alias.scope !298
  %wide.load1882 = load <2 x i8>, ptr %i.ym, align 1, !tbaa !42, !alias.scope !298
  %i.yn = getelementptr i8, ptr %next.gep1880, i64 2
  store <2 x i8> %wide.load1881, ptr %next.gep1880, align 4, !tbaa !42, !alias.scope !299, !noalias !298
  store <2 x i8> %wide.load1882, ptr %i.yn, align 2, !tbaa !42, !alias.scope !299, !noalias !298
  %index.next1883 = add nuw i64 %index1877, 4     ; 2 uses
  %i.yo = icmp eq i64 %index.next1883, %n.vec1875
  br i1 %i.yo, label %middle.block1884, label %vector.body1876, !llvm.loop !176

middle.block1884:                                 ; preds = %vector.body1876
  %i.yp = getelementptr i8, ptr %.promoted.i855, i64 %index1877
  %i.yq = getelementptr i8, ptr %i.yp, i64 4
  store ptr %i.yq, ptr %0, align 8, !tbaa !41, !alias.scope !300, !noalias !301
  %cmp.n1885 = icmp eq i64 %n.vec1875, %i.ye
  br i1 %cmp.n1885, label %_ZN7Imf_3_43Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit869, label %.lr.ph.i5.i857.preheader2288

.lr.ph.i5.i857.preheader2288:                     ; preds = %vector.memcheck1862, %.lr.ph.i5.i857.preheader, %middle.block1884
  %.ph2289 = phi ptr [ %.promoted.i855, %vector.memcheck1862 ], [ %.promoted.i855, %.lr.ph.i5.i857.preheader ], [ %i.yi, %middle.block1884 ] ; 2 uses
  %.05.i6.i858.ph = phi i32 [ %.0.lcssa.i856, %vector.memcheck1862 ], [ %.0.lcssa.i856, %.lr.ph.i5.i857.preheader ], [ %i.yk, %middle.block1884 ] ; 4 uses
  %.024.i7.i859.ph = phi ptr [ %i.e, %vector.memcheck1862 ], [ %i.e, %.lr.ph.i5.i857.preheader ], [ %i.yl, %middle.block1884 ] ; 2 uses
  %i.yr = add nsw i32 %.05.i6.i858.ph, -1
  %xtraiter2376 = and i32 %.05.i6.i858.ph, 3      ; 2 uses
  %lcmp.mod2377.not = icmp eq i32 %xtraiter2376, 0
  br i1 %lcmp.mod2377.not, label %.lr.ph.i5.i857.prol.loopexit, label %.lr.ph.i5.i857.prol

.lr.ph.i5.i857.prol:                              ; preds = %.lr.ph.i5.i857.preheader2288, %.lr.ph.i5.i857.prol
  %i.ys = phi ptr [ %i.yu, %.lr.ph.i5.i857.prol ], [ %.ph2289, %.lr.ph.i5.i857.preheader2288 ] ; 2 uses
  %.05.i6.i858.prol = phi i32 [ %i.yt, %.lr.ph.i5.i857.prol ], [ %.05.i6.i858.ph, %.lr.ph.i5.i857.preheader2288 ]
  %.024.i7.i859.prol = phi ptr [ %i.yw, %.lr.ph.i5.i857.prol ], [ %.024.i7.i859.ph, %.lr.ph.i5.i857.preheader2288 ] ; 2 uses
  %prol.iter2378 = phi i32 [ %prol.iter2378.next, %.lr.ph.i5.i857.prol ], [ 0, %.lr.ph.i5.i857.preheader2288 ]
  %i.yt = add nsw i32 %.05.i6.i858.prol, -1       ; 2 uses
  %i.yu = getelementptr inbounds nuw i8, ptr %i.ys, i64 1 ; 3 uses
  store ptr %i.yu, ptr %0, align 8, !tbaa !41
  %i.yv = load i8, ptr %i.ys, align 1, !tbaa !42
  %i.yw = getelementptr inbounds nuw i8, ptr %.024.i7.i859.prol, i64 1 ; 2 uses
  store i8 %i.yv, ptr %.024.i7.i859.prol, align 1, !tbaa !42
  %prol.iter2378.next = add i32 %prol.iter2378, 1 ; 2 uses
  %prol.iter2378.cmp.not = icmp eq i32 %prol.iter2378.next, %xtraiter2376
  br i1 %prol.iter2378.cmp.not, label %.lr.ph.i5.i857.prol.loopexit, label %.lr.ph.i5.i857.prol, !llvm.loop !178

.lr.ph.i5.i857.prol.loopexit:                     ; preds = %.lr.ph.i5.i857.prol, %.lr.ph.i5.i857.preheader2288
  %.unr2379 = phi ptr [ %.ph2289, %.lr.ph.i5.i857.preheader2288 ], [ %i.yu, %.lr.ph.i5.i857.prol ]
  %.05.i6.i858.unr = phi i32 [ %.05.i6.i858.ph, %.lr.ph.i5.i857.preheader2288 ], [ %i.yt, %.lr.ph.i5.i857.prol ]
  %.024.i7.i859.unr = phi ptr [ %.024.i7.i859.ph, %.lr.ph.i5.i857.preheader2288 ], [ %i.yw, %.lr.ph.i5.i857.prol ]
  %i.yx = icmp ult i32 %i.yr, 3
  br i1 %i.yx, label %_ZN7Imf_3_43Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit869, label %.lr.ph.i5.i857

.lr.ph.i5.i857:                                   ; preds = %.lr.ph.i5.i857.prol.loopexit, %.lr.ph.i5.i857
  %i.yy = phi ptr [ %i.zj, %.lr.ph.i5.i857 ], [ %.unr2379, %.lr.ph.i5.i857.prol.loopexit ] ; 5 uses
  %.05.i6.i858 = phi i32 [ %i.zi, %.lr.ph.i5.i857 ], [ %.05.i6.i858.unr, %.lr.ph.i5.i857.prol.loopexit ]
  %.024.i7.i859 = phi ptr [ %i.zl, %.lr.ph.i5.i857 ], [ %.024.i7.i859.unr, %.lr.ph.i5.i857.prol.loopexit ] ; 5 uses
  %i.yz = getelementptr inbounds nuw i8, ptr %i.yy, i64 1 ; 2 uses
  store ptr %i.yz, ptr %0, align 8, !tbaa !41
  %i.za = load i8, ptr %i.yy, align 1, !tbaa !42
  %i.zb = getelementptr inbounds nuw i8, ptr %.024.i7.i859, i64 1
  store i8 %i.za, ptr %.024.i7.i859, align 1, !tbaa !42
  %i.zc = getelementptr inbounds nuw i8, ptr %i.yy, i64 2 ; 2 uses
  store ptr %i.zc, ptr %0, align 8, !tbaa !41
  %i.zd = load i8, ptr %i.yz, align 1, !tbaa !42
  %i.ze = getelementptr inbounds nuw i8, ptr %.024.i7.i859, i64 2
  store i8 %i.zd, ptr %i.zb, align 1, !tbaa !42
  %i.zf = getelementptr inbounds nuw i8, ptr %i.yy, i64 3 ; 2 uses
  store ptr %i.zf, ptr %0, align 8, !tbaa !41
  %i.zg = load i8, ptr %i.zc, align 1, !tbaa !42
  %i.zh = getelementptr inbounds nuw i8, ptr %.024.i7.i859, i64 3
  store i8 %i.zg, ptr %i.ze, align 1, !tbaa !42
  %i.zi = add nsw i32 %.05.i6.i858, -4            ; 2 uses
  %i.zj = getelementptr inbounds nuw i8, ptr %i.yy, i64 4 ; 2 uses
  store ptr %i.zj, ptr %0, align 8, !tbaa !41
  %i.zk = load i8, ptr %i.zf, align 1, !tbaa !42
  %i.zl = getelementptr inbounds nuw i8, ptr %.024.i7.i859, i64 4
  store i8 %i.zk, ptr %i.zh, align 1, !tbaa !42
  %.not.i8.i860.3 = icmp eq i32 %i.zi, 0
  br i1 %.not.i8.i860.3, label %_ZN7Imf_3_43Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit869, label %.lr.ph.i5.i857, !llvm.loop !179

_ZN7Imf_3_43Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit869: ; preds = %.lr.ph.i5.i857.prol.loopexit, %.lr.ph.i5.i857, %middle.block1884, %._crit_edge.i854
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #19
  br label %.loopexit1002

.loopexit1002.loopexit.unr-lcssa:                 ; preds = %bb.ap
  %lcmp.mod2372.not = icmp eq i32 %xtraiter2368.a, 0
  br i1 %lcmp.mod2372.not, label %.loopexit1002, label %.epil.preheader2367

.epil.preheader2367:                              ; preds = %.loopexit1002.loopexit.unr-lcssa, %.lr.ph1165
  %.epil.init2371 = phi ptr [ %.promoted1166, %.lr.ph1165 ], [ %i.wv, %.loopexit1002.loopexit.unr-lcssa ] ; 3 uses
  %.06821163.epil.init = phi ptr [ %i.wg, %.lr.ph1165 ], [ %i.wx, %.loopexit1002.loopexit.unr-lcssa ]
  %lcmp.mod2373 = trunc i32 %i.wk to i1
  call void @llvm.assume(i1 %lcmp.mod2373)
  %i.zm = getelementptr inbounds nuw i8, ptr %.epil.init2371, i64 1 ; 2 uses
  store ptr %i.zm, ptr %0, align 8, !tbaa !41
  %i.zn = load i8, ptr %.epil.init2371, align 1, !tbaa !42
  %i.zo = getelementptr inbounds nuw i8, ptr %.epil.init2371, i64 2
  store ptr %i.zo, ptr %0, align 8, !tbaa !41
  %i.zp = load i8, ptr %i.zm, align 1, !tbaa !42
  %.sroa.4.0.insert.ext.i849.epil = zext i8 %i.zp to i16
  %.sroa.4.0.insert.shift.i850.epil = shl nuw i16 %.sroa.4.0.insert.ext.i849.epil, 8
  %.sroa.0.0.insert.ext.i851.epil = zext i8 %i.zn to i16
  %.sroa.0.0.insert.insert.i852.epil = or disjoint i16 %.sroa.4.0.insert.shift.i850.epil, %.sroa.0.0.insert.ext.i851.epil
  store i16 %.sroa.0.0.insert.insert.i852.epil, ptr %.06821163.epil.init, align 2, !tbaa !44
  br label %.loopexit1002

.loopexit1002:                                    ; preds = %.epil.preheader2367, %.loopexit1002.loopexit.unr-lcssa, %.preheader1001, %_ZN7Imf_3_43Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit869
  %indvars.iv.next1328 = add nsw i64 %indvars.iv1327, 1 ; 2 uses
  %lftr.wideiv1330 = trunc i64 %indvars.iv.next1328 to i32
  %exitcond1331.not = icmp eq i32 %i.se, %lftr.wideiv1330
  br i1 %exitcond1331.not, label %.loopexit981, label %bb.ao, !llvm.loop !180

bb.ar:                                            ; preds = %.lr.ph1162, %.loopexit1006
  %indvars.iv1321 = phi i64 [ %i.rl, %.lr.ph1162 ], [ %indvars.iv.next1322, %.loopexit1006 ] ; 3 uses
  %i.zq = sub nsw i64 %indvars.iv1321, %i.rm
  %i.zr = mul nsw i64 %13, %i.zq
  %i.zs = getelementptr inbounds i8, ptr %i.rc, i64 %i.zr
  %i.zt = load ptr, ptr %i.zs, align 8, !tbaa !41 ; 2 uses
  %i.zu = sub nsw i64 %indvars.iv1321, %i.rn
  %i.zv = mul nsw i64 %i.rk, %i.zu
  %i.zw = getelementptr inbounds i8, ptr %i.ri, i64 %i.zv
  %i.zx = load i32, ptr %i.zw, align 4, !tbaa !32 ; 4 uses
  %.not750 = icmp eq ptr %i.zt, null
  br i1 %.not750, label %bb.as, label %.preheader1005

.preheader1005:                                   ; preds = %bb.ar
  %i.zy = icmp sgt i32 %i.zx, 0
  br i1 %i.zy, label %.lr.ph1159, label %.loopexit1006

.lr.ph1159:                                       ; preds = %.preheader1005, %.lr.ph1159
  %.06781158 = phi i32 [ %i.aak, %.lr.ph1159 ], [ 0, %.preheader1005 ]
  %.06791157 = phi ptr [ %i.aaj, %.lr.ph1159 ], [ %i.zt, %.preheader1005 ] ; 2 uses
  %.promoted.i870 = load ptr, ptr %0, align 8, !tbaa !41 ; 5 uses
  %i.zz = getelementptr inbounds nuw i8, ptr %.promoted.i870, i64 1 ; 2 uses
  store ptr %i.zz, ptr %0, align 8, !tbaa !41
  %i.aaa = load i8, ptr %.promoted.i870, align 1, !tbaa !42
  %i.aab = getelementptr inbounds nuw i8, ptr %.promoted.i870, i64 2 ; 2 uses
  store ptr %i.aab, ptr %0, align 8, !tbaa !41
  %i.aac = load i8, ptr %i.zz, align 1, !tbaa !42
  %i.aad = getelementptr inbounds nuw i8, ptr %.promoted.i870, i64 3 ; 2 uses
  store ptr %i.aad, ptr %0, align 8, !tbaa !41
  %i.aae = load i8, ptr %i.aab, align 1, !tbaa !42
  %i.aaf = getelementptr inbounds nuw i8, ptr %.promoted.i870, i64 4
  store ptr %i.aaf, ptr %0, align 8, !tbaa !41
  %i.aag = load i8, ptr %i.aad, align 1, !tbaa !42
  %.sroa.6.0.insert.ext.i871 = zext i8 %i.aag to i32
  %.sroa.6.0.insert.shift.i872 = shl nuw i32 %.sroa.6.0.insert.ext.i871, 24
  %.sroa.5.0.insert.ext.i873 = zext i8 %i.aae to i32
  %.sroa.5.0.insert.shift.i874 = shl nuw nsw i32 %.sroa.5.0.insert.ext.i873, 16
  %.sroa.4.0.insert.ext.i876 = zext i8 %i.aac to i32
  %.sroa.4.0.insert.shift.i877 = shl nuw nsw i32 %.sroa.4.0.insert.ext.i876, 8
  %.sroa.0.0.insert.ext.i879 = zext i8 %i.aaa to i32
  %.sroa.5.0.insert.insert.i875 = or disjoint i32 %.sroa.4.0.insert.shift.i877, %.sroa.0.0.insert.ext.i879
  %.sroa.4.0.insert.insert.i878 = or disjoint i32 %.sroa.5.0.insert.insert.i875, %.sroa.5.0.insert.shift.i874
  %.sroa.0.0.insert.insert.i880 = or disjoint i32 %.sroa.4.0.insert.insert.i878, %.sroa.6.0.insert.shift.i872
  %i.aah = bitcast i32 %.sroa.0.0.insert.insert.i880 to float
  %i.aai = tail call i16 @_ZN7Imf_3_411floatToHalfEf(float noundef %i.aah)
  store i16 %i.aai, ptr %.06791157, align 2, !tbaa !37
  %i.aaj = getelementptr inbounds i8, ptr %.06791157, i64 %12
  %i.aak = add nuw nsw i32 %.06781158, 1          ; 2 uses
  %exitcond1320.not = icmp eq i32 %i.aak, %i.zx
  br i1 %exitcond1320.not, label %.loopexit1006, label %.lr.ph1159, !llvm.loop !181

bb.as:                                            ; preds = %bb.ar
  %i.aal = shl nsw i32 %i.zx, 2                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #19
  %.promoted10.i881 = load ptr, ptr %0, align 8   ; 2 uses
  %i.aam = icmp sgt i32 %i.zx, 255
  br i1 %i.aam, label %vector.memcheck1820, label %._crit_edge.i882

vector.memcheck1820:                              ; preds = %bb.as, %_ZN7Imf_3_49CharPtrIO9readCharsERPKcPci.exit.i896
  %.013.i890 = phi i32 [ %i.abo, %_ZN7Imf_3_49CharPtrIO9readCharsERPKcPci.exit.i896 ], [ %i.aal, %bb.as ] ; 2 uses
  %.promoted1112.i891 = phi ptr [ %.lcssa1517, %_ZN7Imf_3_49CharPtrIO9readCharsERPKcPci.exit.i896 ], [ %.promoted10.i881, %bb.as ] ; 10 uses
  %i.aan = getelementptr i8, ptr %.promoted1112.i891, i64 1024 ; 2 uses
  %bound01824 = icmp ult ptr %0, %i.aan
  %bound11825 = icmp ult ptr %.promoted1112.i891, %scevgep1774
  %found.conflict1826 = and i1 %bound01824, %bound11825
  %conflict.rdx1827 = or i1 %found.conflict1823, %found.conflict1826
  %bound01828 = icmp ult ptr %i.d, %i.aan
  %bound11829 = icmp ult ptr %.promoted1112.i891, %scevgep1818
  %found.conflict1830 = and i1 %bound01828, %bound11829
  %conflict.rdx1831 = or i1 %conflict.rdx1827, %found.conflict1830
  br i1 %conflict.rdx1831, label %.lr.ph.i.i892, label %vector.ph1832

vector.ph1832:                                    ; preds = %vector.memcheck1820
  %i.aao = getelementptr i8, ptr %.promoted1112.i891, i64 1024
  br label %vector.body1833

vector.body1833:                                  ; preds = %vector.body1833, %vector.ph1832
  %index1834 = phi i64 [ 0, %vector.ph1832 ], [ %index.next1840.3, %vector.body1833 ] ; 6 uses
  %next.gep1835 = getelementptr i8, ptr %.promoted1112.i891, i64 %index1834 ; 2 uses
  %next.gep1837 = getelementptr i8, ptr %i.d, i64 %index1834 ; 2 uses
  %i.aap = getelementptr i8, ptr %next.gep1835, i64 2
  %wide.load1838 = load <2 x i8>, ptr %next.gep1835, align 1, !tbaa !42, !alias.scope !302
  %wide.load1839 = load <2 x i8>, ptr %i.aap, align 1, !tbaa !42, !alias.scope !302
  %i.aaq = getelementptr i8, ptr %next.gep1837, i64 2
  store <2 x i8> %wide.load1838, ptr %next.gep1837, align 16, !tbaa !42, !alias.scope !303, !noalias !302
  store <2 x i8> %wide.load1839, ptr %i.aaq, align 2, !tbaa !42, !alias.scope !303, !noalias !302
  %index.next1840 = or disjoint i64 %index1834, 4 ; 2 uses
  %next.gep1835.1 = getelementptr i8, ptr %.promoted1112.i891, i64 %index.next1840 ; 2 uses
  %next.gep1837.1 = getelementptr i8, ptr %i.d, i64 %index.next1840 ; 2 uses
  %i.aar = getelementptr i8, ptr %next.gep1835.1, i64 2
  %wide.load1838.1 = load <2 x i8>, ptr %next.gep1835.1, align 1, !tbaa !42, !alias.scope !302
  %wide.load1839.1 = load <2 x i8>, ptr %i.aar, align 1, !tbaa !42, !alias.scope !302
  %i.aas = getelementptr i8, ptr %next.gep1837.1, i64 2
  store <2 x i8> %wide.load1838.1, ptr %next.gep1837.1, align 4, !tbaa !42, !alias.scope !303, !noalias !302
  store <2 x i8> %wide.load1839.1, ptr %i.aas, align 2, !tbaa !42, !alias.scope !303, !noalias !302
  %index.next1840.1 = or disjoint i64 %index1834, 8 ; 2 uses
  %next.gep1835.2 = getelementptr i8, ptr %.promoted1112.i891, i64 %index.next1840.1 ; 2 uses
  %next.gep1837.2 = getelementptr i8, ptr %i.d, i64 %index.next1840.1 ; 2 uses
  %i.aat = getelementptr i8, ptr %next.gep1835.2, i64 2
  %wide.load1838.2 = load <2 x i8>, ptr %next.gep1835.2, align 1, !tbaa !42, !alias.scope !302
  %wide.load1839.2 = load <2 x i8>, ptr %i.aat, align 1, !tbaa !42, !alias.scope !302
  %i.aau = getelementptr i8, ptr %next.gep1837.2, i64 2
  store <2 x i8> %wide.load1838.2, ptr %next.gep1837.2, align 8, !tbaa !42, !alias.scope !303, !noalias !302
  store <2 x i8> %wide.load1839.2, ptr %i.aau, align 2, !tbaa !42, !alias.scope !303, !noalias !302
  %index.next1840.2 = or disjoint i64 %index1834, 12 ; 3 uses
  %next.gep1835.3 = getelementptr i8, ptr %.promoted1112.i891, i64 %index.next1840.2 ; 2 uses
  %next.gep1837.3 = getelementptr i8, ptr %i.d, i64 %index.next1840.2 ; 2 uses
  %i.aav = getelementptr i8, ptr %next.gep1835.3, i64 2
  %wide.load1838.3 = load <2 x i8>, ptr %next.gep1835.3, align 1, !tbaa !42, !alias.scope !302
  %wide.load1839.3 = load <2 x i8>, ptr %i.aav, align 1, !tbaa !42, !alias.scope !302
  %i.aaw = getelementptr i8, ptr %next.gep1837.3, i64 2
  store <2 x i8> %wide.load1838.3, ptr %next.gep1837.3, align 4, !tbaa !42, !alias.scope !303, !noalias !302
  store <2 x i8> %wide.load1839.3, ptr %i.aaw, align 2, !tbaa !42, !alias.scope !303, !noalias !302
  %index.next1840.3 = add nuw nsw i64 %index1834, 16 ; 2 uses
  %i.aax = icmp eq i64 %index.next1840.3, 1024
  br i1 %i.aax, label %middle.block1841, label %vector.body1833, !llvm.loop !185

middle.block1841:                                 ; preds = %vector.body1833
  %i.aay = getelementptr i8, ptr %.promoted1112.i891, i64 %index.next1840.2
  %i.aaz = getelementptr i8, ptr %i.aay, i64 4
  store ptr %i.aaz, ptr %0, align 8, !tbaa !41, !alias.scope !304, !noalias !305
  br label %_ZN7Imf_3_49CharPtrIO9readCharsERPKcPci.exit.i896

.lr.ph.i.i892:                                    ; preds = %vector.memcheck1820, %.lr.ph.i.i892
  %i.aba = phi ptr [ %i.abl, %.lr.ph.i.i892 ], [ %.promoted1112.i891, %vector.memcheck1820 ] ; 5 uses
  %.05.i.i893 = phi i32 [ %i.abk, %.lr.ph.i.i892 ], [ 1024, %vector.memcheck1820 ]
  %.024.i.i894 = phi ptr [ %i.abn, %.lr.ph.i.i892 ], [ %i.d, %vector.memcheck1820 ] ; 5 uses
  %i.abb = getelementptr inbounds nuw i8, ptr %i.aba, i64 1 ; 2 uses
  store ptr %i.abb, ptr %0, align 8, !tbaa !41
  %i.abc = load i8, ptr %i.aba, align 1, !tbaa !42
  %i.abd = getelementptr inbounds nuw i8, ptr %.024.i.i894, i64 1
  store i8 %i.abc, ptr %.024.i.i894, align 1, !tbaa !42
  %i.abe = getelementptr inbounds nuw i8, ptr %i.aba, i64 2 ; 2 uses
  store ptr %i.abe, ptr %0, align 8, !tbaa !41
  %i.abf = load i8, ptr %i.abb, align 1, !tbaa !42
  %i.abg = getelementptr inbounds nuw i8, ptr %.024.i.i894, i64 2
  store i8 %i.abf, ptr %i.abd, align 1, !tbaa !42
  %i.abh = getelementptr inbounds nuw i8, ptr %i.aba, i64 3 ; 2 uses
  store ptr %i.abh, ptr %0, align 8, !tbaa !41
  %i.abi = load i8, ptr %i.abe, align 1, !tbaa !42
  %i.abj = getelementptr inbounds nuw i8, ptr %.024.i.i894, i64 3
  store i8 %i.abi, ptr %i.abg, align 1, !tbaa !42
  %i.abk = add nsw i32 %.05.i.i893, -4            ; 2 uses
  %i.abl = getelementptr inbounds nuw i8, ptr %i.aba, i64 4 ; 3 uses
  store ptr %i.abl, ptr %0, align 8, !tbaa !41
  %i.abm = load i8, ptr %i.abh, align 1, !tbaa !42
  %i.abn = getelementptr inbounds nuw i8, ptr %.024.i.i894, i64 4
  store i8 %i.abm, ptr %i.abj, align 1, !tbaa !42
  %.not.i.i895.3 = icmp eq i32 %i.abk, 0
  br i1 %.not.i.i895.3, label %_ZN7Imf_3_49CharPtrIO9readCharsERPKcPci.exit.i896, label %.lr.ph.i.i892, !llvm.loop !187

_ZN7Imf_3_49CharPtrIO9readCharsERPKcPci.exit.i896: ; preds = %.lr.ph.i.i892, %middle.block1841
  %.lcssa1517 = phi ptr [ %i.aao, %middle.block1841 ], [ %i.abl, %.lr.ph.i.i892 ] ; 2 uses
  %i.abo = add nsw i32 %.013.i890, -1024          ; 2 uses
  %i.abp = icmp sgt i32 %.013.i890, 2047
  br i1 %i.abp, label %vector.memcheck1820, label %._crit_edge.i882, !llvm.loop !1

._crit_edge.i882:                                 ; preds = %_ZN7Imf_3_49CharPtrIO9readCharsERPKcPci.exit.i896, %bb.as
  %.promoted.i883 = phi ptr [ %.promoted10.i881, %bb.as ], [ %.lcssa1517, %_ZN7Imf_3_49CharPtrIO9readCharsERPKcPci.exit.i896 ] ; 8 uses
  %.0.lcssa.i884 = phi i32 [ %i.aal, %bb.as ], [ %i.abo, %_ZN7Imf_3_49CharPtrIO9readCharsERPKcPci.exit.i896 ] ; 7 uses
  %i.abq = icmp sgt i32 %.0.lcssa.i884, 0
  br i1 %i.abq, label %.lr.ph.i5.i885.preheader, label %_ZN7Imf_3_43Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit897

.lr.ph.i5.i885.preheader:                         ; preds = %._crit_edge.i882
  %i.abr = zext nneg i32 %.0.lcssa.i884 to i64    ; 2 uses
  %min.iters.check1776 = icmp ult i32 %.0.lcssa.i884, 12
  br i1 %min.iters.check1776, label %.lr.ph.i5.i885.preheader2293, label %vector.memcheck1777

vector.memcheck1777:                              ; preds = %.lr.ph.i5.i885.preheader
  %i.abs = zext nneg i32 %.0.lcssa.i884 to i64    ; 2 uses
  %i.abt = getelementptr i8, ptr %i.d, i64 %i.abs ; 2 uses
  %i.abu = getelementptr i8, ptr %.promoted.i883, i64 %i.abs ; 2 uses
  %bound01778 = icmp ult ptr %0, %i.abt
  %found.conflict1780 = and i1 %bound01778, %bound11779
  %bound01781 = icmp ult ptr %0, %i.abu
  %bound11782 = icmp ult ptr %.promoted.i883, %scevgep1774
  %found.conflict1783 = and i1 %bound01781, %bound11782
  %conflict.rdx1784 = or i1 %found.conflict1780, %found.conflict1783
  %bound01785 = icmp ult ptr %i.d, %i.abu
  %bound11786 = icmp ult ptr %.promoted.i883, %i.abt
  %found.conflict1787 = and i1 %bound01785, %bound11786
  %conflict.rdx1788 = or i1 %conflict.rdx1784, %found.conflict1787
  br i1 %conflict.rdx1788, label %.lr.ph.i5.i885.preheader2293, label %vector.ph1789

vector.ph1789:                                    ; preds = %vector.memcheck1777
  %n.vec1790 = and i64 %i.abr, 2147483644         ; 5 uses
  %i.abv = getelementptr i8, ptr %.promoted.i883, i64 %n.vec1790
  %i.abw = trunc nuw nsw i64 %n.vec1790 to i32
  %i.abx = sub nsw i32 %.0.lcssa.i884, %i.abw
  %i.aby = getelementptr i8, ptr %i.d, i64 %n.vec1790
  br label %vector.body1791

vector.body1791:                                  ; preds = %vector.body1791, %vector.ph1789
  %index1792 = phi i64 [ 0, %vector.ph1789 ], [ %index.next1798, %vector.body1791 ] ; 4 uses
  %next.gep1793 = getelementptr i8, ptr %.promoted.i883, i64 %index1792 ; 2 uses
  %next.gep1795 = getelementptr i8, ptr %i.d, i64 %index1792 ; 2 uses
  %i.abz = getelementptr i8, ptr %next.gep1793, i64 2
  %wide.load1796 = load <2 x i8>, ptr %next.gep1793, align 1, !tbaa !42, !alias.scope !306
  %wide.load1797 = load <2 x i8>, ptr %i.abz, align 1, !tbaa !42, !alias.scope !306
  %i.aca = getelementptr i8, ptr %next.gep1795, i64 2
  store <2 x i8> %wide.load1796, ptr %next.gep1795, align 4, !tbaa !42, !alias.scope !307, !noalias !306
  store <2 x i8> %wide.load1797, ptr %i.aca, align 2, !tbaa !42, !alias.scope !307, !noalias !306
  %index.next1798 = add nuw i64 %index1792, 4     ; 2 uses
  %i.acb = icmp eq i64 %index.next1798, %n.vec1790
  br i1 %i.acb, label %middle.block1799, label %vector.body1791, !llvm.loop !191

middle.block1799:                                 ; preds = %vector.body1791
  %i.acc = getelementptr i8, ptr %.promoted.i883, i64 %index1792
  %i.acd = getelementptr i8, ptr %i.acc, i64 4
  store ptr %i.acd, ptr %0, align 8, !tbaa !41, !alias.scope !308, !noalias !309
  %cmp.n1800 = icmp eq i64 %n.vec1790, %i.abr
  br i1 %cmp.n1800, label %_ZN7Imf_3_43Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit897, label %.lr.ph.i5.i885.preheader2293

.lr.ph.i5.i885.preheader2293:                     ; preds = %vector.memcheck1777, %.lr.ph.i5.i885.preheader, %middle.block1799
  %.ph2294 = phi ptr [ %.promoted.i883, %vector.memcheck1777 ], [ %.promoted.i883, %.lr.ph.i5.i885.preheader ], [ %i.abv, %middle.block1799 ] ; 2 uses
  %.05.i6.i886.ph = phi i32 [ %.0.lcssa.i884, %vector.memcheck1777 ], [ %.0.lcssa.i884, %.lr.ph.i5.i885.preheader ], [ %i.abx, %middle.block1799 ] ; 4 uses
  %.024.i7.i887.ph = phi ptr [ %i.d, %vector.memcheck1777 ], [ %i.d, %.lr.ph.i5.i885.preheader ], [ %i.aby, %middle.block1799 ] ; 2 uses
  %i.ace = add nsw i32 %.05.i6.i886.ph, -1
  %xtraiter2363 = and i32 %.05.i6.i886.ph, 3      ; 2 uses
  %lcmp.mod2364.not = icmp eq i32 %xtraiter2363, 0
  br i1 %lcmp.mod2364.not, label %.lr.ph.i5.i885.prol.loopexit, label %.lr.ph.i5.i885.prol

.lr.ph.i5.i885.prol:                              ; preds = %.lr.ph.i5.i885.preheader2293, %.lr.ph.i5.i885.prol
  %i.acf = phi ptr [ %i.ach, %.lr.ph.i5.i885.prol ], [ %.ph2294, %.lr.ph.i5.i885.preheader2293 ] ; 2 uses
  %.05.i6.i886.prol = phi i32 [ %i.acg, %.lr.ph.i5.i885.prol ], [ %.05.i6.i886.ph, %.lr.ph.i5.i885.preheader2293 ]
  %.024.i7.i887.prol = phi ptr [ %i.acj, %.lr.ph.i5.i885.prol ], [ %.024.i7.i887.ph, %.lr.ph.i5.i885.preheader2293 ] ; 2 uses
  %prol.iter2365 = phi i32 [ %prol.iter2365.next, %.lr.ph.i5.i885.prol ], [ 0, %.lr.ph.i5.i885.preheader2293 ]
  %i.acg = add nsw i32 %.05.i6.i886.prol, -1      ; 2 uses
  %i.ach = getelementptr inbounds nuw i8, ptr %i.acf, i64 1 ; 3 uses
  store ptr %i.ach, ptr %0, align 8, !tbaa !41
  %i.aci = load i8, ptr %i.acf, align 1, !tbaa !42
  %i.acj = getelementptr inbounds nuw i8, ptr %.024.i7.i887.prol, i64 1 ; 2 uses
  store i8 %i.aci, ptr %.024.i7.i887.prol, align 1, !tbaa !42
  %prol.iter2365.next = add i32 %prol.iter2365, 1 ; 2 uses
  %prol.iter2365.cmp.not = icmp eq i32 %prol.iter2365.next, %xtraiter2363
  br i1 %prol.iter2365.cmp.not, label %.lr.ph.i5.i885.prol.loopexit, label %.lr.ph.i5.i885.prol, !llvm.loop !193

.lr.ph.i5.i885.prol.loopexit:                     ; preds = %.lr.ph.i5.i885.prol, %.lr.ph.i5.i885.preheader2293
  %.unr2366 = phi ptr [ %.ph2294, %.lr.ph.i5.i885.preheader2293 ], [ %i.ach, %.lr.ph.i5.i885.prol ]
  %.05.i6.i886.unr = phi i32 [ %.05.i6.i886.ph, %.lr.ph.i5.i885.preheader2293 ], [ %i.acg, %.lr.ph.i5.i885.prol ]
  %.024.i7.i887.unr = phi ptr [ %.024.i7.i887.ph, %.lr.ph.i5.i885.preheader2293 ], [ %i.acj, %.lr.ph.i5.i885.prol ]
  %i.ack = icmp ult i32 %i.ace, 3
  br i1 %i.ack, label %_ZN7Imf_3_43Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit897, label %.lr.ph.i5.i885

.lr.ph.i5.i885:                                   ; preds = %.lr.ph.i5.i885.prol.loopexit, %.lr.ph.i5.i885
  %i.acl = phi ptr [ %i.acw, %.lr.ph.i5.i885 ], [ %.unr2366, %.lr.ph.i5.i885.prol.loopexit ] ; 5 uses
  %.05.i6.i886 = phi i32 [ %i.acv, %.lr.ph.i5.i885 ], [ %.05.i6.i886.unr, %.lr.ph.i5.i885.prol.loopexit ]
  %.024.i7.i887 = phi ptr [ %i.acy, %.lr.ph.i5.i885 ], [ %.024.i7.i887.unr, %.lr.ph.i5.i885.prol.loopexit ] ; 5 uses
  %i.acm = getelementptr inbounds nuw i8, ptr %i.acl, i64 1 ; 2 uses
  store ptr %i.acm, ptr %0, align 8, !tbaa !41
  %i.acn = load i8, ptr %i.acl, align 1, !tbaa !42
  %i.aco = getelementptr inbounds nuw i8, ptr %.024.i7.i887, i64 1
  store i8 %i.acn, ptr %.024.i7.i887, align 1, !tbaa !42
  %i.acp = getelementptr inbounds nuw i8, ptr %i.acl, i64 2 ; 2 uses
  store ptr %i.acp, ptr %0, align 8, !tbaa !41
  %i.acq = load i8, ptr %i.acm, align 1, !tbaa !42
  %i.acr = getelementptr inbounds nuw i8, ptr %.024.i7.i887, i64 2
  store i8 %i.acq, ptr %i.aco, align 1, !tbaa !42
  %i.acs = getelementptr inbounds nuw i8, ptr %i.acl, i64 3 ; 2 uses
  store ptr %i.acs, ptr %0, align 8, !tbaa !41
  %i.act = load i8, ptr %i.acp, align 1, !tbaa !42
  %i.acu = getelementptr inbounds nuw i8, ptr %.024.i7.i887, i64 3
  store i8 %i.act, ptr %i.acr, align 1, !tbaa !42
  %i.acv = add nsw i32 %.05.i6.i886, -4           ; 2 uses
  %i.acw = getelementptr inbounds nuw i8, ptr %i.acl, i64 4 ; 2 uses
  store ptr %i.acw, ptr %0, align 8, !tbaa !41
  %i.acx = load i8, ptr %i.acs, align 1, !tbaa !42
  %i.acy = getelementptr inbounds nuw i8, ptr %.024.i7.i887, i64 4
  store i8 %i.acx, ptr %i.acu, align 1, !tbaa !42
  %.not.i8.i888.3 = icmp eq i32 %i.acv, 0
  br i1 %.not.i8.i888.3, label %_ZN7Imf_3_43Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit897, label %.lr.ph.i5.i885, !llvm.loop !194

_ZN7Imf_3_43Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit897: ; preds = %.lr.ph.i5.i885.prol.loopexit, %.lr.ph.i5.i885, %middle.block1799, %._crit_edge.i882
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  br label %.loopexit1006

.loopexit1006:                                    ; preds = %.lr.ph1159, %.preheader1005, %_ZN7Imf_3_43Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit897
  %indvars.iv.next1322 = add nsw i64 %indvars.iv1321, 1 ; 2 uses
  %lftr.wideiv1324 = trunc i64 %indvars.iv.next1322 to i32
  %exitcond1325.not = icmp eq i32 %i.ro, %lftr.wideiv1324
  br i1 %exitcond1325.not, label %.loopexit981, label %bb.ar, !llvm.loop !195

bb.at:                                            ; preds = %bb.al
  %i.acz = tail call ptr @__cxa_allocate_exception(i64 72) #19 ; 3 uses
  invoke void @_ZN7Iex_3_46ArgExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.acz, ptr noundef nonnull @.str.9)
          to label %bb.au unwind label %bb.av

bb.au:                                            ; preds = %bb.at
  tail call void @__cxa_throw(ptr nonnull %i.acz, ptr nonnull @_ZTIN7Iex_3_46ArgExcE, ptr nonnull @_ZN7Iex_3_46ArgExcD1Ev) #20
  unreachable

bb.av:                                            ; preds = %bb.at
  %i.ada = landingpad { ptr, i32 }
          cleanup
  br label %bb.da

bb.aw:                                            ; preds = %bb.z
  switch i32 %19, label %bb.bg [
    i32 0, label %.preheader1011
    i32 1, label %.preheader1015
    i32 2, label %.preheader1019
  ]

.preheader1019:                                   ; preds = %bb.aw
  %.not7431140 = icmp sgt i32 %6, %7
  br i1 %.not7431140, label %.loopexit981, label %.lr.ph1142

.lr.ph1142:                                       ; preds = %.preheader1019
  %i.adb = sub nsw i32 %5, %11
  %i.adc = sext i32 %i.adb to i64
  %i.add = mul nsw i64 %14, %i.adc
  %i.ade = getelementptr inbounds i8, ptr %1, i64 %i.add
  %i.adf = sub nsw i32 %5, %9
  %i.adg = sext i32 %i.adf to i64
  %i.adh = shl i64 %4, 32
  %i.adi = ashr exact i64 %i.adh, 32
  %i.adj = mul nsw i64 %i.adi, %i.adg
  %i.adk = getelementptr inbounds i8, ptr %2, i64 %i.adj
  %i.adl = shl i64 %3, 32
  %i.adm = ashr exact i64 %i.adl, 32
  %i.adn = sext i32 %6 to i64
  %i.ado = sext i32 %10 to i64
  %i.adp = sext i32 %8 to i64
  %i.adq = add i32 %7, 1
  %scevgep.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %scevgep1563 = getelementptr inbounds nuw i8, ptr %i.a, i64 1024 ; 2 uses
  %bound01566 = icmp ult ptr %0, %scevgep1563
  %bound11567 = icmp ult ptr %i.a, %scevgep.a
  %found.conflict1568 = and i1 %bound01566, %bound11567
  %bound1 = icmp ult ptr %i.a, %scevgep.a
  br label %bb.bd

.preheader1015:                                   ; preds = %bb.aw
  %.not7451147 = icmp sgt i32 %6, %7
  br i1 %.not7451147, label %.loopexit981, label %.lr.ph1149

.lr.ph1149:                                       ; preds = %.preheader1015
  %i.adr = sub nsw i32 %5, %11
  %i.ads = sext i32 %i.adr to i64
  %i.adt = mul nsw i64 %14, %i.ads
  %i.adu = getelementptr inbounds i8, ptr %1, i64 %i.adt
  %i.adv = sub nsw i32 %5, %9
  %i.adw = sext i32 %i.adv to i64
  %i.adx = shl i64 %4, 32
  %i.ady = ashr exact i64 %i.adx, 32
  %i.adz = mul nsw i64 %i.ady, %i.adw
  %i.aea = getelementptr inbounds i8, ptr %2, i64 %i.adz
  %i.aeb = shl i64 %3, 32
  %i.aec = ashr exact i64 %i.aeb, 32
  %i.aed = load ptr, ptr @imath_half_to_float_table, align 8 ; 3 uses
  %i.aee = sext i32 %6 to i64
  %i.aef = sext i32 %10 to i64
  %i.aeg = sext i32 %8 to i64
  %i.aeh = add i32 %7, 1
  %scevgep1604 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %scevgep1648 = getelementptr inbounds nuw i8, ptr %i.b, i64 1024 ; 2 uses
  %bound01651 = icmp ult ptr %0, %scevgep1648
  %bound11652 = icmp ult ptr %i.b, %scevgep1604
  %found.conflict1653 = and i1 %bound01651, %bound11652
  %bound11609 = icmp ult ptr %i.b, %scevgep1604
  br label %bb.ba

.preheader1011:                                   ; preds = %bb.aw
  %.not7471154 = icmp sgt i32 %6, %7
  br i1 %.not7471154, label %.loopexit981, label %.lr.ph1156

.lr.ph1156:                                       ; preds = %.preheader1011
  %i.aei = sub nsw i32 %5, %11
  %i.aej = sext i32 %i.aei to i64
  %i.aek = mul nsw i64 %14, %i.aej
  %i.ael = getelementptr inbounds i8, ptr %1, i64 %i.aek
  %i.aem = sub nsw i32 %5, %9
  %i.aen = sext i32 %i.aem to i64
  %i.aeo = shl i64 %4, 32
  %i.aep = ashr exact i64 %i.aeo, 32
  %i.aeq = mul nsw i64 %i.aep, %i.aen
  %i.aer = getelementptr inbounds i8, ptr %2, i64 %i.aeq
  %i.aes = shl i64 %3, 32
  %i.aet = ashr exact i64 %i.aes, 32
  %i.aeu = sext i32 %6 to i64
  %i.aev = sext i32 %10 to i64
  %i.aew = sext i32 %8 to i64
  %i.aex = add i32 %7, 1
  %scevgep1689 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %scevgep1733 = getelementptr inbounds nuw i8, ptr %i.c, i64 1024 ; 2 uses
  %bound01736 = icmp ult ptr %0, %scevgep1733
  %bound11737 = icmp ult ptr %i.c, %scevgep1689
  %found.conflict1738 = and i1 %bound01736, %bound11737
  %bound11694 = icmp ult ptr %i.c, %scevgep1689
  br label %bb.ax

bb.ax:                                            ; preds = %.lr.ph1156, %.loopexit1010
  %indvars.iv1315 = phi i64 [ %i.aeu, %.lr.ph1156 ], [ %indvars.iv.next1316, %.loopexit1010 ] ; 3 uses
  %i.aey = sub nsw i64 %indvars.iv1315, %i.aev
  %i.aez = mul nsw i64 %13, %i.aey
  %i.afa = getelementptr inbounds i8, ptr %i.ael, i64 %i.aez
  %i.afb = load ptr, ptr %i.afa, align 8, !tbaa !41 ; 2 uses
  %i.afc = sub nsw i64 %indvars.iv1315, %i.aew
  %i.afd = mul nsw i64 %i.aet, %i.afc
  %i.afe = getelementptr inbounds i8, ptr %i.aer, i64 %i.afd
  %i.aff = load i32, ptr %i.afe, align 4, !tbaa !32 ; 4 uses
  %.not748 = icmp eq ptr %i.afb, null
  br i1 %.not748, label %bb.az, label %.preheader1009

.preheader1009:                                   ; preds = %bb.ax
  %i.afg = icmp sgt i32 %i.aff, 0
  br i1 %i.afg, label %.lr.ph1152, label %.loopexit1010

.lr.ph1152:                                       ; preds = %.preheader1009
  %.promoted1153 = load ptr, ptr %0, align 8, !tbaa !41
  br label %bb.ay

bb.ay:                                            ; preds = %.lr.ph1152, %bb.ay
  %i.afh = phi ptr [ %.promoted1153, %.lr.ph1152 ], [ %i.afo, %bb.ay ] ; 5 uses
  %.06751151 = phi i32 [ 0, %.lr.ph1152 ], [ %i.afs, %bb.ay ]
  %.06761150 = phi ptr [ %i.afb, %.lr.ph1152 ], [ %i.afr, %bb.ay ] ; 2 uses
  %i.afi = getelementptr inbounds nuw i8, ptr %i.afh, i64 1 ; 2 uses
  store ptr %i.afi, ptr %0, align 8, !tbaa !41
  %i.afj = load i8, ptr %i.afh, align 1, !tbaa !42
  %i.afk = getelementptr inbounds nuw i8, ptr %i.afh, i64 2 ; 2 uses
  store ptr %i.afk, ptr %0, align 8, !tbaa !41
  %i.afl = load i8, ptr %i.afi, align 1, !tbaa !42
  %i.afm = getelementptr inbounds nuw i8, ptr %i.afh, i64 3 ; 2 uses
  store ptr %i.afm, ptr %0, align 8, !tbaa !41
  %i.afn = load i8, ptr %i.afk, align 1, !tbaa !42
  %i.afo = getelementptr inbounds nuw i8, ptr %i.afh, i64 4 ; 2 uses
  store ptr %i.afo, ptr %0, align 8, !tbaa !41
  %i.afp = load i8, ptr %i.afm, align 1, !tbaa !42
  %.sroa.6.0.insert.ext.i899 = zext i8 %i.afp to i32
  %.sroa.6.0.insert.shift.i900 = shl nuw i32 %.sroa.6.0.insert.ext.i899, 24
  %.sroa.5.0.insert.ext.i901 = zext i8 %i.afn to i32
  %.sroa.5.0.insert.shift.i902 = shl nuw nsw i32 %.sroa.5.0.insert.ext.i901, 16
  %.sroa.4.0.insert.ext.i904 = zext i8 %i.afl to i32
  %.sroa.4.0.insert.shift.i905 = shl nuw nsw i32 %.sroa.4.0.insert.ext.i904, 8
  %.sroa.0.0.insert.ext.i907 = zext i8 %i.afj to i32
  %.sroa.5.0.insert.insert.i903 = or disjoint i32 %.sroa.4.0.insert.shift.i905, %.sroa.0.0.insert.ext.i907
  %.sroa.4.0.insert.insert.i906 = or disjoint i32 %.sroa.5.0.insert.insert.i903, %.sroa.5.0.insert.shift.i902
  %.sroa.0.0.insert.insert.i908 = or disjoint i32 %.sroa.4.0.insert.insert.i906, %.sroa.6.0.insert.shift.i900
  %i.afq = uitofp i32 %.sroa.0.0.insert.insert.i908 to float
  store float %i.afq, ptr %.06761150, align 4, !tbaa !39
  %i.afr = getelementptr inbounds i8, ptr %.06761150, i64 %12
  %i.afs = add nuw nsw i32 %.06751151, 1          ; 2 uses
  %exitcond1314.not = icmp eq i32 %i.afs, %i.aff
  br i1 %exitcond1314.not, label %.loopexit1010, label %bb.ay, !llvm.loop !196

bb.az:                                            ; preds = %bb.ax
  %i.aft = shl nsw i32 %i.aff, 2                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  %.promoted10.i909 = load ptr, ptr %0, align 8   ; 2 uses
  %i.afu = icmp sgt i32 %i.aff, 255
  br i1 %i.afu, label %vector.memcheck1735, label %._crit_edge.i910

vector.memcheck1735:                              ; preds = %bb.az, %_ZN7Imf_3_49CharPtrIO9readCharsERPKcPci.exit.i924
  %.013.i918 = phi i32 [ %i.agw, %_ZN7Imf_3_49CharPtrIO9readCharsERPKcPci.exit.i924 ], [ %i.aft, %bb.az ] ; 2 uses
  %.promoted1112.i919 = phi ptr [ %.lcssa1519, %_ZN7Imf_3_49CharPtrIO9readCharsERPKcPci.exit.i924 ], [ %.promoted10.i909, %bb.az ] ; 10 uses
  %i.afv = getelementptr i8, ptr %.promoted1112.i919, i64 1024 ; 2 uses
  %bound01739 = icmp ult ptr %0, %i.afv
  %bound11740 = icmp ult ptr %.promoted1112.i919, %scevgep1689
  %found.conflict1741 = and i1 %bound01739, %bound11740
  %conflict.rdx1742 = or i1 %found.conflict1738, %found.conflict1741
  %bound01743 = icmp ult ptr %i.c, %i.afv
  %bound11744 = icmp ult ptr %.promoted1112.i919, %scevgep1733
  %found.conflict1745 = and i1 %bound01743, %bound11744
  %conflict.rdx1746 = or i1 %conflict.rdx1742, %found.conflict1745
  br i1 %conflict.rdx1746, label %.lr.ph.i.i920, label %vector.ph1747

vector.ph1747:                                    ; preds = %vector.memcheck1735
  %i.afw = getelementptr i8, ptr %.promoted1112.i919, i64 1024
  br label %vector.body1748

vector.body1748:                                  ; preds = %vector.body1748, %vector.ph1747
  %index1749 = phi i64 [ 0, %vector.ph1747 ], [ %index.next1755.3, %vector.body1748 ] ; 6 uses
  %next.gep1750 = getelementptr i8, ptr %.promoted1112.i919, i64 %index1749 ; 2 uses
  %next.gep1752 = getelementptr i8, ptr %i.c, i64 %index1749 ; 2 uses
  %i.afx = getelementptr i8, ptr %next.gep1750, i64 2
  %wide.load1753 = load <2 x i8>, ptr %next.gep1750, align 1, !tbaa !42, !alias.scope !310
  %wide.load1754 = load <2 x i8>, ptr %i.afx, align 1, !tbaa !42, !alias.scope !310
  %i.afy = getelementptr i8, ptr %next.gep1752, i64 2
  store <2 x i8> %wide.load1753, ptr %next.gep1752, align 16, !tbaa !42, !alias.scope !311, !noalias !310
  store <2 x i8> %wide.load1754, ptr %i.afy, align 2, !tbaa !42, !alias.scope !311, !noalias !310
  %index.next1755 = or disjoint i64 %index1749, 4 ; 2 uses
  %next.gep1750.1 = getelementptr i8, ptr %.promoted1112.i919, i64 %index.next1755 ; 2 uses
  %next.gep1752.1 = getelementptr i8, ptr %i.c, i64 %index.next1755 ; 2 uses
  %i.afz = getelementptr i8, ptr %next.gep1750.1, i64 2
  %wide.load1753.1 = load <2 x i8>, ptr %next.gep1750.1, align 1, !tbaa !42, !alias.scope !310
  %wide.load1754.1 = load <2 x i8>, ptr %i.afz, align 1, !tbaa !42, !alias.scope !310
  %i.aga = getelementptr i8, ptr %next.gep1752.1, i64 2
  store <2 x i8> %wide.load1753.1, ptr %next.gep1752.1, align 4, !tbaa !42, !alias.scope !311, !noalias !310
  store <2 x i8> %wide.load1754.1, ptr %i.aga, align 2, !tbaa !42, !alias.scope !311, !noalias !310
  %index.next1755.1 = or disjoint i64 %index1749, 8 ; 2 uses
  %next.gep1750.2 = getelementptr i8, ptr %.promoted1112.i919, i64 %index.next1755.1 ; 2 uses
  %next.gep1752.2 = getelementptr i8, ptr %i.c, i64 %index.next1755.1 ; 2 uses
  %i.agb = getelementptr i8, ptr %next.gep1750.2, i64 2
  %wide.load1753.2 = load <2 x i8>, ptr %next.gep1750.2, align 1, !tbaa !42, !alias.scope !310
  %wide.load1754.2 = load <2 x i8>, ptr %i.agb, align 1, !tbaa !42, !alias.scope !310
  %i.agc = getelementptr i8, ptr %next.gep1752.2, i64 2
  store <2 x i8> %wide.load1753.2, ptr %next.gep1752.2, align 8, !tbaa !42, !alias.scope !311, !noalias !310
  store <2 x i8> %wide.load1754.2, ptr %i.agc, align 2, !tbaa !42, !alias.scope !311, !noalias !310
  %index.next1755.2 = or disjoint i64 %index1749, 12 ; 3 uses
  %next.gep1750.3 = getelementptr i8, ptr %.promoted1112.i919, i64 %index.next1755.2 ; 2 uses
  %next.gep1752.3 = getelementptr i8, ptr %i.c, i64 %index.next1755.2 ; 2 uses
  %i.agd = getelementptr i8, ptr %next.gep1750.3, i64 2
  %wide.load1753.3 = load <2 x i8>, ptr %next.gep1750.3, align 1, !tbaa !42, !alias.scope !310
  %wide.load1754.3 = load <2 x i8>, ptr %i.agd, align 1, !tbaa !42, !alias.scope !310
  %i.age = getelementptr i8, ptr %next.gep1752.3, i64 2
  store <2 x i8> %wide.load1753.3, ptr %next.gep1752.3, align 4, !tbaa !42, !alias.scope !311, !noalias !310
  store <2 x i8> %wide.load1754.3, ptr %i.age, align 2, !tbaa !42, !alias.scope !311, !noalias !310
  %index.next1755.3 = add nuw nsw i64 %index1749, 16 ; 2 uses
  %i.agf = icmp eq i64 %index.next1755.3, 1024
  br i1 %i.agf, label %middle.block1756, label %vector.body1748, !llvm.loop !200

middle.block1756:                                 ; preds = %vector.body1748
  %i.agg = getelementptr i8, ptr %.promoted1112.i919, i64 %index.next1755.2
  %i.agh = getelementptr i8, ptr %i.agg, i64 4
  store ptr %i.agh, ptr %0, align 8, !tbaa !41, !alias.scope !312, !noalias !313
  br label %_ZN7Imf_3_49CharPtrIO9readCharsERPKcPci.exit.i924

.lr.ph.i.i920:                                    ; preds = %vector.memcheck1735, %.lr.ph.i.i920
  %i.agi = phi ptr [ %i.agt, %.lr.ph.i.i920 ], [ %.promoted1112.i919, %vector.memcheck1735 ] ; 5 uses
  %.05.i.i921 = phi i32 [ %i.ags, %.lr.ph.i.i920 ], [ 1024, %vector.memcheck1735 ]
  %.024.i.i922 = phi ptr [ %i.agv, %.lr.ph.i.i920 ], [ %i.c, %vector.memcheck1735 ] ; 5 uses
  %i.agj = getelementptr inbounds nuw i8, ptr %i.agi, i64 1 ; 2 uses
  store ptr %i.agj, ptr %0, align 8, !tbaa !41
  %i.agk = load i8, ptr %i.agi, align 1, !tbaa !42
  %i.agl = getelementptr inbounds nuw i8, ptr %.024.i.i922, i64 1
  store i8 %i.agk, ptr %.024.i.i922, align 1, !tbaa !42
  %i.agm = getelementptr inbounds nuw i8, ptr %i.agi, i64 2 ; 2 uses
  store ptr %i.agm, ptr %0, align 8, !tbaa !41
  %i.agn = load i8, ptr %i.agj, align 1, !tbaa !42
  %i.ago = getelementptr inbounds nuw i8, ptr %.024.i.i922, i64 2
  store i8 %i.agn, ptr %i.agl, align 1, !tbaa !42
  %i.agp = getelementptr inbounds nuw i8, ptr %i.agi, i64 3 ; 2 uses
  store ptr %i.agp, ptr %0, align 8, !tbaa !41
  %i.agq = load i8, ptr %i.agm, align 1, !tbaa !42
  %i.agr = getelementptr inbounds nuw i8, ptr %.024.i.i922, i64 3
  store i8 %i.agq, ptr %i.ago, align 1, !tbaa !42
  %i.ags = add nsw i32 %.05.i.i921, -4            ; 2 uses
  %i.agt = getelementptr inbounds nuw i8, ptr %i.agi, i64 4 ; 3 uses
  store ptr %i.agt, ptr %0, align 8, !tbaa !41
  %i.agu = load i8, ptr %i.agp, align 1, !tbaa !42
  %i.agv = getelementptr inbounds nuw i8, ptr %.024.i.i922, i64 4
  store i8 %i.agu, ptr %i.agr, align 1, !tbaa !42
  %.not.i.i923.3 = icmp eq i32 %i.ags, 0
  br i1 %.not.i.i923.3, label %_ZN7Imf_3_49CharPtrIO9readCharsERPKcPci.exit.i924, label %.lr.ph.i.i920, !llvm.loop !202

_ZN7Imf_3_49CharPtrIO9readCharsERPKcPci.exit.i924: ; preds = %.lr.ph.i.i920, %middle.block1756
  %.lcssa1519 = phi ptr [ %i.afw, %middle.block1756 ], [ %i.agt, %.lr.ph.i.i920 ] ; 2 uses
  %i.agw = add nsw i32 %.013.i918, -1024          ; 2 uses
  %i.agx = icmp sgt i32 %.013.i918, 2047
  br i1 %i.agx, label %vector.memcheck1735, label %._crit_edge.i910, !llvm.loop !1

._crit_edge.i910:                                 ; preds = %_ZN7Imf_3_49CharPtrIO9readCharsERPKcPci.exit.i924, %bb.az
  %.promoted.i911 = phi ptr [ %.promoted10.i909, %bb.az ], [ %.lcssa1519, %_ZN7Imf_3_49CharPtrIO9readCharsERPKcPci.exit.i924 ] ; 8 uses
  %.0.lcssa.i912 = phi i32 [ %i.aft, %bb.az ], [ %i.agw, %_ZN7Imf_3_49CharPtrIO9readCharsERPKcPci.exit.i924 ] ; 7 uses
  %i.agy = icmp sgt i32 %.0.lcssa.i912, 0
  br i1 %i.agy, label %.lr.ph.i5.i913.preheader, label %_ZN7Imf_3_43Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit925

.lr.ph.i5.i913.preheader:                         ; preds = %._crit_edge.i910
  %i.agz = zext nneg i32 %.0.lcssa.i912 to i64    ; 2 uses
  %min.iters.check1691 = icmp ult i32 %.0.lcssa.i912, 12
  br i1 %min.iters.check1691, label %.lr.ph.i5.i913.preheader2298, label %vector.memcheck1692

vector.memcheck1692:                              ; preds = %.lr.ph.i5.i913.preheader
  %i.aha = zext nneg i32 %.0.lcssa.i912 to i64    ; 2 uses
  %i.ahb = getelementptr i8, ptr %i.c, i64 %i.aha ; 2 uses
  %i.ahc = getelementptr i8, ptr %.promoted.i911, i64 %i.aha ; 2 uses
  %bound01693 = icmp ult ptr %0, %i.ahb
  %found.conflict1695 = and i1 %bound01693, %bound11694
  %bound01696 = icmp ult ptr %0, %i.ahc
  %bound11697 = icmp ult ptr %.promoted.i911, %scevgep1689
  %found.conflict1698 = and i1 %bound01696, %bound11697
  %conflict.rdx1699 = or i1 %found.conflict1695, %found.conflict1698
  %bound01700 = icmp ult ptr %i.c, %i.ahc
  %bound11701 = icmp ult ptr %.promoted.i911, %i.ahb
  %found.conflict1702 = and i1 %bound01700, %bound11701
  %conflict.rdx1703 = or i1 %conflict.rdx1699, %found.conflict1702
  br i1 %conflict.rdx1703, label %.lr.ph.i5.i913.preheader2298, label %vector.ph1704

vector.ph1704:                                    ; preds = %vector.memcheck1692
  %n.vec1705 = and i64 %i.agz, 2147483644         ; 5 uses
  %i.ahd = getelementptr i8, ptr %.promoted.i911, i64 %n.vec1705
  %i.ahe = trunc nuw nsw i64 %n.vec1705 to i32
  %i.ahf = sub nsw i32 %.0.lcssa.i912, %i.ahe
  %i.ahg = getelementptr i8, ptr %i.c, i64 %n.vec1705
  br label %vector.body1706

vector.body1706:                                  ; preds = %vector.body1706, %vector.ph1704
  %index1707 = phi i64 [ 0, %vector.ph1704 ], [ %index.next1713, %vector.body1706 ] ; 4 uses
  %next.gep1708 = getelementptr i8, ptr %.promoted.i911, i64 %index1707 ; 2 uses
  %next.gep1710 = getelementptr i8, ptr %i.c, i64 %index1707 ; 2 uses
  %i.ahh = getelementptr i8, ptr %next.gep1708, i64 2
  %wide.load1711 = load <2 x i8>, ptr %next.gep1708, align 1, !tbaa !42, !alias.scope !314
  %wide.load1712 = load <2 x i8>, ptr %i.ahh, align 1, !tbaa !42, !alias.scope !314
  %i.ahi = getelementptr i8, ptr %next.gep1710, i64 2
  store <2 x i8> %wide.load1711, ptr %next.gep1710, align 4, !tbaa !42, !alias.scope !315, !noalias !314
  store <2 x i8> %wide.load1712, ptr %i.ahi, align 2, !tbaa !42, !alias.scope !315, !noalias !314
  %index.next1713 = add nuw i64 %index1707, 4     ; 2 uses
  %i.ahj = icmp eq i64 %index.next1713, %n.vec1705
  br i1 %i.ahj, label %middle.block1714, label %vector.body1706, !llvm.loop !206

middle.block1714:                                 ; preds = %vector.body1706
  %i.ahk = getelementptr i8, ptr %.promoted.i911, i64 %index1707
  %i.ahl = getelementptr i8, ptr %i.ahk, i64 4
  store ptr %i.ahl, ptr %0, align 8, !tbaa !41, !alias.scope !316, !noalias !317
  %cmp.n1715 = icmp eq i64 %n.vec1705, %i.agz
  br i1 %cmp.n1715, label %_ZN7Imf_3_43Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit925, label %.lr.ph.i5.i913.preheader2298

.lr.ph.i5.i913.preheader2298:                     ; preds = %vector.memcheck1692, %.lr.ph.i5.i913.preheader, %middle.block1714
  %.ph2299 = phi ptr [ %.promoted.i911, %vector.memcheck1692 ], [ %.promoted.i911, %.lr.ph.i5.i913.preheader ], [ %i.ahd, %middle.block1714 ] ; 2 uses
  %.05.i6.i914.ph = phi i32 [ %.0.lcssa.i912, %vector.memcheck1692 ], [ %.0.lcssa.i912, %.lr.ph.i5.i913.preheader ], [ %i.ahf, %middle.block1714 ] ; 4 uses
  %.024.i7.i915.ph = phi ptr [ %i.c, %vector.memcheck1692 ], [ %i.c, %.lr.ph.i5.i913.preheader ], [ %i.ahg, %middle.block1714 ] ; 2 uses
  %i.ahm = add nsw i32 %.05.i6.i914.ph, -1
  %xtraiter2359 = and i32 %.05.i6.i914.ph, 3      ; 2 uses
  %lcmp.mod2360.not.a = icmp eq i32 %xtraiter2359, 0
  br i1 %lcmp.mod2360.not.a, label %.lr.ph.i5.i913.prol.loopexit, label %.lr.ph.i5.i913.prol

.lr.ph.i5.i913.prol:                              ; preds = %.lr.ph.i5.i913.preheader2298, %.lr.ph.i5.i913.prol
  %i.ahn = phi ptr [ %i.ahp, %.lr.ph.i5.i913.prol ], [ %.ph2299, %.lr.ph.i5.i913.preheader2298 ] ; 2 uses
  %.05.i6.i914.prol = phi i32 [ %i.aho, %.lr.ph.i5.i913.prol ], [ %.05.i6.i914.ph, %.lr.ph.i5.i913.preheader2298 ]
  %.024.i7.i915.prol = phi ptr [ %i.ahr, %.lr.ph.i5.i913.prol ], [ %.024.i7.i915.ph, %.lr.ph.i5.i913.preheader2298 ] ; 2 uses
  %prol.iter2361 = phi i32 [ %prol.iter2361.next, %.lr.ph.i5.i913.prol ], [ 0, %.lr.ph.i5.i913.preheader2298 ]
  %i.aho = add nsw i32 %.05.i6.i914.prol, -1      ; 2 uses
  %i.ahp = getelementptr inbounds nuw i8, ptr %i.ahn, i64 1 ; 3 uses
  store ptr %i.ahp, ptr %0, align 8, !tbaa !41
  %i.ahq = load i8, ptr %i.ahn, align 1, !tbaa !42
  %i.ahr = getelementptr inbounds nuw i8, ptr %.024.i7.i915.prol, i64 1 ; 2 uses
  store i8 %i.ahq, ptr %.024.i7.i915.prol, align 1, !tbaa !42
  %prol.iter2361.next = add i32 %prol.iter2361, 1 ; 2 uses
  %prol.iter2361.cmp.not = icmp eq i32 %prol.iter2361.next, %xtraiter2359
  br i1 %prol.iter2361.cmp.not, label %.lr.ph.i5.i913.prol.loopexit, label %.lr.ph.i5.i913.prol, !llvm.loop !208

.lr.ph.i5.i913.prol.loopexit:                     ; preds = %.lr.ph.i5.i913.prol, %.lr.ph.i5.i913.preheader2298
  %.unr2362 = phi ptr [ %.ph2299, %.lr.ph.i5.i913.preheader2298 ], [ %i.ahp, %.lr.ph.i5.i913.prol ]
  %.05.i6.i914.unr = phi i32 [ %.05.i6.i914.ph, %.lr.ph.i5.i913.preheader2298 ], [ %i.aho, %.lr.ph.i5.i913.prol ]
  %.024.i7.i915.unr = phi ptr [ %.024.i7.i915.ph, %.lr.ph.i5.i913.preheader2298 ], [ %i.ahr, %.lr.ph.i5.i913.prol ]
  %i.ahs = icmp ult i32 %i.ahm, 3
  br i1 %i.ahs, label %_ZN7Imf_3_43Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit925, label %.lr.ph.i5.i913

.lr.ph.i5.i913:                                   ; preds = %.lr.ph.i5.i913.prol.loopexit, %.lr.ph.i5.i913
  %i.aht = phi ptr [ %i.aie, %.lr.ph.i5.i913 ], [ %.unr2362, %.lr.ph.i5.i913.prol.loopexit ] ; 5 uses
  %.05.i6.i914 = phi i32 [ %i.aid, %.lr.ph.i5.i913 ], [ %.05.i6.i914.unr, %.lr.ph.i5.i913.prol.loopexit ]
  %.024.i7.i915 = phi ptr [ %i.aig, %.lr.ph.i5.i913 ], [ %.024.i7.i915.unr, %.lr.ph.i5.i913.prol.loopexit ] ; 5 uses
  %i.ahu = getelementptr inbounds nuw i8, ptr %i.aht, i64 1 ; 2 uses
  store ptr %i.ahu, ptr %0, align 8, !tbaa !41
  %i.ahv = load i8, ptr %i.aht, align 1, !tbaa !42
  %i.ahw = getelementptr inbounds nuw i8, ptr %.024.i7.i915, i64 1
  store i8 %i.ahv, ptr %.024.i7.i915, align 1, !tbaa !42
  %i.ahx = getelementptr inbounds nuw i8, ptr %i.aht, i64 2 ; 2 uses
  store ptr %i.ahx, ptr %0, align 8, !tbaa !41
  %i.ahy = load i8, ptr %i.ahu, align 1, !tbaa !42
  %i.ahz = getelementptr inbounds nuw i8, ptr %.024.i7.i915, i64 2
  store i8 %i.ahy, ptr %i.ahw, align 1, !tbaa !42
  %i.aia = getelementptr inbounds nuw i8, ptr %i.aht, i64 3 ; 2 uses
  store ptr %i.aia, ptr %0, align 8, !tbaa !41
  %i.aib = load i8, ptr %i.ahx, align 1, !tbaa !42
  %i.aic = getelementptr inbounds nuw i8, ptr %.024.i7.i915, i64 3
  store i8 %i.aib, ptr %i.ahz, align 1, !tbaa !42
  %i.aid = add nsw i32 %.05.i6.i914, -4           ; 2 uses
  %i.aie = getelementptr inbounds nuw i8, ptr %i.aht, i64 4 ; 2 uses
  store ptr %i.aie, ptr %0, align 8, !tbaa !41
  %i.aif = load i8, ptr %i.aia, align 1, !tbaa !42
  %i.aig = getelementptr inbounds nuw i8, ptr %.024.i7.i915, i64 4
  store i8 %i.aif, ptr %i.aic, align 1, !tbaa !42
  %.not.i8.i916.3 = icmp eq i32 %i.aid, 0
  br i1 %.not.i8.i916.3, label %_ZN7Imf_3_43Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit925, label %.lr.ph.i5.i913, !llvm.loop !209

_ZN7Imf_3_43Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit925: ; preds = %.lr.ph.i5.i913.prol.loopexit, %.lr.ph.i5.i913, %middle.block1714, %._crit_edge.i910
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  br label %.loopexit1010

.loopexit1010:                                    ; preds = %bb.ay, %.preheader1009, %_ZN7Imf_3_43Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit925
  %indvars.iv.next1316 = add nsw i64 %indvars.iv1315, 1 ; 2 uses
  %lftr.wideiv1318 = trunc i64 %indvars.iv.next1316 to i32
  %exitcond1319.not = icmp eq i32 %i.aex, %lftr.wideiv1318
  br i1 %exitcond1319.not, label %.loopexit981, label %bb.ax, !llvm.loop !210

bb.ba:                                            ; preds = %.lr.ph1149, %.loopexit1014
  %indvars.iv1309 = phi i64 [ %i.aee, %.lr.ph1149 ], [ %indvars.iv.next1310, %.loopexit1014 ] ; 3 uses
  %i.aih = sub nsw i64 %indvars.iv1309, %i.aef
  %i.aii = mul nsw i64 %13, %i.aih
  %i.aij = getelementptr inbounds i8, ptr %i.adu, i64 %i.aii
  %i.aik = load ptr, ptr %i.aij, align 8, !tbaa !41 ; 3 uses
  %i.ail = sub nsw i64 %indvars.iv1309, %i.aeg
  %i.aim = mul nsw i64 %i.aec, %i.ail
  %i.ain = getelementptr inbounds i8, ptr %i.aea, i64 %i.aim
  %i.aio = load i32, ptr %i.ain, align 4, !tbaa !32 ; 7 uses
  %.not746 = icmp eq ptr %i.aik, null
  br i1 %.not746, label %bb.bc, label %.preheader1013

.preheader1013:                                   ; preds = %bb.ba
  %i.aip = icmp sgt i32 %i.aio, 0
  br i1 %i.aip, label %.lr.ph1145, label %.loopexit1014

.lr.ph1145:                                       ; preds = %.preheader1013
  %.promoted1146 = load ptr, ptr %0, align 8, !tbaa !41 ; 2 uses
  %xtraiter2347 = and i32 %i.aio, 1
  %i.aiq = icmp eq i32 %i.aio, 1
  br i1 %i.aiq, label %.epil.preheader2346, label %.lr.ph1145.new

.lr.ph1145.new:                                   ; preds = %.lr.ph1145
  %unroll_iter2353 = and i32 %i.aio, 2147483646
  br label %bb.bb

bb.bb:                                            ; preds = %bb.bb, %.lr.ph1145.new
  %i.air = phi ptr [ %.promoted1146, %.lr.ph1145.new ], [ %i.ajc, %bb.bb ] ; 5 uses
  %.06731143 = phi ptr [ %i.aik, %.lr.ph1145.new ], [ %i.ajh, %bb.bb ] ; 2 uses
  %niter2354 = phi i32 [ 0, %.lr.ph1145.new ], [ %niter2354.next.1, %bb.bb ]
  %i.ais = getelementptr inbounds nuw i8, ptr %i.air, i64 1 ; 2 uses
  store ptr %i.ais, ptr %0, align 8, !tbaa !41
  %i.ait = load i8, ptr %i.air, align 1, !tbaa !42
  %i.aiu = getelementptr inbounds nuw i8, ptr %i.air, i64 2 ; 2 uses
  store ptr %i.aiu, ptr %0, align 8, !tbaa !41
  %i.aiv = load i8, ptr %i.ais, align 1, !tbaa !42
  %.sroa.4.0.insert.ext.i927 = zext i8 %i.aiv to i64
  %.sroa.0.0.insert.ext.i929 = zext i8 %i.ait to i64
  %.idx = shl nuw nsw i64 %.sroa.4.0.insert.ext.i927, 10
  %i.aiw = getelementptr inbounds nuw i8, ptr %i.aed, i64 %.idx
  %i.aix = getelementptr inbounds nuw [4 x i8], ptr %i.aiw, i64 %.sroa.0.0.insert.ext.i929
  %i.aiy = load float, ptr %i.aix, align 4, !tbaa !42
  store float %i.aiy, ptr %.06731143, align 4, !tbaa !39
  %i.aiz = getelementptr inbounds i8, ptr %.06731143, i64 %12 ; 2 uses
  %i.aja = getelementptr inbounds nuw i8, ptr %i.air, i64 3 ; 2 uses
  store ptr %i.aja, ptr %0, align 8, !tbaa !41
  %i.ajb = load i8, ptr %i.aiu, align 1, !tbaa !42
  %i.ajc = getelementptr inbounds nuw i8, ptr %i.air, i64 4 ; 3 uses
  store ptr %i.ajc, ptr %0, align 8, !tbaa !41
  %i.ajd = load i8, ptr %i.aja, align 1, !tbaa !42
  %.sroa.4.0.insert.ext.i927.1 = zext i8 %i.ajd to i64
  %.sroa.0.0.insert.ext.i929.1 = zext i8 %i.ajb to i64
  %.idx.1 = shl nuw nsw i64 %.sroa.4.0.insert.ext.i927.1, 10
  %i.aje = getelementptr inbounds nuw i8, ptr %i.aed, i64 %.idx.1
  %i.ajf = getelementptr inbounds nuw [4 x i8], ptr %i.aje, i64 %.sroa.0.0.insert.ext.i929.1
  %i.ajg = load float, ptr %i.ajf, align 4, !tbaa !42
  store float %i.ajg, ptr %i.aiz, align 4, !tbaa !39
  %i.ajh = getelementptr inbounds i8, ptr %i.aiz, i64 %12 ; 2 uses
  %niter2354.next.1 = add nuw nsw i32 %niter2354, 2 ; 2 uses
  %niter2354.ncmp.1 = icmp eq i32 %niter2354.next.1, %unroll_iter2353
  br i1 %niter2354.ncmp.1, label %.loopexit1014.loopexit.unr-lcssa, label %bb.bb, !llvm.loop !211

bb.bc:                                            ; preds = %bb.ba
  %i.aji = shl nsw i32 %i.aio, 1                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  %.promoted10.i931 = load ptr, ptr %0, align 8   ; 2 uses
  %i.ajj = icmp sgt i32 %i.aio, 511
  br i1 %i.ajj, label %vector.memcheck1650, label %._crit_edge.i932

vector.memcheck1650:                              ; preds = %bb.bc, %_ZN7Imf_3_49CharPtrIO9readCharsERPKcPci.exit.i946
  %.013.i940 = phi i32 [ %i.akl, %_ZN7Imf_3_49CharPtrIO9readCharsERPKcPci.exit.i946 ], [ %i.aji, %bb.bc ] ; 2 uses
  %.promoted1112.i941 = phi ptr [ %.lcssa1521, %_ZN7Imf_3_49CharPtrIO9readCharsERPKcPci.exit.i946 ], [ %.promoted10.i931, %bb.bc ] ; 10 uses
  %i.ajk = getelementptr i8, ptr %.promoted1112.i941, i64 1024 ; 2 uses
  %bound01654 = icmp ult ptr %0, %i.ajk
  %bound11655 = icmp ult ptr %.promoted1112.i941, %scevgep1604
  %found.conflict1656 = and i1 %bound01654, %bound11655
  %conflict.rdx1657 = or i1 %found.conflict1653, %found.conflict1656
  %bound01658 = icmp ult ptr %i.b, %i.ajk
  %bound11659 = icmp ult ptr %.promoted1112.i941, %scevgep1648
  %found.conflict1660 = and i1 %bound01658, %bound11659
  %conflict.rdx1661 = or i1 %conflict.rdx1657, %found.conflict1660
  br i1 %conflict.rdx1661, label %.lr.ph.i.i942, label %vector.ph1662

vector.ph1662:                                    ; preds = %vector.memcheck1650
  %i.ajl = getelementptr i8, ptr %.promoted1112.i941, i64 1024
  br label %vector.body1663

vector.body1663:                                  ; preds = %vector.body1663, %vector.ph1662
  %index1664 = phi i64 [ 0, %vector.ph1662 ], [ %index.next1670.3, %vector.body1663 ] ; 6 uses
  %next.gep1665 = getelementptr i8, ptr %.promoted1112.i941, i64 %index1664 ; 2 uses
  %next.gep1667 = getelementptr i8, ptr %i.b, i64 %index1664 ; 2 uses
  %i.ajm = getelementptr i8, ptr %next.gep1665, i64 2
  %wide.load1668 = load <2 x i8>, ptr %next.gep1665, align 1, !tbaa !42, !alias.scope !318
  %wide.load1669 = load <2 x i8>, ptr %i.ajm, align 1, !tbaa !42, !alias.scope !318
  %i.ajn = getelementptr i8, ptr %next.gep1667, i64 2
  store <2 x i8> %wide.load1668, ptr %next.gep1667, align 16, !tbaa !42, !alias.scope !319, !noalias !318
  store <2 x i8> %wide.load1669, ptr %i.ajn, align 2, !tbaa !42, !alias.scope !319, !noalias !318
  %index.next1670 = or disjoint i64 %index1664, 4 ; 2 uses
  %next.gep1665.1 = getelementptr i8, ptr %.promoted1112.i941, i64 %index.next1670 ; 2 uses
  %next.gep1667.1 = getelementptr i8, ptr %i.b, i64 %index.next1670 ; 2 uses
  %i.ajo = getelementptr i8, ptr %next.gep1665.1, i64 2
  %wide.load1668.1 = load <2 x i8>, ptr %next.gep1665.1, align 1, !tbaa !42, !alias.scope !318
  %wide.load1669.1 = load <2 x i8>, ptr %i.ajo, align 1, !tbaa !42, !alias.scope !318
  %i.ajp = getelementptr i8, ptr %next.gep1667.1, i64 2
  store <2 x i8> %wide.load1668.1, ptr %next.gep1667.1, align 4, !tbaa !42, !alias.scope !319, !noalias !318
  store <2 x i8> %wide.load1669.1, ptr %i.ajp, align 2, !tbaa !42, !alias.scope !319, !noalias !318
  %index.next1670.1 = or disjoint i64 %index1664, 8 ; 2 uses
  %next.gep1665.2 = getelementptr i8, ptr %.promoted1112.i941, i64 %index.next1670.1 ; 2 uses
  %next.gep1667.2 = getelementptr i8, ptr %i.b, i64 %index.next1670.1 ; 2 uses
  %i.ajq = getelementptr i8, ptr %next.gep1665.2, i64 2
  %wide.load1668.2 = load <2 x i8>, ptr %next.gep1665.2, align 1, !tbaa !42, !alias.scope !318
  %wide.load1669.2 = load <2 x i8>, ptr %i.ajq, align 1, !tbaa !42, !alias.scope !318
  %i.ajr = getelementptr i8, ptr %next.gep1667.2, i64 2
  store <2 x i8> %wide.load1668.2, ptr %next.gep1667.2, align 8, !tbaa !42, !alias.scope !319, !noalias !318
  store <2 x i8> %wide.load1669.2, ptr %i.ajr, align 2, !tbaa !42, !alias.scope !319, !noalias !318
  %index.next1670.2 = or disjoint i64 %index1664, 12 ; 3 uses
  %next.gep1665.3 = getelementptr i8, ptr %.promoted1112.i941, i64 %index.next1670.2 ; 2 uses
  %next.gep1667.3 = getelementptr i8, ptr %i.b, i64 %index.next1670.2 ; 2 uses
  %i.ajs = getelementptr i8, ptr %next.gep1665.3, i64 2
  %wide.load1668.3 = load <2 x i8>, ptr %next.gep1665.3, align 1, !tbaa !42, !alias.scope !318
  %wide.load1669.3 = load <2 x i8>, ptr %i.ajs, align 1, !tbaa !42, !alias.scope !318
  %i.ajt = getelementptr i8, ptr %next.gep1667.3, i64 2
  store <2 x i8> %wide.load1668.3, ptr %next.gep1667.3, align 4, !tbaa !42, !alias.scope !319, !noalias !318
  store <2 x i8> %wide.load1669.3, ptr %i.ajt, align 2, !tbaa !42, !alias.scope !319, !noalias !318
  %index.next1670.3 = add nuw nsw i64 %index1664, 16 ; 2 uses
  %i.aju = icmp eq i64 %index.next1670.3, 1024
  br i1 %i.aju, label %middle.block1671, label %vector.body1663, !llvm.loop !215

middle.block1671:                                 ; preds = %vector.body1663
  %i.ajv = getelementptr i8, ptr %.promoted1112.i941, i64 %index.next1670.2
  %i.ajw = getelementptr i8, ptr %i.ajv, i64 4
  store ptr %i.ajw, ptr %0, align 8, !tbaa !41, !alias.scope !320, !noalias !321
  br label %_ZN7Imf_3_49CharPtrIO9readCharsERPKcPci.exit.i946

.lr.ph.i.i942:                                    ; preds = %vector.memcheck1650, %.lr.ph.i.i942
  %i.ajx = phi ptr [ %i.aki, %.lr.ph.i.i942 ], [ %.promoted1112.i941, %vector.memcheck1650 ] ; 5 uses
  %.05.i.i943 = phi i32 [ %i.akh, %.lr.ph.i.i942 ], [ 1024, %vector.memcheck1650 ]
  %.024.i.i944 = phi ptr [ %i.akk, %.lr.ph.i.i942 ], [ %i.b, %vector.memcheck1650 ] ; 5 uses
  %i.ajy = getelementptr inbounds nuw i8, ptr %i.ajx, i64 1 ; 2 uses
  store ptr %i.ajy, ptr %0, align 8, !tbaa !41
  %i.ajz = load i8, ptr %i.ajx, align 1, !tbaa !42
  %i.aka = getelementptr inbounds nuw i8, ptr %.024.i.i944, i64 1
  store i8 %i.ajz, ptr %.024.i.i944, align 1, !tbaa !42
  %i.akb = getelementptr inbounds nuw i8, ptr %i.ajx, i64 2 ; 2 uses
  store ptr %i.akb, ptr %0, align 8, !tbaa !41
  %i.akc = load i8, ptr %i.ajy, align 1, !tbaa !42
  %i.akd = getelementptr inbounds nuw i8, ptr %.024.i.i944, i64 2
  store i8 %i.akc, ptr %i.aka, align 1, !tbaa !42
  %i.ake = getelementptr inbounds nuw i8, ptr %i.ajx, i64 3 ; 2 uses
  store ptr %i.ake, ptr %0, align 8, !tbaa !41
  %i.akf = load i8, ptr %i.akb, align 1, !tbaa !42
  %i.akg = getelementptr inbounds nuw i8, ptr %.024.i.i944, i64 3
  store i8 %i.akf, ptr %i.akd, align 1, !tbaa !42
  %i.akh = add nsw i32 %.05.i.i943, -4            ; 2 uses
  %i.aki = getelementptr inbounds nuw i8, ptr %i.ajx, i64 4 ; 3 uses
  store ptr %i.aki, ptr %0, align 8, !tbaa !41
  %i.akj = load i8, ptr %i.ake, align 1, !tbaa !42
  %i.akk = getelementptr inbounds nuw i8, ptr %.024.i.i944, i64 4
  store i8 %i.akj, ptr %i.akg, align 1, !tbaa !42
  %.not.i.i945.3 = icmp eq i32 %i.akh, 0
  br i1 %.not.i.i945.3, label %_ZN7Imf_3_49CharPtrIO9readCharsERPKcPci.exit.i946, label %.lr.ph.i.i942, !llvm.loop !217

_ZN7Imf_3_49CharPtrIO9readCharsERPKcPci.exit.i946: ; preds = %.lr.ph.i.i942, %middle.block1671
  %.lcssa1521 = phi ptr [ %i.ajl, %middle.block1671 ], [ %i.aki, %.lr.ph.i.i942 ] ; 2 uses
  %i.akl = add nsw i32 %.013.i940, -1024          ; 2 uses
  %i.akm = icmp sgt i32 %.013.i940, 2047
  br i1 %i.akm, label %vector.memcheck1650, label %._crit_edge.i932, !llvm.loop !1

._crit_edge.i932:                                 ; preds = %_ZN7Imf_3_49CharPtrIO9readCharsERPKcPci.exit.i946, %bb.bc
  %.promoted.i933 = phi ptr [ %.promoted10.i931, %bb.bc ], [ %.lcssa1521, %_ZN7Imf_3_49CharPtrIO9readCharsERPKcPci.exit.i946 ] ; 8 uses
  %.0.lcssa.i934 = phi i32 [ %i.aji, %bb.bc ], [ %i.akl, %_ZN7Imf_3_49CharPtrIO9readCharsERPKcPci.exit.i946 ] ; 7 uses
  %i.akn = icmp sgt i32 %.0.lcssa.i934, 0
  br i1 %i.akn, label %.lr.ph.i5.i935.preheader, label %_ZN7Imf_3_43Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit947

.lr.ph.i5.i935.preheader:                         ; preds = %._crit_edge.i932
  %i.ako = zext nneg i32 %.0.lcssa.i934 to i64    ; 2 uses
  %min.iters.check1606 = icmp ult i32 %.0.lcssa.i934, 12
  br i1 %min.iters.check1606, label %.lr.ph.i5.i935.preheader2303, label %vector.memcheck1607

vector.memcheck1607:                              ; preds = %.lr.ph.i5.i935.preheader
  %i.akp = zext nneg i32 %.0.lcssa.i934 to i64    ; 2 uses
  %i.akq = getelementptr i8, ptr %i.b, i64 %i.akp ; 2 uses
  %i.akr = getelementptr i8, ptr %.promoted.i933, i64 %i.akp ; 2 uses
  %bound01608 = icmp ult ptr %0, %i.akq
  %found.conflict1610 = and i1 %bound01608, %bound11609
  %bound01611 = icmp ult ptr %0, %i.akr
  %bound11612 = icmp ult ptr %.promoted.i933, %scevgep1604
  %found.conflict1613 = and i1 %bound01611, %bound11612
  %conflict.rdx1614 = or i1 %found.conflict1610, %found.conflict1613
  %bound01615 = icmp ult ptr %i.b, %i.akr
  %bound11616 = icmp ult ptr %.promoted.i933, %i.akq
  %found.conflict1617 = and i1 %bound01615, %bound11616
  %conflict.rdx1618 = or i1 %conflict.rdx1614, %found.conflict1617
  br i1 %conflict.rdx1618, label %.lr.ph.i5.i935.preheader2303, label %vector.ph1619

vector.ph1619:                                    ; preds = %vector.memcheck1607
  %n.vec1620 = and i64 %i.ako, 2147483644         ; 5 uses
  %i.aks = getelementptr i8, ptr %.promoted.i933, i64 %n.vec1620
  %i.akt = trunc nuw nsw i64 %n.vec1620 to i32
  %i.aku = sub nsw i32 %.0.lcssa.i934, %i.akt
  %i.akv = getelementptr i8, ptr %i.b, i64 %n.vec1620
  br label %vector.body1621

vector.body1621:                                  ; preds = %vector.body1621, %vector.ph1619
  %index1622 = phi i64 [ 0, %vector.ph1619 ], [ %index.next1628, %vector.body1621 ] ; 4 uses
  %next.gep1623 = getelementptr i8, ptr %.promoted.i933, i64 %index1622 ; 2 uses
  %next.gep1625 = getelementptr i8, ptr %i.b, i64 %index1622 ; 2 uses
  %i.akw = getelementptr i8, ptr %next.gep1623, i64 2
  %wide.load1626 = load <2 x i8>, ptr %next.gep1623, align 1, !tbaa !42, !alias.scope !322
  %wide.load1627 = load <2 x i8>, ptr %i.akw, align 1, !tbaa !42, !alias.scope !322
  %i.akx = getelementptr i8, ptr %next.gep1625, i64 2
  store <2 x i8> %wide.load1626, ptr %next.gep1625, align 4, !tbaa !42, !alias.scope !323, !noalias !322
  store <2 x i8> %wide.load1627, ptr %i.akx, align 2, !tbaa !42, !alias.scope !323, !noalias !322
  %index.next1628 = add nuw i64 %index1622, 4     ; 2 uses
  %i.aky = icmp eq i64 %index.next1628, %n.vec1620
  br i1 %i.aky, label %middle.block1629, label %vector.body1621, !llvm.loop !221

middle.block1629:                                 ; preds = %vector.body1621
  %i.akz = getelementptr i8, ptr %.promoted.i933, i64 %index1622
  %i.ala = getelementptr i8, ptr %i.akz, i64 4
  store ptr %i.ala, ptr %0, align 8, !tbaa !41, !alias.scope !324, !noalias !325
  %cmp.n1630 = icmp eq i64 %n.vec1620, %i.ako
  br i1 %cmp.n1630, label %_ZN7Imf_3_43Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit947, label %.lr.ph.i5.i935.preheader2303

.lr.ph.i5.i935.preheader2303:                     ; preds = %vector.memcheck1607, %.lr.ph.i5.i935.preheader, %middle.block1629
  %.ph2304 = phi ptr [ %.promoted.i933, %vector.memcheck1607 ], [ %.promoted.i933, %.lr.ph.i5.i935.preheader ], [ %i.aks, %middle.block1629 ] ; 2 uses
  %.05.i6.i936.ph = phi i32 [ %.0.lcssa.i934, %vector.memcheck1607 ], [ %.0.lcssa.i934, %.lr.ph.i5.i935.preheader ], [ %i.aku, %middle.block1629 ] ; 4 uses
  %.024.i7.i937.ph = phi ptr [ %i.b, %vector.memcheck1607 ], [ %i.b, %.lr.ph.i5.i935.preheader ], [ %i.akv, %middle.block1629 ] ; 2 uses
  %i.alb = add nsw i32 %.05.i6.i936.ph, -1
  %xtraiter2355 = and i32 %.05.i6.i936.ph, 3      ; 2 uses
  %lcmp.mod2356.not = icmp eq i32 %xtraiter2355, 0
  br i1 %lcmp.mod2356.not, label %.lr.ph.i5.i935.prol.loopexit, label %.lr.ph.i5.i935.prol

.lr.ph.i5.i935.prol:                              ; preds = %.lr.ph.i5.i935.preheader2303, %.lr.ph.i5.i935.prol
  %i.alc = phi ptr [ %i.ale, %.lr.ph.i5.i935.prol ], [ %.ph2304, %.lr.ph.i5.i935.preheader2303 ] ; 2 uses
  %.05.i6.i936.prol = phi i32 [ %i.ald, %.lr.ph.i5.i935.prol ], [ %.05.i6.i936.ph, %.lr.ph.i5.i935.preheader2303 ]
  %.024.i7.i937.prol = phi ptr [ %i.alg, %.lr.ph.i5.i935.prol ], [ %.024.i7.i937.ph, %.lr.ph.i5.i935.preheader2303 ] ; 2 uses
  %prol.iter2357 = phi i32 [ %prol.iter2357.next, %.lr.ph.i5.i935.prol ], [ 0, %.lr.ph.i5.i935.preheader2303 ]
  %i.ald = add nsw i32 %.05.i6.i936.prol, -1      ; 2 uses
  %i.ale = getelementptr inbounds nuw i8, ptr %i.alc, i64 1 ; 3 uses
  store ptr %i.ale, ptr %0, align 8, !tbaa !41
  %i.alf = load i8, ptr %i.alc, align 1, !tbaa !42
  %i.alg = getelementptr inbounds nuw i8, ptr %.024.i7.i937.prol, i64 1 ; 2 uses
  store i8 %i.alf, ptr %.024.i7.i937.prol, align 1, !tbaa !42
  %prol.iter2357.next = add i32 %prol.iter2357, 1 ; 2 uses
  %prol.iter2357.cmp.not = icmp eq i32 %prol.iter2357.next, %xtraiter2355
  br i1 %prol.iter2357.cmp.not, label %.lr.ph.i5.i935.prol.loopexit, label %.lr.ph.i5.i935.prol, !llvm.loop !223

.lr.ph.i5.i935.prol.loopexit:                     ; preds = %.lr.ph.i5.i935.prol, %.lr.ph.i5.i935.preheader2303
  %.unr2358 = phi ptr [ %.ph2304, %.lr.ph.i5.i935.preheader2303 ], [ %i.ale, %.lr.ph.i5.i935.prol ]
  %.05.i6.i936.unr = phi i32 [ %.05.i6.i936.ph, %.lr.ph.i5.i935.preheader2303 ], [ %i.ald, %.lr.ph.i5.i935.prol ]
  %.024.i7.i937.unr = phi ptr [ %.024.i7.i937.ph, %.lr.ph.i5.i935.preheader2303 ], [ %i.alg, %.lr.ph.i5.i935.prol ]
  %i.alh = icmp ult i32 %i.alb, 3
  br i1 %i.alh, label %_ZN7Imf_3_43Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit947, label %.lr.ph.i5.i935

.lr.ph.i5.i935:                                   ; preds = %.lr.ph.i5.i935.prol.loopexit, %.lr.ph.i5.i935
  %i.ali = phi ptr [ %i.alt, %.lr.ph.i5.i935 ], [ %.unr2358, %.lr.ph.i5.i935.prol.loopexit ] ; 5 uses
  %.05.i6.i936 = phi i32 [ %i.als, %.lr.ph.i5.i935 ], [ %.05.i6.i936.unr, %.lr.ph.i5.i935.prol.loopexit ]
  %.024.i7.i937 = phi ptr [ %i.alv, %.lr.ph.i5.i935 ], [ %.024.i7.i937.unr, %.lr.ph.i5.i935.prol.loopexit ] ; 5 uses
  %i.alj = getelementptr inbounds nuw i8, ptr %i.ali, i64 1 ; 2 uses
  store ptr %i.alj, ptr %0, align 8, !tbaa !41
  %i.alk = load i8, ptr %i.ali, align 1, !tbaa !42
  %i.all = getelementptr inbounds nuw i8, ptr %.024.i7.i937, i64 1
  store i8 %i.alk, ptr %.024.i7.i937, align 1, !tbaa !42
  %i.alm = getelementptr inbounds nuw i8, ptr %i.ali, i64 2 ; 2 uses
  store ptr %i.alm, ptr %0, align 8, !tbaa !41
  %i.aln = load i8, ptr %i.alj, align 1, !tbaa !42
  %i.alo = getelementptr inbounds nuw i8, ptr %.024.i7.i937, i64 2
  store i8 %i.aln, ptr %i.all, align 1, !tbaa !42
  %i.alp = getelementptr inbounds nuw i8, ptr %i.ali, i64 3 ; 2 uses
  store ptr %i.alp, ptr %0, align 8, !tbaa !41
  %i.alq = load i8, ptr %i.alm, align 1, !tbaa !42
  %i.alr = getelementptr inbounds nuw i8, ptr %.024.i7.i937, i64 3
  store i8 %i.alq, ptr %i.alo, align 1, !tbaa !42
  %i.als = add nsw i32 %.05.i6.i936, -4           ; 2 uses
  %i.alt = getelementptr inbounds nuw i8, ptr %i.ali, i64 4 ; 2 uses
  store ptr %i.alt, ptr %0, align 8, !tbaa !41
  %i.alu = load i8, ptr %i.alp, align 1, !tbaa !42
  %i.alv = getelementptr inbounds nuw i8, ptr %.024.i7.i937, i64 4
  store i8 %i.alu, ptr %i.alr, align 1, !tbaa !42
  %.not.i8.i938.3 = icmp eq i32 %i.als, 0
  br i1 %.not.i8.i938.3, label %_ZN7Imf_3_43Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit947, label %.lr.ph.i5.i935, !llvm.loop !224

_ZN7Imf_3_43Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit947: ; preds = %.lr.ph.i5.i935.prol.loopexit, %.lr.ph.i5.i935, %middle.block1629, %._crit_edge.i932
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  br label %.loopexit1014

.loopexit1014.loopexit.unr-lcssa:                 ; preds = %bb.bb
  %lcmp.mod2351.not = icmp eq i32 %xtraiter2347, 0
  br i1 %lcmp.mod2351.not, label %.loopexit1014, label %.epil.preheader2346

.epil.preheader2346:                              ; preds = %.loopexit1014.loopexit.unr-lcssa, %.lr.ph1145
  %.epil.init2350 = phi ptr [ %.promoted1146, %.lr.ph1145 ], [ %i.ajc, %.loopexit1014.loopexit.unr-lcssa ] ; 3 uses
  %.06731143.epil.init = phi ptr [ %i.aik, %.lr.ph1145 ], [ %i.ajh, %.loopexit1014.loopexit.unr-lcssa ]
  %lcmp.mod2352 = trunc i32 %i.aio to i1
  call void @llvm.assume(i1 %lcmp.mod2352)
  %i.alw = getelementptr inbounds nuw i8, ptr %.epil.init2350, i64 1 ; 2 uses
  store ptr %i.alw, ptr %0, align 8, !tbaa !41
  %i.alx = load i8, ptr %.epil.init2350, align 1, !tbaa !42
  %i.aly = getelementptr inbounds nuw i8, ptr %.epil.init2350, i64 2
  store ptr %i.aly, ptr %0, align 8, !tbaa !41
  %i.alz = load i8, ptr %i.alw, align 1, !tbaa !42
  %.sroa.4.0.insert.ext.i927.epil = zext i8 %i.alz to i64
  %.sroa.0.0.insert.ext.i929.epil = zext i8 %i.alx to i64
  %.idx.epil = shl nuw nsw i64 %.sroa.4.0.insert.ext.i927.epil, 10
  %i.ama = getelementptr inbounds nuw i8, ptr %i.aed, i64 %.idx.epil
  %i.amb = getelementptr inbounds nuw [4 x i8], ptr %i.ama, i64 %.sroa.0.0.insert.ext.i929.epil
  %i.amc = load float, ptr %i.amb, align 4, !tbaa !42
  store float %i.amc, ptr %.06731143.epil.init, align 4, !tbaa !39
  br label %.loopexit1014

.loopexit1014:                                    ; preds = %.epil.preheader2346, %.loopexit1014.loopexit.unr-lcssa, %.preheader1013, %_ZN7Imf_3_43Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit947
  %indvars.iv.next1310 = add nsw i64 %indvars.iv1309, 1 ; 2 uses
  %lftr.wideiv1312 = trunc i64 %indvars.iv.next1310 to i32
  %exitcond1313.not = icmp eq i32 %i.aeh, %lftr.wideiv1312
  br i1 %exitcond1313.not, label %.loopexit981, label %bb.ba, !llvm.loop !225

bb.bd:                                            ; preds = %.lr.ph1142, %.loopexit1018
  %indvars.iv1303 = phi i64 [ %i.adn, %.lr.ph1142 ], [ %indvars.iv.next1304, %.loopexit1018 ] ; 3 uses
  %i.amd = sub nsw i64 %indvars.iv1303, %i.ado
  %i.ame = mul nsw i64 %13, %i.amd
  %i.amf = getelementptr inbounds i8, ptr %i.ade, i64 %i.ame
  %i.amg = load ptr, ptr %i.amf, align 8, !tbaa !41 ; 2 uses
  %i.amh = sub nsw i64 %indvars.iv1303, %i.adp
  %i.ami = mul nsw i64 %i.adm, %i.amh
  %i.amj = getelementptr inbounds i8, ptr %i.adk, i64 %i.ami
  %i.amk = load i32, ptr %i.amj, align 4, !tbaa !32 ; 4 uses
  %.not744 = icmp eq ptr %i.amg, null
  br i1 %.not744, label %bb.bf, label %.preheader1017

.preheader1017:                                   ; preds = %bb.bd
  %i.aml = icmp sgt i32 %i.amk, 0
  br i1 %i.aml, label %.lr.ph1138, label %.loopexit1018

.lr.ph1138:                                       ; preds = %.preheader1017
  %.promoted1139 = load ptr, ptr %0, align 8, !tbaa !41
  br label %bb.be

bb.be:                                            ; preds = %.lr.ph1138, %bb.be
  %i.amm = phi ptr [ %.promoted1139, %.lr.ph1138 ], [ %i.amt, %bb.be ] ; 5 uses
  %.06691137 = phi i32 [ 0, %.lr.ph1138 ], [ %i.amw, %bb.be ]
  %.06701136 = phi ptr [ %i.amg, %.lr.ph1138 ], [ %i.amv, %bb.be ] ; 2 uses
  %i.amn = getelementptr inbounds nuw i8, ptr %i.amm, i64 1 ; 2 uses
  store ptr %i.amn, ptr %0, align 8, !tbaa !41
  %i.amo = load i8, ptr %i.amm, align 1, !tbaa !42
  %i.amp = getelementptr inbounds nuw i8, ptr %i.amm, i64 2 ; 2 uses
  store ptr %i.amp, ptr %0, align 8, !tbaa !41
  %i.amq = load i8, ptr %i.amn, align 1, !tbaa !42
  %i.amr = getelementptr inbounds nuw i8, ptr %i.amm, i64 3 ; 2 uses
  store ptr %i.amr, ptr %0, align 8, !tbaa !41
  %i.ams = load i8, ptr %i.amp, align 1, !tbaa !42
  %i.amt = getelementptr inbounds nuw i8, ptr %i.amm, i64 4 ; 2 uses
  store ptr %i.amt, ptr %0, align 8, !tbaa !41
  %i.amu = load i8, ptr %i.amr, align 1, !tbaa !42
  %.sroa.6.0.insert.ext.i949 = zext i8 %i.amu to i32
  %.sroa.6.0.insert.shift.i950 = shl nuw i32 %.sroa.6.0.insert.ext.i949, 24
  %.sroa.5.0.insert.ext.i951 = zext i8 %i.ams to i32
  %.sroa.5.0.insert.shift.i952 = shl nuw nsw i32 %.sroa.5.0.insert.ext.i951, 16
  %.sroa.4.0.insert.ext.i954 = zext i8 %i.amq to i32
  %.sroa.4.0.insert.shift.i955 = shl nuw nsw i32 %.sroa.4.0.insert.ext.i954, 8
  %.sroa.0.0.insert.ext.i957 = zext i8 %i.amo to i32
  %.sroa.5.0.insert.insert.i953 = or disjoint i32 %.sroa.4.0.insert.shift.i955, %.sroa.0.0.insert.ext.i957
  %.sroa.4.0.insert.insert.i956 = or disjoint i32 %.sroa.5.0.insert.insert.i953, %.sroa.5.0.insert.shift.i952
  %.sroa.0.0.insert.insert.i958 = or disjoint i32 %.sroa.4.0.insert.insert.i956, %.sroa.6.0.insert.shift.i950
  store i32 %.sroa.0.0.insert.insert.i958, ptr %.06701136, align 4, !tbaa !39
  %i.amv = getelementptr inbounds i8, ptr %.06701136, i64 %12
  %i.amw = add nuw nsw i32 %.06691137, 1          ; 2 uses
  %exitcond1302.not = icmp eq i32 %i.amw, %i.amk
  br i1 %exitcond1302.not, label %.loopexit1018, label %bb.be, !llvm.loop !226

bb.bf:                                            ; preds = %bb.bd
  %i.amx = shl nsw i32 %i.amk, 2                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %.promoted10.i959 = load ptr, ptr %0, align 8   ; 2 uses
  %i.amy = icmp sgt i32 %i.amk, 255
  br i1 %i.amy, label %vector.memcheck1565, label %._crit_edge.i960

vector.memcheck1565:                              ; preds = %bb.bf, %_ZN7Imf_3_49CharPtrIO9readCharsERPKcPci.exit.i974
  %.013.i968 = phi i32 [ %i.aoa, %_ZN7Imf_3_49CharPtrIO9readCharsERPKcPci.exit.i974 ], [ %i.amx, %bb.bf ] ; 2 uses
  %.promoted1112.i969 = phi ptr [ %.lcssa1523, %_ZN7Imf_3_49CharPtrIO9readCharsERPKcPci.exit.i974 ], [ %.promoted10.i959, %bb.bf ] ; 10 uses
  %i.amz = getelementptr i8, ptr %.promoted1112.i969, i64 1024 ; 2 uses
  %bound01569 = icmp ult ptr %0, %i.amz
  %bound11570 = icmp ult ptr %.promoted1112.i969, %scevgep.a
  %found.conflict1571 = and i1 %bound01569, %bound11570
  %conflict.rdx1572 = or i1 %found.conflict1568, %found.conflict1571
  %bound01573 = icmp ult ptr %i.a, %i.amz
  %bound11574 = icmp ult ptr %.promoted1112.i969, %scevgep1563
  %found.conflict1575 = and i1 %bound01573, %bound11574
  %conflict.rdx1576 = or i1 %conflict.rdx1572, %found.conflict1575
  br i1 %conflict.rdx1576, label %.lr.ph.i.i970, label %vector.ph1577

vector.ph1577:                                    ; preds = %vector.memcheck1565
  %i.ana = getelementptr i8, ptr %.promoted1112.i969, i64 1024
  br label %vector.body1578

vector.body1578:                                  ; preds = %vector.body1578, %vector.ph1577
  %index1579 = phi i64 [ 0, %vector.ph1577 ], [ %index.next1585.3, %vector.body1578 ] ; 6 uses
  %next.gep1580 = getelementptr i8, ptr %.promoted1112.i969, i64 %index1579 ; 2 uses
  %next.gep1582 = getelementptr i8, ptr %i.a, i64 %index1579 ; 2 uses
  %i.anb = getelementptr i8, ptr %next.gep1580, i64 2
  %wide.load1583 = load <2 x i8>, ptr %next.gep1580, align 1, !tbaa !42, !alias.scope !326
  %wide.load1584 = load <2 x i8>, ptr %i.anb, align 1, !tbaa !42, !alias.scope !326
  %i.anc = getelementptr i8, ptr %next.gep1582, i64 2
  store <2 x i8> %wide.load1583, ptr %next.gep1582, align 16, !tbaa !42, !alias.scope !327, !noalias !326
  store <2 x i8> %wide.load1584, ptr %i.anc, align 2, !tbaa !42, !alias.scope !327, !noalias !326
  %index.next1585 = or disjoint i64 %index1579, 4 ; 2 uses
  %next.gep1580.1 = getelementptr i8, ptr %.promoted1112.i969, i64 %index.next1585 ; 2 uses
  %next.gep1582.1 = getelementptr i8, ptr %i.a, i64 %index.next1585 ; 2 uses
  %i.and = getelementptr i8, ptr %next.gep1580.1, i64 2
  %wide.load1583.1 = load <2 x i8>, ptr %next.gep1580.1, align 1, !tbaa !42, !alias.scope !326
  %wide.load1584.1 = load <2 x i8>, ptr %i.and, align 1, !tbaa !42, !alias.scope !326
  %i.ane = getelementptr i8, ptr %next.gep1582.1, i64 2
  store <2 x i8> %wide.load1583.1, ptr %next.gep1582.1, align 4, !tbaa !42, !alias.scope !327, !noalias !326
  store <2 x i8> %wide.load1584.1, ptr %i.ane, align 2, !tbaa !42, !alias.scope !327, !noalias !326
  %index.next1585.1 = or disjoint i64 %index1579, 8 ; 2 uses
  %next.gep1580.2 = getelementptr i8, ptr %.promoted1112.i969, i64 %index.next1585.1 ; 2 uses
  %next.gep1582.2 = getelementptr i8, ptr %i.a, i64 %index.next1585.1 ; 2 uses
  %i.anf = getelementptr i8, ptr %next.gep1580.2, i64 2
  %wide.load1583.2 = load <2 x i8>, ptr %next.gep1580.2, align 1, !tbaa !42, !alias.scope !326
  %wide.load1584.2 = load <2 x i8>, ptr %i.anf, align 1, !tbaa !42, !alias.scope !326
  %i.ang = getelementptr i8, ptr %next.gep1582.2, i64 2
  store <2 x i8> %wide.load1583.2, ptr %next.gep1582.2, align 8, !tbaa !42, !alias.scope !327, !noalias !326
  store <2 x i8> %wide.load1584.2, ptr %i.ang, align 2, !tbaa !42, !alias.scope !327, !noalias !326
  %index.next1585.2 = or disjoint i64 %index1579, 12 ; 3 uses
  %next.gep1580.3 = getelementptr i8, ptr %.promoted1112.i969, i64 %index.next1585.2 ; 2 uses
  %next.gep1582.3 = getelementptr i8, ptr %i.a, i64 %index.next1585.2 ; 2 uses
  %i.anh = getelementptr i8, ptr %next.gep1580.3, i64 2
  %wide.load1583.3 = load <2 x i8>, ptr %next.gep1580.3, align 1, !tbaa !42, !alias.scope !326
  %wide.load1584.3 = load <2 x i8>, ptr %i.anh, align 1, !tbaa !42, !alias.scope !326
  %i.ani = getelementptr i8, ptr %next.gep1582.3, i64 2
  store <2 x i8> %wide.load1583.3, ptr %next.gep1582.3, align 4, !tbaa !42, !alias.scope !327, !noalias !326
  store <2 x i8> %wide.load1584.3, ptr %i.ani, align 2, !tbaa !42, !alias.scope !327, !noalias !326
  %index.next1585.3 = add nuw nsw i64 %index1579, 16 ; 2 uses
  %i.anj = icmp eq i64 %index.next1585.3, 1024
  br i1 %i.anj, label %middle.block1586, label %vector.body1578, !llvm.loop !230

middle.block1586:                                 ; preds = %vector.body1578
  %i.ank = getelementptr i8, ptr %.promoted1112.i969, i64 %index.next1585.2
  %i.anl = getelementptr i8, ptr %i.ank, i64 4
  store ptr %i.anl, ptr %0, align 8, !tbaa !41, !alias.scope !328, !noalias !329
  br label %_ZN7Imf_3_49CharPtrIO9readCharsERPKcPci.exit.i974

.lr.ph.i.i970:                                    ; preds = %vector.memcheck1565, %.lr.ph.i.i970
  %i.anm = phi ptr [ %i.anx, %.lr.ph.i.i970 ], [ %.promoted1112.i969, %vector.memcheck1565 ] ; 5 uses
  %.05.i.i971 = phi i32 [ %i.anw, %.lr.ph.i.i970 ], [ 1024, %vector.memcheck1565 ]
  %.024.i.i972 = phi ptr [ %i.anz, %.lr.ph.i.i970 ], [ %i.a, %vector.memcheck1565 ] ; 5 uses
  %i.ann = getelementptr inbounds nuw i8, ptr %i.anm, i64 1 ; 2 uses
  store ptr %i.ann, ptr %0, align 8, !tbaa !41
  %i.ano = load i8, ptr %i.anm, align 1, !tbaa !42
  %i.anp = getelementptr inbounds nuw i8, ptr %.024.i.i972, i64 1
  store i8 %i.ano, ptr %.024.i.i972, align 1, !tbaa !42
  %i.anq = getelementptr inbounds nuw i8, ptr %i.anm, i64 2 ; 2 uses
  store ptr %i.anq, ptr %0, align 8, !tbaa !41
  %i.anr = load i8, ptr %i.ann, align 1, !tbaa !42
  %i.ans = getelementptr inbounds nuw i8, ptr %.024.i.i972, i64 2
  store i8 %i.anr, ptr %i.anp, align 1, !tbaa !42
  %i.ant = getelementptr inbounds nuw i8, ptr %i.anm, i64 3 ; 2 uses
  store ptr %i.ant, ptr %0, align 8, !tbaa !41
  %i.anu = load i8, ptr %i.anq, align 1, !tbaa !42
  %i.anv = getelementptr inbounds nuw i8, ptr %.024.i.i972, i64 3
  store i8 %i.anu, ptr %i.ans, align 1, !tbaa !42
  %i.anw = add nsw i32 %.05.i.i971, -4            ; 2 uses
  %i.anx = getelementptr inbounds nuw i8, ptr %i.anm, i64 4 ; 3 uses
  store ptr %i.anx, ptr %0, align 8, !tbaa !41
  %i.any = load i8, ptr %i.ant, align 1, !tbaa !42
  %i.anz = getelementptr inbounds nuw i8, ptr %.024.i.i972, i64 4
  store i8 %i.any, ptr %i.anv, align 1, !tbaa !42
  %.not.i.i973.3 = icmp eq i32 %i.anw, 0
  br i1 %.not.i.i973.3, label %_ZN7Imf_3_49CharPtrIO9readCharsERPKcPci.exit.i974, label %.lr.ph.i.i970, !llvm.loop !232

_ZN7Imf_3_49CharPtrIO9readCharsERPKcPci.exit.i974: ; preds = %.lr.ph.i.i970, %middle.block1586
  %.lcssa1523 = phi ptr [ %i.ana, %middle.block1586 ], [ %i.anx, %.lr.ph.i.i970 ] ; 2 uses
  %i.aoa = add nsw i32 %.013.i968, -1024          ; 2 uses
  %i.aob = icmp sgt i32 %.013.i968, 2047
  br i1 %i.aob, label %vector.memcheck1565, label %._crit_edge.i960, !llvm.loop !1

._crit_edge.i960:                                 ; preds = %_ZN7Imf_3_49CharPtrIO9readCharsERPKcPci.exit.i974, %bb.bf
  %.promoted.i961 = phi ptr [ %.promoted10.i959, %bb.bf ], [ %.lcssa1523, %_ZN7Imf_3_49CharPtrIO9readCharsERPKcPci.exit.i974 ] ; 8 uses
  %.0.lcssa.i962 = phi i32 [ %i.amx, %bb.bf ], [ %i.aoa, %_ZN7Imf_3_49CharPtrIO9readCharsERPKcPci.exit.i974 ] ; 7 uses
  %i.aoc = icmp sgt i32 %.0.lcssa.i962, 0
  br i1 %i.aoc, label %.lr.ph.i5.i963.preheader, label %_ZN7Imf_3_43Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit975

.lr.ph.i5.i963.preheader:                         ; preds = %._crit_edge.i960
  %i.aod = zext nneg i32 %.0.lcssa.i962 to i64    ; 2 uses
  %min.iters.check = icmp ult i32 %.0.lcssa.i962, 12
  br i1 %min.iters.check, label %.lr.ph.i5.i963.preheader2308, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i5.i963.preheader
  %i.aoe = zext nneg i32 %.0.lcssa.i962 to i64    ; 2 uses
  %i.aof = getelementptr i8, ptr %i.a, i64 %i.aoe ; 2 uses
  %i.aog = getelementptr i8, ptr %.promoted.i961, i64 %i.aoe ; 2 uses
  %bound0 = icmp ult ptr %0, %i.aof
  %found.conflict = and i1 %bound0, %bound1
  %bound01537 = icmp ult ptr %0, %i.aog
  %bound11538 = icmp ult ptr %.promoted.i961, %scevgep.a
  %found.conflict1539 = and i1 %bound01537, %bound11538
  %conflict.rdx = or i1 %found.conflict, %found.conflict1539
  %bound01540 = icmp ult ptr %i.a, %i.aog
  %bound11541 = icmp ult ptr %.promoted.i961, %i.aof
  %found.conflict1542 = and i1 %bound01540, %bound11541
  %conflict.rdx1543 = or i1 %conflict.rdx, %found.conflict1542
  br i1 %conflict.rdx1543, label %.lr.ph.i5.i963.preheader2308, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.aod, 2147483644             ; 5 uses
  %i.aoh = getelementptr i8, ptr %.promoted.i961, i64 %n.vec
  %i.aoi = trunc nuw nsw i64 %n.vec to i32
  %i.aoj = sub nsw i32 %.0.lcssa.i962, %i.aoi
  %i.aok = getelementptr i8, ptr %i.a, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %next.gep = getelementptr i8, ptr %.promoted.i961, i64 %index ; 2 uses
  %next.gep1545 = getelementptr i8, ptr %i.a, i64 %index ; 2 uses
  %i.aol = getelementptr i8, ptr %next.gep, i64 2
  %wide.load = load <2 x i8>, ptr %next.gep, align 1, !tbaa !42, !alias.scope !330
  %wide.load1546 = load <2 x i8>, ptr %i.aol, align 1, !tbaa !42, !alias.scope !330
  %i.aom = getelementptr i8, ptr %next.gep1545, i64 2
  store <2 x i8> %wide.load, ptr %next.gep1545, align 4, !tbaa !42, !alias.scope !331, !noalias !330
  store <2 x i8> %wide.load1546, ptr %i.aom, align 2, !tbaa !42, !alias.scope !331, !noalias !330
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aon = icmp eq i64 %index.next, %n.vec
  br i1 %i.aon, label %middle.block, label %vector.body, !llvm.loop !236

middle.block:                                     ; preds = %vector.body
  %i.aoo = getelementptr i8, ptr %.promoted.i961, i64 %index
  %i.aop = getelementptr i8, ptr %i.aoo, i64 4
  store ptr %i.aop, ptr %0, align 8, !tbaa !41, !alias.scope !332, !noalias !333
  %cmp.n = icmp eq i64 %n.vec, %i.aod
  br i1 %cmp.n, label %_ZN7Imf_3_43Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit975, label %.lr.ph.i5.i963.preheader2308

.lr.ph.i5.i963.preheader2308:                     ; preds = %vector.memcheck, %.lr.ph.i5.i963.preheader, %middle.block
  %.ph2309 = phi ptr [ %.promoted.i961, %vector.memcheck ], [ %.promoted.i961, %.lr.ph.i5.i963.preheader ], [ %i.aoh, %middle.block ] ; 2 uses
  %.05.i6.i964.ph = phi i32 [ %.0.lcssa.i962, %vector.memcheck ], [ %.0.lcssa.i962, %.lr.ph.i5.i963.preheader ], [ %i.aoj, %middle.block ] ; 4 uses
  %.024.i7.i965.ph = phi ptr [ %i.a, %vector.memcheck ], [ %i.a, %.lr.ph.i5.i963.preheader ], [ %i.aok, %middle.block ] ; 2 uses
  %i.aoq = add nsw i32 %.05.i6.i964.ph, -1
  %xtraiter2343.a = and i32 %.05.i6.i964.ph, 3    ; 2 uses
  %lcmp.mod2344.not = icmp eq i32 %xtraiter2343.a, 0
  br i1 %lcmp.mod2344.not, label %.lr.ph.i5.i963.prol.loopexit, label %.lr.ph.i5.i963.prol

.lr.ph.i5.i963.prol:                              ; preds = %.lr.ph.i5.i963.preheader2308, %.lr.ph.i5.i963.prol
  %i.aor = phi ptr [ %i.aot, %.lr.ph.i5.i963.prol ], [ %.ph2309, %.lr.ph.i5.i963.preheader2308 ] ; 2 uses
  %.05.i6.i964.prol = phi i32 [ %i.aos, %.lr.ph.i5.i963.prol ], [ %.05.i6.i964.ph, %.lr.ph.i5.i963.preheader2308 ]
  %.024.i7.i965.prol = phi ptr [ %i.aov, %.lr.ph.i5.i963.prol ], [ %.024.i7.i965.ph, %.lr.ph.i5.i963.preheader2308 ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.i5.i963.prol ], [ 0, %.lr.ph.i5.i963.preheader2308 ]
  %i.aos = add nsw i32 %.05.i6.i964.prol, -1      ; 2 uses
  %i.aot = getelementptr inbounds nuw i8, ptr %i.aor, i64 1 ; 3 uses
  store ptr %i.aot, ptr %0, align 8, !tbaa !41
  %i.aou = load i8, ptr %i.aor, align 1, !tbaa !42
  %i.aov = getelementptr inbounds nuw i8, ptr %.024.i7.i965.prol, i64 1 ; 2 uses
  store i8 %i.aou, ptr %.024.i7.i965.prol, align 1, !tbaa !42
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter2343.a
  br i1 %prol.iter.cmp.not, label %.lr.ph.i5.i963.prol.loopexit, label %.lr.ph.i5.i963.prol, !llvm.loop !238

.lr.ph.i5.i963.prol.loopexit:                     ; preds = %.lr.ph.i5.i963.prol, %.lr.ph.i5.i963.preheader2308
  %.unr2345 = phi ptr [ %.ph2309, %.lr.ph.i5.i963.preheader2308 ], [ %i.aot, %.lr.ph.i5.i963.prol ]
  %.05.i6.i964.unr = phi i32 [ %.05.i6.i964.ph, %.lr.ph.i5.i963.preheader2308 ], [ %i.aos, %.lr.ph.i5.i963.prol ]
  %.024.i7.i965.unr = phi ptr [ %.024.i7.i965.ph, %.lr.ph.i5.i963.preheader2308 ], [ %i.aov, %.lr.ph.i5.i963.prol ]
  %i.aow = icmp ult i32 %i.aoq, 3
  br i1 %i.aow, label %_ZN7Imf_3_43Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit975, label %.lr.ph.i5.i963

.lr.ph.i5.i963:                                   ; preds = %.lr.ph.i5.i963.prol.loopexit, %.lr.ph.i5.i963
  %i.aox = phi ptr [ %i.api, %.lr.ph.i5.i963 ], [ %.unr2345, %.lr.ph.i5.i963.prol.loopexit ] ; 5 uses
  %.05.i6.i964 = phi i32 [ %i.aph, %.lr.ph.i5.i963 ], [ %.05.i6.i964.unr, %.lr.ph.i5.i963.prol.loopexit ]
  %.024.i7.i965 = phi ptr [ %i.apk, %.lr.ph.i5.i963 ], [ %.024.i7.i965.unr, %.lr.ph.i5.i963.prol.loopexit ] ; 5 uses
  %i.aoy = getelementptr inbounds nuw i8, ptr %i.aox, i64 1 ; 2 uses
  store ptr %i.aoy, ptr %0, align 8, !tbaa !41
  %i.aoz = load i8, ptr %i.aox, align 1, !tbaa !42
  %i.apa = getelementptr inbounds nuw i8, ptr %.024.i7.i965, i64 1
  store i8 %i.aoz, ptr %.024.i7.i965, align 1, !tbaa !42
  %i.apb = getelementptr inbounds nuw i8, ptr %i.aox, i64 2 ; 2 uses
  store ptr %i.apb, ptr %0, align 8, !tbaa !41
  %i.apc = load i8, ptr %i.aoy, align 1, !tbaa !42
  %i.apd = getelementptr inbounds nuw i8, ptr %.024.i7.i965, i64 2
  store i8 %i.apc, ptr %i.apa, align 1, !tbaa !42
  %i.ape = getelementptr inbounds nuw i8, ptr %i.aox, i64 3 ; 2 uses
  store ptr %i.ape, ptr %0, align 8, !tbaa !41
  %i.apf = load i8, ptr %i.apb, align 1, !tbaa !42
  %i.apg = getelementptr inbounds nuw i8, ptr %.024.i7.i965, i64 3
  store i8 %i.apf, ptr %i.apd, align 1, !tbaa !42
  %i.aph = add nsw i32 %.05.i6.i964, -4           ; 2 uses
  %i.api = getelementptr inbounds nuw i8, ptr %i.aox, i64 4 ; 2 uses
  store ptr %i.api, ptr %0, align 8, !tbaa !41
  %i.apj = load i8, ptr %i.ape, align 1, !tbaa !42
  %i.apk = getelementptr inbounds nuw i8, ptr %.024.i7.i965, i64 4
  store i8 %i.apj, ptr %i.apg, align 1, !tbaa !42
  %.not.i8.i966.3 = icmp eq i32 %i.aph, 0
  br i1 %.not.i8.i966.3, label %_ZN7Imf_3_43Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit975, label %.lr.ph.i5.i963, !llvm.loop !239

_ZN7Imf_3_43Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit975: ; preds = %.lr.ph.i5.i963.prol.loopexit, %.lr.ph.i5.i963, %middle.block, %._crit_edge.i960
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %.loopexit1018

.loopexit1018:                                    ; preds = %bb.be, %.preheader1017, %_ZN7Imf_3_43Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit975
  %indvars.iv.next1304 = add nsw i64 %indvars.iv1303, 1 ; 2 uses
  %lftr.wideiv1306 = trunc i64 %indvars.iv.next1304 to i32
  %exitcond1307.not = icmp eq i32 %i.adq, %lftr.wideiv1306
  br i1 %exitcond1307.not, label %.loopexit981, label %bb.bd, !llvm.loop !240

bb.bg:                                            ; preds = %bb.aw
  %i.apl = tail call ptr @__cxa_allocate_exception(i64 72) #19 ; 3 uses
  invoke void @_ZN7Iex_3_46ArgExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.apl, ptr noundef nonnull @.str.9)
          to label %bb.bh unwind label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  tail call void @__cxa_throw(ptr nonnull %i.apl, ptr nonnull @_ZTIN7Iex_3_46ArgExcE, ptr nonnull @_ZN7Iex_3_46ArgExcD1Ev) #20
  unreachable

bb.bi:                                            ; preds = %bb.bg
  %i.apm = landingpad { ptr, i32 }
          cleanup
  br label %bb.da

bb.bj:                                            ; preds = %bb.z
  %i.apn = tail call ptr @__cxa_allocate_exception(i64 72) #19 ; 3 uses
  invoke void @_ZN7Iex_3_46ArgExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.apn, ptr noundef nonnull @.str.9)
          to label %bb.bk unwind label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  tail call void @__cxa_throw(ptr nonnull %i.apn, ptr nonnull @_ZTIN7Iex_3_46ArgExcE, ptr nonnull @_ZN7Iex_3_46ArgExcD1Ev) #20
  unreachable

bb.bl:                                            ; preds = %bb.bj
  %i.apo = landingpad { ptr, i32 }
          cleanup
  br label %bb.da

bb.bm:                                            ; preds = %bb.y
  switch i32 %18, label %bb.cx [
    i32 0, label %bb.bn
    i32 1, label %bb.bx
    i32 2, label %bb.cj
  ]

bb.bn:                                            ; preds = %bb.bm
  switch i32 %19, label %bb.bu [
    i32 0, label %.preheader1024
    i32 1, label %.preheader1028
    i32 2, label %.preheader1032
  ]

.preheader1032:                                   ; preds = %bb.bn
  %.not7371121 = icmp sgt i32 %6, %7
  br i1 %.not7371121, label %.loopexit981, label %.lr.ph1123

.lr.ph1123:                                       ; preds = %.preheader1032
  %i.app = sub nsw i32 %5, %11
  %i.apq = sext i32 %i.app to i64
  %i.apr = mul nsw i64 %14, %i.apq
  %i.aps = getelementptr inbounds i8, ptr %1, i64 %i.apr
  %i.apt = sub nsw i32 %5, %9
  %i.apu = sext i32 %i.apt to i64
  %i.apv = shl i64 %4, 32
  %i.apw = ashr exact i64 %i.apv, 32
  %i.apx = mul nsw i64 %i.apw, %i.apu
  %i.apy = getelementptr inbounds i8, ptr %2, i64 %i.apx
  %i.apz = shl i64 %3, 32
  %i.aqa = ashr exact i64 %i.apz, 32
  %i.aqb = sext i32 %6 to i64
  %i.aqc = sext i32 %10 to i64
  %i.aqd = sext i32 %8 to i64
  %i.aqe = add i32 %7, 1
  br label %bb.bs

.preheader1028:                                   ; preds = %bb.bn
  %.not7391127 = icmp sgt i32 %6, %7
  br i1 %.not7391127, label %.loopexit981, label %.lr.ph1129

.lr.ph1129:                                       ; preds = %.preheader1028
  %i.aqf = sub nsw i32 %5, %11
  %i.aqg = sext i32 %i.aqf to i64
  %i.aqh = mul nsw i64 %14, %i.aqg
  %i.aqi = getelementptr inbounds i8, ptr %1, i64 %i.aqh
  %i.aqj = sub nsw i32 %5, %9
  %i.aqk = sext i32 %i.aqj to i64
  %i.aql = shl i64 %4, 32
  %i.aqm = ashr exact i64 %i.aql, 32
  %i.aqn = mul nsw i64 %i.aqm, %i.aqk
  %i.aqo = getelementptr inbounds i8, ptr %2, i64 %i.aqn
  %i.aqp = shl i64 %3, 32
  %i.aqq = ashr exact i64 %i.aqp, 32
  %i.aqr = sext i32 %6 to i64
  %i.aqs = sext i32 %10 to i64
  %i.aqt = sext i32 %8 to i64
  %i.aqu = add i32 %7, 1
  br label %bb.bq

.preheader1024:                                   ; preds = %bb.bn
  %.not7411133 = icmp sgt i32 %6, %7
end_hunk_0
