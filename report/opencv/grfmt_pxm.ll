inline.NumInlined: 466
inline.NumDeleted: 254
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN2cv10PxMDecoder8readDataERNS_3MatE:bb.a
  br i1 %or.cond.i216, label %_ZN2cv10AutoBufferIhLm1032EED2Ev.exit217, label %bb.aq

bb.aq:                                            ; preds = %._crit_edge270
  call void @_ZdaPv(ptr noundef nonnull %i.fz) #24
  br label %_ZN2cv10AutoBufferIhLm1032EED2Ev.exit217

_ZN2cv10AutoBufferIhLm1032EED2Ev.exit217:         ; preds = %._crit_edge270, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br label %bb.cs

bb.ar:                                            ; preds = %bb.ap
  %i.gb = landingpad { ptr, i32 }
          catch ptr @_ZTIN2cv9ExceptionE
          catch ptr null
  br label %_ZN2cv10AutoBufferIhLm1032EED2Ev.exit220

bb.as:                                            ; preds = %.lr.ph269, %.loopexit
  %.2267 = phi ptr [ %i.e, %.lr.ph269 ], [ %i.ke, %.loopexit ] ; 8 uses
  %.0161266 = phi i32 [ 0, %.lr.ph269 ], [ %i.kc, %.loopexit ]
  %i.gc = load i8, ptr %i.fq, align 8, !tbaa !64, !range !114, !noundef !115
  %i.gd = trunc nuw i8 %i.gc to i1
  br i1 %i.gd, label %bb.ay, label %.preheader246

.preheader246:                                    ; preds = %bb.as
  br i1 %i.fr, label %.thread, label %.lr.ph253

.lr.ph253:                                        ; preds = %.preheader246, %bb.ax
  %indvars.iv299 = phi i64 [ %indvars.iv.next300, %bb.ax ], [ 0, %.preheader246 ] ; 3 uses
  %i.ge = invoke fastcc noundef i32 @_ZN2cvL10ReadNumberERNS_12RLByteStreamEi(ptr noundef nonnull align 8 dereferenceable(65) %i.ad, i32 noundef 0)
          to label %bb.at unwind label %bb.au

bb.at:                                            ; preds = %.lr.ph253
  %i.gf = load i32, ptr %i.fs, align 4, !tbaa !65
  %spec.select = call i32 @llvm.umin.i32(i32 %i.ge, i32 %i.gf) ; 2 uses
  br i1 %i.af, label %bb.av, label %bb.aw

bb.au:                                            ; preds = %.lr.ph253
  %i.gg = landingpad { ptr, i32 }
          catch ptr @_ZTIN2cv9ExceptionE
          catch ptr null
  br label %bb.bp

bb.av:                                            ; preds = %bb.at
  %i.gh = zext nneg i32 %spec.select to i64
  %i.gi = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.gh
  %i.gj = load i8, ptr %i.gi, align 1, !tbaa !80
  %i.gk = getelementptr inbounds nuw i8, ptr %i.fm, i64 %indvars.iv299
  store i8 %i.gj, ptr %i.gk, align 1, !tbaa !80
  br label %bb.ax

bb.aw:                                            ; preds = %bb.at
  %i.gl = trunc i32 %spec.select to i16
  %i.gm = getelementptr inbounds nuw [2 x i8], ptr %i.fm, i64 %indvars.iv299
  store i16 %i.gl, ptr %i.gm, align 2, !tbaa !122
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %indvars.iv.next300 = add nuw nsw i64 %indvars.iv299, 1 ; 2 uses
  %exitcond303.not = icmp eq i64 %indvars.iv.next300, %wide.trip.count302
  br i1 %exitcond303.not, label %.loopexit245, label %.lr.ph253, !llvm.loop !124

bb.ay:                                            ; preds = %bb.as
  %i.gn = invoke noundef i32 @_ZN2cv12RLByteStream8getBytesEPvi(ptr noundef nonnull align 8 dereferenceable(65) %i.ad, ptr noundef nonnull %i.fm, i32 noundef %i.v)
          to label %bb.az unwind label %bb.ba     ; 0 uses

bb.az:                                            ; preds = %bb.ay
  br i1 %brmerge356, label %.thread, label %.lr.ph255.preheader

.lr.ph255.preheader:                              ; preds = %bb.az
  br i1 %i.fx, label %.lr.ph255.epil.preheader, label %.lr.ph255

bb.ba:                                            ; preds = %bb.bo, %bb.bn, %bb.bl, %bb.bk, %bb.ay
  %i.go = landingpad { ptr, i32 }
          catch ptr @_ZTIN2cv9ExceptionE
          catch ptr null
  br label %bb.bp

.lr.ph255:                                        ; preds = %.lr.ph255.preheader, %.lr.ph255
  %indvars.iv304 = phi i64 [ %indvars.iv.next305.1, %.lr.ph255 ], [ 0, %.lr.ph255.preheader ] ; 3 uses
  %niter381 = phi i64 [ %niter381.next.1, %.lr.ph255 ], [ 0, %.lr.ph255.preheader ]
  %i.gp = shl nuw nsw i64 %indvars.iv304, 1
  %i.gq = getelementptr inbounds nuw i8, ptr %i.fm, i64 %i.gp ; 3 uses
  %i.gr = load i8, ptr %i.gq, align 1, !tbaa !80
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gq, i64 1 ; 2 uses
  %i.gt = load i8, ptr %i.gs, align 1, !tbaa !80
  store i8 %i.gt, ptr %i.gq, align 1, !tbaa !80
  store i8 %i.gr, ptr %i.gs, align 1, !tbaa !80
  %indvars.iv.next305 = shl nuw i64 %indvars.iv304, 1
  %i.gu = getelementptr inbounds nuw i8, ptr %i.fm, i64 %indvars.iv.next305 ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 2 ; 2 uses
  %i.gw = load i8, ptr %i.gv, align 1, !tbaa !80
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gu, i64 3 ; 2 uses
  %i.gy = load i8, ptr %i.gx, align 1, !tbaa !80
  store i8 %i.gy, ptr %i.gv, align 1, !tbaa !80
  store i8 %i.gw, ptr %i.gx, align 1, !tbaa !80
  %indvars.iv.next305.1 = add nuw nsw i64 %indvars.iv304, 2 ; 2 uses
  %niter381.next.1 = add i64 %niter381, 2         ; 2 uses
  %niter381.ncmp.1 = icmp eq i64 %niter381.next.1, %unroll_iter380
  br i1 %niter381.ncmp.1, label %.loopexit245.loopexit.unr-lcssa, label %.lr.ph255, !llvm.loop !125

.loopexit245.loopexit.unr-lcssa:                  ; preds = %.lr.ph255
  br i1 %lcmp.mod378.not, label %.loopexit245, label %.lr.ph255.epil.preheader

.lr.ph255.epil.preheader:                         ; preds = %.loopexit245.loopexit.unr-lcssa, %.lr.ph255.preheader
  %indvars.iv304.epil.init = phi i64 [ 0, %.lr.ph255.preheader ], [ %indvars.iv.next305.1, %.loopexit245.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod379)
  %i.gz = shl nuw nsw i64 %indvars.iv304.epil.init, 1
  %i.ha = getelementptr inbounds nuw i8, ptr %i.fm, i64 %i.gz ; 3 uses
  %i.hb = load i8, ptr %i.ha, align 1, !tbaa !80
  %i.hc = getelementptr inbounds nuw i8, ptr %i.ha, i64 1 ; 2 uses
  %i.hd = load i8, ptr %i.hc, align 1, !tbaa !80
  store i8 %i.hd, ptr %i.ha, align 1, !tbaa !80
  store i8 %i.hb, ptr %i.hc, align 1, !tbaa !80
  br label %.loopexit245

