Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst_render-b6943bf748ed61f5.typst_render.34e4e3ded1502606-cgu.0?download=true
inline.NumInlined: 1272
inline.NumDeleted: 654
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvNtCs4xylOWI7Ys4_12typst_render5image12render_image:bb.a
  br label %bb.ba

bb.bc:                                            ; preds = %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !1806
  %i.rc = getelementptr inbounds nuw i8, ptr %.val35.i.i.i, i64 16
  %i.rd = load ptr, ptr %i.rc, align 8, !noalias !1808, !nonnull !5, !noundef !5
  %i.re = getelementptr inbounds nuw i8, ptr %i.rd, i64 16
  %i.rf = load ptr, ptr %i.re, align 8, !noalias !1808, !nonnull !5, !noundef !5 ; 2 uses
  %i.rg = getelementptr inbounds nuw i8, ptr %i.rf, i64 32
  %i.rh = load i64, ptr %i.rg, align 8, !noalias !1808, !noundef !5 ; 2 uses
  %i.ri = getelementptr inbounds nuw i8, ptr %.val35.i.i.i, i64 24
  %i.rj = load i64, ptr %i.ri, align 8, !noalias !1808, !noundef !5 ; 3 uses
  %i.rk = icmp ult i64 %i.rj, %i.rh
  br i1 %i.rk, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.rl = getelementptr inbounds nuw i8, ptr %i.rf, i64 24
  %i.rm = load ptr, ptr %i.rl, align 8, !noalias !1808, !nonnull !5, !noundef !5
  %i.rn = getelementptr inbounds nuw [208 x i8], ptr %i.rm, i64 %i.rj
  invoke void @_RNvCsjSKfRiKGIdg_5hayro6render(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.j, ptr noundef nonnull align 8 %i.rn, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.o, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(32) %i.l)
          to label %bb.bj unwind label %bb.bg, !noalias !1808

bb.be:                                            ; preds = %bb.bc
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.rj, i64 noundef %i.rh, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @66) #29
          to label %bb.bh unwind label %bb.bg, !noalias !1808

