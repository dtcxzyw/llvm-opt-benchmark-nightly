inline.NumInlined: 6418
inline.NumDeleted: 2089
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_ZNK8facebook5velox9functions12_GLOBAL__N_114IsNullFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_:bb.a
  %min.iters.check266 = icmp ult i64 %i.hf, 192
  br i1 %min.iters.check266, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check267

vector.main.loop.iter.check267:                   ; preds = %iter.check283
  %min.iters.check268 = icmp ult i64 %i.hf, 960
  br i1 %min.iters.check268, label %vec.epilog.ph287, label %vector.ph269

vector.ph269:                                     ; preds = %vector.main.loop.iter.check267
  %n.mod.vf270 = and i64 %i.hh, 12
  %n.vec271 = and i64 %i.hh, 576460752303423472   ; 4 uses
  %i.hi = shl i64 %n.vec271, 6                    ; 2 uses
  %i.hj = or disjoint i64 %i.hi, 64
  br label %vector.body272

vector.body272:                                   ; preds = %vector.body272, %vector.ph269
  %index273 = phi i64 [ 0, %vector.ph269 ], [ %index.next278, %vector.body272 ] ; 2 uses
  %i.hk = shl i64 %index273, 3
  %i.hl = and i64 %i.hk, 2305843009213693824
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hb, i64 %i.hl ; 5 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 32 ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hm, i64 64 ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hm, i64 96 ; 2 uses
  %wide.load274 = load <4 x i64>, ptr %i.hm, align 8, !tbaa !143
  %wide.load275 = load <4 x i64>, ptr %i.hn, align 8, !tbaa !143
  %wide.load276 = load <4 x i64>, ptr %i.ho, align 8, !tbaa !143
  %wide.load277 = load <4 x i64>, ptr %i.hp, align 8, !tbaa !143
  %i.hq = xor <4 x i64> %wide.load274, splat (i64 -1)
  %i.hr = xor <4 x i64> %wide.load275, splat (i64 -1)
  %i.hs = xor <4 x i64> %wide.load276, splat (i64 -1)
  %i.ht = xor <4 x i64> %wide.load277, splat (i64 -1)
  store <4 x i64> %i.hq, ptr %i.hm, align 8, !tbaa !143
  store <4 x i64> %i.hr, ptr %i.hn, align 8, !tbaa !143
  store <4 x i64> %i.hs, ptr %i.ho, align 8, !tbaa !143
  store <4 x i64> %i.ht, ptr %i.hp, align 8, !tbaa !143
  %index.next278 = add nuw i64 %index273, 16      ; 2 uses
  %i.hu = icmp eq i64 %index.next278, %n.vec271
  br i1 %i.hu, label %middle.block279, label %vector.body272, !llvm.loop !256

middle.block279:                                  ; preds = %vector.body272
  %cmp.n280 = icmp eq i64 %i.hh, %n.vec271
  br i1 %cmp.n280, label %.preheader26.loopexit.i, label %vec.epilog.iter.check285

vec.epilog.iter.check285:                         ; preds = %middle.block279
  %min.epilog.iters.check286 = icmp eq i64 %n.mod.vf270, 0
  br i1 %min.epilog.iters.check286, label %.lr.ph.i.preheader, label %vec.epilog.ph287, !prof !259

vec.epilog.ph287:                                 ; preds = %vector.main.loop.iter.check267, %vec.epilog.iter.check285
  %vec.epilog.resume.val281 = phi i64 [ %n.vec271, %vec.epilog.iter.check285 ], [ 0, %vector.main.loop.iter.check267 ]
  %n.vec289 = and i64 %i.hh, 576460752303423484   ; 3 uses
  %i.hv = shl i64 %n.vec289, 6                    ; 2 uses
  %i.hw = or disjoint i64 %i.hv, 64
  br label %vec.epilog.vector.body290

vec.epilog.vector.body290:                        ; preds = %vec.epilog.vector.body290, %vec.epilog.ph287
  %index291 = phi i64 [ %vec.epilog.resume.val281, %vec.epilog.ph287 ], [ %index.next293, %vec.epilog.vector.body290 ] ; 2 uses
  %i.hx = shl i64 %index291, 3
  %i.hy = and i64 %i.hx, 2305843009213693920
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hb, i64 %i.hy ; 2 uses
  %wide.load292 = load <4 x i64>, ptr %i.hz, align 8, !tbaa !143
  %i.ia = xor <4 x i64> %wide.load292, splat (i64 -1)
  store <4 x i64> %i.ia, ptr %i.hz, align 8, !tbaa !143
  %index.next293 = add nuw i64 %index291, 4       ; 2 uses
  %i.ib = icmp eq i64 %index.next293, %n.vec289
  br i1 %i.ib, label %vec.epilog.middle.block294, label %vec.epilog.vector.body290, !llvm.loop !260

vec.epilog.middle.block294:                       ; preds = %vec.epilog.vector.body290
  %cmp.n295 = icmp eq i64 %i.hh, %n.vec289
  br i1 %cmp.n295, label %.preheader26.loopexit.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check283, %vec.epilog.iter.check285, %vec.epilog.middle.block294
  %indvars.iv36.i.ph = phi i64 [ 0, %iter.check283 ], [ %i.hi, %vec.epilog.iter.check285 ], [ %i.hv, %vec.epilog.middle.block294 ]
  %indvars.iv.i.ph = phi i64 [ 64, %iter.check283 ], [ %i.hj, %vec.epilog.iter.check285 ], [ %i.hw, %vec.epilog.middle.block294 ]
  br label %.lr.ph.i

.preheader26.loopexit.i:                          ; preds = %.lr.ph.i, %vec.epilog.middle.block294, %middle.block279
  %i.ic = and i32 %i.hc, 2147483584
  br label %.preheader26.i

.preheader26.i:                                   ; preds = %.preheader26.loopexit.i, %bb.by
  %.0.lcssa.i = phi i32 [ 0, %bb.by ], [ %i.ic, %.preheader26.loopexit.i ] ; 3 uses
  %i.id = or disjoint i32 %.0.lcssa.i, 8
  %.not2429.i = icmp sgt i32 %i.id, %i.hc
  br i1 %.not2429.i, label %.preheader.i, label %iter.check317

iter.check317:                                    ; preds = %.preheader26.i
  %i.ie = zext nneg i32 %.0.lcssa.i to i64        ; 8 uses
  %i.if = or disjoint i64 %i.ie, 8                ; 3 uses
  %i.ig = zext nneg i32 %i.hc to i64              ; 2 uses
  %i.ih = or disjoint i64 %i.ie, 16
  %i.ii = add nuw nsw i64 %i.ig, 1
  %umax298 = call i64 @llvm.umax.i64(i64 %i.ih, i64 %i.ii)
  %i.ij = add nsw i64 %umax298, -9
  %i.ik = sub nsw i64 %i.ij, %i.ie                ; 3 uses
  %i.il = lshr i64 %i.ik, 3
  %i.im = add nuw nsw i64 %i.il, 1                ; 5 uses
  %min.iters.check299 = icmp ult i64 %i.ik, 120
  br i1 %min.iters.check299, label %.lr.ph31.i.preheader, label %vector.main.loop.iter.check300

