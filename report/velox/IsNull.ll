inline.NumInlined: 6418
inline.NumDeleted: 2089
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_ZNK8facebook5velox9functions12_GLOBAL__N_114IsNullFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_:bb.a
  %i.em = load ptr, ptr %i.eg, align 8, !tbaa !47
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 16
  %i.eo = load ptr, ptr %i.en, align 8
  call void %i.eo(ptr noundef nonnull align 8 dereferenceable(16) %i.eg) #31, !inline_history !242
  %i.ep = load ptr, ptr %i.eg, align 8, !tbaa !47
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 24
  %i.er = load ptr, ptr %i.eq, align 8
  call void %i.er(ptr noundef nonnull align 8 dereferenceable(16) %i.eg) #31, !inline_history !242
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit86

bb.bh:                                            ; preds = %bb.bf
  %i.es = load i8, ptr @__libc_single_threaded, align 1, !tbaa !31
  %.not.i.i.i83 = icmp eq i8 %i.es, 0
  br i1 %.not.i.i.i83, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.et = add nsw i32 %i.ek, -1
  store i32 %i.et, ptr %i.eh, align 8, !tbaa !43
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i84

bb.bj:                                            ; preds = %bb.bh
  %i.eu = atomicrmw volatile add ptr %i.eh, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i84

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i84: ; preds = %bb.bj, %bb.bi
  %.0.i.i.i.i85 = phi i32 [ %i.ek, %bb.bi ], [ %i.eu, %bb.bj ]
  %i.ev = icmp eq i32 %.0.i.i.i.i85, 1
  br i1 %i.ev, label %bb.bk, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit86, !prof !50

bb.bk:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i84
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.eg) #31
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit86

_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit86: ; preds = %bb.be, %bb.bg, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i84, %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #31
  br label %bb.dy

bb.bl:                                            ; preds = %bb.aj
  %i.ew = landingpad { ptr, i32 }
          cleanup
  br label %bb.bn

bb.bm:                                            ; preds = %bb.ak
  %i.ex = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8facebook5velox7VariantD2Ev(ptr noundef nonnull align 8 dead_on_return(10) dereferenceable(10) %19) #31
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  %.pn = phi { ptr, i32 } [ %i.ex, %bb.bm ], [ %i.ew, %bb.bl ]
  call void @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %17) #31
  call void @_ZNSt12__shared_ptrIKN8facebook5velox10ScalarTypeILNS1_8TypeKindE0EEELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %18) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #31
  br label %bb.bp

bb.bo:                                            ; preds = %_ZNSt12__shared_ptrIKN8facebook5velox10ScalarTypeILNS1_8TypeKindE0EEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit81
  %i.ey = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %16) #31
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  %.pn43 = phi { ptr, i32 } [ %i.ey, %bb.bo ], [ %.pn, %bb.bn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #31
  br label %bb.ef

bb.bq:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #31
  store ptr null, ptr %20, align 8, !tbaa !243
  %i.ez = load i32, ptr %i.h, align 4, !tbaa !197
  %i.fa = icmp eq i32 %i.ez, 3
  br i1 %i.fa, label %bb.br, label %bb.cd

bb.br:                                            ; preds = %bb.bq
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #31
  %i.fb = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.fc = load i32, ptr %i.fb, align 8, !tbaa !231
  %i.fd = sext i32 %i.fc to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31, !noalias !244
  %i.fe = getelementptr inbounds nuw i8, ptr %7, i64 1
  store i8 0, ptr %i.fe, align 1, !tbaa !247, !noalias !244
  %i.ff = add nsw i64 %i.fd, 7
  %i.fg = lshr i64 %i.ff, 3
  invoke void @_ZN8facebook5velox13AlignedBuffer8allocateIcEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_Eb(ptr dead_on_unwind nonnull writable sret(%"class.boost::intrusive_ptr") align 8 %21, i64 noundef %i.fg, ptr noundef %i.g, ptr noundef nonnull align 1 dereferenceable(2) %7, i1 noundef zeroext false)
          to label %bb.bs unwind label %bb.cc

bb.bs:                                            ; preds = %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31, !noalias !244
  %i.fh = load ptr, ptr %21, align 8, !tbaa !243
  store ptr null, ptr %21, align 8, !tbaa !243
  %i.fi = load ptr, ptr %20, align 8, !tbaa !243  ; 7 uses
  store ptr %i.fh, ptr %20, align 8, !tbaa !243
  %.not.i.i87 = icmp eq ptr %i.fi, null
  br i1 %.not.i.i87, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 40
  %i.fk = atomicrmw sub ptr %i.fj, i32 1 acq_rel, align 4
  %i.fl = icmp eq i32 %i.fk, 1
  br i1 %i.fl, label %.sink.split.i.i.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEOS4_.exit

.sink.split.i.i.i:                                ; preds = %bb.bt
  %i.fm = load ptr, ptr %i.fi, align 8, !tbaa !47
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 64
  %i.fo = load ptr, ptr %i.fn, align 8
  invoke void %i.fo(ptr noundef nonnull align 8 dereferenceable(64) %i.fi)
          to label %.noexc.i.i unwind label %bb.bu, !inline_history !249

.noexc.i.i:                                       ; preds = %.sink.split.i.i.i
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fi, i64 8
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !250
  %.not.i.i.i88 = icmp eq ptr %i.fq, null
  %i.fr = load ptr, ptr %i.fi, align 8, !tbaa !47
  %..i.i.i = select i1 %.not.i.i.i88, i64 8, i64 48
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 %..i.i.i
  %i.ft = load ptr, ptr %i.fs, align 8
  invoke void %i.ft(ptr noundef nonnull align 8 dereferenceable(64) %i.fi)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEOS4_.exit unwind label %bb.bu, !inline_history !249

bb.bu:                                            ; preds = %.noexc.i.i, %.sink.split.i.i.i
  %i.fu = landingpad { ptr, i32 }
          catch ptr null
  %i.fv = extractvalue { ptr, i32 } %i.fu, 0
  call void @__clang_call_terminate(ptr %i.fv) #34
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEOS4_.exit: ; preds = %bb.bt, %.noexc.i.i
  %.pr = load ptr, ptr %21, align 8, !tbaa !243   ; 7 uses
  %.not.i89 = icmp eq ptr %.pr, null
  br i1 %.not.i89, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, label %bb.bv

bb.bv:                                            ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEOS4_.exit
  %i.fw = getelementptr inbounds nuw i8, ptr %.pr, i64 40
  %i.fx = atomicrmw sub ptr %i.fw, i32 1 acq_rel, align 4
  %i.fy = icmp eq i32 %i.fx, 1
  br i1 %i.fy, label %.sink.split.i.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit

.sink.split.i.i:                                  ; preds = %bb.bv
  %i.fz = load ptr, ptr %.pr, align 8, !tbaa !47
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 64
  %i.gb = load ptr, ptr %i.ga, align 8
  invoke void %i.gb(ptr noundef nonnull align 8 dereferenceable(64) %.pr)
          to label %.noexc.i90 unwind label %bb.bw, !inline_history !249

.noexc.i90:                                       ; preds = %.sink.split.i.i
  %i.gc = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !250
  %.not.i.i91 = icmp eq ptr %i.gd, null
  %i.ge = load ptr, ptr %.pr, align 8, !tbaa !47
  %..i.i = select i1 %.not.i.i91, i64 8, i64 48
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 %..i.i
  %i.gg = load ptr, ptr %i.gf, align 8
  invoke void %i.gg(ptr noundef nonnull align 8 dereferenceable(64) %.pr)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit unwind label %bb.bw, !inline_history !249

bb.bw:                                            ; preds = %.noexc.i90, %.sink.split.i.i
  %i.gh = landingpad { ptr, i32 }
          catch ptr null
  %i.gi = extractvalue { ptr, i32 } %i.gh, 0
  call void @__clang_call_terminate(ptr %i.gi) #34
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit: ; preds = %bb.bs, %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEOS4_.exit, %bb.bv, %.noexc.i90
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #31
  %i.gj = load ptr, ptr %20, align 8, !tbaa !243  ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 44
  %i.gl = load i8, ptr %i.gk, align 4, !tbaa !255
  %i.gm = and i8 %i.gl, 2
  %.not.i92 = icmp eq i8 %i.gm, 0
  br i1 %.not.i92, label %bb.bx, label %.invoke, !prof !78

bb.bx:                                            ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gj, i64 16
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !256
  %i.gp = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !257
  %i.gr = load i32, ptr %i.fb, align 8, !tbaa !231
  %i.gs = sext i32 %i.gr to i64
  %i.gt = add nsw i64 %i.gs, 7
  %i.gu = lshr i64 %i.gt, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.go, ptr align 8 %i.gq, i64 %i.gu, i1 false)
  %i.gv = load ptr, ptr %20, align 8, !tbaa !243  ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 44
  %i.gx = load i8, ptr %i.gw, align 4, !tbaa !255
  %i.gy = and i8 %i.gx, 2
  %.not.i93 = icmp eq i8 %i.gy, 0
  br i1 %.not.i93, label %bb.by, label %.invoke, !prof !78

.invoke:                                          ; preds = %bb.bx, %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit
  %i.gz = phi ptr [ @_ZZNK8facebook5velox6Buffer9asMutableIlEEPT_vE18veloxCheckFailArgs, %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit ], [ @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs, %bb.bx ]
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) %i.gz) #35
          to label %.cont unwind label %bb.cb

.cont:                                            ; preds = %.invoke
  unreachable

bb.by:                                            ; preds = %bb.bx
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gv, i64 16
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !256 ; 8 uses
  %i.hc = load i32, ptr %i.fb, align 8, !tbaa !231 ; 9 uses
  %.not27.i = icmp slt i32 %i.hc, 64
  br i1 %.not27.i, label %.preheader26.i, label %iter.check283

iter.check283:                                    ; preds = %bb.by
  %i.hd = zext nneg i32 %i.hc to i64              ; 2 uses
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
  %wide.load274 = load <4 x i64>, ptr %i.hl, align 8, !tbaa !145
  %wide.load275 = load <4 x i64>, ptr %i.hm, align 8, !tbaa !145
  %wide.load276 = load <4 x i64>, ptr %i.hn, align 8, !tbaa !145
  %wide.load277 = load <4 x i64>, ptr %i.ho, align 8, !tbaa !145
  %i.hp = xor <4 x i64> %wide.load274, splat (i64 -1)
  %i.hq = xor <4 x i64> %wide.load275, splat (i64 -1)
  %i.hr = xor <4 x i64> %wide.load276, splat (i64 -1)
  %i.hs = xor <4 x i64> %wide.load277, splat (i64 -1)
  store <4 x i64> %i.hp, ptr %i.hl, align 8, !tbaa !145
  store <4 x i64> %i.hq, ptr %i.hm, align 8, !tbaa !145
  store <4 x i64> %i.hr, ptr %i.hn, align 8, !tbaa !145
  store <4 x i64> %i.hs, ptr %i.ho, align 8, !tbaa !145
  %index.next278 = add nuw i64 %index273, 16      ; 2 uses
  %i.ht = icmp eq i64 %index.next278, %n.vec271
  br i1 %i.ht, label %middle.block279, label %vector.body272, !llvm.loop !258

middle.block279:                                  ; preds = %vector.body272
  %cmp.n280 = icmp eq i64 %i.hh, %n.vec271
  br i1 %cmp.n280, label %.preheader26.loopexit.i, label %vec.epilog.iter.check285

vec.epilog.iter.check285:                         ; preds = %middle.block279
  %min.epilog.iters.check286 = icmp eq i64 %n.mod.vf270, 0
  br i1 %min.epilog.iters.check286, label %.lr.ph.i.preheader, label %vec.epilog.ph287, !prof !261

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
  %wide.load292 = load <4 x i64>, ptr %i.hx, align 8, !tbaa !145
  %i.hy = xor <4 x i64> %wide.load292, splat (i64 -1)
  store <4 x i64> %i.hy, ptr %i.hx, align 8, !tbaa !145
  %index.next293 = add nuw i64 %index291, 4       ; 2 uses
  %i.hz = icmp eq i64 %index.next293, %n.vec289
  br i1 %i.hz, label %vec.epilog.middle.block294, label %vec.epilog.vector.body290, !llvm.loop !262