bb.bf:                                            ; preds = %bb.bi, %bb.bg
  %.pn14.i.i.i.i = phi { ptr, i32 } [ %i.ro, %bb.bg ], [ %i.rp, %bb.bi ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsjSKfRiKGIdg_5hayro11RenderCacheECs4xylOWI7Ys4_12typst_render(ptr noalias nofree noundef align 8 dereferenceable(24) %i.k) #28
          to label %bb.ba unwind label %bb.bn, !noalias !1808

bb.bg:                                            ; preds = %bb.be, %bb.bd
  %i.ro = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

bb.bh:                                            ; preds = %bb.be
  unreachable

bb.bi:                                            ; preds = %bb.bk
  %i.rp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

bb.bj:                                            ; preds = %bb.bd
  %.sroa.06.0.copyload.i.i.i.i = load i64, ptr %i.j, align 8, !noalias !1806
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.2.0.copyload.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !noalias !1806, !nonnull !5, !noundef !5 ; 2 uses
  %.sroa.3.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sroa.3.0.copyload.i.i.i.i = load i64, ptr %.sroa.3.0..sroa_idx.i.i.i.i, align 8, !noalias !1806
  %i.rq = ptrtoint ptr %.sroa.2.0.copyload.i.i.i.i to i64
  %i.rr = shl i64 %.sroa.06.0.copyload.i.i.i.i, 2 ; 3 uses
  %i.rs = shl nuw nsw i64 %.sroa.3.0.copyload.i.i.i.i, 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1806
  store i64 %i.rr, ptr %i.i, align 8, !noalias !1806
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 %i.rq, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !noalias !1806
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 %i.rs, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !noalias !1806
  %.not7.i.i.i.i.i = icmp eq i32 %i.cs, 0
  %.not7.i.i.i.i = icmp eq i32 %i.co, 0
  %.not.i.i.i.i = or i1 %.not7.i.i.i.i, %.not7.i.i.i.i.i
  br i1 %.not.i.i.i.i, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  invoke void @_RNvMNtCsfVrisfeHJNS_9tiny_skia6pixmapNtB2_6Pixmap8from_vec(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.p, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.i, i32 noundef %i.co, i32 noundef %i.cs)
          to label %.invoke.i.i.i.i unwind label %bb.bi, !noalias !1803

bb.bl:                                            ; preds = %bb.bj
  store i64 -1, ptr %i.p, align 8, !alias.scope !1805, !noalias !1804
  %i.rt = icmp eq i64 %i.rr, 0
  br i1 %i.rt, label %.invoke.i.i.i.i, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.2.0.copyload.i.i.i.i, i64 noundef %i.rr, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !1808
  br label %.invoke.i.i.i.i

.invoke.i.i.i.i:                                  ; preds = %bb.bm, %bb.bl, %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1806
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1806
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsjSKfRiKGIdg_5hayro11RenderCacheECs4xylOWI7Ys4_12typst_render(ptr noalias nofree noundef align 8 dereferenceable(24) %i.k)
          to label %_RNvNtCs4xylOWI7Ys4_12typst_render5image17build_pdf_texture.exit.i.i.i unwind label %bb.bb, !noalias !1808

bb.bn:                                            ; preds = %bb.bf, %bb.ba, %bb.ay, %bb.at
  %i.ru = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #27, !noalias !1808
  unreachable

_RNvNtCs4xylOWI7Ys4_12typst_render5image17build_pdf_texture.exit.i.i.i: ; preds = %.invoke.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !1806
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !1806
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdZBRolkNcUZ_15hayro_interpret9interpret19InterpreterSettingsECs4xylOWI7Ys4_12typst_render(ptr noalias nofree noundef align 8 dereferenceable(56) %i.o)
          to label %.noexc52.i unwind label %bb.fi, !noalias !1741

.noexc52.i:                                       ; preds = %_RNvNtCs4xylOWI7Ys4_12typst_render5image17build_pdf_texture.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !1806
  %i.rv = load i64, ptr %i.p, align 8, !range !7, !noalias !1804, !noundef !5 ; 2 uses
  %.not.i41.i.i = icmp eq i64 %i.rv, -1
  br i1 %.not.i41.i.i, label %bb.cn, label %bb.cm

bb.bo:                                            ; preds = %.noexc49.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.w, ptr noundef nonnull align 8 dereferenceable(32) %i.v, i64 32, i1 false), !noalias !1804
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !1804
  %i.rw = getelementptr inbounds nuw i8, ptr %i.w, i64 24 ; 2 uses
  %i.rx = load i32, ptr %i.rw, align 8, !range !20, !noalias !1804, !noundef !5 ; 3 uses
  %i.ry = getelementptr inbounds nuw i8, ptr %i.w, i64 28
  %i.rz = load i32, ptr %i.ry, align 4, !range !20, !noalias !1804, !noundef !5 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !1804
  %i.sa = load ptr, ptr %i.bp, align 8, !noalias !1803, !nonnull !5, !noundef !5
  %i.sb = getelementptr inbounds nuw i8, ptr %i.sa, i64 56
  %i.sc = load ptr, ptr %i.sb, align 8, !noalias !1803, !nonnull !5, !noundef !5 ; 4 uses
  %.sroa.02.0.in.i.i.i = getelementptr inbounds nuw i8, ptr %i.sc, i64 48
  %.sroa.02.0.i.i.i = load i32, ptr %.sroa.02.0.in.i.i.i, align 8, !noalias !1803, !noundef !5 ; 2 uses
  %.sroa.03.0.in.i.i.i = getelementptr inbounds nuw i8, ptr %i.sc, i64 52
  %.sroa.03.0.i.i.i = load i32, ptr %.sroa.03.0.in.i.i.i, align 4, !noalias !1803, !noundef !5
  %i.sd = icmp ne i32 %i.rx, %.sroa.02.0.i.i.i
  %i.se = icmp ne i32 %i.rz, %.sroa.03.0.i.i.i
  %or.cond.not.i.i.i = or i1 %i.sd, %i.se         ; 3 uses
  br i1 %or.cond.not.i.i.i, label %bb.bq, label %bb.br

bb.bp:                                            ; preds = %.noexc49.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !1804
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !1804
  br label %_RNCNvNtCs4xylOWI7Ys4_12typst_render5image13build_texture0B5_.exit.i.i

bb.bq:                                            ; preds = %bb.bo
  %i.sf = icmp ugt i32 %i.rx, %.sroa.02.0.i.i.i
  %i.sg = getelementptr inbounds nuw i8, ptr %.0.val, i64 72
  %i.sh = load i8, ptr %i.sg, align 8, !range !24, !noalias !1803, !noundef !5
  %i.si = icmp eq i8 %i.sh, 1
  %..i.i.i = select i1 %i.sf, i8 2, i8 4
  %.sroa.07.0.i.i.i = select i1 %i.si, i8 0, i8 %..i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !1804
  %i.sj = getelementptr inbounds nuw i8, ptr %i.sc, i64 16
  invoke void @_RNvMs_NtNtCsbMQOdixSu6G_5image6images8dynimageNtB4_12DynamicImage12resize_exact(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.t, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.sj, i32 noundef %i.rx, i32 noundef %i.rz, i8 noundef %.sroa.07.0.i.i.i)
          to label %bb.bt unwind label %.thread.i.i.i, !noalias !1803

.thread.i.i.i:                                    ; preds = %bb.bq
  %i.sk = landingpad { ptr, i32 }
          cleanup
  br label %bb.cf

bb.br:                                            ; preds = %bb.bo
  %i.sl = getelementptr inbounds nuw i8, ptr %i.sc, i64 16
  br label %bb.bu

.loopexit.i.i.i:                                  ; preds = %.lr.ph.i43.i.i
  %lpad.loopexit.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.bs

.loopexit.split-lp.i.i.i:                         ; preds = %bb.bu
  %lpad.loopexit.split-lp.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.bs

bb.bs:                                            ; preds = %.loopexit.split-lp.i.i.i, %.loopexit.i.i.i
  %lpad.phi.i.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i.i, %.loopexit.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i, %.loopexit.split-lp.i.i.i ] ; 2 uses
  br i1 %or.cond.not.i.i.i, label %bb.ce, label %bb.cf