.loopexit245:                                     ; preds = %bb.ax, %.lr.ph255.epil.preheader, %.loopexit245.loopexit.unr-lcssa
  %i.he = load i32, ptr %1, align 8, !tbaa !111
  %i.hf = and i32 %i.he, 31
  %i.hg = icmp ne i32 %i.hf, 0
  %or.cond.not290 = or i1 %i.fu, %i.hg
  %brmerge = select i1 %or.cond.not290, i1 true, i1 %i.fv
  br i1 %brmerge, label %.thread, label %iter.check

iter.check:                                       ; preds = %.loopexit245
  br i1 %min.iters.check, label %.lr.ph257.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check363, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.hh = getelementptr inbounds nuw [2 x i8], ptr %i.fm, i64 %index ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 16
  %wide.load = load <8 x i16>, ptr %i.hh, align 2, !tbaa !122
  %wide.load364 = load <8 x i16>, ptr %i.hi, align 2, !tbaa !122
  %i.hj = lshr <8 x i16> %wide.load, splat (i16 8)
  %i.hk = lshr <8 x i16> %wide.load364, splat (i16 8)
  %i.hl = trunc nuw <8 x i16> %i.hj to <8 x i8>
  %i.hm = trunc nuw <8 x i16> %i.hk to <8 x i8>
  %i.hn = getelementptr inbounds nuw i8, ptr %i.fm, i64 %index ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 8
  store <8 x i8> %i.hl, ptr %i.hn, align 1, !tbaa !80
  store <8 x i8> %i.hm, ptr %i.ho, align 1, !tbaa !80
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.hp = icmp eq i64 %index.next, %n.vec
  br i1 %i.hp, label %middle.block, label %vector.body, !llvm.loop !126

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.thread, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %.lr.ph257.preheader, label %vec.epilog.ph, !prof !129

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index366 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next368, %vec.epilog.vector.body ] ; 3 uses
  %i.hq = getelementptr inbounds nuw [2 x i8], ptr %i.fm, i64 %index366
  %wide.load367 = load <4 x i16>, ptr %i.hq, align 2, !tbaa !122
  %i.hr = lshr <4 x i16> %wide.load367, splat (i16 8)
  %i.hs = trunc nuw <4 x i16> %i.hr to <4 x i8>
  %i.ht = getelementptr inbounds nuw i8, ptr %i.fm, i64 %index366
  store <4 x i8> %i.hs, ptr %i.ht, align 1, !tbaa !80
  %index.next368 = add nuw i64 %index366, 4       ; 2 uses
  %i.hu = icmp eq i64 %index.next368, %n.vec365
  br i1 %i.hu, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !130

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n369, label %.thread, label %.lr.ph257.preheader

.lr.ph257.preheader:                              ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv309.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec365, %vec.epilog.middle.block ]
  br label %.lr.ph257

.lr.ph257:                                        ; preds = %.lr.ph257.preheader, %.lr.ph257
  %indvars.iv309 = phi i64 [ %indvars.iv.next310, %.lr.ph257 ], [ %indvars.iv309.ph, %.lr.ph257.preheader ] ; 3 uses
  %i.hv = getelementptr inbounds nuw [2 x i8], ptr %i.fm, i64 %indvars.iv309
  %i.hw = load i16, ptr %i.hv, align 2, !tbaa !122
  %i.hx = lshr i16 %i.hw, 8
  %i.hy = trunc nuw i16 %i.hx to i8
  %i.hz = getelementptr inbounds nuw i8, ptr %i.fm, i64 %indvars.iv309
  store i8 %i.hy, ptr %i.hz, align 1, !tbaa !80
  %indvars.iv.next310 = add nuw nsw i64 %indvars.iv309, 1 ; 2 uses
  %exitcond313.not = icmp eq i64 %indvars.iv.next310, %wide.trip.count312
  br i1 %exitcond313.not, label %.thread, label %.lr.ph257, !llvm.loop !131

.thread:                                          ; preds = %.lr.ph257, %middle.block, %vec.epilog.middle.block, %bb.az, %.preheader246, %.loopexit245
  %i.ia = load i32, ptr %i.q, align 8, !tbaa !63
  %i.ib = icmp eq i32 %i.ia, 8
  br i1 %i.ib, label %bb.bb, label %bb.bg

bb.bb:                                            ; preds = %.thread
  %i.ic = load i32, ptr %1, align 8, !tbaa !111   ; 2 uses
  br i1 %.not241, label %bb.bf, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.id = and i32 %i.ic, 31
  %i.ie = icmp eq i32 %i.id, 0
  %i.if = load i32, ptr %i.o, align 8, !tbaa !100 ; 3 uses
  %14 = sext i32 %i.if to i64                     ; 2 uses
  br i1 %i.ie, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.ig = getelementptr inbounds i8, ptr %i.fm, i64 %14
  %i.ih = icmp sgt i32 %i.if, 0
  br i1 %i.ih, label %.lr.ph265, label %.loopexit

.lr.ph265:                                        ; preds = %bb.bd, %.lr.ph265
  %.0137263 = phi ptr [ %i.im, %.lr.ph265 ], [ %i.fm, %bb.bd ] ; 2 uses
  %.0138262 = phi ptr [ %i.il, %.lr.ph265 ], [ %.2267, %bb.bd ] ; 4 uses
  %i.ii = load i8, ptr %.0137263, align 1, !tbaa !80 ; 3 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %.0138262, i64 2
  store i8 %i.ii, ptr %i.ij, align 1, !tbaa !80
  %i.ik = getelementptr inbounds nuw i8, ptr %.0138262, i64 1
  store i8 %i.ii, ptr %i.ik, align 1, !tbaa !80
  store i8 %i.ii, ptr %.0138262, align 1, !tbaa !80
  %i.il = getelementptr inbounds nuw i8, ptr %.0138262, i64 3
  %i.im = getelementptr inbounds nuw i8, ptr %.0137263, i64 1 ; 2 uses
  %i.in = icmp ult ptr %i.im, %i.ig
  br i1 %i.in, label %.lr.ph265, label %.loopexit, !llvm.loop !132

bb.be:                                            ; preds = %bb.bc
  %.idx = shl nsw i64 %14, 1
  %i.io = getelementptr inbounds i8, ptr %i.fm, i64 %.idx
  %i.ip = icmp sgt i32 %i.if, 0
  br i1 %i.ip, label %.lr.ph261, label %.loopexit

.lr.ph261:                                        ; preds = %bb.be, %.lr.ph261
  %.0135259 = phi ptr [ %i.it, %.lr.ph261 ], [ %i.fm, %bb.be ] ; 2 uses
  %.0136258 = phi ptr [ %i.iu, %.lr.ph261 ], [ %.2267, %bb.be ] ; 4 uses
  %i.iq = load i16, ptr %.0135259, align 2, !tbaa !122 ; 3 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %.0136258, i64 4
  store i16 %i.iq, ptr %i.ir, align 2, !tbaa !122
  %i.is = getelementptr inbounds nuw i8, ptr %.0136258, i64 2
  store i16 %i.iq, ptr %i.is, align 2, !tbaa !122
  store i16 %i.iq, ptr %.0136258, align 2, !tbaa !122
  %i.it = getelementptr inbounds nuw i8, ptr %.0135259, i64 2 ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %.0136258, i64 6
  %i.iv = icmp ult ptr %i.it, %i.io
  br i1 %i.iv, label %.lr.ph261, label %.loopexit, !llvm.loop !133