vec.epilog.middle.block294:                       ; preds = %vec.epilog.vector.body290
  %cmp.n295 = icmp eq i64 %i.hh, %n.vec289
  br i1 %cmp.n295, label %.preheader26.loopexit.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check283, %vec.epilog.iter.check285, %vec.epilog.middle.block294
  %indvars.iv36.i.ph = phi i64 [ 0, %iter.check283 ], [ %i.hi, %vec.epilog.iter.check285 ], [ %i.hu, %vec.epilog.middle.block294 ]
  %indvars.iv.i.ph = phi i64 [ 64, %iter.check283 ], [ %i.hj, %vec.epilog.iter.check285 ], [ %i.hv, %vec.epilog.middle.block294 ]
  br label %.lr.ph.i

.preheader26.loopexit.i:                          ; preds = %.lr.ph.i, %vec.epilog.middle.block294, %middle.block279
  %28 = add nuw i32 %i.hc, 2147483584
  %i.ia = and i32 %28, 2147483584
  %narrow.i = add nuw i32 %i.ia, 64
  br label %.preheader26.i

.preheader26.i:                                   ; preds = %.preheader26.loopexit.i, %bb.by
  %.0.lcssa.i = phi i32 [ 0, %bb.by ], [ %narrow.i, %.preheader26.loopexit.i ] ; 11 uses
  %i.ib = or disjoint i32 %.0.lcssa.i, 8          ; 5 uses
  %.not2429.i = icmp sgt i32 %i.ib, %i.hc
  br i1 %.not2429.i, label %.preheader.i, label %iter.check317

iter.check317:                                    ; preds = %.preheader26.i
  %29 = add i32 %i.hc, -8
  %30 = sub i32 %29, %.0.lcssa.i                  ; 3 uses
  %31 = lshr i32 %30, 3
  %32 = add nuw nsw i32 %31, 1                    ; 5 uses
  %min.iters.check299 = icmp ult i32 %30, 120
  br i1 %min.iters.check299, label %.lr.ph31.i.preheader, label %vector.scevcheck287

vector.scevcheck287:                              ; preds = %iter.check317
  %reass.sub323 = sub i32 %.0.lcssa.i, %i.hc
  %33 = add i32 %reass.sub323, 7
  %34 = or i32 %33, 7
  %35 = icmp ult i32 %34, %.0.lcssa.i
  br i1 %35, label %.lr.ph31.i.preheader, label %vector.main.loop.iter.check300

vector.main.loop.iter.check300:                   ; preds = %vector.scevcheck287
  %min.iters.check301 = icmp ult i32 %30, 1016
  br i1 %min.iters.check301, label %vec.epilog.ph321, label %vector.ph302

vector.ph302:                                     ; preds = %vector.main.loop.iter.check300
  %n.mod.vf295 = and i32 %32, 112
  %n.vec296 = and i32 %32, 1073741696             ; 4 uses
  %36 = shl i32 %n.vec296, 3                      ; 2 uses
  %37 = add i32 %i.ib, %36
  %38 = add i32 %.0.lcssa.i, %36                  ; 2 uses
  %39 = lshr i32 %.0.lcssa.i, 3
  br label %vector.body305

vector.body305:                                   ; preds = %vector.body305, %vector.ph302
  %index298 = phi i32 [ 0, %vector.ph302 ], [ %index.next303, %vector.body305 ] ; 2 uses
  %40 = add i32 %39, %index298
  %41 = and i32 %40, 536870911
  %42 = zext nneg i32 %41 to i64
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hb, i64 %42 ; 5 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 32 ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ic, i64 64 ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %i.ic, i64 96 ; 2 uses
  %wide.load307 = load <32 x i8>, ptr %i.ic, align 1, !tbaa !31
  %wide.load308 = load <32 x i8>, ptr %i.id, align 1, !tbaa !31
  %wide.load309 = load <32 x i8>, ptr %i.ie, align 1, !tbaa !31
  %wide.load310 = load <32 x i8>, ptr %i.if, align 1, !tbaa !31
  %i.ig = xor <32 x i8> %wide.load307, splat (i8 -1)
  %i.ih = xor <32 x i8> %wide.load308, splat (i8 -1)
  %i.ii = xor <32 x i8> %wide.load309, splat (i8 -1)
  %i.ij = xor <32 x i8> %wide.load310, splat (i8 -1)
  store <32 x i8> %i.ig, ptr %i.ic, align 1, !tbaa !31
  store <32 x i8> %i.ih, ptr %i.id, align 1, !tbaa !31
  store <32 x i8> %i.ii, ptr %i.ie, align 1, !tbaa !31
  store <32 x i8> %i.ij, ptr %i.if, align 1, !tbaa !31
  %index.next303 = add nuw i32 %index298, 128     ; 2 uses
  %i.ik = icmp eq i32 %index.next303, %n.vec296
  br i1 %i.ik, label %middle.block312, label %vector.body305, !llvm.loop !263

middle.block312:                                  ; preds = %vector.body305
  %cmp.n314 = icmp eq i32 %32, %n.vec296
  br i1 %cmp.n314, label %.preheader.i, label %vec.epilog.iter.check319

vec.epilog.iter.check319:                         ; preds = %middle.block312
  %min.epilog.iters.check320 = icmp eq i32 %n.mod.vf295, 0
  br i1 %min.epilog.iters.check320, label %.lr.ph31.i.preheader, label %vec.epilog.ph321, !prof !264

vec.epilog.ph321:                                 ; preds = %vector.main.loop.iter.check300, %vec.epilog.iter.check319
  %vec.epilog.resume.val306 = phi i32 [ %n.vec296, %vec.epilog.iter.check319 ], [ 0, %vector.main.loop.iter.check300 ]
  %n.vec314 = and i32 %32, 1073741808             ; 3 uses
  %43 = shl i32 %n.vec314, 3                      ; 2 uses
  %44 = add i32 %i.ib, %43
  %45 = add i32 %.0.lcssa.i, %43                  ; 2 uses
  %46 = lshr i32 %.0.lcssa.i, 3
  br label %vec.epilog.vector.body324

vec.epilog.vector.body324:                        ; preds = %vec.epilog.vector.body324, %vec.epilog.ph321
  %index316 = phi i32 [ %vec.epilog.resume.val306, %vec.epilog.ph321 ], [ %index.next318, %vec.epilog.vector.body324 ] ; 2 uses
  %47 = add i32 %46, %index316
  %48 = and i32 %47, 536870911
  %49 = zext nneg i32 %48 to i64
  %i.il = getelementptr inbounds nuw i8, ptr %i.hb, i64 %49 ; 2 uses
  %wide.load326 = load <16 x i8>, ptr %i.il, align 1, !tbaa !31
  %i.im = xor <16 x i8> %wide.load326, splat (i8 -1)
  store <16 x i8> %i.im, ptr %i.il, align 1, !tbaa !31
  %index.next318 = add nuw i32 %index316, 16      ; 2 uses
  %i.in = icmp eq i32 %index.next318, %n.vec314
  br i1 %i.in, label %vec.epilog.middle.block328, label %vec.epilog.vector.body324, !llvm.loop !265

vec.epilog.middle.block328:                       ; preds = %vec.epilog.vector.body324
  %cmp.n330 = icmp eq i32 %32, %n.vec314
  br i1 %cmp.n330, label %.preheader.i, label %.lr.ph31.i.preheader

.lr.ph31.i.preheader:                             ; preds = %vector.scevcheck287, %iter.check317, %vec.epilog.iter.check319, %vec.epilog.middle.block328
  %.ph = phi i32 [ %i.ib, %iter.check317 ], [ %i.ib, %vector.scevcheck287 ], [ %37, %vec.epilog.iter.check319 ], [ %44, %vec.epilog.middle.block328 ]
  %.130.i.ph = phi i32 [ %.0.lcssa.i, %iter.check317 ], [ %.0.lcssa.i, %vector.scevcheck287 ], [ %38, %vec.epilog.iter.check319 ], [ %45, %vec.epilog.middle.block328 ]
  br label %.lr.ph31.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv36.i = phi i64 [ %indvars.iv.next37.i, %.lr.ph.i ], [ %indvars.iv36.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ]
  %i.io = lshr exact i64 %indvars.iv36.i, 3
  %i.ip = getelementptr inbounds nuw i8, ptr %i.hb, i64 %i.io ; 2 uses
  %i.iq = load i64, ptr %i.ip, align 8, !tbaa !145
  %i.ir = xor i64 %i.iq, -1
  store i64 %i.ir, ptr %i.ip, align 8, !tbaa !145
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 64 ; 2 uses
  %.not.i95 = icmp samesign ugt i64 %indvars.iv.next.i, %i.hd
  %indvars.iv.next37.i = add nuw nsw i64 %indvars.iv36.i, 64
  br i1 %.not.i95, label %.preheader26.loopexit.i, label %.lr.ph.i, !llvm.loop !266

.preheader.i:                                     ; preds = %.lr.ph31.i, %middle.block312, %vec.epilog.middle.block328, %.preheader26.i
  %.1.lcssa.i = phi i32 [ %.0.lcssa.i, %.preheader26.i ], [ %45, %vec.epilog.middle.block328 ], [ %38, %middle.block312 ], [ %50, %.lr.ph31.i ] ; 2 uses
  %i.is = icmp slt i32 %.1.lcssa.i, %i.hc
  br i1 %i.is, label %.lr.ph34.preheader.i, label %_ZN8facebook5velox4bits6negateEPmi.exit

.lr.ph34.preheader.i:                             ; preds = %.preheader.i
  %wide.trip.count186 = zext nneg i32 %.1.lcssa.i to i64
  br label %.lr.ph34.i

.lr.ph31.i:                                       ; preds = %.lr.ph31.i.preheader, %.lr.ph31.i
  %50 = phi i32 [ %53, %.lr.ph31.i ], [ %.ph, %.lr.ph31.i.preheader ] ; 3 uses
  %.130.i = phi i32 [ %50, %.lr.ph31.i ], [ %.130.i.ph, %.lr.ph31.i.preheader ]
  %51 = lshr exact i32 %.130.i, 3
  %52 = zext nneg i32 %51 to i64
  %i.it = getelementptr inbounds nuw i8, ptr %i.hb, i64 %52 ; 2 uses
  %i.iu = load i8, ptr %i.it, align 1, !tbaa !31
  %i.iv = xor i8 %i.iu, -1
  store i8 %i.iv, ptr %i.it, align 1, !tbaa !31
  %53 = add nuw nsw i32 %50, 8                    ; 2 uses
  %.not24.i = icmp sgt i32 %53, %i.hc
  br i1 %.not24.i, label %.preheader.i, label %.lr.ph31.i, !llvm.loop !267

.lr.ph34.i:                                       ; preds = %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i, %.lr.ph34.preheader.i
  %indvars.iv41.i = phi i64 [ %wide.trip.count186, %.lr.ph34.preheader.i ], [ %indvars.iv.next42.i, %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i ] ; 6 uses
  %i.iw = lshr i64 %indvars.iv41.i, 6
  %i.ix = getelementptr inbounds nuw [8 x i8], ptr %i.hb, i64 %i.iw
  %i.iy = load i64, ptr %i.ix, align 8, !tbaa !145
  %i.iz = and i64 %indvars.iv41.i, 63
  %i.ja = shl nuw i64 1, %i.iz
  %i.jb = and i64 %i.ja, %i.iy
  %.not25.i = icmp eq i64 %i.jb, 0
  %i.jc = lshr i64 %indvars.iv41.i, 3
  %i.jd = getelementptr inbounds nuw i8, ptr %i.hb, i64 %i.jc ; 2 uses
  %i.je = load i8, ptr %i.jd, align 1, !tbaa !31  ; 2 uses
  br i1 %.not25.i, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %.lr.ph34.i
  %i.jf = trunc i64 %indvars.iv41.i to i8
  %i.jg = and i8 %i.jf, 7
  %i.jh = shl nuw i8 1, %i.jg
  %i.ji = or i8 %i.jh, %i.je
  br label %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i

bb.ca:                                            ; preds = %.lr.ph34.i
  %i.jj = and i64 %indvars.iv41.i, 7
  %i.jk = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.jj
  %i.jl = load i8, ptr %i.jk, align 1, !tbaa !31
  %i.jm = and i8 %i.jl, %i.je
  br label %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i

_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i:  ; preds = %bb.ca, %bb.bz
  %.sink.i.i = phi i8 [ %i.jm, %bb.ca ], [ %i.ji, %bb.bz ]
  store i8 %.sink.i.i, ptr %i.jd, align 1, !tbaa !31
  %indvars.iv.next42.i = add nuw nsw i64 %indvars.iv41.i, 1 ; 2 uses
  %54 = trunc nuw i64 %indvars.iv.next42.i to i32
  %55 = icmp sgt i32 %i.hc, %54
  br i1 %55, label %.lr.ph34.i, label %_ZN8facebook5velox4bits6negateEPmi.exit, !llvm.loop !268