bb.bt:                                            ; preds = %bb.bq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.u, ptr noundef nonnull align 8 dereferenceable(48) %i.t, i64 48, i1 false), !noalias !1804
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !1804
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.br
  %.sroa.04.0.i.i.i = phi ptr [ %i.sl, %bb.br ], [ %i.u, %bb.bt ] ; 3 uses
  %i.sm = getelementptr i8, ptr %.sroa.04.0.i.i.i, i64 32
  %.sroa.04.0.val.i.i.i = load i32, ptr %i.sm, align 8, !noalias !1803, !noundef !5 ; 2 uses
  %i.sn = getelementptr i8, ptr %.sroa.04.0.i.i.i, i64 36
  %.sroa.04.0.val36.i.i.i = load i32, ptr %i.sn, align 4, !noalias !1803, !noundef !5 ; 2 uses
  %i.so = invoke { ptr, i64 } @_RNvMNtCsfVrisfeHJNS_9tiny_skia6pixmapNtB2_6Pixmap10pixels_mut(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.w)
          to label %bb.bv unwind label %.loopexit.split-lp.i.i.i, !noalias !1803 ; 2 uses

bb.bv:                                            ; preds = %bb.bu
  %i.sp = extractvalue { ptr, i64 } %i.so, 0      ; 3 uses
  %i.sq = extractvalue { ptr, i64 } %i.so, 1
  %i.sr = getelementptr inbounds nuw [4 x i8], ptr %i.sp, i64 %i.sq
  %.not.i.i134.i.i.i = icmp eq i32 %.sroa.04.0.val.i.i.i, 0
  %i.ss = zext i1 %.not.i.i134.i.i.i to i32       ; 2 uses
  %.not4.i.i135.i.i.i = icmp ugt i32 %.sroa.04.0.val36.i.i.i, %i.ss
  br i1 %.not4.i.i135.i.i.i, label %.lr.ph.i43.i.i, label %._crit_edge.i.i._crit_edge.i.i.i

.lr.ph.i43.i.i:                                   ; preds = %bb.bv, %_RNvMNtCsfVrisfeHJNS_9tiny_skia5colorNtB2_7ColorU811premultiply.exit.i.i.i
  %i.st = phi i32 [ %i.tt, %_RNvMNtCsfVrisfeHJNS_9tiny_skia5colorNtB2_7ColorU811premultiply.exit.i.i.i ], [ 0, %bb.bv ] ; 2 uses
  %.sroa.8.1137.i.i.i = phi i32 [ %.sroa.8.1.i.i.i, %_RNvMNtCsfVrisfeHJNS_9tiny_skia5colorNtB2_7ColorU811premultiply.exit.i.i.i ], [ %i.ss, %bb.bv ] ; 2 uses
  %.sroa.16.0136.i.i.i = phi ptr [ %i.sx, %_RNvMNtCsfVrisfeHJNS_9tiny_skia5colorNtB2_7ColorU811premultiply.exit.i.i.i ], [ %i.sp, %bb.bv ] ; 4 uses
  %i.su = invoke noundef i32 @_RNvXsc_NtNtCsbMQOdixSu6G_5image6images8dynimageNtB5_12DynamicImageNtNtB7_13generic_image16GenericImageView9get_pixel(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.sroa.04.0.i.i.i, i32 noundef %i.st, i32 noundef %.sroa.8.1137.i.i.i)
          to label %.noexc.i.i.i unwind label %.loopexit.i.i.i, !noalias !1803 ; 6 uses

.noexc.i.i.i:                                     ; preds = %.lr.ph.i43.i.i
  %i.sv = add nuw i32 %i.st, 1                    ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.16.0136.i.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.sp) ]
  %i.sw = icmp eq ptr %.sroa.16.0136.i.i.i, %i.sr
  br i1 %i.sw, label %._crit_edge.i.i._crit_edge.i.i.i, label %bb.bw

bb.bw:                                            ; preds = %.noexc.i.i.i
  %i.sx = getelementptr inbounds nuw i8, ptr %.sroa.16.0136.i.i.i, i64 4
  %4 = trunc i32 %i.su to i16
  %5 = lshr i16 %4, 8                             ; 2 uses
  %.sroa.548.11.extract.shift.i.i.i = lshr i32 %i.su, 24 ; 4 uses
  %i.sy = icmp eq i32 %.sroa.548.11.extract.shift.i.i.i, 255
  %.sroa.03.0.insert.ext.i.i.i.i = and i32 %i.su, 255 ; 2 uses
  br i1 %i.sy, label %6, label %bb.bx