bb.bf:                                            ; preds = %bb.bb
  %i.iw = shl i32 %i.ic, 2
  %i.ix = and i32 %i.iw, 124
  %i.iy = zext nneg i32 %i.ix to i64
  %i.iz = lshr i64 1275511473185297, %i.iy
  %i.ja = and i64 %i.iz, 15
  %i.jb = load i32, ptr %i.o, align 8, !tbaa !100
  %i.jc = sext i32 %i.jb to i64
  %i.jd = mul nsw i64 %i.ja, %i.jc
  br label %.loopexit.sink.split

bb.bg:                                            ; preds = %.thread
  br i1 %.not241, label %bb.bm, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.je = load i8, ptr %i.fw, align 1, !tbaa !134, !range !114, !noundef !115
  %i.jf = trunc nuw i8 %i.je to i1
  br i1 %i.jf, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.jg = load i32, ptr %i.o, align 8, !tbaa !100
  %i.jh = load i32, ptr %1, align 8, !tbaa !111
  %i.ji = and i32 %i.jh, 4095                     ; 2 uses
  %i.jj = lshr i32 %i.ji, 5
  %i.jk = add nuw nsw i32 %i.jj, 1
  %i.jl = shl nuw nsw i32 %i.ji, 2
  %i.jm = and i32 %i.jl, 124
  %i.jn = zext nneg i32 %i.jm to i64
  %i.jo = lshr i64 1275511473185297, %i.jn
  %i.jp = trunc i64 %i.jo to i32
  %i.jq = and i32 %i.jp, 15
  %i.jr = mul i32 %i.jk, %i.jg
  %i.js = mul i32 %i.jr, %i.jq
  %i.jt = sext i32 %i.js to i64
  br label %.loopexit.sink.split

bb.bj:                                            ; preds = %bb.bh
  %i.ju = load i32, ptr %1, align 8, !tbaa !111
  %i.jv = and i32 %i.ju, 31
  %i.jw = icmp eq i32 %i.jv, 0
  %i.jx = load i32, ptr %i.o, align 8, !tbaa !100
  %.sroa.0235.0.insert.ext = zext i32 %i.jx to i64
  %.sroa.0235.0.insert.insert = or disjoint i64 %.sroa.0235.0.insert.ext, 4294967296 ; 2 uses
  br i1 %i.jw, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  invoke void @_ZN2cv21icvCvt_BGR2RGB_8u_C3REPKhiPhiNS_5Size_IiEE(ptr noundef nonnull %i.fm, i32 noundef 0, ptr noundef %.2267, i32 noundef 0, i64 %.sroa.0235.0.insert.insert)
          to label %.loopexit unwind label %bb.ba

bb.bl:                                            ; preds = %bb.bj
  invoke void @_ZN2cv22icvCvt_BGR2RGB_16u_C3REPKtiPtiNS_5Size_IiEE(ptr noundef nonnull %i.fm, i32 noundef 0, ptr noundef %.2267, i32 noundef 0, i64 %.sroa.0235.0.insert.insert)
          to label %.loopexit unwind label %bb.ba

bb.bm:                                            ; preds = %bb.bg
  %i.jy = load i32, ptr %1, align 8, !tbaa !111
  %i.jz = and i32 %i.jy, 31
  %i.ka = icmp eq i32 %i.jz, 0
  %i.kb = load i32, ptr %i.o, align 8, !tbaa !100
  %.sroa.0231.0.insert.ext = zext i32 %i.kb to i64
  %.sroa.0231.0.insert.insert = or disjoint i64 %.sroa.0231.0.insert.ext, 4294967296 ; 2 uses
  br i1 %i.ka, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  invoke void @_ZN2cv24icvCvt_BGR2Gray_8u_C3C1REPKhiPhiNS_5Size_IiEEi(ptr noundef nonnull %i.fm, i32 noundef 0, ptr noundef %.2267, i32 noundef 0, i64 %.sroa.0231.0.insert.insert, i32 noundef 2)
          to label %.loopexit unwind label %bb.ba

bb.bo:                                            ; preds = %bb.bm
  invoke void @_ZN2cv26icvCvt_BGRA2Gray_16u_CnC1REPKtiPtiNS_5Size_IiEEii(ptr noundef nonnull %i.fm, i32 noundef 0, ptr noundef %.2267, i32 noundef 0, i64 %.sroa.0231.0.insert.insert, i32 noundef 3, i32 noundef 2)
          to label %.loopexit unwind label %bb.ba

.loopexit.sink.split:                             ; preds = %bb.bi, %bb.bf
  %.sink = phi i64 [ %i.jd, %bb.bf ], [ %i.jt, %bb.bi ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.2267, ptr nonnull align 1 %i.fm, i64 %.sink, i1 false)
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph261, %.lr.ph265, %.loopexit.sink.split, %bb.be, %bb.bd, %bb.bn, %bb.bo, %bb.bl, %bb.bk
  %i.kc = add nuw nsw i32 %.0161266, 1            ; 2 uses
  %i.kd = load i64, ptr %i.f, align 8, !tbaa !107
  %i.ke = getelementptr inbounds nuw i8, ptr %.2267, i64 %i.kd
  %i.kf = load i32, ptr %i.fn, align 4, !tbaa !101
  %i.kg = icmp slt i32 %i.kc, %i.kf
  br i1 %i.kg, label %bb.as, label %._crit_edge270.loopexit, !llvm.loop !135

bb.bp:                                            ; preds = %bb.ba, %bb.au
  %.pn172 = phi { ptr, i32 } [ %i.go, %bb.ba ], [ %i.gg, %bb.au ] ; 2 uses
  %i.kh = load ptr, ptr %9, align 8, !tbaa !116   ; 3 uses
  %.not.i.i218 = icmp eq ptr %i.kh, %i.fj
  %i.ki = icmp eq ptr %i.kh, null
  %or.cond.i219 = or i1 %.not.i.i218, %i.ki
  br i1 %or.cond.i219, label %_ZN2cv10AutoBufferIhLm1032EED2Ev.exit220, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  call void @_ZdaPv(ptr noundef nonnull %i.kh) #24
  br label %_ZN2cv10AutoBufferIhLm1032EED2Ev.exit220

_ZN2cv10AutoBufferIhLm1032EED2Ev.exit220:         ; preds = %bb.bq, %bb.bp, %bb.ar
  %.pn172.pn = phi { ptr, i32 } [ %i.gb, %bb.ar ], [ %.pn172, %bb.bp ], [ %.pn172, %bb.bq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br label %bb.bw

bb.br:                                            ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @.str.5, ptr noundef nonnull align 1 dereferenceable(1) %11)
          to label %bb.bs unwind label %bb.bu

bb.bs:                                            ; preds = %bb.br
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -2, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @__func__._ZN2cv10PxMDecoder8readDataERNS_3MatE, ptr noundef nonnull @.str.1, i32 noundef 360) #28
          to label %bb.bt unwind label %bb.bv

bb.bt:                                            ; preds = %bb.bs
  unreachable

bb.bu:                                            ; preds = %bb.br
  %i.kj = landingpad { ptr, i32 }
          catch ptr @_ZTIN2cv9ExceptionE
          catch ptr null
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit223

