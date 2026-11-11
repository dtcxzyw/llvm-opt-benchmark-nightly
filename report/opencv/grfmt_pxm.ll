Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/grfmt_pxm?download=true
inline.NumInlined: 466
inline.NumDeleted: 254
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN2cv10PxMDecoder8readDataERNS_3MatE:bb.a
bb.ao:                                            ; preds = %._crit_edge276
  call void @_ZdaPv(ptr noundef nonnull %i.fs) #24
  br label %_ZN2cv10AutoBufferIhLm1032EED2Ev.exit217

_ZN2cv10AutoBufferIhLm1032EED2Ev.exit217:         ; preds = %._crit_edge276, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br label %bb.cm

bb.ap:                                            ; preds = %bb.an
  %i.fu = landingpad { ptr, i32 }
          catch ptr @_ZTIN2cv9ExceptionE
          catch ptr null
  br label %_ZN2cv10AutoBufferIhLm1032EED2Ev.exit220

bb.aq:                                            ; preds = %.lr.ph275, %.loopexit242
  %.0141274 = phi i32 [ 0, %.lr.ph275 ], [ %i.jv, %.loopexit242 ]
  %.2165272 = phi ptr [ %i.e, %.lr.ph275 ], [ %i.jx, %.loopexit242 ] ; 8 uses
  %i.fv = load i8, ptr %i.fk, align 8, !tbaa !65, !range !144, !noundef !145
  %i.fw = trunc nuw i8 %i.fv to i1
  br i1 %i.fw, label %bb.av, label %.preheader247

.preheader247:                                    ; preds = %bb.aq
  br i1 %i.fl, label %.thread, label %.lr.ph259

.lr.ph259:                                        ; preds = %.preheader247, %bb.au
  %indvars.iv312 = phi i64 [ %indvars.iv.next313, %bb.au ], [ 0, %.preheader247 ] ; 3 uses
  %i.fx = invoke fastcc noundef i32 @_ZN2cvL10ReadNumberERNS_12RLByteStreamEi(ptr noundef nonnull align 8 dereferenceable(65) %i.ad, i32 noundef 0)
          to label %bb.ar unwind label %.loopexit.split-lp250.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ar:                                            ; preds = %.lr.ph259
  %i.fy = load i32, ptr %i.fm, align 4, !tbaa !66
  %spec.select = call i32 @llvm.umin.i32(i32 %i.fx, i32 %i.fy) ; 2 uses
  br i1 %i.af, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.fz = zext nneg i32 %spec.select to i64
  %i.ga = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.fz
  %i.gb = load i8, ptr %i.ga, align 1, !tbaa !76
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fg, i64 %indvars.iv312
  store i8 %i.gb, ptr %i.gc, align 1, !tbaa !76
  br label %bb.au

bb.at:                                            ; preds = %bb.ar
  %i.gd = trunc i32 %spec.select to i16
  %i.ge = getelementptr inbounds nuw [2 x i8], ptr %i.fg, i64 %indvars.iv312
  store i16 %i.gd, ptr %i.ge, align 2, !tbaa !96
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %indvars.iv.next313 = add nuw nsw i64 %indvars.iv312, 1 ; 2 uses
  %exitcond316.not = icmp eq i64 %indvars.iv.next313, %wide.trip.count315
  br i1 %exitcond316.not, label %.loopexit246, label %.lr.ph259, !llvm.loop !136

bb.av:                                            ; preds = %bb.aq
  %i.gf = invoke noundef i32 @_ZN2cv12RLByteStream8getBytesEPvi(ptr noundef nonnull align 8 dereferenceable(65) %i.ad, ptr noundef nonnull %i.fg, i32 noundef %i.v)
          to label %bb.aw unwind label %.loopexit.split-lp250.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.aw:                                            ; preds = %bb.av
  br i1 %brmerge367, label %.thread, label %.lr.ph261.preheader

.lr.ph261.preheader:                              ; preds = %bb.aw
  br i1 %i.fq, label %.lr.ph261.epil.preheader, label %.lr.ph261