6:                                                ; preds = %bb.bw
  %sh.diff.i.i.i = lshr i32 %i.su, 8
  %tr.sh.diff.i.i.i = trunc i32 %sh.diff.i.i.i to i16
  %.sroa.451.2.insert.ext.i.i.i = and i16 %tr.sh.diff.i.i.i, -256
  %.sroa.451.2.insert.insert.i.i.i = or disjoint i16 %.sroa.451.2.insert.ext.i.i.i, %5
  %7 = zext i16 %.sroa.451.2.insert.insert.i.i.i to i32
  %8 = shl nuw nsw i32 %7, 8
  %.sroa.44.0.insert.insert.i.i.i.i = or disjoint i32 %8, %.sroa.03.0.insert.ext.i.i.i.i
  %.sroa.03.0.insert.insert.i.i.i.i = or disjoint i32 %.sroa.44.0.insert.insert.i.i.i.i, -16777216
  br label %_RNvMNtCsfVrisfeHJNS_9tiny_skia5colorNtB2_7ColorU811premultiply.exit.i.i.i

bb.bx:                                            ; preds = %bb.bw
  %.sroa.451.2.extract.shift133.i.i.i.a = lshr i32 %i.su, 16
  %.sroa.451.1.extract.trunc.i.i.i = zext nneg i16 %5 to i32
  %i.sz = mul nuw nsw i32 %.sroa.548.11.extract.shift.i.i.i, %.sroa.03.0.insert.ext.i.i.i.i
  %i.ta = add nuw nsw i32 %i.sz, 128              ; 2 uses
  %i.tb = lshr i32 %i.ta, 8
  %i.tc = add nuw nsw i32 %i.tb, %i.ta
  %i.td = lshr i32 %i.tc, 8
  %i.te = mul nuw nsw i32 %.sroa.548.11.extract.shift.i.i.i, %.sroa.451.1.extract.trunc.i.i.i
  %i.tf = add nuw nsw i32 %i.te, 128              ; 2 uses
  %i.tg = lshr i32 %i.tf, 8
  %i.th = add nuw nsw i32 %i.tg, %i.tf
  %.sroa.4.0.insert.shift.i.i.i.i = and i32 %i.th, 261888
  %i.ti = and i32 %.sroa.451.2.extract.shift133.i.i.i.a, 255
  %.sroa.6.0.insert.shift.i.i.i.i = and i32 %i.su, -16777216
  %i.tj = mul nuw nsw i32 %.sroa.548.11.extract.shift.i.i.i, 257
  %i.tk = mul nuw nsw i32 %i.tj, %i.ti
  %i.tl = add nuw nsw i32 %i.tk, 32896
  %.sroa.5.0.insert.shift.i.i.i.i = and i32 %i.tl, 33488896
  %.sroa.5.0.insert.insert.i.i.i.i = or i32 %.sroa.5.0.insert.shift.i.i.i.i, %.sroa.6.0.insert.shift.i.i.i.i
  %.sroa.4.0.insert.insert.i.i.i.i = or i32 %.sroa.5.0.insert.insert.i.i.i.i, %i.td
  %.sroa.02.0.insert.insert.i.i.i.i = or i32 %.sroa.4.0.insert.insert.i.i.i.i, %.sroa.4.0.insert.shift.i.i.i.i
  br label %_RNvMNtCsfVrisfeHJNS_9tiny_skia5colorNtB2_7ColorU811premultiply.exit.i.i.i

._crit_edge.i.i._crit_edge.i.i.i:                 ; preds = %_RNvMNtCsfVrisfeHJNS_9tiny_skia5colorNtB2_7ColorU811premultiply.exit.i.i.i, %.noexc.i.i.i, %bb.bv
  %.sroa.077.0.copyload.i.i.i = load i64, ptr %i.w, align 8, !noalias !1804
  %.sroa.480.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.sroa.480.0.copyload.i.i.i = load ptr, ptr %.sroa.480.0..sroa_idx.i.i.i, align 8, !noalias !1804
  %.sroa.585.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %.sroa.585.0.copyload.i.i.i = load i64, ptr %.sroa.585.0..sroa_idx.i.i.i, align 8, !noalias !1804
  %i.tm = load <2 x i32>, ptr %i.rw, align 8, !noalias !1804
  br i1 %or.cond.not.i.i.i, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bz, %._crit_edge.i.i._crit_edge.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !1804
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !1804
  br label %bb.ca

bb.bz:                                            ; preds = %._crit_edge.i.i._crit_edge.i.i.i
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsbMQOdixSu6G_5image6images8dynimage12DynamicImageECs4xylOWI7Ys4_12typst_render(ptr noalias nofree noundef align 8 dereferenceable(48) %i.u), !noalias !1803
  br label %bb.by

bb.ca:                                            ; preds = %bb.cm, %bb.cl, %bb.by
  %.sroa.585.0.i.i.i = phi i64 [ %.sroa.585.0.copyload.i.i.i, %bb.by ], [ %.sroa.5107.0.copyload.i.i.i, %bb.cl ], [ %.sroa.5112.0.copyload.i.i.i, %bb.cm ]
  %.sroa.480.0.i.i.i = phi ptr [ %.sroa.480.0.copyload.i.i.i, %bb.by ], [ %.sroa.4106.0.copyload.i.i.i, %bb.cl ], [ %.sroa.4111.0.copyload.i.i.i, %bb.cm ] ; 3 uses
  %.sroa.077.0.i.i.i = phi i64 [ %.sroa.077.0.copyload.i.i.i, %bb.by ], [ %i.ps, %bb.cl ], [ %i.rv, %bb.cm ] ; 3 uses
  %i.tn = phi <2 x i32> [ %i.tm, %bb.by ], [ %i.tw, %bb.cl ], [ %i.uo, %bb.cm ]
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !noalias !1814
  %i.to = call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 48, i64 noundef 8) #26, !noalias !1814 ; 8 uses
  %i.tp = icmp eq ptr %i.to, null
  br i1 %i.tp, label %bb.cb, label %_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEE3newCs4xylOWI7Ys4_12typst_render.exit.i.i.i, !prof !17

