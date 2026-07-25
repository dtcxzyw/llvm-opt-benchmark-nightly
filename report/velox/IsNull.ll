inline.NumInlined: 6418
inline.NumDeleted: 2089
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_ZNK8facebook5velox9functions12_GLOBAL__N_114IsNullFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_:bb.a
  %i.he = call i64 @llvm.umax.i64(i64 %i.hd, i64 127)
  %i.hf = add nsw i64 %i.he, -64                  ; 3 uses
  %i.hg = lshr i64 %i.hf, 6
  %i.hh = add nuw nsw i64 %i.hg, 1                ; 5 uses
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
  %i.hk = shl nuw nsw i64 %index273, 3
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hb, i64 %i.hk ; 5 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 32 ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hl, i64 64 ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hl, i64 96 ; 2 uses
  %wide.load274 = load <4 x i64>, ptr %i.hl, align 8, !tbaa !143
  %wide.load275 = load <4 x i64>, ptr %i.hm, align 8, !tbaa !143
  %wide.load276 = load <4 x i64>, ptr %i.hn, align 8, !tbaa !143
  %wide.load277 = load <4 x i64>, ptr %i.ho, align 8, !tbaa !143
  %i.hp = xor <4 x i64> %wide.load274, splat (i64 -1)
  %i.hq = xor <4 x i64> %wide.load275, splat (i64 -1)
  %i.hr = xor <4 x i64> %wide.load276, splat (i64 -1)
  %i.hs = xor <4 x i64> %wide.load277, splat (i64 -1)
  store <4 x i64> %i.hp, ptr %i.hl, align 8, !tbaa !143
  store <4 x i64> %i.hq, ptr %i.hm, align 8, !tbaa !143
  store <4 x i64> %i.hr, ptr %i.hn, align 8, !tbaa !143
  store <4 x i64> %i.hs, ptr %i.ho, align 8, !tbaa !143
  %index.next278 = add nuw i64 %index273, 16      ; 2 uses
  %i.ht = icmp eq i64 %index.next278, %n.vec271
  br i1 %i.ht, label %middle.block279, label %vector.body272, !llvm.loop !256

middle.block279:                                  ; preds = %vector.body272
  %cmp.n280 = icmp eq i64 %i.hh, %n.vec271
  br i1 %cmp.n280, label %.preheader26.loopexit.i, label %vec.epilog.iter.check285

vec.epilog.iter.check285:                         ; preds = %middle.block279
  %min.epilog.iters.check286 = icmp eq i64 %n.mod.vf270, 0
  br i1 %min.epilog.iters.check286, label %.lr.ph.i.preheader, label %vec.epilog.ph287, !prof !259

vec.epilog.ph287:                                 ; preds = %vector.main.loop.iter.check267, %vec.epilog.iter.check285
  %vec.epilog.resume.val281 = phi i64 [ %n.vec271, %vec.epilog.iter.check285 ], [ 0, %vector.main.loop.iter.check267 ]
  %n.vec289 = and i64 %i.hh, 576460752303423484   ; 3 uses
  %i.hu = shl i64 %n.vec289, 6                    ; 2 uses
  %i.hv = or disjoint i64 %i.hu, 64
  br label %vec.epilog.vector.body290

vec.epilog.vector.body290:                        ; preds = %vec.epilog.vector.body290, %vec.epilog.ph287
  %index291 = phi i64 [ %vec.epilog.resume.val281, %vec.epilog.ph287 ], [ %index.next293, %vec.epilog.vector.body290 ] ; 2 uses
  %i.hw = shl nuw nsw i64 %index291, 3
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hb, i64 %i.hw ; 2 uses
  %wide.load292 = load <4 x i64>, ptr %i.hx, align 8, !tbaa !143
  %i.hy = xor <4 x i64> %wide.load292, splat (i64 -1)
  store <4 x i64> %i.hy, ptr %i.hx, align 8, !tbaa !143
  %index.next293 = add nuw i64 %index291, 4       ; 2 uses
  %i.hz = icmp eq i64 %index.next293, %n.vec289
  br i1 %i.hz, label %vec.epilog.middle.block294, label %vec.epilog.vector.body290, !llvm.loop !260

vec.epilog.middle.block294:                       ; preds = %vec.epilog.vector.body290
  %cmp.n295 = icmp eq i64 %i.hh, %n.vec289
  br i1 %cmp.n295, label %.preheader26.loopexit.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check283, %vec.epilog.iter.check285, %vec.epilog.middle.block294
  %indvars.iv36.i.ph = phi i64 [ 0, %iter.check283 ], [ %i.hi, %vec.epilog.iter.check285 ], [ %i.hu, %vec.epilog.middle.block294 ]
  %indvars.iv.i.ph = phi i64 [ 64, %iter.check283 ], [ %i.hj, %vec.epilog.iter.check285 ], [ %i.hv, %vec.epilog.middle.block294 ]
  br label %.lr.ph.i

.preheader26.loopexit.i:                          ; preds = %.lr.ph.i, %vec.epilog.middle.block294, %middle.block279
  %i.ia = and i32 %i.hc, 2147483584
  br label %.preheader26.i

.preheader26.i:                                   ; preds = %.preheader26.loopexit.i, %bb.by
  %.0.lcssa.i = phi i32 [ 0, %bb.by ], [ %i.ia, %.preheader26.loopexit.i ] ; 3 uses
  %i.ib = or disjoint i32 %.0.lcssa.i, 8
  %.not2429.i = icmp sgt i32 %i.ib, %i.hc
  br i1 %.not2429.i, label %.preheader.i, label %iter.check317

iter.check317:                                    ; preds = %.preheader26.i
  %i.ic = zext nneg i32 %.0.lcssa.i to i64        ; 8 uses
  %i.id = or disjoint i64 %i.ic, 8                ; 3 uses
  %i.ie = zext nneg i32 %i.hc to i64              ; 2 uses
  %i.if = or disjoint i64 %i.ic, 16
  %i.ig = add nuw nsw i64 %i.ie, 1
  %umax298 = call i64 @llvm.umax.i64(i64 %i.if, i64 %i.ig)
  %i.ih = add nsw i64 %umax298, -9
  %i.ii = sub nsw i64 %i.ih, %i.ic                ; 3 uses
  %i.ij = lshr i64 %i.ii, 3
  %i.ik = add nuw nsw i64 %i.ij, 1                ; 5 uses
  %min.iters.check299 = icmp ult i64 %i.ii, 120
  br i1 %min.iters.check299, label %.lr.ph31.i.preheader, label %vector.main.loop.iter.check300