bb.cb:                                            ; preds = %.invoke
  %i.jn = landingpad { ptr, i32 }
          cleanup
  br label %bb.ee

bb.cc:                                            ; preds = %bb.br
  %i.jo = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #31
  br label %bb.ee

bb.cd:                                            ; preds = %bb.bq
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #31
  invoke void @_ZN8facebook5velox4exec11DecodedArgsC2ERKNS0_17SelectivityVectorERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaIS9_EERNS1_7EvalCtxE(ptr noundef nonnull align 8 dereferenceable(24) %22, ptr noundef nonnull align 8 dereferenceable(38) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(104) %4)
          to label %bb.ce unwind label %bb.cq

bb.ce:                                            ; preds = %bb.cd
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #31
  %i.jp = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.jq = load i32, ptr %i.jp, align 8, !tbaa !231
  %i.jr = sext i32 %i.jq to i64
  %i.js = load ptr, ptr %i.a, align 8, !tbaa !196
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31, !noalias !269
  %i.jt = getelementptr inbounds nuw i8, ptr %6, i64 1
  store i8 0, ptr %i.jt, align 1, !tbaa !247, !noalias !269
  %i.ju = add nsw i64 %i.jr, 7
  %i.jv = lshr i64 %i.ju, 3
  invoke void @_ZN8facebook5velox13AlignedBuffer8allocateIcEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_Eb(ptr dead_on_unwind nonnull writable sret(%"class.boost::intrusive_ptr") align 8 %23, i64 noundef %i.jv, ptr noundef %i.js, ptr noundef nonnull align 1 dereferenceable(2) %6, i1 noundef zeroext false)
          to label %bb.cf unwind label %bb.cr

bb.cf:                                            ; preds = %bb.ce
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31, !noalias !269
  %i.jw = load ptr, ptr %23, align 8, !tbaa !243
  store ptr null, ptr %23, align 8, !tbaa !243
  %i.jx = load ptr, ptr %20, align 8, !tbaa !243  ; 7 uses
  store ptr %i.jw, ptr %20, align 8, !tbaa !243
  %.not.i.i99 = icmp eq ptr %i.jx, null
  br i1 %.not.i.i99, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit110, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 40
  %i.jz = atomicrmw sub ptr %i.jy, i32 1 acq_rel, align 4
  %i.ka = icmp eq i32 %i.jz, 1
  br i1 %i.ka, label %.sink.split.i.i.i100, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEOS4_.exit104

.sink.split.i.i.i100:                             ; preds = %bb.cg
  %i.kb = load ptr, ptr %i.jx, align 8, !tbaa !47
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 64
  %i.kd = load ptr, ptr %i.kc, align 8
  invoke void %i.kd(ptr noundef nonnull align 8 dereferenceable(64) %i.jx)
          to label %.noexc.i.i101 unwind label %bb.ch, !inline_history !249

.noexc.i.i101:                                    ; preds = %.sink.split.i.i.i100
  %i.ke = getelementptr inbounds nuw i8, ptr %i.jx, i64 8
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !250
  %.not.i.i.i102 = icmp eq ptr %i.kf, null
  %i.kg = load ptr, ptr %i.jx, align 8, !tbaa !47
  %..i.i.i103 = select i1 %.not.i.i.i102, i64 8, i64 48
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 %..i.i.i103
  %i.ki = load ptr, ptr %i.kh, align 8
  invoke void %i.ki(ptr noundef nonnull align 8 dereferenceable(64) %i.jx)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEOS4_.exit104 unwind label %bb.ch, !inline_history !249

bb.ch:                                            ; preds = %.noexc.i.i101, %.sink.split.i.i.i100
  %i.kj = landingpad { ptr, i32 }
          catch ptr null
  %i.kk = extractvalue { ptr, i32 } %i.kj, 0
  call void @__clang_call_terminate(ptr %i.kk) #34
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEOS4_.exit104: ; preds = %bb.cg, %.noexc.i.i101
  %.pr170 = load ptr, ptr %23, align 8, !tbaa !243 ; 7 uses
  %.not.i105 = icmp eq ptr %.pr170, null
  br i1 %.not.i105, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit110, label %bb.ci

bb.ci:                                            ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEOS4_.exit104
  %i.kl = getelementptr inbounds nuw i8, ptr %.pr170, i64 40
  %i.km = atomicrmw sub ptr %i.kl, i32 1 acq_rel, align 4
  %i.kn = icmp eq i32 %i.km, 1
  br i1 %i.kn, label %.sink.split.i.i106, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit110

.sink.split.i.i106:                               ; preds = %bb.ci
  %i.ko = load ptr, ptr %.pr170, align 8, !tbaa !47
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 64
  %i.kq = load ptr, ptr %i.kp, align 8
  invoke void %i.kq(ptr noundef nonnull align 8 dereferenceable(64) %.pr170)
          to label %.noexc.i107 unwind label %bb.cj, !inline_history !249

.noexc.i107:                                      ; preds = %.sink.split.i.i106
  %i.kr = getelementptr inbounds nuw i8, ptr %.pr170, i64 8
  %i.ks = load ptr, ptr %i.kr, align 8, !tbaa !250
  %.not.i.i108 = icmp eq ptr %i.ks, null
  %i.kt = load ptr, ptr %.pr170, align 8, !tbaa !47
  %..i.i109 = select i1 %.not.i.i108, i64 8, i64 48
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 %..i.i109
  %i.kv = load ptr, ptr %i.ku, align 8
  invoke void %i.kv(ptr noundef nonnull align 8 dereferenceable(64) %.pr170)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit110 unwind label %bb.cj, !inline_history !249

bb.cj:                                            ; preds = %.noexc.i107, %.sink.split.i.i106
  %i.kw = landingpad { ptr, i32 }
          catch ptr null
  %i.kx = extractvalue { ptr, i32 } %i.kw, 0
  call void @__clang_call_terminate(ptr %i.kx) #34
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit110: ; preds = %bb.cf, %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEOS4_.exit104, %bb.ci, %.noexc.i107
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #31
  %i.ky = load ptr, ptr %20, align 8, !tbaa !243  ; 2 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 44
  %i.la = load i8, ptr %i.kz, align 4, !tbaa !255
  %i.lb = and i8 %i.la, 2
  %.not.i111 = icmp eq i8 %i.lb, 0
  br i1 %.not.i111, label %bb.ck, label %.invoke216, !prof !78

bb.ck:                                            ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit110
  %i.lc = getelementptr inbounds nuw i8, ptr %i.ky, i64 16
  %i.ld = load ptr, ptr %i.lc, align 8, !tbaa !256
  %i.le = load ptr, ptr %22, align 8, !tbaa !272
  %i.lf = invoke noundef ptr @_ZN8facebook5velox4exec18LocalDecodedVector3getEv(ptr noundef nonnull align 8 dereferenceable(16) %i.le)
          to label %_ZNK8facebook5velox4exec11DecodedArgs2atEi.exit unwind label %bb.cs

_ZNK8facebook5velox4exec11DecodedArgs2atEi.exit:  ; preds = %bb.ck
  %i.lg = invoke noundef ptr @_ZN8facebook5velox13DecodedVector5nullsEPKNS0_17SelectivityVectorE(ptr noundef nonnull align 8 dereferenceable(120) %i.lf, ptr noundef nonnull %1)
          to label %bb.cl unwind label %bb.cs

bb.cl:                                            ; preds = %_ZNK8facebook5velox4exec11DecodedArgs2atEi.exit
  %i.lh = load i32, ptr %i.jp, align 8, !tbaa !231
  %i.li = sext i32 %i.lh to i64
  %i.lj = add nsw i64 %i.li, 7
  %i.lk = lshr i64 %i.lj, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.ld, ptr align 8 %i.lg, i64 %i.lk, i1 false)
  %i.ll = load ptr, ptr %20, align 8, !tbaa !243  ; 2 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 44
  %i.ln = load i8, ptr %i.lm, align 4, !tbaa !255
  %i.lo = and i8 %i.ln, 2
  %.not.i115 = icmp eq i8 %i.lo, 0
  br i1 %.not.i115, label %bb.cm, label %.invoke216, !prof !78

.invoke216:                                       ; preds = %bb.cl, %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit110
  %i.lp = phi ptr [ @_ZZNK8facebook5velox6Buffer9asMutableIlEEPT_vE18veloxCheckFailArgs, %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit110 ], [ @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs, %bb.cl ]
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) %i.lp) #35
          to label %.cont217 unwind label %bb.cs

.cont217:                                         ; preds = %.invoke216
  unreachable

bb.cm:                                            ; preds = %bb.cl
  %i.lq = getelementptr inbounds nuw i8, ptr %i.ll, i64 16
  %i.lr = load ptr, ptr %i.lq, align 8, !tbaa !256 ; 8 uses
  %i.ls = load i32, ptr %i.jp, align 8, !tbaa !231 ; 9 uses
  %.not27.i118 = icmp slt i32 %i.ls, 64
  br i1 %.not27.i118, label %.preheader26.i127, label %iter.check

iter.check:                                       ; preds = %bb.cm
  %i.lt = zext nneg i32 %i.ls to i64              ; 2 uses
  %i.lu = call i64 @llvm.umax.i64(i64 %i.lt, i64 127)
  %i.lv = add nsw i64 %i.lu, -64                  ; 3 uses
  %i.lw = lshr i64 %i.lv, 6
  %i.lx = add nuw nsw i64 %i.lw, 1                ; 5 uses
  %min.iters.check = icmp ult i64 %i.lv, 192
  br i1 %min.iters.check, label %.lr.ph.i120.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check218 = icmp ult i64 %i.lv, 960
  br i1 %min.iters.check218, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.lx, 12
  %n.vec = and i64 %i.lx, 576460752303423472      ; 4 uses
  %i.ly = shl i64 %n.vec, 6                       ; 2 uses
  %i.lz = or disjoint i64 %i.ly, 64
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ma = shl nuw nsw i64 %index, 3
  %i.mb = getelementptr inbounds nuw i8, ptr %i.lr, i64 %i.ma ; 5 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 32 ; 2 uses
  %i.md = getelementptr inbounds nuw i8, ptr %i.mb, i64 64 ; 2 uses
  %i.me = getelementptr inbounds nuw i8, ptr %i.mb, i64 96 ; 2 uses
  %wide.load = load <4 x i64>, ptr %i.mb, align 8, !tbaa !145
  %wide.load219 = load <4 x i64>, ptr %i.mc, align 8, !tbaa !145
  %wide.load220 = load <4 x i64>, ptr %i.md, align 8, !tbaa !145
  %wide.load221 = load <4 x i64>, ptr %i.me, align 8, !tbaa !145
  %i.mf = xor <4 x i64> %wide.load, splat (i64 -1)
  %i.mg = xor <4 x i64> %wide.load219, splat (i64 -1)
  %i.mh = xor <4 x i64> %wide.load220, splat (i64 -1)
  %i.mi = xor <4 x i64> %wide.load221, splat (i64 -1)
  store <4 x i64> %i.mf, ptr %i.mb, align 8, !tbaa !145
  store <4 x i64> %i.mg, ptr %i.mc, align 8, !tbaa !145
  store <4 x i64> %i.mh, ptr %i.md, align 8, !tbaa !145
  store <4 x i64> %i.mi, ptr %i.me, align 8, !tbaa !145
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.mj = icmp eq i64 %index.next, %n.vec
  br i1 %i.mj, label %middle.block, label %vector.body, !llvm.loop !275

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.lx, %n.vec
  br i1 %cmp.n, label %.preheader26.loopexit.i126, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i120.preheader, label %vec.epilog.ph, !prof !261

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec224 = and i64 %i.lx, 576460752303423484   ; 3 uses
  %i.mk = shl i64 %n.vec224, 6                    ; 2 uses
  %i.ml = or disjoint i64 %i.mk, 64
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index225 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next227, %vec.epilog.vector.body ] ; 2 uses
  %i.mm = shl nuw nsw i64 %index225, 3
  %i.mn = getelementptr inbounds nuw i8, ptr %i.lr, i64 %i.mm ; 2 uses
  %wide.load226 = load <4 x i64>, ptr %i.mn, align 8, !tbaa !145
  %i.mo = xor <4 x i64> %wide.load226, splat (i64 -1)
  store <4 x i64> %i.mo, ptr %i.mn, align 8, !tbaa !145
  %index.next227 = add nuw i64 %index225, 4       ; 2 uses
  %i.mp = icmp eq i64 %index.next227, %n.vec224
  br i1 %i.mp, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !276

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n228 = icmp eq i64 %i.lx, %n.vec224
  br i1 %cmp.n228, label %.preheader26.loopexit.i126, label %.lr.ph.i120.preheader