bb.cb:                                            ; preds = %bb.ca
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #29
          to label %.noexc39.i.i.i unwind label %bb.cc, !noalias !1803

.noexc39.i.i.i:                                   ; preds = %bb.cb
  unreachable

bb.cc:                                            ; preds = %bb.cb
  %i.tq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.tr = icmp eq i64 %.sroa.077.0.i.i.i, 0
  br i1 %i.tr, label %.body.i, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.480.0.i.i.i) ]
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.480.0.i.i.i, i64 noundef %.sroa.077.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !1803
  br label %.body.i

_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEE3newCs4xylOWI7Ys4_12typst_render.exit.i.i.i: ; preds = %bb.ca
  store i64 1, ptr %i.to, align 8, !noalias !1803
  %.sroa.4116.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.to, i64 8
  store i64 1, ptr %.sroa.4116.0..sroa_idx.i.i.i, align 8, !noalias !1803
  %.sroa.5117.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.to, i64 16
  store i64 %.sroa.077.0.i.i.i, ptr %.sroa.5117.0..sroa_idx.i.i.i, align 8, !noalias !1803
  %.sroa.7118.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.to, i64 24
  store ptr %.sroa.480.0.i.i.i, ptr %.sroa.7118.0..sroa_idx.i.i.i, align 8, !noalias !1803
  %.sroa.9119.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.to, i64 32
  store i64 %.sroa.585.0.i.i.i, ptr %.sroa.9119.0..sroa_idx.i.i.i, align 8, !noalias !1803
  %.sroa.10120.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.to, i64 40
  store <2 x i32> %i.tn, ptr %.sroa.10120.0..sroa_idx.i.i.i, align 8, !noalias !1803
  br label %_RNCNvNtCs4xylOWI7Ys4_12typst_render5image13build_texture0B5_.exit.i.i

_RNvMNtCsfVrisfeHJNS_9tiny_skia5colorNtB2_7ColorU811premultiply.exit.i.i.i: ; preds = %bb.bx, %6
  %.sroa.0.0.i.i.i.i = phi i32 [ %.sroa.03.0.insert.insert.i.i.i.i, %6 ], [ %.sroa.02.0.insert.insert.i.i.i.i, %bb.bx ]
  store i32 %.sroa.0.0.i.i.i.i, ptr %.sroa.16.0136.i.i.i, align 1, !noalias !1803
  %.not.i.i.i.i.i = icmp uge i32 %i.sv, %.sroa.04.0.val.i.i.i ; 2 uses
  %i.ts = zext i1 %.not.i.i.i.i.i to i32
  %.sroa.8.1.i.i.i = add nuw i32 %.sroa.8.1137.i.i.i, %i.ts ; 2 uses
  %i.tt = select i1 %.not.i.i.i.i.i, i32 0, i32 %i.sv
  %.not4.i.i.i.i.i = icmp ult i32 %.sroa.8.1.i.i.i, %.sroa.04.0.val36.i.i.i
  br i1 %.not4.i.i.i.i.i, label %.lr.ph.i43.i.i, label %._crit_edge.i.i._crit_edge.i.i.i

bb.ce:                                            ; preds = %bb.bs
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsbMQOdixSu6G_5image6images8dynimage12DynamicImageECs4xylOWI7Ys4_12typst_render(ptr noalias nofree noundef align 8 dereferenceable(48) %i.u) #28, !noalias !1803
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.bs, %.thread.i.i.i
  %.pn.ph.i.i.i = phi { ptr, i32 } [ %i.sk, %.thread.i.i.i ], [ %lpad.phi.i.i.i, %bb.bs ], [ %lpad.phi.i.i.i, %bb.ce ] ; 2 uses
  %.val31.i.i.i = load i64, ptr %i.w, align 8, !noalias !1804 ; 2 uses
  %i.tu = icmp eq i64 %.val31.i.i.i, 0
  br i1 %i.tu, label %.body.i, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.tv = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.val32.i.i.i = load ptr, ptr %i.tv, align 8, !noalias !1804, !nonnull !5, !noundef !5
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val32.i.i.i, i64 noundef %.val31.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !1803
  br label %.body.i