vector.main.loop.iter.check300:                   ; preds = %iter.check317
  %min.iters.check301 = icmp ult i64 %i.ik, 1016
  br i1 %min.iters.check301, label %vec.epilog.ph321, label %vector.ph302

vector.ph302:                                     ; preds = %vector.main.loop.iter.check300
  %n.mod.vf303 = and i64 %i.im, 112
  %n.vec304 = and i64 %i.im, 4611686018427387776  ; 4 uses
  %i.in = shl i64 %n.vec304, 3                    ; 2 uses
  %i.io = add i64 %i.in, %i.ie
  %i.ip = add i64 %i.if, %i.in                    ; 2 uses
  %i.iq = lshr exact i64 %i.ie, 3
  br label %vector.body305

vector.body305:                                   ; preds = %vector.body305, %vector.ph302
  %index306 = phi i64 [ 0, %vector.ph302 ], [ %index.next311, %vector.body305 ] ; 2 uses
  %i.ir = add i64 %i.iq, %index306
  %i.is = and i64 %i.ir, 2305843009213693944
  %i.it = getelementptr inbounds nuw i8, ptr %i.hb, i64 %i.is ; 5 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 32 ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %i.it, i64 64 ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.it, i64 96 ; 2 uses
  %wide.load307 = load <32 x i8>, ptr %i.it, align 1, !tbaa !30
  %wide.load308 = load <32 x i8>, ptr %i.iu, align 1, !tbaa !30
  %wide.load309 = load <32 x i8>, ptr %i.iv, align 1, !tbaa !30
  %wide.load310 = load <32 x i8>, ptr %i.iw, align 1, !tbaa !30
  %i.ix = xor <32 x i8> %wide.load307, splat (i8 -1)
  %i.iy = xor <32 x i8> %wide.load308, splat (i8 -1)
  %i.iz = xor <32 x i8> %wide.load309, splat (i8 -1)
  %i.ja = xor <32 x i8> %wide.load310, splat (i8 -1)
  store <32 x i8> %i.ix, ptr %i.it, align 1, !tbaa !30
  store <32 x i8> %i.iy, ptr %i.iu, align 1, !tbaa !30
  store <32 x i8> %i.iz, ptr %i.iv, align 1, !tbaa !30
  store <32 x i8> %i.ja, ptr %i.iw, align 1, !tbaa !30
  %index.next311 = add nuw i64 %index306, 128     ; 2 uses
  %i.jb = icmp eq i64 %index.next311, %n.vec304
  br i1 %i.jb, label %middle.block312, label %vector.body305, !llvm.loop !261

middle.block312:                                  ; preds = %vector.body305
  %ind.escape313 = add nsw i64 %i.ip, -8
  %cmp.n314 = icmp eq i64 %i.im, %n.vec304
  br i1 %cmp.n314, label %.preheader.i.loopexit, label %vec.epilog.iter.check319

vec.epilog.iter.check319:                         ; preds = %middle.block312
  %min.epilog.iters.check320 = icmp eq i64 %n.mod.vf303, 0
  br i1 %min.epilog.iters.check320, label %.lr.ph31.i.preheader, label %vec.epilog.ph321, !prof !262

vec.epilog.ph321:                                 ; preds = %vector.main.loop.iter.check300, %vec.epilog.iter.check319
  %vec.epilog.resume.val315 = phi i64 [ %n.vec304, %vec.epilog.iter.check319 ], [ 0, %vector.main.loop.iter.check300 ]
  %n.vec323 = and i64 %i.im, 4611686018427387888  ; 3 uses
  %i.jc = shl i64 %n.vec323, 3                    ; 2 uses
  %i.jd = add i64 %i.jc, %i.ie
  %i.je = add i64 %i.if, %i.jc                    ; 2 uses
  %i.jf = lshr exact i64 %i.ie, 3
  br label %vec.epilog.vector.body324

vec.epilog.vector.body324:                        ; preds = %vec.epilog.vector.body324, %vec.epilog.ph321
  %index325 = phi i64 [ %vec.epilog.resume.val315, %vec.epilog.ph321 ], [ %index.next327, %vec.epilog.vector.body324 ] ; 2 uses
  %i.jg = add i64 %i.jf, %index325
  %i.jh = and i64 %i.jg, 2305843009213693944
  %i.ji = getelementptr inbounds nuw i8, ptr %i.hb, i64 %i.jh ; 2 uses
  %wide.load326 = load <16 x i8>, ptr %i.ji, align 1, !tbaa !30
  %i.jj = xor <16 x i8> %wide.load326, splat (i8 -1)
  store <16 x i8> %i.jj, ptr %i.ji, align 1, !tbaa !30
  %index.next327 = add nuw i64 %index325, 16      ; 2 uses
  %i.jk = icmp eq i64 %index.next327, %n.vec323
  br i1 %i.jk, label %vec.epilog.middle.block328, label %vec.epilog.vector.body324, !llvm.loop !263

vec.epilog.middle.block328:                       ; preds = %vec.epilog.vector.body324
  %ind.escape329 = add nsw i64 %i.je, -8
  %cmp.n330 = icmp eq i64 %i.im, %n.vec323
  br i1 %cmp.n330, label %.preheader.i.loopexit, label %.lr.ph31.i.preheader

.lr.ph31.i.preheader:                             ; preds = %iter.check317, %vec.epilog.iter.check319, %vec.epilog.middle.block328
  %indvars.iv181.ph = phi i64 [ %i.ie, %iter.check317 ], [ %i.io, %vec.epilog.iter.check319 ], [ %i.jd, %vec.epilog.middle.block328 ]
  %indvars.iv179.ph = phi i64 [ %i.if, %iter.check317 ], [ %i.ip, %vec.epilog.iter.check319 ], [ %i.je, %vec.epilog.middle.block328 ]
  br label %.lr.ph31.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv36.i = phi i64 [ %indvars.iv.next37.i, %.lr.ph.i ], [ %indvars.iv36.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ]
  %i.jl = lshr exact i64 %indvars.iv36.i, 3
  %i.jm = getelementptr inbounds nuw i8, ptr %i.hb, i64 %i.jl ; 2 uses
  %i.jn = load i64, ptr %i.jm, align 8, !tbaa !143
  %i.jo = xor i64 %i.jn, -1
  store i64 %i.jo, ptr %i.jm, align 8, !tbaa !143
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 64 ; 2 uses
  %.not.i95 = icmp samesign ugt i64 %indvars.iv.next.i, %i.hd
  %indvars.iv.next37.i = add nuw nsw i64 %indvars.iv36.i, 64
  br i1 %.not.i95, label %.preheader26.loopexit.i, label %.lr.ph.i, !llvm.loop !264