.loopexit.split-lp250.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph259, %bb.bl, %bb.bk, %bb.bi, %bb.bh, %bb.av
  %lpad.loopexit.split-lp409 = landingpad { ptr, i32 }
          catch ptr @_ZTIN2cv9ExceptionE
          catch ptr null                          ; 2 uses
  %i.gg = load ptr, ptr %9, align 8, !tbaa !147   ; 3 uses
  %.not.i.i218 = icmp eq ptr %i.gg, %i.fd
  %i.gh = icmp eq ptr %i.gg, null
  %or.cond.i219 = or i1 %.not.i.i218, %i.gh
  br i1 %or.cond.i219, label %_ZN2cv10AutoBufferIhLm1032EED2Ev.exit220, label %bb.ax

bb.ax:                                            ; preds = %.loopexit.split-lp250.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  call void @_ZdaPv(ptr noundef nonnull %i.gg) #24
  br label %_ZN2cv10AutoBufferIhLm1032EED2Ev.exit220

.lr.ph261:                                        ; preds = %.lr.ph261.preheader, %.lr.ph261
  %indvars.iv317 = phi i64 [ %indvars.iv.next318.1, %.lr.ph261 ], [ 0, %.lr.ph261.preheader ] ; 3 uses
  %niter417 = phi i64 [ %niter417.next.1, %.lr.ph261 ], [ 0, %.lr.ph261.preheader ]
  %i.gi = shl nuw nsw i64 %indvars.iv317, 1
  %i.gj = getelementptr inbounds nuw i8, ptr %i.fg, i64 %i.gi ; 3 uses
  %i.gk = load i8, ptr %i.gj, align 1, !tbaa !76
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gj, i64 1 ; 2 uses
  %i.gm = load i8, ptr %i.gl, align 1, !tbaa !76
  store i8 %i.gm, ptr %i.gj, align 1, !tbaa !76
  store i8 %i.gk, ptr %i.gl, align 1, !tbaa !76
  %indvars.iv.next318 = shl nuw i64 %indvars.iv317, 1
  %i.gn = getelementptr inbounds nuw i8, ptr %i.fg, i64 %indvars.iv.next318 ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 2 ; 2 uses
  %i.gp = load i8, ptr %i.go, align 1, !tbaa !76
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gn, i64 3 ; 2 uses
  %i.gr = load i8, ptr %i.gq, align 1, !tbaa !76
  store i8 %i.gr, ptr %i.go, align 1, !tbaa !76
  store i8 %i.gp, ptr %i.gq, align 1, !tbaa !76
  %indvars.iv.next318.1 = add nuw nsw i64 %indvars.iv317, 2 ; 2 uses
  %niter417.next.1 = add i64 %niter417, 2         ; 2 uses
  %niter417.ncmp.1 = icmp eq i64 %niter417.next.1, %unroll_iter416
  br i1 %niter417.ncmp.1, label %.loopexit246.loopexit.unr-lcssa, label %.lr.ph261, !llvm.loop !137

.loopexit246.loopexit.unr-lcssa:                  ; preds = %.lr.ph261
  br i1 %lcmp.mod414.not, label %.loopexit246, label %.lr.ph261.epil.preheader

.lr.ph261.epil.preheader:                         ; preds = %.loopexit246.loopexit.unr-lcssa, %.lr.ph261.preheader
  %indvars.iv317.epil.init = phi i64 [ 0, %.lr.ph261.preheader ], [ %indvars.iv.next318.1, %.loopexit246.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod415)
  %i.gs = shl nuw nsw i64 %indvars.iv317.epil.init, 1
  %i.gt = getelementptr inbounds nuw i8, ptr %i.fg, i64 %i.gs ; 3 uses
  %i.gu = load i8, ptr %i.gt, align 1, !tbaa !76
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gt, i64 1 ; 2 uses
  %i.gw = load i8, ptr %i.gv, align 1, !tbaa !76
  store i8 %i.gw, ptr %i.gt, align 1, !tbaa !76
  store i8 %i.gu, ptr %i.gv, align 1, !tbaa !76
  br label %.loopexit246

.loopexit246:                                     ; preds = %bb.au, %.lr.ph261.epil.preheader, %.loopexit246.loopexit.unr-lcssa
  %i.gx = load i32, ptr %1, align 8, !tbaa !93
  %i.gy = and i32 %i.gx, 31
  %i.gz = icmp ne i32 %i.gy, 0
  %or.cond.not292 = or i1 %i.fn, %i.gz
  %brmerge = select i1 %or.cond.not292, i1 true, i1 %i.fo
  br i1 %brmerge, label %.thread, label %iter.check