.lr.ph.i120.preheader:                            ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv36.i121.ph = phi i64 [ 0, %iter.check ], [ %i.ly, %vec.epilog.iter.check ], [ %i.mk, %vec.epilog.middle.block ]
  %indvars.iv.i122.ph = phi i64 [ 64, %iter.check ], [ %i.lz, %vec.epilog.iter.check ], [ %i.ml, %vec.epilog.middle.block ]
  br label %.lr.ph.i120

.preheader26.loopexit.i126:                       ; preds = %.lr.ph.i120, %vec.epilog.middle.block, %middle.block
  %56 = add nuw i32 %i.ls, 2147483584
  %i.mq = and i32 %56, 2147483584
  %narrow.i127 = add nuw i32 %i.mq, 64
  br label %.preheader26.i127

.preheader26.i127:                                ; preds = %.preheader26.loopexit.i126, %bb.cm
  %.0.lcssa.i128 = phi i32 [ 0, %bb.cm ], [ %narrow.i127, %.preheader26.loopexit.i126 ] ; 11 uses
  %i.mr = or disjoint i32 %.0.lcssa.i128, 8       ; 5 uses
  %.not2429.i129 = icmp sgt i32 %i.mr, %i.ls
  br i1 %.not2429.i129, label %.preheader.i133, label %iter.check249

iter.check249:                                    ; preds = %.preheader26.i127
  %57 = add i32 %i.ls, -8
  %58 = sub i32 %57, %.0.lcssa.i128               ; 3 uses
  %59 = lshr i32 %58, 3
  %60 = add nuw nsw i32 %59, 1                    ; 5 uses
  %min.iters.check232 = icmp ult i32 %58, 120
  br i1 %min.iters.check232, label %.lr.ph31.i130.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check249
  %reass.sub = sub i32 %.0.lcssa.i128, %i.ls
  %61 = add i32 %reass.sub, 7
  %62 = or i32 %61, 7
  %63 = icmp ult i32 %62, %.0.lcssa.i128
  br i1 %63, label %.lr.ph31.i130.preheader, label %vector.main.loop.iter.check233

vector.main.loop.iter.check233:                   ; preds = %vector.scevcheck
  %min.iters.check234 = icmp ult i32 %58, 1016
  br i1 %min.iters.check234, label %vec.epilog.ph253, label %vector.ph235

vector.ph235:                                     ; preds = %vector.main.loop.iter.check233
  %n.mod.vf226 = and i32 %60, 112
  %n.vec227 = and i32 %60, 1073741696             ; 4 uses
  %64 = shl i32 %n.vec227, 3                      ; 2 uses
  %65 = add i32 %i.mr, %64
  %66 = add i32 %.0.lcssa.i128, %64               ; 2 uses
  %67 = lshr i32 %.0.lcssa.i128, 3
  br label %vector.body238

vector.body238:                                   ; preds = %vector.body238, %vector.ph235
  %index229 = phi i32 [ 0, %vector.ph235 ], [ %index.next234, %vector.body238 ] ; 2 uses
  %68 = add i32 %67, %index229
  %69 = and i32 %68, 536870911
  %70 = zext nneg i32 %69 to i64
  %i.ms = getelementptr inbounds nuw i8, ptr %i.lr, i64 %70 ; 5 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ms, i64 32 ; 2 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %i.ms, i64 64 ; 2 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %i.ms, i64 96 ; 2 uses
  %wide.load240 = load <32 x i8>, ptr %i.ms, align 1, !tbaa !31
  %wide.load241 = load <32 x i8>, ptr %i.mt, align 1, !tbaa !31
  %wide.load242 = load <32 x i8>, ptr %i.mu, align 1, !tbaa !31
  %wide.load243 = load <32 x i8>, ptr %i.mv, align 1, !tbaa !31
  %i.mw = xor <32 x i8> %wide.load240, splat (i8 -1)
  %i.mx = xor <32 x i8> %wide.load241, splat (i8 -1)
  %i.my = xor <32 x i8> %wide.load242, splat (i8 -1)
  %i.mz = xor <32 x i8> %wide.load243, splat (i8 -1)
  store <32 x i8> %i.mw, ptr %i.ms, align 1, !tbaa !31
  store <32 x i8> %i.mx, ptr %i.mt, align 1, !tbaa !31
  store <32 x i8> %i.my, ptr %i.mu, align 1, !tbaa !31
  store <32 x i8> %i.mz, ptr %i.mv, align 1, !tbaa !31
  %index.next234 = add nuw i32 %index229, 128     ; 2 uses
  %i.na = icmp eq i32 %index.next234, %n.vec227
  br i1 %i.na, label %middle.block245, label %vector.body238, !llvm.loop !277

middle.block245:                                  ; preds = %vector.body238
  %cmp.n246 = icmp eq i32 %60, %n.vec227
  br i1 %cmp.n246, label %.preheader.i133, label %vec.epilog.iter.check251

vec.epilog.iter.check251:                         ; preds = %middle.block245
  %min.epilog.iters.check252 = icmp eq i32 %n.mod.vf226, 0
  br i1 %min.epilog.iters.check252, label %.lr.ph31.i130.preheader, label %vec.epilog.ph253, !prof !264

vec.epilog.ph253:                                 ; preds = %vector.main.loop.iter.check233, %vec.epilog.iter.check251
  %vec.epilog.resume.val237 = phi i32 [ %n.vec227, %vec.epilog.iter.check251 ], [ 0, %vector.main.loop.iter.check233 ]
  %n.vec245 = and i32 %60, 1073741808             ; 3 uses
  %71 = shl i32 %n.vec245, 3                      ; 2 uses
  %72 = add i32 %i.mr, %71
  %73 = add i32 %.0.lcssa.i128, %71               ; 2 uses
  %74 = lshr i32 %.0.lcssa.i128, 3
  br label %vec.epilog.vector.body256

vec.epilog.vector.body256:                        ; preds = %vec.epilog.vector.body256, %vec.epilog.ph253
  %index247 = phi i32 [ %vec.epilog.resume.val237, %vec.epilog.ph253 ], [ %index.next249, %vec.epilog.vector.body256 ] ; 2 uses
  %75 = add i32 %74, %index247
  %76 = and i32 %75, 536870911
  %77 = zext nneg i32 %76 to i64
  %i.nb = getelementptr inbounds nuw i8, ptr %i.lr, i64 %77 ; 2 uses
  %wide.load258 = load <16 x i8>, ptr %i.nb, align 1, !tbaa !31
  %i.nc = xor <16 x i8> %wide.load258, splat (i8 -1)
  store <16 x i8> %i.nc, ptr %i.nb, align 1, !tbaa !31
  %index.next249 = add nuw i32 %index247, 16      ; 2 uses
  %i.nd = icmp eq i32 %index.next249, %n.vec245
  br i1 %i.nd, label %vec.epilog.middle.block260, label %vec.epilog.vector.body256, !llvm.loop !278

vec.epilog.middle.block260:                       ; preds = %vec.epilog.vector.body256
  %cmp.n262 = icmp eq i32 %60, %n.vec245
  br i1 %cmp.n262, label %.preheader.i133, label %.lr.ph31.i130.preheader

.lr.ph31.i130.preheader:                          ; preds = %vector.scevcheck, %iter.check249, %vec.epilog.iter.check251, %vec.epilog.middle.block260
  %.ph324 = phi i32 [ %i.mr, %iter.check249 ], [ %i.mr, %vector.scevcheck ], [ %65, %vec.epilog.iter.check251 ], [ %72, %vec.epilog.middle.block260 ]
  %.130.i132.ph = phi i32 [ %.0.lcssa.i128, %iter.check249 ], [ %.0.lcssa.i128, %vector.scevcheck ], [ %66, %vec.epilog.iter.check251 ], [ %73, %vec.epilog.middle.block260 ]
  br label %.lr.ph31.i130

.lr.ph.i120:                                      ; preds = %.lr.ph.i120.preheader, %.lr.ph.i120
  %indvars.iv36.i121 = phi i64 [ %indvars.iv.next37.i125, %.lr.ph.i120 ], [ %indvars.iv36.i121.ph, %.lr.ph.i120.preheader ] ; 2 uses
  %indvars.iv.i122 = phi i64 [ %indvars.iv.next.i123, %.lr.ph.i120 ], [ %indvars.iv.i122.ph, %.lr.ph.i120.preheader ]
  %i.ne = lshr exact i64 %indvars.iv36.i121, 3
  %i.nf = getelementptr inbounds nuw i8, ptr %i.lr, i64 %i.ne ; 2 uses
  %i.ng = load i64, ptr %i.nf, align 8, !tbaa !145
  %i.nh = xor i64 %i.ng, -1
  store i64 %i.nh, ptr %i.nf, align 8, !tbaa !145
  %indvars.iv.next.i123 = add nuw nsw i64 %indvars.iv.i122, 64 ; 2 uses
  %.not.i124 = icmp samesign ugt i64 %indvars.iv.next.i123, %i.lt
  %indvars.iv.next37.i125 = add nuw nsw i64 %indvars.iv36.i121, 64
  br i1 %.not.i124, label %.preheader26.loopexit.i126, label %.lr.ph.i120, !llvm.loop !279

.preheader.i133:                                  ; preds = %.lr.ph31.i130, %middle.block245, %vec.epilog.middle.block260, %.preheader26.i127
  %.1.lcssa.i135 = phi i32 [ %.0.lcssa.i128, %.preheader26.i127 ], [ %73, %vec.epilog.middle.block260 ], [ %66, %middle.block245 ], [ %78, %.lr.ph31.i130 ] ; 2 uses
  %i.ni = icmp slt i32 %.1.lcssa.i135, %i.ls
  br i1 %i.ni, label %.lr.ph34.preheader.i135, label %_ZN8facebook5velox4bits6negateEPmi.exit142

.lr.ph34.preheader.i135:                          ; preds = %.preheader.i133
  %wide.trip.count = zext nneg i32 %.1.lcssa.i135 to i64
  br label %.lr.ph34.i136

.lr.ph31.i130:                                    ; preds = %.lr.ph31.i130.preheader, %.lr.ph31.i130
  %78 = phi i32 [ %81, %.lr.ph31.i130 ], [ %.ph324, %.lr.ph31.i130.preheader ] ; 3 uses
  %.130.i132 = phi i32 [ %78, %.lr.ph31.i130 ], [ %.130.i132.ph, %.lr.ph31.i130.preheader ]
  %79 = lshr exact i32 %.130.i132, 3
  %80 = zext nneg i32 %79 to i64
  %i.nj = getelementptr inbounds nuw i8, ptr %i.lr, i64 %80 ; 2 uses
  %i.nk = load i8, ptr %i.nj, align 1, !tbaa !31
  %i.nl = xor i8 %i.nk, -1
  store i8 %i.nl, ptr %i.nj, align 1, !tbaa !31
  %81 = add nuw nsw i32 %78, 8                    ; 2 uses
  %.not24.i133 = icmp sgt i32 %81, %i.ls
  br i1 %.not24.i133, label %.preheader.i133, label %.lr.ph31.i130, !llvm.loop !280

.lr.ph34.i136:                                    ; preds = %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i139, %.lr.ph34.preheader.i135
  %indvars.iv41.i137 = phi i64 [ %wide.trip.count, %.lr.ph34.preheader.i135 ], [ %indvars.iv.next42.i141, %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i139 ] ; 6 uses
  %i.nm = lshr i64 %indvars.iv41.i137, 6
  %i.nn = getelementptr inbounds nuw [8 x i8], ptr %i.lr, i64 %i.nm
  %i.no = load i64, ptr %i.nn, align 8, !tbaa !145
  %i.np = and i64 %indvars.iv41.i137, 63
  %i.nq = shl nuw i64 1, %i.np
  %i.nr = and i64 %i.nq, %i.no
  %.not25.i138 = icmp eq i64 %i.nr, 0
  %i.ns = lshr i64 %indvars.iv41.i137, 3
  %i.nt = getelementptr inbounds nuw i8, ptr %i.lr, i64 %i.ns ; 2 uses
  %i.nu = load i8, ptr %i.nt, align 1, !tbaa !31  ; 2 uses
  br i1 %.not25.i138, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %.lr.ph34.i136
  %i.nv = trunc i64 %indvars.iv41.i137 to i8
  %i.nw = and i8 %i.nv, 7
  %i.nx = shl nuw i8 1, %i.nw
  %i.ny = or i8 %i.nx, %i.nu
  br label %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i139