bb.bv:                                            ; preds = %bb.bs
  %i.kk = landingpad { ptr, i32 }
          catch ptr @_ZTIN2cv9ExceptionE
          catch ptr null                          ; 2 uses
  %i.kl = load ptr, ptr %10, align 8, !tbaa !79   ; 2 uses
  %i.km = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.kn = icmp eq ptr %i.kl, %i.km
  br i1 %i.kn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit223, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i221

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i221: ; preds = %bb.bv
  %i.ko = load i64, ptr %i.km, align 8, !tbaa !80
  %i.kp = add i64 %i.ko, 1
  call void @_ZdlPvm(ptr noundef %i.kl, i64 noundef %i.kp) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit223

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit223: ; preds = %bb.bv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i221, %bb.bu
  %.pn182 = phi { ptr, i32 } [ %i.kj, %bb.bu ], [ %i.kk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i221 ], [ %i.kk, %bb.bv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %bb.bw

bb.bw:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit223, %_ZN2cv10AutoBufferIhLm1032EED2Ev.exit220, %_ZN2cv10AutoBufferIhLm1032EED2Ev.exit211, %_ZN2cv10AutoBufferIhLm1032EED2Ev.exit202, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit198, %bb.m
  %.pn182.pn = phi { ptr, i32 } [ %.pn182, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit223 ], [ %.pn180, %_ZN2cv10AutoBufferIhLm1032EED2Ev.exit211 ], [ %.pn177.pn, %_ZN2cv10AutoBufferIhLm1032EED2Ev.exit202 ], [ %.pn175, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit198 ], [ %.pn172.pn, %_ZN2cv10AutoBufferIhLm1032EED2Ev.exit220 ], [ %i.br, %bb.m ] ; 2 uses
  %.8 = extractvalue { ptr, i32 } %.pn182.pn, 0
  %.8151 = extractvalue { ptr, i32 } %.pn182.pn, 1
  %i.kq = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN2cv9ExceptionE) #23
  %i.kr = icmp eq i32 %.8151, %i.kq
  %i.ks = call ptr @__cxa_begin_catch(ptr %.8) #23 ; 0 uses
  br i1 %i.kr, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  invoke void @__cxa_rethrow() #28
          to label %bb.cw unwind label %bb.cr

bb.by:                                            ; preds = %bb.bw
  %i.kt = invoke noundef ptr @_ZN2cv5utils7logging8internal15getGlobalLogTagEv()
          to label %bb.ca unwind label %bb.bz     ; 3 uses

bb.bz:                                            ; preds = %bb.by
  %i.ku = landingpad { ptr, i32 }
          cleanup
  br label %bb.cq

bb.ca:                                            ; preds = %bb.by
  %.not185 = icmp eq ptr %i.kt, null              ; 2 uses
  br i1 %.not185, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kt, i64 8
  %i.kw = load i32, ptr %i.kv, align 8, !tbaa !102
  %i.kx = icmp slt i32 %i.kw, 2
  br i1 %i.kx, label %bb.co, label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.ca
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %12)
          to label %bb.cd unwind label %bb.ci

bb.cd:                                            ; preds = %bb.cc
  %i.ky = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.kz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ky, ptr noundef nonnull @.str.6, i64 noundef 34)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.cj ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.cd
end_hunk_0
begin_hunk_1_@_ZN2cv10PxMEncoder5writeERKNS_3MatERKSt6vectorIiSaIiEE:bb.a
          cleanup
  br label %bb.da

bb.au:                                            ; preds = %.thread389
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.fw = invoke noundef zeroext i1 @_ZN2cv11WBaseStream4openERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(64) %12, ptr noundef nonnull align 8 dereferenceable(32) %i.fv)
          to label %bb.av unwind label %bb.al

bb.av:                                            ; preds = %bb.au
  br i1 %i.fw, label %_ZNSt6vectorIhSaIhEE7reserveEm.exit, label %bb.cz

_ZNSt6vectorIhSaIhEE7reserveEm.exit:              ; preds = %bb.av, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i, %bb.aq
  br i1 %.0248.lcssa, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %_ZNSt6vectorIhSaIhEE7reserveEm.exit
  %i.fx = load i32, ptr %1, align 8, !tbaa !111   ; 2 uses
  %i.fy = lshr i32 %i.fx, 5
  %i.fz = and i32 %i.fy, 127
  %i.ga = add nuw nsw i32 %i.fz, 1
  %i.gb = shl i32 %i.fx, 2
  %i.gc = and i32 %i.gb, 124
  %i.gd = zext nneg i32 %i.gc to i64
  %i.ge = lshr i64 1275511473185297, %i.gd
  %i.gf = trunc i64 %i.ge to i32
  %i.gg = and i32 %i.gf, 15
  %i.gh = mul i32 %i.ga, %i.b
  %i.gi = mul i32 %i.gh, %i.gg
  br label %bb.ay

bb.ax:                                            ; preds = %_ZNSt6vectorIhSaIhEE7reserveEm.exit
  %i.gj = mul nuw nsw i32 %i.q, 6
  %i.gk = select i1 %i.p, i32 2, i32 0
  %i.gl = add nuw nsw i32 %i.gj, %i.gk
  %i.gm = mul nsw i32 %i.gl, %i.b
  %i.gn = add nsw i32 %i.gm, 32
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %.0261 = phi i32 [ %i.gi, %bb.aw ], [ %i.gn, %bb.ax ] ; 2 uses
  %spec.select = call i32 @llvm.smax.i32(i32 %.0261, i32 128) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #23
  %i.go = zext nneg i32 %spec.select to i64       ; 4 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 4 uses
  store ptr %i.gp, ptr %13, align 8, !tbaa !171
  %i.gq = getelementptr inbounds nuw i8, ptr %13, i64 8
  %.not.i.i358 = icmp sgt i32 %.0261, 1032
  store i64 %i.go, ptr %i.gq, align 8, !tbaa !173
  br i1 %.not.i.i358, label %bb.az, label %_ZN2cv10AutoBufferIcLm1032EEC2Em.exit

bb.az:                                            ; preds = %bb.ay
  %i.gr = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.go) #27
          to label %.noexc359 unwind label %bb.ba ; 2 uses

.noexc359:                                        ; preds = %bb.az
  store ptr %i.gr, ptr %13, align 8, !tbaa !171
  br label %_ZN2cv10AutoBufferIcLm1032EEC2Em.exit

_ZN2cv10AutoBufferIcLm1032EEC2Em.exit:            ; preds = %.noexc359, %bb.ay
  %i.gs = phi ptr [ %i.gr, %.noexc359 ], [ %i.gp, %bb.ay ] ; 28 uses
  %i.gt = select i1 %i.eh, i32 1, i32 %i.ei
  %i.gu = select i1 %.0248.lcssa, i32 3, i32 0
  %i.gv = add nuw nsw i32 %i.gt, %i.gu
  %i.gw = or disjoint i32 %i.gv, 48
  %i.gx = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.gs, i64 noundef %i.go, ptr noundef nonnull @.str.16, i32 noundef %i.gw, i32 noundef %i.b, i32 noundef %i.d) #23 ; 5 uses
  %i.gy = icmp sgt i32 %i.gx, 0
  br i1 %i.gy, label %bb.bg, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.gz = landingpad { ptr, i32 }
          cleanup
  br label %_ZN2cv10AutoBufferIcLm1032EED2Ev.exit375

bb.bb:                                            ; preds = %_ZN2cv10AutoBufferIcLm1032EEC2Em.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull @.str.17, ptr noundef nonnull align 1 dereferenceable(1) %15)
          to label %bb.bc unwind label %bb.be