.preheader.i.loopexit:                            ; preds = %.lr.ph31.i, %vec.epilog.middle.block328, %middle.block312
  %indvars.iv179.lcssa = phi i64 [ %ind.escape329, %vec.epilog.middle.block328 ], [ %ind.escape313, %middle.block312 ], [ %indvars.iv179, %.lr.ph31.i ]
  %i.jp = trunc nuw nsw i64 %indvars.iv179.lcssa to i32
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.loopexit, %.preheader26.i
  %.1.lcssa.i = phi i32 [ %.0.lcssa.i, %.preheader26.i ], [ %i.jp, %.preheader.i.loopexit ] ; 2 uses
  %i.jq = icmp slt i32 %.1.lcssa.i, %i.hc
  br i1 %i.jq, label %.lr.ph34.preheader.i, label %_ZN8facebook5velox4bits6negateEPmi.exit

.lr.ph34.preheader.i:                             ; preds = %.preheader.i
  %i.jr = zext nneg i32 %.1.lcssa.i to i64
  %wide.trip.count186 = zext nneg i32 %i.hc to i64
  br label %.lr.ph34.i

.lr.ph31.i:                                       ; preds = %.lr.ph31.i.preheader, %.lr.ph31.i
  %indvars.iv181 = phi i64 [ %indvars.iv.next182, %.lr.ph31.i ], [ %indvars.iv181.ph, %.lr.ph31.i.preheader ] ; 2 uses
  %indvars.iv179 = phi i64 [ %indvars.iv.next180, %.lr.ph31.i ], [ %indvars.iv179.ph, %.lr.ph31.i.preheader ] ; 2 uses
  %i.js = lshr exact i64 %indvars.iv181, 3
  %i.jt = getelementptr inbounds nuw i8, ptr %i.hb, i64 %i.js ; 2 uses
  %i.ju = load i8, ptr %i.jt, align 1, !tbaa !30
  %i.jv = xor i8 %i.ju, -1
  store i8 %i.jv, ptr %i.jt, align 1, !tbaa !30
  %indvars.iv.next180 = add nuw nsw i64 %indvars.iv179, 8 ; 2 uses
  %.not24.i = icmp samesign ugt i64 %indvars.iv.next180, %i.ig
  %indvars.iv.next182 = add nuw nsw i64 %indvars.iv181, 8
  br i1 %.not24.i, label %.preheader.i.loopexit, label %.lr.ph31.i, !llvm.loop !265

.lr.ph34.i:                                       ; preds = %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i, %.lr.ph34.preheader.i
  %indvars.iv41.i = phi i64 [ %i.jr, %.lr.ph34.preheader.i ], [ %indvars.iv.next42.i, %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i ] ; 6 uses
  %i.jw = lshr i64 %indvars.iv41.i, 6
  %i.jx = getelementptr inbounds nuw [8 x i8], ptr %i.hb, i64 %i.jw
  %i.jy = load i64, ptr %i.jx, align 8, !tbaa !143
  %i.jz = and i64 %indvars.iv41.i, 63
  %i.ka = shl nuw i64 1, %i.jz
  %i.kb = and i64 %i.ka, %i.jy
  %.not25.i = icmp eq i64 %i.kb, 0
  %i.kc = lshr i64 %indvars.iv41.i, 3
  %i.kd = getelementptr inbounds nuw i8, ptr %i.hb, i64 %i.kc ; 2 uses
  %i.ke = load i8, ptr %i.kd, align 1, !tbaa !30  ; 2 uses
  br i1 %.not25.i, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %.lr.ph34.i
  %i.kf = trunc i64 %indvars.iv41.i to i8
  %i.kg = and i8 %i.kf, 7
  %i.kh = shl nuw i8 1, %i.kg
  %i.ki = or i8 %i.kh, %i.ke
  br label %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i

bb.ca:                                            ; preds = %.lr.ph34.i
  %i.kj = and i64 %indvars.iv41.i, 7
  %i.kk = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.kj
  %i.kl = load i8, ptr %i.kk, align 1, !tbaa !30
  %i.km = and i8 %i.kl, %i.ke
  br label %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i

_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i:  ; preds = %bb.ca, %bb.bz
  %.sink.i.i = phi i8 [ %i.km, %bb.ca ], [ %i.ki, %bb.bz ]
  store i8 %.sink.i.i, ptr %i.kd, align 1, !tbaa !30
  %indvars.iv.next42.i = add nuw nsw i64 %indvars.iv41.i, 1 ; 2 uses
  %exitcond187.not = icmp eq i64 %indvars.iv.next42.i, %wide.trip.count186
  br i1 %exitcond187.not, label %_ZN8facebook5velox4bits6negateEPmi.exit, label %.lr.ph34.i, !llvm.loop !266

bb.cb:                                            ; preds = %.invoke
  %i.kn = landingpad { ptr, i32 }
          cleanup
  br label %bb.ee

bb.cc:                                            ; preds = %bb.br
  %i.ko = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #31
  br label %bb.ee

bb.cd:                                            ; preds = %bb.bq
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #31
  invoke void @_ZN8facebook5velox4exec11DecodedArgsC2ERKNS0_17SelectivityVectorERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaIS9_EERNS1_7EvalCtxE(ptr noundef nonnull align 8 dereferenceable(24) %22, ptr noundef nonnull align 8 dereferenceable(38) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(104) %4)
          to label %bb.ce unwind label %bb.cq

bb.ce:                                            ; preds = %bb.cd
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #31
  %i.kp = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.kq = load i32, ptr %i.kp, align 8, !tbaa !229
  %i.kr = sext i32 %i.kq to i64
  %i.ks = load ptr, ptr %i.a, align 8, !tbaa !194
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31, !noalias !267
  %i.kt = getelementptr inbounds nuw i8, ptr %6, i64 1
  store i8 0, ptr %i.kt, align 1, !tbaa !245, !noalias !267
  %i.ku = add nsw i64 %i.kr, 7
  %i.kv = lshr i64 %i.ku, 3
  invoke void @_ZN8facebook5velox13AlignedBuffer8allocateIcEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_Eb(ptr dead_on_unwind nonnull writable sret(%"class.boost::intrusive_ptr") align 8 %23, i64 noundef %i.kv, ptr noundef %i.ks, ptr noundef nonnull align 1 dereferenceable(2) %6, i1 noundef zeroext false)
          to label %bb.cf unwind label %bb.cr