vector.main.loop.iter.check300:                   ; preds = %iter.check317
  %min.iters.check301 = icmp ult i64 %i.ii, 1016
  br i1 %min.iters.check301, label %vec.epilog.ph321, label %vector.ph302

vector.ph302:                                     ; preds = %vector.main.loop.iter.check300
  %n.mod.vf303 = and i64 %i.ik, 112
  %n.vec304 = and i64 %i.ik, 4611686018427387776  ; 4 uses
  %i.il = shl i64 %n.vec304, 3                    ; 2 uses
  %i.im = add i64 %i.il, %i.ic
  %i.in = add i64 %i.id, %i.il                    ; 2 uses
  %i.io = lshr exact i64 %i.ic, 3
  %i.ip = getelementptr inbounds nuw i8, ptr %i.hb, i64 %i.io
  br label %vector.body305

vector.body305:                                   ; preds = %vector.body305, %vector.ph302
  %index306 = phi i64 [ 0, %vector.ph302 ], [ %index.next311, %vector.body305 ] ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 %index306 ; 5 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 32 ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %i.iq, i64 64 ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.iq, i64 96 ; 2 uses
  %wide.load307 = load <32 x i8>, ptr %i.iq, align 1, !tbaa !30
  %wide.load308 = load <32 x i8>, ptr %i.ir, align 1, !tbaa !30
  %wide.load309 = load <32 x i8>, ptr %i.is, align 1, !tbaa !30
  %wide.load310 = load <32 x i8>, ptr %i.it, align 1, !tbaa !30
  %i.iu = xor <32 x i8> %wide.load307, splat (i8 -1)
  %i.iv = xor <32 x i8> %wide.load308, splat (i8 -1)
  %i.iw = xor <32 x i8> %wide.load309, splat (i8 -1)
  %i.ix = xor <32 x i8> %wide.load310, splat (i8 -1)
  store <32 x i8> %i.iu, ptr %i.iq, align 1, !tbaa !30
  store <32 x i8> %i.iv, ptr %i.ir, align 1, !tbaa !30
  store <32 x i8> %i.iw, ptr %i.is, align 1, !tbaa !30
  store <32 x i8> %i.ix, ptr %i.it, align 1, !tbaa !30
  %index.next311 = add nuw i64 %index306, 128     ; 2 uses
  %i.iy = icmp eq i64 %index.next311, %n.vec304
  br i1 %i.iy, label %middle.block312, label %vector.body305, !llvm.loop !261

middle.block312:                                  ; preds = %vector.body305
  %ind.escape313 = add nsw i64 %i.in, -8
  %cmp.n314 = icmp eq i64 %i.ik, %n.vec304
  br i1 %cmp.n314, label %.preheader.i.loopexit, label %vec.epilog.iter.check319

vec.epilog.iter.check319:                         ; preds = %middle.block312
  %min.epilog.iters.check320 = icmp eq i64 %n.mod.vf303, 0
  br i1 %min.epilog.iters.check320, label %.lr.ph31.i.preheader, label %vec.epilog.ph321, !prof !262

vec.epilog.ph321:                                 ; preds = %vector.main.loop.iter.check300, %vec.epilog.iter.check319
  %vec.epilog.resume.val315 = phi i64 [ %n.vec304, %vec.epilog.iter.check319 ], [ 0, %vector.main.loop.iter.check300 ]
  %n.vec323 = and i64 %i.ik, 4611686018427387888  ; 3 uses
  %i.iz = shl i64 %n.vec323, 3                    ; 2 uses
  %i.ja = add i64 %i.iz, %i.ic
  %i.jb = add i64 %i.id, %i.iz                    ; 2 uses
  %i.jc = lshr exact i64 %i.ic, 3
  %i.jd = getelementptr inbounds nuw i8, ptr %i.hb, i64 %i.jc
  br label %vec.epilog.vector.body324

vec.epilog.vector.body324:                        ; preds = %vec.epilog.vector.body324, %vec.epilog.ph321
  %index325 = phi i64 [ %vec.epilog.resume.val315, %vec.epilog.ph321 ], [ %index.next327, %vec.epilog.vector.body324 ] ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 %index325 ; 2 uses
  %wide.load326 = load <16 x i8>, ptr %i.je, align 1, !tbaa !30
  %i.jf = xor <16 x i8> %wide.load326, splat (i8 -1)
  store <16 x i8> %i.jf, ptr %i.je, align 1, !tbaa !30
  %index.next327 = add nuw i64 %index325, 16      ; 2 uses
  %i.jg = icmp eq i64 %index.next327, %n.vec323
  br i1 %i.jg, label %vec.epilog.middle.block328, label %vec.epilog.vector.body324, !llvm.loop !263

vec.epilog.middle.block328:                       ; preds = %vec.epilog.vector.body324
  %ind.escape329 = add nsw i64 %i.jb, -8
  %cmp.n330 = icmp eq i64 %i.ik, %n.vec323
  br i1 %cmp.n330, label %.preheader.i.loopexit, label %.lr.ph31.i.preheader

.lr.ph31.i.preheader:                             ; preds = %iter.check317, %vec.epilog.iter.check319, %vec.epilog.middle.block328
  %indvars.iv181.ph = phi i64 [ %i.ic, %iter.check317 ], [ %i.im, %vec.epilog.iter.check319 ], [ %i.ja, %vec.epilog.middle.block328 ]
  %indvars.iv179.ph = phi i64 [ %i.id, %iter.check317 ], [ %i.in, %vec.epilog.iter.check319 ], [ %i.jb, %vec.epilog.middle.block328 ]
  br label %.lr.ph31.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv36.i = phi i64 [ %indvars.iv.next37.i, %.lr.ph.i ], [ %indvars.iv36.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ]
  %i.jh = lshr exact i64 %indvars.iv36.i, 3
  %i.ji = getelementptr inbounds nuw i8, ptr %i.hb, i64 %i.jh ; 2 uses
  %i.jj = load i64, ptr %i.ji, align 8, !tbaa !143
  %i.jk = xor i64 %i.jj, -1
  store i64 %i.jk, ptr %i.ji, align 8, !tbaa !143
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 64 ; 2 uses
  %.not.i95 = icmp samesign ugt i64 %indvars.iv.next.i, %i.hd
  %indvars.iv.next37.i = add nuw nsw i64 %indvars.iv36.i, 64
  br i1 %.not.i95, label %.preheader26.loopexit.i, label %.lr.ph.i, !llvm.loop !264