bb.bc:                                            ; preds = %bb.bb
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull @__func__._ZN2cv10PxMEncoder5writeERKNS_3MatERKSt6vectorIiSaIiEE, ptr noundef nonnull @.str.1, i32 noundef 481) #28
          to label %bb.bd unwind label %bb.bf

bb.bd:                                            ; preds = %bb.bc
  unreachable

bb.be:                                            ; preds = %bb.bb
  %i.ha = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit362

bb.bf:                                            ; preds = %bb.bc
  %i.hb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hc = load ptr, ptr %14, align 8, !tbaa !79   ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.he = icmp eq ptr %i.hc, %i.hd
  br i1 %i.he, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit362, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i360

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i360: ; preds = %bb.bf
  %i.hf = load i64, ptr %i.hd, align 8, !tbaa !80
  %i.hg = add i64 %i.hf, 1
  call void @_ZdlPvm(ptr noundef %i.hc, i64 noundef %i.hg) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit362

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit362: ; preds = %bb.bf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i360, %bb.be
  %.pn299 = phi { ptr, i32 } [ %i.ha, %bb.be ], [ %i.hb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i360 ], [ %i.hb, %bb.bf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  br label %bb.cx

bb.bg:                                            ; preds = %_ZN2cv10AutoBufferIcLm1032EEC2Em.exit
  br i1 %i.eh, label %bb.bo, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.hh = zext nneg i32 %i.gx to i64
  %i.hi = getelementptr inbounds nuw i8, ptr %i.gs, i64 %i.hh
  %i.hj = sub nsw i32 %spec.select, %i.gx
  %i.hk = sext i32 %i.hj to i64
  %notmask = shl nsw i32 -1, %i.o
  %i.hl = xor i32 %notmask, -1
  %i.hm = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.hi, i64 noundef %i.hk, ptr noundef nonnull @.str.18, i32 noundef %i.hl) #23 ; 2 uses
  %i.hn = icmp sgt i32 %i.hm, 0
  br i1 %i.hn, label %bb.bn, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull @.str.19, ptr noundef nonnull align 1 dereferenceable(1) %17)
          to label %bb.bj unwind label %bb.bl

bb.bj:                                            ; preds = %bb.bi
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull @__func__._ZN2cv10PxMEncoder5writeERKNS_3MatERKSt6vectorIiSaIiEE, ptr noundef nonnull @.str.1, i32 noundef 485) #28
          to label %bb.bk unwind label %bb.bm

bb.bk:                                            ; preds = %bb.bj
  unreachable

bb.bl:                                            ; preds = %bb.bi
  %i.ho = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit365