iter.check:                                       ; preds = %.loopexit246
  br i1 %min.iters.check, label %.lr.ph263.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check387, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.ha = getelementptr inbounds nuw [2 x i8], ptr %i.fg, i64 %index ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 16
  %wide.load = load <8 x i16>, ptr %i.ha, align 2, !tbaa !96
  %wide.load388 = load <8 x i16>, ptr %i.hb, align 2, !tbaa !96
  %i.hc = lshr <8 x i16> %wide.load, splat (i16 8)
  %i.hd = lshr <8 x i16> %wide.load388, splat (i16 8)
  %i.he = trunc nuw <8 x i16> %i.hc to <8 x i8>
  %i.hf = trunc nuw <8 x i16> %i.hd to <8 x i8>
  %i.hg = getelementptr inbounds nuw i8, ptr %i.fg, i64 %index ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 8
  store <8 x i8> %i.he, ptr %i.hg, align 1, !tbaa !76
  store <8 x i8> %i.hf, ptr %i.hh, align 1, !tbaa !76
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.hi = icmp eq i64 %index.next, %n.vec
  br i1 %i.hi, label %middle.block, label %vector.body, !llvm.loop !138

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.thread, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %.lr.ph263.preheader, label %vec.epilog.ph, !prof !149

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index390 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next392, %vec.epilog.vector.body ] ; 3 uses
  %i.hj = getelementptr inbounds nuw [2 x i8], ptr %i.fg, i64 %index390
  %wide.load391 = load <4 x i16>, ptr %i.hj, align 2, !tbaa !96
  %i.hk = lshr <4 x i16> %wide.load391, splat (i16 8)
  %i.hl = trunc nuw <4 x i16> %i.hk to <4 x i8>
  %i.hm = getelementptr inbounds nuw i8, ptr %i.fg, i64 %index390
  store <4 x i8> %i.hl, ptr %i.hm, align 1, !tbaa !76
  %index.next392 = add nuw i64 %index390, 4       ; 2 uses
  %i.hn = icmp eq i64 %index.next392, %n.vec389
  br i1 %i.hn, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !139

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n393, label %.thread, label %.lr.ph263.preheader

.lr.ph263.preheader:                              ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv322.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec389, %vec.epilog.middle.block ]
  br label %.lr.ph263

.lr.ph263:                                        ; preds = %.lr.ph263.preheader, %.lr.ph263
  %indvars.iv322 = phi i64 [ %indvars.iv.next323, %.lr.ph263 ], [ %indvars.iv322.ph, %.lr.ph263.preheader ] ; 3 uses
  %i.ho = getelementptr inbounds nuw [2 x i8], ptr %i.fg, i64 %indvars.iv322
  %i.hp = load i16, ptr %i.ho, align 2, !tbaa !96
  %i.hq = lshr i16 %i.hp, 8
  %i.hr = trunc nuw i16 %i.hq to i8
  %i.hs = getelementptr inbounds nuw i8, ptr %i.fg, i64 %indvars.iv322
  store i8 %i.hr, ptr %i.hs, align 1, !tbaa !76
  %indvars.iv.next323 = add nuw nsw i64 %indvars.iv322, 1 ; 2 uses
  %exitcond326.not = icmp eq i64 %indvars.iv.next323, %wide.trip.count325
  br i1 %exitcond326.not, label %.thread, label %.lr.ph263, !llvm.loop !140

.thread:                                          ; preds = %.lr.ph263, %middle.block, %vec.epilog.middle.block, %bb.aw, %.preheader247, %.loopexit246
  %i.ht = load i32, ptr %i.q, align 8, !tbaa !64
  %i.hu = icmp eq i32 %i.ht, 8
  br i1 %i.hu, label %bb.ay, label %bb.bd

bb.ay:                                            ; preds = %.thread
  %i.hv = load i32, ptr %1, align 8, !tbaa !93    ; 2 uses
  br i1 %.not241, label %bb.bc, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.hw = and i32 %i.hv, 31
  %i.hx = icmp eq i32 %i.hw, 0
  %i.hy = load i32, ptr %i.o, align 8, !tbaa !85  ; 3 uses
  %14 = zext nneg i32 %i.hy to i64                ; 2 uses
  br i1 %i.hx, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.hz = getelementptr inbounds nuw i8, ptr %i.fg, i64 %14
  %i.ia = icmp sgt i32 %i.hy, 0
  br i1 %i.ia, label %.lr.ph271, label %.loopexit242