.preheader.i.loopexit:                            ; preds = %.lr.ph31.i, %vec.epilog.middle.block328, %middle.block312
  %indvars.iv179.lcssa = phi i64 [ %ind.escape329, %vec.epilog.middle.block328 ], [ %ind.escape313, %middle.block312 ], [ %indvars.iv179, %.lr.ph31.i ]
  %i.jl = trunc nuw nsw i64 %indvars.iv179.lcssa to i32
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.loopexit, %.preheader26.i
  %.1.lcssa.i = phi i32 [ %.0.lcssa.i, %.preheader26.i ], [ %i.jl, %.preheader.i.loopexit ] ; 2 uses
  %i.jm = icmp slt i32 %.1.lcssa.i, %i.hc
  br i1 %i.jm, label %.lr.ph34.preheader.i, label %_ZN8facebook5velox4bits6negateEPmi.exit

.lr.ph34.preheader.i:                             ; preds = %.preheader.i
  %i.jn = zext nneg i32 %.1.lcssa.i to i64
  %wide.trip.count186 = zext i32 %i.hc to i64
  br label %.lr.ph34.i

.lr.ph31.i:                                       ; preds = %.lr.ph31.i.preheader, %.lr.ph31.i
  %indvars.iv181 = phi i64 [ %indvars.iv.next182, %.lr.ph31.i ], [ %indvars.iv181.ph, %.lr.ph31.i.preheader ] ; 2 uses
  %indvars.iv179 = phi i64 [ %indvars.iv.next180, %.lr.ph31.i ], [ %indvars.iv179.ph, %.lr.ph31.i.preheader ] ; 2 uses
  %i.jo = lshr exact i64 %indvars.iv181, 3
  %i.jp = getelementptr inbounds nuw i8, ptr %i.hb, i64 %i.jo ; 2 uses
  %i.jq = load i8, ptr %i.jp, align 1, !tbaa !30
  %i.jr = xor i8 %i.jq, -1
  store i8 %i.jr, ptr %i.jp, align 1, !tbaa !30
  %indvars.iv.next180 = add nuw nsw i64 %indvars.iv179, 8 ; 2 uses
  %.not24.i = icmp samesign ugt i64 %indvars.iv.next180, %i.ie
  %indvars.iv.next182 = add nuw nsw i64 %indvars.iv181, 8
  br i1 %.not24.i, label %.preheader.i.loopexit, label %.lr.ph31.i, !llvm.loop !265

.lr.ph34.i:                                       ; preds = %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i, %.lr.ph34.preheader.i
  %indvars.iv41.i = phi i64 [ %i.jn, %.lr.ph34.preheader.i ], [ %indvars.iv.next42.i, %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i ] ; 6 uses
  %i.js = lshr i64 %indvars.iv41.i, 6
  %i.jt = getelementptr inbounds nuw [8 x i8], ptr %i.hb, i64 %i.js
  %i.ju = load i64, ptr %i.jt, align 8, !tbaa !143
  %i.jv = and i64 %indvars.iv41.i, 63
  %i.jw = shl nuw i64 1, %i.jv
  %i.jx = and i64 %i.jw, %i.ju
  %.not25.i = icmp eq i64 %i.jx, 0
  %i.jy = lshr i64 %indvars.iv41.i, 3
  %i.jz = getelementptr inbounds nuw i8, ptr %i.hb, i64 %i.jy ; 2 uses
  %i.ka = load i8, ptr %i.jz, align 1, !tbaa !30  ; 2 uses
  br i1 %.not25.i, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %.lr.ph34.i
  %i.kb = trunc i64 %indvars.iv41.i to i8
  %i.kc = and i8 %i.kb, 7
  %i.kd = shl nuw i8 1, %i.kc
  %i.ke = or i8 %i.kd, %i.ka
  br label %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i

bb.ca:                                            ; preds = %.lr.ph34.i
  %i.kf = and i64 %indvars.iv41.i, 7
  %i.kg = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.kf
  %i.kh = load i8, ptr %i.kg, align 1, !tbaa !30
  %i.ki = and i8 %i.kh, %i.ka
  br label %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i

_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i:  ; preds = %bb.ca, %bb.bz
  %.sink.i.i = phi i8 [ %i.ki, %bb.ca ], [ %i.ke, %bb.bz ]
  store i8 %.sink.i.i, ptr %i.jz, align 1, !tbaa !30
  %indvars.iv.next42.i = add nuw nsw i64 %indvars.iv41.i, 1 ; 2 uses
  %exitcond187.not = icmp eq i64 %indvars.iv.next42.i, %wide.trip.count186
  br i1 %exitcond187.not, label %_ZN8facebook5velox4bits6negateEPmi.exit, label %.lr.ph34.i, !llvm.loop !266

bb.cb:                                            ; preds = %.invoke
  %i.kj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ee

bb.cc:                                            ; preds = %bb.br
  %i.kk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #31
  br label %bb.ee

bb.cd:                                            ; preds = %bb.bq
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #31
  invoke void @_ZN8facebook5velox4exec11DecodedArgsC2ERKNS0_17SelectivityVectorERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaIS9_EERNS1_7EvalCtxE(ptr noundef nonnull align 8 dereferenceable(24) %22, ptr noundef nonnull align 8 dereferenceable(38) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(104) %4)
          to label %bb.ce unwind label %bb.cq

bb.ce:                                            ; preds = %bb.cd
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #31
  %i.kl = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.km = load i32, ptr %i.kl, align 8, !tbaa !229
  %i.kn = sext i32 %i.km to i64
  %i.ko = load ptr, ptr %i.a, align 8, !tbaa !194
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31, !noalias !267
  %i.kp = getelementptr inbounds nuw i8, ptr %6, i64 1
  store i8 0, ptr %i.kp, align 1, !tbaa !245, !noalias !267
  %i.kq = add nsw i64 %i.kn, 7
  %i.kr = lshr i64 %i.kq, 3
  invoke void @_ZN8facebook5velox13AlignedBuffer8allocateIcEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_Eb(ptr dead_on_unwind nonnull writable sret(%"class.boost::intrusive_ptr") align 8 %23, i64 noundef %i.kr, ptr noundef %i.ko, ptr noundef nonnull align 1 dereferenceable(2) %6, i1 noundef zeroext false)
          to label %bb.cf unwind label %bb.cr

bb.cf:                                            ; preds = %bb.ce
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31, !noalias !267
  %i.ks = load ptr, ptr %23, align 8, !tbaa !241
  store ptr null, ptr %23, align 8, !tbaa !241
  %i.kt = load ptr, ptr %20, align 8, !tbaa !241  ; 7 uses
  store ptr %i.ks, ptr %20, align 8, !tbaa !241
  %.not.i.i99 = icmp eq ptr %i.kt, null
  br i1 %.not.i.i99, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit110, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 40
  %i.kv = atomicrmw sub ptr %i.ku, i32 1 acq_rel, align 4
  %i.kw = icmp eq i32 %i.kv, 1
  br i1 %i.kw, label %.sink.split.i.i.i100, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEOS4_.exit104