bb.ch:                                            ; preds = %.noexc50.i
  %.sroa.4106.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.4106.0.copyload.i.i.i = load ptr, ptr %.sroa.4106.0..sroa_idx.i.i.i, align 8, !noalias !1804 ; 4 uses
  %.sroa.5107.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %.sroa.5107.0.copyload.i.i.i = load i64, ptr %.sroa.5107.0..sroa_idx.i.i.i, align 8, !noalias !1804 ; 2 uses
  %.sroa.6108.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.tw = load <2 x i32>, ptr %.sroa.6108.0..sroa_idx.i.i.i, align 8, !noalias !1804 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !1804
  %i.tx = load ptr, ptr %i.bp, align 8, !noalias !1803, !nonnull !5, !noundef !5 ; 2 uses
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tx, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !1804
  %i.tz = getelementptr inbounds nuw i8, ptr %i.tx, i64 408
  %i.ua = uitofp i32 %i.cs to float
  %i.ub = load <2 x float>, ptr %i.tz, align 8, !noalias !1803
  %i.uc = insertelement <2 x float> poison, float %i.cp, i64 0
  %i.ud = insertelement <2 x float> %i.uc, float %i.ua, i64 1
  %i.ue = fdiv <2 x float> %i.ud, %i.ub           ; 2 uses
  %i.uf = extractelement <2 x float> %i.ue, i64 0
  store float %i.uf, ptr %i.r, align 4, !noalias !1804
  %i.ug = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  store <2 x float> zeroinitializer, ptr %i.ug, align 4, !noalias !1804
  %i.uh = getelementptr inbounds nuw i8, ptr %i.r, i64 12
  %i.ui = extractelement <2 x float> %i.ue, i64 1
  store float %i.ui, ptr %i.uh, align 4, !noalias !1804
  %i.uj = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store <2 x float> zeroinitializer, ptr %i.uj, align 4, !noalias !1804
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !1804
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4106.0.copyload.i.i.i) ]
  store ptr %.sroa.4106.0.copyload.i.i.i, ptr %i.q, align 8, !noalias !1804
  %i.uk = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %.sroa.5107.0.copyload.i.i.i, ptr %i.uk, align 8, !noalias !1804
  %i.ul = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store <2 x i32> %i.tw, ptr %i.ul, align 8, !noalias !1804
  invoke void @_RNvCs2S0oWaQfpAk_5resvg6render(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(400) %i.ty, ptr noalias nofree noundef nonnull align 4 captures(address) dereferenceable(24) %i.r, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %bb.cl unwind label %bb.cj, !noalias !1803

bb.ci:                                            ; preds = %.noexc50.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !1804
  br label %_RNCNvNtCs4xylOWI7Ys4_12typst_render5image13build_texture0B5_.exit.i.i

bb.cj:                                            ; preds = %bb.ch
  %i.um = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.un = icmp eq i64 %i.ps, 0
  br i1 %i.un, label %.body.i, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4106.0.copyload.i.i.i, i64 noundef %i.ps, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !1803
  br label %.body.i

bb.cl:                                            ; preds = %bb.ch
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !1804
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !1804
  br label %bb.ca

bb.cm:                                            ; preds = %.noexc52.i
  %.sroa.4111.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.4111.0.copyload.i.i.i = load ptr, ptr %.sroa.4111.0..sroa_idx.i.i.i, align 8, !noalias !1804
  %.sroa.5112.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %.sroa.5112.0.copyload.i.i.i = load i64, ptr %.sroa.5112.0..sroa_idx.i.i.i, align 8, !noalias !1804
  %.sroa.6113.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.uo = load <2 x i32>, ptr %.sroa.6113.0..sroa_idx.i.i.i, align 8, !noalias !1804
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !1804
  br label %bb.ca

bb.cn:                                            ; preds = %.noexc52.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !1804
  br label %_RNCNvNtCs4xylOWI7Ys4_12typst_render5image13build_texture0B5_.exit.i.i

_RNCNvNtCs4xylOWI7Ys4_12typst_render5image13build_texture0B5_.exit.i.i: ; preds = %bb.cn, %bb.ci, %_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEE3newCs4xylOWI7Ys4_12typst_render.exit.i.i.i, %bb.bp
  %.sroa.0.0.i42.i.i = phi ptr [ %i.to, %_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEE3newCs4xylOWI7Ys4_12typst_render.exit.i.i.i ], [ null, %bb.bp ], [ null, %bb.ci ], [ null, %bb.cn ] ; 10 uses
  store ptr %.sroa.0.0.i42.i.i, ptr %i.an, align 8, !noalias !1744
  %i.up = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCs4xylOWI7Ys4_12typst_render5image13build_texture7___CACHE, i64 152) acquire, align 8, !noalias !1744
  %i.uq = icmp eq i32 %i.up, 0
  br i1 %i.uq, label %bb.cv, label %bb.co, !prof !19

bb.co:                                            ; preds = %_RNCNvNtCs4xylOWI7Ys4_12typst_render5image13build_texture0B5_.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1744
  store ptr @_RNvNvNtCs4xylOWI7Ys4_12typst_render5image13build_texture7___CACHE, ptr %i.h, align 8, !noalias !1744
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1744
  store ptr %i.h, ptr %i.g, align 8, !noalias !1744
  invoke void @_RNvMs0_NtNtNtNtCsaL1QbXo9JQH_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_RNvNvNtCs4xylOWI7Ys4_12typst_render5image13build_texture7___CACHE, i64 152), i1 noundef zeroext true, ptr noundef nonnull %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2)
          to label %.noexc44.i.i unwind label %bb.cu, !noalias !1798, !inline_history !1602

