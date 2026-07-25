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
  %wide.trip.count186 = zext nneg i32 %i.hc to i64
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
  %wide.trip.count = zext nneg i32 %i.mo to i64
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
begin_hunk_2_@_ZSt6__sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEEvT_SG_T0_:bb.a
  %.sroa.05.011.i.i = phi ptr [ %.sroa.0.012.i.i, %.lr.ph.i.i8 ], [ %.sroa.0.021.i.ptr, %bb.h ]
  %i.aa = load i32, ptr %.sroa.0.012.i.i, align 4, !tbaa !3
  store i32 %i.aa, ptr %.sroa.05.011.i.i, align 4, !tbaa !3
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.0.012.i.i, i64 -4 ; 2 uses
  %i.ab = load i32, ptr %.sroa.0.0.i.i, align 4, !tbaa !3
  %.sroa.01.0.copyload.i.i.i.i = load i64, ptr %3, align 4
  %i.ac = load ptr, ptr %2, align 8, !tbaa !45
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 80
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = tail call i64 %i.ae(ptr noundef nonnull align 8 dereferenceable(94) %2, ptr noundef nonnull %2, i32 noundef %i.q, i32 noundef %i.ab, i64 %.sroa.01.0.copyload.i.i.i.i), !inline_history !864
  %i.ag = and i64 %i.af, 6442450944
  %.not.i.i = icmp eq i64 %i.ag, 4294967296
  br i1 %.not.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i, label %.lr.ph.i.i8, !llvm.loop !865

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i: ; preds = %.lr.ph.i.i8, %bb.h, %bb.g, %bb.f
  %.sink.i = phi ptr [ %0, %bb.g ], [ %0, %bb.f ], [ %.sroa.0.021.i.ptr, %bb.h ], [ %.sroa.0.012.i.i, %.lr.ph.i.i8 ]
  store i32 %i.q, ptr %.sink.i, align 4, !tbaa !3
  %.sroa.0.021.i.add = add nuw nsw i64 %.sroa.0.021.i.idx, 4 ; 2 uses
  %i.ah = icmp eq i64 %.sroa.0.021.i.add, 64
  br i1 %i.ah, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEEvT_SG_T0_.exit, label %bb.d, !llvm.loop !866

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEEvT_SG_T0_.exit: ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %1
  br i1 %i.aj, label %_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEEvT_SG_T0_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEEvT_SG_T0_.exit, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEEvT_T0_.exit.i.i
  %.sroa.0.09.i.i = phi ptr [ %i.ay, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEEvT_T0_.exit.i.i ], [ %i.ai, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEEvT_SG_T0_.exit ] ; 5 uses
  %i.ak = load i32, ptr %.sroa.0.09.i.i, align 4, !tbaa !3 ; 3 uses
  %.sroa.0.08.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.09.i.i, i64 -4 ; 2 uses
  %i.al = load i32, ptr %.sroa.0.08.i.i.i, align 4, !tbaa !3
  %.sroa.01.0.copyload.i.i9.i.i.i = load i64, ptr %3, align 4
  %i.am = load ptr, ptr %2, align 8, !tbaa !45
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 80
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = tail call i64 %i.ao(ptr noundef nonnull align 8 dereferenceable(94) %2, ptr noundef nonnull %2, i32 noundef %i.ak, i32 noundef %i.al, i64 %.sroa.01.0.copyload.i.i9.i.i.i), !inline_history !867
  %i.aq = and i64 %i.ap, 6442450944
  %.not10.i.i.i = icmp eq i64 %i.aq, 4294967296
  br i1 %.not10.i.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEEvT_T0_.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i, %.lr.ph.i.i.i
  %.sroa.0.012.i.i.i = phi ptr [ %.sroa.0.0.i.i.i, %.lr.ph.i.i.i ], [ %.sroa.0.08.i.i.i, %.lr.ph.i.i ] ; 4 uses
  %.sroa.05.011.i.i.i = phi ptr [ %.sroa.0.012.i.i.i, %.lr.ph.i.i.i ], [ %.sroa.0.09.i.i, %.lr.ph.i.i ]
  %i.ar = load i32, ptr %.sroa.0.012.i.i.i, align 4, !tbaa !3
  store i32 %i.ar, ptr %.sroa.05.011.i.i.i, align 4, !tbaa !3
  %.sroa.0.0.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.012.i.i.i, i64 -4 ; 2 uses
  %i.as = load i32, ptr %.sroa.0.0.i.i.i, align 4, !tbaa !3
  %.sroa.01.0.copyload.i.i.i.i.i = load i64, ptr %3, align 4
  %i.at = load ptr, ptr %2, align 8, !tbaa !45
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 80
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = tail call i64 %i.av(ptr noundef nonnull align 8 dereferenceable(94) %2, ptr noundef nonnull %2, i32 noundef %i.ak, i32 noundef %i.as, i64 %.sroa.01.0.copyload.i.i.i.i.i), !inline_history !867
  %i.ax = and i64 %i.aw, 6442450944
  %.not.i.i.i = icmp eq i64 %i.ax, 4294967296
  br i1 %.not.i.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEEvT_T0_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !865

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEEvT_T0_.exit.i.i: ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i
  %.sroa.05.0.lcssa.i.i.i = phi ptr [ %.sroa.0.09.i.i, %.lr.ph.i.i ], [ %.sroa.0.012.i.i.i, %.lr.ph.i.i.i ]
  store i32 %i.ak, ptr %.sroa.05.0.lcssa.i.i.i, align 4, !tbaa !3
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.0.09.i.i, i64 4 ; 2 uses
  %i.az = icmp eq ptr %i.ay, %1
  br i1 %i.az, label %_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEEvT_SG_T0_.exit, label %.lr.ph.i.i, !llvm.loop !868

bb.i:                                             ; preds = %bb.b
  tail call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEEvT_SG_T0_(ptr %0, ptr %1, ptr %2, ptr %3)
  br label %_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEEvT_SG_T0_.exit