bb.cf:                                            ; preds = %bb.ce
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31, !noalias !267
  %i.kw = load ptr, ptr %23, align 8, !tbaa !241
  store ptr null, ptr %23, align 8, !tbaa !241
  %i.kx = load ptr, ptr %20, align 8, !tbaa !241  ; 7 uses
  store ptr %i.kw, ptr %20, align 8, !tbaa !241
  %.not.i.i99 = icmp eq ptr %i.kx, null
  br i1 %.not.i.i99, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit110, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 40
  %i.kz = atomicrmw sub ptr %i.ky, i32 1 acq_rel, align 4
  %i.la = icmp eq i32 %i.kz, 1
  br i1 %i.la, label %.sink.split.i.i.i100, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEOS4_.exit104

.sink.split.i.i.i100:                             ; preds = %bb.cg
  %i.lb = load ptr, ptr %i.kx, align 8, !tbaa !45
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 64
  %i.ld = load ptr, ptr %i.lc, align 8
  invoke void %i.ld(ptr noundef nonnull align 8 dereferenceable(64) %i.kx)
          to label %.noexc.i.i101 unwind label %bb.ch, !inline_history !247

.noexc.i.i101:                                    ; preds = %.sink.split.i.i.i100
  %i.le = getelementptr inbounds nuw i8, ptr %i.kx, i64 8
  %i.lf = load ptr, ptr %i.le, align 8, !tbaa !248
  %.not.i.i.i102 = icmp eq ptr %i.lf, null
  %i.lg = load ptr, ptr %i.kx, align 8, !tbaa !45
  %..i.i.i103 = select i1 %.not.i.i.i102, i64 8, i64 48
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 %..i.i.i103
  %i.li = load ptr, ptr %i.lh, align 8
  invoke void %i.li(ptr noundef nonnull align 8 dereferenceable(64) %i.kx)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEOS4_.exit104 unwind label %bb.ch, !inline_history !247

bb.ch:                                            ; preds = %.noexc.i.i101, %.sink.split.i.i.i100
  %i.lj = landingpad { ptr, i32 }
          catch ptr null
  %i.lk = extractvalue { ptr, i32 } %i.lj, 0
  call void @__clang_call_terminate(ptr %i.lk) #34
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEOS4_.exit104: ; preds = %bb.cg, %.noexc.i.i101
  %.pr170 = load ptr, ptr %23, align 8, !tbaa !241 ; 7 uses
  %.not.i105 = icmp eq ptr %.pr170, null
  br i1 %.not.i105, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit110, label %bb.ci

bb.ci:                                            ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEOS4_.exit104
  %i.ll = getelementptr inbounds nuw i8, ptr %.pr170, i64 40
  %i.lm = atomicrmw sub ptr %i.ll, i32 1 acq_rel, align 4
  %i.ln = icmp eq i32 %i.lm, 1
  br i1 %i.ln, label %.sink.split.i.i106, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit110

.sink.split.i.i106:                               ; preds = %bb.ci
  %i.lo = load ptr, ptr %.pr170, align 8, !tbaa !45
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 64
  %i.lq = load ptr, ptr %i.lp, align 8
  invoke void %i.lq(ptr noundef nonnull align 8 dereferenceable(64) %.pr170)
          to label %.noexc.i107 unwind label %bb.cj, !inline_history !247

.noexc.i107:                                      ; preds = %.sink.split.i.i106
  %i.lr = getelementptr inbounds nuw i8, ptr %.pr170, i64 8
  %i.ls = load ptr, ptr %i.lr, align 8, !tbaa !248
  %.not.i.i108 = icmp eq ptr %i.ls, null
  %i.lt = load ptr, ptr %.pr170, align 8, !tbaa !45
  %..i.i109 = select i1 %.not.i.i108, i64 8, i64 48
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 %..i.i109
  %i.lv = load ptr, ptr %i.lu, align 8
  invoke void %i.lv(ptr noundef nonnull align 8 dereferenceable(64) %.pr170)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit110 unwind label %bb.cj, !inline_history !247

bb.cj:                                            ; preds = %.noexc.i107, %.sink.split.i.i106
  %i.lw = landingpad { ptr, i32 }
          catch ptr null
  %i.lx = extractvalue { ptr, i32 } %i.lw, 0
  call void @__clang_call_terminate(ptr %i.lx) #34
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit110: ; preds = %bb.cf, %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEOS4_.exit104, %bb.ci, %.noexc.i107
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #31
  %i.ly = load ptr, ptr %20, align 8, !tbaa !241  ; 2 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 44
  %i.ma = load i8, ptr %i.lz, align 4, !tbaa !253
  %i.mb = and i8 %i.ma, 2
  %.not.i111 = icmp eq i8 %i.mb, 0
  br i1 %.not.i111, label %bb.ck, label %.invoke216, !prof !76

bb.ck:                                            ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit110
  %i.mc = getelementptr inbounds nuw i8, ptr %i.ly, i64 16
  %i.md = load ptr, ptr %i.mc, align 8, !tbaa !254
  %i.me = load ptr, ptr %22, align 8, !tbaa !270
  %i.mf = invoke noundef ptr @_ZN8facebook5velox4exec18LocalDecodedVector3getEv(ptr noundef nonnull align 8 dereferenceable(16) %i.me)
          to label %_ZNK8facebook5velox4exec11DecodedArgs2atEi.exit unwind label %bb.cs

_ZNK8facebook5velox4exec11DecodedArgs2atEi.exit:  ; preds = %bb.ck
  %i.mg = invoke noundef ptr @_ZN8facebook5velox13DecodedVector5nullsEPKNS0_17SelectivityVectorE(ptr noundef nonnull align 8 dereferenceable(120) %i.mf, ptr noundef nonnull %1)
          to label %bb.cl unwind label %bb.cs

bb.cl:                                            ; preds = %_ZNK8facebook5velox4exec11DecodedArgs2atEi.exit
  %i.mh = load i32, ptr %i.kp, align 8, !tbaa !229
  %i.mi = sext i32 %i.mh to i64
  %i.mj = add nsw i64 %i.mi, 7
  %i.mk = lshr i64 %i.mj, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.md, ptr align 8 %i.mg, i64 %i.mk, i1 false)
  %i.ml = load ptr, ptr %20, align 8, !tbaa !241  ; 2 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ml, i64 44
  %i.mn = load i8, ptr %i.mm, align 4, !tbaa !253
  %i.mo = and i8 %i.mn, 2
  %.not.i115 = icmp eq i8 %i.mo, 0
  br i1 %.not.i115, label %bb.cm, label %.invoke216, !prof !76