bb.co:                                            ; preds = %.lr.ph34.i136
  %i.nz = and i64 %indvars.iv41.i137, 7
  %i.oa = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.nz
  %i.ob = load i8, ptr %i.oa, align 1, !tbaa !31
  %i.oc = and i8 %i.ob, %i.nu
  br label %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i139

_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i139: ; preds = %bb.co, %bb.cn
  %.sink.i.i140 = phi i8 [ %i.oc, %bb.co ], [ %i.ny, %bb.cn ]
  store i8 %.sink.i.i140, ptr %i.nt, align 1, !tbaa !31
  %indvars.iv.next42.i141 = add nuw nsw i64 %indvars.iv41.i137, 1 ; 2 uses
  %82 = trunc nuw i64 %indvars.iv.next42.i141 to i32
  %83 = icmp sgt i32 %i.ls, %82
  br i1 %83, label %.lr.ph34.i136, label %_ZN8facebook5velox4bits6negateEPmi.exit142, !llvm.loop !268

_ZN8facebook5velox4bits6negateEPmi.exit142:       ; preds = %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i139, %.preheader.i133
  %i.od = load ptr, ptr %22, align 8, !tbaa !272  ; 3 uses
  %i.oe = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.of = load ptr, ptr %i.oe, align 8, !tbaa !281 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.od, %i.of
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN8facebook5velox4exec18LocalDecodedVectorES3_EvT_S5_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN8facebook5velox4bits6negateEPmi.exit142, %.lr.ph.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.og, %.lr.ph.i.i.i.i ], [ %i.od, %_ZN8facebook5velox4bits6negateEPmi.exit142 ] ; 2 uses
  call void @_ZN8facebook5velox4exec18LocalDecodedVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %.05.i.i.i.i) #31
  %i.og = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.og, %i.of
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN8facebook5velox4exec18LocalDecodedVectorES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !282

_ZSt8_DestroyIPN8facebook5velox4exec18LocalDecodedVectorES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pr.i.i = load ptr, ptr %22, align 8, !tbaa !272
  br label %_ZSt8_DestroyIPN8facebook5velox4exec18LocalDecodedVectorES3_EvT_S5_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN8facebook5velox4exec18LocalDecodedVectorES3_EvT_S5_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN8facebook5velox4exec18LocalDecodedVectorES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i, %_ZN8facebook5velox4bits6negateEPmi.exit142
  %i.oh = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN8facebook5velox4exec18LocalDecodedVectorES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.od, %_ZN8facebook5velox4bits6negateEPmi.exit142 ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.oh, null
  br i1 %.not.i.i1.i.i, label %_ZN8facebook5velox4exec11DecodedArgsD2Ev.exit, label %bb.cp

bb.cp:                                            ; preds = %_ZSt8_DestroyIPN8facebook5velox4exec18LocalDecodedVectorES3_EvT_S5_RSaIT0_E.exit.i.i
  %i.oi = getelementptr inbounds nuw i8, ptr %22, i64 16
  %i.oj = load ptr, ptr %i.oi, align 8, !tbaa !283
  %i.ok = ptrtoint ptr %i.oj to i64
  %i.ol = ptrtoint ptr %i.oh to i64
  %i.om = sub i64 %i.ok, %i.ol
  call void @_ZdlPvm(ptr noundef nonnull %i.oh, i64 noundef %i.om) #33
  br label %_ZN8facebook5velox4exec11DecodedArgsD2Ev.exit

_ZN8facebook5velox4exec11DecodedArgsD2Ev.exit:    ; preds = %_ZSt8_DestroyIPN8facebook5velox4exec18LocalDecodedVectorES3_EvT_S5_RSaIT0_E.exit.i.i, %bb.cp
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #31
  br label %_ZN8facebook5velox4bits6negateEPmi.exit

bb.cq:                                            ; preds = %bb.cd
  %i.on = landingpad { ptr, i32 }
          cleanup
  br label %bb.cu

bb.cr:                                            ; preds = %bb.ce
  %i.oo = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #31
  br label %bb.ct

bb.cs:                                            ; preds = %.invoke216, %bb.ck, %_ZNK8facebook5velox4exec11DecodedArgs2atEi.exit
  %i.op = landingpad { ptr, i32 }
          cleanup
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.cr
  %.pn45 = phi { ptr, i32 } [ %i.op, %bb.cs ], [ %i.oo, %bb.cr ]
  call void @_ZN8facebook5velox4exec11DecodedArgsD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %22) #31
  br label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %bb.cq
  %.pn45.pn = phi { ptr, i32 } [ %.pn45, %bb.ct ], [ %i.on, %bb.cq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #31
  br label %bb.ee

_ZN8facebook5velox4bits6negateEPmi.exit:          ; preds = %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i, %.preheader.i, %_ZN8facebook5velox4exec11DecodedArgsD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #31
  invoke void @_ZN8facebook5velox7BOOLEANEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.105") align 8 %25)
          to label %bb.cv unwind label %bb.dz

bb.cv:                                            ; preds = %_ZN8facebook5velox4bits6negateEPmi.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #31
  store ptr null, ptr %i.b, align 8, !tbaa !284
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #31
  %i.oq = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.or = load i32, ptr %i.oq, align 8, !tbaa !231
  store i32 %i.or, ptr %i.c, align 4, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #31
  call void @llvm.experimental.noalias.scope.decl(metadata !286)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %26, i8 0, i64 24, i1 false)
  %i.os = invoke noalias noundef nonnull dereferenceable(192) ptr @_Znwm(i64 noundef 192) #32
          to label %.noexc143 unwind label %bb.ea ; 6 uses

.noexc143:                                        ; preds = %bb.cv
  %i.ot = getelementptr inbounds nuw i8, ptr %i.os, i64 8
  store i32 1, ptr %i.ot, align 8, !tbaa !44, !noalias !286
  %i.ou = getelementptr inbounds nuw i8, ptr %i.os, i64 12
  store i32 1, ptr %i.ou, align 4, !tbaa !46, !noalias !286
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN8facebook5velox10FlatVectorIbEESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.os, align 8, !tbaa !47, !noalias !286
  %i.ov = getelementptr inbounds nuw i8, ptr %i.os, i64 16 ; 2 uses
  invoke void @_ZSt10_ConstructIN8facebook5velox10FlatVectorIbEEJRPNS1_6memory10MemoryPoolESt10shared_ptrIKNS1_10ScalarTypeILNS1_8TypeKindE0EEEEDniRN5boost13intrusive_ptrINS1_6BufferEEESt6vectorISH_SaISH_EEEEvPT_DpOT0_(ptr noundef nonnull %i.ov, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %25, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef nonnull align 8 dereferenceable(24) %26)
          to label %bb.cw unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN8facebook5velox10FlatVectorIbEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit14.i.i.i.i, !noalias !286

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN8facebook5velox10FlatVectorIbEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit14.i.i.i.i: ; preds = %.noexc143
  %i.ow = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.os, i64 noundef 192) #33, !noalias !286
  br label %.body

bb.cw:                                            ; preds = %.noexc143
  %i.ox = getelementptr inbounds nuw i8, ptr %24, i64 8 ; 3 uses
  store ptr %i.os, ptr %i.ox, align 8, !tbaa !38, !alias.scope !286
  store ptr %i.ov, ptr %24, align 16, !tbaa !289, !alias.scope !286
  %i.oy = load ptr, ptr %26, align 8, !tbaa !291  ; 3 uses
  %i.oz = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.pa = load ptr, ptr %i.oz, align 8, !tbaa !294 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.oy, %i.pa
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.cw, %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.pp, %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i ], [ %i.oy, %bb.cw ] ; 2 uses
  %i.pb = load ptr, ptr %.05.i.i.i, align 8, !tbaa !243 ; 7 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.pb, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i, label %bb.cx

bb.cx:                                            ; preds = %.lr.ph.i.i.i
  %i.pc = getelementptr inbounds nuw i8, ptr %i.pb, i64 40
  %i.pd = atomicrmw sub ptr %i.pc, i32 1 acq_rel, align 4
  %i.pe = icmp eq i32 %i.pd, 1
  br i1 %i.pe, label %.sink.split.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i

.sink.split.i.i.i.i.i.i.i:                        ; preds = %bb.cx
  %i.pf = load ptr, ptr %i.pb, align 8, !tbaa !47
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pf, i64 64
  %i.ph = load ptr, ptr %i.pg, align 8
  invoke void %i.ph(ptr noundef nonnull align 8 dereferenceable(64) %i.pb)
          to label %.noexc.i.i.i.i.i.i unwind label %bb.cy, !inline_history !249

.noexc.i.i.i.i.i.i:                               ; preds = %.sink.split.i.i.i.i.i.i.i
  %i.pi = getelementptr inbounds nuw i8, ptr %i.pb, i64 8
  %i.pj = load ptr, ptr %i.pi, align 8, !tbaa !250
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.pj, null
  %i.pk = load ptr, ptr %i.pb, align 8, !tbaa !47
  %..i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i, i64 8, i64 48
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pk, i64 %..i.i.i.i.i.i.i
  %i.pm = load ptr, ptr %i.pl, align 8
  invoke void %i.pm(ptr noundef nonnull align 8 dereferenceable(64) %i.pb)
          to label %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i unwind label %bb.cy, !inline_history !249

bb.cy:                                            ; preds = %.noexc.i.i.i.i.i.i, %.sink.split.i.i.i.i.i.i.i
  %i.pn = landingpad { ptr, i32 }
          catch ptr null
  %i.po = extractvalue { ptr, i32 } %i.pn, 0
  call void @__clang_call_terminate(ptr %i.po) #34
  unreachable

_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i: ; preds = %.noexc.i.i.i.i.i.i, %bb.cx, %.lr.ph.i.i.i
  %i.pp = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i144 = icmp eq ptr %i.pp, %i.pa
  br i1 %.not.i.i.i144, label %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !295

_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %26, align 8, !tbaa !291
  br label %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %bb.cw
  %i.pq = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.oy, %bb.cw ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.pq, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EED2Ev.exit, label %bb.cz

bb.cz:                                            ; preds = %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.pr = getelementptr inbounds nuw i8, ptr %26, i64 16
  %i.ps = load ptr, ptr %i.pr, align 8, !tbaa !296
  %i.pt = ptrtoint ptr %i.ps to i64
  %i.pu = ptrtoint ptr %i.pq to i64
  %i.pv = sub i64 %i.pt, %i.pu
  call void @_ZdlPvm(ptr noundef nonnull %i.pq, i64 noundef %i.pv) #33
  br label %_ZNSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EED2Ev.exit

_ZNSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.cz
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #31
  %i.pw = getelementptr inbounds nuw i8, ptr %25, i64 8
  %i.px = load ptr, ptr %i.pw, align 8, !tbaa !38 ; 8 uses
  %.not.i.i145 = icmp eq ptr %i.px, null
  br i1 %.not.i.i145, label %_ZNSt12__shared_ptrIKN8facebook5velox10ScalarTypeILNS1_8TypeKindE0EEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit149, label %bb.da

bb.da:                                            ; preds = %_ZNSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EED2Ev.exit
  %i.py = getelementptr inbounds nuw i8, ptr %i.px, i64 8 ; 4 uses
  %i.pz = load atomic i64, ptr %i.py acquire, align 8 ; 2 uses
  %i.qa = icmp eq i64 %i.pz, 4294967297
  %i.qb = trunc i64 %i.pz to i32                  ; 2 uses
  br i1 %i.qa, label %bb.db, label %bb.dc

bb.db:                                            ; preds = %bb.da
  store i32 0, ptr %i.py, align 8, !tbaa !44
  %i.qc = getelementptr inbounds nuw i8, ptr %i.px, i64 12
  store i32 0, ptr %i.qc, align 4, !tbaa !46
  %i.qd = load ptr, ptr %i.px, align 8, !tbaa !47
  %i.qe = getelementptr inbounds nuw i8, ptr %i.qd, i64 16
  %i.qf = load ptr, ptr %i.qe, align 8
  call void %i.qf(ptr noundef nonnull align 8 dereferenceable(16) %i.px) #31, !inline_history !241
  %i.qg = load ptr, ptr %i.px, align 8, !tbaa !47
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qg, i64 24
  %i.qi = load ptr, ptr %i.qh, align 8
  call void %i.qi(ptr noundef nonnull align 8 dereferenceable(16) %i.px) #31, !inline_history !241
  br label %_ZNSt12__shared_ptrIKN8facebook5velox10ScalarTypeILNS1_8TypeKindE0EEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit149