.sink.split.i.i.i100:                             ; preds = %bb.cg
  %i.kx = load ptr, ptr %i.kt, align 8, !tbaa !45
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 64
  %i.kz = load ptr, ptr %i.ky, align 8
  invoke void %i.kz(ptr noundef nonnull align 8 dereferenceable(64) %i.kt)
          to label %.noexc.i.i101 unwind label %bb.ch, !inline_history !247

.noexc.i.i101:                                    ; preds = %.sink.split.i.i.i100
  %i.la = getelementptr inbounds nuw i8, ptr %i.kt, i64 8
  %i.lb = load ptr, ptr %i.la, align 8, !tbaa !248
  %.not.i.i.i102 = icmp eq ptr %i.lb, null
  %i.lc = load ptr, ptr %i.kt, align 8, !tbaa !45
  %..i.i.i103 = select i1 %.not.i.i.i102, i64 8, i64 48
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 %..i.i.i103
  %i.le = load ptr, ptr %i.ld, align 8
  invoke void %i.le(ptr noundef nonnull align 8 dereferenceable(64) %i.kt)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEOS4_.exit104 unwind label %bb.ch, !inline_history !247

bb.ch:                                            ; preds = %.noexc.i.i101, %.sink.split.i.i.i100
  %i.lf = landingpad { ptr, i32 }
          catch ptr null
  %i.lg = extractvalue { ptr, i32 } %i.lf, 0
  call void @__clang_call_terminate(ptr %i.lg) #34
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEOS4_.exit104: ; preds = %bb.cg, %.noexc.i.i101
  %.pr170 = load ptr, ptr %23, align 8, !tbaa !241 ; 7 uses
  %.not.i105 = icmp eq ptr %.pr170, null
  br i1 %.not.i105, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit110, label %bb.ci

bb.ci:                                            ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEOS4_.exit104
  %i.lh = getelementptr inbounds nuw i8, ptr %.pr170, i64 40
  %i.li = atomicrmw sub ptr %i.lh, i32 1 acq_rel, align 4
  %i.lj = icmp eq i32 %i.li, 1
  br i1 %i.lj, label %.sink.split.i.i106, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit110

.sink.split.i.i106:                               ; preds = %bb.ci
  %i.lk = load ptr, ptr %.pr170, align 8, !tbaa !45
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 64
  %i.lm = load ptr, ptr %i.ll, align 8
  invoke void %i.lm(ptr noundef nonnull align 8 dereferenceable(64) %.pr170)
          to label %.noexc.i107 unwind label %bb.cj, !inline_history !247

.noexc.i107:                                      ; preds = %.sink.split.i.i106
  %i.ln = getelementptr inbounds nuw i8, ptr %.pr170, i64 8
  %i.lo = load ptr, ptr %i.ln, align 8, !tbaa !248
  %.not.i.i108 = icmp eq ptr %i.lo, null
  %i.lp = load ptr, ptr %.pr170, align 8, !tbaa !45
  %..i.i109 = select i1 %.not.i.i108, i64 8, i64 48
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 %..i.i109
  %i.lr = load ptr, ptr %i.lq, align 8
  invoke void %i.lr(ptr noundef nonnull align 8 dereferenceable(64) %.pr170)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit110 unwind label %bb.cj, !inline_history !247

bb.cj:                                            ; preds = %.noexc.i107, %.sink.split.i.i106
  %i.ls = landingpad { ptr, i32 }
          catch ptr null
  %i.lt = extractvalue { ptr, i32 } %i.ls, 0
  call void @__clang_call_terminate(ptr %i.lt) #34
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit110: ; preds = %bb.cf, %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEOS4_.exit104, %bb.ci, %.noexc.i107
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #31
  %i.lu = load ptr, ptr %20, align 8, !tbaa !241  ; 2 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 44
  %i.lw = load i8, ptr %i.lv, align 4, !tbaa !253
  %i.lx = and i8 %i.lw, 2
  %.not.i111 = icmp eq i8 %i.lx, 0
  br i1 %.not.i111, label %bb.ck, label %.invoke216, !prof !76

bb.ck:                                            ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit110
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lu, i64 16
  %i.lz = load ptr, ptr %i.ly, align 8, !tbaa !254
  %i.ma = load ptr, ptr %22, align 8, !tbaa !270
  %i.mb = invoke noundef ptr @_ZN8facebook5velox4exec18LocalDecodedVector3getEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ma)
          to label %_ZNK8facebook5velox4exec11DecodedArgs2atEi.exit unwind label %bb.cs

_ZNK8facebook5velox4exec11DecodedArgs2atEi.exit:  ; preds = %bb.ck
  %i.mc = invoke noundef ptr @_ZN8facebook5velox13DecodedVector5nullsEPKNS0_17SelectivityVectorE(ptr noundef nonnull align 8 dereferenceable(120) %i.mb, ptr noundef nonnull %1)
          to label %bb.cl unwind label %bb.cs

bb.cl:                                            ; preds = %_ZNK8facebook5velox4exec11DecodedArgs2atEi.exit
  %i.md = load i32, ptr %i.kl, align 8, !tbaa !229
  %i.me = sext i32 %i.md to i64
  %i.mf = add nsw i64 %i.me, 7
  %i.mg = lshr i64 %i.mf, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.lz, ptr align 8 %i.mc, i64 %i.mg, i1 false)
  %i.mh = load ptr, ptr %20, align 8, !tbaa !241  ; 2 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mh, i64 44
  %i.mj = load i8, ptr %i.mi, align 4, !tbaa !253
  %i.mk = and i8 %i.mj, 2
  %.not.i115 = icmp eq i8 %i.mk, 0
  br i1 %.not.i115, label %bb.cm, label %.invoke216, !prof !76

.invoke216:                                       ; preds = %bb.cl, %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit110
  %i.ml = phi ptr [ @_ZZNK8facebook5velox6Buffer9asMutableIlEEPT_vE18veloxCheckFailArgs, %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit110 ], [ @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs, %bb.cl ]
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) %i.ml) #35
          to label %.cont217 unwind label %bb.cs

.cont217:                                         ; preds = %.invoke216
  unreachable