.invoke216:                                       ; preds = %bb.cl, %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit110
  %i.mp = phi ptr [ @_ZZNK8facebook5velox6Buffer9asMutableIlEEPT_vE18veloxCheckFailArgs, %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit110 ], [ @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs, %bb.cl ]
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) %i.mp) #35
          to label %.cont217 unwind label %bb.cs

.cont217:                                         ; preds = %.invoke216
  unreachable

bb.cm:                                            ; preds = %bb.cl
  %i.mq = getelementptr inbounds nuw i8, ptr %i.ml, i64 16
  %i.mr = load ptr, ptr %i.mq, align 8, !tbaa !254 ; 8 uses
end_hunk_0
begin_hunk_1_@_ZNK8facebook5velox9functions12_GLOBAL__N_114IsNullFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_:bb.a
  %min.iters.check = icmp ult i64 %i.mv, 192
  br i1 %min.iters.check, label %.lr.ph.i120.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check218 = icmp ult i64 %i.mv, 960
  br i1 %min.iters.check218, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.mx, 12
  %n.vec = and i64 %i.mx, 576460752303423472      ; 4 uses
  %i.my = shl i64 %n.vec, 6                       ; 2 uses
  %i.mz = or disjoint i64 %i.my, 64
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.na = shl i64 %index, 3
  %i.nb = and i64 %i.na, 2305843009213693824
  %i.nc = getelementptr inbounds nuw i8, ptr %i.mr, i64 %i.nb ; 5 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nc, i64 32 ; 2 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nc, i64 64 ; 2 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %i.nc, i64 96 ; 2 uses
  %wide.load = load <4 x i64>, ptr %i.nc, align 8, !tbaa !143
  %wide.load219 = load <4 x i64>, ptr %i.nd, align 8, !tbaa !143
  %wide.load220 = load <4 x i64>, ptr %i.ne, align 8, !tbaa !143
  %wide.load221 = load <4 x i64>, ptr %i.nf, align 8, !tbaa !143
  %i.ng = xor <4 x i64> %wide.load, splat (i64 -1)
  %i.nh = xor <4 x i64> %wide.load219, splat (i64 -1)
  %i.ni = xor <4 x i64> %wide.load220, splat (i64 -1)
  %i.nj = xor <4 x i64> %wide.load221, splat (i64 -1)
  store <4 x i64> %i.ng, ptr %i.nc, align 8, !tbaa !143
  store <4 x i64> %i.nh, ptr %i.nd, align 8, !tbaa !143
  store <4 x i64> %i.ni, ptr %i.ne, align 8, !tbaa !143
  store <4 x i64> %i.nj, ptr %i.nf, align 8, !tbaa !143
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.nk = icmp eq i64 %index.next, %n.vec
  br i1 %i.nk, label %middle.block, label %vector.body, !llvm.loop !273

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.mx, %n.vec
  br i1 %cmp.n, label %.preheader26.loopexit.i126, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i120.preheader, label %vec.epilog.ph, !prof !259

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec224 = and i64 %i.mx, 576460752303423484   ; 3 uses
  %i.nl = shl i64 %n.vec224, 6                    ; 2 uses
  %i.nm = or disjoint i64 %i.nl, 64
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index225 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next227, %vec.epilog.vector.body ] ; 2 uses
  %i.nn = shl i64 %index225, 3
  %i.no = and i64 %i.nn, 2305843009213693920
  %i.np = getelementptr inbounds nuw i8, ptr %i.mr, i64 %i.no ; 2 uses
  %wide.load226 = load <4 x i64>, ptr %i.np, align 8, !tbaa !143
  %i.nq = xor <4 x i64> %wide.load226, splat (i64 -1)
  store <4 x i64> %i.nq, ptr %i.np, align 8, !tbaa !143
  %index.next227 = add nuw i64 %index225, 4       ; 2 uses
  %i.nr = icmp eq i64 %index.next227, %n.vec224
  br i1 %i.nr, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !274

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n228 = icmp eq i64 %i.mx, %n.vec224
  br i1 %cmp.n228, label %.preheader26.loopexit.i126, label %.lr.ph.i120.preheader

.lr.ph.i120.preheader:                            ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv36.i121.ph = phi i64 [ 0, %iter.check ], [ %i.my, %vec.epilog.iter.check ], [ %i.nl, %vec.epilog.middle.block ]
  %indvars.iv.i122.ph = phi i64 [ 64, %iter.check ], [ %i.mz, %vec.epilog.iter.check ], [ %i.nm, %vec.epilog.middle.block ]
  br label %.lr.ph.i120

.preheader26.loopexit.i126:                       ; preds = %.lr.ph.i120, %vec.epilog.middle.block, %middle.block
  %i.ns = and i32 %i.ms, 2147483584
  br label %.preheader26.i127

.preheader26.i127:                                ; preds = %.preheader26.loopexit.i126, %bb.cm
  %.0.lcssa.i128 = phi i32 [ 0, %bb.cm ], [ %i.ns, %.preheader26.loopexit.i126 ] ; 3 uses
  %i.nt = or disjoint i32 %.0.lcssa.i128, 8
  %.not2429.i129 = icmp sgt i32 %i.nt, %i.ms
  br i1 %.not2429.i129, label %.preheader.i133, label %iter.check249

iter.check249:                                    ; preds = %.preheader26.i127
  %i.nu = zext nneg i32 %.0.lcssa.i128 to i64     ; 8 uses
  %i.nv = or disjoint i64 %i.nu, 8                ; 3 uses
  %i.nw = zext nneg i32 %i.ms to i64              ; 2 uses
  %i.nx = or disjoint i64 %i.nu, 16
  %i.ny = add nuw nsw i64 %i.nw, 1
  %umax231 = call i64 @llvm.umax.i64(i64 %i.nx, i64 %i.ny)
  %i.nz = add nsw i64 %umax231, -9
  %i.oa = sub nsw i64 %i.nz, %i.nu                ; 3 uses
  %i.ob = lshr i64 %i.oa, 3
  %i.oc = add nuw nsw i64 %i.ob, 1                ; 5 uses
  %min.iters.check232 = icmp ult i64 %i.oa, 120
  br i1 %min.iters.check232, label %.lr.ph31.i130.preheader, label %vector.main.loop.iter.check233

vector.main.loop.iter.check233:                   ; preds = %iter.check249
  %min.iters.check234 = icmp ult i64 %i.oa, 1016
  br i1 %min.iters.check234, label %vec.epilog.ph253, label %vector.ph235

vector.ph235:                                     ; preds = %vector.main.loop.iter.check233
  %n.mod.vf236 = and i64 %i.oc, 112
  %n.vec237 = and i64 %i.oc, 4611686018427387776  ; 4 uses
  %i.od = shl i64 %n.vec237, 3                    ; 2 uses
  %i.oe = add i64 %i.od, %i.nu
  %i.of = add i64 %i.nv, %i.od                    ; 2 uses
  %i.og = lshr exact i64 %i.nu, 3
  br label %vector.body238