.lr.ph271:                                        ; preds = %bb.ba, %.lr.ph271
  %.0134269 = phi ptr [ %i.if, %.lr.ph271 ], [ %i.fg, %bb.ba ] ; 2 uses
  %.0135268 = phi ptr [ %i.ie, %.lr.ph271 ], [ %.2165272, %bb.ba ] ; 4 uses
  %i.ib = load i8, ptr %.0134269, align 1, !tbaa !76 ; 3 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %.0135268, i64 2
  store i8 %i.ib, ptr %i.ic, align 1, !tbaa !76
  %i.id = getelementptr inbounds nuw i8, ptr %.0135268, i64 1
  store i8 %i.ib, ptr %i.id, align 1, !tbaa !76
  store i8 %i.ib, ptr %.0135268, align 1, !tbaa !76
  %i.ie = getelementptr inbounds nuw i8, ptr %.0135268, i64 3
  %i.if = getelementptr inbounds nuw i8, ptr %.0134269, i64 1 ; 2 uses
  %i.ig = icmp ult ptr %i.if, %i.hz
  br i1 %i.ig, label %.lr.ph271, label %.loopexit242, !llvm.loop !141

bb.bb:                                            ; preds = %bb.az
  %.idx = shl nuw nsw i64 %14, 1
  %i.ih = getelementptr inbounds nuw i8, ptr %i.fg, i64 %.idx
  %i.ii = icmp sgt i32 %i.hy, 0
  br i1 %i.ii, label %.lr.ph267, label %.loopexit242

.lr.ph267:                                        ; preds = %bb.bb, %.lr.ph267
  %.0132265 = phi ptr [ %i.im, %.lr.ph267 ], [ %i.fg, %bb.bb ] ; 2 uses
  %.0133264 = phi ptr [ %i.in, %.lr.ph267 ], [ %.2165272, %bb.bb ] ; 4 uses
  %i.ij = load i16, ptr %.0132265, align 2, !tbaa !96 ; 3 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %.0133264, i64 4
  store i16 %i.ij, ptr %i.ik, align 2, !tbaa !96
  %i.il = getelementptr inbounds nuw i8, ptr %.0133264, i64 2
  store i16 %i.ij, ptr %i.il, align 2, !tbaa !96
  store i16 %i.ij, ptr %.0133264, align 2, !tbaa !96
  %i.im = getelementptr inbounds nuw i8, ptr %.0132265, i64 2 ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %.0133264, i64 6
  %i.io = icmp ult ptr %i.im, %i.ih
  br i1 %i.io, label %.lr.ph267, label %.loopexit242, !llvm.loop !142

bb.bc:                                            ; preds = %bb.ay
  %i.ip = shl i32 %i.hv, 2
  %i.iq = and i32 %i.ip, 124
  %i.ir = zext nneg i32 %i.iq to i64
  %i.is = lshr i64 1275511473185297, %i.ir
  %i.it = and i64 %i.is, 15
  %i.iu = load i32, ptr %i.o, align 8, !tbaa !85
  %i.iv = sext i32 %i.iu to i64
  %i.iw = mul nsw i64 %i.it, %i.iv
  br label %.loopexit242.sink.split

bb.bd:                                            ; preds = %.thread
  br i1 %.not241, label %bb.bj, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.ix = load i8, ptr %i.fp, align 1, !tbaa !150, !range !144, !noundef !145
  %i.iy = trunc nuw i8 %i.ix to i1
  br i1 %i.iy, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.iz = load i32, ptr %i.o, align 8, !tbaa !85
  %i.ja = load i32, ptr %1, align 8, !tbaa !93
  %i.jb = and i32 %i.ja, 4095                     ; 2 uses
  %i.jc = lshr i32 %i.jb, 5
  %i.jd = add nuw nsw i32 %i.jc, 1
  %i.je = shl nuw nsw i32 %i.jb, 2
  %i.jf = and i32 %i.je, 124
  %i.jg = zext nneg i32 %i.jf to i64
  %i.jh = lshr i64 1275511473185297, %i.jg
  %i.ji = trunc i64 %i.jh to i32
  %i.jj = and i32 %i.ji, 15
  %i.jk = mul i32 %i.jd, %i.iz
  %i.jl = mul i32 %i.jk, %i.jj
  %i.jm = sext i32 %i.jl to i64
  br label %.loopexit242.sink.split