bb.cm:                                            ; preds = %bb.cl
  %i.mm = getelementptr inbounds nuw i8, ptr %i.mh, i64 16
  %i.mn = load ptr, ptr %i.mm, align 8, !tbaa !254 ; 8 uses
end_hunk_0
begin_hunk_1_@_ZNK8facebook5velox9functions12_GLOBAL__N_114IsNullFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_:bb.a
  %i.mq = call i64 @llvm.umax.i64(i64 %i.mp, i64 127)
  %i.mr = add nsw i64 %i.mq, -64                  ; 3 uses
  %i.ms = lshr i64 %i.mr, 6
  %i.mt = add nuw nsw i64 %i.ms, 1                ; 5 uses
  %min.iters.check = icmp ult i64 %i.mr, 192
  br i1 %min.iters.check, label %.lr.ph.i120.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check218 = icmp ult i64 %i.mr, 960
  br i1 %min.iters.check218, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.mt, 12
  %n.vec = and i64 %i.mt, 576460752303423472      ; 4 uses
  %i.mu = shl i64 %n.vec, 6                       ; 2 uses
  %i.mv = or disjoint i64 %i.mu, 64
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.mw = shl nuw nsw i64 %index, 3
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mn, i64 %i.mw ; 5 uses
  %i.my = getelementptr inbounds nuw i8, ptr %i.mx, i64 32 ; 2 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %i.mx, i64 64 ; 2 uses
  %i.na = getelementptr inbounds nuw i8, ptr %i.mx, i64 96 ; 2 uses
  %wide.load = load <4 x i64>, ptr %i.mx, align 8, !tbaa !143
  %wide.load219 = load <4 x i64>, ptr %i.my, align 8, !tbaa !143
  %wide.load220 = load <4 x i64>, ptr %i.mz, align 8, !tbaa !143
  %wide.load221 = load <4 x i64>, ptr %i.na, align 8, !tbaa !143
  %i.nb = xor <4 x i64> %wide.load, splat (i64 -1)
  %i.nc = xor <4 x i64> %wide.load219, splat (i64 -1)
  %i.nd = xor <4 x i64> %wide.load220, splat (i64 -1)
  %i.ne = xor <4 x i64> %wide.load221, splat (i64 -1)
  store <4 x i64> %i.nb, ptr %i.mx, align 8, !tbaa !143
  store <4 x i64> %i.nc, ptr %i.my, align 8, !tbaa !143
  store <4 x i64> %i.nd, ptr %i.mz, align 8, !tbaa !143
  store <4 x i64> %i.ne, ptr %i.na, align 8, !tbaa !143
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.nf = icmp eq i64 %index.next, %n.vec
  br i1 %i.nf, label %middle.block, label %vector.body, !llvm.loop !273

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.mt, %n.vec
  br i1 %cmp.n, label %.preheader26.loopexit.i126, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i120.preheader, label %vec.epilog.ph, !prof !259

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec224 = and i64 %i.mt, 576460752303423484   ; 3 uses
  %i.ng = shl i64 %n.vec224, 6                    ; 2 uses
  %i.nh = or disjoint i64 %i.ng, 64
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index225 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next227, %vec.epilog.vector.body ] ; 2 uses
  %i.ni = shl nuw nsw i64 %index225, 3
  %i.nj = getelementptr inbounds nuw i8, ptr %i.mn, i64 %i.ni ; 2 uses
  %wide.load226 = load <4 x i64>, ptr %i.nj, align 8, !tbaa !143
  %i.nk = xor <4 x i64> %wide.load226, splat (i64 -1)
  store <4 x i64> %i.nk, ptr %i.nj, align 8, !tbaa !143
  %index.next227 = add nuw i64 %index225, 4       ; 2 uses
  %i.nl = icmp eq i64 %index.next227, %n.vec224
  br i1 %i.nl, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !274

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n228 = icmp eq i64 %i.mt, %n.vec224
  br i1 %cmp.n228, label %.preheader26.loopexit.i126, label %.lr.ph.i120.preheader

.lr.ph.i120.preheader:                            ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv36.i121.ph = phi i64 [ 0, %iter.check ], [ %i.mu, %vec.epilog.iter.check ], [ %i.ng, %vec.epilog.middle.block ]
  %indvars.iv.i122.ph = phi i64 [ 64, %iter.check ], [ %i.mv, %vec.epilog.iter.check ], [ %i.nh, %vec.epilog.middle.block ]
  br label %.lr.ph.i120

.preheader26.loopexit.i126:                       ; preds = %.lr.ph.i120, %vec.epilog.middle.block, %middle.block
  %i.nm = and i32 %i.mo, 2147483584
  br label %.preheader26.i127

.preheader26.i127:                                ; preds = %.preheader26.loopexit.i126, %bb.cm
  %.0.lcssa.i128 = phi i32 [ 0, %bb.cm ], [ %i.nm, %.preheader26.loopexit.i126 ] ; 3 uses
  %i.nn = or disjoint i32 %.0.lcssa.i128, 8
  %.not2429.i129 = icmp sgt i32 %i.nn, %i.mo
  br i1 %.not2429.i129, label %.preheader.i133, label %iter.check249

iter.check249:                                    ; preds = %.preheader26.i127
  %i.no = zext nneg i32 %.0.lcssa.i128 to i64     ; 8 uses
  %i.np = or disjoint i64 %i.no, 8                ; 3 uses
  %i.nq = zext nneg i32 %i.mo to i64              ; 2 uses
  %i.nr = or disjoint i64 %i.no, 16
  %i.ns = add nuw nsw i64 %i.nq, 1
  %umax231 = call i64 @llvm.umax.i64(i64 %i.nr, i64 %i.ns)
  %i.nt = add nsw i64 %umax231, -9
  %i.nu = sub nsw i64 %i.nt, %i.no                ; 3 uses
  %i.nv = lshr i64 %i.nu, 3
  %i.nw = add nuw nsw i64 %i.nv, 1                ; 5 uses
  %min.iters.check232 = icmp ult i64 %i.nu, 120
  br i1 %min.iters.check232, label %.lr.ph31.i130.preheader, label %vector.main.loop.iter.check233

vector.main.loop.iter.check233:                   ; preds = %iter.check249
  %min.iters.check234 = icmp ult i64 %i.nu, 1016
  br i1 %min.iters.check234, label %vec.epilog.ph253, label %vector.ph235

vector.ph235:                                     ; preds = %vector.main.loop.iter.check233
  %n.mod.vf236 = and i64 %i.nw, 112
  %n.vec237 = and i64 %i.nw, 4611686018427387776  ; 4 uses
  %i.nx = shl i64 %n.vec237, 3                    ; 2 uses
  %i.ny = add i64 %i.nx, %i.no
  %i.nz = add i64 %i.np, %i.nx                    ; 2 uses
  %i.oa = lshr exact i64 %i.no, 3
  %i.ob = getelementptr inbounds nuw i8, ptr %i.mn, i64 %i.oa
  br label %vector.body238