_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEEvT_SG_T0_.exit: ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEEvT_T0_.exit.i.i, %bb.i, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEEvT_SG_T0_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEEvT_SG_T0_T1_(ptr %0, ptr %1, i64 noundef %2, ptr %3, ptr %4) local_unnamed_addr #0 comdat {
bb.a:
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8 ; 5 uses
  %6 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8 ; 5 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = ashr exact i64 %i.c, 2                   ; 2 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph27

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEET_SG_SG_T0_.exit
  %i.h = icmp eq i64 %i.af, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph27, !llvm.loop !869

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %storemerge19.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.016.1.i.i, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store ptr %3, ptr %6, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %4, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store ptr %3, ptr %5, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %4, ptr %i.j, align 8
  call void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEEvT_SG_RT0_(ptr %0, ptr %storemerge19.lcssa, ptr noundef nonnull align 8 dereferenceable(16) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEEvT_SG_RT0_(ptr %0, ptr %storemerge19.lcssa, ptr noundef nonnull align 8 dereferenceable(16) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %.loopexit

.lr.ph27:                                         ; preds = %.lr.ph, %bb.b
  %storemerge1926 = phi ptr [ %.sroa.016.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.02025 = phi i64 [ %i.af, %bb.b ], [ %2, %.lr.ph ]
  %i.k = phi i64 [ %i.ai, %bb.b ], [ %i.d, %.lr.ph ]
  %i.l = lshr i64 %i.k, 1
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.l
  %i.n = getelementptr inbounds i8, ptr %storemerge1926, i64 -4
  tail call void @_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEEvT_SG_SG_SG_T0_(ptr %0, ptr nonnull %i.f, ptr %i.m, ptr nonnull %i.n, ptr %3, ptr %4)
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %.lr.ph27
  %.sroa.013.0.i.i = phi ptr [ %storemerge1926, %.lr.ph27 ], [ %.sroa.013.1.i.i, %bb.f ]
  %.sroa.016.0.i.i = phi ptr [ %i.f, %.lr.ph27 ], [ %i.v, %bb.f ]
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %.sroa.016.1.i.i = phi ptr [ %.sroa.016.0.i.i, %bb.c ], [ %i.v, %bb.d ] ; 9 uses
  %i.o = load i32, ptr %.sroa.016.1.i.i, align 4, !tbaa !3
  %i.p = load i32, ptr %0, align 4, !tbaa !3
  %.sroa.01.0.copyload.i.i.i.i = load i64, ptr %4, align 4
  %i.q = load ptr, ptr %3, align 8, !tbaa !45
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 80
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = tail call i64 %i.s(ptr noundef nonnull align 8 dereferenceable(94) %3, ptr noundef nonnull %3, i32 noundef %i.o, i32 noundef %i.p, i64 %.sroa.01.0.copyload.i.i.i.i), !inline_history !870
  %i.u = and i64 %i.t, 6442450944
  %.not.i.i = icmp eq i64 %i.u, 4294967296
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.016.1.i.i, i64 4 ; 2 uses
  br i1 %.not.i.i, label %.preheader.i.i, label %bb.d, !llvm.loop !871

.preheader.i.i:                                   ; preds = %bb.d, %.preheader.i.i
  %.sroa.013.0.pn.i.i = phi ptr [ %.sroa.013.1.i.i, %.preheader.i.i ], [ %.sroa.013.0.i.i, %bb.d ]
  %.sroa.013.1.i.i = getelementptr inbounds i8, ptr %.sroa.013.0.pn.i.i, i64 -4 ; 6 uses
  %i.w = load i32, ptr %0, align 4, !tbaa !3
  %i.x = load i32, ptr %.sroa.013.1.i.i, align 4, !tbaa !3
  %.sroa.01.0.copyload.i.i10.i.i = load i64, ptr %4, align 4
  %i.y = load ptr, ptr %3, align 8, !tbaa !45
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 80
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = tail call i64 %i.aa(ptr noundef nonnull align 8 dereferenceable(94) %3, ptr noundef nonnull %3, i32 noundef %i.w, i32 noundef %i.x, i64 %.sroa.01.0.copyload.i.i10.i.i), !inline_history !870
  %i.ac = and i64 %i.ab, 6442450944
  %.not19.i.i = icmp eq i64 %i.ac, 4294967296
  br i1 %.not19.i.i, label %bb.e, label %.preheader.i.i, !llvm.loop !872

bb.e:                                             ; preds = %.preheader.i.i
  %.not20.i.i = icmp ult ptr %.sroa.016.1.i.i, %.sroa.013.1.i.i
  br i1 %.not20.i.i, label %bb.f, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEET_SG_SG_T0_.exit

bb.f:                                             ; preds = %bb.e
  %i.ad = load i32, ptr %.sroa.016.1.i.i, align 4, !tbaa !3
  %i.ae = load i32, ptr %.sroa.013.1.i.i, align 4, !tbaa !3
  store i32 %i.ae, ptr %.sroa.016.1.i.i, align 4, !tbaa !3
  store i32 %i.ad, ptr %.sroa.013.1.i.i, align 4, !tbaa !3
  br label %bb.c, !llvm.loop !873

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEET_SG_SG_T0_.exit: ; preds = %bb.e
  %i.af = add nsw i64 %.02025, -1                 ; 3 uses
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEEvT_SG_T0_T1_(ptr nonnull %.sroa.016.1.i.i, ptr %storemerge1926, i64 noundef %i.af, ptr nonnull %3, ptr nonnull %4)
  %i.ag = ptrtoint ptr %.sroa.016.1.i.i to i64
  %i.ah = sub i64 %i.ag, %i.a
  %i.ai = ashr exact i64 %i.ah, 2                 ; 2 uses
  %i.aj = icmp sgt i64 %i.ai, 16
  br i1 %i.aj, label %bb.b, label %.loopexit, !llvm.loop !869

.loopexit:                                        ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEET_SG_SG_T0_.exit, %bb.a, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEEvT_SG_RT0_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = icmp sgt i64 %i.c, 4
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEEvT_SG_SG_RT0_.exit
  %.sroa.0.05 = phi ptr [ %1, %.lr.ph ], [ %i.e, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEEvT_SG_SG_RT0_.exit ]
  %i.e = getelementptr inbounds i8, ptr %.sroa.0.05, i64 -4 ; 4 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !3    ; 2 uses
  %i.g = load i32, ptr %0, align 4, !tbaa !3
  store i32 %i.g, ptr %i.e, align 4, !tbaa !3
  %i.h = ptrtoint ptr %i.e to i64
  %i.i = sub i64 %i.h, %i.a                       ; 3 uses
  %i.j = ashr exact i64 %i.i, 2                   ; 3 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %2, align 8, !tbaa !694 ; 6 uses
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !874 ; 2 uses
  %i.k = add nsw i64 %i.j, -1
  %3 = sdiv i64 %i.k, 2
  %i.l = icmp sgt i64 %i.j, 2
  br i1 %i.l, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %.lr.ph.i.i
  %.037.i.i = phi i64 [ %spec.select.i.i, %.lr.ph.i.i ], [ 0, %bb.b ] ; 2 uses
  %i.m = shl i64 %.037.i.i, 1                     ; 2 uses
  %i.n = add i64 %i.m, 2                          ; 2 uses
  %i.o = getelementptr inbounds [4 x i8], ptr %0, i64 %i.n
  %i.p = or disjoint i64 %i.m, 1                  ; 2 uses
  %i.q = getelementptr inbounds [4 x i8], ptr %0, i64 %i.p
  %i.r = load i32, ptr %i.o, align 4, !tbaa !3
  %i.s = load i32, ptr %i.q, align 4, !tbaa !3
  %.sroa.01.0.copyload.i.i.i.i = load i64, ptr %.sroa.2.0.copyload.i, align 4
  %i.t = load ptr, ptr %.sroa.0.0.copyload.i, align 8, !tbaa !45
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 80
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = tail call i64 %i.v(ptr noundef nonnull align 8 dereferenceable(94) %.sroa.0.0.copyload.i, ptr noundef nonnull %.sroa.0.0.copyload.i, i32 noundef %i.r, i32 noundef %i.s, i64 %.sroa.01.0.copyload.i.i.i.i), !inline_history !876
  %i.x = and i64 %i.w, 6442450944
  %.not.i.i = icmp eq i64 %i.x, 4294967296
  %spec.select.i.i = select i1 %.not.i.i, i64 %i.n, i64 %i.p ; 4 uses
  %i.y = getelementptr inbounds [4 x i8], ptr %0, i64 %spec.select.i.i
  %i.z = load i32, ptr %i.y, align 4, !tbaa !3
  %i.aa = getelementptr inbounds [4 x i8], ptr %0, i64 %.037.i.i
  store i32 %i.z, ptr %i.aa, align 4, !tbaa !3
  %i.ab = icmp slt i64 %spec.select.i.i, %3
  br i1 %i.ab, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !877

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %bb.b
  %.0.lcssa.i.i = phi i64 [ 0, %bb.b ], [ %spec.select.i.i, %.lr.ph.i.i ] ; 5 uses
  %i.ac = and i64 %i.i, 4
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.ae = add nsw i64 %i.j, -2
  %i.af = ashr exact i64 %i.ae, 1
  %i.ag = icmp eq i64 %.0.lcssa.i.i, %i.af
  br i1 %i.ag, label %.thread.i, label %bb.d

.thread.i:                                        ; preds = %bb.c
  %i.ah = shl nuw nsw i64 %.0.lcssa.i.i, 1
  %i.ai = or disjoint i64 %i.ah, 1                ; 2 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !3
  %i.al = getelementptr inbounds [4 x i8], ptr %0, i64 %.0.lcssa.i.i
  store i32 %i.ak, ptr %i.al, align 4, !tbaa !3
  br label %.lr.ph.i.i.i.preheader

bb.d:                                             ; preds = %bb.c, %._crit_edge.i.i
  %.not.i = icmp eq i64 %.0.lcssa.i.i, 0
  br i1 %.not.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEEvT_SG_SG_RT0_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.d, %.thread.i
  %.019.i.i.i.ph = phi i64 [ %.0.lcssa.i.i, %bb.d ], [ %i.ai, %.thread.i ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %bb.e
  %.019.i.i.i = phi i64 [ %.0920.i.i67.i, %bb.e ], [ %.019.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %.0920.in.i.i.i = add nsw i64 %.019.i.i.i, -1
  %.0920.i.i67.i = lshr i64 %.0920.in.i.i.i, 1    ; 3 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0920.i.i67.i ; 2 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !3
  %.sroa.01.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.2.0.copyload.i, align 4
  %i.ao = load ptr, ptr %.sroa.0.0.copyload.i, align 8, !tbaa !45
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 80
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = tail call i64 %i.aq(ptr noundef nonnull align 8 dereferenceable(94) %.sroa.0.0.copyload.i, ptr noundef nonnull %.sroa.0.0.copyload.i, i32 noundef %i.an, i32 noundef %i.f, i64 %.sroa.01.0.copyload.i.i.i.i.i), !inline_history !878
  %i.as = and i64 %i.ar, 6442450944
  %.not.i.i.i = icmp eq i64 %i.as, 4294967296
  br i1 %.not.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEEvT_SG_SG_RT0_.exit, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.at = load i32, ptr %i.am, align 4, !tbaa !3
  %i.au = getelementptr inbounds [4 x i8], ptr %0, i64 %.019.i.i.i
  store i32 %i.at, ptr %i.au, align 4, !tbaa !3
  %.not8.i = icmp eq i64 %.0920.i.i67.i, 0
  br i1 %.not8.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEEvT_SG_SG_RT0_.exit, label %.lr.ph.i.i.i, !llvm.loop !879

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEEvT_SG_SG_RT0_.exit: ; preds = %.lr.ph.i.i.i, %bb.e, %bb.d
  %.0.lcssa.i.i.i = phi i64 [ 0, %bb.d ], [ %.019.i.i.i, %.lr.ph.i.i.i ], [ 0, %bb.e ]
  %i.av = getelementptr inbounds [4 x i8], ptr %0, i64 %.0.lcssa.i.i.i
  store i32 %i.f, ptr %i.av, align 4, !tbaa !3
  %i.aw = icmp sgt i64 %i.i, 4
  br i1 %i.aw, label %bb.b, label %._crit_edge, !llvm.loop !880

._crit_edge:                                      ; preds = %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEEvT_SG_SG_RT0_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEEvT_SG_RT0_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 2                   ; 3 uses
  %i.e = icmp slt i64 %i.d, 2
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i64 %i.d, -2                     ; 3 uses
  %i.g = lshr i64 %i.f, 1
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = add nsw i64 %i.d, -1
  %i.i = lshr i64 %i.h, 1                         ; 2 uses
  %i.j = and i64 %i.c, 4
  %i.k = icmp eq i64 %i.j, 0
  %i.l = lshr exact i64 %i.f, 1                   ; 2 uses
  %i.m = or disjoint i64 %i.f, 1                  ; 2 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.m
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.l
  br label %bb.c

bb.c:                                             ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEEvT_T0_SH_T1_T2_.exit, %bb.b
  %.09 = phi i64 [ %i.g, %bb.b ], [ %i.aw, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEEvT_T0_SH_T1_T2_.exit ] ; 8 uses
  %i.p = getelementptr inbounds [4 x i8], ptr %0, i64 %.09
  %i.q = load i32, ptr %i.p, align 4, !tbaa !3    ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !tbaa !694 ; 6 uses
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !874 ; 2 uses
  %i.r = icmp slt i64 %.09, %i.i
  br i1 %i.r, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %.037.i = phi i64 [ %spec.select.i, %.lr.ph.i ], [ %.09, %bb.c ] ; 2 uses
  %i.s = shl i64 %.037.i, 1                       ; 2 uses
  %i.t = add i64 %i.s, 2                          ; 2 uses
  %i.u = getelementptr inbounds [4 x i8], ptr %0, i64 %i.t
  %i.v = or disjoint i64 %i.s, 1                  ; 2 uses
  %i.w = getelementptr inbounds [4 x i8], ptr %0, i64 %i.v
  %i.x = load i32, ptr %i.u, align 4, !tbaa !3
  %i.y = load i32, ptr %i.w, align 4, !tbaa !3
  %.sroa.01.0.copyload.i.i.i = load i64, ptr %.sroa.2.0.copyload, align 4
  %i.z = load ptr, ptr %.sroa.0.0.copyload, align 8, !tbaa !45
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 80
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = tail call i64 %i.ab(ptr noundef nonnull align 8 dereferenceable(94) %.sroa.0.0.copyload, ptr noundef nonnull %.sroa.0.0.copyload, i32 noundef %i.x, i32 noundef %i.y, i64 %.sroa.01.0.copyload.i.i.i), !inline_history !881
  %i.ad = and i64 %i.ac, 6442450944
  %.not.i = icmp eq i64 %i.ad, 4294967296
  %spec.select.i = select i1 %.not.i, i64 %i.t, i64 %i.v ; 4 uses
  %i.ae = getelementptr inbounds [4 x i8], ptr %0, i64 %spec.select.i
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !3
  %i.ag = getelementptr inbounds [4 x i8], ptr %0, i64 %.037.i
  store i32 %i.af, ptr %i.ag, align 4, !tbaa !3
  %i.ah = icmp slt i64 %spec.select.i, %i.i
  br i1 %i.ah, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !877

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.c
  %.0.lcssa.i = phi i64 [ %.09, %bb.c ], [ %spec.select.i, %.lr.ph.i ] ; 2 uses
  %i.ai = icmp eq i64 %.0.lcssa.i, %i.l
  %or.cond = select i1 %i.k, i1 %i.ai, i1 false
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i
  %i.aj = load i32, ptr %i.n, align 4, !tbaa !3
  store i32 %i.aj, ptr %i.o, align 4, !tbaa !3
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i
  %.1.i = phi i64 [ %i.m, %bb.d ], [ %.0.lcssa.i, %._crit_edge.i ] ; 3 uses
  %i.ak = icmp sgt i64 %.1.i, %.09
  br i1 %i.ak, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEEvT_T0_SH_T1_T2_.exit

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.f
  %.019.i.i = phi i64 [ %.0920.i.i, %bb.f ], [ %.1.i, %bb.e ] ; 3 uses
  %.0920.in.i.i = add nsw i64 %.019.i.i, -1
  %.0920.i.i = sdiv i64 %.0920.in.i.i, 2          ; 4 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0920.i.i ; 2 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !3
  %.sroa.01.0.copyload.i.i.i.i = load i64, ptr %.sroa.2.0.copyload, align 4
  %i.an = load ptr, ptr %.sroa.0.0.copyload, align 8, !tbaa !45
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 80
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = tail call i64 %i.ap(ptr noundef nonnull align 8 dereferenceable(94) %.sroa.0.0.copyload, ptr noundef nonnull %.sroa.0.0.copyload, i32 noundef %i.am, i32 noundef %i.q, i64 %.sroa.01.0.copyload.i.i.i.i), !inline_history !882
  %i.ar = and i64 %i.aq, 6442450944
  %.not.i.i = icmp eq i64 %i.ar, 4294967296
  br i1 %.not.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEEvT_T0_SH_T1_T2_.exit, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.as = load i32, ptr %i.al, align 4, !tbaa !3
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.019.i.i
  store i32 %i.as, ptr %i.at, align 4, !tbaa !3
  %i.au = icmp sgt i64 %.0920.i.i, %.09
  br i1 %i.au, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEEvT_T0_SH_T1_T2_.exit, !llvm.loop !879

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEEvT_T0_SH_T1_T2_.exit: ; preds = %.lr.ph.i.i, %bb.f, %bb.e
  %.0.lcssa.i.i = phi i64 [ %.1.i, %bb.e ], [ %.0920.i.i, %bb.f ], [ %.019.i.i, %.lr.ph.i.i ]
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0.lcssa.i.i
  store i32 %i.q, ptr %i.av, align 4, !tbaa !3
  %.not = icmp eq i64 %.09, 0
  %i.aw = add nsw i64 %.09, -1
  br i1 %.not, label %.loopexit, label %bb.c, !llvm.loop !883

.loopexit:                                        ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEEvT_T0_SH_T1_T2_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEEvT_SG_SG_SG_T0_(ptr %0, ptr %1, ptr %2, ptr %3, ptr %4, ptr %5) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !3
  %i.b = load i32, ptr %2, align 4, !tbaa !3
  %.sroa.01.0.copyload.i.i = load i64, ptr %5, align 4
  %i.c = load ptr, ptr %4, align 8, !tbaa !45
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call i64 %i.e(ptr noundef nonnull align 8 dereferenceable(94) %4, ptr noundef nonnull %4, i32 noundef %i.a, i32 noundef %i.b, i64 %.sroa.01.0.copyload.i.i), !inline_history !884
  %i.g = and i64 %i.f, 6442450944
  %.not = icmp eq i64 %i.g, 4294967296
  %i.h = load i32, ptr %3, align 4, !tbaa !3      ; 2 uses
  %.sroa.01.0.copyload.i.i28 = load i64, ptr %5, align 4 ; 2 uses
  %i.i = load ptr, ptr %4, align 8, !tbaa !45
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 80
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = load i32, ptr %2, align 4, !tbaa !3
  %i.m = tail call i64 %i.k(ptr noundef nonnull align 8 dereferenceable(94) %4, ptr noundef nonnull %4, i32 noundef %i.l, i32 noundef %i.h, i64 %.sroa.01.0.copyload.i.i28), !inline_history !884
  %i.n = and i64 %i.m, 6442450944
  %.not40 = icmp eq i64 %i.n, 4294967296
  br i1 %.not40, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = load i32, ptr %0, align 4, !tbaa !3
  %i.p = load i32, ptr %2, align 4, !tbaa !3
  store i32 %i.p, ptr %0, align 4, !tbaa !3
  store i32 %i.o, ptr %2, align 4, !tbaa !3
  br label %bb.l

bb.d:                                             ; preds = %bb.b
  %i.q = load i32, ptr %1, align 4, !tbaa !3
  %i.r = load i32, ptr %3, align 4, !tbaa !3
  %.sroa.01.0.copyload.i.i27 = load i64, ptr %5, align 4
  %i.s = load ptr, ptr %4, align 8, !tbaa !45
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 80
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = tail call i64 %i.u(ptr noundef nonnull align 8 dereferenceable(94) %4, ptr noundef nonnull %4, i32 noundef %i.q, i32 noundef %i.r, i64 %.sroa.01.0.copyload.i.i27), !inline_history !884
  %i.w = and i64 %i.v, 6442450944
  %.not41 = icmp eq i64 %i.w, 4294967296
  %i.x = load i32, ptr %0, align 4, !tbaa !3      ; 2 uses
  br i1 %.not41, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = load i32, ptr %3, align 4, !tbaa !3
  store i32 %i.y, ptr %0, align 4, !tbaa !3
end_hunk_2
begin_hunk_3_@_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEEvT_SI_T0_T1_:bb.a
  %storemerge15.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.013.1.i.i, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  call void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEEvT_SI_RT0_(ptr %0, ptr %storemerge15.lcssa, ptr noundef nonnull align 8 dereferenceable(24) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEEvT_SI_RT0_(ptr %0, ptr %storemerge15.lcssa, ptr noundef nonnull align 8 dereferenceable(24) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %.loopexit

.lr.ph23:                                         ; preds = %.lr.ph23.preheader, %bb.b
  %storemerge1522 = phi ptr [ %.sroa.013.1.i.i, %bb.b ], [ %1, %.lr.ph23.preheader ] ; 3 uses
  %.01621 = phi i64 [ %i.ar, %bb.b ], [ %2, %.lr.ph23.preheader ]
  %i.i = phi i64 [ %i.au, %bb.b ], [ %i.d, %.lr.ph23.preheader ]
  %.sroa.0.0.copyload = load ptr, ptr %3, align 8 ; 6 uses
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8 ; 2 uses
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %i.j = lshr i64 %i.i, 1
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.j
  %i.l = getelementptr inbounds i8, ptr %storemerge1522, i64 -4
  tail call void @_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEEvT_SI_SI_SI_T0_(ptr %0, ptr nonnull %i.f, ptr %i.k, ptr nonnull %i.l, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.354") align 8 %3)
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %.lr.ph23
  %.sroa.013.0.i.i = phi ptr [ %i.f, %.lr.ph23 ], [ %i.aa, %bb.f ]
  %.sroa.0.0.i.i = phi ptr [ %storemerge1522, %.lr.ph23 ], [ %.sroa.0.1.i.i, %bb.f ]
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %.sroa.013.1.i.i = phi ptr [ %.sroa.013.0.i.i, %bb.c ], [ %i.aa, %bb.d ] ; 9 uses
  %i.m = load i32, ptr %.sroa.013.1.i.i, align 4, !tbaa !3
  %i.n = load i32, ptr %0, align 4, !tbaa !3
  %i.o = load ptr, ptr %.sroa.4.0.copyload, align 8, !tbaa !667 ; 2 uses
  %i.p = sext i32 %i.m to i64
  %i.q = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.p
  %i.r = load i32, ptr %i.q, align 4, !tbaa !3
  %i.s = sext i32 %i.n to i64
  %i.t = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.s
  %i.u = load i32, ptr %i.t, align 4, !tbaa !3
  %.sroa.01.0.copyload.i.i.i.i = load i64, ptr %.sroa.5.0.copyload, align 4
  %i.v = load ptr, ptr %.sroa.0.0.copyload, align 8, !tbaa !45
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 80
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = tail call i64 %i.x(ptr noundef nonnull align 8 dereferenceable(94) %.sroa.0.0.copyload, ptr noundef nonnull %.sroa.0.0.copyload, i32 noundef %i.r, i32 noundef %i.u, i64 %.sroa.01.0.copyload.i.i.i.i), !inline_history !887
  %i.z = and i64 %i.y, 6442450944
  %.not.i.i = icmp eq i64 %i.z, 4294967296
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.013.1.i.i, i64 4 ; 2 uses
  br i1 %.not.i.i, label %.preheader.i.i, label %bb.d, !llvm.loop !888

.preheader.i.i:                                   ; preds = %bb.d, %.preheader.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %bb.d ]
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -4 ; 6 uses
  %i.ab = load i32, ptr %0, align 4, !tbaa !3
  %i.ac = load i32, ptr %.sroa.0.1.i.i, align 4, !tbaa !3
  %i.ad = load ptr, ptr %.sroa.4.0.copyload, align 8, !tbaa !667 ; 2 uses
  %i.ae = sext i32 %i.ab to i64
  %i.af = getelementptr inbounds [4 x i8], ptr %i.ad, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !3
  %i.ah = sext i32 %i.ac to i64
  %i.ai = getelementptr inbounds [4 x i8], ptr %i.ad, i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !3
  %.sroa.01.0.copyload.i.i10.i.i = load i64, ptr %.sroa.5.0.copyload, align 4
  %i.ak = load ptr, ptr %.sroa.0.0.copyload, align 8, !tbaa !45
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 80
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = tail call i64 %i.am(ptr noundef nonnull align 8 dereferenceable(94) %.sroa.0.0.copyload, ptr noundef nonnull %.sroa.0.0.copyload, i32 noundef %i.ag, i32 noundef %i.aj, i64 %.sroa.01.0.copyload.i.i10.i.i), !inline_history !887
  %i.ao = and i64 %i.an, 6442450944
  %.not16.i.i = icmp eq i64 %i.ao, 4294967296
  br i1 %.not16.i.i, label %bb.e, label %.preheader.i.i, !llvm.loop !889

bb.e:                                             ; preds = %.preheader.i.i
  %.not17.i.i = icmp ult ptr %.sroa.013.1.i.i, %.sroa.0.1.i.i
  br i1 %.not17.i.i, label %bb.f, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEET_SI_SI_T0_.exit

bb.f:                                             ; preds = %bb.e
  %i.ap = load i32, ptr %.sroa.013.1.i.i, align 4, !tbaa !3
  %i.aq = load i32, ptr %.sroa.0.1.i.i, align 4, !tbaa !3
  store i32 %i.aq, ptr %.sroa.013.1.i.i, align 4, !tbaa !3
  store i32 %i.ap, ptr %.sroa.0.1.i.i, align 4, !tbaa !3
  br label %bb.c, !llvm.loop !890

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEET_SI_SI_T0_.exit: ; preds = %bb.e
  %i.ar = add nsw i64 %.01621, -1                 ; 3 uses
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEEvT_SI_T0_T1_(ptr nonnull %.sroa.013.1.i.i, ptr %storemerge1522, i64 noundef %i.ar, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.354") align 8 %3)
  %i.as = ptrtoint ptr %.sroa.013.1.i.i to i64
  %i.at = sub i64 %i.as, %i.a
  %i.au = ashr exact i64 %i.at, 2                 ; 2 uses
  %i.av = icmp sgt i64 %i.au, 16
  br i1 %i.av, label %bb.b, label %.loopexit, !llvm.loop !886

.loopexit:                                        ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEET_SI_SI_T0_.exit, %bb.a, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEEvT_SI_T0_(ptr %0, ptr %1, ptr noundef byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.354") align 8 %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 64
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  tail call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEEvT_SI_T0_(ptr %0, ptr nonnull %i.e, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.354") align 8 %2)
  %.sroa.0.sroa.0.0.copyload = load ptr, ptr %2, align 8, !tbaa !694 ; 6 uses
  %.sroa.0.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.0.sroa.2.0.copyload = load ptr, ptr %.sroa.0.sroa.2.0..sroa_idx, align 8, !tbaa !891 ; 2 uses
  %.sroa.0.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.0.sroa.3.0.copyload = load ptr, ptr %.sroa.0.sroa.3.0..sroa_idx, align 8, !tbaa !874 ; 2 uses
  %i.f = icmp eq ptr %i.e, %1
  br i1 %i.f, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEEvT_SI_T0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEEvT_T0_.exit.i
  %.sroa.03.08.i = phi ptr [ %i.ah, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEEvT_T0_.exit.i ], [ %i.e, %bb.b ] ; 5 uses
  %i.g = load i32, ptr %.sroa.03.08.i, align 4, !tbaa !3 ; 2 uses
  %i.h = sext i32 %i.g to i64                     ; 2 uses
  %.sroa.0.07.i.i = getelementptr inbounds i8, ptr %.sroa.03.08.i, i64 -4 ; 2 uses
  %i.i = load i32, ptr %.sroa.0.07.i.i, align 4, !tbaa !3
  %i.j = load ptr, ptr %.sroa.0.sroa.2.0.copyload, align 8, !tbaa !667 ; 2 uses
  %i.k = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.h
  %i.l = load i32, ptr %i.k, align 4, !tbaa !3
  %i.m = sext i32 %i.i to i64
  %i.n = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.m
  %i.o = load i32, ptr %i.n, align 4, !tbaa !3
  %.sroa.01.0.copyload.i.i8.i.i = load i64, ptr %.sroa.0.sroa.3.0.copyload, align 4
  %i.p = load ptr, ptr %.sroa.0.sroa.0.0.copyload, align 8, !tbaa !45
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 80
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = tail call i64 %i.r(ptr noundef nonnull align 8 dereferenceable(94) %.sroa.0.sroa.0.0.copyload, ptr noundef nonnull %.sroa.0.sroa.0.0.copyload, i32 noundef %i.l, i32 noundef %i.o, i64 %.sroa.01.0.copyload.i.i8.i.i), !inline_history !893
  %i.t = and i64 %i.s, 6442450944
  %.not9.i.i = icmp eq i64 %i.t, 4294967296
  br i1 %.not9.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEEvT_T0_.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i, %.lr.ph.i.i
  %.sroa.0.011.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.sroa.0.07.i.i, %.lr.ph.i ] ; 4 uses
  %.sroa.04.010.i.i = phi ptr [ %.sroa.0.011.i.i, %.lr.ph.i.i ], [ %.sroa.03.08.i, %.lr.ph.i ]
  %i.u = load i32, ptr %.sroa.0.011.i.i, align 4, !tbaa !3
  store i32 %i.u, ptr %.sroa.04.010.i.i, align 4, !tbaa !3
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.0.011.i.i, i64 -4 ; 2 uses
  %i.v = load i32, ptr %.sroa.0.0.i.i, align 4, !tbaa !3
  %i.w = load ptr, ptr %.sroa.0.sroa.2.0.copyload, align 8, !tbaa !667 ; 2 uses
  %i.x = getelementptr inbounds [4 x i8], ptr %i.w, i64 %i.h
  %i.y = load i32, ptr %i.x, align 4, !tbaa !3
  %i.z = sext i32 %i.v to i64
  %i.aa = getelementptr inbounds [4 x i8], ptr %i.w, i64 %i.z
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !3
  %.sroa.01.0.copyload.i.i.i.i = load i64, ptr %.sroa.0.sroa.3.0.copyload, align 4
  %i.ac = load ptr, ptr %.sroa.0.sroa.0.0.copyload, align 8, !tbaa !45
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 80
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = tail call i64 %i.ae(ptr noundef nonnull align 8 dereferenceable(94) %.sroa.0.sroa.0.0.copyload, ptr noundef nonnull %.sroa.0.sroa.0.0.copyload, i32 noundef %i.y, i32 noundef %i.ab, i64 %.sroa.01.0.copyload.i.i.i.i), !inline_history !893
  %i.ag = and i64 %i.af, 6442450944
  %.not.i.i = icmp eq i64 %i.ag, 4294967296
  br i1 %.not.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEEvT_T0_.exit.i, label %.lr.ph.i.i, !llvm.loop !894

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEEvT_T0_.exit.i: ; preds = %.lr.ph.i.i, %.lr.ph.i
  %.sroa.04.0.lcssa.i.i = phi ptr [ %.sroa.03.08.i, %.lr.ph.i ], [ %.sroa.0.011.i.i, %.lr.ph.i.i ]
  store i32 %i.g, ptr %.sroa.04.0.lcssa.i.i, align 4, !tbaa !3
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.03.08.i, i64 4 ; 2 uses
  %i.ai = icmp eq ptr %i.ah, %1
  br i1 %i.ai, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEEvT_SI_T0_.exit, label %.lr.ph.i, !llvm.loop !895

bb.c:                                             ; preds = %bb.a
  tail call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEEvT_SI_T0_(ptr %0, ptr %1, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.354") align 8 %2)
  br label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEEvT_SI_T0_.exit

_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEEvT_SI_T0_.exit: ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEEvT_T0_.exit.i, %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEEvT_SI_RT0_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = icmp sgt i64 %i.c, 4
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.sroa.0.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.0.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEEvT_SI_SI_RT0_.exit
  %.sroa.0.05 = phi ptr [ %1, %.lr.ph ], [ %i.e, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEEvT_SI_SI_RT0_.exit ]
  %i.e = getelementptr inbounds i8, ptr %.sroa.0.05, i64 -4 ; 4 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !3    ; 2 uses
  %i.g = load i32, ptr %0, align 4, !tbaa !3
  store i32 %i.g, ptr %i.e, align 4, !tbaa !3
  %i.h = ptrtoint ptr %i.e to i64
  %i.i = sub i64 %i.h, %i.a                       ; 3 uses
  %i.j = ashr exact i64 %i.i, 2                   ; 3 uses
  %.sroa.0.sroa.0.0.copyload.i = load ptr, ptr %2, align 8, !tbaa !694 ; 6 uses
  %.sroa.0.sroa.2.0.copyload.i = load ptr, ptr %.sroa.0.sroa.2.0..sroa_idx.i, align 8, !tbaa !891 ; 2 uses
  %.sroa.0.sroa.3.0.copyload.i = load ptr, ptr %.sroa.0.sroa.3.0..sroa_idx.i, align 8, !tbaa !874 ; 2 uses
  %i.k = add nsw i64 %i.j, -1
  %3 = sdiv i64 %i.k, 2
  %i.l = icmp sgt i64 %i.j, 2
  br i1 %i.l, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %.lr.ph.i.i
  %.036.i.i = phi i64 [ %spec.select.i.i, %.lr.ph.i.i ], [ 0, %bb.b ] ; 2 uses
  %i.m = shl i64 %.036.i.i, 1                     ; 2 uses
  %i.n = add i64 %i.m, 2                          ; 2 uses
  %i.o = getelementptr inbounds [4 x i8], ptr %0, i64 %i.n
  %i.p = or disjoint i64 %i.m, 1                  ; 2 uses
  %i.q = getelementptr inbounds [4 x i8], ptr %0, i64 %i.p
  %i.r = load i32, ptr %i.o, align 4, !tbaa !3
  %i.s = load i32, ptr %i.q, align 4, !tbaa !3
  %i.t = load ptr, ptr %.sroa.0.sroa.2.0.copyload.i, align 8, !tbaa !667 ; 2 uses
  %i.u = sext i32 %i.r to i64
  %i.v = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.u
  %i.w = load i32, ptr %i.v, align 4, !tbaa !3
  %i.x = sext i32 %i.s to i64
  %i.y = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.x
  %i.z = load i32, ptr %i.y, align 4, !tbaa !3
  %.sroa.01.0.copyload.i.i.i.i = load i64, ptr %.sroa.0.sroa.3.0.copyload.i, align 4
  %i.aa = load ptr, ptr %.sroa.0.sroa.0.0.copyload.i, align 8, !tbaa !45
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 80
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = tail call i64 %i.ac(ptr noundef nonnull align 8 dereferenceable(94) %.sroa.0.sroa.0.0.copyload.i, ptr noundef nonnull %.sroa.0.sroa.0.0.copyload.i, i32 noundef %i.w, i32 noundef %i.z, i64 %.sroa.01.0.copyload.i.i.i.i), !inline_history !896
  %i.ae = and i64 %i.ad, 6442450944
  %.not.i.i = icmp eq i64 %i.ae, 4294967296
  %spec.select.i.i = select i1 %.not.i.i, i64 %i.n, i64 %i.p ; 4 uses
  %i.af = getelementptr inbounds [4 x i8], ptr %0, i64 %spec.select.i.i
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !3
  %i.ah = getelementptr inbounds [4 x i8], ptr %0, i64 %.036.i.i
  store i32 %i.ag, ptr %i.ah, align 4, !tbaa !3
  %i.ai = icmp slt i64 %spec.select.i.i, %3
  br i1 %i.ai, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !897

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %bb.b
  %.0.lcssa.i.i = phi i64 [ 0, %bb.b ], [ %spec.select.i.i, %.lr.ph.i.i ] ; 5 uses
  %i.aj = and i64 %i.i, 4
  %i.ak = icmp eq i64 %i.aj, 0
  br i1 %i.ak, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.al = add nsw i64 %i.j, -2
  %i.am = ashr exact i64 %i.al, 1
  %i.an = icmp eq i64 %.0.lcssa.i.i, %i.am
  br i1 %i.an, label %.thread.i, label %bb.d

.thread.i:                                        ; preds = %bb.c
  %i.ao = shl nuw nsw i64 %.0.lcssa.i.i, 1
  %i.ap = or disjoint i64 %i.ao, 1                ; 2 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ap
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !3
  %i.as = getelementptr inbounds [4 x i8], ptr %0, i64 %.0.lcssa.i.i
  store i32 %i.ar, ptr %i.as, align 4, !tbaa !3
  br label %.lr.ph.i.i.i

bb.d:                                             ; preds = %bb.c, %._crit_edge.i.i
  %.not.i = icmp eq i64 %.0.lcssa.i.i, 0
  br i1 %.not.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEEvT_SI_SI_RT0_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.thread.i
  %.1.i8.i = phi i64 [ %i.ap, %.thread.i ], [ %.0.lcssa.i.i, %bb.d ]
  %i.at = sext i32 %i.f to i64
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %.lr.ph.i.i.i
  %.019.i.i.i = phi i64 [ %.1.i8.i, %.lr.ph.i.i.i ], [ %.0920.i.i910.i, %bb.f ] ; 3 uses
  %.0920.in.i.i.i = add nsw i64 %.019.i.i.i, -1
  %.0920.i.i910.i = lshr i64 %.0920.in.i.i.i, 1   ; 3 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0920.i.i910.i ; 2 uses
  %i.av = load i32, ptr %i.au, align 4, !tbaa !3
  %i.aw = load ptr, ptr %.sroa.0.sroa.2.0.copyload.i, align 8, !tbaa !667 ; 2 uses
  %i.ax = sext i32 %i.av to i64
  %i.ay = getelementptr inbounds [4 x i8], ptr %i.aw, i64 %i.ax
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !3
  %i.ba = getelementptr inbounds [4 x i8], ptr %i.aw, i64 %i.at
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !3
  %.sroa.01.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.0.sroa.3.0.copyload.i, align 4
  %i.bc = load ptr, ptr %.sroa.0.sroa.0.0.copyload.i, align 8, !tbaa !45
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 80
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = tail call i64 %i.be(ptr noundef nonnull align 8 dereferenceable(94) %.sroa.0.sroa.0.0.copyload.i, ptr noundef nonnull %.sroa.0.sroa.0.0.copyload.i, i32 noundef %i.az, i32 noundef %i.bb, i64 %.sroa.01.0.copyload.i.i.i.i.i), !inline_history !898
  %i.bg = and i64 %i.bf, 6442450944
  %.not.i.i.i = icmp eq i64 %i.bg, 4294967296
  br i1 %.not.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEEvT_SI_SI_RT0_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bh = load i32, ptr %i.au, align 4, !tbaa !3
  %i.bi = getelementptr inbounds [4 x i8], ptr %0, i64 %.019.i.i.i
  store i32 %i.bh, ptr %i.bi, align 4, !tbaa !3
  %.not11.i = icmp eq i64 %.0920.i.i910.i, 0
  br i1 %.not11.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEEvT_SI_SI_RT0_.exit, label %bb.e, !llvm.loop !899

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEEvT_SI_SI_RT0_.exit: ; preds = %bb.e, %bb.f, %bb.d
  %.0.lcssa.i.i.i = phi i64 [ 0, %bb.d ], [ %.019.i.i.i, %bb.e ], [ 0, %bb.f ]
  %i.bj = getelementptr inbounds [4 x i8], ptr %0, i64 %.0.lcssa.i.i.i
  store i32 %i.f, ptr %i.bj, align 4, !tbaa !3
  %i.bk = icmp sgt i64 %i.i, 4
  br i1 %i.bk, label %bb.b, label %._crit_edge, !llvm.loop !900

._crit_edge:                                      ; preds = %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEEvT_SI_SI_RT0_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEEvT_SI_RT0_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 2                   ; 3 uses
  %i.e = icmp slt i64 %i.d, 2
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i64 %i.d, -2                     ; 3 uses
  %i.g = lshr i64 %i.f, 1
  %.sroa.0.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.0.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.h = add nsw i64 %i.d, -1
  %i.i = lshr i64 %i.h, 1                         ; 2 uses
  %i.j = and i64 %i.c, 4
  %i.k = icmp eq i64 %i.j, 0
  %i.l = lshr exact i64 %i.f, 1                   ; 2 uses
  %i.m = or disjoint i64 %i.f, 1                  ; 2 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.m
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.l
  br label %bb.c

bb.c:                                             ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEEvT_T0_SJ_T1_T2_.exit, %bb.b
  %.08 = phi i64 [ %i.g, %bb.b ], [ %i.bk, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEEvT_T0_SJ_T1_T2_.exit ] ; 8 uses
  %i.p = getelementptr inbounds [4 x i8], ptr %0, i64 %.08
  %i.q = load i32, ptr %i.p, align 4, !tbaa !3    ; 2 uses
  %.sroa.0.sroa.0.0.copyload = load ptr, ptr %2, align 8, !tbaa !694 ; 6 uses
  %.sroa.0.sroa.2.0.copyload = load ptr, ptr %.sroa.0.sroa.2.0..sroa_idx, align 8, !tbaa !891 ; 2 uses
  %.sroa.0.sroa.3.0.copyload = load ptr, ptr %.sroa.0.sroa.3.0..sroa_idx, align 8, !tbaa !874 ; 2 uses
  %i.r = icmp slt i64 %.08, %i.i
  br i1 %i.r, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %.036.i = phi i64 [ %spec.select.i, %.lr.ph.i ], [ %.08, %bb.c ] ; 2 uses
  %i.s = shl i64 %.036.i, 1                       ; 2 uses
  %i.t = add i64 %i.s, 2                          ; 2 uses
  %i.u = getelementptr inbounds [4 x i8], ptr %0, i64 %i.t
  %i.v = or disjoint i64 %i.s, 1                  ; 2 uses
  %i.w = getelementptr inbounds [4 x i8], ptr %0, i64 %i.v
  %i.x = load i32, ptr %i.u, align 4, !tbaa !3
  %i.y = load i32, ptr %i.w, align 4, !tbaa !3
  %i.z = load ptr, ptr %.sroa.0.sroa.2.0.copyload, align 8, !tbaa !667 ; 2 uses
  %i.aa = sext i32 %i.x to i64
  %i.ab = getelementptr inbounds [4 x i8], ptr %i.z, i64 %i.aa
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !3
  %i.ad = sext i32 %i.y to i64
  %i.ae = getelementptr inbounds [4 x i8], ptr %i.z, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !3
  %.sroa.01.0.copyload.i.i.i = load i64, ptr %.sroa.0.sroa.3.0.copyload, align 4
  %i.ag = load ptr, ptr %.sroa.0.sroa.0.0.copyload, align 8, !tbaa !45
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 80
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = tail call i64 %i.ai(ptr noundef nonnull align 8 dereferenceable(94) %.sroa.0.sroa.0.0.copyload, ptr noundef nonnull %.sroa.0.sroa.0.0.copyload, i32 noundef %i.ac, i32 noundef %i.af, i64 %.sroa.01.0.copyload.i.i.i), !inline_history !901
  %i.ak = and i64 %i.aj, 6442450944
  %.not.i = icmp eq i64 %i.ak, 4294967296
  %spec.select.i = select i1 %.not.i, i64 %i.t, i64 %i.v ; 4 uses
  %i.al = getelementptr inbounds [4 x i8], ptr %0, i64 %spec.select.i
  %i.am = load i32, ptr %i.al, align 4, !tbaa !3
  %i.an = getelementptr inbounds [4 x i8], ptr %0, i64 %.036.i
  store i32 %i.am, ptr %i.an, align 4, !tbaa !3
  %i.ao = icmp slt i64 %spec.select.i, %i.i
  br i1 %i.ao, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !897

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.c
  %.0.lcssa.i = phi i64 [ %.08, %bb.c ], [ %spec.select.i, %.lr.ph.i ] ; 2 uses
  %i.ap = icmp eq i64 %.0.lcssa.i, %i.l
  %or.cond = select i1 %i.k, i1 %i.ap, i1 false
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i
  %i.aq = load i32, ptr %i.n, align 4, !tbaa !3
  store i32 %i.aq, ptr %i.o, align 4, !tbaa !3
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i
  %.1.i = phi i64 [ %i.m, %bb.d ], [ %.0.lcssa.i, %._crit_edge.i ] ; 3 uses
  %i.ar = icmp sgt i64 %.1.i, %.08
  br i1 %i.ar, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEEvT_T0_SJ_T1_T2_.exit

.lr.ph.i.i:                                       ; preds = %bb.e
  %i.as = sext i32 %i.q to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph.i.i
  %.019.i.i = phi i64 [ %.1.i, %.lr.ph.i.i ], [ %.0920.i.i, %bb.g ] ; 3 uses
  %.0920.in.i.i = add nsw i64 %.019.i.i, -1
  %.0920.i.i = sdiv i64 %.0920.in.i.i, 2          ; 4 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0920.i.i ; 2 uses
  %i.au = load i32, ptr %i.at, align 4, !tbaa !3
  %i.av = load ptr, ptr %.sroa.0.sroa.2.0.copyload, align 8, !tbaa !667 ; 2 uses
  %i.aw = sext i32 %i.au to i64
  %i.ax = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.aw
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !3
  %i.az = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.as
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !3
  %.sroa.01.0.copyload.i.i.i.i = load i64, ptr %.sroa.0.sroa.3.0.copyload, align 4
  %i.bb = load ptr, ptr %.sroa.0.sroa.0.0.copyload, align 8, !tbaa !45
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 80
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = tail call i64 %i.bd(ptr noundef nonnull align 8 dereferenceable(94) %.sroa.0.sroa.0.0.copyload, ptr noundef nonnull %.sroa.0.sroa.0.0.copyload, i32 noundef %i.ay, i32 noundef %i.ba, i64 %.sroa.01.0.copyload.i.i.i.i), !inline_history !902
  %i.bf = and i64 %i.be, 6442450944
  %.not.i.i = icmp eq i64 %i.bf, 4294967296
  br i1 %.not.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEEvT_T0_SJ_T1_T2_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bg = load i32, ptr %i.at, align 4, !tbaa !3
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.019.i.i
  store i32 %i.bg, ptr %i.bh, align 4, !tbaa !3
  %i.bi = icmp sgt i64 %.0920.i.i, %.08
  br i1 %i.bi, label %bb.f, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEEvT_T0_SJ_T1_T2_.exit, !llvm.loop !899

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEEvT_T0_SJ_T1_T2_.exit: ; preds = %bb.f, %bb.g, %bb.e
  %.0.lcssa.i.i = phi i64 [ %.1.i, %bb.e ], [ %.0920.i.i, %bb.g ], [ %.019.i.i, %bb.f ]
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0.lcssa.i.i
  store i32 %i.q, ptr %i.bj, align 4, !tbaa !3
  %.not = icmp eq i64 %.08, 0
  %i.bk = add nsw i64 %.08, -1
  br i1 %.not, label %.loopexit, label %bb.c, !llvm.loop !903

.loopexit:                                        ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEEvT_T0_SJ_T1_T2_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEEvT_SI_SI_SI_T0_(ptr %0, ptr %1, ptr %2, ptr %3, ptr noundef byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.354") align 8 %4) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !3
  %i.b = load i32, ptr %2, align 4, !tbaa !3
  %i.c = load ptr, ptr %4, align 8, !tbaa !904    ; 14 uses
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !906, !nonnull !81, !align !444 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !667  ; 2 uses
  %i.g = sext i32 %i.a to i64
  %i.h = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.g
  %i.i = load i32, ptr %i.h, align 4, !tbaa !3
  %i.j = sext i32 %i.b to i64
  %i.k = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.j
  %i.l = load i32, ptr %i.k, align 4, !tbaa !3
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !907, !nonnull !81, !align !446 ; 4 uses
  %.sroa.01.0.copyload.i.i = load i64, ptr %i.n, align 4
  %i.o = load ptr, ptr %i.c, align 8, !tbaa !45
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 80
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = tail call i64 %i.q(ptr noundef nonnull align 8 dereferenceable(94) %i.c, ptr noundef nonnull %i.c, i32 noundef %i.i, i32 noundef %i.l, i64 %.sroa.01.0.copyload.i.i), !inline_history !908
  %i.s = and i64 %i.r, 6442450944
end_hunk_3
begin_hunk_4_@_ZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S8_EUliE0_EEvT0_T1_S7_S8_:bb.a
  call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_SI_SJ_(ptr %i.e, ptr %i.g, i64 noundef %i.o, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.402") align 8 %5)
  %i.p = icmp sgt i64 %i.k, 64
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 64 ; 2 uses
  call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_SI_(ptr %i.e, ptr nonnull %i.q, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.402") align 8 %5)
  call void @_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_SI_(ptr nonnull %i.q, ptr %i.g, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.402") align 8 %5)
  br label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKSA_11sortIndicesERS5_NS8_12CompareFlagsEEUliE_ZNKSA_11sortIndicesESC_SD_EUliE0_EEvT0_T1_SC_SD_EUliiE0_EvT_SJ_SG_.exit

bb.e:                                             ; preds = %bb.c
  call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_SI_(ptr %i.e, ptr %i.g, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.402") align 8 %5)
  br label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKSA_11sortIndicesERS5_NS8_12CompareFlagsEEUliE_ZNKSA_11sortIndicesESC_SD_EUliE0_EEvT0_T1_SC_SD_EUliiE0_EvT_SJ_SG_.exit

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKSA_11sortIndicesERS5_NS8_12CompareFlagsEEUliE_ZNKSA_11sortIndicesESC_SD_EUliE0_EEvT0_T1_SC_SD_EUliiE0_EvT_SJ_SG_.exit: ; preds = %bb.b, %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKSA_11sortIndicesERS5_NS8_12CompareFlagsEEUliE_ZNKSA_11sortIndicesESC_SD_EUliE0_EEvT0_T1_SC_SD_EUliiE_EvT_SJ_SG_.exit

bb.f:                                             ; preds = %bb.a
  %i.r = icmp eq ptr %i.e, %i.g
  br i1 %i.r, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKSA_11sortIndicesERS5_NS8_12CompareFlagsEEUliE_ZNKSA_11sortIndicesESC_SD_EUliE0_EEvT0_T1_SC_SD_EUliiE_EvT_SJ_SG_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = ptrtoint ptr %i.g to i64
  %i.t = ptrtoint ptr %i.e to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = ashr exact i64 %i.u, 2
  %i.w = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.v, i1 true)
  %i.x = shl nuw nsw i64 %i.w, 1
  %i.y = xor i64 %i.x, 126
  call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE_EEEvT_SM_SI_SJ_(ptr %i.e, ptr %i.g, i64 noundef %i.y, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.405") align 8 %9)
  call void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE_EEEvT_SM_SI_(ptr %i.e, ptr %i.g, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.405") align 8 %9)
  br label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKSA_11sortIndicesERS5_NS8_12CompareFlagsEEUliE_ZNKSA_11sortIndicesESC_SD_EUliE0_EEvT0_T1_SC_SD_EUliiE_EvT_SJ_SG_.exit

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKSA_11sortIndicesERS5_NS8_12CompareFlagsEEUliE_ZNKSA_11sortIndicesESC_SD_EUliE0_EEvT0_T1_SC_SD_EUliiE_EvT_SJ_SG_.exit: ; preds = %bb.g, %bb.f, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKSA_11sortIndicesERS5_NS8_12CompareFlagsEEUliE_ZNKSA_11sortIndicesESC_SD_EUliE0_EEvT0_T1_SC_SD_EUliiE0_EvT_SJ_SG_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK8facebook5velox10FlatVectorIbE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S8_EUliE2_EEvT0_T1_S7_S8_(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %5 = alloca %class.anon.409, align 8            ; 9 uses
  %6 = alloca %class.anon.398, align 8            ; 3 uses
  %7 = alloca %class.anon.399, align 8            ; 2 uses
  %8 = alloca %"struct.facebook::velox::CompareFlags", align 8 ; 4 uses
  %9 = alloca %class.anon.408, align 8            ; 5 uses
  store ptr %1, ptr %6, align 8
  store ptr %2, ptr %7, align 8
  store i64 %4, ptr %8, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #31
  store ptr %6, ptr %9, align 8, !tbaa !40
  %i.a = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %8, ptr %i.a, align 8, !tbaa !874
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !255
  %.not = icmp eq ptr %i.c, null
  %i.d = load ptr, ptr %3, align 8, !tbaa !667    ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !667  ; 6 uses
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store ptr %7, ptr %5, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %8, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %9, ptr %.sroa.3.0..sroa_idx, align 8
  %i.g = icmp eq ptr %i.d, %i.f
  br i1 %i.g, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorIbE11sortIndicesILb0EZNKSA_11sortIndicesERS5_NS8_12CompareFlagsEEUliE1_ZNKSA_11sortIndicesESC_SD_EUliE2_EEvT0_T1_SC_SD_EUliiE0_EvT_SJ_SG_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.d to i64
  %i.j = sub i64 %i.h, %i.i                       ; 2 uses
  %i.k = ashr exact i64 %i.j, 2
  %i.l = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.k, i1 true)
  %i.m = shl nuw nsw i64 %i.l, 1
  %i.n = xor i64 %i.m, 126
  call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_SI_SJ_(ptr %i.d, ptr %i.f, i64 noundef %i.n, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.410") align 8 %5)
  %i.o = icmp sgt i64 %i.j, 64
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 64 ; 2 uses
  call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_SI_(ptr %i.d, ptr nonnull %i.p, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.410") align 8 %5)
  call void @_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_SI_(ptr nonnull %i.p, ptr %i.f, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.410") align 8 %5)
  br label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorIbE11sortIndicesILb0EZNKSA_11sortIndicesERS5_NS8_12CompareFlagsEEUliE1_ZNKSA_11sortIndicesESC_SD_EUliE2_EEvT0_T1_SC_SD_EUliiE0_EvT_SJ_SG_.exit

bb.e:                                             ; preds = %bb.c
  call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_SI_(ptr %i.d, ptr %i.f, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.410") align 8 %5)
  br label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorIbE11sortIndicesILb0EZNKSA_11sortIndicesERS5_NS8_12CompareFlagsEEUliE1_ZNKSA_11sortIndicesESC_SD_EUliE2_EEvT0_T1_SC_SD_EUliiE0_EvT_SJ_SG_.exit

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorIbE11sortIndicesILb0EZNKSA_11sortIndicesERS5_NS8_12CompareFlagsEEUliE1_ZNKSA_11sortIndicesESC_SD_EUliE2_EEvT0_T1_SC_SD_EUliiE0_EvT_SJ_SG_.exit: ; preds = %bb.b, %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  call void @_ZSt6__sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE_EEEvT_SM_SI_(ptr %i.d, ptr %i.f, ptr nonnull %6, ptr nonnull %8)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorIbE11sortIndicesILb0EZNKSA_11sortIndicesERS5_NS8_12CompareFlagsEEUliE1_ZNKSA_11sortIndicesESC_SD_EUliE2_EEvT0_T1_SC_SD_EUliiE0_EvT_SJ_SG_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_SI_SJ_(ptr %0, ptr %1, i64 noundef %2, ptr noundef byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.402") align 8 %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.402", align 8 ; 4 uses
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.402", align 8 ; 4 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = ashr exact i64 %i.c, 2                   ; 2 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph22

bb.b:                                             ; preds = %.lr.ph22
  %i.h = icmp eq i64 %i.j, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph22, !llvm.loop !952

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %storemerge14.lcssa = phi ptr [ %1, %.lr.ph ], [ %i.n, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  call void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_RSI_(ptr %0, ptr %storemerge14.lcssa, ptr noundef nonnull align 8 dereferenceable(24) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_RSI_(ptr %0, ptr %storemerge14.lcssa, ptr noundef nonnull align 8 dereferenceable(24) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %.loopexit

.lr.ph22:                                         ; preds = %.lr.ph, %bb.b
  %storemerge1421 = phi ptr [ %i.n, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.01520 = phi i64 [ %i.j, %bb.b ], [ %2, %.lr.ph ]
  %i.i = phi i64 [ %i.q, %bb.b ], [ %i.d, %.lr.ph ]
  %i.j = add nsw i64 %.01520, -1                  ; 3 uses
  %i.k = lshr i64 %i.i, 1
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.k
  %i.m = getelementptr inbounds i8, ptr %storemerge1421, i64 -4
  tail call void @_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_SM_SM_SI_(ptr %0, ptr nonnull %i.f, ptr %i.l, ptr nonnull %i.m, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.402") align 8 %3)
  %i.n = tail call ptr @_ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE0_EEET_SM_SM_SM_SI_(ptr nonnull %i.f, ptr %storemerge1421, ptr %0, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.402") align 8 %3) ; 4 uses
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_SI_SJ_(ptr %i.n, ptr %storemerge1421, i64 noundef %i.j, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.402") align 8 %3)
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = sub i64 %i.o, %i.a
  %i.q = ashr exact i64 %i.p, 2                   ; 2 uses
  %i.r = icmp sgt i64 %i.q, 16
  br i1 %i.r, label %bb.b, label %.loopexit, !llvm.loop !952

.loopexit:                                        ; preds = %.lr.ph22, %bb.a, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_RSI_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %3 = alloca %class.anon.348, align 8            ; 6 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %4 = alloca %class.anon.348, align 8            ; 6 uses
  %i.e = alloca i8, align 1                       ; 4 uses
  %i.f = alloca i8, align 1                       ; 4 uses
  %i.g = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.h = ptrtoint ptr %1 to i64
  %i.i = sub i64 %i.h, %i.g
  %i.j = icmp sgt i64 %i.i, 4
  br i1 %i.j, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_SM_RSI_.exit
  %.sroa.0.040 = phi ptr [ %1, %.lr.ph ], [ %i.o, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_SM_RSI_.exit ]
  %i.o = getelementptr inbounds i8, ptr %.sroa.0.040, i64 -4 ; 4 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !3    ; 3 uses
  %i.q = load i32, ptr %0, align 4, !tbaa !3
  store i32 %i.q, ptr %i.o, align 4, !tbaa !3
  %i.r = ptrtoint ptr %i.o to i64
  %i.s = sub i64 %i.r, %i.g                       ; 3 uses
  %i.t = ashr exact i64 %i.s, 2                   ; 3 uses
  %.sroa.019.0.copyload = load ptr, ptr %2, align 8 ; 2 uses
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 8 uses
  %i.u = add nsw i64 %i.t, -1
  %5 = sdiv i64 %i.u, 2
  %i.v = icmp sgt i64 %i.t, 2
  br i1 %i.v, label %.lr.ph.i.i.preheader, label %._crit_edge.i.i

.lr.ph.i.i.preheader:                             ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 16
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S8_EUliE0_EEvT0_T1_S7_S8_ENKUliiE0_clEii.exit16.thread
  %.034.i.i = phi i64 [ %i.bu, %_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S8_EUliE0_EEvT0_T1_S7_S8_ENKUliiE0_clEii.exit16.thread ], [ 0, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.y = shl i64 %.034.i.i, 1                     ; 2 uses
  %i.z = add i64 %i.y, 2                          ; 4 uses
  %i.aa = getelementptr inbounds [4 x i8], ptr %0, i64 %i.z
  %i.ab = or disjoint i64 %i.y, 1                 ; 2 uses
  %i.ac = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ab
  %i.ad = load i32, ptr %i.aa, align 4, !tbaa !3  ; 2 uses
  %i.ae = load i32, ptr %i.ac, align 4, !tbaa !3  ; 2 uses
  %i.af = load ptr, ptr %.sroa.019.0.copyload, align 8, !tbaa !953
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !255 ; 3 uses
  %.not.i.i.i3 = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i3, label %_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE0_clEi.exit12.i6, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.ai = zext i32 %i.ad to i64                   ; 2 uses
  %i.aj = lshr i64 %i.ai, 6
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.aj
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !143
  %i.am = and i64 %i.ai, 63
  %i.an = shl nuw i64 1, %i.am
  %i.ao = and i64 %i.al, %i.an
  %.not.i.i.i.i4 = icmp eq i64 %i.ao, 0
  %i.ap = zext i32 %i.ae to i64                   ; 2 uses
  %i.aq = lshr i64 %i.ap, 6
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.aq
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !143
  %i.at = and i64 %i.ap, 63
  %i.au = shl nuw i64 1, %i.at
  %i.av = and i64 %i.as, %i.au
  %.not.i.i.i11.i5 = icmp eq i64 %i.av, 0
  br label %_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE0_clEi.exit12.i6

_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE0_clEi.exit12.i6: ; preds = %bb.c, %.lr.ph.i.i
  %i.aw = phi i1 [ %.not.i.i.i.i4, %bb.c ], [ false, %.lr.ph.i.i ] ; 3 uses
  %i.ax = phi i1 [ %.not.i.i.i11.i5, %bb.c ], [ false, %.lr.ph.i.i ] ; 2 uses
  %or.cond.i7 = or i1 %i.aw, %i.ax
  br i1 %or.cond.i7, label %bb.d, label %bb.i

bb.d:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE0_clEi.exit12.i6
  %.sroa.0.0.copyload.i9 = load i64, ptr %.sroa.6.0.copyload, align 4 ; 3 uses
  %.sroa.37.0.extract.shift.i.i10 = lshr i64 %.sroa.0.0.copyload.i9, 32
  %.sroa.37.0.extract.trunc.i.i11 = trunc nuw i64 %.sroa.37.0.extract.shift.i.i10 to i32
  switch i32 %.sroa.37.0.extract.trunc.i.i11, label %bb.h [
    i32 1, label %bb.e
    i32 0, label %bb.g
  ]

bb.e:                                             ; preds = %bb.d
  %i.ay = and i64 %.sroa.0.0.copyload.i9, 65536
  %.not.i.i14 = icmp eq i64 %i.ay, 0
  br i1 %.not.i.i14, label %bb.f, label %.critedge.i15

bb.f:                                             ; preds = %bb.e
  call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs, ptr noundef nonnull @.str.81) #35
  unreachable

bb.g:                                             ; preds = %bb.d
  %or.cond.i.i12 = and i1 %i.aw, %i.ax
  br i1 %or.cond.i.i12, label %_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S8_EUliE0_EEvT0_T1_S7_S8_ENKUliiE0_clEii.exit16.thread, label %_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S8_EUliE0_EEvT0_T1_S7_S8_ENKUliiE0_clEii.exit16

bb.h:                                             ; preds = %bb.d
  call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs_0, ptr noundef nonnull @.str.82) #35
  unreachable

.critedge.i15:                                    ; preds = %bb.e
  call void @_ZSt27__throw_bad_optional_accessv() #35
  unreachable

bb.i:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE0_clEi.exit12.i6
  %i.az = load ptr, ptr %i.w, align 8, !tbaa !950
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #31
  %i.ba = load ptr, ptr %.sroa.7.0.copyload, align 8, !tbaa !955, !nonnull !81, !align !444
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !956
  %i.bc = call noundef zeroext i1 @_ZNK8facebook5velox10FlatVectorIbE11valueAtFastEi(ptr noundef nonnull align 8 dereferenceable(176) %i.bb, i32 noundef %i.ad)
  %i.bd = zext i1 %i.bc to i8
  store i8 %i.bd, ptr %i.b, align 1, !tbaa !56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #31
  %i.be = load ptr, ptr %.sroa.7.0.copyload, align 8, !tbaa !955, !nonnull !81, !align !444
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !956
  %i.bg = call noundef zeroext i1 @_ZNK8facebook5velox10FlatVectorIbE11valueAtFastEi(ptr noundef nonnull align 8 dereferenceable(176) %i.bf, i32 noundef %i.ae)
  %i.bh = zext i1 %i.bg to i8
  store i8 %i.bh, ptr %i.c, align 1, !tbaa !56
  %i.bi = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !643
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.bj, ptr %i.a, align 8, !tbaa !773
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  store ptr %i.a, ptr %3, align 8, !tbaa !774
  store ptr %i.b, ptr %i.k, align 8, !tbaa !674
  store ptr %i.c, ptr %i.l, align 8, !tbaa !674
  %i.bk = call noundef i32 @_ZZN8facebook5velox12SimpleVectorIbE39comparePrimitiveAscWithCustomComparisonEPKNS0_4TypeERKbS7_ENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(24) %3) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bl = load ptr, ptr %i.x, align 8, !tbaa !958, !nonnull !81, !align !446
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 1
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !959, !range !80, !noundef !81
  %i.bo = trunc nuw i8 %i.bn to i1
  %i.bp = sub nsw i32 0, %i.bk
  %i.bq = select i1 %i.bo, i32 %i.bk, i32 %i.bp
  %.fr = freeze i32 %i.bq
  %i.br = icmp slt i32 %.fr, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #31
  br i1 %i.br, label %bb.j, label %_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S8_EUliE0_EEvT0_T1_S7_S8_ENKUliiE0_clEii.exit16.thread

_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S8_EUliE0_EEvT0_T1_S7_S8_ENKUliiE0_clEii.exit16: ; preds = %bb.g
  %i.bs = trunc i64 %.sroa.0.0.copyload.i9 to i1
  %i.bt = xor i1 %i.aw, %i.bs
  %.fr37 = freeze i1 %i.bt
  br i1 %.fr37, label %_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S8_EUliE0_EEvT0_T1_S7_S8_ENKUliiE0_clEii.exit16.thread, label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S8_EUliE0_EEvT0_T1_S7_S8_ENKUliiE0_clEii.exit16
  br label %_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S8_EUliE0_EEvT0_T1_S7_S8_ENKUliiE0_clEii.exit16.thread

_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S8_EUliE0_EEvT0_T1_S7_S8_ENKUliiE0_clEii.exit16.thread: ; preds = %bb.g, %bb.i, %_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S8_EUliE0_EEvT0_T1_S7_S8_ENKUliiE0_clEii.exit16, %bb.j
  %i.bu = phi i64 [ %i.ab, %bb.j ], [ %i.z, %_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S8_EUliE0_EEvT0_T1_S7_S8_ENKUliiE0_clEii.exit16 ], [ %i.z, %bb.i ], [ %i.z, %bb.g ] ; 4 uses
  %i.bv = getelementptr inbounds [4 x i8], ptr %0, i64 %i.bu
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !3
  %i.bx = getelementptr inbounds [4 x i8], ptr %0, i64 %.034.i.i
  store i32 %i.bw, ptr %i.bx, align 4, !tbaa !3
  %i.by = icmp slt i64 %i.bu, %5
  br i1 %i.by, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !962

._crit_edge.i.i:                                  ; preds = %_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S8_EUliE0_EEvT0_T1_S7_S8_ENKUliiE0_clEii.exit16.thread, %bb.b
  %.0.lcssa.i.i = phi i64 [ 0, %bb.b ], [ %i.bu, %_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S8_EUliE0_EEvT0_T1_S7_S8_ENKUliiE0_clEii.exit16.thread ] ; 5 uses
  %i.bz = and i64 %i.s, 4
  %i.ca = icmp eq i64 %i.bz, 0
  br i1 %i.ca, label %bb.k, label %bb.l

bb.k:                                             ; preds = %._crit_edge.i.i
  %i.cb = add nsw i64 %i.t, -2
  %i.cc = ashr exact i64 %i.cb, 1
  %i.cd = icmp eq i64 %.0.lcssa.i.i, %i.cc
  br i1 %i.cd, label %.thread.i, label %bb.l

.thread.i:                                        ; preds = %bb.k
  %i.ce = shl nuw nsw i64 %.0.lcssa.i.i, 1
  %i.cf = or disjoint i64 %i.ce, 1                ; 2 uses
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.cf
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !3
  %i.ci = getelementptr inbounds [4 x i8], ptr %0, i64 %.0.lcssa.i.i
  store i32 %i.ch, ptr %i.ci, align 4, !tbaa !3
  br label %.lr.ph.i.i.preheader.i

bb.l:                                             ; preds = %bb.k, %._crit_edge.i.i
  %.not.i = icmp eq i64 %.0.lcssa.i.i, 0
  br i1 %.not.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_SM_RSI_.exit, label %.lr.ph.i.i.preheader.i

.lr.ph.i.i.preheader.i:                           ; preds = %bb.l, %.thread.i
  %.1.i11.i = phi i64 [ %i.cf, %.thread.i ], [ %.0.lcssa.i.i, %bb.l ]
  %i.cj = zext i32 %i.p to i64                    ; 2 uses
  %i.ck = lshr i64 %i.cj, 6
  %i.cl = and i64 %i.cj, 63
  %i.cm = shl nuw i64 1, %i.cl
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 8
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 16
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.t, %.lr.ph.i.i.preheader.i
  %.019.i.i.i = phi i64 [ %.0920.i.i67.i, %bb.t ], [ %.1.i11.i, %.lr.ph.i.i.preheader.i ] ; 4 uses
  %.0920.in.i.i.i = add nsw i64 %.019.i.i.i, -1
  %.0920.i.i67.i = lshr i64 %.0920.in.i.i.i, 1    ; 3 uses
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0920.i.i67.i ; 2 uses
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !3  ; 3 uses
  %i.cr = load ptr, ptr %.sroa.019.0.copyload, align 8, !tbaa !953
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 40
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !255 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ct, null
  br i1 %.not.i.i.i, label %_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE0_clEi.exit12.i, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i.i.i
  %i.cu = zext i32 %i.cq to i64                   ; 2 uses
  %i.cv = lshr i64 %i.cu, 6
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %i.cv
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !143
  %i.cy = and i64 %i.cu, 63
  %i.cz = shl nuw i64 1, %i.cy
  %i.da = and i64 %i.cx, %i.cz
  %.not.i.i.i.i = icmp eq i64 %i.da, 0
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %i.ck
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !143
  %i.dd = and i64 %i.dc, %i.cm
  %.not.i.i.i11.i = icmp eq i64 %i.dd, 0
  br label %_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE0_clEi.exit12.i

_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE0_clEi.exit12.i: ; preds = %bb.m, %.lr.ph.i.i.i
  %i.de = phi i1 [ %.not.i.i.i.i, %bb.m ], [ false, %.lr.ph.i.i.i ] ; 3 uses
  %i.df = phi i1 [ %.not.i.i.i11.i, %bb.m ], [ false, %.lr.ph.i.i.i ] ; 2 uses
  %or.cond.i = or i1 %i.de, %i.df
  br i1 %or.cond.i, label %bb.n, label %bb.s

bb.n:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE0_clEi.exit12.i
  %.sroa.0.0.copyload.i = load i64, ptr %.sroa.6.0.copyload, align 4 ; 3 uses
  %.sroa.37.0.extract.shift.i.i = lshr i64 %.sroa.0.0.copyload.i, 32
  %.sroa.37.0.extract.trunc.i.i = trunc nuw i64 %.sroa.37.0.extract.shift.i.i to i32
  switch i32 %.sroa.37.0.extract.trunc.i.i, label %bb.r [
    i32 1, label %bb.o
    i32 0, label %bb.q
  ]

bb.o:                                             ; preds = %bb.n
  %i.dg = and i64 %.sroa.0.0.copyload.i, 65536
  %.not.i.i = icmp eq i64 %i.dg, 0
  br i1 %.not.i.i, label %bb.p, label %.critedge.i

bb.p:                                             ; preds = %bb.o
  call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs, ptr noundef nonnull @.str.81) #35
  unreachable

bb.q:                                             ; preds = %bb.n
  %or.cond.i.i = and i1 %i.de, %i.df
  %i.dh = trunc i64 %.sroa.0.0.copyload.i to i1
  %i.di = xor i1 %i.de, %i.dh
  %or.cond.demorgan = or i1 %or.cond.i.i, %i.di
  br i1 %or.cond.demorgan, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_SM_RSI_.exit, label %bb.t

bb.r:                                             ; preds = %bb.n
  call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs_0, ptr noundef nonnull @.str.82) #35
  unreachable

.critedge.i:                                      ; preds = %bb.o
  call void @_ZSt27__throw_bad_optional_accessv() #35
  unreachable

bb.s:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE0_clEi.exit12.i
  %i.dj = load ptr, ptr %i.cn, align 8, !tbaa !950
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #31
  %i.dk = load ptr, ptr %.sroa.7.0.copyload, align 8, !tbaa !955, !nonnull !81, !align !444
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !956
  %i.dm = call noundef zeroext i1 @_ZNK8facebook5velox10FlatVectorIbE11valueAtFastEi(ptr noundef nonnull align 8 dereferenceable(176) %i.dl, i32 noundef %i.cq)
  %i.dn = zext i1 %i.dm to i8
  store i8 %i.dn, ptr %i.e, align 1, !tbaa !56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #31
  %i.do = load ptr, ptr %.sroa.7.0.copyload, align 8, !tbaa !955, !nonnull !81, !align !444
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !956
  %i.dq = call noundef zeroext i1 @_ZNK8facebook5velox10FlatVectorIbE11valueAtFastEi(ptr noundef nonnull align 8 dereferenceable(176) %i.dp, i32 noundef %i.p)
  %i.dr = zext i1 %i.dq to i8
  store i8 %i.dr, ptr %i.f, align 1, !tbaa !56
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !643
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.dt, ptr %i.d, align 8, !tbaa !773
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  store ptr %i.d, ptr %4, align 8, !tbaa !774
  store ptr %i.e, ptr %i.m, align 8, !tbaa !674
  store ptr %i.f, ptr %i.n, align 8, !tbaa !674
  %i.du = call noundef i32 @_ZZN8facebook5velox12SimpleVectorIbE39comparePrimitiveAscWithCustomComparisonEPKNS0_4TypeERKbS7_ENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(24) %4) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.dv = load ptr, ptr %i.co, align 8, !tbaa !958, !nonnull !81, !align !446
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 1
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !959, !range !80, !noundef !81
  %i.dy = trunc nuw i8 %i.dx to i1
  %i.dz = sub nsw i32 0, %i.du
  %i.ea = select i1 %i.dy, i32 %i.du, i32 %i.dz
  %i.eb = icmp slt i32 %i.ea, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #31
  br i1 %i.eb, label %._crit_edge43, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_SM_RSI_.exit

._crit_edge43:                                    ; preds = %bb.s
  %.pre = load i32, ptr %i.cp, align 4, !tbaa !3
  br label %bb.t

bb.t:                                             ; preds = %._crit_edge43, %bb.q
  %i.ec = phi i32 [ %.pre, %._crit_edge43 ], [ %i.cq, %bb.q ]
  %i.ed = getelementptr inbounds [4 x i8], ptr %0, i64 %.019.i.i.i
  store i32 %i.ec, ptr %i.ed, align 4, !tbaa !3
  %.not8.i = icmp eq i64 %.0920.i.i67.i, 0
  br i1 %.not8.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_SM_RSI_.exit, label %.lr.ph.i.i.i, !llvm.loop !963

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_SM_RSI_.exit: ; preds = %bb.q, %bb.s, %bb.t, %bb.l
  %.0.lcssa.i.i.i = phi i64 [ 0, %bb.l ], [ %.019.i.i.i, %bb.s ], [ %.019.i.i.i, %bb.q ], [ 0, %bb.t ]
  %i.ee = getelementptr inbounds [4 x i8], ptr %0, i64 %.0.lcssa.i.i.i
  store i32 %i.p, ptr %i.ee, align 4, !tbaa !3
  %i.ef = icmp sgt i64 %i.s, 4
  br i1 %i.ef, label %bb.b, label %._crit_edge, !llvm.loop !964

._crit_edge:                                      ; preds = %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_SM_RSI_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_RSI_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %3 = alloca %class.anon.348, align 8            ; 6 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %4 = alloca %class.anon.348, align 8            ; 6 uses
  %i.e = alloca i8, align 1                       ; 4 uses
  %i.f = alloca i8, align 1                       ; 4 uses
  %i.g = ptrtoint ptr %1 to i64
  %i.h = ptrtoint ptr %0 to i64
  %i.i = sub i64 %i.g, %i.h                       ; 2 uses
  %i.j = ashr exact i64 %i.i, 2                   ; 3 uses
  %i.k = icmp slt i64 %i.j, 2
  br i1 %i.k, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = add nsw i64 %i.j, -2                     ; 3 uses
  %i.m = lshr i64 %i.l, 1
  %.sroa.0.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.0.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.n = add nsw i64 %i.j, -1
  %i.o = lshr i64 %i.n, 1                         ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.r = and i64 %i.i, 4
  %i.s = icmp eq i64 %i.r, 0
  %i.t = lshr exact i64 %i.l, 1                   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.w = or disjoint i64 %i.l, 1                  ; 2 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.w
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.t
  br label %bb.c

bb.c:                                             ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SI_SI_SJ_T2_.exit, %bb.b
  %.08 = phi i64 [ %i.m, %bb.b ], [ %i.ef, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SI_SI_SJ_T2_.exit ] ; 8 uses
  %i.z = getelementptr inbounds [4 x i8], ptr %0, i64 %.08
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !3   ; 3 uses
  %.sroa.0.sroa.0.0.copyload = load ptr, ptr %2, align 8, !tbaa !40 ; 2 uses
  %.sroa.0.sroa.2.0.copyload = load ptr, ptr %.sroa.0.sroa.2.0..sroa_idx, align 8, !tbaa !874 ; 2 uses
  %.sroa.0.sroa.3.0.copyload = load ptr, ptr %.sroa.0.sroa.3.0..sroa_idx, align 8, !tbaa !40 ; 8 uses
  %i.ab = icmp slt i64 %.08, %i.o
  br i1 %i.ab, label %.lr.ph.i.preheader, label %._crit_edge.i

.lr.ph.i.preheader:                               ; preds = %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.sroa.3.0.copyload, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.sroa.3.0.copyload, i64 16
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S8_EUliE0_EEvT0_T1_S7_S8_ENKUliiE0_clEii.exit23.thread
  %.034.i = phi i64 [ %i.ca, %_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S8_EUliE0_EEvT0_T1_S7_S8_ENKUliiE0_clEii.exit23.thread ], [ %.08, %.lr.ph.i.preheader ] ; 2 uses
  %i.ae = shl i64 %.034.i, 1                      ; 2 uses
  %i.af = add i64 %i.ae, 2                        ; 4 uses
  %i.ag = getelementptr inbounds [4 x i8], ptr %0, i64 %i.af
  %i.ah = or disjoint i64 %i.ae, 1                ; 2 uses
  %i.ai = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ah
end_hunk_4
begin_hunk_5_@_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE_EEEvT_SM_SI_:bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.p = ptrtoint ptr %0 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit
  %.sroa.08.021 = phi ptr [ %.sroa.08.019, %.lr.ph ], [ %.sroa.08.0, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit ] ; 6 uses
  %.pn20 = phi ptr [ %0, %.lr.ph ], [ %.sroa.08.021, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit ] ; 2 uses
  %i.q = load i32, ptr %.sroa.08.021, align 4, !tbaa !3
  %i.r = load i32, ptr %0, align 4, !tbaa !3
  %i.s = load ptr, ptr %i.i, align 8, !tbaa !950
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #31
  %i.t = load ptr, ptr %i.j, align 8, !tbaa !956
  %i.u = call noundef zeroext i1 @_ZNK8facebook5velox10FlatVectorIbE11valueAtFastEi(ptr noundef nonnull align 8 dereferenceable(176) %i.t, i32 noundef %i.q)
  %i.v = zext i1 %i.u to i8
  store i8 %i.v, ptr %i.e, align 1, !tbaa !56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #31
  %i.w = load ptr, ptr %i.j, align 8, !tbaa !956
  %i.x = call noundef zeroext i1 @_ZNK8facebook5velox10FlatVectorIbE11valueAtFastEi(ptr noundef nonnull align 8 dereferenceable(176) %i.w, i32 noundef %i.r)
  %i.y = zext i1 %i.x to i8
  store i8 %i.y, ptr %i.f, align 1, !tbaa !56
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !643
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.aa, ptr %i.d, align 8, !tbaa !773
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  store ptr %i.d, ptr %4, align 8, !tbaa !774
  store ptr %i.e, ptr %i.k, align 8, !tbaa !674
  store ptr %i.f, ptr %i.l, align 8, !tbaa !674
  %i.ab = call noundef i32 @_ZZN8facebook5velox12SimpleVectorIbE39comparePrimitiveAscWithCustomComparisonEPKNS0_4TypeERKbS7_ENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(24) %4) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.ac = load ptr, ptr %i.m, align 8, !tbaa !958
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 1 ; 2 uses
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !959, !range !80, !noundef !81
  %i.af = trunc nuw i8 %i.ae to i1
  %i.ag = sub nsw i32 0, %i.ab
  %i.ah = select i1 %i.af, i32 %i.ab, i32 %i.ag
  %i.ai = icmp slt i32 %i.ah, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #31
  %i.aj = load i32, ptr %.sroa.08.021, align 4, !tbaa !3 ; 2 uses
  br i1 %i.ai, label %bb.c, label %.preheader24

bb.c:                                             ; preds = %bb.b
  %i.ak = ptrtoint ptr %.sroa.08.021 to i64
  %i.al = sub i64 %i.ak, %i.p                     ; 3 uses
  %i.am = ashr exact i64 %i.al, 2                 ; 2 uses
  %i.an = icmp sgt i64 %i.am, 1
  br i1 %i.an, label %bb.d, label %bb.e, !prof !76

bb.d:                                             ; preds = %bb.c
  %i.ao = getelementptr inbounds nuw i8, ptr %.pn20, i64 8
  %i.ap = sub nsw i64 0, %i.am
  %i.aq = getelementptr inbounds [4 x i8], ptr %i.ao, i64 %i.ap
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.aq, ptr noundef nonnull align 4 dereferenceable(1) %0, i64 %i.al, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit

bb.e:                                             ; preds = %bb.c
  %i.ar = icmp eq i64 %i.al, 4
  br i1 %i.ar, label %bb.f, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit

bb.f:                                             ; preds = %bb.e
  %i.as = getelementptr inbounds nuw i8, ptr %.pn20, i64 4
  %i.at = load i32, ptr %0, align 4, !tbaa !3
  store i32 %i.at, ptr %i.as, align 4, !tbaa !3
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit

.preheader24:                                     ; preds = %bb.b, %bb.g
  %.sroa.04.0.i = phi ptr [ %.sroa.0.0.i, %bb.g ], [ %.sroa.08.021, %bb.b ] ; 3 uses
  %.sroa.0.0.i = getelementptr inbounds i8, ptr %.sroa.04.0.i, i64 -4 ; 3 uses
  %i.au = load i32, ptr %.sroa.0.0.i, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #31
  %i.av = load ptr, ptr %i.j, align 8, !tbaa !956
  %i.aw = call noundef zeroext i1 @_ZNK8facebook5velox10FlatVectorIbE11valueAtFastEi(ptr noundef nonnull align 8 dereferenceable(176) %i.av, i32 noundef %i.aj)
  %i.ax = zext i1 %i.aw to i8
  store i8 %i.ax, ptr %i.b, align 1, !tbaa !56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #31
  %i.ay = load ptr, ptr %i.j, align 8, !tbaa !956
  %i.az = call noundef zeroext i1 @_ZNK8facebook5velox10FlatVectorIbE11valueAtFastEi(ptr noundef nonnull align 8 dereferenceable(176) %i.ay, i32 noundef %i.au)
  %i.ba = zext i1 %i.az to i8
  store i8 %i.ba, ptr %i.c, align 1, !tbaa !56
  %i.bb = load ptr, ptr %i.z, align 8, !tbaa !643
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.bb, ptr %i.a, align 8, !tbaa !773
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  store ptr %i.a, ptr %3, align 8, !tbaa !774
  store ptr %i.b, ptr %i.n, align 8, !tbaa !674
  store ptr %i.c, ptr %i.o, align 8, !tbaa !674
  %i.bc = call noundef i32 @_ZZN8facebook5velox12SimpleVectorIbE39comparePrimitiveAscWithCustomComparisonEPKNS0_4TypeERKbS7_ENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(24) %3) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bd = load i8, ptr %i.ad, align 1, !tbaa !959, !range !80, !noundef !81
  %i.be = trunc nuw i8 %i.bd to i1
  %i.bf = sub nsw i32 0, %i.bc
  %i.bg = select i1 %i.be, i32 %i.bc, i32 %i.bf
  %i.bh = icmp slt i32 %i.bg, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #31
  br i1 %i.bh, label %bb.g, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit

bb.g:                                             ; preds = %.preheader24
  %i.bi = load i32, ptr %.sroa.0.0.i, align 4, !tbaa !3
  store i32 %i.bi, ptr %.sroa.04.0.i, align 4, !tbaa !3
  br label %.preheader24, !llvm.loop !979

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit: ; preds = %.preheader24, %bb.f, %bb.e, %bb.d
  %.sink = phi ptr [ %0, %bb.f ], [ %0, %bb.d ], [ %0, %bb.e ], [ %.sroa.04.0.i, %.preheader24 ]
  store i32 %i.aj, ptr %.sink, align 4, !tbaa !3
  %.sroa.08.0 = getelementptr inbounds nuw i8, ptr %.sroa.08.021, i64 4 ; 2 uses
  %i.bj = icmp eq ptr %.sroa.08.0, %1
  br i1 %i.bj, label %.loopexit, label %bb.b, !llvm.loop !986

.loopexit:                                        ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit, %.preheader, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_SI_SJ_(ptr %0, ptr %1, i64 noundef %2, ptr noundef byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.410") align 8 %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.410", align 8 ; 4 uses
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.410", align 8 ; 4 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = ashr exact i64 %i.c, 2                   ; 2 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph22

bb.b:                                             ; preds = %.lr.ph22
  %i.h = icmp eq i64 %i.j, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph22, !llvm.loop !987

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %storemerge14.lcssa = phi ptr [ %1, %.lr.ph ], [ %i.n, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  call void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_RSI_(ptr %0, ptr %storemerge14.lcssa, ptr noundef nonnull align 8 dereferenceable(24) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_RSI_(ptr %0, ptr %storemerge14.lcssa, ptr noundef nonnull align 8 dereferenceable(24) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %.loopexit

.lr.ph22:                                         ; preds = %.lr.ph, %bb.b
  %storemerge1421 = phi ptr [ %i.n, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.01520 = phi i64 [ %i.j, %bb.b ], [ %2, %.lr.ph ]
  %i.i = phi i64 [ %i.q, %bb.b ], [ %i.d, %.lr.ph ]
  %i.j = add nsw i64 %.01520, -1                  ; 3 uses
  %i.k = lshr i64 %i.i, 1
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.k
  %i.m = getelementptr inbounds i8, ptr %storemerge1421, i64 -4
  tail call void @_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_SM_SM_SI_(ptr %0, ptr nonnull %i.f, ptr %i.l, ptr nonnull %i.m, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.410") align 8 %3)
  %i.n = tail call ptr @_ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE0_EEET_SM_SM_SM_SI_(ptr nonnull %i.f, ptr %storemerge1421, ptr %0, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.410") align 8 %3) ; 4 uses
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_SI_SJ_(ptr %i.n, ptr %storemerge1421, i64 noundef %i.j, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.410") align 8 %3)
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = sub i64 %i.o, %i.a
  %i.q = ashr exact i64 %i.p, 2                   ; 2 uses
  %i.r = icmp sgt i64 %i.q, 16
  br i1 %i.r, label %bb.b, label %.loopexit, !llvm.loop !987

.loopexit:                                        ; preds = %.lr.ph22, %bb.a, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_RSI_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = icmp sgt i64 %i.c, 4
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_SM_RSI_.exit
  %.sroa.0.040 = phi ptr [ %1, %.lr.ph ], [ %i.e, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_SM_RSI_.exit ]
  %i.e = getelementptr inbounds i8, ptr %.sroa.0.040, i64 -4 ; 4 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !3    ; 3 uses
  %i.g = load i32, ptr %0, align 4, !tbaa !3
  store i32 %i.g, ptr %i.e, align 4, !tbaa !3
  %i.h = ptrtoint ptr %i.e to i64
  %i.i = sub i64 %i.h, %i.a                       ; 3 uses
  %i.j = ashr exact i64 %i.i, 2                   ; 3 uses
  %.sroa.020.0.copyload = load ptr, ptr %2, align 8 ; 2 uses
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 6 uses
  %i.k = add nsw i64 %i.j, -1
  %3 = sdiv i64 %i.k, 2
  %i.l = icmp sgt i64 %i.j, 2
  br i1 %i.l, label %.lr.ph.i.i.preheader, label %._crit_edge.i.i

.lr.ph.i.i.preheader:                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 8
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S8_EUliE2_EEvT0_T1_S7_S8_ENKUliiE0_clEii.exit17.thread
  %.034.i.i = phi i64 [ %i.bf, %_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S8_EUliE2_EEvT0_T1_S7_S8_ENKUliiE0_clEii.exit17.thread ], [ 0, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.n = shl i64 %.034.i.i, 1                     ; 2 uses
  %i.o = add i64 %i.n, 2                          ; 4 uses
  %i.p = getelementptr inbounds [4 x i8], ptr %0, i64 %i.o
  %i.q = or disjoint i64 %i.n, 1                  ; 2 uses
  %i.r = getelementptr inbounds [4 x i8], ptr %0, i64 %i.q
  %i.s = load i32, ptr %i.p, align 4, !tbaa !3    ; 2 uses
  %i.t = load i32, ptr %i.r, align 4, !tbaa !3    ; 2 uses
  %i.u = load ptr, ptr %.sroa.020.0.copyload, align 8, !tbaa !988
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !255  ; 3 uses
  %.not.i.i.i3 = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i3, label %_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE2_clEi.exit12.i6, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.x = zext i32 %i.s to i64                     ; 2 uses
  %i.y = lshr i64 %i.x, 6
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.y
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !143
  %i.ab = and i64 %i.x, 63
  %i.ac = shl nuw i64 1, %i.ab
  %i.ad = and i64 %i.aa, %i.ac
  %.not.i.i.i.i4 = icmp eq i64 %i.ad, 0
  %i.ae = zext i32 %i.t to i64                    ; 2 uses
  %i.af = lshr i64 %i.ae, 6
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.af
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !143
  %i.ai = and i64 %i.ae, 63
  %i.aj = shl nuw i64 1, %i.ai
  %i.ak = and i64 %i.ah, %i.aj
  %.not.i.i.i11.i5 = icmp eq i64 %i.ak, 0
  br label %_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE2_clEi.exit12.i6

_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE2_clEi.exit12.i6: ; preds = %bb.c, %.lr.ph.i.i
  %i.al = phi i1 [ %.not.i.i.i.i4, %bb.c ], [ false, %.lr.ph.i.i ] ; 3 uses
  %i.am = phi i1 [ %.not.i.i.i11.i5, %bb.c ], [ false, %.lr.ph.i.i ] ; 2 uses
  %or.cond.i7 = or i1 %i.al, %i.am
  br i1 %or.cond.i7, label %bb.d, label %bb.i

bb.d:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE2_clEi.exit12.i6
  %.sroa.0.0.copyload.i10 = load i64, ptr %.sroa.6.0.copyload, align 4 ; 3 uses
  %.sroa.37.0.extract.shift.i.i11 = lshr i64 %.sroa.0.0.copyload.i10, 32
  %.sroa.37.0.extract.trunc.i.i12 = trunc nuw i64 %.sroa.37.0.extract.shift.i.i11 to i32
  switch i32 %.sroa.37.0.extract.trunc.i.i12, label %bb.h [
    i32 1, label %bb.e
    i32 0, label %bb.g
  ]

bb.e:                                             ; preds = %bb.d
  %i.an = and i64 %.sroa.0.0.copyload.i10, 65536
  %.not.i.i15 = icmp eq i64 %i.an, 0
  br i1 %.not.i.i15, label %bb.f, label %.critedge.i16

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs, ptr noundef nonnull @.str.81) #35
  unreachable

bb.g:                                             ; preds = %bb.d
  %or.cond.i.i13 = and i1 %i.al, %i.am
  br i1 %or.cond.i.i13, label %_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S8_EUliE2_EEvT0_T1_S7_S8_ENKUliiE0_clEii.exit17.thread, label %_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S8_EUliE2_EEvT0_T1_S7_S8_ENKUliiE0_clEii.exit17

bb.h:                                             ; preds = %bb.d
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs_0, ptr noundef nonnull @.str.82) #35
  unreachable

.critedge.i16:                                    ; preds = %bb.e
  tail call void @_ZSt27__throw_bad_optional_accessv() #35
  unreachable

bb.i:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE2_clEi.exit12.i6
  %i.ao = load ptr, ptr %.sroa.7.0.copyload, align 8, !tbaa !990, !nonnull !81, !align !444
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !992
  %i.aq = tail call noundef zeroext i1 @_ZNK8facebook5velox10FlatVectorIbE11valueAtFastEi(ptr noundef nonnull align 8 dereferenceable(176) %i.ap, i32 noundef %i.s) ; 2 uses
  %i.ar = load ptr, ptr %.sroa.7.0.copyload, align 8, !tbaa !990, !nonnull !81, !align !444
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !992
  %i.at = tail call noundef zeroext i1 @_ZNK8facebook5velox10FlatVectorIbE11valueAtFastEi(ptr noundef nonnull align 8 dereferenceable(176) %i.as, i32 noundef %i.t) ; 2 uses
  %i.au = xor i1 %i.aq, true
  %i.av = and i1 %i.at, %i.au
  %i.aw = xor i1 %i.aq, %i.at
  %i.ax = load ptr, ptr %i.m, align 8, !tbaa !994, !nonnull !81, !align !446
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 1
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !959, !range !80, !noundef !81
  %i.ba = trunc nuw i8 %i.az to i1
  %not..i.i8 = xor i1 %i.ba, true
  %i.bb = and i1 %i.aw, %not..i.i8
  %i.bc = xor i1 %i.av, %i.bb
  br i1 %i.bc, label %bb.j, label %_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S8_EUliE2_EEvT0_T1_S7_S8_ENKUliiE0_clEii.exit17.thread

_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S8_EUliE2_EEvT0_T1_S7_S8_ENKUliiE0_clEii.exit17: ; preds = %bb.g
  %i.bd = trunc i64 %.sroa.0.0.copyload.i10 to i1
  %i.be = xor i1 %i.al, %i.bd
  %.fr = freeze i1 %i.be
  br i1 %.fr, label %_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S8_EUliE2_EEvT0_T1_S7_S8_ENKUliiE0_clEii.exit17.thread, label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S8_EUliE2_EEvT0_T1_S7_S8_ENKUliiE0_clEii.exit17
  br label %_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S8_EUliE2_EEvT0_T1_S7_S8_ENKUliiE0_clEii.exit17.thread

_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S8_EUliE2_EEvT0_T1_S7_S8_ENKUliiE0_clEii.exit17.thread: ; preds = %bb.g, %bb.i, %_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S8_EUliE2_EEvT0_T1_S7_S8_ENKUliiE0_clEii.exit17, %bb.j
  %i.bf = phi i64 [ %i.q, %bb.j ], [ %i.o, %_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S8_EUliE2_EEvT0_T1_S7_S8_ENKUliiE0_clEii.exit17 ], [ %i.o, %bb.i ], [ %i.o, %bb.g ] ; 4 uses
  %i.bg = getelementptr inbounds [4 x i8], ptr %0, i64 %i.bf
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !3
  %i.bi = getelementptr inbounds [4 x i8], ptr %0, i64 %.034.i.i
  store i32 %i.bh, ptr %i.bi, align 4, !tbaa !3
  %i.bj = icmp slt i64 %i.bf, %3
  br i1 %i.bj, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !995

._crit_edge.i.i:                                  ; preds = %_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S8_EUliE2_EEvT0_T1_S7_S8_ENKUliiE0_clEii.exit17.thread, %bb.b
  %.0.lcssa.i.i = phi i64 [ 0, %bb.b ], [ %i.bf, %_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S8_EUliE2_EEvT0_T1_S7_S8_ENKUliiE0_clEii.exit17.thread ] ; 5 uses
  %i.bk = and i64 %i.i, 4
  %i.bl = icmp eq i64 %i.bk, 0
  br i1 %i.bl, label %bb.k, label %bb.l

bb.k:                                             ; preds = %._crit_edge.i.i
  %i.bm = add nsw i64 %i.j, -2
  %i.bn = ashr exact i64 %i.bm, 1
  %i.bo = icmp eq i64 %.0.lcssa.i.i, %i.bn
  br i1 %i.bo, label %.thread.i, label %bb.l

.thread.i:                                        ; preds = %bb.k
  %i.bp = shl nuw nsw i64 %.0.lcssa.i.i, 1
  %i.bq = or disjoint i64 %i.bp, 1                ; 2 uses
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bq
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !3
  %i.bt = getelementptr inbounds [4 x i8], ptr %0, i64 %.0.lcssa.i.i
  store i32 %i.bs, ptr %i.bt, align 4, !tbaa !3
  br label %.lr.ph.i.i.preheader.i

bb.l:                                             ; preds = %bb.k, %._crit_edge.i.i
  %.not.i = icmp eq i64 %.0.lcssa.i.i, 0
  br i1 %.not.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_SM_RSI_.exit, label %.lr.ph.i.i.preheader.i

.lr.ph.i.i.preheader.i:                           ; preds = %bb.l, %.thread.i
  %.1.i11.i = phi i64 [ %i.bq, %.thread.i ], [ %.0.lcssa.i.i, %bb.l ]
  %i.bu = zext i32 %i.f to i64                    ; 2 uses
  %i.bv = lshr i64 %i.bu, 6
  %i.bw = and i64 %i.bu, 63
  %i.bx = shl nuw i64 1, %i.bw
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 8
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.t, %.lr.ph.i.i.preheader.i
  %.019.i.i.i = phi i64 [ %.0920.i.i67.i, %bb.t ], [ %.1.i11.i, %.lr.ph.i.i.preheader.i ] ; 4 uses
  %.0920.in.i.i.i = add nsw i64 %.019.i.i.i, -1
  %.0920.i.i67.i = lshr i64 %.0920.in.i.i.i, 1    ; 3 uses
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0920.i.i67.i ; 2 uses
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !3  ; 3 uses
  %i.cb = load ptr, ptr %.sroa.020.0.copyload, align 8, !tbaa !988
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 40
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !255 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.cd, null
  br i1 %.not.i.i.i, label %_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE2_clEi.exit12.i, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i.i.i
  %i.ce = zext i32 %i.ca to i64                   ; 2 uses
  %i.cf = lshr i64 %i.ce, 6
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %i.cf
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !143
  %i.ci = and i64 %i.ce, 63
  %i.cj = shl nuw i64 1, %i.ci
  %i.ck = and i64 %i.ch, %i.cj
  %.not.i.i.i.i = icmp eq i64 %i.ck, 0
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %i.bv
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !143
  %i.cn = and i64 %i.cm, %i.bx
  %.not.i.i.i11.i = icmp eq i64 %i.cn, 0
  br label %_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE2_clEi.exit12.i

_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE2_clEi.exit12.i: ; preds = %bb.m, %.lr.ph.i.i.i
  %i.co = phi i1 [ %.not.i.i.i.i, %bb.m ], [ false, %.lr.ph.i.i.i ] ; 3 uses
  %i.cp = phi i1 [ %.not.i.i.i11.i, %bb.m ], [ false, %.lr.ph.i.i.i ] ; 2 uses
  %or.cond.i = or i1 %i.co, %i.cp
  br i1 %or.cond.i, label %bb.n, label %bb.s

bb.n:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE2_clEi.exit12.i
  %.sroa.0.0.copyload.i = load i64, ptr %.sroa.6.0.copyload, align 4 ; 3 uses
  %.sroa.37.0.extract.shift.i.i = lshr i64 %.sroa.0.0.copyload.i, 32
  %.sroa.37.0.extract.trunc.i.i = trunc nuw i64 %.sroa.37.0.extract.shift.i.i to i32
  switch i32 %.sroa.37.0.extract.trunc.i.i, label %bb.r [
    i32 1, label %bb.o
    i32 0, label %bb.q
  ]

bb.o:                                             ; preds = %bb.n
  %i.cq = and i64 %.sroa.0.0.copyload.i, 65536
  %.not.i.i = icmp eq i64 %i.cq, 0
  br i1 %.not.i.i, label %bb.p, label %.critedge.i

bb.p:                                             ; preds = %bb.o
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs, ptr noundef nonnull @.str.81) #35
  unreachable

bb.q:                                             ; preds = %bb.n
  %or.cond.i.i = and i1 %i.co, %i.cp
  %i.cr = trunc i64 %.sroa.0.0.copyload.i to i1
  %i.cs = xor i1 %i.co, %i.cr
  %or.cond.demorgan = or i1 %or.cond.i.i, %i.cs
  br i1 %or.cond.demorgan, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_SM_RSI_.exit, label %bb.t

bb.r:                                             ; preds = %bb.n
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs_0, ptr noundef nonnull @.str.82) #35
  unreachable

.critedge.i:                                      ; preds = %bb.o
  tail call void @_ZSt27__throw_bad_optional_accessv() #35
  unreachable

bb.s:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE2_clEi.exit12.i
  %i.ct = load ptr, ptr %.sroa.7.0.copyload, align 8, !tbaa !990, !nonnull !81, !align !444
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !992
  %i.cv = tail call noundef zeroext i1 @_ZNK8facebook5velox10FlatVectorIbE11valueAtFastEi(ptr noundef nonnull align 8 dereferenceable(176) %i.cu, i32 noundef %i.ca) ; 2 uses
  %i.cw = load ptr, ptr %.sroa.7.0.copyload, align 8, !tbaa !990, !nonnull !81, !align !444
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !992
  %i.cy = tail call noundef zeroext i1 @_ZNK8facebook5velox10FlatVectorIbE11valueAtFastEi(ptr noundef nonnull align 8 dereferenceable(176) %i.cx, i32 noundef %i.f) ; 2 uses
  %i.cz = xor i1 %i.cv, true
  %i.da = and i1 %i.cy, %i.cz
  %i.db = xor i1 %i.cv, %i.cy
  %i.dc = load ptr, ptr %i.by, align 8, !tbaa !994, !nonnull !81, !align !446
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 1
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !959, !range !80, !noundef !81
  %i.df = trunc nuw i8 %i.de to i1
  %not..i.i = xor i1 %i.df, true
  %i.dg = and i1 %i.db, %not..i.i
  %i.dh = xor i1 %i.da, %i.dg
  br i1 %i.dh, label %._crit_edge43, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_SM_RSI_.exit

._crit_edge43:                                    ; preds = %bb.s
  %.pre = load i32, ptr %i.bz, align 4, !tbaa !3
  br label %bb.t

bb.t:                                             ; preds = %._crit_edge43, %bb.q
  %i.di = phi i32 [ %.pre, %._crit_edge43 ], [ %i.ca, %bb.q ]
  %i.dj = getelementptr inbounds [4 x i8], ptr %0, i64 %.019.i.i.i
  store i32 %i.di, ptr %i.dj, align 4, !tbaa !3
  %.not8.i = icmp eq i64 %.0920.i.i67.i, 0
  br i1 %.not8.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_SM_RSI_.exit, label %.lr.ph.i.i.i, !llvm.loop !996

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_SM_RSI_.exit: ; preds = %bb.q, %bb.s, %bb.t, %bb.l
  %.0.lcssa.i.i.i = phi i64 [ 0, %bb.l ], [ %.019.i.i.i, %bb.s ], [ %.019.i.i.i, %bb.q ], [ 0, %bb.t ]
  %i.dk = getelementptr inbounds [4 x i8], ptr %0, i64 %.0.lcssa.i.i.i
  store i32 %i.f, ptr %i.dk, align 4, !tbaa !3
  %i.dl = icmp sgt i64 %i.i, 4
  br i1 %i.dl, label %bb.b, label %._crit_edge, !llvm.loop !997

._crit_edge:                                      ; preds = %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_SM_RSI_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_RSI_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 2                   ; 3 uses
  %i.e = icmp slt i64 %i.d, 2
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i64 %i.d, -2                     ; 3 uses
  %i.g = lshr i64 %i.f, 1
  %.sroa.0.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.0.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.h = add nsw i64 %i.d, -1
  %i.i = lshr i64 %i.h, 1                         ; 2 uses
  %i.j = and i64 %i.c, 4
  %i.k = icmp eq i64 %i.j, 0
  %i.l = lshr exact i64 %i.f, 1                   ; 2 uses
  %i.m = or disjoint i64 %i.f, 1                  ; 2 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.m
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.l
  br label %bb.c

bb.c:                                             ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SI_SI_SJ_T2_.exit, %bb.b
  %.08 = phi i64 [ %i.g, %bb.b ], [ %i.dl, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SI_SI_SJ_T2_.exit ] ; 8 uses
  %i.p = getelementptr inbounds [4 x i8], ptr %0, i64 %.08
  %i.q = load i32, ptr %i.p, align 4, !tbaa !3    ; 3 uses
  %.sroa.0.sroa.0.0.copyload = load ptr, ptr %2, align 8, !tbaa !40 ; 2 uses
  %.sroa.0.sroa.2.0.copyload = load ptr, ptr %.sroa.0.sroa.2.0..sroa_idx, align 8, !tbaa !874 ; 2 uses
  %.sroa.0.sroa.3.0.copyload = load ptr, ptr %.sroa.0.sroa.3.0..sroa_idx, align 8, !tbaa !40 ; 6 uses
  %i.r = icmp slt i64 %.08, %i.i
  br i1 %i.r, label %.lr.ph.i.preheader, label %._crit_edge.i

.lr.ph.i.preheader:                               ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.sroa.3.0.copyload, i64 8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S8_EUliE2_EEvT0_T1_S7_S8_ENKUliiE0_clEii.exit24.thread
  %.034.i = phi i64 [ %i.bl, %_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S8_EUliE2_EEvT0_T1_S7_S8_ENKUliiE0_clEii.exit24.thread ], [ %.08, %.lr.ph.i.preheader ] ; 2 uses
  %i.t = shl i64 %.034.i, 1                       ; 2 uses
  %i.u = add i64 %i.t, 2                          ; 4 uses
  %i.v = getelementptr inbounds [4 x i8], ptr %0, i64 %i.u
  %i.w = or disjoint i64 %i.t, 1                  ; 2 uses
  %i.x = getelementptr inbounds [4 x i8], ptr %0, i64 %i.w
  %i.y = load i32, ptr %i.v, align 4, !tbaa !3    ; 2 uses
  %i.z = load i32, ptr %i.x, align 4, !tbaa !3    ; 2 uses
  %i.aa = load ptr, ptr %.sroa.0.sroa.0.0.copyload, align 8, !tbaa !988
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !255 ; 3 uses
  %.not.i.i.i10 = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i10, label %_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE2_clEi.exit12.i13, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %i.ad = zext i32 %i.y to i64                    ; 2 uses
  %i.ae = lshr i64 %i.ad, 6
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.ae
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !143
  %i.ah = and i64 %i.ad, 63
  %i.ai = shl nuw i64 1, %i.ah
  %i.aj = and i64 %i.ag, %i.ai
  %.not.i.i.i.i11 = icmp eq i64 %i.aj, 0
  %i.ak = zext i32 %i.z to i64                    ; 2 uses
  %i.al = lshr i64 %i.ak, 6
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.al
  %i.an = load i64, ptr %i.am, align 8, !tbaa !143
  %i.ao = and i64 %i.ak, 63
  %i.ap = shl nuw i64 1, %i.ao
  %i.aq = and i64 %i.an, %i.ap
  %.not.i.i.i11.i12 = icmp eq i64 %i.aq, 0
  br label %_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE2_clEi.exit12.i13

_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE2_clEi.exit12.i13: ; preds = %bb.d, %.lr.ph.i
  %i.ar = phi i1 [ %.not.i.i.i.i11, %bb.d ], [ false, %.lr.ph.i ] ; 3 uses
  %i.as = phi i1 [ %.not.i.i.i11.i12, %bb.d ], [ false, %.lr.ph.i ] ; 2 uses
  %or.cond.i14 = or i1 %i.ar, %i.as
end_hunk_5
begin_hunk_6_@_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_SK_:bb.a
  br label %bb.b

bb.b:                                             ; preds = %bb.g, %.lr.ph.i
  %.sroa.08.020.i.idx = phi i64 [ 4, %.lr.ph.i ], [ %.sroa.08.020.i.add, %bb.g ] ; 4 uses
  %.pn19.i = phi ptr [ %0, %.lr.ph.i ], [ %.sroa.08.020.i.ptr, %bb.g ] ; 3 uses
  %.sroa.08.020.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.08.020.i.idx ; 6 uses
  %i.e = load i32, ptr %.sroa.08.020.i.ptr, align 4, !tbaa !3
  %i.f = load i32, ptr %0, align 4, !tbaa !3
  %i.g = call noundef zeroext i1 @_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S9_SA_EUliE0_EEvT0_T1_S7_SA_ENKUliiE0_clEii(ptr noundef nonnull align 8 dereferenceable(24) %7, i32 noundef %i.e, i32 noundef %i.f)
  br i1 %i.g, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.h = load i32, ptr %.sroa.08.020.i.ptr, align 4, !tbaa !3
  %i.i = icmp samesign ugt i64 %.sroa.08.020.i.idx, 4
  br i1 %i.i, label %bb.d, label %bb.e, !prof !76

bb.d:                                             ; preds = %bb.c
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, ptr noundef nonnull align 4 dereferenceable(1) %0, i64 %.sroa.08.020.i.idx, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %.pn19.i, i64 4
  %i.k = load i32, ptr %0, align 4, !tbaa !3
  store i32 %i.k, ptr %i.j, align 4, !tbaa !3
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i: ; preds = %bb.e, %bb.d
  store i32 %i.h, ptr %0, align 4, !tbaa !3
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false)
  %i.l = load i32, ptr %.sroa.08.020.i.ptr, align 4, !tbaa !3 ; 3 uses
  %i.m = load i32, ptr %.pn19.i, align 4, !tbaa !3
  %i.n = call noundef zeroext i1 @_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S9_SA_EUliE0_EEvT0_T1_S7_SA_ENKUliiE0_clEii(ptr noundef nonnull align 8 dereferenceable(24) %6, i32 noundef %i.l, i32 noundef %i.m)
  br i1 %i.n, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SK_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.f, %.lr.ph.i.i
  %.sroa.0.09.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.pn19.i, %bb.f ] ; 4 uses
  %.sroa.04.08.i.i = phi ptr [ %.sroa.0.09.i.i, %.lr.ph.i.i ], [ %.sroa.08.020.i.ptr, %bb.f ]
  %i.o = load i32, ptr %.sroa.0.09.i.i, align 4, !tbaa !3
  store i32 %i.o, ptr %.sroa.04.08.i.i, align 4, !tbaa !3
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.0.09.i.i, i64 -4 ; 2 uses
  %i.p = load i32, ptr %.sroa.0.0.i.i, align 4, !tbaa !3
  %i.q = call noundef zeroext i1 @_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S9_SA_EUliE0_EEvT0_T1_S7_SA_ENKUliiE0_clEii(ptr noundef nonnull align 8 dereferenceable(24) %6, i32 noundef %i.l, i32 noundef %i.p)
  br i1 %i.q, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SK_.exit.i, !llvm.loop !1026

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SK_.exit.i: ; preds = %.lr.ph.i.i, %bb.f
  %.sroa.04.0.lcssa.i.i = phi ptr [ %.sroa.08.020.i.ptr, %bb.f ], [ %.sroa.0.09.i.i, %.lr.ph.i.i ]
  store i32 %i.l, ptr %.sroa.04.0.lcssa.i.i, align 4, !tbaa !3
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %bb.g

bb.g:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SK_.exit.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i
  %.sroa.08.020.i.add = add nuw nsw i64 %.sroa.08.020.i.idx, 4 ; 2 uses
  %i.r = icmp eq i64 %.sroa.08.020.i.add, 64
  br i1 %i.r, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_SK_.exit, label %bb.b, !llvm.loop !1027

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_SK_.exit: ; preds = %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %.sroa.033.sroa.0.0.copyload38 = load <3 x ptr>, ptr %2, align 8
  %i.t = icmp eq ptr %i.s, %1
  br i1 %i.t, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_SK_.exit, label %.lr.ph.i6

.lr.ph.i6:                                        ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_SK_.exit, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SK_.exit.i7
  %.sroa.03.07.i = phi ptr [ %i.aa, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SK_.exit.i7 ], [ %i.s, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_SK_.exit ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store <3 x ptr> %.sroa.033.sroa.0.0.copyload38, ptr %5, align 8
  %i.u = load i32, ptr %.sroa.03.07.i, align 4, !tbaa !3 ; 3 uses
  %.sroa.0.07.i.i = getelementptr inbounds i8, ptr %.sroa.03.07.i, i64 -4 ; 2 uses
  %i.v = load i32, ptr %.sroa.0.07.i.i, align 4, !tbaa !3
  %i.w = call noundef zeroext i1 @_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S9_SA_EUliE0_EEvT0_T1_S7_SA_ENKUliiE0_clEii(ptr noundef nonnull align 8 dereferenceable(24) %5, i32 noundef %i.u, i32 noundef %i.v)
  br i1 %i.w, label %.lr.ph.i.i9, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SK_.exit.i7

.lr.ph.i.i9:                                      ; preds = %.lr.ph.i6, %.lr.ph.i.i9
  %.sroa.0.09.i.i10 = phi ptr [ %.sroa.0.0.i.i12, %.lr.ph.i.i9 ], [ %.sroa.0.07.i.i, %.lr.ph.i6 ] ; 4 uses
  %.sroa.04.08.i.i11 = phi ptr [ %.sroa.0.09.i.i10, %.lr.ph.i.i9 ], [ %.sroa.03.07.i, %.lr.ph.i6 ]
  %i.x = load i32, ptr %.sroa.0.09.i.i10, align 4, !tbaa !3
  store i32 %i.x, ptr %.sroa.04.08.i.i11, align 4, !tbaa !3
  %.sroa.0.0.i.i12 = getelementptr inbounds i8, ptr %.sroa.0.09.i.i10, i64 -4 ; 2 uses
  %i.y = load i32, ptr %.sroa.0.0.i.i12, align 4, !tbaa !3
  %i.z = call noundef zeroext i1 @_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S9_SA_EUliE0_EEvT0_T1_S7_SA_ENKUliiE0_clEii(ptr noundef nonnull align 8 dereferenceable(24) %5, i32 noundef %i.u, i32 noundef %i.y)
  br i1 %i.z, label %.lr.ph.i.i9, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SK_.exit.i7, !llvm.loop !1026

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SK_.exit.i7: ; preds = %.lr.ph.i.i9, %.lr.ph.i6
  %.sroa.04.0.lcssa.i.i8 = phi ptr [ %.sroa.03.07.i, %.lr.ph.i6 ], [ %.sroa.0.09.i.i10, %.lr.ph.i.i9 ]
  store i32 %i.u, ptr %.sroa.04.0.lcssa.i.i8, align 4, !tbaa !3
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.03.07.i, i64 4 ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %1
  br i1 %i.ab, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_SK_.exit, label %.lr.ph.i6, !llvm.loop !1028

bb.h:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.ac = icmp eq ptr %0, %1
  %.sroa.08.018.i14 = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.ad = icmp eq ptr %.sroa.08.018.i14, %1
  %or.cond = select i1 %i.ac, i1 true, i1 %i.ad
  br i1 %or.cond, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_SK_.exit26, label %.lr.ph.i15

.lr.ph.i15:                                       ; preds = %bb.h, %bb.n
  %.sroa.08.020.i16 = phi ptr [ %.sroa.08.0.i20, %bb.n ], [ %.sroa.08.018.i14, %bb.h ] ; 8 uses
  %.pn19.i17 = phi ptr [ %.sroa.08.020.i16, %bb.n ], [ %0, %bb.h ] ; 4 uses
  %i.ae = load i32, ptr %.sroa.08.020.i16, align 4, !tbaa !3
  %i.af = load i32, ptr %0, align 4, !tbaa !3
  %i.ag = call noundef zeroext i1 @_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S9_SA_EUliE0_EEvT0_T1_S7_SA_ENKUliiE0_clEii(ptr noundef nonnull align 8 dereferenceable(24) %4, i32 noundef %i.ae, i32 noundef %i.af)
  br i1 %i.ag, label %bb.i, label %bb.m

bb.i:                                             ; preds = %.lr.ph.i15
  %i.ah = load i32, ptr %.sroa.08.020.i16, align 4, !tbaa !3
  %i.ai = ptrtoint ptr %.sroa.08.020.i16 to i64
  %i.aj = sub i64 %i.ai, %i.b                     ; 3 uses
  %i.ak = ashr exact i64 %i.aj, 2                 ; 2 uses
  %i.al = icmp sgt i64 %i.ak, 1
  br i1 %i.al, label %bb.j, label %bb.k, !prof !76

bb.j:                                             ; preds = %bb.i
  %i.am = getelementptr inbounds nuw i8, ptr %.pn19.i17, i64 8
  %i.an = sub nsw i64 0, %i.ak
  %i.ao = getelementptr inbounds [4 x i8], ptr %i.am, i64 %i.an
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.ao, ptr noundef nonnull align 4 dereferenceable(1) %0, i64 %i.aj, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i25

bb.k:                                             ; preds = %bb.i
  %i.ap = icmp eq i64 %i.aj, 4
  br i1 %i.ap, label %bb.l, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i25

bb.l:                                             ; preds = %bb.k
  %i.aq = getelementptr inbounds nuw i8, ptr %.pn19.i17, i64 4
  %i.ar = load i32, ptr %0, align 4, !tbaa !3
  store i32 %i.ar, ptr %i.aq, align 4, !tbaa !3
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i25

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i25: ; preds = %bb.l, %bb.k, %bb.j
  store i32 %i.ah, ptr %0, align 4, !tbaa !3
  br label %bb.n

bb.m:                                             ; preds = %.lr.ph.i15
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  %i.as = load i32, ptr %.sroa.08.020.i16, align 4, !tbaa !3 ; 3 uses
  %i.at = load i32, ptr %.pn19.i17, align 4, !tbaa !3
  %i.au = call noundef zeroext i1 @_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S9_SA_EUliE0_EEvT0_T1_S7_SA_ENKUliiE0_clEii(ptr noundef nonnull align 8 dereferenceable(24) %3, i32 noundef %i.as, i32 noundef %i.at)
  br i1 %i.au, label %.lr.ph.i.i21, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SK_.exit.i18

.lr.ph.i.i21:                                     ; preds = %bb.m, %.lr.ph.i.i21
  %.sroa.0.09.i.i22 = phi ptr [ %.sroa.0.0.i.i24, %.lr.ph.i.i21 ], [ %.pn19.i17, %bb.m ] ; 4 uses
  %.sroa.04.08.i.i23 = phi ptr [ %.sroa.0.09.i.i22, %.lr.ph.i.i21 ], [ %.sroa.08.020.i16, %bb.m ]
  %i.av = load i32, ptr %.sroa.0.09.i.i22, align 4, !tbaa !3
  store i32 %i.av, ptr %.sroa.04.08.i.i23, align 4, !tbaa !3
  %.sroa.0.0.i.i24 = getelementptr inbounds i8, ptr %.sroa.0.09.i.i22, i64 -4 ; 2 uses
  %i.aw = load i32, ptr %.sroa.0.0.i.i24, align 4, !tbaa !3
  %i.ax = call noundef zeroext i1 @_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S9_SA_EUliE0_EEvT0_T1_S7_SA_ENKUliiE0_clEii(ptr noundef nonnull align 8 dereferenceable(24) %3, i32 noundef %i.as, i32 noundef %i.aw)
  br i1 %i.ax, label %.lr.ph.i.i21, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SK_.exit.i18, !llvm.loop !1026

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SK_.exit.i18: ; preds = %.lr.ph.i.i21, %bb.m
  %.sroa.04.0.lcssa.i.i19 = phi ptr [ %.sroa.08.020.i16, %bb.m ], [ %.sroa.0.09.i.i22, %.lr.ph.i.i21 ]
  store i32 %i.as, ptr %.sroa.04.0.lcssa.i.i19, align 4, !tbaa !3
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %bb.n

bb.n:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SK_.exit.i18, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i25
  %.sroa.08.0.i20 = getelementptr inbounds nuw i8, ptr %.sroa.08.020.i16, i64 4 ; 2 uses
  %i.ay = icmp eq ptr %.sroa.08.0.i20, %1
  br i1 %i.ay, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_SK_.exit26, label %.lr.ph.i15, !llvm.loop !1027

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_SK_.exit26: ; preds = %bb.n, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_SK_.exit

_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_SK_.exit: ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_SK_.exit, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SK_.exit.i7, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_SK_.exit26
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_RSK_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat {
bb.a:
  %3 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_val.423", align 8 ; 6 uses
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.422", align 8 ; 6 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = icmp sgt i64 %i.c, 4
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_SO_RSK_.exit
  %.sroa.0.05 = phi ptr [ %i.e, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_SO_RSK_.exit ], [ %1, %bb.a ]
  %i.e = getelementptr inbounds i8, ptr %.sroa.0.05, i64 -4 ; 4 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !3    ; 2 uses
  %i.g = load i32, ptr %0, align 4, !tbaa !3
  store i32 %i.g, ptr %i.e, align 4, !tbaa !3
  %i.h = ptrtoint ptr %i.e to i64
  %i.i = sub i64 %i.h, %i.a                       ; 3 uses
  %i.j = ashr exact i64 %i.i, 2                   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.k = add nsw i64 %i.j, -1
  %5 = sdiv i64 %i.k, 2
  %i.l = icmp sgt i64 %i.j, 2
  br i1 %i.l, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph, %.lr.ph.i.i
  %.034.i.i = phi i64 [ %spec.select.i.i, %.lr.ph.i.i ], [ 0, %.lr.ph ] ; 2 uses
  %i.m = shl i64 %.034.i.i, 1                     ; 2 uses
  %i.n = add i64 %i.m, 2                          ; 2 uses
  %i.o = getelementptr inbounds [4 x i8], ptr %0, i64 %i.n
  %i.p = or disjoint i64 %i.m, 1                  ; 2 uses
  %i.q = getelementptr inbounds [4 x i8], ptr %0, i64 %i.p
  %i.r = load i32, ptr %i.o, align 4, !tbaa !3
  %i.s = load i32, ptr %i.q, align 4, !tbaa !3
  %i.t = call noundef zeroext i1 @_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S9_SA_EUliE0_EEvT0_T1_S7_SA_ENKUliiE0_clEii(ptr noundef nonnull align 8 dereferenceable(24) %4, i32 noundef %i.r, i32 noundef %i.s)
  %spec.select.i.i = select i1 %i.t, i64 %i.p, i64 %i.n ; 4 uses
  %i.u = getelementptr inbounds [4 x i8], ptr %0, i64 %spec.select.i.i
  %i.v = load i32, ptr %i.u, align 4, !tbaa !3
  %i.w = getelementptr inbounds [4 x i8], ptr %0, i64 %.034.i.i
  store i32 %i.v, ptr %i.w, align 4, !tbaa !3
  %i.x = icmp slt i64 %spec.select.i.i, %5
  br i1 %i.x, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !1029

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %.lr.ph
  %.0.lcssa.i.i = phi i64 [ 0, %.lr.ph ], [ %spec.select.i.i, %.lr.ph.i.i ] ; 5 uses
  %i.y = and i64 %i.i, 4
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.aa = add nsw i64 %i.j, -2
  %i.ab = ashr exact i64 %i.aa, 1
  %i.ac = icmp eq i64 %.0.lcssa.i.i, %i.ab
  br i1 %i.ac, label %.thread.i, label %bb.c

.thread.i:                                        ; preds = %bb.b
  %i.ad = shl nuw nsw i64 %.0.lcssa.i.i, 1
  %i.ae = or disjoint i64 %i.ad, 1                ; 2 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !3
  %i.ah = getelementptr inbounds [4 x i8], ptr %0, i64 %.0.lcssa.i.i
  store i32 %i.ag, ptr %i.ah, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !1030
  br label %.lr.ph.i.i.i.preheader

bb.c:                                             ; preds = %bb.b, %._crit_edge.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !1030
  %.not.i = icmp eq i64 %.0.lcssa.i.i, 0
  br i1 %.not.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_SO_RSK_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.c, %.thread.i
  %.019.i.i.i.ph = phi i64 [ %.0.lcssa.i.i, %bb.c ], [ %i.ae, %.thread.i ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %bb.d
  %.019.i.i.i = phi i64 [ %.0920.i.i67.i, %bb.d ], [ %.019.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %.0920.in.i.i.i = add nsw i64 %.019.i.i.i, -1
  %.0920.i.i67.i = lshr i64 %.0920.in.i.i.i, 1    ; 3 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0920.i.i67.i ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !3
  %i.ak = call noundef zeroext i1 @_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S9_SA_EUliE0_EEvT0_T1_S7_SA_ENKUliiE0_clEii(ptr noundef nonnull align 8 dereferenceable(24) %3, i32 noundef %i.aj, i32 noundef %i.f)
  br i1 %i.ak, label %bb.d, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_SO_RSK_.exit

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.al = load i32, ptr %i.ai, align 4, !tbaa !3
  %i.am = getelementptr inbounds [4 x i8], ptr %0, i64 %.019.i.i.i
  store i32 %i.al, ptr %i.am, align 4, !tbaa !3
  %.not8.i = icmp eq i64 %.0920.i.i67.i, 0
  br i1 %.not8.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_SO_RSK_.exit, label %.lr.ph.i.i.i, !llvm.loop !1031

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_SO_RSK_.exit: ; preds = %.lr.ph.i.i.i, %bb.d, %bb.c
  %.0.lcssa.i.i.i = phi i64 [ 0, %bb.c ], [ %.019.i.i.i, %.lr.ph.i.i.i ], [ 0, %bb.d ]
  %i.an = getelementptr inbounds [4 x i8], ptr %0, i64 %.0.lcssa.i.i.i
  store i32 %i.f, ptr %i.an, align 4, !tbaa !3
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.ao = icmp sgt i64 %i.i, 4
  br i1 %i.ao, label %.lr.ph, label %._crit_edge, !llvm.loop !1032

._crit_edge:                                      ; preds = %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_SO_RSK_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_RSK_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat {
bb.a:
  %3 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_val.423", align 8 ; 4 uses
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.422", align 8 ; 5 uses
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 2                   ; 3 uses
  %i.e = icmp slt i64 %i.d, 2
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i64 %i.d, -2                     ; 3 uses
  %i.g = lshr i64 %i.f, 1
  %i.h = add nsw i64 %i.d, -1
  %i.i = lshr i64 %i.h, 1                         ; 2 uses
  %i.j = and i64 %i.c, 4
  %i.k = icmp eq i64 %i.j, 0
  %i.l = lshr exact i64 %i.f, 1                   ; 2 uses
  %i.m = or disjoint i64 %i.f, 1                  ; 2 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.m
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.l
  br label %bb.c

bb.c:                                             ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SK_SK_SL_T2_.exit, %bb.b
  %.08 = phi i64 [ %i.g, %bb.b ], [ %i.ao, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SK_SK_SL_T2_.exit ] ; 8 uses
  %i.p = getelementptr inbounds [4 x i8], ptr %0, i64 %.08
  %i.q = load i32, ptr %i.p, align 4, !tbaa !3    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.r = icmp slt i64 %.08, %i.i
  br i1 %i.r, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %.034.i = phi i64 [ %spec.select.i, %.lr.ph.i ], [ %.08, %bb.c ] ; 2 uses
  %i.s = shl i64 %.034.i, 1                       ; 2 uses
  %i.t = add i64 %i.s, 2                          ; 2 uses
  %i.u = getelementptr inbounds [4 x i8], ptr %0, i64 %i.t
  %i.v = or disjoint i64 %i.s, 1                  ; 2 uses
  %i.w = getelementptr inbounds [4 x i8], ptr %0, i64 %i.v
  %i.x = load i32, ptr %i.u, align 4, !tbaa !3
  %i.y = load i32, ptr %i.w, align 4, !tbaa !3
  %i.z = call noundef zeroext i1 @_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S9_SA_EUliE0_EEvT0_T1_S7_SA_ENKUliiE0_clEii(ptr noundef nonnull align 8 dereferenceable(24) %4, i32 noundef %i.x, i32 noundef %i.y)
  %spec.select.i = select i1 %i.z, i64 %i.v, i64 %i.t ; 4 uses
  %i.aa = getelementptr inbounds [4 x i8], ptr %0, i64 %spec.select.i
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !3
  %i.ac = getelementptr inbounds [4 x i8], ptr %0, i64 %.034.i
  store i32 %i.ab, ptr %i.ac, align 4, !tbaa !3
  %i.ad = icmp slt i64 %spec.select.i, %i.i
  br i1 %i.ad, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !1029

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.c
  %.0.lcssa.i = phi i64 [ %.08, %bb.c ], [ %spec.select.i, %.lr.ph.i ] ; 2 uses
  %i.ae = icmp eq i64 %.0.lcssa.i, %i.l
  %or.cond = select i1 %i.k, i1 %i.ae, i1 false
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i
  %i.af = load i32, ptr %i.n, align 4, !tbaa !3
  store i32 %i.af, ptr %i.o, align 4, !tbaa !3
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i
  %.1.i = phi i64 [ %i.m, %bb.d ], [ %.0.lcssa.i, %._crit_edge.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !1030
  %i.ag = icmp sgt i64 %.1.i, %.08
  br i1 %i.ag, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SK_SK_SL_T2_.exit

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.f
  %.019.i.i = phi i64 [ %.0920.i.i, %bb.f ], [ %.1.i, %bb.e ] ; 3 uses
  %.0920.in.i.i = add nsw i64 %.019.i.i, -1
  %.0920.i.i = sdiv i64 %.0920.in.i.i, 2          ; 4 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0920.i.i ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !3
  %i.aj = call noundef zeroext i1 @_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S9_SA_EUliE0_EEvT0_T1_S7_SA_ENKUliiE0_clEii(ptr noundef nonnull align 8 dereferenceable(24) %3, i32 noundef %i.ai, i32 noundef %i.q)
  br i1 %i.aj, label %bb.f, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SK_SK_SL_T2_.exit

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.ak = load i32, ptr %i.ah, align 4, !tbaa !3
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.019.i.i
  store i32 %i.ak, ptr %i.al, align 4, !tbaa !3
  %i.am = icmp sgt i64 %.0920.i.i, %.08
  br i1 %i.am, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SK_SK_SL_T2_.exit, !llvm.loop !1031

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SK_SK_SL_T2_.exit: ; preds = %.lr.ph.i.i, %bb.f, %bb.e
  %.0.lcssa.i.i = phi i64 [ %.1.i, %bb.e ], [ %.0920.i.i, %bb.f ], [ %.019.i.i, %.lr.ph.i.i ]
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0.lcssa.i.i
  store i32 %i.q, ptr %i.an, align 4, !tbaa !3
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %.not = icmp eq i64 %.08, 0
  %i.ao = add nsw i64 %.08, -1
  br i1 %.not, label %.loopexit, label %bb.c, !llvm.loop !1033

.loopexit:                                        ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SK_SK_SL_T2_.exit, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S9_SA_EUliE0_EEvT0_T1_S7_SA_ENKUliiE0_clEii(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %3 = alloca %class.anon.348, align 8            ; 6 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !1034, !nonnull !81, !align !444 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1036
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !255  ; 3 uses
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE0_clEi.exit12, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1038, !nonnull !81, !align !444
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !667  ; 2 uses
  %i.k = sext i32 %1 to i64
  %i.l = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.k
  %i.m = load i32, ptr %i.l, align 4, !tbaa !3
  %i.n = zext i32 %i.m to i64                     ; 2 uses
  %i.o = lshr i64 %i.n, 6
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.o
  %i.q = load i64, ptr %i.p, align 8, !tbaa !143
  %i.r = and i64 %i.n, 63
  %i.s = shl nuw i64 1, %i.r
  %i.t = and i64 %i.s, %i.q
  %.not.i.i.i = icmp eq i64 %i.t, 0
  %i.u = sext i32 %2 to i64
  %i.v = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.u
  %i.w = load i32, ptr %i.v, align 4, !tbaa !3
  %i.x = zext i32 %i.w to i64                     ; 2 uses
  %i.y = lshr i64 %i.x, 6
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.y
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !143
  %i.ab = and i64 %i.x, 63
  %i.ac = shl nuw i64 1, %i.ab
  %i.ad = and i64 %i.ac, %i.aa
  %.not.i.i.i11 = icmp eq i64 %i.ad, 0
  br label %_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE0_clEi.exit12

_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE0_clEi.exit12: ; preds = %bb.a, %bb.b
  %i.ae = phi i1 [ %.not.i.i.i, %bb.b ], [ false, %bb.a ] ; 3 uses
  %i.af = phi i1 [ %.not.i.i.i11, %bb.b ], [ false, %bb.a ] ; 2 uses
  %or.cond = or i1 %i.ae, %i.af
  br i1 %or.cond, label %bb.c, label %bb.i

bb.c:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE0_clEi.exit12
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !1039, !nonnull !81, !align !446
  %.sroa.0.0.copyload = load i64, ptr %i.ah, align 4 ; 3 uses
  %.sroa.37.0.extract.shift.i = lshr i64 %.sroa.0.0.copyload, 32
  %.sroa.37.0.extract.trunc.i = trunc nuw i64 %.sroa.37.0.extract.shift.i to i32
  switch i32 %.sroa.37.0.extract.trunc.i, label %bb.h [
    i32 1, label %bb.d
end_hunk_6
begin_hunk_7_@_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE_EEEvT_SO_SK_:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #31
  %i.ac = load ptr, ptr %i.j, align 8, !tbaa !1042
  %i.ad = load ptr, ptr %i.k, align 8, !tbaa !1044, !nonnull !81, !align !444
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !667
  %i.af = sext i32 %i.s to i64
  %i.ag = getelementptr inbounds [4 x i8], ptr %i.ae, i64 %i.af
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !3
  %i.ai = call noundef zeroext i1 @_ZNK8facebook5velox10FlatVectorIbE11valueAtFastEi(ptr noundef nonnull align 8 dereferenceable(176) %i.ac, i32 noundef %i.ah)
  %i.aj = zext i1 %i.ai to i8
  store i8 %i.aj, ptr %i.f, align 1, !tbaa !56
  %i.ak = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !643
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.al, ptr %i.d, align 8, !tbaa !773
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  store ptr %i.d, ptr %4, align 8, !tbaa !774
  store ptr %i.e, ptr %i.l, align 8, !tbaa !674
  store ptr %i.f, ptr %i.m, align 8, !tbaa !674
  %i.am = call noundef i32 @_ZZN8facebook5velox12SimpleVectorIbE39comparePrimitiveAscWithCustomComparisonEPKNS0_4TypeERKbS7_ENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(24) %4) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.an = load ptr, ptr %i.n, align 8, !tbaa !1045
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 1 ; 2 uses
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !959, !range !80, !noundef !81
  %i.aq = trunc nuw i8 %i.ap to i1
  %i.ar = sub nsw i32 0, %i.am
  %i.as = select i1 %i.aq, i32 %i.am, i32 %i.ar
  %i.at = icmp slt i32 %i.as, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #31
  %i.au = load i32, ptr %.sroa.08.021, align 4, !tbaa !3 ; 2 uses
  br i1 %i.at, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.av = ptrtoint ptr %.sroa.08.021 to i64
  %i.aw = sub i64 %i.av, %i.q                     ; 3 uses
  %i.ax = ashr exact i64 %i.aw, 2                 ; 2 uses
  %i.ay = icmp sgt i64 %i.ax, 1
  br i1 %i.ay, label %bb.d, label %bb.e, !prof !76

bb.d:                                             ; preds = %bb.c
  %i.az = getelementptr inbounds nuw i8, ptr %.pn20, i64 8
  %i.ba = sub nsw i64 0, %i.ax
  %i.bb = getelementptr inbounds [4 x i8], ptr %i.az, i64 %i.ba
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.bb, ptr noundef nonnull align 4 dereferenceable(1) %0, i64 %i.aw, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit

bb.e:                                             ; preds = %bb.c
  %i.bc = icmp eq i64 %i.aw, 4
  br i1 %i.bc, label %bb.f, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit

bb.f:                                             ; preds = %bb.e
  %i.bd = getelementptr inbounds nuw i8, ptr %.pn20, i64 4
  %i.be = load i32, ptr %0, align 4, !tbaa !3
  store i32 %i.be, ptr %i.bd, align 4, !tbaa !3
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit

bb.g:                                             ; preds = %bb.b
  %i.bf = sext i32 %i.au to i64
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %bb.g
  %.sroa.04.0.i = phi ptr [ %.sroa.08.021, %bb.g ], [ %.sroa.0.0.i, %bb.i ] ; 3 uses
  %.sroa.0.0.i = getelementptr inbounds i8, ptr %.sroa.04.0.i, i64 -4 ; 3 uses
  %i.bg = load i32, ptr %.sroa.0.0.i, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #31
  %i.bh = load ptr, ptr %i.j, align 8, !tbaa !1042
  %i.bi = load ptr, ptr %i.k, align 8, !tbaa !1044, !nonnull !81, !align !444
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !667
  %i.bk = getelementptr inbounds [4 x i8], ptr %i.bj, i64 %i.bf
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !3
  %i.bm = call noundef zeroext i1 @_ZNK8facebook5velox10FlatVectorIbE11valueAtFastEi(ptr noundef nonnull align 8 dereferenceable(176) %i.bh, i32 noundef %i.bl)
  %i.bn = zext i1 %i.bm to i8
  store i8 %i.bn, ptr %i.b, align 1, !tbaa !56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #31
  %i.bo = load ptr, ptr %i.j, align 8, !tbaa !1042
  %i.bp = load ptr, ptr %i.k, align 8, !tbaa !1044, !nonnull !81, !align !444
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !667
  %i.br = sext i32 %i.bg to i64
  %i.bs = getelementptr inbounds [4 x i8], ptr %i.bq, i64 %i.br
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !3
  %i.bu = call noundef zeroext i1 @_ZNK8facebook5velox10FlatVectorIbE11valueAtFastEi(ptr noundef nonnull align 8 dereferenceable(176) %i.bo, i32 noundef %i.bt)
  %i.bv = zext i1 %i.bu to i8
  store i8 %i.bv, ptr %i.c, align 1, !tbaa !56
  %i.bw = load ptr, ptr %i.ak, align 8, !tbaa !643
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.bw, ptr %i.a, align 8, !tbaa !773
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  store ptr %i.a, ptr %3, align 8, !tbaa !774
  store ptr %i.b, ptr %i.o, align 8, !tbaa !674
  store ptr %i.c, ptr %i.p, align 8, !tbaa !674
  %i.bx = call noundef i32 @_ZZN8facebook5velox12SimpleVectorIbE39comparePrimitiveAscWithCustomComparisonEPKNS0_4TypeERKbS7_ENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(24) %3) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.by = load i8, ptr %i.ao, align 1, !tbaa !959, !range !80, !noundef !81
  %i.bz = trunc nuw i8 %i.by to i1
  %i.ca = sub nsw i32 0, %i.bx
  %i.cb = select i1 %i.bz, i32 %i.bx, i32 %i.ca
  %i.cc = icmp slt i32 %i.cb, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #31
  br i1 %i.cc, label %bb.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit

bb.i:                                             ; preds = %bb.h
  %i.cd = load i32, ptr %.sroa.0.0.i, align 4, !tbaa !3
  store i32 %i.cd, ptr %.sroa.04.0.i, align 4, !tbaa !3
  br label %bb.h, !llvm.loop !1049

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit: ; preds = %bb.h, %bb.f, %bb.e, %bb.d
  %.sink = phi ptr [ %0, %bb.f ], [ %0, %bb.d ], [ %0, %bb.e ], [ %.sroa.04.0.i, %bb.h ]
  store i32 %i.au, ptr %.sink, align 4, !tbaa !3
  %.sroa.08.0 = getelementptr inbounds nuw i8, ptr %.sroa.08.021, i64 4 ; 2 uses
  %i.ce = icmp eq ptr %.sroa.08.0, %1
  br i1 %i.ce, label %.loopexit, label %bb.b, !llvm.loop !1056

.loopexit:                                        ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit, %.preheader, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb0EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SG_SH_EUliE2_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_SK_SL_(ptr %0, ptr %1, i64 noundef %2, ptr noundef byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.430") align 8 %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.430", align 8 ; 4 uses
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.430", align 8 ; 4 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = ashr exact i64 %i.c, 2                   ; 2 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph22

bb.b:                                             ; preds = %.lr.ph22
  %i.h = icmp eq i64 %i.j, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph22, !llvm.loop !1057

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %storemerge14.lcssa = phi ptr [ %1, %.lr.ph ], [ %i.n, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  call void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb0EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SG_SH_EUliE2_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_RSK_(ptr %0, ptr %storemerge14.lcssa, ptr noundef nonnull align 8 dereferenceable(24) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb0EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SG_SH_EUliE2_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_RSK_(ptr %0, ptr %storemerge14.lcssa, ptr noundef nonnull align 8 dereferenceable(24) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %.loopexit

.lr.ph22:                                         ; preds = %.lr.ph, %bb.b
  %storemerge1421 = phi ptr [ %i.n, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.01520 = phi i64 [ %i.j, %bb.b ], [ %2, %.lr.ph ]
  %i.i = phi i64 [ %i.q, %bb.b ], [ %i.d, %.lr.ph ]
  %i.j = add nsw i64 %.01520, -1                  ; 3 uses
  %i.k = lshr i64 %i.i, 1
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.k
  %i.m = getelementptr inbounds i8, ptr %storemerge1421, i64 -4
  tail call void @_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb0EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SG_SH_EUliE2_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_SO_SO_SK_(ptr %0, ptr nonnull %i.f, ptr %i.l, ptr nonnull %i.m, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.430") align 8 %3)
  %i.n = tail call ptr @_ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb0EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SG_SH_EUliE2_EEvT0_T1_SE_SH_EUliiE0_EEET_SO_SO_SO_SK_(ptr nonnull %i.f, ptr %storemerge1421, ptr %0, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.430") align 8 %3) ; 4 uses
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb0EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SG_SH_EUliE2_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_SK_SL_(ptr %i.n, ptr %storemerge1421, i64 noundef %i.j, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.430") align 8 %3)
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = sub i64 %i.o, %i.a
  %i.q = ashr exact i64 %i.p, 2                   ; 2 uses
  %i.r = icmp sgt i64 %i.q, 16
  br i1 %i.r, label %bb.b, label %.loopexit, !llvm.loop !1057

.loopexit:                                        ; preds = %.lr.ph22, %bb.a, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb0EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SG_SH_EUliE2_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_RSK_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = icmp sgt i64 %i.c, 4
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb0EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SG_SH_EUliE2_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_SO_RSK_.exit
  %.sroa.0.040 = phi ptr [ %1, %.lr.ph ], [ %i.e, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb0EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SG_SH_EUliE2_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_SO_RSK_.exit ]
  %i.e = getelementptr inbounds i8, ptr %.sroa.0.040, i64 -4 ; 4 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !3    ; 2 uses
  %i.g = load i32, ptr %0, align 4, !tbaa !3
  store i32 %i.g, ptr %i.e, align 4, !tbaa !3
  %i.h = ptrtoint ptr %i.e to i64
  %i.i = sub i64 %i.h, %i.a                       ; 3 uses
  %i.j = ashr exact i64 %i.i, 2                   ; 3 uses
  %.sroa.020.0.copyload = load ptr, ptr %2, align 8 ; 4 uses
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 6 uses
  %i.k = add nsw i64 %i.j, -1
  %3 = sdiv i64 %i.k, 2
  %i.l = icmp sgt i64 %i.j, 2
  br i1 %i.l, label %.lr.ph.i.i.preheader, label %._crit_edge.i.i

.lr.ph.i.i.preheader:                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.020.0.copyload, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 8
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S9_SA_EUliE2_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit17.thread
  %.034.i.i = phi i64 [ %i.ca, %_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S9_SA_EUliE2_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit17.thread ], [ 0, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.o = shl i64 %.034.i.i, 1                     ; 2 uses
  %i.p = add i64 %i.o, 2                          ; 4 uses
  %i.q = getelementptr inbounds [4 x i8], ptr %0, i64 %i.p
  %i.r = or disjoint i64 %i.o, 1                  ; 2 uses
  %i.s = getelementptr inbounds [4 x i8], ptr %0, i64 %i.r
  %i.t = load i32, ptr %i.q, align 4, !tbaa !3    ; 2 uses
  %i.u = load i32, ptr %i.s, align 4, !tbaa !3    ; 2 uses
  %i.v = load ptr, ptr %.sroa.020.0.copyload, align 8, !tbaa !1058
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !255  ; 3 uses
  %.not.i.i.i3 = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i3, label %_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE2_clEi.exit12.i6, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.y = load ptr, ptr %i.m, align 8, !tbaa !1060, !nonnull !81, !align !444
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !667  ; 2 uses
  %i.aa = sext i32 %i.t to i64
  %i.ab = getelementptr inbounds [4 x i8], ptr %i.z, i64 %i.aa
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !3
  %i.ad = zext i32 %i.ac to i64                   ; 2 uses
  %i.ae = lshr i64 %i.ad, 6
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.ae
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !143
  %i.ah = and i64 %i.ad, 63
  %i.ai = shl nuw i64 1, %i.ah
  %i.aj = and i64 %i.ai, %i.ag
  %.not.i.i.i.i4 = icmp eq i64 %i.aj, 0
  %i.ak = sext i32 %i.u to i64
  %i.al = getelementptr inbounds [4 x i8], ptr %i.z, i64 %i.ak
  %i.am = load i32, ptr %i.al, align 4, !tbaa !3
  %i.an = zext i32 %i.am to i64                   ; 2 uses
  %i.ao = lshr i64 %i.an, 6
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.ao
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !143
  %i.ar = and i64 %i.an, 63
  %i.as = shl nuw i64 1, %i.ar
  %i.at = and i64 %i.as, %i.aq
  %.not.i.i.i11.i5 = icmp eq i64 %i.at, 0
  br label %_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE2_clEi.exit12.i6

_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE2_clEi.exit12.i6: ; preds = %bb.c, %.lr.ph.i.i
  %i.au = phi i1 [ %.not.i.i.i.i4, %bb.c ], [ false, %.lr.ph.i.i ] ; 3 uses
  %i.av = phi i1 [ %.not.i.i.i11.i5, %bb.c ], [ false, %.lr.ph.i.i ] ; 2 uses
  %or.cond.i7 = or i1 %i.au, %i.av
  br i1 %or.cond.i7, label %bb.d, label %bb.i

bb.d:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE2_clEi.exit12.i6
  %.sroa.0.0.copyload.i10 = load i64, ptr %.sroa.6.0.copyload, align 4 ; 3 uses
  %.sroa.37.0.extract.shift.i.i11 = lshr i64 %.sroa.0.0.copyload.i10, 32
  %.sroa.37.0.extract.trunc.i.i12 = trunc nuw i64 %.sroa.37.0.extract.shift.i.i11 to i32
  switch i32 %.sroa.37.0.extract.trunc.i.i12, label %bb.h [
    i32 1, label %bb.e
    i32 0, label %bb.g
  ]

bb.e:                                             ; preds = %bb.d
  %i.aw = and i64 %.sroa.0.0.copyload.i10, 65536
  %.not.i.i15 = icmp eq i64 %i.aw, 0
  br i1 %.not.i.i15, label %bb.f, label %.critedge.i16

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs, ptr noundef nonnull @.str.81) #35
  unreachable

bb.g:                                             ; preds = %bb.d
  %or.cond.i.i13 = and i1 %i.au, %i.av
  br i1 %or.cond.i.i13, label %_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S9_SA_EUliE2_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit17.thread, label %_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S9_SA_EUliE2_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit17

bb.h:                                             ; preds = %bb.d
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs_0, ptr noundef nonnull @.str.82) #35
  unreachable

.critedge.i16:                                    ; preds = %bb.e
  tail call void @_ZSt27__throw_bad_optional_accessv() #35
  unreachable

bb.i:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE2_clEi.exit12.i6
  %i.ax = load ptr, ptr %.sroa.7.0.copyload, align 8, !tbaa !1061, !nonnull !81, !align !444 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !1063
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !1065, !nonnull !81, !align !444
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !667
  %i.bc = sext i32 %i.t to i64
  %i.bd = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %i.bc
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !3
  %i.bf = tail call noundef zeroext i1 @_ZNK8facebook5velox10FlatVectorIbE11valueAtFastEi(ptr noundef nonnull align 8 dereferenceable(176) %i.ay, i32 noundef %i.be) ; 2 uses
  %i.bg = load ptr, ptr %.sroa.7.0.copyload, align 8, !tbaa !1061, !nonnull !81, !align !444 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !1063
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !1065, !nonnull !81, !align !444
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !667
  %i.bl = sext i32 %i.u to i64
  %i.bm = getelementptr inbounds [4 x i8], ptr %i.bk, i64 %i.bl
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !3
  %i.bo = tail call noundef zeroext i1 @_ZNK8facebook5velox10FlatVectorIbE11valueAtFastEi(ptr noundef nonnull align 8 dereferenceable(176) %i.bh, i32 noundef %i.bn) ; 2 uses
  %i.bp = xor i1 %i.bf, true
  %i.bq = and i1 %i.bo, %i.bp
  %i.br = xor i1 %i.bf, %i.bo
  %i.bs = load ptr, ptr %i.n, align 8, !tbaa !1066, !nonnull !81, !align !446
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 1
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !959, !range !80, !noundef !81
  %i.bv = trunc nuw i8 %i.bu to i1
  %not..i.i8 = xor i1 %i.bv, true
  %i.bw = and i1 %i.br, %not..i.i8
  %i.bx = xor i1 %i.bq, %i.bw
  br i1 %i.bx, label %bb.j, label %_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S9_SA_EUliE2_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit17.thread

_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S9_SA_EUliE2_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit17: ; preds = %bb.g
  %i.by = trunc i64 %.sroa.0.0.copyload.i10 to i1
  %i.bz = xor i1 %i.au, %i.by
  %.fr = freeze i1 %i.bz
  br i1 %.fr, label %_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S9_SA_EUliE2_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit17.thread, label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S9_SA_EUliE2_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit17
  br label %_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S9_SA_EUliE2_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit17.thread

_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S9_SA_EUliE2_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit17.thread: ; preds = %bb.g, %bb.i, %_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S9_SA_EUliE2_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit17, %bb.j
  %i.ca = phi i64 [ %i.r, %bb.j ], [ %i.p, %_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S9_SA_EUliE2_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit17 ], [ %i.p, %bb.i ], [ %i.p, %bb.g ] ; 4 uses
  %i.cb = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ca
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !3
  %i.cd = getelementptr inbounds [4 x i8], ptr %0, i64 %.034.i.i
  store i32 %i.cc, ptr %i.cd, align 4, !tbaa !3
  %i.ce = icmp slt i64 %i.ca, %3
  br i1 %i.ce, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !1067

._crit_edge.i.i:                                  ; preds = %_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S9_SA_EUliE2_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit17.thread, %bb.b
  %.0.lcssa.i.i = phi i64 [ 0, %bb.b ], [ %i.ca, %_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S9_SA_EUliE2_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit17.thread ] ; 5 uses
  %i.cf = and i64 %i.i, 4
  %i.cg = icmp eq i64 %i.cf, 0
  br i1 %i.cg, label %bb.k, label %bb.l

bb.k:                                             ; preds = %._crit_edge.i.i
  %i.ch = add nsw i64 %i.j, -2
  %i.ci = ashr exact i64 %i.ch, 1
  %i.cj = icmp eq i64 %.0.lcssa.i.i, %i.ci
  br i1 %i.cj, label %.thread.i, label %bb.l

.thread.i:                                        ; preds = %bb.k
  %i.ck = shl nuw nsw i64 %.0.lcssa.i.i, 1
  %i.cl = or disjoint i64 %i.ck, 1                ; 2 uses
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.cl
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !3
  %i.co = getelementptr inbounds [4 x i8], ptr %0, i64 %.0.lcssa.i.i
  store i32 %i.cn, ptr %i.co, align 4, !tbaa !3
  br label %.lr.ph.i.i.preheader.i

bb.l:                                             ; preds = %bb.k, %._crit_edge.i.i
  %.not.i = icmp eq i64 %.0.lcssa.i.i, 0
  br i1 %.not.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb0EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SG_SH_EUliE2_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_SO_RSK_.exit, label %.lr.ph.i.i.preheader.i

.lr.ph.i.i.preheader.i:                           ; preds = %bb.l, %.thread.i
  %.1.i11.i = phi i64 [ %i.cl, %.thread.i ], [ %.0.lcssa.i.i, %bb.l ]
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.020.0.copyload, i64 8
  %i.cq = sext i32 %i.f to i64                    ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 8
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.t, %.lr.ph.i.i.preheader.i
  %.019.i.i.i = phi i64 [ %.0920.i.i67.i, %bb.t ], [ %.1.i11.i, %.lr.ph.i.i.preheader.i ] ; 4 uses
  %.0920.in.i.i.i = add nsw i64 %.019.i.i.i, -1
  %.0920.i.i67.i = lshr i64 %.0920.in.i.i.i, 1    ; 3 uses
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0920.i.i67.i ; 2 uses
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !3  ; 3 uses
  %i.cu = load ptr, ptr %.sroa.020.0.copyload, align 8, !tbaa !1058
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 40
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !255 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.cw, null
  br i1 %.not.i.i.i, label %_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE2_clEi.exit12.i, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i.i.i
  %i.cx = load ptr, ptr %i.cp, align 8, !tbaa !1060, !nonnull !81, !align !444
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !667 ; 2 uses
  %i.cz = sext i32 %i.ct to i64
  %i.da = getelementptr inbounds [4 x i8], ptr %i.cy, i64 %i.cz
  %i.db = load i32, ptr %i.da, align 4, !tbaa !3
  %i.dc = zext i32 %i.db to i64                   ; 2 uses
  %i.dd = lshr i64 %i.dc, 6
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %i.dd
  %i.df = load i64, ptr %i.de, align 8, !tbaa !143
  %i.dg = and i64 %i.dc, 63
  %i.dh = shl nuw i64 1, %i.dg
  %i.di = and i64 %i.dh, %i.df
  %.not.i.i.i.i = icmp eq i64 %i.di, 0
  %i.dj = getelementptr inbounds [4 x i8], ptr %i.cy, i64 %i.cq
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !3
  %i.dl = zext i32 %i.dk to i64                   ; 2 uses
  %i.dm = lshr i64 %i.dl, 6
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %i.dm
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !143
  %i.dp = and i64 %i.dl, 63
  %i.dq = shl nuw i64 1, %i.dp
  %i.dr = and i64 %i.dq, %i.do
  %.not.i.i.i11.i = icmp eq i64 %i.dr, 0
  br label %_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE2_clEi.exit12.i

_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE2_clEi.exit12.i: ; preds = %bb.m, %.lr.ph.i.i.i
  %i.ds = phi i1 [ %.not.i.i.i.i, %bb.m ], [ false, %.lr.ph.i.i.i ] ; 3 uses
  %i.dt = phi i1 [ %.not.i.i.i11.i, %bb.m ], [ false, %.lr.ph.i.i.i ] ; 2 uses
  %or.cond.i = or i1 %i.ds, %i.dt
  br i1 %or.cond.i, label %bb.n, label %bb.s

bb.n:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE2_clEi.exit12.i
  %.sroa.0.0.copyload.i = load i64, ptr %.sroa.6.0.copyload, align 4 ; 3 uses
  %.sroa.37.0.extract.shift.i.i = lshr i64 %.sroa.0.0.copyload.i, 32
  %.sroa.37.0.extract.trunc.i.i = trunc nuw i64 %.sroa.37.0.extract.shift.i.i to i32
  switch i32 %.sroa.37.0.extract.trunc.i.i, label %bb.r [
    i32 1, label %bb.o
    i32 0, label %bb.q
  ]

bb.o:                                             ; preds = %bb.n
  %i.du = and i64 %.sroa.0.0.copyload.i, 65536
  %.not.i.i = icmp eq i64 %i.du, 0
  br i1 %.not.i.i, label %bb.p, label %.critedge.i

bb.p:                                             ; preds = %bb.o
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs, ptr noundef nonnull @.str.81) #35
  unreachable

bb.q:                                             ; preds = %bb.n
  %or.cond.i.i = and i1 %i.ds, %i.dt
  %i.dv = trunc i64 %.sroa.0.0.copyload.i to i1
  %i.dw = xor i1 %i.ds, %i.dv
  %or.cond.demorgan = or i1 %or.cond.i.i, %i.dw
  br i1 %or.cond.demorgan, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb0EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SG_SH_EUliE2_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_SO_RSK_.exit, label %bb.t

bb.r:                                             ; preds = %bb.n
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs_0, ptr noundef nonnull @.str.82) #35
  unreachable

.critedge.i:                                      ; preds = %bb.o
  tail call void @_ZSt27__throw_bad_optional_accessv() #35
  unreachable

bb.s:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE2_clEi.exit12.i
  %i.dx = load ptr, ptr %.sroa.7.0.copyload, align 8, !tbaa !1061, !nonnull !81, !align !444 ; 2 uses
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !1063
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !1065, !nonnull !81, !align !444
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !667
  %i.ec = sext i32 %i.ct to i64
  %i.ed = getelementptr inbounds [4 x i8], ptr %i.eb, i64 %i.ec
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !3
  %i.ef = tail call noundef zeroext i1 @_ZNK8facebook5velox10FlatVectorIbE11valueAtFastEi(ptr noundef nonnull align 8 dereferenceable(176) %i.dy, i32 noundef %i.ee) ; 2 uses
  %i.eg = load ptr, ptr %.sroa.7.0.copyload, align 8, !tbaa !1061, !nonnull !81, !align !444 ; 2 uses
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !1063
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !1065, !nonnull !81, !align !444
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !667
  %i.el = getelementptr inbounds [4 x i8], ptr %i.ek, i64 %i.cq
  %i.em = load i32, ptr %i.el, align 4, !tbaa !3
  %i.en = tail call noundef zeroext i1 @_ZNK8facebook5velox10FlatVectorIbE11valueAtFastEi(ptr noundef nonnull align 8 dereferenceable(176) %i.eh, i32 noundef %i.em) ; 2 uses
  %i.eo = xor i1 %i.ef, true
  %i.ep = and i1 %i.en, %i.eo
  %i.eq = xor i1 %i.ef, %i.en
  %i.er = load ptr, ptr %i.cr, align 8, !tbaa !1066, !nonnull !81, !align !446
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 1
  %i.et = load i8, ptr %i.es, align 1, !tbaa !959, !range !80, !noundef !81
  %i.eu = trunc nuw i8 %i.et to i1
  %not..i.i = xor i1 %i.eu, true
  %i.ev = and i1 %i.eq, %not..i.i
  %i.ew = xor i1 %i.ep, %i.ev
  br i1 %i.ew, label %._crit_edge43, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb0EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SG_SH_EUliE2_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_SO_RSK_.exit

._crit_edge43:                                    ; preds = %bb.s
  %.pre = load i32, ptr %i.cs, align 4, !tbaa !3
  br label %bb.t

bb.t:                                             ; preds = %._crit_edge43, %bb.q
  %i.ex = phi i32 [ %.pre, %._crit_edge43 ], [ %i.ct, %bb.q ]
  %i.ey = getelementptr inbounds [4 x i8], ptr %0, i64 %.019.i.i.i
  store i32 %i.ex, ptr %i.ey, align 4, !tbaa !3
  %.not8.i = icmp eq i64 %.0920.i.i67.i, 0
  br i1 %.not8.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb0EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SG_SH_EUliE2_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_SO_RSK_.exit, label %.lr.ph.i.i.i, !llvm.loop !1068

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb0EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SG_SH_EUliE2_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_SO_RSK_.exit: ; preds = %bb.q, %bb.s, %bb.t, %bb.l
  %.0.lcssa.i.i.i = phi i64 [ 0, %bb.l ], [ %.019.i.i.i, %bb.s ], [ %.019.i.i.i, %bb.q ], [ 0, %bb.t ]
  %i.ez = getelementptr inbounds [4 x i8], ptr %0, i64 %.0.lcssa.i.i.i
  store i32 %i.f, ptr %i.ez, align 4, !tbaa !3
  %i.fa = icmp sgt i64 %i.i, 4
  br i1 %i.fa, label %bb.b, label %._crit_edge, !llvm.loop !1069

._crit_edge:                                      ; preds = %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb0EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SG_SH_EUliE2_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_SO_RSK_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb0EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SG_SH_EUliE2_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_RSK_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 2                   ; 3 uses
  %i.e = icmp slt i64 %i.d, 2
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i64 %i.d, -2                     ; 3 uses
  %i.g = lshr i64 %i.f, 1
  %.sroa.0.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.0.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.h = add nsw i64 %i.d, -1
  %i.i = lshr i64 %i.h, 1                         ; 2 uses
  %i.j = and i64 %i.c, 4
  %i.k = icmp eq i64 %i.j, 0
  %i.l = lshr exact i64 %i.f, 1                   ; 2 uses
  %i.m = or disjoint i64 %i.f, 1                  ; 2 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.m
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.l
  br label %bb.c

bb.c:                                             ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb0EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SG_SH_EUliE2_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SK_SK_SL_T2_.exit, %bb.b
  %.08 = phi i64 [ %i.g, %bb.b ], [ %i.fa, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb0EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SG_SH_EUliE2_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SK_SK_SL_T2_.exit ] ; 8 uses
  %i.p = getelementptr inbounds [4 x i8], ptr %0, i64 %.08
  %i.q = load i32, ptr %i.p, align 4, !tbaa !3    ; 2 uses
  %.sroa.0.sroa.0.0.copyload = load ptr, ptr %2, align 8, !tbaa !40 ; 4 uses
  %.sroa.0.sroa.2.0.copyload = load ptr, ptr %.sroa.0.sroa.2.0..sroa_idx, align 8, !tbaa !874 ; 2 uses
  %.sroa.0.sroa.3.0.copyload = load ptr, ptr %.sroa.0.sroa.3.0..sroa_idx, align 8, !tbaa !40 ; 6 uses
  %i.r = icmp slt i64 %.08, %i.i
  br i1 %i.r, label %.lr.ph.i.preheader, label %._crit_edge.i

.lr.ph.i.preheader:                               ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.sroa.0.0.copyload, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.sroa.3.0.copyload, i64 8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S9_SA_EUliE2_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit24.thread
  %.034.i = phi i64 [ %i.cg, %_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S9_SA_EUliE2_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit24.thread ], [ %.08, %.lr.ph.i.preheader ] ; 2 uses
  %i.u = shl i64 %.034.i, 1                       ; 2 uses
  %i.v = add i64 %i.u, 2                          ; 4 uses
  %i.w = getelementptr inbounds [4 x i8], ptr %0, i64 %i.v
  %i.x = or disjoint i64 %i.u, 1                  ; 2 uses
  %i.y = getelementptr inbounds [4 x i8], ptr %0, i64 %i.x
  %i.z = load i32, ptr %i.w, align 4, !tbaa !3    ; 2 uses
  %i.aa = load i32, ptr %i.y, align 4, !tbaa !3   ; 2 uses
  %i.ab = load ptr, ptr %.sroa.0.sroa.0.0.copyload, align 8, !tbaa !1058
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !255 ; 3 uses
  %.not.i.i.i10 = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i10, label %_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE2_clEi.exit12.i13, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %i.ae = load ptr, ptr %i.s, align 8, !tbaa !1060, !nonnull !81, !align !444
end_hunk_7
begin_hunk_8_@_ZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S8_EUliE0_EEvT0_T1_S7_S8_:bb.a
  %i.ay = sub nsw i32 0, %i.av
  %i.az = select i1 %i.ax, i32 %i.av, i32 %i.ay
  %i.ba = icmp slt i32 %i.az, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #31
  br i1 %i.ba, label %bb.k, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE_EEEvT_SI_.exit.i.i.i.i

bb.k:                                             ; preds = %bb.j
  %i.bb = load i32, ptr %.sroa.0.0.i.i.i.i.i, align 4, !tbaa !3
  store i32 %i.bb, ptr %.sroa.04.0.i.i.i.i.i, align 4, !tbaa !3
  br label %bb.j, !llvm.loop !1383

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE_EEEvT_SI_.exit.i.i.i.i: ; preds = %bb.j
  store i32 %i.aj, ptr %.sroa.04.0.i.i.i.i.i, align 4, !tbaa !3
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.03.08.i.i.i.i, i64 4 ; 2 uses
  %i.bd = icmp eq ptr %i.bc, %i.j
  br i1 %i.bd, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSA_11sortIndicesERS5_NS8_12CompareFlagsEEUliE_ZNKSA_11sortIndicesESC_SD_EUliE0_EEvT0_T1_SC_SD_EUliiE_EvT_SJ_SG_.exit, label %bb.i, !llvm.loop !1384

bb.l:                                             ; preds = %bb.g
  call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE_EEEvT_SM_SI_(ptr %i.h, ptr %i.j, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.475") align 8 %10)
  br label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSA_11sortIndicesERS5_NS8_12CompareFlagsEEUliE_ZNKSA_11sortIndicesESC_SD_EUliE0_EEvT0_T1_SC_SD_EUliiE_EvT_SJ_SG_.exit

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSA_11sortIndicesERS5_NS8_12CompareFlagsEEUliE_ZNKSA_11sortIndicesESC_SD_EUliE0_EEvT0_T1_SC_SD_EUliiE_EvT_SJ_SG_.exit: ; preds = %bb.l, %bb.h, %bb.f, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE_EEEvT_SI_.exit.i.i.i.i, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSA_11sortIndicesERS5_NS8_12CompareFlagsEEUliE_ZNKSA_11sortIndicesESC_SD_EUliE0_EEvT0_T1_SC_SD_EUliiE0_EvT_SJ_SG_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #31
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S8_EUliE2_EEvT0_T1_S7_S8_(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %5 = alloca %class.anon.479, align 8            ; 9 uses
  %6 = alloca %class.anon.468, align 8            ; 4 uses
  %7 = alloca %class.anon.469, align 8            ; 2 uses
  %8 = alloca %"struct.facebook::velox::CompareFlags", align 8 ; 5 uses
  %9 = alloca %class.anon.478, align 8            ; 5 uses
  store ptr %1, ptr %6, align 8
  store ptr %2, ptr %7, align 8
  store i64 %4, ptr %8, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #31
  store ptr %6, ptr %9, align 8, !tbaa !40
  %i.a = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %8, ptr %i.a, align 8, !tbaa !874
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !255
  %.not = icmp eq ptr %i.c, null
  %i.d = load ptr, ptr %3, align 8, !tbaa !667    ; 10 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !667  ; 9 uses
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store ptr %7, ptr %5, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %8, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %9, ptr %.sroa.3.0..sroa_idx, align 8
  %i.g = icmp eq ptr %i.d, %i.f
  br i1 %i.g, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSA_11sortIndicesERS5_NS8_12CompareFlagsEEUliE1_ZNKSA_11sortIndicesESC_SD_EUliE2_EEvT0_T1_SC_SD_EUliiE0_EvT_SJ_SG_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.d to i64
  %i.j = sub i64 %i.h, %i.i                       ; 2 uses
  %i.k = ashr exact i64 %i.j, 2
  %i.l = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.k, i1 true)
  %i.m = shl nuw nsw i64 %i.l, 1
  %i.n = xor i64 %i.m, 126
  call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_SI_SJ_(ptr %i.d, ptr %i.f, i64 noundef %i.n, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.480") align 8 %5)
  %i.o = icmp sgt i64 %i.j, 64
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 64 ; 2 uses
  call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_SI_(ptr %i.d, ptr nonnull %i.p, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.480") align 8 %5)
  call void @_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_SI_(ptr nonnull %i.p, ptr %i.f, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.480") align 8 %5)
  br label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSA_11sortIndicesERS5_NS8_12CompareFlagsEEUliE1_ZNKSA_11sortIndicesESC_SD_EUliE2_EEvT0_T1_SC_SD_EUliiE0_EvT_SJ_SG_.exit

bb.e:                                             ; preds = %bb.c
  call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_SI_(ptr %i.d, ptr %i.f, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.480") align 8 %5)
  br label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSA_11sortIndicesERS5_NS8_12CompareFlagsEEUliE1_ZNKSA_11sortIndicesESC_SD_EUliE2_EEvT0_T1_SC_SD_EUliiE0_EvT_SJ_SG_.exit

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSA_11sortIndicesERS5_NS8_12CompareFlagsEEUliE1_ZNKSA_11sortIndicesESC_SD_EUliE2_EEvT0_T1_SC_SD_EUliiE0_EvT_SJ_SG_.exit: ; preds = %bb.b, %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSA_11sortIndicesERS5_NS8_12CompareFlagsEEUliE1_ZNKSA_11sortIndicesESC_SD_EUliE2_EEvT0_T1_SC_SD_EUliiE_EvT_SJ_SG_.exit

bb.f:                                             ; preds = %bb.a
  %i.q = icmp eq ptr %i.d, %i.f
  br i1 %i.q, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSA_11sortIndicesERS5_NS8_12CompareFlagsEEUliE1_ZNKSA_11sortIndicesESC_SD_EUliE2_EEvT0_T1_SC_SD_EUliiE_EvT_SJ_SG_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = ptrtoint ptr %i.f to i64
  %i.s = ptrtoint ptr %i.d to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = ashr exact i64 %i.t, 2
  %i.v = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.u, i1 true)
  %i.w = shl nuw nsw i64 %i.v, 1
  %i.x = xor i64 %i.w, 126
  call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE_EEEvT_SM_SI_SJ_(ptr %i.d, ptr %i.f, i64 noundef %i.x, ptr nonnull %6, ptr nonnull %8)
  call void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE_EEEvT_SM_SI_(ptr %i.d, ptr %i.f, ptr nonnull %6, ptr nonnull %8)
  br label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSA_11sortIndicesERS5_NS8_12CompareFlagsEEUliE1_ZNKSA_11sortIndicesESC_SD_EUliE2_EEvT0_T1_SC_SD_EUliiE_EvT_SJ_SG_.exit

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSA_11sortIndicesERS5_NS8_12CompareFlagsEEUliE1_ZNKSA_11sortIndicesESC_SD_EUliE2_EEvT0_T1_SC_SD_EUliiE_EvT_SJ_SG_.exit: ; preds = %bb.g, %bb.f, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSA_11sortIndicesERS5_NS8_12CompareFlagsEEUliE1_ZNKSA_11sortIndicesESC_SD_EUliE2_EEvT0_T1_SC_SD_EUliiE0_EvT_SJ_SG_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_SI_SJ_(ptr %0, ptr %1, i64 noundef %2, ptr noundef byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.472") align 8 %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.472", align 8 ; 4 uses
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.472", align 8 ; 4 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = ashr exact i64 %i.c, 2                   ; 2 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph22

bb.b:                                             ; preds = %.lr.ph22
  %i.h = icmp eq i64 %i.j, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph22, !llvm.loop !1385

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %storemerge14.lcssa = phi ptr [ %1, %.lr.ph ], [ %i.n, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  call void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_RSI_(ptr %0, ptr %storemerge14.lcssa, ptr noundef nonnull align 8 dereferenceable(24) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_RSI_(ptr %0, ptr %storemerge14.lcssa, ptr noundef nonnull align 8 dereferenceable(24) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %.loopexit

.lr.ph22:                                         ; preds = %.lr.ph, %bb.b
  %storemerge1421 = phi ptr [ %i.n, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.01520 = phi i64 [ %i.j, %bb.b ], [ %2, %.lr.ph ]
  %i.i = phi i64 [ %i.q, %bb.b ], [ %i.d, %.lr.ph ]
  %i.j = add nsw i64 %.01520, -1                  ; 3 uses
  %i.k = lshr i64 %i.i, 1
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.k
  %i.m = getelementptr inbounds i8, ptr %storemerge1421, i64 -4
  tail call void @_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_SM_SM_SI_(ptr %0, ptr nonnull %i.f, ptr %i.l, ptr nonnull %i.m, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.472") align 8 %3)
  %i.n = tail call ptr @_ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE0_EEET_SM_SM_SM_SI_(ptr nonnull %i.f, ptr %storemerge1421, ptr %0, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.472") align 8 %3) ; 4 uses
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_SI_SJ_(ptr %i.n, ptr %storemerge1421, i64 noundef %i.j, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.472") align 8 %3)
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = sub i64 %i.o, %i.a
  %i.q = ashr exact i64 %i.p, 2                   ; 2 uses
  %i.r = icmp sgt i64 %i.q, 16
  br i1 %i.r, label %bb.b, label %.loopexit, !llvm.loop !1385

.loopexit:                                        ; preds = %.lr.ph22, %bb.a, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_RSI_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %3 = alloca %class.anon.465, align 8            ; 6 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %4 = alloca %class.anon.465, align 8            ; 6 uses
  %i.e = alloca i64, align 8                      ; 4 uses
  %i.f = alloca i64, align 8                      ; 4 uses
  %i.g = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.h = ptrtoint ptr %1 to i64
  %i.i = sub i64 %i.h, %i.g
  %i.j = icmp sgt i64 %i.i, 4
  br i1 %i.j, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_SM_RSI_.exit
  %.sroa.0.040 = phi ptr [ %1, %.lr.ph ], [ %i.o, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_SM_RSI_.exit ]
  %i.o = getelementptr inbounds i8, ptr %.sroa.0.040, i64 -4 ; 4 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !3    ; 3 uses
  %i.q = load i32, ptr %0, align 4, !tbaa !3
  store i32 %i.q, ptr %i.o, align 4, !tbaa !3
  %i.r = ptrtoint ptr %i.o to i64
  %i.s = sub i64 %i.r, %i.g                       ; 3 uses
  %i.t = ashr exact i64 %i.s, 2                   ; 3 uses
  %.sroa.019.0.copyload = load ptr, ptr %2, align 8 ; 2 uses
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 6 uses
  %i.u = add nsw i64 %i.t, -1
  %5 = sdiv i64 %i.u, 2
  %i.v = icmp sgt i64 %i.t, 2
  br i1 %i.v, label %.lr.ph.i.i.preheader, label %._crit_edge.i.i

.lr.ph.i.i.preheader:                             ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 16
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S8_EUliE0_EEvT0_T1_S7_S8_ENKUliiE0_clEii.exit16.thread
  %.034.i.i = phi i64 [ %i.bw, %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S8_EUliE0_EEvT0_T1_S7_S8_ENKUliiE0_clEii.exit16.thread ], [ 0, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.y = shl i64 %.034.i.i, 1                     ; 2 uses
  %i.z = add i64 %i.y, 2                          ; 4 uses
  %i.aa = getelementptr inbounds [4 x i8], ptr %0, i64 %i.z
  %i.ab = or disjoint i64 %i.y, 1                 ; 2 uses
  %i.ac = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ab
  %i.ad = load i32, ptr %i.aa, align 4, !tbaa !3  ; 2 uses
  %i.ae = load i32, ptr %i.ac, align 4, !tbaa !3  ; 2 uses
  %i.af = load ptr, ptr %.sroa.019.0.copyload, align 8, !tbaa !1386
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !255 ; 3 uses
  %.not.i.i.i3 = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i3, label %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE0_clEi.exit12.i6, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.ai = zext i32 %i.ad to i64                   ; 2 uses
  %i.aj = lshr i64 %i.ai, 6
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.aj
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !143
  %i.am = and i64 %i.ai, 63
  %i.an = shl nuw i64 1, %i.am
  %i.ao = and i64 %i.al, %i.an
  %.not.i.i.i.i4 = icmp eq i64 %i.ao, 0
  %i.ap = zext i32 %i.ae to i64                   ; 2 uses
  %i.aq = lshr i64 %i.ap, 6
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.aq
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !143
  %i.at = and i64 %i.ap, 63
  %i.au = shl nuw i64 1, %i.at
  %i.av = and i64 %i.as, %i.au
  %.not.i.i.i11.i5 = icmp eq i64 %i.av, 0
  br label %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE0_clEi.exit12.i6

_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE0_clEi.exit12.i6: ; preds = %bb.c, %.lr.ph.i.i
  %i.aw = phi i1 [ %.not.i.i.i.i4, %bb.c ], [ false, %.lr.ph.i.i ] ; 3 uses
  %i.ax = phi i1 [ %.not.i.i.i11.i5, %bb.c ], [ false, %.lr.ph.i.i ] ; 2 uses
  %or.cond.i7 = or i1 %i.aw, %i.ax
  br i1 %or.cond.i7, label %bb.d, label %bb.i

bb.d:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE0_clEi.exit12.i6
  %.sroa.0.0.copyload.i9 = load i64, ptr %.sroa.6.0.copyload, align 4 ; 3 uses
  %.sroa.37.0.extract.shift.i.i10 = lshr i64 %.sroa.0.0.copyload.i9, 32
  %.sroa.37.0.extract.trunc.i.i11 = trunc nuw i64 %.sroa.37.0.extract.shift.i.i10 to i32
  switch i32 %.sroa.37.0.extract.trunc.i.i11, label %bb.h [
    i32 1, label %bb.e
    i32 0, label %bb.g
  ]

bb.e:                                             ; preds = %bb.d
  %i.ay = and i64 %.sroa.0.0.copyload.i9, 65536
  %.not.i.i14 = icmp eq i64 %i.ay, 0
  br i1 %.not.i.i14, label %bb.f, label %.critedge.i15

bb.f:                                             ; preds = %bb.e
  call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs, ptr noundef nonnull @.str.81) #35
  unreachable

bb.g:                                             ; preds = %bb.d
  %or.cond.i.i12 = and i1 %i.aw, %i.ax
  br i1 %or.cond.i.i12, label %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S8_EUliE0_EEvT0_T1_S7_S8_ENKUliiE0_clEii.exit16.thread, label %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S8_EUliE0_EEvT0_T1_S7_S8_ENKUliiE0_clEii.exit16

bb.h:                                             ; preds = %bb.d
  call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs_0, ptr noundef nonnull @.str.82) #35
  unreachable

.critedge.i15:                                    ; preds = %bb.e
  call void @_ZSt27__throw_bad_optional_accessv() #35
  unreachable

bb.i:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE0_clEi.exit12.i6
  %i.az = load ptr, ptr %i.w, align 8, !tbaa !1379
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #31
  %i.ba = load ptr, ptr %.sroa.7.0.copyload, align 8, !tbaa !1388, !nonnull !81, !align !444
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !1381
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 144
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !1180 ; 2 uses
  %i.be = sext i32 %i.ad to i64
  %i.bf = getelementptr inbounds [8 x i8], ptr %i.bd, i64 %i.be
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !143
  store i64 %i.bg, ptr %i.b, align 8, !tbaa !143
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #31
  %i.bh = sext i32 %i.ae to i64
  %i.bi = getelementptr inbounds [8 x i8], ptr %i.bd, i64 %i.bh
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !143
  store i64 %i.bj, ptr %i.c, align 8, !tbaa !143
  %i.bk = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !643
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.bl, ptr %i.a, align 8, !tbaa !773
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  store ptr %i.a, ptr %3, align 8, !tbaa !774
  store ptr %i.b, ptr %i.k, align 8, !tbaa !451
  store ptr %i.c, ptr %i.l, align 8, !tbaa !451
  %i.bm = call noundef i32 @_ZZN8facebook5velox12SimpleVectorImE39comparePrimitiveAscWithCustomComparisonEPKNS0_4TypeERKmS7_ENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(24) %3) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bn = load ptr, ptr %i.x, align 8, !tbaa !1389, !nonnull !81, !align !446
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 1
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !959, !range !80, !noundef !81
  %i.bq = trunc nuw i8 %i.bp to i1
  %i.br = sub nsw i32 0, %i.bm
  %i.bs = select i1 %i.bq, i32 %i.bm, i32 %i.br
  %.fr = freeze i32 %i.bs
  %i.bt = icmp slt i32 %.fr, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #31
  br i1 %i.bt, label %bb.j, label %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S8_EUliE0_EEvT0_T1_S7_S8_ENKUliiE0_clEii.exit16.thread

_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S8_EUliE0_EEvT0_T1_S7_S8_ENKUliiE0_clEii.exit16: ; preds = %bb.g
  %i.bu = trunc i64 %.sroa.0.0.copyload.i9 to i1
  %i.bv = xor i1 %i.aw, %i.bu
  %.fr37 = freeze i1 %i.bv
  br i1 %.fr37, label %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S8_EUliE0_EEvT0_T1_S7_S8_ENKUliiE0_clEii.exit16.thread, label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S8_EUliE0_EEvT0_T1_S7_S8_ENKUliiE0_clEii.exit16
  br label %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S8_EUliE0_EEvT0_T1_S7_S8_ENKUliiE0_clEii.exit16.thread

_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S8_EUliE0_EEvT0_T1_S7_S8_ENKUliiE0_clEii.exit16.thread: ; preds = %bb.g, %bb.i, %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S8_EUliE0_EEvT0_T1_S7_S8_ENKUliiE0_clEii.exit16, %bb.j
  %i.bw = phi i64 [ %i.ab, %bb.j ], [ %i.z, %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S8_EUliE0_EEvT0_T1_S7_S8_ENKUliiE0_clEii.exit16 ], [ %i.z, %bb.i ], [ %i.z, %bb.g ] ; 4 uses
  %i.bx = getelementptr inbounds [4 x i8], ptr %0, i64 %i.bw
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !3
  %i.bz = getelementptr inbounds [4 x i8], ptr %0, i64 %.034.i.i
  store i32 %i.by, ptr %i.bz, align 4, !tbaa !3
  %i.ca = icmp slt i64 %i.bw, %5
  br i1 %i.ca, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !1390

._crit_edge.i.i:                                  ; preds = %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S8_EUliE0_EEvT0_T1_S7_S8_ENKUliiE0_clEii.exit16.thread, %bb.b
  %.0.lcssa.i.i = phi i64 [ 0, %bb.b ], [ %i.bw, %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S8_EUliE0_EEvT0_T1_S7_S8_ENKUliiE0_clEii.exit16.thread ] ; 5 uses
  %i.cb = and i64 %i.s, 4
  %i.cc = icmp eq i64 %i.cb, 0
  br i1 %i.cc, label %bb.k, label %bb.l

bb.k:                                             ; preds = %._crit_edge.i.i
  %i.cd = add nsw i64 %i.t, -2
  %i.ce = ashr exact i64 %i.cd, 1
  %i.cf = icmp eq i64 %.0.lcssa.i.i, %i.ce
  br i1 %i.cf, label %.thread.i, label %bb.l

.thread.i:                                        ; preds = %bb.k
  %i.cg = shl nuw nsw i64 %.0.lcssa.i.i, 1
  %i.ch = or disjoint i64 %i.cg, 1                ; 2 uses
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ch
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !3
  %i.ck = getelementptr inbounds [4 x i8], ptr %0, i64 %.0.lcssa.i.i
  store i32 %i.cj, ptr %i.ck, align 4, !tbaa !3
  br label %.lr.ph.i.i.preheader.i

bb.l:                                             ; preds = %bb.k, %._crit_edge.i.i
  %.not.i = icmp eq i64 %.0.lcssa.i.i, 0
  br i1 %.not.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_SM_RSI_.exit, label %.lr.ph.i.i.preheader.i

.lr.ph.i.i.preheader.i:                           ; preds = %bb.l, %.thread.i
  %.1.i11.i = phi i64 [ %i.ch, %.thread.i ], [ %.0.lcssa.i.i, %bb.l ]
  %i.cl = zext i32 %i.p to i64                    ; 2 uses
  %i.cm = lshr i64 %i.cl, 6
  %i.cn = and i64 %i.cl, 63
  %i.co = shl nuw i64 1, %i.cn
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 8
  %i.cq = sext i32 %i.p to i64
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 16
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.t, %.lr.ph.i.i.preheader.i
  %.019.i.i.i = phi i64 [ %.0920.i.i67.i, %bb.t ], [ %.1.i11.i, %.lr.ph.i.i.preheader.i ] ; 4 uses
  %.0920.in.i.i.i = add nsw i64 %.019.i.i.i, -1
  %.0920.i.i67.i = lshr i64 %.0920.in.i.i.i, 1    ; 3 uses
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0920.i.i67.i ; 2 uses
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !3  ; 3 uses
  %i.cu = load ptr, ptr %.sroa.019.0.copyload, align 8, !tbaa !1386
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 40
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !255 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.cw, null
  br i1 %.not.i.i.i, label %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE0_clEi.exit12.i, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i.i.i
  %i.cx = zext i32 %i.ct to i64                   ; 2 uses
  %i.cy = lshr i64 %i.cx, 6
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %i.cy
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !143
  %i.db = and i64 %i.cx, 63
  %i.dc = shl nuw i64 1, %i.db
  %i.dd = and i64 %i.da, %i.dc
  %.not.i.i.i.i = icmp eq i64 %i.dd, 0
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %i.cm
  %i.df = load i64, ptr %i.de, align 8, !tbaa !143
  %i.dg = and i64 %i.df, %i.co
  %.not.i.i.i11.i = icmp eq i64 %i.dg, 0
  br label %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE0_clEi.exit12.i

_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE0_clEi.exit12.i: ; preds = %bb.m, %.lr.ph.i.i.i
  %i.dh = phi i1 [ %.not.i.i.i.i, %bb.m ], [ false, %.lr.ph.i.i.i ] ; 3 uses
  %i.di = phi i1 [ %.not.i.i.i11.i, %bb.m ], [ false, %.lr.ph.i.i.i ] ; 2 uses
  %or.cond.i = or i1 %i.dh, %i.di
  br i1 %or.cond.i, label %bb.n, label %bb.s

bb.n:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE0_clEi.exit12.i
  %.sroa.0.0.copyload.i = load i64, ptr %.sroa.6.0.copyload, align 4 ; 3 uses
  %.sroa.37.0.extract.shift.i.i = lshr i64 %.sroa.0.0.copyload.i, 32
  %.sroa.37.0.extract.trunc.i.i = trunc nuw i64 %.sroa.37.0.extract.shift.i.i to i32
  switch i32 %.sroa.37.0.extract.trunc.i.i, label %bb.r [
    i32 1, label %bb.o
    i32 0, label %bb.q
  ]

bb.o:                                             ; preds = %bb.n
  %i.dj = and i64 %.sroa.0.0.copyload.i, 65536
  %.not.i.i = icmp eq i64 %i.dj, 0
  br i1 %.not.i.i, label %bb.p, label %.critedge.i

bb.p:                                             ; preds = %bb.o
  call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs, ptr noundef nonnull @.str.81) #35
  unreachable

bb.q:                                             ; preds = %bb.n
  %or.cond.i.i = and i1 %i.dh, %i.di
  %i.dk = trunc i64 %.sroa.0.0.copyload.i to i1
  %i.dl = xor i1 %i.dh, %i.dk
  %or.cond.demorgan = or i1 %or.cond.i.i, %i.dl
  br i1 %or.cond.demorgan, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_SM_RSI_.exit, label %bb.t

bb.r:                                             ; preds = %bb.n
  call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs_0, ptr noundef nonnull @.str.82) #35
  unreachable

.critedge.i:                                      ; preds = %bb.o
  call void @_ZSt27__throw_bad_optional_accessv() #35
  unreachable

bb.s:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE0_clEi.exit12.i
  %i.dm = load ptr, ptr %i.cp, align 8, !tbaa !1379
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #31
  %i.dn = load ptr, ptr %.sroa.7.0.copyload, align 8, !tbaa !1388, !nonnull !81, !align !444
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !1381
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 144
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !1180 ; 2 uses
  %i.dr = sext i32 %i.ct to i64
  %i.ds = getelementptr inbounds [8 x i8], ptr %i.dq, i64 %i.dr
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !143
  store i64 %i.dt, ptr %i.e, align 8, !tbaa !143
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #31
  %i.du = getelementptr inbounds [8 x i8], ptr %i.dq, i64 %i.cq
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !143
  store i64 %i.dv, ptr %i.f, align 8, !tbaa !143
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !643
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.dx, ptr %i.d, align 8, !tbaa !773
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  store ptr %i.d, ptr %4, align 8, !tbaa !774
  store ptr %i.e, ptr %i.m, align 8, !tbaa !451
  store ptr %i.f, ptr %i.n, align 8, !tbaa !451
  %i.dy = call noundef i32 @_ZZN8facebook5velox12SimpleVectorImE39comparePrimitiveAscWithCustomComparisonEPKNS0_4TypeERKmS7_ENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(24) %4) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.dz = load ptr, ptr %i.cr, align 8, !tbaa !1389, !nonnull !81, !align !446
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 1
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !959, !range !80, !noundef !81
  %i.ec = trunc nuw i8 %i.eb to i1
  %i.ed = sub nsw i32 0, %i.dy
  %i.ee = select i1 %i.ec, i32 %i.dy, i32 %i.ed
  %i.ef = icmp slt i32 %i.ee, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #31
  br i1 %i.ef, label %._crit_edge43, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_SM_RSI_.exit

._crit_edge43:                                    ; preds = %bb.s
  %.pre = load i32, ptr %i.cs, align 4, !tbaa !3
  br label %bb.t

bb.t:                                             ; preds = %._crit_edge43, %bb.q
  %i.eg = phi i32 [ %.pre, %._crit_edge43 ], [ %i.ct, %bb.q ]
  %i.eh = getelementptr inbounds [4 x i8], ptr %0, i64 %.019.i.i.i
  store i32 %i.eg, ptr %i.eh, align 4, !tbaa !3
  %.not8.i = icmp eq i64 %.0920.i.i67.i, 0
  br i1 %.not8.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_SM_RSI_.exit, label %.lr.ph.i.i.i, !llvm.loop !1391

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_SM_RSI_.exit: ; preds = %bb.q, %bb.s, %bb.t, %bb.l
  %.0.lcssa.i.i.i = phi i64 [ 0, %bb.l ], [ %.019.i.i.i, %bb.s ], [ %.019.i.i.i, %bb.q ], [ 0, %bb.t ]
  %i.ei = getelementptr inbounds [4 x i8], ptr %0, i64 %.0.lcssa.i.i.i
  store i32 %i.p, ptr %i.ei, align 4, !tbaa !3
  %i.ej = icmp sgt i64 %i.s, 4
  br i1 %i.ej, label %bb.b, label %._crit_edge, !llvm.loop !1392

._crit_edge:                                      ; preds = %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_SM_RSI_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_RSI_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %3 = alloca %class.anon.465, align 8            ; 6 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %4 = alloca %class.anon.465, align 8            ; 6 uses
  %i.e = alloca i64, align 8                      ; 4 uses
  %i.f = alloca i64, align 8                      ; 4 uses
  %i.g = ptrtoint ptr %1 to i64
  %i.h = ptrtoint ptr %0 to i64
  %i.i = sub i64 %i.g, %i.h                       ; 2 uses
  %i.j = ashr exact i64 %i.i, 2                   ; 3 uses
  %i.k = icmp slt i64 %i.j, 2
  br i1 %i.k, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = add nsw i64 %i.j, -2                     ; 3 uses
  %i.m = lshr i64 %i.l, 1
  %.sroa.0.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.0.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.n = add nsw i64 %i.j, -1
  %i.o = lshr i64 %i.n, 1                         ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.r = and i64 %i.i, 4
  %i.s = icmp eq i64 %i.r, 0
  %i.t = lshr exact i64 %i.l, 1                   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.w = or disjoint i64 %i.l, 1                  ; 2 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.w
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.t
  br label %bb.c

bb.c:                                             ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SI_SI_SJ_T2_.exit, %bb.b
  %.08 = phi i64 [ %i.m, %bb.b ], [ %i.ej, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SI_SI_SJ_T2_.exit ] ; 8 uses
  %i.z = getelementptr inbounds [4 x i8], ptr %0, i64 %.08
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !3   ; 3 uses
  %.sroa.0.sroa.0.0.copyload = load ptr, ptr %2, align 8, !tbaa !40 ; 2 uses
  %.sroa.0.sroa.2.0.copyload = load ptr, ptr %.sroa.0.sroa.2.0..sroa_idx, align 8, !tbaa !874 ; 2 uses
  %.sroa.0.sroa.3.0.copyload = load ptr, ptr %.sroa.0.sroa.3.0..sroa_idx, align 8, !tbaa !40 ; 6 uses
  %i.ab = icmp slt i64 %.08, %i.o
  br i1 %i.ab, label %.lr.ph.i.preheader, label %._crit_edge.i

.lr.ph.i.preheader:                               ; preds = %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.sroa.3.0.copyload, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.sroa.3.0.copyload, i64 16
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S8_EUliE0_EEvT0_T1_S7_S8_ENKUliiE0_clEii.exit23.thread
  %.034.i = phi i64 [ %i.cc, %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S8_EUliE0_EEvT0_T1_S7_S8_ENKUliiE0_clEii.exit23.thread ], [ %.08, %.lr.ph.i.preheader ] ; 2 uses
  %i.ae = shl i64 %.034.i, 1                      ; 2 uses
  %i.af = add i64 %i.ae, 2                        ; 4 uses
  %i.ag = getelementptr inbounds [4 x i8], ptr %0, i64 %i.af
end_hunk_8
begin_hunk_9_@_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE_EEEvT_SM_SI_:bb.a
  %.pn20 = phi ptr [ %0, %.lr.ph ], [ %.sroa.08.021, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit ] ; 2 uses
  %i.q = load i32, ptr %.sroa.08.021, align 4, !tbaa !3
  %i.r = load i32, ptr %0, align 4, !tbaa !3
  %i.s = load ptr, ptr %i.i, align 8, !tbaa !1379
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #31
  %i.t = load ptr, ptr %i.j, align 8, !tbaa !1381
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 144
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !1180 ; 2 uses
  %i.w = sext i32 %i.q to i64
  %i.x = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.w
  %i.y = load i64, ptr %i.x, align 8, !tbaa !143
  store i64 %i.y, ptr %i.e, align 8, !tbaa !143
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #31
  %i.z = sext i32 %i.r to i64
  %i.aa = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.z
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !143
  store i64 %i.ab, ptr %i.f, align 8, !tbaa !143
  %i.ac = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !643
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.ad, ptr %i.d, align 8, !tbaa !773
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  store ptr %i.d, ptr %4, align 8, !tbaa !774
  store ptr %i.e, ptr %i.k, align 8, !tbaa !451
  store ptr %i.f, ptr %i.l, align 8, !tbaa !451
  %i.ae = call noundef i32 @_ZZN8facebook5velox12SimpleVectorImE39comparePrimitiveAscWithCustomComparisonEPKNS0_4TypeERKmS7_ENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(24) %4) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.af = load ptr, ptr %i.m, align 8, !tbaa !1389
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 1 ; 2 uses
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !959, !range !80, !noundef !81
  %i.ai = trunc nuw i8 %i.ah to i1
  %i.aj = sub nsw i32 0, %i.ae
  %i.ak = select i1 %i.ai, i32 %i.ae, i32 %i.aj
  %i.al = icmp slt i32 %i.ak, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #31
  %i.am = load i32, ptr %.sroa.08.021, align 4, !tbaa !3 ; 2 uses
  br i1 %i.al, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.an = ptrtoint ptr %.sroa.08.021 to i64
  %i.ao = sub i64 %i.an, %i.p                     ; 3 uses
  %i.ap = ashr exact i64 %i.ao, 2                 ; 2 uses
  %i.aq = icmp sgt i64 %i.ap, 1
  br i1 %i.aq, label %bb.d, label %bb.e, !prof !76

bb.d:                                             ; preds = %bb.c
  %i.ar = getelementptr inbounds nuw i8, ptr %.pn20, i64 8
  %i.as = sub nsw i64 0, %i.ap
  %i.at = getelementptr inbounds [4 x i8], ptr %i.ar, i64 %i.as
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.at, ptr noundef nonnull align 4 dereferenceable(1) %0, i64 %i.ao, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit

bb.e:                                             ; preds = %bb.c
  %i.au = icmp eq i64 %i.ao, 4
  br i1 %i.au, label %bb.f, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit

bb.f:                                             ; preds = %bb.e
  %i.av = getelementptr inbounds nuw i8, ptr %.pn20, i64 4
  %i.aw = load i32, ptr %0, align 4, !tbaa !3
  store i32 %i.aw, ptr %i.av, align 4, !tbaa !3
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit

bb.g:                                             ; preds = %bb.b
  %i.ax = sext i32 %i.am to i64
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %bb.g
  %.sroa.04.0.i = phi ptr [ %.sroa.08.021, %bb.g ], [ %.sroa.0.0.i, %bb.i ] ; 3 uses
  %.sroa.0.0.i = getelementptr inbounds i8, ptr %.sroa.04.0.i, i64 -4 ; 3 uses
  %i.ay = load i32, ptr %.sroa.0.0.i, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #31
  %i.az = load ptr, ptr %i.j, align 8, !tbaa !1381
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 144
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !1180 ; 2 uses
  %i.bc = getelementptr inbounds [8 x i8], ptr %i.bb, i64 %i.ax
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !143
  store i64 %i.bd, ptr %i.b, align 8, !tbaa !143
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #31
  %i.be = sext i32 %i.ay to i64
  %i.bf = getelementptr inbounds [8 x i8], ptr %i.bb, i64 %i.be
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !143
  store i64 %i.bg, ptr %i.c, align 8, !tbaa !143
  %i.bh = load ptr, ptr %i.ac, align 8, !tbaa !643
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.bh, ptr %i.a, align 8, !tbaa !773
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  store ptr %i.a, ptr %3, align 8, !tbaa !774
  store ptr %i.b, ptr %i.n, align 8, !tbaa !451
  store ptr %i.c, ptr %i.o, align 8, !tbaa !451
  %i.bi = call noundef i32 @_ZZN8facebook5velox12SimpleVectorImE39comparePrimitiveAscWithCustomComparisonEPKNS0_4TypeERKmS7_ENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(24) %3) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bj = load i8, ptr %i.ag, align 1, !tbaa !959, !range !80, !noundef !81
  %i.bk = trunc nuw i8 %i.bj to i1
  %i.bl = sub nsw i32 0, %i.bi
  %i.bm = select i1 %i.bk, i32 %i.bi, i32 %i.bl
  %i.bn = icmp slt i32 %i.bm, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #31
  br i1 %i.bn, label %bb.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit

bb.i:                                             ; preds = %bb.h
  %i.bo = load i32, ptr %.sroa.0.0.i, align 4, !tbaa !3
  store i32 %i.bo, ptr %.sroa.04.0.i, align 4, !tbaa !3
  br label %bb.h, !llvm.loop !1383

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit: ; preds = %bb.h, %bb.f, %bb.e, %bb.d
  %.sink = phi ptr [ %0, %bb.f ], [ %0, %bb.d ], [ %0, %bb.e ], [ %.sroa.04.0.i, %bb.h ]
  store i32 %i.am, ptr %.sink, align 4, !tbaa !3
  %.sroa.08.0 = getelementptr inbounds nuw i8, ptr %.sroa.08.021, i64 4 ; 2 uses
  %i.bp = icmp eq ptr %.sroa.08.0, %1
  br i1 %i.bp, label %.loopexit, label %bb.b, !llvm.loop !1412

.loopexit:                                        ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit, %.preheader, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_SI_SJ_(ptr %0, ptr %1, i64 noundef %2, ptr noundef byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.480") align 8 %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.480", align 8 ; 4 uses
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.480", align 8 ; 4 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = ashr exact i64 %i.c, 2                   ; 2 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph22

bb.b:                                             ; preds = %.lr.ph22
  %i.h = icmp eq i64 %i.j, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph22, !llvm.loop !1413

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %storemerge14.lcssa = phi ptr [ %1, %.lr.ph ], [ %i.n, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  call void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_RSI_(ptr %0, ptr %storemerge14.lcssa, ptr noundef nonnull align 8 dereferenceable(24) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_RSI_(ptr %0, ptr %storemerge14.lcssa, ptr noundef nonnull align 8 dereferenceable(24) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %.loopexit

.lr.ph22:                                         ; preds = %.lr.ph, %bb.b
  %storemerge1421 = phi ptr [ %i.n, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.01520 = phi i64 [ %i.j, %bb.b ], [ %2, %.lr.ph ]
  %i.i = phi i64 [ %i.q, %bb.b ], [ %i.d, %.lr.ph ]
  %i.j = add nsw i64 %.01520, -1                  ; 3 uses
  %i.k = lshr i64 %i.i, 1
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.k
  %i.m = getelementptr inbounds i8, ptr %storemerge1421, i64 -4
  tail call void @_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_SM_SM_SI_(ptr %0, ptr nonnull %i.f, ptr %i.l, ptr nonnull %i.m, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.480") align 8 %3)
  %i.n = tail call ptr @_ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE0_EEET_SM_SM_SM_SI_(ptr nonnull %i.f, ptr %storemerge1421, ptr %0, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.480") align 8 %3) ; 4 uses
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_SI_SJ_(ptr %i.n, ptr %storemerge1421, i64 noundef %i.j, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.480") align 8 %3)
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = sub i64 %i.o, %i.a
  %i.q = ashr exact i64 %i.p, 2                   ; 2 uses
  %i.r = icmp sgt i64 %i.q, 16
  br i1 %i.r, label %bb.b, label %.loopexit, !llvm.loop !1413

.loopexit:                                        ; preds = %.lr.ph22, %bb.a, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_RSI_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = icmp sgt i64 %i.c, 4
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_SM_RSI_.exit
  %.sroa.0.041 = phi ptr [ %1, %.lr.ph ], [ %i.e, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_SM_RSI_.exit ]
  %i.e = getelementptr inbounds i8, ptr %.sroa.0.041, i64 -4 ; 4 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !3    ; 3 uses
  %i.g = load i32, ptr %0, align 4, !tbaa !3
  store i32 %i.g, ptr %i.e, align 4, !tbaa !3
  %i.h = ptrtoint ptr %i.e to i64
  %i.i = sub i64 %i.h, %i.a                       ; 3 uses
  %i.j = ashr exact i64 %i.i, 2                   ; 3 uses
  %.sroa.019.0.copyload = load ptr, ptr %2, align 8 ; 2 uses
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 4 uses
  %i.k = add nsw i64 %i.j, -1
  %3 = sdiv i64 %i.k, 2
  %i.l = icmp sgt i64 %i.j, 2
  br i1 %i.l, label %.lr.ph.i.i.preheader, label %._crit_edge.i.i

.lr.ph.i.i.preheader:                             ; preds = %bb.b
  %i.m = load ptr, ptr %.sroa.019.0.copyload, align 8, !tbaa !1414
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !255  ; 3 uses
  %.not.i.i.i.i4 = icmp eq ptr %i.o, null
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 8
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKS5_11sortIndicesERSt6vectorIiSaIiEENS3_12CompareFlagsEEUliE1_ZNKS5_11sortIndicesESA_SB_EUliE2_EEvT0_T1_SA_SB_EUliiE0_EclINS_17__normal_iteratorIPiS9_EESL_EEbT_SE_.exit.thread
  %.034.i.i = phi i64 [ %i.bj, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKS5_11sortIndicesERSt6vectorIiSaIiEENS3_12CompareFlagsEEUliE1_ZNKS5_11sortIndicesESA_SB_EUliE2_EEvT0_T1_SA_SB_EUliiE0_EclINS_17__normal_iteratorIPiS9_EESL_EEbT_SE_.exit.thread ], [ 0, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.q = shl i64 %.034.i.i, 1                     ; 2 uses
  %i.r = add i64 %i.q, 2                          ; 4 uses
  %i.s = getelementptr inbounds [4 x i8], ptr %0, i64 %i.r
  %i.t = or disjoint i64 %i.q, 1                  ; 2 uses
  %i.u = getelementptr inbounds [4 x i8], ptr %0, i64 %i.t
  %i.v = load i32, ptr %i.s, align 4, !tbaa !3    ; 5 uses
  %i.w = load i32, ptr %i.u, align 4, !tbaa !3    ; 3 uses
  br i1 %.not.i.i.i.i4, label %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE2_clEi.exit12.i.i7, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.x = zext i32 %i.v to i64                     ; 2 uses
  %i.y = lshr i64 %i.x, 6
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.y
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !143
  %i.ab = and i64 %i.x, 63
  %i.ac = shl nuw i64 1, %i.ab
  %i.ad = and i64 %i.aa, %i.ac
  %.not.i.i.i.i.i5 = icmp eq i64 %i.ad, 0
  %i.ae = zext i32 %i.w to i64                    ; 2 uses
  %i.af = lshr i64 %i.ae, 6
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.af
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !143
  %i.ai = and i64 %i.ae, 63
  %i.aj = shl nuw i64 1, %i.ai
  %i.ak = and i64 %i.ah, %i.aj
  %.not.i.i.i11.i.i6 = icmp eq i64 %i.ak, 0
  br label %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE2_clEi.exit12.i.i7

_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE2_clEi.exit12.i.i7: ; preds = %bb.c, %.lr.ph.i.i
  %i.al = phi i1 [ %.not.i.i.i.i.i5, %bb.c ], [ false, %.lr.ph.i.i ] ; 3 uses
  %i.am = phi i1 [ %.not.i.i.i11.i.i6, %bb.c ], [ false, %.lr.ph.i.i ] ; 2 uses
  %or.cond.i.i8 = or i1 %i.al, %i.am
  br i1 %or.cond.i.i8, label %bb.d, label %bb.i

bb.d:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE2_clEi.exit12.i.i7
  %.sroa.0.0.copyload.i.i10 = load i64, ptr %.sroa.6.0.copyload, align 4 ; 3 uses
  %.sroa.37.0.extract.shift.i.i.i11 = lshr i64 %.sroa.0.0.copyload.i.i10, 32
  %.sroa.37.0.extract.trunc.i.i.i12 = trunc nuw i64 %.sroa.37.0.extract.shift.i.i.i11 to i32
  switch i32 %.sroa.37.0.extract.trunc.i.i.i12, label %bb.h [
    i32 1, label %bb.e
    i32 0, label %bb.g
  ]

bb.e:                                             ; preds = %bb.d
  %i.an = and i64 %.sroa.0.0.copyload.i.i10, 65536
  %.not.i.i.i15 = icmp eq i64 %i.an, 0
  br i1 %.not.i.i.i15, label %bb.f, label %.critedge.i.i16

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs, ptr noundef nonnull @.str.81) #35
  unreachable

bb.g:                                             ; preds = %bb.d
  %or.cond.i.i.i13 = and i1 %i.al, %i.am
  br i1 %or.cond.i.i.i13, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKS5_11sortIndicesERSt6vectorIiSaIiEENS3_12CompareFlagsEEUliE1_ZNKS5_11sortIndicesESA_SB_EUliE2_EEvT0_T1_SA_SB_EUliiE0_EclINS_17__normal_iteratorIPiS9_EESL_EEbT_SE_.exit.thread, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKS5_11sortIndicesERSt6vectorIiSaIiEENS3_12CompareFlagsEEUliE1_ZNKS5_11sortIndicesESA_SB_EUliE2_EEvT0_T1_SA_SB_EUliiE0_EclINS_17__normal_iteratorIPiS9_EESL_EEbT_SE_.exit

bb.h:                                             ; preds = %bb.d
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs_0, ptr noundef nonnull @.str.82) #35
  unreachable

.critedge.i.i16:                                  ; preds = %bb.e
  tail call void @_ZSt27__throw_bad_optional_accessv() #35
  unreachable

bb.i:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE2_clEi.exit12.i.i7
  %i.ao = load ptr, ptr %.sroa.7.0.copyload, align 8, !tbaa !1416, !nonnull !81, !align !444
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !1418
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 144
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !1180 ; 2 uses
  %i.as = sext i32 %i.v to i64
  %i.at = getelementptr inbounds [8 x i8], ptr %i.ar, i64 %i.as
  %i.au = load i64, ptr %i.at, align 8, !tbaa !143
  %i.av = sext i32 %i.w to i64
  %i.aw = getelementptr inbounds [8 x i8], ptr %i.ar, i64 %i.av
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !143
  %i.ay = tail call i32 @llvm.ucmp.i32.i64(i64 %i.au, i64 %i.ax) ; 2 uses
  %i.az = load ptr, ptr %i.p, align 8, !tbaa !1420, !nonnull !81, !align !446
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 1
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !959, !range !80, !noundef !81
  %i.bc = trunc nuw i8 %i.bb to i1
  %i.bd = sub nsw i32 0, %i.ay
  %i.be = select i1 %i.bc, i32 %i.ay, i32 %i.bd
  %.fr = freeze i32 %i.be
  %i.bf = icmp slt i32 %.fr, 0
  br i1 %i.bf, label %bb.j, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKS5_11sortIndicesERSt6vectorIiSaIiEENS3_12CompareFlagsEEUliE1_ZNKS5_11sortIndicesESA_SB_EUliE2_EEvT0_T1_SA_SB_EUliiE0_EclINS_17__normal_iteratorIPiS9_EESL_EEbT_SE_.exit.thread

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKS5_11sortIndicesERSt6vectorIiSaIiEENS3_12CompareFlagsEEUliE1_ZNKS5_11sortIndicesESA_SB_EUliE2_EEvT0_T1_SA_SB_EUliiE0_EclINS_17__normal_iteratorIPiS9_EESL_EEbT_SE_.exit: ; preds = %bb.g
  %i.bg = trunc i64 %.sroa.0.0.copyload.i.i10 to i1
  %i.bh = xor i1 %i.al, %i.bg
  %.fr38 = freeze i1 %i.bh
  br i1 %.fr38, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKS5_11sortIndicesERSt6vectorIiSaIiEENS3_12CompareFlagsEEUliE1_ZNKS5_11sortIndicesESA_SB_EUliE2_EEvT0_T1_SA_SB_EUliiE0_EclINS_17__normal_iteratorIPiS9_EESL_EEbT_SE_.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKS5_11sortIndicesERSt6vectorIiSaIiEENS3_12CompareFlagsEEUliE1_ZNKS5_11sortIndicesESA_SB_EUliE2_EEvT0_T1_SA_SB_EUliiE0_EclINS_17__normal_iteratorIPiS9_EESL_EEbT_SE_.exit
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKS5_11sortIndicesERSt6vectorIiSaIiEENS3_12CompareFlagsEEUliE1_ZNKS5_11sortIndicesESA_SB_EUliE2_EEvT0_T1_SA_SB_EUliiE0_EclINS_17__normal_iteratorIPiS9_EESL_EEbT_SE_.exit.thread

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKS5_11sortIndicesERSt6vectorIiSaIiEENS3_12CompareFlagsEEUliE1_ZNKS5_11sortIndicesESA_SB_EUliE2_EEvT0_T1_SA_SB_EUliiE0_EclINS_17__normal_iteratorIPiS9_EESL_EEbT_SE_.exit.thread: ; preds = %bb.g, %bb.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKS5_11sortIndicesERSt6vectorIiSaIiEENS3_12CompareFlagsEEUliE1_ZNKS5_11sortIndicesESA_SB_EUliE2_EEvT0_T1_SA_SB_EUliiE0_EclINS_17__normal_iteratorIPiS9_EESL_EEbT_SE_.exit, %bb.j
  %i.bi = phi i32 [ %i.w, %bb.j ], [ %i.v, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKS5_11sortIndicesERSt6vectorIiSaIiEENS3_12CompareFlagsEEUliE1_ZNKS5_11sortIndicesESA_SB_EUliE2_EEvT0_T1_SA_SB_EUliiE0_EclINS_17__normal_iteratorIPiS9_EESL_EEbT_SE_.exit ], [ %i.v, %bb.i ], [ %i.v, %bb.g ]
  %i.bj = phi i64 [ %i.t, %bb.j ], [ %i.r, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKS5_11sortIndicesERSt6vectorIiSaIiEENS3_12CompareFlagsEEUliE1_ZNKS5_11sortIndicesESA_SB_EUliE2_EEvT0_T1_SA_SB_EUliiE0_EclINS_17__normal_iteratorIPiS9_EESL_EEbT_SE_.exit ], [ %i.r, %bb.i ], [ %i.r, %bb.g ] ; 3 uses
  %i.bk = getelementptr inbounds [4 x i8], ptr %0, i64 %.034.i.i
  store i32 %i.bi, ptr %i.bk, align 4, !tbaa !3
  %i.bl = icmp slt i64 %i.bj, %3
  br i1 %i.bl, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !1421

._crit_edge.i.i:                                  ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKS5_11sortIndicesERSt6vectorIiSaIiEENS3_12CompareFlagsEEUliE1_ZNKS5_11sortIndicesESA_SB_EUliE2_EEvT0_T1_SA_SB_EUliiE0_EclINS_17__normal_iteratorIPiS9_EESL_EEbT_SE_.exit.thread, %bb.b
  %.0.lcssa.i.i = phi i64 [ 0, %bb.b ], [ %i.bj, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKS5_11sortIndicesERSt6vectorIiSaIiEENS3_12CompareFlagsEEUliE1_ZNKS5_11sortIndicesESA_SB_EUliE2_EEvT0_T1_SA_SB_EUliiE0_EclINS_17__normal_iteratorIPiS9_EESL_EEbT_SE_.exit.thread ] ; 5 uses
  %i.bm = and i64 %i.i, 4
  %i.bn = icmp eq i64 %i.bm, 0
  br i1 %i.bn, label %bb.k, label %bb.l

bb.k:                                             ; preds = %._crit_edge.i.i
  %i.bo = add nsw i64 %i.j, -2
  %i.bp = ashr exact i64 %i.bo, 1
  %i.bq = icmp eq i64 %.0.lcssa.i.i, %i.bp
  br i1 %i.bq, label %.thread.i, label %bb.l

.thread.i:                                        ; preds = %bb.k
  %i.br = shl nuw nsw i64 %.0.lcssa.i.i, 1
  %i.bs = or disjoint i64 %i.br, 1                ; 2 uses
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bs
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !3
  %i.bv = getelementptr inbounds [4 x i8], ptr %0, i64 %.0.lcssa.i.i
  store i32 %i.bu, ptr %i.bv, align 4, !tbaa !3
  br label %.lr.ph.i.i.preheader.i

bb.l:                                             ; preds = %bb.k, %._crit_edge.i.i
  %.not.i = icmp eq i64 %.0.lcssa.i.i, 0
  br i1 %.not.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_SM_RSI_.exit, label %.lr.ph.i.i.preheader.i

.lr.ph.i.i.preheader.i:                           ; preds = %bb.l, %.thread.i
  %.1.i11.i = phi i64 [ %i.bs, %.thread.i ], [ %.0.lcssa.i.i, %bb.l ]
  %i.bw = load ptr, ptr %.sroa.019.0.copyload, align 8, !tbaa !1414
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 40
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !255 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.by, null
  %i.bz = zext i32 %i.f to i64                    ; 2 uses
  %i.ca = lshr i64 %i.bz, 6
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %i.ca
  %i.cc = and i64 %i.bz, 63
  %i.cd = shl nuw i64 1, %i.cc
  %i.ce = sext i32 %i.f to i64
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 8
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.t, %.lr.ph.i.i.preheader.i
  %.018.i.i.i = phi i64 [ %.0919.i.i67.i, %bb.t ], [ %.1.i11.i, %.lr.ph.i.i.preheader.i ] ; 4 uses
  %.0919.in.i.i.i = add nsw i64 %.018.i.i.i, -1
  %.0919.i.i67.i = lshr i64 %.0919.in.i.i.i, 1    ; 3 uses
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0919.i.i67.i
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !3  ; 3 uses
  br i1 %.not.i.i.i.i, label %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE2_clEi.exit12.i.i, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i.i.i
  %i.ci = zext i32 %i.ch to i64                   ; 2 uses
  %i.cj = lshr i64 %i.ci, 6
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %i.cj
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !143
  %i.cm = and i64 %i.ci, 63
  %i.cn = shl nuw i64 1, %i.cm
  %i.co = and i64 %i.cl, %i.cn
  %.not.i.i.i.i.i = icmp eq i64 %i.co, 0
  %i.cp = load i64, ptr %i.cb, align 8, !tbaa !143
  %i.cq = and i64 %i.cp, %i.cd
  %.not.i.i.i11.i.i = icmp eq i64 %i.cq, 0
  br label %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE2_clEi.exit12.i.i

_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE2_clEi.exit12.i.i: ; preds = %bb.m, %.lr.ph.i.i.i
  %i.cr = phi i1 [ %.not.i.i.i.i.i, %bb.m ], [ false, %.lr.ph.i.i.i ] ; 3 uses
  %i.cs = phi i1 [ %.not.i.i.i11.i.i, %bb.m ], [ false, %.lr.ph.i.i.i ] ; 2 uses
  %or.cond.i.i = or i1 %i.cr, %i.cs
  br i1 %or.cond.i.i, label %bb.n, label %bb.s

bb.n:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE2_clEi.exit12.i.i
  %.sroa.0.0.copyload.i.i = load i64, ptr %.sroa.6.0.copyload, align 4 ; 3 uses
  %.sroa.37.0.extract.shift.i.i.i = lshr i64 %.sroa.0.0.copyload.i.i, 32
  %.sroa.37.0.extract.trunc.i.i.i = trunc nuw i64 %.sroa.37.0.extract.shift.i.i.i to i32
  switch i32 %.sroa.37.0.extract.trunc.i.i.i, label %bb.r [
    i32 1, label %bb.o
    i32 0, label %bb.q
  ]

bb.o:                                             ; preds = %bb.n
  %i.ct = and i64 %.sroa.0.0.copyload.i.i, 65536
  %.not.i.i.i = icmp eq i64 %i.ct, 0
  br i1 %.not.i.i.i, label %bb.p, label %.critedge.i.i

bb.p:                                             ; preds = %bb.o
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs, ptr noundef nonnull @.str.81) #35
  unreachable

bb.q:                                             ; preds = %bb.n
  %or.cond.i.i.i = and i1 %i.cr, %i.cs
  %i.cu = trunc i64 %.sroa.0.0.copyload.i.i to i1
  %i.cv = xor i1 %i.cr, %i.cu
  %or.cond.demorgan = or i1 %or.cond.i.i.i, %i.cv
  br i1 %or.cond.demorgan, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_SM_RSI_.exit, label %bb.t

bb.r:                                             ; preds = %bb.n
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs_0, ptr noundef nonnull @.str.82) #35
  unreachable

.critedge.i.i:                                    ; preds = %bb.o
  tail call void @_ZSt27__throw_bad_optional_accessv() #35
  unreachable

bb.s:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE2_clEi.exit12.i.i
  %i.cw = load ptr, ptr %.sroa.7.0.copyload, align 8, !tbaa !1416, !nonnull !81, !align !444
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !1418
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 144
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !1180 ; 2 uses
  %i.da = sext i32 %i.ch to i64
  %i.db = getelementptr inbounds [8 x i8], ptr %i.cz, i64 %i.da
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !143
  %i.dd = getelementptr inbounds [8 x i8], ptr %i.cz, i64 %i.ce
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !143
  %i.df = tail call i32 @llvm.ucmp.i32.i64(i64 %i.dc, i64 %i.de) ; 2 uses
  %i.dg = load ptr, ptr %i.cf, align 8, !tbaa !1420, !nonnull !81, !align !446
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 1
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !959, !range !80, !noundef !81
  %i.dj = trunc nuw i8 %i.di to i1
  %i.dk = sub nsw i32 0, %i.df
  %i.dl = select i1 %i.dj, i32 %i.df, i32 %i.dk
  %i.dm = icmp slt i32 %i.dl, 0
  br i1 %i.dm, label %bb.t, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_SM_RSI_.exit

bb.t:                                             ; preds = %bb.q, %bb.s
  %i.dn = getelementptr inbounds [4 x i8], ptr %0, i64 %.018.i.i.i
  store i32 %i.ch, ptr %i.dn, align 4, !tbaa !3
  %.not8.i = icmp eq i64 %.0919.i.i67.i, 0
  br i1 %.not8.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_SM_RSI_.exit, label %.lr.ph.i.i.i, !llvm.loop !1422

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_SM_RSI_.exit: ; preds = %bb.q, %bb.t, %bb.s, %bb.l
  %.0.lcssa.i.i.i = phi i64 [ 0, %bb.l ], [ %.018.i.i.i, %bb.s ], [ 0, %bb.t ], [ %.018.i.i.i, %bb.q ]
  %i.do = getelementptr inbounds [4 x i8], ptr %0, i64 %.0.lcssa.i.i.i
  store i32 %i.f, ptr %i.do, align 4, !tbaa !3
  %i.dp = icmp sgt i64 %i.i, 4
  br i1 %i.dp, label %bb.b, label %._crit_edge, !llvm.loop !1423

._crit_edge:                                      ; preds = %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_SM_RSI_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_RSI_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 2                   ; 3 uses
  %i.e = icmp slt i64 %i.d, 2
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i64 %i.d, -2                     ; 3 uses
  %i.g = lshr i64 %i.f, 1
  %.sroa.0.sroa.0.0.copyload = load ptr, ptr %2, align 8, !tbaa !40 ; 2 uses
  %.sroa.0.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.0.sroa.2.0.copyload = load ptr, ptr %.sroa.0.sroa.2.0..sroa_idx, align 8, !tbaa !874 ; 2 uses
  %.sroa.0.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.0.sroa.3.0.copyload = load ptr, ptr %.sroa.0.sroa.3.0..sroa_idx, align 8, !tbaa !40 ; 3 uses
  %i.h = add nsw i64 %i.d, -1
  %i.i = lshr i64 %i.h, 1                         ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.sroa.3.0.copyload, i64 8 ; 2 uses
  %i.k = and i64 %i.c, 4
  %i.l = icmp eq i64 %i.k, 0
  %i.m = lshr exact i64 %i.f, 1                   ; 2 uses
  %i.n = or disjoint i64 %i.f, 1                  ; 2 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.n
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.m
  br label %bb.c

bb.c:                                             ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SI_SI_SJ_T2_.exit, %bb.b
  %.08 = phi i64 [ %i.g, %bb.b ], [ %i.do, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SI_SI_SJ_T2_.exit ] ; 8 uses
  %i.q = getelementptr inbounds [4 x i8], ptr %0, i64 %.08
  %i.r = load i32, ptr %i.q, align 4, !tbaa !3    ; 3 uses
  %i.s = icmp slt i64 %.08, %i.i
  br i1 %i.s, label %.lr.ph.i.preheader, label %._crit_edge.i

.lr.ph.i.preheader:                               ; preds = %bb.c
  %i.t = load ptr, ptr %.sroa.0.sroa.0.0.copyload, align 8, !tbaa !1414
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !255  ; 3 uses
  %.not.i.i.i.i9 = icmp eq ptr %i.v, null
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKS5_11sortIndicesERSt6vectorIiSaIiEENS3_12CompareFlagsEEUliE1_ZNKS5_11sortIndicesESA_SB_EUliE2_EEvT0_T1_SA_SB_EUliiE0_EclINS_17__normal_iteratorIPiS9_EESL_EEbT_SE_.exit.thread
  %.034.i = phi i64 [ %i.bp, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKS5_11sortIndicesERSt6vectorIiSaIiEENS3_12CompareFlagsEEUliE1_ZNKS5_11sortIndicesESA_SB_EUliE2_EEvT0_T1_SA_SB_EUliiE0_EclINS_17__normal_iteratorIPiS9_EESL_EEbT_SE_.exit.thread ], [ %.08, %.lr.ph.i.preheader ] ; 2 uses
  %i.w = shl i64 %.034.i, 1                       ; 2 uses
  %i.x = add i64 %i.w, 2                          ; 4 uses
  %i.y = getelementptr inbounds [4 x i8], ptr %0, i64 %i.x
  %i.z = or disjoint i64 %i.w, 1                  ; 2 uses
  %i.aa = getelementptr inbounds [4 x i8], ptr %0, i64 %i.z
  %i.ab = load i32, ptr %i.y, align 4, !tbaa !3   ; 5 uses
  %i.ac = load i32, ptr %i.aa, align 4, !tbaa !3  ; 3 uses
  br i1 %.not.i.i.i.i9, label %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE2_clEi.exit12.i.i12, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %i.ad = zext i32 %i.ab to i64                   ; 2 uses
  %i.ae = lshr i64 %i.ad, 6
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.ae
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !143
  %i.ah = and i64 %i.ad, 63
  %i.ai = shl nuw i64 1, %i.ah
  %i.aj = and i64 %i.ag, %i.ai
  %.not.i.i.i.i.i10 = icmp eq i64 %i.aj, 0
  %i.ak = zext i32 %i.ac to i64                   ; 2 uses
  %i.al = lshr i64 %i.ak, 6
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.al
  %i.an = load i64, ptr %i.am, align 8, !tbaa !143
  %i.ao = and i64 %i.ak, 63
  %i.ap = shl nuw i64 1, %i.ao
  %i.aq = and i64 %i.an, %i.ap
  %.not.i.i.i11.i.i11 = icmp eq i64 %i.aq, 0
  br label %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE2_clEi.exit12.i.i12

_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE2_clEi.exit12.i.i12: ; preds = %bb.d, %.lr.ph.i
  %i.ar = phi i1 [ %.not.i.i.i.i.i10, %bb.d ], [ false, %.lr.ph.i ] ; 3 uses
  %i.as = phi i1 [ %.not.i.i.i11.i.i11, %bb.d ], [ false, %.lr.ph.i ] ; 2 uses
  %or.cond.i.i13 = or i1 %i.ar, %i.as
  br i1 %or.cond.i.i13, label %bb.e, label %bb.j

bb.e:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE2_clEi.exit12.i.i12
end_hunk_9
begin_hunk_10_@_ZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S9_SA_EUliE0_EEvT0_T1_S7_SA_:bb.a
  br label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSA_11sortIndicesERS5_PKiNS8_12CompareFlagsEEUliE_ZNKSA_11sortIndicesESC_SE_SF_EUliE0_EEvT0_T1_SC_SF_EUliiE_EvT_SL_SI_.exit

bb.f:                                             ; preds = %bb.a
  %i.t = icmp eq ptr %i.g, %i.i
  br i1 %i.t, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSA_11sortIndicesERS5_PKiNS8_12CompareFlagsEEUliE_ZNKSA_11sortIndicesESC_SE_SF_EUliE0_EEvT0_T1_SC_SF_EUliiE_EvT_SL_SI_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = ptrtoint ptr %i.i to i64
  %i.v = ptrtoint ptr %i.g to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = ashr exact i64 %i.w, 2
  %i.y = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.x, i1 true)
  %i.z = shl nuw nsw i64 %i.y, 1
  %i.aa = xor i64 %i.z, 126
  call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE_EEEvT_SO_SK_SL_(ptr %i.g, ptr %i.i, i64 noundef %i.aa, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.495") align 8 %11)
  call void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE_EEEvT_SO_SK_(ptr %i.g, ptr %i.i, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.495") align 8 %11)
  br label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSA_11sortIndicesERS5_PKiNS8_12CompareFlagsEEUliE_ZNKSA_11sortIndicesESC_SE_SF_EUliE0_EEvT0_T1_SC_SF_EUliiE_EvT_SL_SI_.exit

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSA_11sortIndicesERS5_PKiNS8_12CompareFlagsEEUliE_ZNKSA_11sortIndicesESC_SE_SF_EUliE0_EEvT0_T1_SC_SF_EUliiE_EvT_SL_SI_.exit: ; preds = %bb.g, %bb.f, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSA_11sortIndicesERS5_PKiNS8_12CompareFlagsEEUliE_ZNKSA_11sortIndicesESC_SE_SF_EUliE0_EEvT0_T1_SC_SF_EUliiE0_EvT_SL_SI_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #31
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S9_SA_EUliE2_EEvT0_T1_S7_SA_(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr %1, ptr %2, ptr %3, ptr %4, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 %6) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %7 = alloca %class.anon.499, align 8            ; 9 uses
  %8 = alloca %class.anon.488, align 8            ; 5 uses
  %9 = alloca %class.anon.489, align 8            ; 3 uses
  %10 = alloca %"struct.facebook::velox::CompareFlags", align 8 ; 5 uses
  %11 = alloca %class.anon.498, align 8           ; 5 uses
  store ptr %1, ptr %8, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %2, ptr %i.a, align 8
  store ptr %3, ptr %9, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %4, ptr %i.b, align 8
  store i64 %6, ptr %10, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #31
  store ptr %8, ptr %11, align 8, !tbaa !40
  %i.c = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %10, ptr %i.c, align 8, !tbaa !874
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !255
  %.not = icmp eq ptr %i.e, null
  %i.f = load ptr, ptr %5, align 8, !tbaa !667    ; 10 uses
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !667  ; 9 uses
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store ptr %9, ptr %7, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %10, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %11, ptr %.sroa.3.0..sroa_idx, align 8
  %i.i = icmp eq ptr %i.f, %i.h
  br i1 %i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSA_11sortIndicesERS5_PKiNS8_12CompareFlagsEEUliE1_ZNKSA_11sortIndicesESC_SE_SF_EUliE2_EEvT0_T1_SC_SF_EUliiE0_EvT_SL_SI_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.f to i64
  %i.l = sub i64 %i.j, %i.k                       ; 2 uses
  %i.m = ashr exact i64 %i.l, 2
  %i.n = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.m, i1 true)
  %i.o = shl nuw nsw i64 %i.n, 1
  %i.p = xor i64 %i.o, 126
  call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SG_SH_EUliE2_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_SK_SL_(ptr %i.f, ptr %i.h, i64 noundef %i.p, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.500") align 8 %7)
  %i.q = icmp sgt i64 %i.l, 64
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 64 ; 2 uses
  call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SG_SH_EUliE2_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_SK_(ptr %i.f, ptr nonnull %i.r, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.500") align 8 %7)
  call void @_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SG_SH_EUliE2_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_SK_(ptr nonnull %i.r, ptr %i.h, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.500") align 8 %7)
  br label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSA_11sortIndicesERS5_PKiNS8_12CompareFlagsEEUliE1_ZNKSA_11sortIndicesESC_SE_SF_EUliE2_EEvT0_T1_SC_SF_EUliiE0_EvT_SL_SI_.exit

bb.e:                                             ; preds = %bb.c
  call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SG_SH_EUliE2_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_SK_(ptr %i.f, ptr %i.h, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.500") align 8 %7)
  br label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSA_11sortIndicesERS5_PKiNS8_12CompareFlagsEEUliE1_ZNKSA_11sortIndicesESC_SE_SF_EUliE2_EEvT0_T1_SC_SF_EUliiE0_EvT_SL_SI_.exit

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSA_11sortIndicesERS5_PKiNS8_12CompareFlagsEEUliE1_ZNKSA_11sortIndicesESC_SE_SF_EUliE2_EEvT0_T1_SC_SF_EUliiE0_EvT_SL_SI_.exit: ; preds = %bb.b, %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSA_11sortIndicesERS5_PKiNS8_12CompareFlagsEEUliE1_ZNKSA_11sortIndicesESC_SE_SF_EUliE2_EEvT0_T1_SC_SF_EUliiE_EvT_SL_SI_.exit

bb.f:                                             ; preds = %bb.a
  %i.s = icmp eq ptr %i.f, %i.h
  br i1 %i.s, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSA_11sortIndicesERS5_PKiNS8_12CompareFlagsEEUliE1_ZNKSA_11sortIndicesESC_SE_SF_EUliE2_EEvT0_T1_SC_SF_EUliiE_EvT_SL_SI_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = ptrtoint ptr %i.h to i64
  %i.u = ptrtoint ptr %i.f to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = ashr exact i64 %i.v, 2
  %i.x = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.w, i1 true)
  %i.y = shl nuw nsw i64 %i.x, 1
  %i.z = xor i64 %i.y, 126
  call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SG_SH_EUliE2_EEvT0_T1_SE_SH_EUliiE_EEEvT_SO_SK_SL_(ptr %i.f, ptr %i.h, i64 noundef %i.z, ptr nonnull %8, ptr nonnull %10)
  call void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SG_SH_EUliE2_EEvT0_T1_SE_SH_EUliiE_EEEvT_SO_SK_(ptr %i.f, ptr %i.h, ptr nonnull %8, ptr nonnull %10)
  br label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSA_11sortIndicesERS5_PKiNS8_12CompareFlagsEEUliE1_ZNKSA_11sortIndicesESC_SE_SF_EUliE2_EEvT0_T1_SC_SF_EUliiE_EvT_SL_SI_.exit

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSA_11sortIndicesERS5_PKiNS8_12CompareFlagsEEUliE1_ZNKSA_11sortIndicesESC_SE_SF_EUliE2_EEvT0_T1_SC_SF_EUliiE_EvT_SL_SI_.exit: ; preds = %bb.g, %bb.f, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSA_11sortIndicesERS5_PKiNS8_12CompareFlagsEEUliE1_ZNKSA_11sortIndicesESC_SE_SF_EUliE2_EEvT0_T1_SC_SF_EUliiE0_EvT_SL_SI_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #31
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_SK_SL_(ptr %0, ptr %1, i64 noundef %2, ptr noundef byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.492") align 8 %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.492", align 8 ; 4 uses
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.492", align 8 ; 4 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = ashr exact i64 %i.c, 2                   ; 2 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph22

bb.b:                                             ; preds = %.lr.ph22
  %i.h = icmp eq i64 %i.j, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph22, !llvm.loop !1448

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %storemerge14.lcssa = phi ptr [ %1, %.lr.ph ], [ %i.n, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  call void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_RSK_(ptr %0, ptr %storemerge14.lcssa, ptr noundef nonnull align 8 dereferenceable(24) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_RSK_(ptr %0, ptr %storemerge14.lcssa, ptr noundef nonnull align 8 dereferenceable(24) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %.loopexit

.lr.ph22:                                         ; preds = %.lr.ph, %bb.b
  %storemerge1421 = phi ptr [ %i.n, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.01520 = phi i64 [ %i.j, %bb.b ], [ %2, %.lr.ph ]
  %i.i = phi i64 [ %i.q, %bb.b ], [ %i.d, %.lr.ph ]
  %i.j = add nsw i64 %.01520, -1                  ; 3 uses
  %i.k = lshr i64 %i.i, 1
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.k
  %i.m = getelementptr inbounds i8, ptr %storemerge1421, i64 -4
  tail call void @_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_SO_SO_SK_(ptr %0, ptr nonnull %i.f, ptr %i.l, ptr nonnull %i.m, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.492") align 8 %3)
  %i.n = tail call ptr @_ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEET_SO_SO_SO_SK_(ptr nonnull %i.f, ptr %storemerge1421, ptr %0, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.492") align 8 %3) ; 4 uses
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_SK_SL_(ptr %i.n, ptr %storemerge1421, i64 noundef %i.j, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.492") align 8 %3)
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = sub i64 %i.o, %i.a
  %i.q = ashr exact i64 %i.p, 2                   ; 2 uses
  %i.r = icmp sgt i64 %i.q, 16
  br i1 %i.r, label %bb.b, label %.loopexit, !llvm.loop !1448

.loopexit:                                        ; preds = %.lr.ph22, %bb.a, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_RSK_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %3 = alloca %class.anon.465, align 8            ; 6 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %4 = alloca %class.anon.465, align 8            ; 6 uses
  %i.e = alloca i64, align 8                      ; 4 uses
  %i.f = alloca i64, align 8                      ; 4 uses
  %i.g = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.h = ptrtoint ptr %1 to i64
  %i.i = sub i64 %i.h, %i.g
  %i.j = icmp sgt i64 %i.i, 4
  br i1 %i.j, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_SO_RSK_.exit
  %.sroa.0.040 = phi ptr [ %1, %.lr.ph ], [ %i.o, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_SO_RSK_.exit ]
  %i.o = getelementptr inbounds i8, ptr %.sroa.0.040, i64 -4 ; 4 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !3    ; 2 uses
  %i.q = load i32, ptr %0, align 4, !tbaa !3
  store i32 %i.q, ptr %i.o, align 4, !tbaa !3
  %i.r = ptrtoint ptr %i.o to i64
  %i.s = sub i64 %i.r, %i.g                       ; 3 uses
  %i.t = ashr exact i64 %i.s, 2                   ; 3 uses
  %.sroa.019.0.copyload = load ptr, ptr %2, align 8 ; 4 uses
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 6 uses
  %i.u = add nsw i64 %i.t, -1
  %5 = sdiv i64 %i.u, 2
  %i.v = icmp sgt i64 %i.t, 2
  br i1 %i.v, label %.lr.ph.i.i.preheader, label %._crit_edge.i.i

.lr.ph.i.i.preheader:                             ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.019.0.copyload, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 16
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S9_SA_EUliE0_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit16.thread
  %.034.i.i = phi i64 [ %i.co, %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S9_SA_EUliE0_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit16.thread ], [ 0, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.z = shl i64 %.034.i.i, 1                     ; 2 uses
  %i.aa = add i64 %i.z, 2                         ; 4 uses
  %i.ab = getelementptr inbounds [4 x i8], ptr %0, i64 %i.aa
  %i.ac = or disjoint i64 %i.z, 1                 ; 2 uses
  %i.ad = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ac
  %i.ae = load i32, ptr %i.ab, align 4, !tbaa !3  ; 2 uses
  %i.af = load i32, ptr %i.ad, align 4, !tbaa !3  ; 2 uses
  %i.ag = load ptr, ptr %.sroa.019.0.copyload, align 8, !tbaa !1449
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 40
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !255 ; 3 uses
  %.not.i.i.i3 = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i3, label %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE0_clEi.exit12.i6, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.aj = load ptr, ptr %i.w, align 8, !tbaa !1451, !nonnull !81, !align !444
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !667 ; 2 uses
  %i.al = sext i32 %i.ae to i64
  %i.am = getelementptr inbounds [4 x i8], ptr %i.ak, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !3
  %i.ao = zext i32 %i.an to i64                   ; 2 uses
  %i.ap = lshr i64 %i.ao, 6
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.ap
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !143
  %i.as = and i64 %i.ao, 63
  %i.at = shl nuw i64 1, %i.as
  %i.au = and i64 %i.at, %i.ar
  %.not.i.i.i.i4 = icmp eq i64 %i.au, 0
  %i.av = sext i32 %i.af to i64
  %i.aw = getelementptr inbounds [4 x i8], ptr %i.ak, i64 %i.av
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !3
  %i.ay = zext i32 %i.ax to i64                   ; 2 uses
  %i.az = lshr i64 %i.ay, 6
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.az
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !143
  %i.bc = and i64 %i.ay, 63
  %i.bd = shl nuw i64 1, %i.bc
  %i.be = and i64 %i.bd, %i.bb
  %.not.i.i.i11.i5 = icmp eq i64 %i.be, 0
  br label %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE0_clEi.exit12.i6

_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE0_clEi.exit12.i6: ; preds = %bb.c, %.lr.ph.i.i
  %i.bf = phi i1 [ %.not.i.i.i.i4, %bb.c ], [ false, %.lr.ph.i.i ] ; 3 uses
  %i.bg = phi i1 [ %.not.i.i.i11.i5, %bb.c ], [ false, %.lr.ph.i.i ] ; 2 uses
  %or.cond.i7 = or i1 %i.bf, %i.bg
  br i1 %or.cond.i7, label %bb.d, label %bb.i

bb.d:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE0_clEi.exit12.i6
  %.sroa.0.0.copyload.i9 = load i64, ptr %.sroa.6.0.copyload, align 4 ; 3 uses
  %.sroa.37.0.extract.shift.i.i10 = lshr i64 %.sroa.0.0.copyload.i9, 32
  %.sroa.37.0.extract.trunc.i.i11 = trunc nuw i64 %.sroa.37.0.extract.shift.i.i10 to i32
  switch i32 %.sroa.37.0.extract.trunc.i.i11, label %bb.h [
    i32 1, label %bb.e
    i32 0, label %bb.g
  ]

bb.e:                                             ; preds = %bb.d
  %i.bh = and i64 %.sroa.0.0.copyload.i9, 65536
  %.not.i.i14 = icmp eq i64 %i.bh, 0
  br i1 %.not.i.i14, label %bb.f, label %.critedge.i15

bb.f:                                             ; preds = %bb.e
  call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs, ptr noundef nonnull @.str.81) #35
  unreachable

bb.g:                                             ; preds = %bb.d
  %or.cond.i.i12 = and i1 %i.bf, %i.bg
  br i1 %or.cond.i.i12, label %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S9_SA_EUliE0_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit16.thread, label %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S9_SA_EUliE0_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit16

bb.h:                                             ; preds = %bb.d
  call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs_0, ptr noundef nonnull @.str.82) #35
  unreachable

.critedge.i15:                                    ; preds = %bb.e
  call void @_ZSt27__throw_bad_optional_accessv() #35
  unreachable

bb.i:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE0_clEi.exit12.i6
  %i.bi = load ptr, ptr %i.x, align 8, !tbaa !1446
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #31
  %i.bj = load ptr, ptr %.sroa.7.0.copyload, align 8, !tbaa !1452, !nonnull !81, !align !444 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !1453
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !1455, !nonnull !81, !align !444
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !667 ; 2 uses
  %i.bo = sext i32 %i.ae to i64
  %i.bp = getelementptr inbounds [4 x i8], ptr %i.bn, i64 %i.bo
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !3
  %i.br = getelementptr inbounds nuw i8, ptr %i.bk, i64 144
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !1180 ; 2 uses
  %i.bt = sext i32 %i.bq to i64
  %i.bu = getelementptr inbounds [8 x i8], ptr %i.bs, i64 %i.bt
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !143
  store i64 %i.bv, ptr %i.b, align 8, !tbaa !143
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #31
  %i.bw = sext i32 %i.af to i64
  %i.bx = getelementptr inbounds [4 x i8], ptr %i.bn, i64 %i.bw
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !3
  %i.bz = sext i32 %i.by to i64
  %i.ca = getelementptr inbounds [8 x i8], ptr %i.bs, i64 %i.bz
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !143
  store i64 %i.cb, ptr %i.c, align 8, !tbaa !143
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !643
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.cd, ptr %i.a, align 8, !tbaa !773
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  store ptr %i.a, ptr %3, align 8, !tbaa !774
  store ptr %i.b, ptr %i.k, align 8, !tbaa !451
  store ptr %i.c, ptr %i.l, align 8, !tbaa !451
  %i.ce = call noundef i32 @_ZZN8facebook5velox12SimpleVectorImE39comparePrimitiveAscWithCustomComparisonEPKNS0_4TypeERKmS7_ENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(24) %3) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.cf = load ptr, ptr %i.y, align 8, !tbaa !1456, !nonnull !81, !align !446
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 1
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !959, !range !80, !noundef !81
  %i.ci = trunc nuw i8 %i.ch to i1
  %i.cj = sub nsw i32 0, %i.ce
  %i.ck = select i1 %i.ci, i32 %i.ce, i32 %i.cj
  %.fr = freeze i32 %i.ck
  %i.cl = icmp slt i32 %.fr, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #31
  br i1 %i.cl, label %bb.j, label %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S9_SA_EUliE0_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit16.thread

_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S9_SA_EUliE0_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit16: ; preds = %bb.g
  %i.cm = trunc i64 %.sroa.0.0.copyload.i9 to i1
  %i.cn = xor i1 %i.bf, %i.cm
  %.fr37 = freeze i1 %i.cn
  br i1 %.fr37, label %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S9_SA_EUliE0_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit16.thread, label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S9_SA_EUliE0_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit16
  br label %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S9_SA_EUliE0_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit16.thread

_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S9_SA_EUliE0_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit16.thread: ; preds = %bb.g, %bb.i, %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S9_SA_EUliE0_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit16, %bb.j
  %i.co = phi i64 [ %i.ac, %bb.j ], [ %i.aa, %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S9_SA_EUliE0_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit16 ], [ %i.aa, %bb.i ], [ %i.aa, %bb.g ] ; 4 uses
  %i.cp = getelementptr inbounds [4 x i8], ptr %0, i64 %i.co
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !3
  %i.cr = getelementptr inbounds [4 x i8], ptr %0, i64 %.034.i.i
  store i32 %i.cq, ptr %i.cr, align 4, !tbaa !3
  %i.cs = icmp slt i64 %i.co, %5
  br i1 %i.cs, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !1457

._crit_edge.i.i:                                  ; preds = %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S9_SA_EUliE0_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit16.thread, %bb.b
  %.0.lcssa.i.i = phi i64 [ 0, %bb.b ], [ %i.co, %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S9_SA_EUliE0_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit16.thread ] ; 5 uses
  %i.ct = and i64 %i.s, 4
  %i.cu = icmp eq i64 %i.ct, 0
  br i1 %i.cu, label %bb.k, label %bb.l

bb.k:                                             ; preds = %._crit_edge.i.i
  %i.cv = add nsw i64 %i.t, -2
  %i.cw = ashr exact i64 %i.cv, 1
  %i.cx = icmp eq i64 %.0.lcssa.i.i, %i.cw
  br i1 %i.cx, label %.thread.i, label %bb.l

.thread.i:                                        ; preds = %bb.k
  %i.cy = shl nuw nsw i64 %.0.lcssa.i.i, 1
  %i.cz = or disjoint i64 %i.cy, 1                ; 2 uses
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.cz
  %i.db = load i32, ptr %i.da, align 4, !tbaa !3
  %i.dc = getelementptr inbounds [4 x i8], ptr %0, i64 %.0.lcssa.i.i
  store i32 %i.db, ptr %i.dc, align 4, !tbaa !3
  br label %.lr.ph.i.i.preheader.i

bb.l:                                             ; preds = %bb.k, %._crit_edge.i.i
  %.not.i = icmp eq i64 %.0.lcssa.i.i, 0
  br i1 %.not.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_SO_RSK_.exit, label %.lr.ph.i.i.preheader.i

.lr.ph.i.i.preheader.i:                           ; preds = %bb.l, %.thread.i
  %.1.i11.i = phi i64 [ %i.cz, %.thread.i ], [ %.0.lcssa.i.i, %bb.l ]
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.019.0.copyload, i64 8
  %i.de = sext i32 %i.p to i64                    ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 8
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 16
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.t, %.lr.ph.i.i.preheader.i
  %.019.i.i.i = phi i64 [ %.0920.i.i67.i, %bb.t ], [ %.1.i11.i, %.lr.ph.i.i.preheader.i ] ; 4 uses
  %.0920.in.i.i.i = add nsw i64 %.019.i.i.i, -1
  %.0920.i.i67.i = lshr i64 %.0920.in.i.i.i, 1    ; 3 uses
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0920.i.i67.i ; 2 uses
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !3  ; 3 uses
  %i.dj = load ptr, ptr %.sroa.019.0.copyload, align 8, !tbaa !1449
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 40
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !255 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.dl, null
  br i1 %.not.i.i.i, label %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE0_clEi.exit12.i, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i.i.i
  %i.dm = load ptr, ptr %i.dd, align 8, !tbaa !1451, !nonnull !81, !align !444
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !667 ; 2 uses
  %i.do = sext i32 %i.di to i64
  %i.dp = getelementptr inbounds [4 x i8], ptr %i.dn, i64 %i.do
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !3
  %i.dr = zext i32 %i.dq to i64                   ; 2 uses
  %i.ds = lshr i64 %i.dr, 6
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %i.ds
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !143
  %i.dv = and i64 %i.dr, 63
  %i.dw = shl nuw i64 1, %i.dv
  %i.dx = and i64 %i.dw, %i.du
  %.not.i.i.i.i = icmp eq i64 %i.dx, 0
  %i.dy = getelementptr inbounds [4 x i8], ptr %i.dn, i64 %i.de
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !3
  %i.ea = zext i32 %i.dz to i64                   ; 2 uses
  %i.eb = lshr i64 %i.ea, 6
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %i.eb
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !143
  %i.ee = and i64 %i.ea, 63
  %i.ef = shl nuw i64 1, %i.ee
  %i.eg = and i64 %i.ef, %i.ed
  %.not.i.i.i11.i = icmp eq i64 %i.eg, 0
  br label %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE0_clEi.exit12.i

_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE0_clEi.exit12.i: ; preds = %bb.m, %.lr.ph.i.i.i
  %i.eh = phi i1 [ %.not.i.i.i.i, %bb.m ], [ false, %.lr.ph.i.i.i ] ; 3 uses
  %i.ei = phi i1 [ %.not.i.i.i11.i, %bb.m ], [ false, %.lr.ph.i.i.i ] ; 2 uses
  %or.cond.i = or i1 %i.eh, %i.ei
  br i1 %or.cond.i, label %bb.n, label %bb.s

bb.n:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE0_clEi.exit12.i
  %.sroa.0.0.copyload.i = load i64, ptr %.sroa.6.0.copyload, align 4 ; 3 uses
  %.sroa.37.0.extract.shift.i.i = lshr i64 %.sroa.0.0.copyload.i, 32
  %.sroa.37.0.extract.trunc.i.i = trunc nuw i64 %.sroa.37.0.extract.shift.i.i to i32
  switch i32 %.sroa.37.0.extract.trunc.i.i, label %bb.r [
    i32 1, label %bb.o
    i32 0, label %bb.q
  ]

bb.o:                                             ; preds = %bb.n
  %i.ej = and i64 %.sroa.0.0.copyload.i, 65536
  %.not.i.i = icmp eq i64 %i.ej, 0
  br i1 %.not.i.i, label %bb.p, label %.critedge.i

bb.p:                                             ; preds = %bb.o
  call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs, ptr noundef nonnull @.str.81) #35
  unreachable

bb.q:                                             ; preds = %bb.n
  %or.cond.i.i = and i1 %i.eh, %i.ei
  %i.ek = trunc i64 %.sroa.0.0.copyload.i to i1
  %i.el = xor i1 %i.eh, %i.ek
  %or.cond.demorgan = or i1 %or.cond.i.i, %i.el
  br i1 %or.cond.demorgan, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_SO_RSK_.exit, label %bb.t

bb.r:                                             ; preds = %bb.n
  call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs_0, ptr noundef nonnull @.str.82) #35
  unreachable

.critedge.i:                                      ; preds = %bb.o
  call void @_ZSt27__throw_bad_optional_accessv() #35
  unreachable

bb.s:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE0_clEi.exit12.i
  %i.em = load ptr, ptr %i.df, align 8, !tbaa !1446
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #31
  %i.en = load ptr, ptr %.sroa.7.0.copyload, align 8, !tbaa !1452, !nonnull !81, !align !444 ; 2 uses
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !1453
  %i.ep = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !1455, !nonnull !81, !align !444
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !667 ; 2 uses
  %i.es = sext i32 %i.di to i64
  %i.et = getelementptr inbounds [4 x i8], ptr %i.er, i64 %i.es
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !3
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eo, i64 144
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !1180 ; 2 uses
  %i.ex = sext i32 %i.eu to i64
  %i.ey = getelementptr inbounds [8 x i8], ptr %i.ew, i64 %i.ex
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !143
  store i64 %i.ez, ptr %i.e, align 8, !tbaa !143
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #31
  %i.fa = getelementptr inbounds [4 x i8], ptr %i.er, i64 %i.de
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !3
  %i.fc = sext i32 %i.fb to i64
  %i.fd = getelementptr inbounds [8 x i8], ptr %i.ew, i64 %i.fc
  %i.fe = load i64, ptr %i.fd, align 8, !tbaa !143
  store i64 %i.fe, ptr %i.f, align 8, !tbaa !143
  %i.ff = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !643
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.fg, ptr %i.d, align 8, !tbaa !773
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  store ptr %i.d, ptr %4, align 8, !tbaa !774
  store ptr %i.e, ptr %i.m, align 8, !tbaa !451
  store ptr %i.f, ptr %i.n, align 8, !tbaa !451
  %i.fh = call noundef i32 @_ZZN8facebook5velox12SimpleVectorImE39comparePrimitiveAscWithCustomComparisonEPKNS0_4TypeERKmS7_ENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(24) %4) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.fi = load ptr, ptr %i.dg, align 8, !tbaa !1456, !nonnull !81, !align !446
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 1
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !959, !range !80, !noundef !81
  %i.fl = trunc nuw i8 %i.fk to i1
  %i.fm = sub nsw i32 0, %i.fh
  %i.fn = select i1 %i.fl, i32 %i.fh, i32 %i.fm
  %i.fo = icmp slt i32 %i.fn, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #31
  br i1 %i.fo, label %._crit_edge43, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_SO_RSK_.exit

._crit_edge43:                                    ; preds = %bb.s
  %.pre = load i32, ptr %i.dh, align 4, !tbaa !3
  br label %bb.t

bb.t:                                             ; preds = %._crit_edge43, %bb.q
  %i.fp = phi i32 [ %.pre, %._crit_edge43 ], [ %i.di, %bb.q ]
  %i.fq = getelementptr inbounds [4 x i8], ptr %0, i64 %.019.i.i.i
  store i32 %i.fp, ptr %i.fq, align 4, !tbaa !3
  %.not8.i = icmp eq i64 %.0920.i.i67.i, 0
  br i1 %.not8.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_SO_RSK_.exit, label %.lr.ph.i.i.i, !llvm.loop !1458

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_SO_RSK_.exit: ; preds = %bb.q, %bb.s, %bb.t, %bb.l
  %.0.lcssa.i.i.i = phi i64 [ 0, %bb.l ], [ %.019.i.i.i, %bb.s ], [ %.019.i.i.i, %bb.q ], [ 0, %bb.t ]
  %i.fr = getelementptr inbounds [4 x i8], ptr %0, i64 %.0.lcssa.i.i.i
  store i32 %i.p, ptr %i.fr, align 4, !tbaa !3
  %i.fs = icmp sgt i64 %i.s, 4
  br i1 %i.fs, label %bb.b, label %._crit_edge, !llvm.loop !1459

._crit_edge:                                      ; preds = %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_SO_RSK_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_RSK_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %3 = alloca %class.anon.465, align 8            ; 6 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %4 = alloca %class.anon.465, align 8            ; 6 uses
  %i.e = alloca i64, align 8                      ; 4 uses
  %i.f = alloca i64, align 8                      ; 4 uses
  %i.g = ptrtoint ptr %1 to i64
  %i.h = ptrtoint ptr %0 to i64
  %i.i = sub i64 %i.g, %i.h                       ; 2 uses
  %i.j = ashr exact i64 %i.i, 2                   ; 3 uses
  %i.k = icmp slt i64 %i.j, 2
  br i1 %i.k, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = add nsw i64 %i.j, -2                     ; 3 uses
  %i.m = lshr i64 %i.l, 1
  %.sroa.0.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.0.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.n = add nsw i64 %i.j, -1
  %i.o = lshr i64 %i.n, 1                         ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.r = and i64 %i.i, 4
  %i.s = icmp eq i64 %i.r, 0
  %i.t = lshr exact i64 %i.l, 1                   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.w = or disjoint i64 %i.l, 1                  ; 2 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.w
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.t
  br label %bb.c

bb.c:                                             ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SK_SK_SL_T2_.exit, %bb.b
  %.08 = phi i64 [ %i.m, %bb.b ], [ %i.fs, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SK_SK_SL_T2_.exit ] ; 8 uses
  %i.z = getelementptr inbounds [4 x i8], ptr %0, i64 %.08
end_hunk_10
begin_hunk_11_@_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE_EEEvT_SO_SK_:bb.a
  store i64 %i.ae, ptr %i.e, align 8, !tbaa !143
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #31
  %i.af = sext i32 %i.s to i64
  %i.ag = getelementptr inbounds [4 x i8], ptr %i.w, i64 %i.af
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !3
  %i.ai = sext i32 %i.ah to i64
  %i.aj = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.ai
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !143
  store i64 %i.ak, ptr %i.f, align 8, !tbaa !143
  %i.al = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !643
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.am, ptr %i.d, align 8, !tbaa !773
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  store ptr %i.d, ptr %4, align 8, !tbaa !774
  store ptr %i.e, ptr %i.l, align 8, !tbaa !451
  store ptr %i.f, ptr %i.m, align 8, !tbaa !451
  %i.an = call noundef i32 @_ZZN8facebook5velox12SimpleVectorImE39comparePrimitiveAscWithCustomComparisonEPKNS0_4TypeERKmS7_ENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(24) %4) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.ao = load ptr, ptr %i.n, align 8, !tbaa !1456
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 1 ; 2 uses
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !959, !range !80, !noundef !81
  %i.ar = trunc nuw i8 %i.aq to i1
  %i.as = sub nsw i32 0, %i.an
  %i.at = select i1 %i.ar, i32 %i.an, i32 %i.as
  %i.au = icmp slt i32 %i.at, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #31
  %i.av = load i32, ptr %.sroa.08.021, align 4, !tbaa !3 ; 2 uses
  br i1 %i.au, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.aw = ptrtoint ptr %.sroa.08.021 to i64
  %i.ax = sub i64 %i.aw, %i.q                     ; 3 uses
  %i.ay = ashr exact i64 %i.ax, 2                 ; 2 uses
  %i.az = icmp sgt i64 %i.ay, 1
  br i1 %i.az, label %bb.d, label %bb.e, !prof !76

bb.d:                                             ; preds = %bb.c
  %i.ba = getelementptr inbounds nuw i8, ptr %.pn20, i64 8
  %i.bb = sub nsw i64 0, %i.ay
  %i.bc = getelementptr inbounds [4 x i8], ptr %i.ba, i64 %i.bb
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.bc, ptr noundef nonnull align 4 dereferenceable(1) %0, i64 %i.ax, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit

bb.e:                                             ; preds = %bb.c
  %i.bd = icmp eq i64 %i.ax, 4
  br i1 %i.bd, label %bb.f, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit

bb.f:                                             ; preds = %bb.e
  %i.be = getelementptr inbounds nuw i8, ptr %.pn20, i64 4
  %i.bf = load i32, ptr %0, align 4, !tbaa !3
  store i32 %i.bf, ptr %i.be, align 4, !tbaa !3
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit

bb.g:                                             ; preds = %bb.b
  %i.bg = sext i32 %i.av to i64
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %bb.g
  %.sroa.04.0.i = phi ptr [ %.sroa.08.021, %bb.g ], [ %.sroa.0.0.i, %bb.i ] ; 3 uses
  %.sroa.0.0.i = getelementptr inbounds i8, ptr %.sroa.04.0.i, i64 -4 ; 3 uses
  %i.bh = load i32, ptr %.sroa.0.0.i, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #31
  %i.bi = load ptr, ptr %i.j, align 8, !tbaa !1453
  %i.bj = load ptr, ptr %i.k, align 8, !tbaa !1455, !nonnull !81, !align !444
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !667 ; 2 uses
  %i.bl = getelementptr inbounds [4 x i8], ptr %i.bk, i64 %i.bg
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !3
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bi, i64 144
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !1180 ; 2 uses
  %i.bp = sext i32 %i.bm to i64
  %i.bq = getelementptr inbounds [8 x i8], ptr %i.bo, i64 %i.bp
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !143
  store i64 %i.br, ptr %i.b, align 8, !tbaa !143
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #31
  %i.bs = sext i32 %i.bh to i64
  %i.bt = getelementptr inbounds [4 x i8], ptr %i.bk, i64 %i.bs
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !3
  %i.bv = sext i32 %i.bu to i64
  %i.bw = getelementptr inbounds [8 x i8], ptr %i.bo, i64 %i.bv
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !143
  store i64 %i.bx, ptr %i.c, align 8, !tbaa !143
  %i.by = load ptr, ptr %i.al, align 8, !tbaa !643
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.by, ptr %i.a, align 8, !tbaa !773
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  store ptr %i.a, ptr %3, align 8, !tbaa !774
  store ptr %i.b, ptr %i.o, align 8, !tbaa !451
  store ptr %i.c, ptr %i.p, align 8, !tbaa !451
  %i.bz = call noundef i32 @_ZZN8facebook5velox12SimpleVectorImE39comparePrimitiveAscWithCustomComparisonEPKNS0_4TypeERKmS7_ENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(24) %3) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ca = load i8, ptr %i.ap, align 1, !tbaa !959, !range !80, !noundef !81
  %i.cb = trunc nuw i8 %i.ca to i1
  %i.cc = sub nsw i32 0, %i.bz
  %i.cd = select i1 %i.cb, i32 %i.bz, i32 %i.cc
  %i.ce = icmp slt i32 %i.cd, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #31
  br i1 %i.ce, label %bb.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit

bb.i:                                             ; preds = %bb.h
  %i.cf = load i32, ptr %.sroa.0.0.i, align 4, !tbaa !3
  store i32 %i.cf, ptr %.sroa.04.0.i, align 4, !tbaa !3
  br label %bb.h, !llvm.loop !1474

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit: ; preds = %bb.h, %bb.f, %bb.e, %bb.d
  %.sink = phi ptr [ %0, %bb.f ], [ %0, %bb.d ], [ %0, %bb.e ], [ %.sroa.04.0.i, %bb.h ]
  store i32 %i.av, ptr %.sink, align 4, !tbaa !3
  %.sroa.08.0 = getelementptr inbounds nuw i8, ptr %.sroa.08.021, i64 4 ; 2 uses
  %i.cg = icmp eq ptr %.sroa.08.0, %1
  br i1 %i.cg, label %.loopexit, label %bb.b, !llvm.loop !1481

.loopexit:                                        ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit, %.preheader, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SG_SH_EUliE2_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_SK_SL_(ptr %0, ptr %1, i64 noundef %2, ptr noundef byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.500") align 8 %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.500", align 8 ; 4 uses
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.500", align 8 ; 4 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = ashr exact i64 %i.c, 2                   ; 2 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph22

bb.b:                                             ; preds = %.lr.ph22
  %i.h = icmp eq i64 %i.j, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph22, !llvm.loop !1482

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %storemerge14.lcssa = phi ptr [ %1, %.lr.ph ], [ %i.n, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  call void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SG_SH_EUliE2_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_RSK_(ptr %0, ptr %storemerge14.lcssa, ptr noundef nonnull align 8 dereferenceable(24) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SG_SH_EUliE2_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_RSK_(ptr %0, ptr %storemerge14.lcssa, ptr noundef nonnull align 8 dereferenceable(24) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %.loopexit

.lr.ph22:                                         ; preds = %.lr.ph, %bb.b
  %storemerge1421 = phi ptr [ %i.n, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.01520 = phi i64 [ %i.j, %bb.b ], [ %2, %.lr.ph ]
  %i.i = phi i64 [ %i.q, %bb.b ], [ %i.d, %.lr.ph ]
  %i.j = add nsw i64 %.01520, -1                  ; 3 uses
  %i.k = lshr i64 %i.i, 1
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.k
  %i.m = getelementptr inbounds i8, ptr %storemerge1421, i64 -4
  tail call void @_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SG_SH_EUliE2_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_SO_SO_SK_(ptr %0, ptr nonnull %i.f, ptr %i.l, ptr nonnull %i.m, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.500") align 8 %3)
  %i.n = tail call ptr @_ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SG_SH_EUliE2_EEvT0_T1_SE_SH_EUliiE0_EEET_SO_SO_SO_SK_(ptr nonnull %i.f, ptr %storemerge1421, ptr %0, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.500") align 8 %3) ; 4 uses
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SG_SH_EUliE2_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_SK_SL_(ptr %i.n, ptr %storemerge1421, i64 noundef %i.j, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.500") align 8 %3)
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = sub i64 %i.o, %i.a
  %i.q = ashr exact i64 %i.p, 2                   ; 2 uses
  %i.r = icmp sgt i64 %i.q, 16
  br i1 %i.r, label %bb.b, label %.loopexit, !llvm.loop !1482

.loopexit:                                        ; preds = %.lr.ph22, %bb.a, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SG_SH_EUliE2_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_RSK_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = icmp sgt i64 %i.c, 4
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SG_SH_EUliE2_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_SO_RSK_.exit
  %.sroa.0.040 = phi ptr [ %1, %.lr.ph ], [ %i.e, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SG_SH_EUliE2_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_SO_RSK_.exit ]
  %i.e = getelementptr inbounds i8, ptr %.sroa.0.040, i64 -4 ; 4 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !3    ; 2 uses
  %i.g = load i32, ptr %0, align 4, !tbaa !3
  store i32 %i.g, ptr %i.e, align 4, !tbaa !3
  %i.h = ptrtoint ptr %i.e to i64
  %i.i = sub i64 %i.h, %i.a                       ; 3 uses
  %i.j = ashr exact i64 %i.i, 2                   ; 3 uses
  %.sroa.019.0.copyload = load ptr, ptr %2, align 8 ; 4 uses
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 4 uses
  %i.k = add nsw i64 %i.j, -1
  %3 = sdiv i64 %i.k, 2
  %i.l = icmp sgt i64 %i.j, 2
  br i1 %i.l, label %.lr.ph.i.i.preheader, label %._crit_edge.i.i

.lr.ph.i.i.preheader:                             ; preds = %bb.b
  %i.m = load ptr, ptr %.sroa.019.0.copyload, align 8, !tbaa !1483
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !255  ; 3 uses
  %.not.i.i.i3 = icmp eq ptr %i.o, null
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.019.0.copyload, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 8
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S9_SA_EUliE2_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit16.thread
  %.034.i.i = phi i64 [ %i.cb, %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S9_SA_EUliE2_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit16.thread ], [ 0, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.r = shl i64 %.034.i.i, 1                     ; 2 uses
  %i.s = add i64 %i.r, 2                          ; 4 uses
  %i.t = getelementptr inbounds [4 x i8], ptr %0, i64 %i.s
  %i.u = or disjoint i64 %i.r, 1                  ; 2 uses
  %i.v = getelementptr inbounds [4 x i8], ptr %0, i64 %i.u
  %i.w = load i32, ptr %i.t, align 4, !tbaa !3    ; 5 uses
  %i.x = load i32, ptr %i.v, align 4, !tbaa !3    ; 3 uses
  br i1 %.not.i.i.i3, label %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE2_clEi.exit12.i6, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.y = load ptr, ptr %i.p, align 8, !tbaa !1485, !nonnull !81, !align !444
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !667  ; 2 uses
  %i.aa = sext i32 %i.w to i64
  %i.ab = getelementptr inbounds [4 x i8], ptr %i.z, i64 %i.aa
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !3
  %i.ad = zext i32 %i.ac to i64                   ; 2 uses
  %i.ae = lshr i64 %i.ad, 6
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.ae
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !143
  %i.ah = and i64 %i.ad, 63
  %i.ai = shl nuw i64 1, %i.ah
  %i.aj = and i64 %i.ai, %i.ag
  %.not.i.i.i.i4 = icmp eq i64 %i.aj, 0
  %i.ak = sext i32 %i.x to i64
  %i.al = getelementptr inbounds [4 x i8], ptr %i.z, i64 %i.ak
  %i.am = load i32, ptr %i.al, align 4, !tbaa !3
  %i.an = zext i32 %i.am to i64                   ; 2 uses
  %i.ao = lshr i64 %i.an, 6
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.ao
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !143
  %i.ar = and i64 %i.an, 63
  %i.as = shl nuw i64 1, %i.ar
  %i.at = and i64 %i.as, %i.aq
  %.not.i.i.i11.i5 = icmp eq i64 %i.at, 0
  br label %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE2_clEi.exit12.i6

_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE2_clEi.exit12.i6: ; preds = %bb.c, %.lr.ph.i.i
  %i.au = phi i1 [ %.not.i.i.i.i4, %bb.c ], [ false, %.lr.ph.i.i ] ; 3 uses
  %i.av = phi i1 [ %.not.i.i.i11.i5, %bb.c ], [ false, %.lr.ph.i.i ] ; 2 uses
  %or.cond.i7 = or i1 %i.au, %i.av
  br i1 %or.cond.i7, label %bb.d, label %bb.i

bb.d:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE2_clEi.exit12.i6
  %.sroa.0.0.copyload.i9 = load i64, ptr %.sroa.6.0.copyload, align 4 ; 3 uses
  %.sroa.37.0.extract.shift.i.i10 = lshr i64 %.sroa.0.0.copyload.i9, 32
  %.sroa.37.0.extract.trunc.i.i11 = trunc nuw i64 %.sroa.37.0.extract.shift.i.i10 to i32
  switch i32 %.sroa.37.0.extract.trunc.i.i11, label %bb.h [
    i32 1, label %bb.e
    i32 0, label %bb.g
  ]

bb.e:                                             ; preds = %bb.d
  %i.aw = and i64 %.sroa.0.0.copyload.i9, 65536
  %.not.i.i14 = icmp eq i64 %i.aw, 0
  br i1 %.not.i.i14, label %bb.f, label %.critedge.i15

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs, ptr noundef nonnull @.str.81) #35
  unreachable

bb.g:                                             ; preds = %bb.d
  %or.cond.i.i12 = and i1 %i.au, %i.av
  br i1 %or.cond.i.i12, label %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S9_SA_EUliE2_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit16.thread, label %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S9_SA_EUliE2_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit16

bb.h:                                             ; preds = %bb.d
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs_0, ptr noundef nonnull @.str.82) #35
  unreachable

.critedge.i15:                                    ; preds = %bb.e
  tail call void @_ZSt27__throw_bad_optional_accessv() #35
  unreachable

bb.i:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE2_clEi.exit12.i6
  %i.ax = load ptr, ptr %.sroa.7.0.copyload, align 8, !tbaa !1486, !nonnull !81, !align !444 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !1488
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !1490, !nonnull !81, !align !444
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !667 ; 2 uses
  %i.bc = sext i32 %i.w to i64
  %i.bd = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %i.bc
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !3
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ay, i64 144
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !1180 ; 2 uses
  %i.bh = sext i32 %i.be to i64
  %i.bi = getelementptr inbounds [8 x i8], ptr %i.bg, i64 %i.bh
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !143
  %i.bk = sext i32 %i.x to i64
  %i.bl = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %i.bk
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !3
  %i.bn = sext i32 %i.bm to i64
  %i.bo = getelementptr inbounds [8 x i8], ptr %i.bg, i64 %i.bn
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !143
  %i.bq = tail call i32 @llvm.ucmp.i32.i64(i64 %i.bj, i64 %i.bp) ; 2 uses
  %i.br = load ptr, ptr %i.q, align 8, !tbaa !1491, !nonnull !81, !align !446
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 1
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !959, !range !80, !noundef !81
  %i.bu = trunc nuw i8 %i.bt to i1
  %i.bv = sub nsw i32 0, %i.bq
  %i.bw = select i1 %i.bu, i32 %i.bq, i32 %i.bv
  %.fr = freeze i32 %i.bw
  %i.bx = icmp slt i32 %.fr, 0
  br i1 %i.bx, label %bb.j, label %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S9_SA_EUliE2_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit16.thread

_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S9_SA_EUliE2_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit16: ; preds = %bb.g
  %i.by = trunc i64 %.sroa.0.0.copyload.i9 to i1
  %i.bz = xor i1 %i.au, %i.by
  %.fr37 = freeze i1 %i.bz
  br i1 %.fr37, label %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S9_SA_EUliE2_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit16.thread, label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S9_SA_EUliE2_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit16
  br label %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S9_SA_EUliE2_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit16.thread

_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S9_SA_EUliE2_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit16.thread: ; preds = %bb.g, %bb.i, %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S9_SA_EUliE2_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit16, %bb.j
  %i.ca = phi i32 [ %i.x, %bb.j ], [ %i.w, %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S9_SA_EUliE2_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit16 ], [ %i.w, %bb.i ], [ %i.w, %bb.g ]
  %i.cb = phi i64 [ %i.u, %bb.j ], [ %i.s, %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S9_SA_EUliE2_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit16 ], [ %i.s, %bb.i ], [ %i.s, %bb.g ] ; 3 uses
  %i.cc = getelementptr inbounds [4 x i8], ptr %0, i64 %.034.i.i
  store i32 %i.ca, ptr %i.cc, align 4, !tbaa !3
  %i.cd = icmp slt i64 %i.cb, %3
  br i1 %i.cd, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !1492

._crit_edge.i.i:                                  ; preds = %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S9_SA_EUliE2_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit16.thread, %bb.b
  %.0.lcssa.i.i = phi i64 [ 0, %bb.b ], [ %i.cb, %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S9_SA_EUliE2_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit16.thread ] ; 5 uses
  %i.ce = and i64 %i.i, 4
  %i.cf = icmp eq i64 %i.ce, 0
  br i1 %i.cf, label %bb.k, label %bb.l

bb.k:                                             ; preds = %._crit_edge.i.i
  %i.cg = add nsw i64 %i.j, -2
  %i.ch = ashr exact i64 %i.cg, 1
  %i.ci = icmp eq i64 %.0.lcssa.i.i, %i.ch
  br i1 %i.ci, label %.thread.i, label %bb.l

.thread.i:                                        ; preds = %bb.k
  %i.cj = shl nuw nsw i64 %.0.lcssa.i.i, 1
  %i.ck = or disjoint i64 %i.cj, 1                ; 2 uses
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ck
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !3
  %i.cn = getelementptr inbounds [4 x i8], ptr %0, i64 %.0.lcssa.i.i
  store i32 %i.cm, ptr %i.cn, align 4, !tbaa !3
  br label %.lr.ph.i.i.preheader.i

bb.l:                                             ; preds = %bb.k, %._crit_edge.i.i
  %.not.i = icmp eq i64 %.0.lcssa.i.i, 0
  br i1 %.not.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SG_SH_EUliE2_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_SO_RSK_.exit, label %.lr.ph.i.i.preheader.i

.lr.ph.i.i.preheader.i:                           ; preds = %bb.l, %.thread.i
  %.1.i11.i = phi i64 [ %i.ck, %.thread.i ], [ %.0.lcssa.i.i, %bb.l ]
  %i.co = load ptr, ptr %.sroa.019.0.copyload, align 8, !tbaa !1483
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 40
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !255 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.cq, null
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.019.0.copyload, i64 8
  %i.cs = sext i32 %i.f to i64                    ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 8
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.t, %.lr.ph.i.i.preheader.i
  %.019.i.i.i = phi i64 [ %.0920.i.i67.i, %bb.t ], [ %.1.i11.i, %.lr.ph.i.i.preheader.i ] ; 4 uses
  %.0920.in.i.i.i = add nsw i64 %.019.i.i.i, -1
  %.0920.i.i67.i = lshr i64 %.0920.in.i.i.i, 1    ; 3 uses
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0920.i.i67.i
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !3  ; 3 uses
  br i1 %.not.i.i.i, label %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE2_clEi.exit12.i, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i.i.i
  %i.cw = load ptr, ptr %i.cr, align 8, !tbaa !1485, !nonnull !81, !align !444
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !667 ; 2 uses
  %i.cy = sext i32 %i.cv to i64
  %i.cz = getelementptr inbounds [4 x i8], ptr %i.cx, i64 %i.cy
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !3
  %i.db = zext i32 %i.da to i64                   ; 2 uses
  %i.dc = lshr i64 %i.db, 6
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %i.dc
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !143
  %i.df = and i64 %i.db, 63
  %i.dg = shl nuw i64 1, %i.df
  %i.dh = and i64 %i.dg, %i.de
  %.not.i.i.i.i = icmp eq i64 %i.dh, 0
  %i.di = getelementptr inbounds [4 x i8], ptr %i.cx, i64 %i.cs
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !3
  %i.dk = zext i32 %i.dj to i64                   ; 2 uses
  %i.dl = lshr i64 %i.dk, 6
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %i.dl
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !143
  %i.do = and i64 %i.dk, 63
  %i.dp = shl nuw i64 1, %i.do
  %i.dq = and i64 %i.dp, %i.dn
  %.not.i.i.i11.i = icmp eq i64 %i.dq, 0
  br label %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE2_clEi.exit12.i

_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE2_clEi.exit12.i: ; preds = %bb.m, %.lr.ph.i.i.i
  %i.dr = phi i1 [ %.not.i.i.i.i, %bb.m ], [ false, %.lr.ph.i.i.i ] ; 3 uses
  %i.ds = phi i1 [ %.not.i.i.i11.i, %bb.m ], [ false, %.lr.ph.i.i.i ] ; 2 uses
  %or.cond.i = or i1 %i.dr, %i.ds
  br i1 %or.cond.i, label %bb.n, label %bb.s

bb.n:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE2_clEi.exit12.i
  %.sroa.0.0.copyload.i = load i64, ptr %.sroa.6.0.copyload, align 4 ; 3 uses
  %.sroa.37.0.extract.shift.i.i = lshr i64 %.sroa.0.0.copyload.i, 32
  %.sroa.37.0.extract.trunc.i.i = trunc nuw i64 %.sroa.37.0.extract.shift.i.i to i32
  switch i32 %.sroa.37.0.extract.trunc.i.i, label %bb.r [
    i32 1, label %bb.o
    i32 0, label %bb.q
  ]

bb.o:                                             ; preds = %bb.n
  %i.dt = and i64 %.sroa.0.0.copyload.i, 65536
  %.not.i.i = icmp eq i64 %i.dt, 0
  br i1 %.not.i.i, label %bb.p, label %.critedge.i

bb.p:                                             ; preds = %bb.o
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs, ptr noundef nonnull @.str.81) #35
  unreachable

bb.q:                                             ; preds = %bb.n
  %or.cond.i.i = and i1 %i.dr, %i.ds
  %i.du = trunc i64 %.sroa.0.0.copyload.i to i1
  %i.dv = xor i1 %i.dr, %i.du
  %or.cond.demorgan = or i1 %or.cond.i.i, %i.dv
  br i1 %or.cond.demorgan, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SG_SH_EUliE2_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_SO_RSK_.exit, label %bb.t

bb.r:                                             ; preds = %bb.n
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs_0, ptr noundef nonnull @.str.82) #35
  unreachable

.critedge.i:                                      ; preds = %bb.o
  tail call void @_ZSt27__throw_bad_optional_accessv() #35
  unreachable

bb.s:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE2_clEi.exit12.i
  %i.dw = load ptr, ptr %.sroa.7.0.copyload, align 8, !tbaa !1486, !nonnull !81, !align !444 ; 2 uses
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !1488
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !1490, !nonnull !81, !align !444
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !667 ; 2 uses
  %i.eb = sext i32 %i.cv to i64
  %i.ec = getelementptr inbounds [4 x i8], ptr %i.ea, i64 %i.eb
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !3
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dx, i64 144
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !1180 ; 2 uses
  %i.eg = sext i32 %i.ed to i64
  %i.eh = getelementptr inbounds [8 x i8], ptr %i.ef, i64 %i.eg
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !143
  %i.ej = getelementptr inbounds [4 x i8], ptr %i.ea, i64 %i.cs
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !3
  %i.el = sext i32 %i.ek to i64
  %i.em = getelementptr inbounds [8 x i8], ptr %i.ef, i64 %i.el
  %i.en = load i64, ptr %i.em, align 8, !tbaa !143
  %i.eo = tail call i32 @llvm.ucmp.i32.i64(i64 %i.ei, i64 %i.en) ; 2 uses
  %i.ep = load ptr, ptr %i.ct, align 8, !tbaa !1491, !nonnull !81, !align !446
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 1
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !959, !range !80, !noundef !81
  %i.es = trunc nuw i8 %i.er to i1
  %i.et = sub nsw i32 0, %i.eo
  %i.eu = select i1 %i.es, i32 %i.eo, i32 %i.et
  %i.ev = icmp slt i32 %i.eu, 0
  br i1 %i.ev, label %bb.t, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SG_SH_EUliE2_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_SO_RSK_.exit

bb.t:                                             ; preds = %bb.q, %bb.s
  %i.ew = getelementptr inbounds [4 x i8], ptr %0, i64 %.019.i.i.i
  store i32 %i.cv, ptr %i.ew, align 4, !tbaa !3
  %.not8.i = icmp eq i64 %.0920.i.i67.i, 0
  br i1 %.not8.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SG_SH_EUliE2_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_SO_RSK_.exit, label %.lr.ph.i.i.i, !llvm.loop !1493

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SG_SH_EUliE2_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_SO_RSK_.exit: ; preds = %bb.q, %bb.s, %bb.t, %bb.l
  %.0.lcssa.i.i.i = phi i64 [ 0, %bb.l ], [ %.019.i.i.i, %bb.s ], [ %.019.i.i.i, %bb.q ], [ 0, %bb.t ]
  %i.ex = getelementptr inbounds [4 x i8], ptr %0, i64 %.0.lcssa.i.i.i
  store i32 %i.f, ptr %i.ex, align 4, !tbaa !3
  %i.ey = icmp sgt i64 %i.i, 4
  br i1 %i.ey, label %bb.b, label %._crit_edge, !llvm.loop !1494

._crit_edge:                                      ; preds = %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SG_SH_EUliE2_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_SO_RSK_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SG_SH_EUliE2_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_RSK_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 2                   ; 3 uses
  %i.e = icmp slt i64 %i.d, 2
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i64 %i.d, -2                     ; 3 uses
  %i.g = lshr i64 %i.f, 1
  %.sroa.0.sroa.0.0.copyload = load ptr, ptr %2, align 8, !tbaa !40 ; 3 uses
  %.sroa.0.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.0.sroa.2.0.copyload = load ptr, ptr %.sroa.0.sroa.2.0..sroa_idx, align 8, !tbaa !874 ; 2 uses
  %.sroa.0.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.0.sroa.3.0.copyload = load ptr, ptr %.sroa.0.sroa.3.0..sroa_idx, align 8, !tbaa !40 ; 3 uses
  %i.h = add nsw i64 %i.d, -1
  %i.i = lshr i64 %i.h, 1                         ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.sroa.0.0.copyload, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.sroa.3.0.copyload, i64 8 ; 2 uses
  %i.l = and i64 %i.c, 4
  %i.m = icmp eq i64 %i.l, 0
  %i.n = lshr exact i64 %i.f, 1                   ; 2 uses
  %i.o = or disjoint i64 %i.f, 1                  ; 2 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.o
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.n
  br label %bb.c

bb.c:                                             ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SG_SH_EUliE2_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SK_SK_SL_T2_.exit, %bb.b
  %.08 = phi i64 [ %i.g, %bb.b ], [ %i.ew, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SG_SH_EUliE2_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SK_SK_SL_T2_.exit ] ; 8 uses
  %i.r = getelementptr inbounds [4 x i8], ptr %0, i64 %.08
  %i.s = load i32, ptr %i.r, align 4, !tbaa !3    ; 2 uses
  %i.t = icmp slt i64 %.08, %i.i
  br i1 %i.t, label %.lr.ph.i.preheader, label %._crit_edge.i

.lr.ph.i.preheader:                               ; preds = %bb.c
  %i.u = load ptr, ptr %.sroa.0.sroa.0.0.copyload, align 8, !tbaa !1483
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !255  ; 3 uses
  %.not.i.i.i10 = icmp eq ptr %i.w, null
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S9_SA_EUliE2_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit23.thread
  %.034.i = phi i64 [ %i.ch, %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S9_SA_EUliE2_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit23.thread ], [ %.08, %.lr.ph.i.preheader ] ; 2 uses
  %i.x = shl i64 %.034.i, 1                       ; 2 uses
  %i.y = add i64 %i.x, 2                          ; 4 uses
  %i.z = getelementptr inbounds [4 x i8], ptr %0, i64 %i.y
  %i.aa = or disjoint i64 %i.x, 1                 ; 2 uses
  %i.ab = getelementptr inbounds [4 x i8], ptr %0, i64 %i.aa
  %i.ac = load i32, ptr %i.z, align 4, !tbaa !3   ; 5 uses
  %i.ad = load i32, ptr %i.ab, align 4, !tbaa !3  ; 3 uses
  br i1 %.not.i.i.i10, label %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE2_clEi.exit12.i13, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %i.ae = load ptr, ptr %i.j, align 8, !tbaa !1485, !nonnull !81, !align !444
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !667 ; 2 uses
  %i.ag = sext i32 %i.ac to i64
  %i.ah = getelementptr inbounds [4 x i8], ptr %i.af, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !3
  %i.aj = zext i32 %i.ai to i64                   ; 2 uses
  %i.ak = lshr i64 %i.aj, 6
end_hunk_11