vector.body238:                                   ; preds = %vector.body238, %vector.ph235
  %index239 = phi i64 [ 0, %vector.ph235 ], [ %index.next244, %vector.body238 ] ; 2 uses
  %i.oh = add i64 %i.og, %index239
  %i.oi = and i64 %i.oh, 2305843009213693944
  %i.oj = getelementptr inbounds nuw i8, ptr %i.mr, i64 %i.oi ; 5 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oj, i64 32 ; 2 uses
  %i.ol = getelementptr inbounds nuw i8, ptr %i.oj, i64 64 ; 2 uses
  %i.om = getelementptr inbounds nuw i8, ptr %i.oj, i64 96 ; 2 uses
  %wide.load240 = load <32 x i8>, ptr %i.oj, align 1, !tbaa !30
  %wide.load241 = load <32 x i8>, ptr %i.ok, align 1, !tbaa !30
  %wide.load242 = load <32 x i8>, ptr %i.ol, align 1, !tbaa !30
  %wide.load243 = load <32 x i8>, ptr %i.om, align 1, !tbaa !30
  %i.on = xor <32 x i8> %wide.load240, splat (i8 -1)
  %i.oo = xor <32 x i8> %wide.load241, splat (i8 -1)
  %i.op = xor <32 x i8> %wide.load242, splat (i8 -1)
  %i.oq = xor <32 x i8> %wide.load243, splat (i8 -1)
  store <32 x i8> %i.on, ptr %i.oj, align 1, !tbaa !30
  store <32 x i8> %i.oo, ptr %i.ok, align 1, !tbaa !30
  store <32 x i8> %i.op, ptr %i.ol, align 1, !tbaa !30
  store <32 x i8> %i.oq, ptr %i.om, align 1, !tbaa !30
  %index.next244 = add nuw i64 %index239, 128     ; 2 uses
  %i.or = icmp eq i64 %index.next244, %n.vec237
  br i1 %i.or, label %middle.block245, label %vector.body238, !llvm.loop !275

middle.block245:                                  ; preds = %vector.body238
  %ind.escape = add nsw i64 %i.of, -8
  %cmp.n246 = icmp eq i64 %i.oc, %n.vec237
  br i1 %cmp.n246, label %.preheader.i133.loopexit, label %vec.epilog.iter.check251

vec.epilog.iter.check251:                         ; preds = %middle.block245
  %min.epilog.iters.check252 = icmp eq i64 %n.mod.vf236, 0
  br i1 %min.epilog.iters.check252, label %.lr.ph31.i130.preheader, label %vec.epilog.ph253, !prof !262

vec.epilog.ph253:                                 ; preds = %vector.main.loop.iter.check233, %vec.epilog.iter.check251
  %vec.epilog.resume.val247 = phi i64 [ %n.vec237, %vec.epilog.iter.check251 ], [ 0, %vector.main.loop.iter.check233 ]
  %n.vec255 = and i64 %i.oc, 4611686018427387888  ; 3 uses
  %i.os = shl i64 %n.vec255, 3                    ; 2 uses
  %i.ot = add i64 %i.os, %i.nu
  %i.ou = add i64 %i.nv, %i.os                    ; 2 uses
  %i.ov = lshr exact i64 %i.nu, 3
  br label %vec.epilog.vector.body256

vec.epilog.vector.body256:                        ; preds = %vec.epilog.vector.body256, %vec.epilog.ph253
  %index257 = phi i64 [ %vec.epilog.resume.val247, %vec.epilog.ph253 ], [ %index.next259, %vec.epilog.vector.body256 ] ; 2 uses
  %i.ow = add i64 %i.ov, %index257
  %i.ox = and i64 %i.ow, 2305843009213693944
  %i.oy = getelementptr inbounds nuw i8, ptr %i.mr, i64 %i.ox ; 2 uses
  %wide.load258 = load <16 x i8>, ptr %i.oy, align 1, !tbaa !30
  %i.oz = xor <16 x i8> %wide.load258, splat (i8 -1)
  store <16 x i8> %i.oz, ptr %i.oy, align 1, !tbaa !30
  %index.next259 = add nuw i64 %index257, 16      ; 2 uses
  %i.pa = icmp eq i64 %index.next259, %n.vec255
  br i1 %i.pa, label %vec.epilog.middle.block260, label %vec.epilog.vector.body256, !llvm.loop !276

vec.epilog.middle.block260:                       ; preds = %vec.epilog.vector.body256
  %ind.escape261 = add nsw i64 %i.ou, -8
  %cmp.n262 = icmp eq i64 %i.oc, %n.vec255
  br i1 %cmp.n262, label %.preheader.i133.loopexit, label %.lr.ph31.i130.preheader

.lr.ph31.i130.preheader:                          ; preds = %iter.check249, %vec.epilog.iter.check251, %vec.epilog.middle.block260
  %indvars.iv174.ph = phi i64 [ %i.nu, %iter.check249 ], [ %i.oe, %vec.epilog.iter.check251 ], [ %i.ot, %vec.epilog.middle.block260 ]
  %indvars.iv.ph = phi i64 [ %i.nv, %iter.check249 ], [ %i.of, %vec.epilog.iter.check251 ], [ %i.ou, %vec.epilog.middle.block260 ]
  br label %.lr.ph31.i130

.lr.ph.i120:                                      ; preds = %.lr.ph.i120.preheader, %.lr.ph.i120
  %indvars.iv36.i121 = phi i64 [ %indvars.iv.next37.i125, %.lr.ph.i120 ], [ %indvars.iv36.i121.ph, %.lr.ph.i120.preheader ] ; 2 uses
  %indvars.iv.i122 = phi i64 [ %indvars.iv.next.i123, %.lr.ph.i120 ], [ %indvars.iv.i122.ph, %.lr.ph.i120.preheader ]
  %i.pb = lshr exact i64 %indvars.iv36.i121, 3
  %i.pc = getelementptr inbounds nuw i8, ptr %i.mr, i64 %i.pb ; 2 uses
  %i.pd = load i64, ptr %i.pc, align 8, !tbaa !143
  %i.pe = xor i64 %i.pd, -1
  store i64 %i.pe, ptr %i.pc, align 8, !tbaa !143
  %indvars.iv.next.i123 = add nuw nsw i64 %indvars.iv.i122, 64 ; 2 uses
  %.not.i124 = icmp samesign ugt i64 %indvars.iv.next.i123, %i.mt
  %indvars.iv.next37.i125 = add nuw nsw i64 %indvars.iv36.i121, 64
  br i1 %.not.i124, label %.preheader26.loopexit.i126, label %.lr.ph.i120, !llvm.loop !277