.noexc44.i.i:                                     ; preds = %bb.co
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1744
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1744
  br label %bb.cv

bb.cp:                                            ; preds = %bb.am
  %i.ur = atomicrmw add ptr %.val35.i.i, i64 1 monotonic, align 8, !noalias !1798
  %i.us = icmp slt i64 %i.ur, 0
  br i1 %i.us, label %bb.cq, label %_RNvXs4_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEENtNtB7_5clone5Clone5cloneCs4xylOWI7Ys4_12typst_render.exit.i.i

bb.cq:                                            ; preds = %bb.cp
  call void @llvm.trap()
  unreachable

_RNvXs4_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEENtNtB7_5clone5Clone5cloneCs4xylOWI7Ys4_12typst_render.exit.i.i: ; preds = %bb.cp, %bb.am
  %i.ut = atomicrmw sub ptr @_RNvNvNtCs4xylOWI7Ys4_12typst_render5image13build_texture7___CACHE, i64 16 release, align 8, !noalias !1744
  %i.uu = and i64 %i.ut, -14
  %i.uv = icmp eq i64 %i.uu, 18
  br i1 %i.uv, label %bb.cr, label %_RINvNtCsloFShupyl5J_6comemo7memoize7memoizeINtNtB4_5input5MultiTRNtNtNtCsdaEETE4DqmE_13typst_library9visualize5image5ImagemmEEINtNtCs3oUPovFnLWP_4core6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEENCNvNtCs4xylOWI7Ys4_12typst_render5image13build_texture0EB3Y_.exit.i, !prof !17

bb.cr:                                            ; preds = %_RNvXs4_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEENtNtB7_5clone5Clone5cloneCs4xylOWI7Ys4_12typst_render.exit.i.i
  invoke void @_RNvMs8_NtCsg5ZWEykmiUC_11parking_lot10raw_rwlockNtB5_9RawRwLock18unlock_shared_slow(ptr noundef nonnull align 8 @_RNvNvNtCs4xylOWI7Ys4_12typst_render5image13build_texture7___CACHE)
          to label %_RINvNtCsloFShupyl5J_6comemo7memoize7memoizeINtNtB4_5input5MultiTRNtNtNtCsdaEETE4DqmE_13typst_library9visualize5image5ImagemmEEINtNtCs3oUPovFnLWP_4core6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEENCNvNtCs4xylOWI7Ys4_12typst_render5image13build_texture0EB3Y_.exit.i unwind label %bb.fi, !noalias !1741

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsbQmEUdn7Qi6_8lock_api6rwlock16RwLockWriteGuardNtNtCsg5ZWEykmiUC_11parking_lot10raw_rwlock9RawRwLockINtNtCsloFShupyl5J_6comemo7memoize9CacheDataINtNvNtB2o_5inputs1_1__9MultiCalluuuEINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEEEEECs4xylOWI7Ys4_12typst_render.exit.i.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEEECs4xylOWI7Ys4_12typst_render.exit.i.i.i, %bb.da, %bb.cu
  %.pn.i.i = phi { ptr, i32 } [ %i.uz, %bb.cu ], [ %eh.lpad-body3.i.i.i, %bb.da ], [ %eh.lpad-body3.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEEECs4xylOWI7Ys4_12typst_render.exit.i.i.i ] ; 3 uses
  %i.uw = icmp eq ptr %.sroa.0.0.i42.i.i, null
  br i1 %i.uw, label %.body.i, label %bb.cs

bb.cs:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsbQmEUdn7Qi6_8lock_api6rwlock16RwLockWriteGuardNtNtCsg5ZWEykmiUC_11parking_lot10raw_rwlock9RawRwLockINtNtCsloFShupyl5J_6comemo7memoize9CacheDataINtNvNtB2o_5inputs1_1__9MultiCalluuuEINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEEEEECs4xylOWI7Ys4_12typst_render.exit.i.i
  %i.ux = atomicrmw sub ptr %.sroa.0.0.i42.i.i, i64 1 release, align 8, !noalias !1815
  %i.uy = icmp eq i64 %i.ux, 1
  br i1 %i.uy, label %bb.ct, label %.body.i

bb.ct:                                            ; preds = %bb.cs
  fence acquire
  call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapE9drop_slowCs4xylOWI7Ys4_12typst_render(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.an) #25, !noalias !1798
  br label %.body.i

bb.cu:                                            ; preds = %bb.fg, %bb.cw, %bb.co
  %i.uz = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsbQmEUdn7Qi6_8lock_api6rwlock16RwLockWriteGuardNtNtCsg5ZWEykmiUC_11parking_lot10raw_rwlock9RawRwLockINtNtCsloFShupyl5J_6comemo7memoize9CacheDataINtNvNtB2o_5inputs1_1__9MultiCalluuuEINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEEEEECs4xylOWI7Ys4_12typst_render.exit.i.i