vector.body238:                                   ; preds = %vector.body238, %vector.ph235
  %index239 = phi i64 [ 0, %vector.ph235 ], [ %index.next244, %vector.body238 ] ; 2 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ob, i64 %index239 ; 5 uses
  %i.od = getelementptr inbounds nuw i8, ptr %i.oc, i64 32 ; 2 uses
  %i.oe = getelementptr inbounds nuw i8, ptr %i.oc, i64 64 ; 2 uses
  %i.of = getelementptr inbounds nuw i8, ptr %i.oc, i64 96 ; 2 uses
  %wide.load240 = load <32 x i8>, ptr %i.oc, align 1, !tbaa !30
  %wide.load241 = load <32 x i8>, ptr %i.od, align 1, !tbaa !30
  %wide.load242 = load <32 x i8>, ptr %i.oe, align 1, !tbaa !30
  %wide.load243 = load <32 x i8>, ptr %i.of, align 1, !tbaa !30
  %i.og = xor <32 x i8> %wide.load240, splat (i8 -1)
  %i.oh = xor <32 x i8> %wide.load241, splat (i8 -1)
  %i.oi = xor <32 x i8> %wide.load242, splat (i8 -1)
  %i.oj = xor <32 x i8> %wide.load243, splat (i8 -1)
  store <32 x i8> %i.og, ptr %i.oc, align 1, !tbaa !30
  store <32 x i8> %i.oh, ptr %i.od, align 1, !tbaa !30
  store <32 x i8> %i.oi, ptr %i.oe, align 1, !tbaa !30
  store <32 x i8> %i.oj, ptr %i.of, align 1, !tbaa !30
  %index.next244 = add nuw i64 %index239, 128     ; 2 uses
  %i.ok = icmp eq i64 %index.next244, %n.vec237
  br i1 %i.ok, label %middle.block245, label %vector.body238, !llvm.loop !275

middle.block245:                                  ; preds = %vector.body238
  %ind.escape = add nsw i64 %i.nz, -8
  %cmp.n246 = icmp eq i64 %i.nw, %n.vec237
  br i1 %cmp.n246, label %.preheader.i133.loopexit, label %vec.epilog.iter.check251

vec.epilog.iter.check251:                         ; preds = %middle.block245
  %min.epilog.iters.check252 = icmp eq i64 %n.mod.vf236, 0
  br i1 %min.epilog.iters.check252, label %.lr.ph31.i130.preheader, label %vec.epilog.ph253, !prof !262

vec.epilog.ph253:                                 ; preds = %vector.main.loop.iter.check233, %vec.epilog.iter.check251
  %vec.epilog.resume.val247 = phi i64 [ %n.vec237, %vec.epilog.iter.check251 ], [ 0, %vector.main.loop.iter.check233 ]
  %n.vec255 = and i64 %i.nw, 4611686018427387888  ; 3 uses
  %i.ol = shl i64 %n.vec255, 3                    ; 2 uses
  %i.om = add i64 %i.ol, %i.no
  %i.on = add i64 %i.np, %i.ol                    ; 2 uses
  %i.oo = lshr exact i64 %i.no, 3
  %i.op = getelementptr inbounds nuw i8, ptr %i.mn, i64 %i.oo
  br label %vec.epilog.vector.body256

vec.epilog.vector.body256:                        ; preds = %vec.epilog.vector.body256, %vec.epilog.ph253
  %index257 = phi i64 [ %vec.epilog.resume.val247, %vec.epilog.ph253 ], [ %index.next259, %vec.epilog.vector.body256 ] ; 2 uses
  %i.oq = getelementptr inbounds nuw i8, ptr %i.op, i64 %index257 ; 2 uses
  %wide.load258 = load <16 x i8>, ptr %i.oq, align 1, !tbaa !30
  %i.or = xor <16 x i8> %wide.load258, splat (i8 -1)
  store <16 x i8> %i.or, ptr %i.oq, align 1, !tbaa !30
  %index.next259 = add nuw i64 %index257, 16      ; 2 uses
  %i.os = icmp eq i64 %index.next259, %n.vec255
  br i1 %i.os, label %vec.epilog.middle.block260, label %vec.epilog.vector.body256, !llvm.loop !276

vec.epilog.middle.block260:                       ; preds = %vec.epilog.vector.body256
  %ind.escape261 = add nsw i64 %i.on, -8
  %cmp.n262 = icmp eq i64 %i.nw, %n.vec255
  br i1 %cmp.n262, label %.preheader.i133.loopexit, label %.lr.ph31.i130.preheader

.lr.ph31.i130.preheader:                          ; preds = %iter.check249, %vec.epilog.iter.check251, %vec.epilog.middle.block260
  %indvars.iv174.ph = phi i64 [ %i.no, %iter.check249 ], [ %i.ny, %vec.epilog.iter.check251 ], [ %i.om, %vec.epilog.middle.block260 ]
  %indvars.iv.ph = phi i64 [ %i.np, %iter.check249 ], [ %i.nz, %vec.epilog.iter.check251 ], [ %i.on, %vec.epilog.middle.block260 ]
  br label %.lr.ph31.i130

.lr.ph.i120:                                      ; preds = %.lr.ph.i120.preheader, %.lr.ph.i120
  %indvars.iv36.i121 = phi i64 [ %indvars.iv.next37.i125, %.lr.ph.i120 ], [ %indvars.iv36.i121.ph, %.lr.ph.i120.preheader ] ; 2 uses
  %indvars.iv.i122 = phi i64 [ %indvars.iv.next.i123, %.lr.ph.i120 ], [ %indvars.iv.i122.ph, %.lr.ph.i120.preheader ]
  %i.ot = lshr exact i64 %indvars.iv36.i121, 3
  %i.ou = getelementptr inbounds nuw i8, ptr %i.mn, i64 %i.ot ; 2 uses
  %i.ov = load i64, ptr %i.ou, align 8, !tbaa !143
  %i.ow = xor i64 %i.ov, -1
  store i64 %i.ow, ptr %i.ou, align 8, !tbaa !143
  %indvars.iv.next.i123 = add nuw nsw i64 %indvars.iv.i122, 64 ; 2 uses
  %.not.i124 = icmp samesign ugt i64 %indvars.iv.next.i123, %i.mp
  %indvars.iv.next37.i125 = add nuw nsw i64 %indvars.iv36.i121, 64
  br i1 %.not.i124, label %.preheader26.loopexit.i126, label %.lr.ph.i120, !llvm.loop !277