bb.bm:                                            ; preds = %bb.bj
  %i.hp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hq = load ptr, ptr %16, align 8, !tbaa !79   ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.hs = icmp eq ptr %i.hq, %i.hr
  br i1 %i.hs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit365, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i363

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i363: ; preds = %bb.bm
  %i.ht = load i64, ptr %i.hr, align 8, !tbaa !80
  %i.hu = add i64 %i.ht, 1
  call void @_ZdlPvm(ptr noundef %i.hq, i64 noundef %i.hu) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit365

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit365: ; preds = %bb.bm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i363, %bb.bl
  %.pn302 = phi { ptr, i32 } [ %i.ho, %bb.bl ], [ %i.hp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i363 ], [ %i.hp, %bb.bm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  br label %bb.cx

bb.bn:                                            ; preds = %bb.bh
  %i.hv = add nuw nsw i32 %i.hm, %i.gx
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bg
  %.0257 = phi i32 [ %i.hv, %bb.bn ], [ %i.gx, %bb.bg ]
  %i.hw = invoke noundef zeroext i1 @_ZN2cv12WLByteStream8putBytesEPKvi(ptr noundef nonnull align 8 dereferenceable(64) %12, ptr noundef nonnull %i.gs, i32 noundef %.0257)
          to label %bb.bp unwind label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  br i1 %i.hw, label %.preheader416, label %.thread396

.preheader416:                                    ; preds = %bb.bp
  %i.hx = icmp sgt i32 %i.d, 0
  br i1 %i.hx, label %.lr.ph461, label %._crit_edge462

.lr.ph461:                                        ; preds = %.preheader416
  %factor.op.mul = shl nuw nsw i32 %i.q, 1
  %i.hy = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.hz = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.ia = icmp eq i32 %i.n, 1                     ; 4 uses
  %i.ib = icmp sgt i32 %i.b, 0                    ; 4 uses
  %i.ic = ptrtoint ptr %i.gs to i64               ; 4 uses
  %.neg = add i64 %i.ic, %i.go                    ; 8 uses
  %i.id = mul nsw i32 %i.q, %i.b                  ; 3 uses
  %i.ie = icmp sgt i32 %i.id, 0                   ; 2 uses
  %i.if = icmp eq i32 %i.h, 3
  %i.ig = icmp eq i32 %i.n, 2
  %i.ih = icmp eq i32 %i.g, 0
  %i.ii = sext i32 %i.s to i64
  %.sroa.0.0.insert.ext = zext i32 %i.b to i64    ; 19 uses
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.0.0.insert.ext, 4294967296 ; 2 uses
  %i.ij = icmp ne i32 %i.n, 2
  %.reass = mul i32 %factor.op.mul, %i.b          ; 2 uses
  %i.ik = icmp slt i32 %.reass, 1                 ; 2 uses
  %i.il = icmp samesign ugt i32 %i.n, 1
  %or.cond3 = or i1 %i.p, %i.il
  %i.im = zext nneg i32 %i.q to i64               ; 2 uses
  %22 = sext i32 %.reass to i64
  %wide.trip.count501 = zext nneg i32 %i.d to i64
  %brmerge = select i1 %i.ij, i1 true, i1 %i.ik
  %min.iters.check = icmp ult i32 %i.b, 8
  %min.iters.check594 = icmp ult i32 %i.b, 32
  %i.in = and i64 %.sroa.0.0.insert.ext, 24
  %n.vec = and i64 %.sroa.0.0.insert.ext, 2147483616 ; 5 uses
  %i.io = getelementptr i8, ptr %i.gs, i64 %n.vec ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %.sroa.0.0.insert.ext
  %min.epilog.iters.check = icmp eq i64 %i.in, 0
  %n.vec596 = and i64 %.sroa.0.0.insert.ext, 2147483640 ; 4 uses
  %i.ip = getelementptr i8, ptr %i.gs, i64 %n.vec596 ; 2 uses
  %cmp.n601 = icmp eq i64 %n.vec596, %.sroa.0.0.insert.ext
  %xtraiter = and i64 %.sroa.0.0.insert.ext, 3    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %bb.br

bb.bq:                                            ; preds = %._crit_edge462, %bb.bo
  %i.iq = landingpad { ptr, i32 }
          cleanup
  br label %bb.cx

bb.br:                                            ; preds = %.lr.ph461, %select.unfold394
  %indvars.iv498 = phi i64 [ 0, %.lr.ph461 ], [ %indvars.iv.next499, %select.unfold394 ] ; 2 uses
  %i.ir = load ptr, ptr %i.hy, align 8, !tbaa !112 ; 2 uses
  %i.is = ptrtoaddr ptr %i.ir to i64
  %i.it = load i64, ptr %i.hz, align 8, !tbaa !107
  %i.iu = mul i64 %i.it, %indvars.iv498           ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %i.ir, i64 %i.iu ; 23 uses
  br i1 %.0248.lcssa, label %bb.bs, label %bb.ce

bb.bs:                                            ; preds = %bb.br
  br i1 %i.eh, label %.preheader, label %bb.bw

.preheader:                                       ; preds = %bb.bs
  br i1 %i.ib, label %.lr.ph455.outer, label %._crit_edge456.thread

.lr.ph455.outer:                                  ; preds = %.preheader, %.thread555
  %indvars.iv494.ph = phi i64 [ %indvars.iv.next495559, %.thread555 ], [ 0, %.preheader ] ; 9 uses
  %.0245452.ph = phi ptr [ %i.kd, %.thread555 ], [ %i.gs, %.preheader ] ; 4 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 %indvars.iv494.ph
  %i.ix = load i8, ptr %i.iw, align 1, !tbaa !80
  %i.iy = icmp eq i8 %i.ix, 0
  %i.iz = select i1 %i.iy, i8 -128, i8 0          ; 2 uses
  %indvars.iv.next495 = add nuw nsw i64 %indvars.iv494.ph, 1 ; 2 uses
  %exitcond497.not = icmp eq i64 %indvars.iv.next495, %.sroa.0.0.insert.ext
  br i1 %exitcond497.not, label %._crit_edge456, label %.lr.ph455.1

bb.bt:                                            ; preds = %.thread391, %bb.bz, %bb.by
  %i.ja = landingpad { ptr, i32 }
          cleanup
  br label %bb.cx

.lr.ph455.1:                                      ; preds = %.lr.ph455.outer
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iv, i64 %indvars.iv.next495
  %i.jc = load i8, ptr %i.jb, align 1, !tbaa !80
  %i.jd = icmp eq i8 %i.jc, 0
  %i.je = select i1 %i.jd, i8 64, i8 0
  %.2241.1 = or disjoint i8 %i.je, %i.iz          ; 2 uses
  %indvars.iv.next495.1 = add nuw nsw i64 %indvars.iv494.ph, 2 ; 2 uses
  %exitcond497.not.1 = icmp eq i64 %indvars.iv.next495.1, %.sroa.0.0.insert.ext
  br i1 %exitcond497.not.1, label %._crit_edge456, label %.lr.ph455.2

.lr.ph455.2:                                      ; preds = %.lr.ph455.1
  %i.jf = getelementptr inbounds nuw i8, ptr %i.iv, i64 %indvars.iv.next495.1
  %i.jg = load i8, ptr %i.jf, align 1, !tbaa !80
  %i.jh = icmp eq i8 %i.jg, 0
  %i.ji = select i1 %i.jh, i8 32, i8 0
  %.2241.2 = or disjoint i8 %i.ji, %.2241.1       ; 2 uses
  %indvars.iv.next495.2 = add nuw nsw i64 %indvars.iv494.ph, 3 ; 2 uses
  %exitcond497.not.2 = icmp eq i64 %indvars.iv.next495.2, %.sroa.0.0.insert.ext
  br i1 %exitcond497.not.2, label %._crit_edge456, label %.lr.ph455.3

.lr.ph455.3:                                      ; preds = %.lr.ph455.2
  %i.jj = getelementptr inbounds nuw i8, ptr %i.iv, i64 %indvars.iv.next495.2
  %i.jk = load i8, ptr %i.jj, align 1, !tbaa !80
  %i.jl = icmp eq i8 %i.jk, 0
  %i.jm = select i1 %i.jl, i8 16, i8 0
  %.2241.3 = or disjoint i8 %i.jm, %.2241.2       ; 2 uses
  %indvars.iv.next495.3 = add nuw nsw i64 %indvars.iv494.ph, 4 ; 2 uses
  %exitcond497.not.3 = icmp eq i64 %indvars.iv.next495.3, %.sroa.0.0.insert.ext
  br i1 %exitcond497.not.3, label %._crit_edge456, label %.lr.ph455.4

.lr.ph455.4:                                      ; preds = %.lr.ph455.3
  %i.jn = getelementptr inbounds nuw i8, ptr %i.iv, i64 %indvars.iv.next495.3
  %i.jo = load i8, ptr %i.jn, align 1, !tbaa !80
  %i.jp = icmp eq i8 %i.jo, 0
  %i.jq = select i1 %i.jp, i8 8, i8 0
  %.2241.4 = or disjoint i8 %i.jq, %.2241.3       ; 2 uses
  %indvars.iv.next495.4 = add nuw nsw i64 %indvars.iv494.ph, 5 ; 2 uses
  %exitcond497.not.4 = icmp eq i64 %indvars.iv.next495.4, %.sroa.0.0.insert.ext
  br i1 %exitcond497.not.4, label %._crit_edge456, label %.lr.ph455.5

.lr.ph455.5:                                      ; preds = %.lr.ph455.4
  %i.jr = getelementptr inbounds nuw i8, ptr %i.iv, i64 %indvars.iv.next495.4
  %i.js = load i8, ptr %i.jr, align 1, !tbaa !80
  %i.jt = icmp eq i8 %i.js, 0
  %i.ju = select i1 %i.jt, i8 4, i8 0
  %.2241.5 = or disjoint i8 %i.ju, %.2241.4       ; 2 uses
  %indvars.iv.next495.5 = add nuw nsw i64 %indvars.iv494.ph, 6 ; 2 uses
  %exitcond497.not.5 = icmp eq i64 %indvars.iv.next495.5, %.sroa.0.0.insert.ext
  br i1 %exitcond497.not.5, label %._crit_edge456, label %.lr.ph455.6

.lr.ph455.6:                                      ; preds = %.lr.ph455.5
  %i.jv = getelementptr inbounds nuw i8, ptr %i.iv, i64 %indvars.iv.next495.5
  %i.jw = load i8, ptr %i.jv, align 1, !tbaa !80
  %i.jx = icmp eq i8 %i.jw, 0
  %i.jy = select i1 %i.jx, i8 2, i8 0
  %.2241.6 = or i8 %i.jy, %.2241.5                ; 2 uses
  %indvars.iv.next495.6 = or disjoint i64 %indvars.iv494.ph, 7 ; 2 uses
  %exitcond497.not.6 = icmp eq i64 %indvars.iv.next495.6, %.sroa.0.0.insert.ext
  br i1 %exitcond497.not.6, label %._crit_edge456, label %.thread555

.thread555:                                       ; preds = %.lr.ph455.6
  %i.jz = getelementptr inbounds nuw i8, ptr %i.iv, i64 %indvars.iv.next495.6
  %i.ka = load i8, ptr %i.jz, align 1, !tbaa !80
  %i.kb = icmp eq i8 %i.ka, 0
  %i.kc = zext i1 %i.kb to i8
  %spec.select338 = or i8 %.2241.6, %i.kc
  %i.kd = getelementptr inbounds nuw i8, ptr %.0245452.ph, i64 1 ; 2 uses
  store i8 %spec.select338, ptr %.0245452.ph, align 1, !tbaa !80
  %indvars.iv.next495559 = add nuw nsw i64 %indvars.iv494.ph, 8 ; 2 uses
  %exitcond497.not560 = icmp eq i64 %indvars.iv.next495559, %.sroa.0.0.insert.ext
  br i1 %exitcond497.not560, label %._crit_edge456.thread, label %.lr.ph455.outer, !llvm.loop !174

._crit_edge456:                                   ; preds = %.lr.ph455.outer, %.lr.ph455.1, %.lr.ph455.2, %.lr.ph455.3, %.lr.ph455.4, %.lr.ph455.5, %.lr.ph455.6
  %.2241.lcssa.ph = phi i8 [ %.2241.6, %.lr.ph455.6 ], [ %.2241.5, %.lr.ph455.5 ], [ %.2241.4, %.lr.ph455.4 ], [ %.2241.3, %.lr.ph455.3 ], [ %.2241.2, %.lr.ph455.2 ], [ %.2241.1, %.lr.ph455.1 ], [ %i.iz, %.lr.ph455.outer ]
  %i.ke = getelementptr inbounds nuw i8, ptr %.0245452.ph, i64 1
  store i8 %.2241.lcssa.ph, ptr %.0245452.ph, align 1, !tbaa !80
  br label %._crit_edge456.thread

._crit_edge456.thread:                            ; preds = %.thread555, %.preheader, %._crit_edge456
  %.2247 = phi ptr [ %i.ke, %._crit_edge456 ], [ %i.gs, %.preheader ], [ %i.kd, %.thread555 ]
  %i.kf = ptrtoint ptr %.2247 to i64
  %i.kg = sub i64 %i.kf, %i.ic
  %i.kh = trunc i64 %i.kg to i32
  %i.ki = invoke noundef zeroext i1 @_ZN2cv12WLByteStream8putBytesEPKvi(ptr noundef nonnull align 8 dereferenceable(64) %12, ptr noundef nonnull %i.gs, i32 noundef %i.kh)
          to label %bb.bu unwind label %bb.bv

bb.bu:                                            ; preds = %._crit_edge456.thread
  br i1 %i.ki, label %select.unfold394, label %.thread396

bb.bv:                                            ; preds = %._crit_edge456.thread
  %i.kj = landingpad { ptr, i32 }
          cleanup
  br label %bb.cx

bb.bw:                                            ; preds = %bb.bs
  br i1 %i.if, label %bb.bx, label %bb.ca

bb.bx:                                            ; preds = %bb.bw
  br i1 %i.ia, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  invoke void @_ZN2cv21icvCvt_BGR2RGB_8u_C3REPKhiPhiNS_5Size_IiEE(ptr noundef %i.iv, i32 noundef 0, ptr noundef nonnull %i.gs, i32 noundef 0, i64 %.sroa.0.0.insert.insert)
          to label %.thread391 unwind label %bb.bt

bb.bz:                                            ; preds = %bb.bx
  invoke void @_ZN2cv22icvCvt_BGR2RGB_16u_C3REPKtiPtiNS_5Size_IiEE(ptr noundef %i.iv, i32 noundef 0, ptr noundef nonnull %i.gs, i32 noundef 0, i64 %.sroa.0.0.insert.insert)
          to label %.thread392 unwind label %bb.bt

bb.ca:                                            ; preds = %bb.bw
  br i1 %i.ig, label %bb.cb, label %.thread391

.thread392:                                       ; preds = %bb.bz
  br i1 %brmerge, label %.thread391, label %.lr.ph450.preheader

bb.cb:                                            ; preds = %bb.ca
  br i1 %i.ih, label %bb.cc, label %.thread393

bb.cc:                                            ; preds = %bb.cb
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.gs, ptr align 1 %i.iv, i64 %i.ii, i1 false)
  br label %.thread393