bb.bg:                                            ; preds = %bb.be
  %i.jn = load i32, ptr %1, align 8, !tbaa !93
  %i.jo = and i32 %i.jn, 31
  %i.jp = icmp eq i32 %i.jo, 0
  %i.jq = load i32, ptr %i.o, align 8, !tbaa !85
  %.sroa.0235.0.insert.ext = zext i32 %i.jq to i64
  %.sroa.0235.0.insert.insert = or disjoint i64 %.sroa.0235.0.insert.ext, 4294967296 ; 2 uses
  br i1 %i.jp, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  invoke void @_ZN2cv21icvCvt_BGR2RGB_8u_C3REPKhiPhiNS_5Size_IiEE(ptr noundef nonnull %i.fg, i32 noundef 0, ptr noundef %.2165272, i32 noundef 0, i64 %.sroa.0235.0.insert.insert)
          to label %.loopexit242 unwind label %.loopexit.split-lp250.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bi:                                            ; preds = %bb.bg
  invoke void @_ZN2cv22icvCvt_BGR2RGB_16u_C3REPKtiPtiNS_5Size_IiEE(ptr noundef nonnull %i.fg, i32 noundef 0, ptr noundef %.2165272, i32 noundef 0, i64 %.sroa.0235.0.insert.insert)
          to label %.loopexit242 unwind label %.loopexit.split-lp250.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bj:                                            ; preds = %bb.bd
  %i.jr = load i32, ptr %1, align 8, !tbaa !93
  %i.js = and i32 %i.jr, 31
  %i.jt = icmp eq i32 %i.js, 0
  %i.ju = load i32, ptr %i.o, align 8, !tbaa !85
  %.sroa.0231.0.insert.ext = zext i32 %i.ju to i64
  %.sroa.0231.0.insert.insert = or disjoint i64 %.sroa.0231.0.insert.ext, 4294967296 ; 2 uses
  br i1 %i.jt, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  invoke void @_ZN2cv24icvCvt_BGR2Gray_8u_C3C1REPKhiPhiNS_5Size_IiEEi(ptr noundef nonnull %i.fg, i32 noundef 0, ptr noundef %.2165272, i32 noundef 0, i64 %.sroa.0231.0.insert.insert, i32 noundef 2)
          to label %.loopexit242 unwind label %.loopexit.split-lp250.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bl:                                            ; preds = %bb.bj
  invoke void @_ZN2cv26icvCvt_BGRA2Gray_16u_CnC1REPKtiPtiNS_5Size_IiEEii(ptr noundef nonnull %i.fg, i32 noundef 0, ptr noundef %.2165272, i32 noundef 0, i64 %.sroa.0231.0.insert.insert, i32 noundef 3, i32 noundef 2)
          to label %.loopexit242 unwind label %.loopexit.split-lp250.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit242.sink.split:                          ; preds = %bb.bf, %bb.bc
  %.sink = phi i64 [ %i.iw, %bb.bc ], [ %i.jm, %bb.bf ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.2165272, ptr nonnull align 1 %i.fg, i64 %.sink, i1 false)
  br label %.loopexit242

.loopexit242:                                     ; preds = %.lr.ph267, %.lr.ph271, %.loopexit242.sink.split, %bb.bb, %bb.ba, %bb.bk, %bb.bl, %bb.bi, %bb.bh
  %i.jv = add nuw nsw i32 %.0141274, 1            ; 2 uses
  %i.jw = load i64, ptr %i.f, align 8, !tbaa !92
  %i.jx = getelementptr inbounds nuw i8, ptr %.2165272, i64 %i.jw
  %i.jy = load i32, ptr %i.fh, align 4, !tbaa !86
  %i.jz = icmp slt i32 %i.jv, %i.jy
  br i1 %i.jz, label %bb.aq, label %._crit_edge276.loopexit, !llvm.loop !143

_ZN2cv10AutoBufferIhLm1032EED2Ev.exit220:         ; preds = %bb.ax, %.loopexit.split-lp250.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ap
  %.pn172.pn = phi { ptr, i32 } [ %i.fu, %bb.ap ], [ %lpad.loopexit.split-lp409, %.loopexit.split-lp250.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp409, %bb.ax ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br label %bb.br

bb.bm:                                            ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @.str.5, ptr noundef nonnull align 1 dereferenceable(1) %11)
          to label %bb.bn unwind label %bb.bp