bb.cv:                                            ; preds = %.noexc44.i.i, %_RNCNvNtCs4xylOWI7Ys4_12typst_render5image13build_texture0B5_.exit.i.i
  %i.va = cmpxchg weak ptr @_RNvNvNtCs4xylOWI7Ys4_12typst_render5image13build_texture7___CACHE, i64 0, i64 8 acquire monotonic, align 8, !noalias !1744
  %i.vb = extractvalue { i64, i1 } %i.va, 1
  br i1 %i.vb, label %bb.cx, label %bb.cw, !prof !19

bb.cw:                                            ; preds = %bb.cv
  %i.vc = invoke noundef zeroext i1 @_RNvMs8_NtCsg5ZWEykmiUC_11parking_lot10raw_rwlockNtB5_9RawRwLock19lock_exclusive_slow(ptr noundef nonnull align 8 @_RNvNvNtCs4xylOWI7Ys4_12typst_render5image13build_texture7___CACHE, i64 undef, i32 noundef -1)
          to label %bb.cx unwind label %bb.cu, !noalias !1798 ; 0 uses

bb.cx:                                            ; preds = %bb.cw, %bb.cv
  %.not.i50.i.i = icmp eq ptr %.sroa.0.0.i42.i.i, null ; 3 uses
  br i1 %.not.i50.i.i, label %_RNvXs4_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEENtNtB7_5clone5Clone5cloneCs4xylOWI7Ys4_12typst_render.exit51.i.i, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.vd = atomicrmw add ptr %.sroa.0.0.i42.i.i, i64 1 monotonic, align 8, !noalias !1798
  %i.ve = icmp slt i64 %i.vd, 0
  br i1 %i.ve, label %bb.cz, label %_RNvXs4_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEENtNtB7_5clone5Clone5cloneCs4xylOWI7Ys4_12typst_render.exit51.i.i

bb.cz:                                            ; preds = %bb.cy
  call void @llvm.trap()
  unreachable

bb.da:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEEECs4xylOWI7Ys4_12typst_render.exit.i.i.i
  invoke void @_RNvMs8_NtCsg5ZWEykmiUC_11parking_lot10raw_rwlockNtB5_9RawRwLock21unlock_exclusive_slow(ptr noundef nonnull align 8 @_RNvNvNtCs4xylOWI7Ys4_12typst_render5image13build_texture7___CACHE, i1 noundef zeroext false)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsbQmEUdn7Qi6_8lock_api6rwlock16RwLockWriteGuardNtNtCsg5ZWEykmiUC_11parking_lot10raw_rwlock9RawRwLockINtNtCsloFShupyl5J_6comemo7memoize9CacheDataINtNvNtB2o_5inputs1_1__9MultiCalluuuEINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEEEEECs4xylOWI7Ys4_12typst_render.exit.i.i unwind label %bb.fh, !noalias !1798

_RNvXs4_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEENtNtB7_5clone5Clone5cloneCs4xylOWI7Ys4_12typst_render.exit51.i.i: ; preds = %bb.cy, %bb.cx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1744
  store ptr %.sroa.0.0.i42.i.i, ptr %i.f, align 8, !noalias !1744
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.vf = cmpxchg weak ptr %i.ap, i8 0, i8 1 acquire monotonic, align 1, !alias.scope !1743, !noalias !1816
  %i.vg = extractvalue { i8, i1 } %i.vf, 1
  br i1 %i.vg, label %.noexc.i53.i.i, label %bb.db, !prof !19

bb.db:                                            ; preds = %_RNvXs4_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEENtNtB7_5clone5Clone5cloneCs4xylOWI7Ys4_12typst_render.exit51.i.i
  %i.vh = invoke noundef zeroext i1 @_RNvMs1_NtCsg5ZWEykmiUC_11parking_lot9raw_mutexNtB5_8RawMutex9lock_slow(ptr noundef nonnull align 8 dereferenceable(96) %i.ap, i64 undef, i32 noundef -1)
          to label %.noexc.i53.i.i unwind label %bb.fc, !noalias !1798 ; 0 uses

.noexc.i53.i.i:                                   ; preds = %bb.db, %_RNvXs4_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEENtNtB7_5clone5Clone5cloneCs4xylOWI7Ys4_12typst_render.exit51.i.i
  %i.vi = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.d, ptr noundef nonnull align 8 dereferenceable(64) %i.vi, i64 64, i1 false), !noalias !1798
  store i64 0, ptr %i.vi, align 8, !alias.scope !1743, !noalias !1816
  store ptr inttoptr (i64 16 to ptr), ptr %.sroa.2.0..sroa_idx.i.i, align 8, !alias.scope !1743, !noalias !1816
  store i64 0, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !alias.scope !1743, !noalias !1816
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(32) @40, i64 32, i1 false), !noalias !1816
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !1743, !noalias !1816
  %i.vj = getelementptr inbounds nuw i8, ptr %i.ap, i64 72 ; 2 uses
  %i.vk = getelementptr inbounds nuw i8, ptr %i.d, i64 64 ; 2 uses
end_hunk_0