.preheader.i133.loopexit:                         ; preds = %.lr.ph31.i130, %vec.epilog.middle.block260, %middle.block245
  %indvars.iv.lcssa = phi i64 [ %ind.escape261, %vec.epilog.middle.block260 ], [ %ind.escape, %middle.block245 ], [ %indvars.iv, %.lr.ph31.i130 ]
  %i.ox = trunc nuw nsw i64 %indvars.iv.lcssa to i32
  br label %.preheader.i133

.preheader.i133:                                  ; preds = %.preheader.i133.loopexit, %.preheader26.i127
  %.1.lcssa.i134 = phi i32 [ %.0.lcssa.i128, %.preheader26.i127 ], [ %i.ox, %.preheader.i133.loopexit ] ; 2 uses
  %i.oy = icmp slt i32 %.1.lcssa.i134, %i.mo
  br i1 %i.oy, label %.lr.ph34.preheader.i135, label %_ZN8facebook5velox4bits6negateEPmi.exit142

.lr.ph34.preheader.i135:                          ; preds = %.preheader.i133
  %i.oz = zext nneg i32 %.1.lcssa.i134 to i64
  %wide.trip.count = zext i32 %i.mo to i64
  br label %.lr.ph34.i136

.lr.ph31.i130:                                    ; preds = %.lr.ph31.i130.preheader, %.lr.ph31.i130
  %indvars.iv174 = phi i64 [ %indvars.iv.next175, %.lr.ph31.i130 ], [ %indvars.iv174.ph, %.lr.ph31.i130.preheader ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph31.i130 ], [ %indvars.iv.ph, %.lr.ph31.i130.preheader ] ; 2 uses
  %i.pa = lshr exact i64 %indvars.iv174, 3
  %i.pb = getelementptr inbounds nuw i8, ptr %i.mn, i64 %i.pa ; 2 uses
  %i.pc = load i8, ptr %i.pb, align 1, !tbaa !30
  %i.pd = xor i8 %i.pc, -1
  store i8 %i.pd, ptr %i.pb, align 1, !tbaa !30
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %.not24.i132 = icmp samesign ugt i64 %indvars.iv.next, %i.nq
  %indvars.iv.next175 = add nuw nsw i64 %indvars.iv174, 8
  br i1 %.not24.i132, label %.preheader.i133.loopexit, label %.lr.ph31.i130, !llvm.loop !278

.lr.ph34.i136:                                    ; preds = %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i139, %.lr.ph34.preheader.i135
  %indvars.iv41.i137 = phi i64 [ %i.oz, %.lr.ph34.preheader.i135 ], [ %indvars.iv.next42.i141, %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i139 ] ; 6 uses
  %i.pe = lshr i64 %indvars.iv41.i137, 6
  %i.pf = getelementptr inbounds nuw [8 x i8], ptr %i.mn, i64 %i.pe
  %i.pg = load i64, ptr %i.pf, align 8, !tbaa !143
  %i.ph = and i64 %indvars.iv41.i137, 63
  %i.pi = shl nuw i64 1, %i.ph
  %i.pj = and i64 %i.pi, %i.pg
  %.not25.i138 = icmp eq i64 %i.pj, 0
  %i.pk = lshr i64 %indvars.iv41.i137, 3
  %i.pl = getelementptr inbounds nuw i8, ptr %i.mn, i64 %i.pk ; 2 uses
  %i.pm = load i8, ptr %i.pl, align 1, !tbaa !30  ; 2 uses
  br i1 %.not25.i138, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %.lr.ph34.i136
  %i.pn = trunc i64 %indvars.iv41.i137 to i8
  %i.po = and i8 %i.pn, 7
  %i.pp = shl nuw i8 1, %i.po
  %i.pq = or i8 %i.pp, %i.pm
  br label %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i139

bb.co:                                            ; preds = %.lr.ph34.i136
  %i.pr = and i64 %indvars.iv41.i137, 7
  %i.ps = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.pr
  %i.pt = load i8, ptr %i.ps, align 1, !tbaa !30
  %i.pu = and i8 %i.pt, %i.pm
  br label %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i139

_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i139: ; preds = %bb.co, %bb.cn
  %.sink.i.i140 = phi i8 [ %i.pu, %bb.co ], [ %i.pq, %bb.cn ]
  store i8 %.sink.i.i140, ptr %i.pl, align 1, !tbaa !30
  %indvars.iv.next42.i141 = add nuw nsw i64 %indvars.iv41.i137, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next42.i141, %wide.trip.count
  br i1 %exitcond.not, label %_ZN8facebook5velox4bits6negateEPmi.exit142, label %.lr.ph34.i136, !llvm.loop !266

_ZN8facebook5velox4bits6negateEPmi.exit142:       ; preds = %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i139, %.preheader.i133
  %i.pv = load ptr, ptr %22, align 8, !tbaa !270  ; 3 uses
  %i.pw = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.px = load ptr, ptr %i.pw, align 8, !tbaa !279 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.pv, %i.px
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN8facebook5velox4exec18LocalDecodedVectorES3_EvT_S5_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN8facebook5velox4bits6negateEPmi.exit142, %.lr.ph.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.py, %.lr.ph.i.i.i.i ], [ %i.pv, %_ZN8facebook5velox4bits6negateEPmi.exit142 ] ; 2 uses
  call void @_ZN8facebook5velox4exec18LocalDecodedVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %.05.i.i.i.i) #31
  %i.py = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.py, %i.px
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN8facebook5velox4exec18LocalDecodedVectorES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !280

_ZSt8_DestroyIPN8facebook5velox4exec18LocalDecodedVectorES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pr.i.i = load ptr, ptr %22, align 8, !tbaa !270
  br label %_ZSt8_DestroyIPN8facebook5velox4exec18LocalDecodedVectorES3_EvT_S5_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN8facebook5velox4exec18LocalDecodedVectorES3_EvT_S5_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN8facebook5velox4exec18LocalDecodedVectorES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i, %_ZN8facebook5velox4bits6negateEPmi.exit142
  %i.pz = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN8facebook5velox4exec18LocalDecodedVectorES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.pv, %_ZN8facebook5velox4bits6negateEPmi.exit142 ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.pz, null
  br i1 %.not.i.i1.i.i, label %_ZN8facebook5velox4exec11DecodedArgsD2Ev.exit, label %bb.cp