.preheader.i133.loopexit:                         ; preds = %.lr.ph31.i130, %vec.epilog.middle.block260, %middle.block245
  %indvars.iv.lcssa = phi i64 [ %ind.escape261, %vec.epilog.middle.block260 ], [ %ind.escape, %middle.block245 ], [ %indvars.iv, %.lr.ph31.i130 ]
  %i.pf = trunc nuw nsw i64 %indvars.iv.lcssa to i32
  br label %.preheader.i133

.preheader.i133:                                  ; preds = %.preheader.i133.loopexit, %.preheader26.i127
  %.1.lcssa.i134 = phi i32 [ %.0.lcssa.i128, %.preheader26.i127 ], [ %i.pf, %.preheader.i133.loopexit ] ; 2 uses
  %i.pg = icmp slt i32 %.1.lcssa.i134, %i.ms
  br i1 %i.pg, label %.lr.ph34.preheader.i135, label %_ZN8facebook5velox4bits6negateEPmi.exit142

.lr.ph34.preheader.i135:                          ; preds = %.preheader.i133
  %i.ph = zext nneg i32 %.1.lcssa.i134 to i64
  %wide.trip.count = zext nneg i32 %i.ms to i64
  br label %.lr.ph34.i136

.lr.ph31.i130:                                    ; preds = %.lr.ph31.i130.preheader, %.lr.ph31.i130
  %indvars.iv174 = phi i64 [ %indvars.iv.next175, %.lr.ph31.i130 ], [ %indvars.iv174.ph, %.lr.ph31.i130.preheader ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph31.i130 ], [ %indvars.iv.ph, %.lr.ph31.i130.preheader ] ; 2 uses
  %i.pi = lshr exact i64 %indvars.iv174, 3
  %i.pj = getelementptr inbounds nuw i8, ptr %i.mr, i64 %i.pi ; 2 uses
  %i.pk = load i8, ptr %i.pj, align 1, !tbaa !30
  %i.pl = xor i8 %i.pk, -1
  store i8 %i.pl, ptr %i.pj, align 1, !tbaa !30
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %.not24.i132 = icmp samesign ugt i64 %indvars.iv.next, %i.nw
  %indvars.iv.next175 = add nuw nsw i64 %indvars.iv174, 8
  br i1 %.not24.i132, label %.preheader.i133.loopexit, label %.lr.ph31.i130, !llvm.loop !278

.lr.ph34.i136:                                    ; preds = %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i139, %.lr.ph34.preheader.i135
  %indvars.iv41.i137 = phi i64 [ %i.ph, %.lr.ph34.preheader.i135 ], [ %indvars.iv.next42.i141, %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i139 ] ; 6 uses
  %i.pm = lshr i64 %indvars.iv41.i137, 6
  %i.pn = getelementptr inbounds nuw [8 x i8], ptr %i.mr, i64 %i.pm
  %i.po = load i64, ptr %i.pn, align 8, !tbaa !143
  %i.pp = and i64 %indvars.iv41.i137, 63
  %i.pq = shl nuw i64 1, %i.pp
  %i.pr = and i64 %i.pq, %i.po
  %.not25.i138 = icmp eq i64 %i.pr, 0
  %i.ps = lshr i64 %indvars.iv41.i137, 3
  %i.pt = getelementptr inbounds nuw i8, ptr %i.mr, i64 %i.ps ; 2 uses
  %i.pu = load i8, ptr %i.pt, align 1, !tbaa !30  ; 2 uses
  br i1 %.not25.i138, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %.lr.ph34.i136
  %i.pv = trunc i64 %indvars.iv41.i137 to i8
  %i.pw = and i8 %i.pv, 7
  %i.px = shl nuw i8 1, %i.pw
  %i.py = or i8 %i.px, %i.pu
  br label %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i139

bb.co:                                            ; preds = %.lr.ph34.i136
  %i.pz = and i64 %indvars.iv41.i137, 7
  %i.qa = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.pz
  %i.qb = load i8, ptr %i.qa, align 1, !tbaa !30
  %i.qc = and i8 %i.qb, %i.pu
  br label %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i139

_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i139: ; preds = %bb.co, %bb.cn
  %.sink.i.i140 = phi i8 [ %i.qc, %bb.co ], [ %i.py, %bb.cn ]
  store i8 %.sink.i.i140, ptr %i.pt, align 1, !tbaa !30
  %indvars.iv.next42.i141 = add nuw nsw i64 %indvars.iv41.i137, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next42.i141, %wide.trip.count
  br i1 %exitcond.not, label %_ZN8facebook5velox4bits6negateEPmi.exit142, label %.lr.ph34.i136, !llvm.loop !266

_ZN8facebook5velox4bits6negateEPmi.exit142:       ; preds = %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i139, %.preheader.i133
  %i.qd = load ptr, ptr %22, align 8, !tbaa !270  ; 3 uses
  %i.qe = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.qf = load ptr, ptr %i.qe, align 8, !tbaa !279 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.qd, %i.qf
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN8facebook5velox4exec18LocalDecodedVectorES3_EvT_S5_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN8facebook5velox4bits6negateEPmi.exit142, %.lr.ph.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.qg, %.lr.ph.i.i.i.i ], [ %i.qd, %_ZN8facebook5velox4bits6negateEPmi.exit142 ] ; 2 uses
  call void @_ZN8facebook5velox4exec18LocalDecodedVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %.05.i.i.i.i) #31
  %i.qg = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.qg, %i.qf
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN8facebook5velox4exec18LocalDecodedVectorES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !280

_ZSt8_DestroyIPN8facebook5velox4exec18LocalDecodedVectorES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pr.i.i = load ptr, ptr %22, align 8, !tbaa !270
  br label %_ZSt8_DestroyIPN8facebook5velox4exec18LocalDecodedVectorES3_EvT_S5_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN8facebook5velox4exec18LocalDecodedVectorES3_EvT_S5_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN8facebook5velox4exec18LocalDecodedVectorES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i, %_ZN8facebook5velox4bits6negateEPmi.exit142
  %i.qh = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN8facebook5velox4exec18LocalDecodedVectorES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.qd, %_ZN8facebook5velox4bits6negateEPmi.exit142 ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.qh, null
  br i1 %.not.i.i1.i.i, label %_ZN8facebook5velox4exec11DecodedArgsD2Ev.exit, label %bb.cp

bb.cp:                                            ; preds = %_ZSt8_DestroyIPN8facebook5velox4exec18LocalDecodedVectorES3_EvT_S5_RSaIT0_E.exit.i.i
  %i.qi = getelementptr inbounds nuw i8, ptr %22, i64 16
  %i.qj = load ptr, ptr %i.qi, align 8, !tbaa !281
  %i.qk = ptrtoint ptr %i.qj to i64
  %i.ql = ptrtoint ptr %i.qh to i64
  %i.qm = sub i64 %i.qk, %i.ql
  call void @_ZdlPvm(ptr noundef nonnull %i.qh, i64 noundef %i.qm) #33
  br label %_ZN8facebook5velox4exec11DecodedArgsD2Ev.exit