.thread393:                                       ; preds = %bb.cc, %bb.cb
  br i1 %i.ik, label %.thread391, label %.lr.ph450.preheader

.lr.ph450.preheader:                              ; preds = %.thread393, %.thread392
  br label %.lr.ph450

.lr.ph450:                                        ; preds = %.lr.ph450.preheader, %.lr.ph450
  %indvars.iv491 = phi i64 [ %indvars.iv.next492, %.lr.ph450 ], [ 0, %.lr.ph450.preheader ] ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %i.gs, i64 %indvars.iv491 ; 3 uses
  %i.kl = load i8, ptr %i.kk, align 1, !tbaa !80
  %i.km = getelementptr inbounds nuw i8, ptr %i.kk, i64 1 ; 2 uses
  %i.kn = load i8, ptr %i.km, align 1, !tbaa !80
  store i8 %i.kn, ptr %i.kk, align 1, !tbaa !80
  store i8 %i.kl, ptr %i.km, align 1, !tbaa !80
  %indvars.iv.next492 = add nuw nsw i64 %indvars.iv491, 2 ; 2 uses
  %23 = icmp slt i64 %indvars.iv.next492, %22
  br i1 %23, label %.lr.ph450, label %.thread391, !llvm.loop !175

.thread391:                                       ; preds = %.lr.ph450, %.thread392, %.thread393, %bb.by, %bb.ca
  %i.ko = select i1 %or.cond3, ptr %i.gs, ptr %i.iv
  %i.kp = invoke noundef zeroext i1 @_ZN2cv12WLByteStream8putBytesEPKvi(ptr noundef nonnull align 8 dereferenceable(64) %12, ptr noundef %i.ko, i32 noundef %i.s)
          to label %bb.cd unwind label %bb.bt

bb.cd:                                            ; preds = %.thread391
  br i1 %i.kp, label %select.unfold394, label %.thread396

bb.ce:                                            ; preds = %bb.br
  br i1 %i.eh, label %bb.cf, label %bb.cr

bb.cf:                                            ; preds = %bb.ce
  br i1 %i.p, label %bb.cg, label %bb.cl

bb.cg:                                            ; preds = %bb.cf
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull @.str.20, ptr noundef nonnull align 1 dereferenceable(1) %19)
          to label %bb.ch unwind label %bb.cj

bb.ch:                                            ; preds = %bb.cg
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull @__func__._ZN2cv10PxMEncoder5writeERKNS_3MatERKSt6vectorIiSaIiEE, ptr noundef nonnull @.str.1, i32 noundef 556) #28
          to label %bb.ci unwind label %bb.ck

bb.ci:                                            ; preds = %bb.ch
  unreachable

bb.cj:                                            ; preds = %bb.cg
  %i.kq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit368