bb.dc:                                            ; preds = %bb.da
  %i.qj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !31
end_hunk_0
begin_hunk_1_@llvm.vector.reduce.add.v4i32
!67 = !{!68}
!68 = distinct !{!68, !69, !"_ZN8facebook5velox9functions12_GLOBAL__N_114IsNullFunctionILb1EE10signaturesEv: argument 0"}
!69 = distinct !{!69, !"_ZN8facebook5velox9functions12_GLOBAL__N_114IsNullFunctionILb1EE10signaturesEv"}
!70 = distinct !{null, ptr @_ZNSt12__shared_ptrIN8facebook5velox4exec17FunctionSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!71 = !{!72}
!72 = distinct !{!72, !73, !"_ZSt11make_uniqueIN8facebook5velox9functions12_GLOBAL__N_114IsNullFunctionILb1EEEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!73 = distinct !{!73, !"_ZSt11make_uniqueIN8facebook5velox9functions12_GLOBAL__N_114IsNullFunctionILb1EEEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!74 = distinct !{null, null}
!75 = distinct !{null}
!76 = !{!77, !59, i64 32}
!77 = !{!"_ZTSSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE", !6, i64 0, !59, i64 32}
!78 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!79 = !{!80}
!80 = distinct !{!80, !81, !"_ZN8facebook5velox12errorMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_N3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!81 = distinct !{!81, !"_ZN8facebook5velox12errorMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_N3fmt3v1117basic_string_viewIcEEDpRKT_"}
!82 = !{i8 0, i8 2}
!83 = !{}
!84 = !{!85, !59, i64 104}
!85 = !{!"_ZTSSt22_Optional_payload_baseIN8facebook5velox4exec13TypeSignatureEE", !6, i64 0, !59, i64 104}
!86 = !{ptr @_ZN8facebook5velox4exec13TypeSignatureD2Ev}
!87 = !{!88, !89, i64 0}
!88 = !{!"_ZTSNSt12_Vector_baseIN8facebook5velox4exec13TypeSignatureESaIS3_EE17_Vector_impl_dataE", !89, i64 0, !89, i64 8, !89, i64 16}
!89 = !{!"p1 _ZTSN8facebook5velox4exec13TypeSignatureE", !15, i64 0}
!90 = !{!88, !89, i64 8}
!91 = distinct !{ptr @_ZN8facebook5velox4exec13TypeSignatureD2Ev, null, ptr @_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev}
!92 = distinct !{!92, !65}
!93 = !{ptr @_ZN8facebook5velox4exec13TypeSignatureD2Ev, ptr @_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev}
!94 = !{!88, !89, i64 16}
!95 = !{!26, !27, i64 0}
!96 = distinct !{ptr @_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev, null}
!97 = !{ptr @_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev}
!98 = !{!12, !16, i64 24}
!99 = !{!17, !18, i64 0}
!100 = distinct !{!100, !65}
!101 = !{!18, !18, i64 0}
!102 = !{!103, !16, i64 0}
!103 = !{!"_ZTSNSt8__detail21_Hash_node_code_cacheILb1EEE", !16, i64 0}
!104 = distinct !{!104, !65}
!105 = !{!106, !107, i64 0}
!106 = !{!"_ZTSNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8facebook5velox4exec17SignatureVariableEESaISC_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeE", !107, i64 0, !108, i64 8}
!107 = !{!"p1 _ZTSNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableEELb1EEEEEE", !15, i64 0}
!108 = !{!"p1 _ZTSNSt8__detail10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableEELb1EEE", !15, i64 0}
!109 = !{!106, !108, i64 8}
!110 = distinct !{!110, !65}
!111 = !{!19, !16, i64 8}
!112 = !{!12, !18, i64 16}
!113 = !{!12, !18, i64 48}
!114 = distinct !{!114, !65}
!115 = distinct !{null, ptr @_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev}
!116 = !{!117, !59, i64 96}
!117 = !{!"_ZTSN8facebook5velox4exec13TypeSignatureE", !33, i64 0, !118, i64 32, !121, i64 56, !59, i64 96}
!118 = !{!"_ZTSSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EE", !119, i64 0}
!119 = !{!"_ZTSSt12_Vector_baseIN8facebook5velox4exec13TypeSignatureESaIS3_EE", !120, i64 0}
!120 = !{!"_ZTSNSt12_Vector_baseIN8facebook5velox4exec13TypeSignatureESaIS3_EE12_Vector_implE", !88, i64 0}
!121 = !{!"_ZTSSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE", !122, i64 0}
!122 = !{!"_ZTSSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EE", !123, i64 0}
!123 = !{!"_ZTSSt17_Optional_payloadINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0ELb0EE", !124, i64 0}
!124 = !{!"_ZTSSt17_Optional_payloadINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ELb0ELb0EE", !77, i64 0}
!125 = !{!89, !89, i64 0}
!126 = distinct !{null, null, null, null}
!127 = distinct !{!127, !65}
!128 = distinct !{null, null, null}
!129 = distinct !{null, null, null, null}
!130 = distinct !{null}
!131 = !{ptr @_ZN8facebook5velox4exec13TypeSignatureD2Ev, ptr @_ZSt10destroy_atIN8facebook5velox4exec13TypeSignatureEEvPT_}
!132 = distinct !{ptr @_ZN8facebook5velox4exec13TypeSignatureD2Ev, ptr @_ZSt10destroy_atIN8facebook5velox4exec13TypeSignatureEEvPT_, null, ptr @_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev}
!133 = !{ptr @_ZN8facebook5velox4exec13TypeSignatureD2Ev, ptr @_ZSt10destroy_atIN8facebook5velox4exec13TypeSignatureEEvPT_, ptr @_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev}
!134 = !{!135, !59, i64 232}
!135 = !{!"_ZTSN8facebook5velox4exec24FunctionSignatureBuilderE", !136, i64 0, !137, i64 56, !118, i64 168, !141, i64 192, !59, i64 232}
!136 = !{!"_ZTSSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S9_EEE", !12, i64 0}
!137 = !{!"_ZTSSt8optionalIN8facebook5velox4exec13TypeSignatureEE", !138, i64 0}
!138 = !{!"_ZTSSt14_Optional_baseIN8facebook5velox4exec13TypeSignatureELb0ELb0EE", !139, i64 0}
!139 = !{!"_ZTSSt17_Optional_payloadIN8facebook5velox4exec13TypeSignatureELb0ELb0ELb0EE", !140, i64 0}
!140 = !{!"_ZTSSt17_Optional_payloadIN8facebook5velox4exec13TypeSignatureELb1ELb0ELb0EE", !85, i64 0}
!141 = !{!"_ZTSSt6vectorIbSaIbEE", !142, i64 0}
!142 = !{!"_ZTSSt13_Bvector_baseISaIbEE", !143, i64 0}
!143 = !{!"_ZTSNSt13_Bvector_baseISaIbEE13_Bvector_implE", !24, i64 0}
!144 = !{!26, !5, i64 8}
!145 = !{!16, !16, i64 0}
!146 = distinct !{null}
!147 = distinct !{!147, !65}
!148 = distinct !{null, null}
!149 = distinct !{!149, !65}
!150 = distinct !{!150, !65}
!151 = distinct !{!151, !65}
!152 = distinct !{!152, !65}
!153 = !{!154, !155, i64 0}
!154 = !{!"_ZTSNSt12_Vector_baseISt10shared_ptrIN8facebook5velox10BaseVectorEESaIS4_EE17_Vector_impl_dataE", !155, i64 0, !155, i64 8, !155, i64 16}
!155 = !{!"p1 _ZTSSt10shared_ptrIN8facebook5velox10BaseVectorEE", !15, i64 0}
!156 = !{!157, !158, i64 0}
!157 = !{!"_ZTSSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EE", !158, i64 0, !39, i64 8}
!158 = !{!"p1 _ZTSN8facebook5velox10BaseVectorE", !15, i64 0}
!159 = !{!160, !161, i64 0}
!160 = !{!"_ZTSN8facebook5velox4exec7EvalCtxE", !161, i64 0, !162, i64 8, !163, i64 16, !59, i64 24, !59, i64 25, !164, i64 32, !167, i64 56, !59, i64 72, !59, i64 73, !59, i64 74, !59, i64 75, !170, i64 80, !171, i64 88}
!161 = !{!"p1 _ZTSN8facebook5velox4core7ExecCtxE", !15, i64 0}
!162 = !{!"p1 _ZTSN8facebook5velox4exec7ExprSetE", !15, i64 0}
!163 = !{!"p1 _ZTSN8facebook5velox9RowVectorE", !15, i64 0}
!164 = !{!"_ZTSSt6vectorISt10shared_ptrIN8facebook5velox10BaseVectorEESaIS4_EE", !165, i64 0}
!165 = !{!"_ZTSSt12_Vector_baseISt10shared_ptrIN8facebook5velox10BaseVectorEESaIS4_EE", !166, i64 0}
!166 = !{!"_ZTSNSt12_Vector_baseISt10shared_ptrIN8facebook5velox10BaseVectorEESaIS4_EE12_Vector_implE", !154, i64 0}
!167 = !{!"_ZTSSt10shared_ptrIN8facebook5velox4exec14PeeledEncodingEE", !168, i64 0}
!168 = !{!"_ZTSSt12__shared_ptrIN8facebook5velox4exec14PeeledEncodingELN9__gnu_cxx12_Lock_policyE2EE", !169, i64 0, !39, i64 8}
!169 = !{!"p1 _ZTSN8facebook5velox4exec14PeeledEncodingE", !15, i64 0}
!170 = !{!"p1 _ZTSN8facebook5velox17SelectivityVectorE", !15, i64 0}
!171 = !{!"_ZTSSt10shared_ptrIN8facebook5velox4exec10EvalErrorsEE", !172, i64 0}
!172 = !{!"_ZTSSt12__shared_ptrIN8facebook5velox4exec10EvalErrorsELN9__gnu_cxx12_Lock_policyE2EE", !173, i64 0, !39, i64 8}
!173 = !{!"p1 _ZTSN8facebook5velox4exec10EvalErrorsE", !15, i64 0}
!174 = !{!175, !176, i64 0}
!175 = !{!"_ZTSN8facebook5velox4core7ExecCtxE", !176, i64 0, !177, i64 8, !178, i64 16, !179, i64 32, !184, i64 56, !189, i64 80}
!176 = !{!"p1 _ZTSN8facebook5velox6memory10MemoryPoolE", !15, i64 0}
!177 = !{!"p1 _ZTSN8facebook5velox4core8QueryCtxE", !15, i64 0}
!178 = !{!"_ZTSN8facebook5velox4core7ExecCtx18OptimizationParamsE", !59, i64 0, !59, i64 1, !59, i64 2, !59, i64 3, !59, i64 4, !5, i64 8}
!179 = !{!"_ZTSSt6vectorISt10unique_ptrIN8facebook5velox13DecodedVectorESt14default_deleteIS3_EESaIS6_EE", !180, i64 0}
!180 = !{!"_ZTSSt12_Vector_baseISt10unique_ptrIN8facebook5velox13DecodedVectorESt14default_deleteIS3_EESaIS6_EE", !181, i64 0}
!181 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIN8facebook5velox13DecodedVectorESt14default_deleteIS3_EESaIS6_EE12_Vector_implE", !182, i64 0}
!182 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIN8facebook5velox13DecodedVectorESt14default_deleteIS3_EESaIS6_EE17_Vector_impl_dataE", !183, i64 0, !183, i64 8, !183, i64 16}
!183 = !{!"p1 _ZTSSt10unique_ptrIN8facebook5velox13DecodedVectorESt14default_deleteIS2_EE", !15, i64 0}
!184 = !{!"_ZTSSt6vectorISt10unique_ptrIN8facebook5velox17SelectivityVectorESt14default_deleteIS3_EESaIS6_EE", !185, i64 0}
!185 = !{!"_ZTSSt12_Vector_baseISt10unique_ptrIN8facebook5velox17SelectivityVectorESt14default_deleteIS3_EESaIS6_EE", !186, i64 0}
!186 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIN8facebook5velox17SelectivityVectorESt14default_deleteIS3_EESaIS6_EE12_Vector_implE", !187, i64 0}
!187 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIN8facebook5velox17SelectivityVectorESt14default_deleteIS3_EESaIS6_EE17_Vector_impl_dataE", !188, i64 0, !188, i64 8, !188, i64 16}
!188 = !{!"p1 _ZTSSt10unique_ptrIN8facebook5velox17SelectivityVectorESt14default_deleteIS2_EE", !15, i64 0}
!189 = !{!"_ZTSSt10unique_ptrIN8facebook5velox10VectorPoolESt14default_deleteIS2_EE", !190, i64 0}
!190 = !{!"_ZTSSt15__uniq_ptr_dataIN8facebook5velox10VectorPoolESt14default_deleteIS2_ELb1ELb1EE", !191, i64 0}
!191 = !{!"_ZTSSt15__uniq_ptr_implIN8facebook5velox10VectorPoolESt14default_deleteIS2_EE", !192, i64 0}
!192 = !{!"_ZTSSt5tupleIJPN8facebook5velox10VectorPoolESt14default_deleteIS2_EEE", !193, i64 0}
!193 = !{!"_ZTSSt11_Tuple_implILm0EJPN8facebook5velox10VectorPoolESt14default_deleteIS2_EEE", !194, i64 0}
!194 = !{!"_ZTSSt10_Head_baseILm0EPN8facebook5velox10VectorPoolELb0EE", !195, i64 0}
!195 = !{!"p1 _ZTSN8facebook5velox10VectorPoolE", !15, i64 0}
!196 = !{!176, !176, i64 0}
!197 = !{!198, !203, i64 28}
!198 = !{!"_ZTSN8facebook5velox10BaseVectorE", !199, i64 8, !202, i64 24, !59, i64 25, !203, i64 28, !204, i64 32, !27, i64 40, !176, i64 48, !5, i64 56, !206, i64 60, !206, i64 68, !206, i64 76, !206, i64 84, !210, i64 92, !59, i64 93}
!199 = !{!"_ZTSSt10shared_ptrIKN8facebook5velox4TypeEE", !200, i64 0}
!200 = !{!"_ZTSSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EE", !201, i64 0, !39, i64 8}
!201 = !{!"p1 _ZTSN8facebook5velox4TypeE", !15, i64 0}
!202 = !{!"_ZTSN8facebook5velox8TypeKindE", !6, i64 0}
!203 = !{!"_ZTSN8facebook5velox14VectorEncoding6SimpleE", !6, i64 0}
!204 = !{!"_ZTSN5boost13intrusive_ptrIN8facebook5velox6BufferEEE", !205, i64 0}
!205 = !{!"p1 _ZTSN8facebook5velox6BufferE", !15, i64 0}
!206 = !{!"_ZTSSt8optionalIiE", !207, i64 0}
!207 = !{!"_ZTSSt14_Optional_baseIiLb1ELb1EE", !208, i64 0}
!208 = !{!"_ZTSSt17_Optional_payloadIiLb1ELb1ELb1EE", !209, i64 0}
!209 = !{!"_ZTSSt22_Optional_payload_baseIiE", !6, i64 0, !59, i64 4}
!210 = !{!"_ZTSSt6atomicIbE", !211, i64 0}
!211 = !{!"_ZTSSt13__atomic_baseIbE", !59, i64 0}
!212 = !{!213, !5, i64 28}
!213 = !{!"_ZTSN8facebook5velox17SelectivityVectorE", !214, i64 0, !5, i64 24, !5, i64 28, !5, i64 32, !218, i64 36}
!214 = !{!"_ZTSSt6vectorImSaImEE", !215, i64 0}
!215 = !{!"_ZTSSt12_Vector_baseImSaImEE", !216, i64 0}
!216 = !{!"_ZTSNSt12_Vector_baseImSaImEE12_Vector_implE", !217, i64 0}
!217 = !{!"_ZTSNSt12_Vector_baseImSaImEE17_Vector_impl_dataE", !27, i64 0, !27, i64 8, !27, i64 16}
!218 = !{!"_ZTSSt8optionalIbE", !219, i64 0}
!219 = !{!"_ZTSSt14_Optional_baseIbLb1ELb1EE", !220, i64 0}
!220 = !{!"_ZTSSt17_Optional_payloadIbLb1ELb1ELb1EE", !221, i64 0}
!221 = !{!"_ZTSSt22_Optional_payload_baseIbE", !6, i64 0, !59, i64 1}
!222 = !{!223, !224, i64 0}
!223 = !{!"_ZTSSt12__shared_ptrIKN8facebook5velox10ScalarTypeILNS1_8TypeKindE0EEELN9__gnu_cxx12_Lock_policyE2EE", !224, i64 0, !39, i64 8}
!224 = !{!"p1 _ZTSN8facebook5velox10ScalarTypeILNS0_8TypeKindE0EEE", !15, i64 0}
!225 = !{!226, !59, i64 0}
!226 = !{!"_ZTSN8facebook5velox6detail11TypeStorageIbLNS0_8TypeKindE0ELb0EEE", !59, i64 0}
!227 = !{!228, !15, i64 0}
!228 = !{!"_ZTSN8facebook5velox7VariantE", !15, i64 0, !202, i64 8, !59, i64 9}
!229 = !{!228, !202, i64 8}
!230 = !{!228, !59, i64 9}
!231 = !{!213, !5, i64 32}
!232 = !{!233, !234, i64 0}
!233 = !{!"_ZTSZN8facebook5velox7Variant11dynamicFreeEvEUlvE_", !234, i64 0}
!234 = !{!"p1 _ZTSN8facebook5velox7VariantE", !15, i64 0}
!235 = distinct !{ptr @_ZN8facebook5velox7VariantD2Ev, null}
!236 = distinct !{ptr @_ZN8facebook5velox7VariantD2Ev, null, null}
!237 = !{!238, !234, i64 0}
!238 = !{!"_ZTSZZN8facebook5velox7Variant11dynamicFreeEvENKUlvE0_clEvEUlvE_", !234, i64 0}
!239 = !{ptr @_ZN8facebook5velox7VariantD2Ev}
!240 = distinct !{ptr @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!241 = distinct !{ptr @_ZNSt12__shared_ptrIKN8facebook5velox10ScalarTypeILNS1_8TypeKindE0EEELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!242 = distinct !{ptr @_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!243 = !{!204, !205, i64 0}
!244 = !{!245}
!245 = distinct !{!245, !246, !"_ZN8facebook5velox13AlignedBuffer8allocateIbEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_Eb: argument 0"}
!246 = distinct !{!246, !"_ZN8facebook5velox13AlignedBuffer8allocateIbEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_Eb"}
!247 = !{!248, !59, i64 1}
!248 = !{!"_ZTSSt22_Optional_payload_baseIcE", !6, i64 0, !59, i64 1}
!249 = distinct !{null}
!250 = !{!251, !176, i64 8}
!251 = !{!"_ZTSN8facebook5velox6BufferE", !176, i64 8, !30, i64 16, !16, i64 24, !16, i64 32, !252, i64 40, !254, i64 44, !6, i64 48}
!252 = !{!"_ZTSSt6atomicIiE", !253, i64 0}
!253 = !{!"_ZTSSt13__atomic_baseIiE", !5, i64 0}
!254 = !{!"_ZTSN8facebook5velox6Buffer4TypeE", !6, i64 0}
!255 = !{!251, !254, i64 44}
!256 = !{!251, !30, i64 16}
!257 = !{!198, !27, i64 40}
!258 = distinct !{!258, !65, !259, !260}
!259 = !{!"llvm.loop.isvectorized", i32 1}
!260 = !{!"llvm.loop.unroll.runtime.disable"}
!261 = !{!"branch_weights", i32 4, i32 12}
!262 = distinct !{!262, !65, !259, !260}
!263 = distinct !{!263, !65, !259, !260}
!264 = !{!"branch_weights", i32 16, i32 112}
!265 = distinct !{!265, !65, !259, !260}
!266 = distinct !{!266, !65, !260, !259}
!267 = distinct !{!267, !65, !259}
!268 = distinct !{!268, !65}
!269 = !{!270}
!270 = distinct !{!270, !271, !"_ZN8facebook5velox13AlignedBuffer8allocateIbEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_Eb: argument 0"}
!271 = distinct !{!271, !"_ZN8facebook5velox13AlignedBuffer8allocateIbEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_Eb"}
!272 = !{!273, !274, i64 0}
!273 = !{!"_ZTSNSt12_Vector_baseIN8facebook5velox4exec18LocalDecodedVectorESaIS3_EE17_Vector_impl_dataE", !274, i64 0, !274, i64 8, !274, i64 16}
!274 = !{!"p1 _ZTSN8facebook5velox4exec18LocalDecodedVectorE", !15, i64 0}
!275 = distinct !{!275, !65, !259, !260}
!276 = distinct !{!276, !65, !259, !260}
!277 = distinct !{!277, !65, !259, !260}
!278 = distinct !{!278, !65, !259, !260}
!279 = distinct !{!279, !65, !260, !259}
!280 = distinct !{!280, !65, !259}
!281 = !{!273, !274, i64 8}
!282 = distinct !{!282, !65}
!283 = !{!273, !274, i64 16}
!284 = !{!285, !285, i64 0}
!285 = !{!"std::nullptr_t", !6, i64 0}
!286 = !{!287}
!287 = distinct !{!287, !288, !"_ZSt11make_sharedIN8facebook5velox10FlatVectorIbEEJRPNS1_6memory10MemoryPoolESt10shared_ptrIKNS1_10ScalarTypeILNS1_8TypeKindE0EEEEDniRN5boost13intrusive_ptrINS1_6BufferEEESt6vectorISH_SaISH_EEEES8_IT_EDpOT0_: argument 0"}
!288 = distinct !{!288, !"_ZSt11make_sharedIN8facebook5velox10FlatVectorIbEEJRPNS1_6memory10MemoryPoolESt10shared_ptrIKNS1_10ScalarTypeILNS1_8TypeKindE0EEEEDniRN5boost13intrusive_ptrINS1_6BufferEEESt6vectorISH_SaISH_EEEES8_IT_EDpOT0_"}
!289 = !{!290, !290, i64 0}
!290 = !{!"p1 _ZTSN8facebook5velox10FlatVectorIbEE", !15, i64 0}
!291 = !{!292, !293, i64 0}
!292 = !{!"_ZTSNSt12_Vector_baseIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EE17_Vector_impl_dataE", !293, i64 0, !293, i64 8, !293, i64 16}
!293 = !{!"p1 _ZTSN5boost13intrusive_ptrIN8facebook5velox6BufferEEE", !15, i64 0}
!294 = !{!292, !293, i64 8}
!295 = distinct !{!295, !65}
!296 = !{!292, !293, i64 16}
!297 = distinct !{ptr @_ZNSt12__shared_ptrIN8facebook5velox10FlatVectorIbEELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!298 = !{!299, !59, i64 24}
!299 = !{!"_ZTSSt22_Optional_payload_baseISt6vectorImSaImEEE", !6, i64 0, !59, i64 24}
!300 = distinct !{null}
!301 = distinct !{null, null}
!302 = !{!160, !170, i64 80}
!303 = !{!198, !176, i64 48}
!304 = distinct !{null, null, null, null}
!305 = !{!154, !155, i64 8}
!306 = !{!155, !155, i64 0}
!307 = !{!308, !161, i64 0}
!308 = !{!"_ZTSN8facebook5velox4exec18LocalDecodedVectorE", !161, i64 0, !309, i64 8}
!309 = !{!"_ZTSSt10unique_ptrIN8facebook5velox13DecodedVectorESt14default_deleteIS2_EE", !310, i64 0}
!310 = !{!"_ZTSSt15__uniq_ptr_dataIN8facebook5velox13DecodedVectorESt14default_deleteIS2_ELb1ELb1EE", !311, i64 0}
!311 = !{!"_ZTSSt15__uniq_ptr_implIN8facebook5velox13DecodedVectorESt14default_deleteIS2_EE", !312, i64 0}
!312 = !{!"_ZTSSt5tupleIJPN8facebook5velox13DecodedVectorESt14default_deleteIS2_EEE", !313, i64 0}
!313 = !{!"_ZTSSt11_Tuple_implILm0EJPN8facebook5velox13DecodedVectorESt14default_deleteIS2_EEE", !314, i64 0}
!314 = !{!"_ZTSSt10_Head_baseILm0EPN8facebook5velox13DecodedVectorELb0EE", !315, i64 0}
!315 = !{!"p1 _ZTSN8facebook5velox13DecodedVectorE", !15, i64 0}
!316 = !{!314, !315, i64 0}
!317 = distinct !{null, null, null, null, null}
!318 = !{!319, !234, i64 0}
!319 = !{!"_ZTSZZN8facebook5velox7Variant11dynamicFreeEvENKUlvE_clEvEUlvE_", !234, i64 0}
!320 = distinct !{null, null, null, null, null}
!321 = distinct !{null, null, null, null, null}
!322 = distinct !{null, null, null, null, null}
!323 = distinct !{null, null, null, null, null}
!324 = distinct !{null, null, null, null, null}
!325 = distinct !{null, null, null, null, null}
!326 = distinct !{null, null, null, null, null}
!327 = distinct !{null, null, null, null, null}
!328 = distinct !{null, null, null, null, null}
!329 = distinct !{null, null, null, null, null}
!330 = distinct !{null, null, null, null, null}
!331 = distinct !{null, null, null, null, null}
!332 = distinct !{null, null}
!333 = !{!334, !337, i64 8}
!334 = !{!"_ZTSSt15_Rb_tree_header", !335, i64 0, !16, i64 32}
!335 = !{!"_ZTSSt18_Rb_tree_node_base", !336, i64 0, !337, i64 8, !337, i64 16, !337, i64 24}
!336 = !{!"_ZTSSt14_Rb_tree_color", !6, i64 0}
!337 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !15, i64 0}
!338 = distinct !{null, null, null, null}
!339 = distinct !{null}
!340 = distinct !{null, null, null, null, null}
!341 = distinct !{null, null}
!342 = !{!343, !234, i64 0}
!343 = !{!"_ZTSNSt12_Vector_baseIN8facebook5velox7VariantESaIS2_EE17_Vector_impl_dataE", !234, i64 0, !234, i64 8, !234, i64 16}
!344 = !{!343, !234, i64 8}
!345 = distinct !{ptr @_ZN8facebook5velox7VariantD2Ev, null, null, null, null, null, null, null, null}
!346 = distinct !{ptr @_ZN8facebook5velox7VariantD2Ev, null, null, null, null, null, null, null, null, null}
!347 = distinct !{ptr @_ZN8facebook5velox7VariantD2Ev, null, null, null, null, null, null, null}
!348 = distinct !{!348, !65}
!349 = !{!343, !234, i64 16}
!350 = distinct !{null}
!351 = distinct !{null, null, null, null, null}
!352 = distinct !{null, null}
!353 = distinct !{ptr @_ZN8facebook5velox7VariantD2Ev, null, null, null, null, null, null, null, null}
!354 = distinct !{ptr @_ZN8facebook5velox7VariantD2Ev, null, null, null, null, null, null, null, null, null}
!355 = distinct !{ptr @_ZN8facebook5velox7VariantD2Ev, null, null, null, null, null, null, null}
!356 = distinct !{null}
!357 = !{!358}
!358 = distinct !{!358, !359, !"_ZN8facebook5velox12errorMessageIJSt17basic_string_viewIcSt11char_traitsIcEEEEENSt7__cxx1112basic_stringIcS4_SaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!359 = distinct !{!359, !"_ZN8facebook5velox12errorMessageIJSt17basic_string_viewIcSt11char_traitsIcEEEEENSt7__cxx1112basic_stringIcS4_SaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!360 = distinct !{null, null, null}
!361 = distinct !{null, null, null, null}
!362 = distinct !{null, null, null, null}
!363 = !{!335, !337, i64 24}
!364 = !{!335, !337, i64 16}
!365 = distinct !{null, null, null}
!366 = distinct !{!366, !65}
!367 = distinct !{null, ptr @_ZN8facebook5velox7VariantD2Ev, null}
!368 = distinct !{null, null, null, null, null}
!369 = distinct !{null, null, null, null, null}
!370 = distinct !{null, null, null, null}
!371 = distinct !{null}
!372 = distinct !{ptr @_ZN8facebook5velox7VariantD2Ev, null, null, null, null, null, null, null, null}
!373 = distinct !{ptr @_ZN8facebook5velox7VariantD2Ev, null, null, null, null, null, null, null, null, null}
!374 = distinct !{ptr @_ZN8facebook5velox7VariantD2Ev, null, null, null, null, null, null, null}
!375 = distinct !{null}
!376 = distinct !{ptr @_ZN8facebook5velox7VariantD2Ev, null, null, null, null, null, null, null, null}
!377 = distinct !{ptr @_ZN8facebook5velox7VariantD2Ev, null, null, null, null, null, null, null, null, null}
!378 = distinct !{ptr @_ZN8facebook5velox7VariantD2Ev, null, null, null, null, null, null, null}
!379 = distinct !{null}
!380 = !{!381}
!381 = distinct !{!381, !382, !"_ZN8facebook5velox12errorMessageIJSt17basic_string_viewIcSt11char_traitsIcEEEEENSt7__cxx1112basic_stringIcS4_SaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!382 = distinct !{!382, !"_ZN8facebook5velox12errorMessageIJSt17basic_string_viewIcSt11char_traitsIcEEEEENSt7__cxx1112basic_stringIcS4_SaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!383 = !{!217, !27, i64 0}
!384 = distinct !{!384, !65}
!385 = !{!386}
!386 = distinct !{!386, !387, !"_ZN8facebook5velox12errorMessageIJPKcmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!387 = distinct !{!387, !"_ZN8facebook5velox12errorMessageIJPKcmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!388 = !{!389}
!389 = distinct !{!389, !390, !"_ZN8facebook5velox12errorMessageIJPKcmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!390 = distinct !{!390, !"_ZN8facebook5velox12errorMessageIJPKcmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!391 = !{!251, !16, i64 32}
!392 = !{!253, !5, i64 0}
!393 = !{!251, !16, i64 24}
!394 = !{!395}
!395 = distinct !{!395, !396, !"_ZN8facebook5velox12errorMessageIJmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!396 = distinct !{!396, !"_ZN8facebook5velox12errorMessageIJmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!397 = !{!398}
!398 = distinct !{!398, !399, !"_ZN3fmt3v1116make_format_argsINS0_7contextEJKmS3_ELi2ELi0ELy68EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_: argument 0"}
!399 = distinct !{!399, !"_ZN3fmt3v1116make_format_argsINS0_7contextEJKmS3_ELi2ELi0ELy68EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_"}
!400 = !{!401}
!401 = distinct !{!401, !402, !"_ZN8facebook5velox12errorMessageIJmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!402 = distinct !{!402, !"_ZN8facebook5velox12errorMessageIJmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!403 = !{!404}
!404 = distinct !{!404, !405, !"_ZN3fmt3v1116make_format_argsINS0_7contextEJKmS3_ELi2ELi0ELy68EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_: argument 0"}
!405 = distinct !{!405, !"_ZN3fmt3v1116make_format_argsINS0_7contextEJKmS3_ELi2ELi0ELy68EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_"}
!406 = !{!407}
!407 = distinct !{!407, !408, !"_ZN8facebook5velox12errorMessageIJPKcmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!408 = distinct !{!408, !"_ZN8facebook5velox12errorMessageIJPKcmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!409 = !{!410}
!410 = distinct !{!410, !411, !"_ZN8facebook5velox12errorMessageIJmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!411 = distinct !{!411, !"_ZN8facebook5velox12errorMessageIJmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!412 = !{!413}
!413 = distinct !{!413, !414, !"_ZN8facebook5velox12errorMessageIJPKcmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!414 = distinct !{!414, !"_ZN8facebook5velox12errorMessageIJPKcmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!415 = !{!416}
!416 = distinct !{!416, !417, !"_ZN8facebook5velox12errorMessageIJmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!417 = distinct !{!417, !"_ZN8facebook5velox12errorMessageIJmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!418 = !{!419}
!419 = distinct !{!419, !420, !"_ZN3fmt3v1116make_format_argsINS0_7contextEJKmS3_ELi2ELi0ELy68EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_: argument 0"}
!420 = distinct !{!420, !"_ZN3fmt3v1116make_format_argsINS0_7contextEJKmS3_ELi2ELi0ELy68EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_"}
!421 = !{!254, !254, i64 0}
!422 = !{!423}
!423 = distinct !{!423, !424, !"_ZN8facebook5velox12errorMessageIJNS0_6Buffer4TypeES3_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!424 = distinct !{!424, !"_ZN8facebook5velox12errorMessageIJNS0_6Buffer4TypeES3_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!425 = !{!426, !5, i64 0}
!426 = !{!"_ZTSN3fmt3v1111basic_specsE", !5, i64 0, !6, i64 4}
!427 = !{!428, !5, i64 12}
!428 = !{!"_ZTSN3fmt3v1112format_specsE", !426, i64 0, !5, i64 8, !5, i64 12}
!429 = !{!430, !30, i64 0}
!430 = !{!"_ZTSN3fmt3v1117basic_string_viewIcEE", !30, i64 0, !16, i64 8}
!431 = !{!430, !16, i64 8}
!432 = !{!433, !433, i64 0}
!433 = !{!"p1 _ZTSN3fmt3v116detail6bufferIcEE", !15, i64 0}
!434 = distinct !{!434, !65}
!435 = !{!436, !436, i64 0}
!436 = !{!"_ZTSN3fmt3v1111arg_id_kindE", !6, i64 0}
!437 = distinct !{!437, !65}
!438 = !{!439, !5, i64 16}
!439 = !{!"_ZTSN3fmt3v1113parse_contextIcEE", !430, i64 0, !5, i64 16}
!440 = !{!441, !441, i64 0}
!441 = !{!"p1 _ZTSN3fmt3v1113parse_contextIcEE", !15, i64 0}
!442 = !{!443, !443, i64 0}
!443 = !{!"p1 _ZTSN3fmt3v116detail7arg_refIcEE", !15, i64 0}
!444 = !{!445, !443, i64 8}
!445 = !{!"_ZTSN3fmt3v116detail20dynamic_spec_handlerIcEE", !441, i64 0, !443, i64 8, !15, i64 16}
!446 = !{i64 8}
!447 = !{!445, !15, i64 16}
!448 = !{i64 4}
!449 = !{!445, !441, i64 0}
!450 = distinct !{!450, !65}
!451 = !{!452, !30, i64 0}
!452 = !{!"_ZTSZN3fmt3v116detail16code_point_indexENS0_17basic_string_viewIcEEmEUljS3_E_", !30, i64 0, !27, i64 8, !27, i64 16}
!453 = !{!27, !27, i64 0}
!454 = !{!455, !30, i64 0}
!455 = !{!"_ZTSN3fmt3v116detail6bufferIcEE", !30, i64 0, !16, i64 8, !16, i64 16, !15, i64 24}
!456 = !{!455, !16, i64 8}
!457 = !{!455, !16, i64 16}
!458 = !{!455, !15, i64 24}
!459 = !{!460, !16, i64 288}
!460 = !{!"_ZTSN3fmt3v116detail15counting_bufferIcEE", !455, i64 0, !6, i64 32, !16, i64 288}
!461 = !{!428, !5, i64 8}
!462 = distinct !{!462, !65}
!463 = distinct !{!463, !65, !259, !260}
!464 = !{!"branch_weights", i32 8, i32 120}
!465 = distinct !{!465, !65, !259, !260}
!466 = distinct !{!466, !467}
!467 = !{!"llvm.loop.unroll.disable"}
!468 = distinct !{!468, !65, !259}
!469 = distinct !{!469, !65}
!470 = !{!471, !59, i64 0}
!471 = !{!"_ZTSZN3fmt3v116detail5writeIcNS0_14basic_appenderIcEEEET0_S5_NS0_17basic_string_viewIT_EERKNS0_12format_specsEEUlS4_E_", !59, i64 0, !430, i64 8, !30, i64 24, !16, i64 32}
!472 = !{!471, !30, i64 24}
!473 = !{!471, !16, i64 32}
!474 = distinct !{null, null, null}
!475 = !{!476, !30, i64 0}
!476 = !{!"_ZTSN3fmt3v116detail18find_escape_resultIcEE", !30, i64 0, !30, i64 8, !5, i64 16}
!477 = !{!478}
!478 = distinct !{!478, !479, !"_ZN3fmt3v116detail11find_escapeEPKcS3_: argument 0"}
!479 = distinct !{!479, !"_ZN3fmt3v116detail11find_escapeEPKcS3_"}
!480 = !{!476, !30, i64 8}
end_hunk_1