bb.cp:                                            ; preds = %_ZSt8_DestroyIPN8facebook5velox4exec18LocalDecodedVectorES3_EvT_S5_RSaIT0_E.exit.i.i
  %i.qa = getelementptr inbounds nuw i8, ptr %22, i64 16
  %i.qb = load ptr, ptr %i.qa, align 8, !tbaa !281
  %i.qc = ptrtoint ptr %i.qb to i64
  %i.qd = ptrtoint ptr %i.pz to i64
  %i.qe = sub i64 %i.qc, %i.qd
  call void @_ZdlPvm(ptr noundef nonnull %i.pz, i64 noundef %i.qe) #33
  br label %_ZN8facebook5velox4exec11DecodedArgsD2Ev.exit

_ZN8facebook5velox4exec11DecodedArgsD2Ev.exit:    ; preds = %_ZSt8_DestroyIPN8facebook5velox4exec18LocalDecodedVectorES3_EvT_S5_RSaIT0_E.exit.i.i, %bb.cp
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #31
  br label %_ZN8facebook5velox4bits6negateEPmi.exit

bb.cq:                                            ; preds = %bb.cd
  %i.qf = landingpad { ptr, i32 }
          cleanup
  br label %bb.cu

bb.cr:                                            ; preds = %bb.ce
  %i.qg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #31
  br label %bb.ct

bb.cs:                                            ; preds = %.invoke216, %bb.ck, %_ZNK8facebook5velox4exec11DecodedArgs2atEi.exit
  %i.qh = landingpad { ptr, i32 }
          cleanup
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.cr
  %.pn45 = phi { ptr, i32 } [ %i.qh, %bb.cs ], [ %i.qg, %bb.cr ]
  call void @_ZN8facebook5velox4exec11DecodedArgsD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %22) #31
  br label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %bb.cq
  %.pn45.pn = phi { ptr, i32 } [ %.pn45, %bb.ct ], [ %i.qf, %bb.cq ]
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
  %i.qi = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.qj = load i32, ptr %i.qi, align 8, !tbaa !229
  store i32 %i.qj, ptr %i.c, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #31
  call void @llvm.experimental.noalias.scope.decl(metadata !284)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %26, i8 0, i64 24, i1 false)
  %i.qk = invoke noalias noundef nonnull dereferenceable(192) ptr @_Znwm(i64 noundef 192) #32
          to label %.noexc143 unwind label %bb.ea ; 6 uses

.noexc143:                                        ; preds = %bb.cv
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qk, i64 8
  store i32 1, ptr %i.ql, align 8, !tbaa !42, !noalias !284
  %i.qm = getelementptr inbounds nuw i8, ptr %i.qk, i64 12
  store i32 1, ptr %i.qm, align 4, !tbaa !44, !noalias !284
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN8facebook5velox10FlatVectorIbEESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.qk, align 8, !tbaa !45, !noalias !284
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qk, i64 16 ; 2 uses
  invoke void @_ZSt10_ConstructIN8facebook5velox10FlatVectorIbEEJRPNS1_6memory10MemoryPoolESt10shared_ptrIKNS1_10ScalarTypeILNS1_8TypeKindE0EEEEDniRN5boost13intrusive_ptrINS1_6BufferEEESt6vectorISH_SaISH_EEEEvPT_DpOT0_(ptr noundef nonnull %i.qn, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %25, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef nonnull align 8 dereferenceable(24) %26)
          to label %bb.cw unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN8facebook5velox10FlatVectorIbEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit14.i.i.i.i, !noalias !284

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN8facebook5velox10FlatVectorIbEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit14.i.i.i.i: ; preds = %.noexc143
  %i.qo = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.qk, i64 noundef 192) #33, !noalias !284
  br label %.body

bb.cw:                                            ; preds = %.noexc143
  %i.qp = getelementptr inbounds nuw i8, ptr %24, i64 8 ; 3 uses
  store ptr %i.qk, ptr %i.qp, align 8, !tbaa !37, !alias.scope !284
  store ptr %i.qn, ptr %24, align 16, !tbaa !287, !alias.scope !284
  %i.qq = load ptr, ptr %26, align 8, !tbaa !289  ; 3 uses
  %i.qr = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.qs = load ptr, ptr %i.qr, align 8, !tbaa !292 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.qq, %i.qs
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.cw, %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.rh, %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i ], [ %i.qq, %bb.cw ] ; 2 uses
  %i.qt = load ptr, ptr %.05.i.i.i, align 8, !tbaa !241 ; 7 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.qt, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i, label %bb.cx

bb.cx:                                            ; preds = %.lr.ph.i.i.i
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qt, i64 40
  %i.qv = atomicrmw sub ptr %i.qu, i32 1 acq_rel, align 4
  %i.qw = icmp eq i32 %i.qv, 1
  br i1 %i.qw, label %.sink.split.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i

.sink.split.i.i.i.i.i.i.i:                        ; preds = %bb.cx
  %i.qx = load ptr, ptr %i.qt, align 8, !tbaa !45
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qx, i64 64
  %i.qz = load ptr, ptr %i.qy, align 8
  invoke void %i.qz(ptr noundef nonnull align 8 dereferenceable(64) %i.qt)
          to label %.noexc.i.i.i.i.i.i unwind label %bb.cy, !inline_history !247

.noexc.i.i.i.i.i.i:                               ; preds = %.sink.split.i.i.i.i.i.i.i
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qt, i64 8
  %i.rb = load ptr, ptr %i.ra, align 8, !tbaa !248
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.rb, null
  %i.rc = load ptr, ptr %i.qt, align 8, !tbaa !45
  %..i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i, i64 8, i64 48
  %i.rd = getelementptr inbounds nuw i8, ptr %i.rc, i64 %..i.i.i.i.i.i.i
  %i.re = load ptr, ptr %i.rd, align 8
  invoke void %i.re(ptr noundef nonnull align 8 dereferenceable(64) %i.qt)
          to label %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i unwind label %bb.cy, !inline_history !247

bb.cy:                                            ; preds = %.noexc.i.i.i.i.i.i, %.sink.split.i.i.i.i.i.i.i
  %i.rf = landingpad { ptr, i32 }
          catch ptr null
  %i.rg = extractvalue { ptr, i32 } %i.rf, 0
  call void @__clang_call_terminate(ptr %i.rg) #34
  unreachable

_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i: ; preds = %.noexc.i.i.i.i.i.i, %bb.cx, %.lr.ph.i.i.i
  %i.rh = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i144 = icmp eq ptr %i.rh, %i.qs
  br i1 %.not.i.i.i144, label %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !293

_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i
end_hunk_1