_ZN8facebook5velox4exec11DecodedArgsD2Ev.exit:    ; preds = %_ZSt8_DestroyIPN8facebook5velox4exec18LocalDecodedVectorES3_EvT_S5_RSaIT0_E.exit.i.i, %bb.cp
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #31
  br label %_ZN8facebook5velox4bits6negateEPmi.exit

bb.cq:                                            ; preds = %bb.cd
  %i.qn = landingpad { ptr, i32 }
          cleanup
  br label %bb.cu

bb.cr:                                            ; preds = %bb.ce
  %i.qo = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #31
  br label %bb.ct

bb.cs:                                            ; preds = %.invoke216, %bb.ck, %_ZNK8facebook5velox4exec11DecodedArgs2atEi.exit
  %i.qp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.cr
  %.pn45 = phi { ptr, i32 } [ %i.qp, %bb.cs ], [ %i.qo, %bb.cr ]
  call void @_ZN8facebook5velox4exec11DecodedArgsD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %22) #31
  br label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %bb.cq
  %.pn45.pn = phi { ptr, i32 } [ %.pn45, %bb.ct ], [ %i.qn, %bb.cq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #31
  br label %bb.ee

_ZN8facebook5velox4bits6negateEPmi.exit:          ; preds = %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i, %.preheader.i, %_ZN8facebook5velox4exec11DecodedArgsD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #31
  invoke void @_ZN8facebook5velox7BOOLEANEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.105") align 8 %25)
          to label %bb.cv unwind label %bb.dz

bb.cv:                                            ; preds = %_ZN8facebook5velox4bits6negateEPmi.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #31
  store ptr null, ptr %i.b, align 8, !tbaa !282
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #31
  %i.qq = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.qr = load i32, ptr %i.qq, align 8, !tbaa !229
  store i32 %i.qr, ptr %i.c, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #31
  call void @llvm.experimental.noalias.scope.decl(metadata !284)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %26, i8 0, i64 24, i1 false)
  %i.qs = invoke noalias noundef nonnull dereferenceable(192) ptr @_Znwm(i64 noundef 192) #32
          to label %.noexc143 unwind label %bb.ea ; 6 uses

.noexc143:                                        ; preds = %bb.cv
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qs, i64 8
  store i32 1, ptr %i.qt, align 8, !tbaa !42, !noalias !284
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qs, i64 12
  store i32 1, ptr %i.qu, align 4, !tbaa !44, !noalias !284
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN8facebook5velox10FlatVectorIbEESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.qs, align 8, !tbaa !45, !noalias !284
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qs, i64 16 ; 2 uses
  invoke void @_ZSt10_ConstructIN8facebook5velox10FlatVectorIbEEJRPNS1_6memory10MemoryPoolESt10shared_ptrIKNS1_10ScalarTypeILNS1_8TypeKindE0EEEEDniRN5boost13intrusive_ptrINS1_6BufferEEESt6vectorISH_SaISH_EEEEvPT_DpOT0_(ptr noundef nonnull %i.qv, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %25, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef nonnull align 8 dereferenceable(24) %26)
          to label %bb.cw unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN8facebook5velox10FlatVectorIbEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit14.i.i.i.i, !noalias !284

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN8facebook5velox10FlatVectorIbEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit14.i.i.i.i: ; preds = %.noexc143
  %i.qw = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.qs, i64 noundef 192) #33, !noalias !284
  br label %.body

bb.cw:                                            ; preds = %.noexc143
  %i.qx = getelementptr inbounds nuw i8, ptr %24, i64 8 ; 3 uses
  store ptr %i.qs, ptr %i.qx, align 8, !tbaa !37, !alias.scope !284
  store ptr %i.qv, ptr %24, align 16, !tbaa !287, !alias.scope !284
  %i.qy = load ptr, ptr %26, align 8, !tbaa !289  ; 3 uses
  %i.qz = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.ra = load ptr, ptr %i.qz, align 8, !tbaa !292 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.qy, %i.ra
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.cw, %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.rp, %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i ], [ %i.qy, %bb.cw ] ; 2 uses
  %i.rb = load ptr, ptr %.05.i.i.i, align 8, !tbaa !241 ; 7 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.rb, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i, label %bb.cx

bb.cx:                                            ; preds = %.lr.ph.i.i.i
  %i.rc = getelementptr inbounds nuw i8, ptr %i.rb, i64 40
  %i.rd = atomicrmw sub ptr %i.rc, i32 1 acq_rel, align 4
  %i.re = icmp eq i32 %i.rd, 1
  br i1 %i.re, label %.sink.split.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i

.sink.split.i.i.i.i.i.i.i:                        ; preds = %bb.cx
  %i.rf = load ptr, ptr %i.rb, align 8, !tbaa !45
  %i.rg = getelementptr inbounds nuw i8, ptr %i.rf, i64 64
  %i.rh = load ptr, ptr %i.rg, align 8
  invoke void %i.rh(ptr noundef nonnull align 8 dereferenceable(64) %i.rb)
          to label %.noexc.i.i.i.i.i.i unwind label %bb.cy, !inline_history !247

.noexc.i.i.i.i.i.i:                               ; preds = %.sink.split.i.i.i.i.i.i.i
  %i.ri = getelementptr inbounds nuw i8, ptr %i.rb, i64 8
  %i.rj = load ptr, ptr %i.ri, align 8, !tbaa !248
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.rj, null
  %i.rk = load ptr, ptr %i.rb, align 8, !tbaa !45
  %..i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i, i64 8, i64 48
  %i.rl = getelementptr inbounds nuw i8, ptr %i.rk, i64 %..i.i.i.i.i.i.i
  %i.rm = load ptr, ptr %i.rl, align 8
  invoke void %i.rm(ptr noundef nonnull align 8 dereferenceable(64) %i.rb)
          to label %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i unwind label %bb.cy, !inline_history !247

bb.cy:                                            ; preds = %.noexc.i.i.i.i.i.i, %.sink.split.i.i.i.i.i.i.i
  %i.rn = landingpad { ptr, i32 }
          catch ptr null
  %i.ro = extractvalue { ptr, i32 } %i.rn, 0
  call void @__clang_call_terminate(ptr %i.ro) #34
  unreachable

_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i: ; preds = %.noexc.i.i.i.i.i.i, %bb.cx, %.lr.ph.i.i.i
  %i.rp = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i144 = icmp eq ptr %i.rp, %i.ra
  br i1 %.not.i.i.i144, label %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !293

_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i
end_hunk_1