bb.ck:                                            ; preds = %bb.ch
  %i.kr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ks = load ptr, ptr %18, align 8, !tbaa !79   ; 2 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.ku = icmp eq ptr %i.ks, %i.kt
  br i1 %i.ku, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit368, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i366

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i366: ; preds = %bb.ck
  %i.kv = load i64, ptr %i.kt, align 8, !tbaa !80
  %i.kw = add i64 %i.kv, 1
  call void @_ZdlPvm(ptr noundef %i.ks, i64 noundef %i.kw) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit368

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit368: ; preds = %bb.ck, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i366, %bb.cj
  %.pn311 = phi { ptr, i32 } [ %i.kq, %bb.cj ], [ %i.kr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i366 ], [ %i.kr, %bb.ck ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #23
  br label %bb.cx

bb.cl:                                            ; preds = %bb.cf
  br i1 %i.ia, label %.preheader407, label %bb.cm

.preheader407:                                    ; preds = %bb.cl
  br i1 %i.ib, label %iter.check, label %.loopexit

iter.check:                                       ; preds = %.preheader407
  br i1 %min.iters.check, label %.lr.ph447.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.kx = add i64 %i.iu, %i.is
  %i.ky = sub i64 %i.kx, %i.ic
  %diff.check = icmp ugt i64 %i.ky, -32
  br i1 %diff.check, label %.lr.ph447.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  br i1 %min.iters.check594, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.gs, i64 %index ; 2 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %i.iv, i64 %index ; 2 uses
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 16
  %wide.load = load <16 x i8>, ptr %i.kz, align 1, !tbaa !80
  %wide.load595 = load <16 x i8>, ptr %i.la, align 1, !tbaa !80
  %i.lb = icmp eq <16 x i8> %wide.load, zeroinitializer
  %i.lc = icmp eq <16 x i8> %wide.load595, zeroinitializer
  %i.ld = select <16 x i1> %i.lb, <16 x i8> splat (i8 49), <16 x i8> splat (i8 48)
  %i.le = select <16 x i1> %i.lc, <16 x i8> splat (i8 49), <16 x i8> splat (i8 48)
  %i.lf = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %i.ld, ptr %next.gep, align 1, !tbaa !80
  store <16 x i8> %i.le, ptr %i.lf, align 1, !tbaa !80
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.lg = icmp eq i64 %index.next, %n.vec
  br i1 %i.lg, label %middle.block, label %vector.body, !llvm.loop !176

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %.lr.ph447.preheader, label %vec.epilog.ph, !prof !177

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index597 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next600, %vec.epilog.vector.body ] ; 3 uses
  %next.gep598 = getelementptr i8, ptr %i.gs, i64 %index597
  %i.lh = getelementptr inbounds nuw i8, ptr %i.iv, i64 %index597
  %wide.load599 = load <8 x i8>, ptr %i.lh, align 1, !tbaa !80
  %i.li = icmp eq <8 x i8> %wide.load599, zeroinitializer
  %i.lj = select <8 x i1> %i.li, <8 x i8> splat (i8 49), <8 x i8> splat (i8 48)
  store <8 x i8> %i.lj, ptr %next.gep598, align 1, !tbaa !80
  %index.next600 = add nuw i64 %index597, 8       ; 2 uses
  %i.lk = icmp eq i64 %index.next600, %n.vec596
  br i1 %i.lk, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !178

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n601, label %.loopexit, label %.lr.ph447.preheader

.lr.ph447.preheader:                              ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv486.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec596, %vec.epilog.middle.block ] ; 3 uses
  %.0446.ph = phi ptr [ %i.gs, %iter.check ], [ %i.gs, %vector.memcheck ], [ %i.io, %vec.epilog.iter.check ], [ %i.ip, %vec.epilog.middle.block ] ; 2 uses
  br i1 %lcmp.mod.not, label %.lr.ph447.prol.loopexit, label %.lr.ph447.prol

.lr.ph447.prol:                                   ; preds = %.lr.ph447.preheader, %.lr.ph447.prol
  %indvars.iv486.prol = phi i64 [ %indvars.iv.next487.prol, %.lr.ph447.prol ], [ %indvars.iv486.ph, %.lr.ph447.preheader ] ; 2 uses
  %.0446.prol = phi ptr [ %i.lo, %.lr.ph447.prol ], [ %.0446.ph, %.lr.ph447.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph447.prol ], [ 0, %.lr.ph447.preheader ]
  %i.ll = getelementptr inbounds nuw i8, ptr %i.iv, i64 %indvars.iv486.prol
  %i.lm = load i8, ptr %i.ll, align 1, !tbaa !80
  %.not317.prol = icmp eq i8 %i.lm, 0
  %i.ln = select i1 %.not317.prol, i8 49, i8 48
  store i8 %i.ln, ptr %.0446.prol, align 1, !tbaa !80
  %i.lo = getelementptr inbounds nuw i8, ptr %.0446.prol, i64 1 ; 3 uses
  %indvars.iv.next487.prol = add nuw nsw i64 %indvars.iv486.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph447.prol.loopexit, label %.lr.ph447.prol, !llvm.loop !179

.lr.ph447.prol.loopexit:                          ; preds = %.lr.ph447.prol, %.lr.ph447.preheader
  %.lcssa613.unr = phi ptr [ poison, %.lr.ph447.preheader ], [ %i.lo, %.lr.ph447.prol ]
  %indvars.iv486.unr = phi i64 [ %indvars.iv486.ph, %.lr.ph447.preheader ], [ %indvars.iv.next487.prol, %.lr.ph447.prol ]
  %.0446.unr = phi ptr [ %.0446.ph, %.lr.ph447.preheader ], [ %i.lo, %.lr.ph447.prol ]
  %i.lp = sub nsw i64 %indvars.iv486.ph, %.sroa.0.0.insert.ext
  %i.lq = icmp ugt i64 %i.lp, -4
  br i1 %i.lq, label %.loopexit, label %.lr.ph447

bb.cm:                                            ; preds = %bb.cl
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull @.str.21, ptr noundef nonnull align 1 dereferenceable(1) %21)
          to label %bb.cn unwind label %bb.cp

bb.cn:                                            ; preds = %bb.cm
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull @__func__._ZN2cv10PxMEncoder5writeERKNS_3MatERKSt6vectorIiSaIiEE, ptr noundef nonnull @.str.1, i32 noundef 557) #28
          to label %bb.co unwind label %bb.cq

bb.co:                                            ; preds = %bb.cn
  unreachable

bb.cp:                                            ; preds = %bb.cm
  %i.lr = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit371

bb.cq:                                            ; preds = %bb.cn
  %i.ls = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.lt = load ptr, ptr %20, align 8, !tbaa !79   ; 2 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  %i.lv = icmp eq ptr %i.lt, %i.lu
  br i1 %i.lv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit371, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i369

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i369: ; preds = %bb.cq
  %i.lw = load i64, ptr %i.lu, align 8, !tbaa !80
  %i.lx = add i64 %i.lw, 1
  call void @_ZdlPvm(ptr noundef %i.lt, i64 noundef %i.lx) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit371

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit371: ; preds = %bb.cq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i369, %bb.cp
  %.pn313 = phi { ptr, i32 } [ %i.lr, %bb.cp ], [ %i.ls, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i369 ], [ %i.ls, %bb.cq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #23
  br label %bb.cx

.lr.ph447:                                        ; preds = %.lr.ph447.prol.loopexit, %.lr.ph447
  %indvars.iv486 = phi i64 [ %indvars.iv.next487.3, %.lr.ph447 ], [ %indvars.iv486.unr, %.lr.ph447.prol.loopexit ] ; 5 uses
  %.0446 = phi ptr [ %i.mq, %.lr.ph447 ], [ %.0446.unr, %.lr.ph447.prol.loopexit ] ; 5 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %i.iv, i64 %indvars.iv486
  %i.lz = load i8, ptr %i.ly, align 1, !tbaa !80
  %.not317 = icmp eq i8 %i.lz, 0
  %i.ma = select i1 %.not317, i8 49, i8 48
  store i8 %i.ma, ptr %.0446, align 1, !tbaa !80
  %i.mb = getelementptr inbounds nuw i8, ptr %.0446, i64 1
  %i.mc = getelementptr inbounds nuw i8, ptr %i.iv, i64 %indvars.iv486
  %i.md = getelementptr inbounds nuw i8, ptr %i.mc, i64 1
  %i.me = load i8, ptr %i.md, align 1, !tbaa !80
  %.not317.1 = icmp eq i8 %i.me, 0
  %i.mf = select i1 %.not317.1, i8 49, i8 48
  store i8 %i.mf, ptr %i.mb, align 1, !tbaa !80
  %i.mg = getelementptr inbounds nuw i8, ptr %.0446, i64 2
  %i.mh = getelementptr inbounds nuw i8, ptr %i.iv, i64 %indvars.iv486
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mh, i64 2
  %i.mj = load i8, ptr %i.mi, align 1, !tbaa !80
end_hunk_1