bb.bn:                                            ; preds = %bb.bm
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -2, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @__func__._ZN2cv10PxMDecoder8readDataERNS_3MatE, ptr noundef nonnull @.str.1, i32 noundef 360) #28
          to label %bb.bo unwind label %bb.bq

bb.bo:                                            ; preds = %bb.bn
  unreachable

bb.bp:                                            ; preds = %bb.bm
  %i.ka = landingpad { ptr, i32 }
          catch ptr @_ZTIN2cv9ExceptionE
          catch ptr null
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit223

bb.bq:                                            ; preds = %bb.bn
  %i.kb = landingpad { ptr, i32 }
          catch ptr @_ZTIN2cv9ExceptionE
          catch ptr null                          ; 2 uses
  %i.kc = load ptr, ptr %10, align 8, !tbaa !75   ; 2 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.ke = icmp eq ptr %i.kc, %i.kd
  br i1 %i.ke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit223, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i221

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i221: ; preds = %bb.bq
  %i.kf = load i64, ptr %i.kd, align 8, !tbaa !76
  %i.kg = add i64 %i.kf, 1
  call void @_ZdlPvm(ptr noundef %i.kc, i64 noundef %i.kg) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit223

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit223: ; preds = %bb.bq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i221, %bb.bp
  %.pn182 = phi { ptr, i32 } [ %i.ka, %bb.bp ], [ %i.kb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i221 ], [ %i.kb, %bb.bq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %bb.br

bb.br:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit223, %_ZN2cv10AutoBufferIhLm1032EED2Ev.exit220, %_ZN2cv10AutoBufferIhLm1032EED2Ev.exit211, %_ZN2cv10AutoBufferIhLm1032EED2Ev.exit202, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit198, %bb.m
  %.pn182.pn = phi { ptr, i32 } [ %.pn182, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit223 ], [ %.pn180, %_ZN2cv10AutoBufferIhLm1032EED2Ev.exit211 ], [ %.pn177.pn, %_ZN2cv10AutoBufferIhLm1032EED2Ev.exit202 ], [ %.pn175, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit198 ], [ %.pn172.pn, %_ZN2cv10AutoBufferIhLm1032EED2Ev.exit220 ], [ %i.br, %bb.m ] ; 2 uses
  %.8 = extractvalue { ptr, i32 } %.pn182.pn, 1
  %.8155 = extractvalue { ptr, i32 } %.pn182.pn, 0
  %i.kh = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN2cv9ExceptionE) #23
  %i.ki = icmp eq i32 %.8, %i.kh
  %i.kj = call ptr @__cxa_begin_catch(ptr %.8155) #23 ; 0 uses
  br i1 %i.ki, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  invoke void @__cxa_rethrow() #28
          to label %bb.cq unwind label %bb.cl

bb.bt:                                            ; preds = %bb.br
  %i.kk = invoke noundef ptr @_ZN2cv5utils7logging8internal15getGlobalLogTagEv()
          to label %bb.bv unwind label %bb.bu     ; 3 uses

bb.bu:                                            ; preds = %bb.cj, %bb.bt
  %i.kl = landingpad { ptr, i32 }
          cleanup
  br label %bb.ck

bb.bv:                                            ; preds = %bb.bt
  %.not185 = icmp eq ptr %i.kk, null              ; 2 uses
  br i1 %.not185, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.km = getelementptr inbounds nuw i8, ptr %i.kk, i64 8
  %i.kn = load i32, ptr %i.km, align 8, !tbaa !89
  %i.ko = icmp slt i32 %i.kn, 2
  br i1 %i.ko, label %bb.cj, label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %12)
          to label %bb.by unwind label %bb.cd

bb.by:                                            ; preds = %bb.bx
  %i.kp = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.kq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.kp, ptr noundef nonnull @.str.6, i64 noundef 34)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.ce ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.by
  br i1 %.not185, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.kr = load ptr, ptr %i.kk, align 8, !tbaa !90
  br label %bb.ca

bb.ca:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.bz
  %i.ks = phi ptr [ %i.kr, %bb.bz ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #23
  invoke void @_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr noundef nonnull align 8 dereferenceable(128) %12)
          to label %bb.cb unwind label %bb.cf
end_hunk_0
