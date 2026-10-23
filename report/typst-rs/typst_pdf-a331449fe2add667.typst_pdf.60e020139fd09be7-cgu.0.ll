Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst_pdf-a331449fe2add667.typst_pdf.60e020139fd09be7-cgu.0?download=true
inline.NumInlined: 7942
inline.NumDeleted: 3845
loop-unroll.NumCompletelyUnrolled: 32
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 52
begin_hunk_0_@_RNvNtCs8jFhWeO2DFb_9typst_pdf7convert12handle_frame:bb.a
  br i1 %i.bph, label %bb.nd, label %bb.nk

bb.nd:                                            ; preds = %bb.nc
  fence acquire, !noalias !15920
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCsidf7BFzONoc_6krilla4util9PrehashedNtNtNtBL_4text4font4ReprEE9drop_slowBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.az) #38
          to label %bb.nk unwind label %bb.mn, !noalias !15925

bb.ne:                                            ; preds = %bb.mv
  %i.bpi = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bpj = atomicrmw add ptr %i.bnd, i64 -1 release, align 8, !noalias !16156
  %i.bpk = icmp eq i64 %i.bpj, 1
  br i1 %i.bpk, label %bb.nf, label %.noexc7.i48.i

bb.nf:                                            ; preds = %bb.ne
  fence acquire, !noalias !15920
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsdaEETE4DqmE_13typst_library4text4font17FontInstanceInnerE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ay) #38
          to label %.noexc7.i48.i unwind label %bb.ng, !noalias !15925

bb.ng:                                            ; preds = %bb.nh, %bb.nf
  %i.bpl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43, !noalias !15925
  unreachable

.noexc7.i48.i:                                    ; preds = %bb.nf, %bb.ne
  call void @llvm.experimental.noalias.scope.decl(metadata !16157), !noalias !15920
  call void @llvm.experimental.noalias.scope.decl(metadata !16158), !noalias !15920
  call void @llvm.experimental.noalias.scope.decl(metadata !16159), !noalias !15920
  %i.bpm = load ptr, ptr %i.az, align 8, !alias.scope !16160, !noalias !16141, !nonnull !10, !noundef !10
  %i.bpn = atomicrmw add ptr %i.bpm, i64 -1 release, align 8, !noalias !16161
  %i.bpo = icmp eq i64 %i.bpn, 1
  br i1 %i.bpo, label %bb.nh, label %.body17.i

bb.nh:                                            ; preds = %.noexc7.i48.i
  fence acquire, !noalias !15920
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCsidf7BFzONoc_6krilla4util9PrehashedNtNtNtBL_4text4font4ReprEE9drop_slowBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.az) #38
          to label %.body17.i unwind label %bb.ng, !noalias !15925

bb.ni:                                            ; preds = %bb.ms
  call void @llvm.trap(), !noalias !15920
  unreachable

bb.nj:                                            ; preds = %bb.nb, %bb.na
  %i.bpp = phi i8 [ %.pre.i.i317, %bb.nb ], [ %i.box, %bb.na ]
  %.sroa.3.0.i.ph.i.i42.i = phi i64 [ %i.bpc, %bb.nb ], [ %.sroa.4.121.i.i.i41.i, %bb.na ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !16162), !noalias !15920
  %i.bpq = getelementptr inbounds nuw i8, ptr %.val.i.i22.i, i64 %.sroa.3.0.i.ph.i.i42.i
  %i.bpr = and i8 %i.bpp, 1
  %i.bps = zext nneg i8 %i.bpr to i64
  %i.bpt = add i64 %.sroa.3.0.i.ph.i.i42.i, -16
  %i.bpu = and i64 %i.bpt, %.val5.i.i23.i
  store i8 %i.bnr, ptr %i.bpq, align 1, !noalias !16150
  %i.bpv = getelementptr i8, ptr %.val.i.i22.i, i64 %i.bpu
  %i.bpw = getelementptr i8, ptr %i.bpv, i64 16
  store i8 %i.bnr, ptr %i.bpw, align 1, !noalias !16150
  %i.bpx = load <2 x i64>, ptr %i.ns, align 8, !alias.scope !16163, !noalias !15920
  %i.bpy = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.bps, i64 0
  %i.bpz = sub <2 x i64> %i.bpx, %i.bpy
  store <2 x i64> %i.bpz, ptr %i.ns, align 8, !alias.scope !16163, !noalias !15920
  %i.bqa = sub nsw i64 0, %.sroa.3.0.i.ph.i.i42.i
  %i.bqb = getelementptr inbounds [16 x i8], ptr %.val.i.i22.i, i64 %i.bqa ; 2 uses
  %i.bqc = getelementptr inbounds i8, ptr %i.bqb, i64 -16
  store ptr %.val.i.i.i.i21.i, ptr %i.bqc, align 8, !noalias !16150
  %i.bqd = getelementptr inbounds i8, ptr %i.bqb, i64 -8
  store ptr %i.bnd, ptr %i.bqd, align 8, !noalias !16150
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !15922
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !15922
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdaEETE4DqmE_13typst_library4text4font12FontInstanceEECs8jFhWeO2DFb_9typst_pdf.exit.i

bb.nk:                                            ; preds = %bb.nd, %bb.nc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !15922
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !15922
  store ptr %i.bpe, ptr %i.cd, align 8, !noalias !15922
  %i.bqe = atomicrmw add ptr %i.bpe, i64 -1 release, align 8, !noalias !16164
  %i.bqf = icmp eq i64 %i.bqe, 1
  br i1 %i.bqf, label %bb.nl, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdaEETE4DqmE_13typst_library4text4font12FontInstanceEECs8jFhWeO2DFb_9typst_pdf.exit.i

bb.nl:                                            ; preds = %bb.nk
  fence acquire, !noalias !15920
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsdaEETE4DqmE_13typst_library4text4font17FontInstanceInnerE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.cd) #38
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdaEETE4DqmE_13typst_library4text4font12FontInstanceEECs8jFhWeO2DFb_9typst_pdf.exit.i unwind label %bb.mn, !noalias !15925

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdaEETE4DqmE_13typst_library4text4font12FontInstanceEECs8jFhWeO2DFb_9typst_pdf.exit.i: ; preds = %bb.nl, %bb.nk, %bb.nj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cd), !noalias !15922
  %i.bqg = load ptr, ptr %i.cf, align 8, !noalias !15922, !nonnull !10, !noundef !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cf), !noalias !15922
  br label %bb.gm

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library4text4font12FontInstanceECs8jFhWeO2DFb_9typst_pdf.exit9.sink.split.i: ; preds = %bb.lu, %bb.gm
  %.sroa.7.0 = phi i64 [ %.sroa.7.1, %bb.gm ], [ %.sroa.7.0.i, %bb.lu ] ; 2 uses
  %.sroa.0408.0 = phi ptr [ null, %bb.gm ], [ %.sroa.0.0.i313, %bb.lu ] ; 2 uses
  fence acquire, !noalias !15920
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsdaEETE4DqmE_13typst_library4text4font17FontInstanceInnerE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.cg) #38
          to label %bb.no unwind label %.loopexit.split-lp513.loopexit.split-lp.loopexit.split-lp

bb.nm:                                            ; preds = %bb.mo, %bb.gj
  %i.bqh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43, !noalias !15925
  unreachable

bb.nn:                                            ; preds = %bb.gd
  call void @llvm.trap()
  unreachable

bb.no:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library4text4font12FontInstanceECs8jFhWeO2DFb_9typst_pdf.exit9.sink.split.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cg)
  %.not38.i = icmp eq ptr %.sroa.0408.0, null
  br i1 %.not38.i, label %bb.np, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsidf7BFzONoc_6krilla4text4font4FontECs8jFhWeO2DFb_9typst_pdf.exit

bb.np:                                            ; preds = %.thread, %bb.no
  %.sroa.7.2421 = phi i64 [ %.sroa.7.1, %.thread ], [ %.sroa.7.0, %bb.no ]
  %i.bqi = inttoptr i64 %.sroa.7.2421 to ptr
  store ptr %i.bqi, ptr %i.es, align 8, !noalias !15784
  call void @llvm.lifetime.start.p0(ptr nonnull %i.er), !noalias !15784
  %i.bqj = load i64, ptr %i.fg, align 8, !alias.scope !16165, !noundef !10 ; 2 uses
  %.not.i281 = icmp eq i64 %i.bqj, 0
  br i1 %.not.i281, label %bb.nq, label %bb.ns, !prof !13

bb.nq:                                            ; preds = %bb.np
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @223) #42
          to label %.noexc282 unwind label %.loopexit.split-lp518.loopexit.split-lp.loopexit.split-lp

.noexc282:                                        ; preds = %bb.nq
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsidf7BFzONoc_6krilla8graphics5paint4FillECs8jFhWeO2DFb_9typst_pdf.exit: ; preds = %.loopexit.split-lp518.loopexit.split-lp.loopexit.split-lp, %bb.nt, %.thread428, %bb.od
  %.pn44.i = phi { ptr, i32 } [ %.pn41.pn.i431, %.thread428 ], [ %.pn41.i, %bb.od ], [ %i.bqv, %bb.nt ], [ %lpad.loopexit.split-lp4811, %.loopexit.split-lp518.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !16166)
  call void @llvm.experimental.noalias.scope.decl(metadata !16167), !noalias !15920
  call void @llvm.experimental.noalias.scope.decl(metadata !16168), !noalias !15920
  %i.bqk = load ptr, ptr %i.es, align 8, !alias.scope !16169, !noalias !15920, !nonnull !10, !noundef !10
  %i.bql = atomicrmw add ptr %i.bqk, i64 -1 release, align 8, !noalias !16170
  %i.bqm = icmp eq i64 %i.bql, 1
  br i1 %i.bqm, label %bb.nr, label %.body324

bb.nr:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsidf7BFzONoc_6krilla8graphics5paint4FillECs8jFhWeO2DFb_9typst_pdf.exit
  fence acquire, !noalias !15920
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCsidf7BFzONoc_6krilla4util9PrehashedNtNtNtBL_4text4font4ReprEE9drop_slowBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.es) #38
          to label %.body324 unwind label %bb.pv

.loopexit.split-lp518.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ns, %bb.og, %bb.nq
  %lpad.loopexit.split-lp4811 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsidf7BFzONoc_6krilla8graphics5paint4FillECs8jFhWeO2DFb_9typst_pdf.exit

bb.ns:                                            ; preds = %bb.np
  %i.bqn = load ptr, ptr %i.fk, align 8, !alias.scope !16165, !nonnull !10, !noundef !10
  %i.bqo = getelementptr [112 x i8], ptr %i.bqn, i64 %i.bqj
  %i.bqp = getelementptr i8, ptr %i.bqo, i64 -112
  %i.bqq = getelementptr inbounds nuw i8, ptr %.sroa.07.01135, i64 128
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !16171
  invoke fastcc void @_RNvNtCs8jFhWeO2DFb_9typst_pdf5paint13convert_paint(ptr noalias nofree noundef align 8 captures(address) dereferenceable(88) %i.h, ptr noalias nofree noundef nonnull align 8 dereferenceable(672) %5, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bqq, i1 noundef zeroext true, ptr noalias nofree noundef nonnull align 8 dereferenceable(976) %4, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.bqp, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(136) null, i1 noundef zeroext false)
          to label %.noexc unwind label %.loopexit.split-lp518.loopexit.split-lp.loopexit.split-lp, !inline_history !15347

.noexc:                                           ; preds = %bb.ns
  %i.bqr = load i64, ptr %i.h, align 8, !range !51, !noalias !16171, !noundef !10 ; 3 uses
  %i.bqs = icmp eq i64 %i.bqr, -1
  %i.bqt = load ptr, ptr %.sroa.413.0..sroa_idx.i2403, align 8, !noalias !16171 ; 3 uses
  %i.bqu = load i64, ptr %.sroa.514.0..sroa_idx.i, align 8, !noalias !16171 ; 3 uses
  br i1 %i.bqs, label %bb.ny, label %bb.nu

bb.nt:                                            ; preds = %bb.nv
  %i.bqv = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsidf7BFzONoc_6krilla8graphics5paint5PaintECs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef align 8 dereferenceable(80) %i.g) #44
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsidf7BFzONoc_6krilla8graphics5paint4FillECs8jFhWeO2DFb_9typst_pdf.exit unwind label %bb.nx, !noalias !16172, !inline_history !15347

bb.nu:                                            ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !16171
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.419.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.615.0..sroa_idx.i, i64 56, i1 false), !noalias !16171
  %.sroa.7.0.copyload.i2405 = load i8, ptr %.sroa.7.0..sroa_idx.i2404, align 8, !noalias !16171
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !16171
  store i64 %i.bqr, ptr %i.g, align 8, !noalias !16171
  store ptr %i.bqt, ptr %.sroa.2.0..sroa_idx.i2406, align 8, !noalias !16171
  store i64 %i.bqu, ptr %.sroa.318.0..sroa_idx.i, align 8, !noalias !16171
  %i.bqw = uitofp i8 %.sroa.7.0.copyload.i2405 to float
  %i.bqx = fdiv float %i.bqw, 2.550000e+02        ; 2 uses
  %i.bqy = fcmp ugt float %i.bqx, 1.000000e+00
  br i1 %i.bqy, label %bb.nv, label %bb.nz, !prof !81

bb.nv:                                            ; preds = %bb.nu
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @266) #39
          to label %bb.nw unwind label %bb.nt, !noalias !16172, !inline_history !15347

bb.nw:                                            ; preds = %bb.nv
  unreachable

bb.nx:                                            ; preds = %bb.nt
  %i.bqz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43, !noalias !16172, !inline_history !15347
  unreachable

bb.ny:                                            ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !16171
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsidf7BFzONoc_6krilla8graphics5paint4FillECs8jFhWeO2DFb_9typst_pdf.exit272

bb.nz:                                            ; preds = %bb.nu
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.612.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.419.0..sroa_idx.i, i64 56, i1 false), !noalias !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !16171
  store float %i.bqx, ptr %.sroa.13.24..sroa.612.0..sroa_idx.i.sroa_idx, align 8, !noalias !15784
  store i8 0, ptr %.sroa.14.24..sroa.612.0..sroa_idx.i.sroa_idx, align 4, !noalias !15784
  store i64 %i.bqr, ptr %i.er, align 8, !noalias !15784
  store ptr %i.bqt, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !15784
  store i64 %i.bqu, ptr %.sroa.511.0..sroa_idx.i, align 8, !noalias !15784
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eq), !noalias !15784
  %i.bra = getelementptr inbounds nuw i8, ptr %.sroa.07.01135, i64 48 ; 2 uses
  %i.brb = load i64, ptr %i.bra, align 16, !range !38, !alias.scope !15783, !noundef !10
  %.not39.i = icmp eq i64 %i.brb, -2
  br i1 %.not39.i, label %bb.oc, label %bb.oa

bb.oa:                                            ; preds = %bb.nz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ep), !noalias !15784
  %i.brc = load i64, ptr %i.fg, align 8, !alias.scope !16173, !noundef !10 ; 2 uses
  %.not.i276 = icmp eq i64 %i.brc, 0
  br i1 %.not.i276, label %bb.ob, label %bb.oe, !prof !13

bb.ob:                                            ; preds = %bb.oa
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @223) #42
          to label %.noexc277 unwind label %.thread428.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc277:                                        ; preds = %bb.ob
  unreachable

bb.oc:                                            ; preds = %bb.nz
  store i64 -2, ptr %i.eq, align 8, !noalias !15784
  br label %bb.ok

bb.od:                                            ; preds = %bb.pw, %bb.oi
  br i1 %.sroa.028.1.i, label %.thread428, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsidf7BFzONoc_6krilla8graphics5paint4FillECs8jFhWeO2DFb_9typst_pdf.exit

.thread428.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.oe, %bb.ob
  %lpad.loopexit.split-lp4814 = landingpad { ptr, i32 }
          cleanup
  br label %.thread428

bb.oe:                                            ; preds = %bb.oa
  %i.brd = load ptr, ptr %i.fk, align 8, !alias.scope !16173, !nonnull !10, !noundef !10
  %i.bre = getelementptr [112 x i8], ptr %i.brd, i64 %i.brc
  %i.brf = getelementptr i8, ptr %i.bre, i64 -112
  invoke fastcc void @_RNvNtCs8jFhWeO2DFb_9typst_pdf5paint14convert_stroke(ptr noalias nofree noundef align 8 captures(none) dereferenceable(128) %i.ep, ptr noalias nofree noundef nonnull align 8 dereferenceable(672) %5, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.bra, i1 noundef zeroext true, ptr noalias nofree noundef align 8 dereferenceable(976) %4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.brf, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(136) null)
          to label %bb.of unwind label %.thread428.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !14736

bb.of:                                            ; preds = %bb.oe
  %i.brg = load i64, ptr %i.ep, align 8, !range !38, !noalias !15784, !noundef !10 ; 2 uses
  %i.brh = icmp eq i64 %i.brg, -2
  %i.bri = load ptr, ptr %.sroa.434.0..sroa_idx.i, align 8, !noalias !15784 ; 2 uses
  %i.brj = load i64, ptr %.sroa.535.0..sroa_idx.i, align 8, !noalias !15784 ; 2 uses
  br i1 %i.brh, label %bb.og, label %bb.oh

bb.og:                                            ; preds = %bb.of
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ep), !noalias !15784
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eq), !noalias !15784
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsidf7BFzONoc_6krilla8graphics5paint5PaintECs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.er)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsidf7BFzONoc_6krilla8graphics5paint4FillECs8jFhWeO2DFb_9typst_pdf.exit272 unwind label %.loopexit.split-lp518.loopexit.split-lp.loopexit.split-lp

bb.oh:                                            ; preds = %bb.of
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.425.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.636.0..sroa_idx.i, i64 104, i1 false), !noalias !15784
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ep), !noalias !15784
  store i64 %i.brg, ptr %i.eq, align 8, !noalias !15784
  store ptr %i.bri, ptr %.sroa.2.0..sroa_idx.i, align 8, !noalias !15784
  store i64 %i.brj, ptr %.sroa.3.0..sroa_idx.i, align 8, !noalias !15784
  br label %bb.ok

bb.oi:                                            ; preds = %.body264, %bb.oj
  %.sroa.027.1.i = phi i8 [ %.sroa.028.2.i, %bb.oj ], [ %.sroa.027.3.i, %.body264 ]
  %.sroa.028.1.i = phi i1 [ %i.brl, %bb.oj ], [ false, %.body264 ]
  %.pn41.i = phi { ptr, i32 } [ %lpad.phi530, %bb.oj ], [ %.pn.i, %.body264 ] ; 2 uses
  %i.brk = trunc nuw i8 %.sroa.027.1.i to i1
  br i1 %i.brk, label %bb.pw, label %bb.od

.loopexit525:                                     ; preds = %bb.om, %_RNvXNvCs6xpQEr8gLsQ_11typst_utils5deferINtB2_11DeferHandleNtNtCsidf7BFzONoc_6krilla7surface7SurfaceNCNvNtCs8jFhWeO2DFb_9typst_pdf4text11handle_text0ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB1F_.exit.i
  %.sroa.028.2.i.ph = phi i8 [ 1, %bb.om ], [ 0, %_RNvXNvCs6xpQEr8gLsQ_11typst_utils5deferINtB2_11DeferHandleNtNtCsidf7BFzONoc_6krilla7surface7SurfaceNCNvNtCs8jFhWeO2DFb_9typst_pdf4text11handle_text0ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB1F_.exit.i ]
  %lpad.loopexit528 = landingpad { ptr, i32 }
          cleanup
  br label %bb.oj

.loopexit.split-lp526:                            ; preds = %bb.ol
  %lpad.loopexit.split-lp529 = landingpad { ptr, i32 }
          cleanup
  br label %bb.oj

bb.oj:                                            ; preds = %.loopexit.split-lp526, %.loopexit525
  %.sroa.028.2.i = phi i8 [ %.sroa.028.2.i.ph, %.loopexit525 ], [ 1, %.loopexit.split-lp526 ] ; 2 uses
  %lpad.phi530 = phi { ptr, i32 } [ %lpad.loopexit528, %.loopexit525 ], [ %lpad.loopexit.split-lp529, %.loopexit.split-lp526 ]
  %i.brl = trunc nuw i8 %.sroa.028.2.i to i1
  br label %bb.oi

bb.ok:                                            ; preds = %bb.oc, %bb.oh
  %i.brm = getelementptr inbounds nuw i8, ptr %.sroa.07.01135, i64 168 ; 2 uses
  %i.brn = getelementptr inbounds nuw i8, ptr %.sroa.07.01135, i64 183
  %i.bro = load i8, ptr %i.brn, align 1, !alias.scope !16174, !noundef !10 ; 2 uses
  %.not.i273 = icmp sgt i8 %i.bro, -1             ; 2 uses
  %i.brp = and i8 %i.bro, 127
  %i.brq = zext nneg i8 %i.brp to i64
  %i.brr = load ptr, ptr %i.brm, align 8, !alias.scope !16174, !nonnull !10
  %i.brs = getelementptr inbounds nuw i8, ptr %.sroa.07.01135, i64 176
  %i.brt = load i64, ptr %i.brs, align 16, !alias.scope !16174
  %.sroa.3.0.i274 = select i1 %.not.i273, i64 %i.brt, i64 %i.brq ; 3 uses
  %.sroa.0.0.i275 = select i1 %.not.i273, ptr %i.brr, ptr %i.brm ; 3 uses
  %i.bru = getelementptr inbounds nuw i8, ptr %.sroa.07.01135, i64 160
  %i.brv = load double, ptr %i.bru, align 16, !alias.scope !15783, !noundef !10
  %i.brw = getelementptr inbounds nuw i8, ptr %.sroa.07.01135, i64 32
  %i.brx = load ptr, ptr %i.brw, align 16, !alias.scope !15783, !nonnull !10, !noundef !10 ; 5 uses
  %i.bry = getelementptr inbounds nuw i8, ptr %.sroa.07.01135, i64 40
  %i.brz = load i64, ptr %i.bry, align 8, !alias.scope !15783, !noundef !10 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eo), !noalias !15784
  %i.bsa = load i64, ptr %i.fg, align 8, !alias.scope !16175, !noundef !10 ; 2 uses
  %.not.i269 = icmp eq i64 %i.bsa, 0
  br i1 %.not.i269, label %bb.ol, label %bb.om, !prof !13

bb.ol:                                            ; preds = %bb.ok
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @223) #42
          to label %.noexc270 unwind label %.loopexit.split-lp526

.noexc270:                                        ; preds = %bb.ol
  unreachable

bb.om:                                            ; preds = %bb.ok
  %i.bsb = load ptr, ptr %i.fk, align 8, !alias.scope !16175, !nonnull !10, !noundef !10
  %i.bsc = getelementptr [112 x i8], ptr %i.bsb, i64 %i.bsa ; 2 uses
  %i.bsd = getelementptr i8, ptr %i.bsc, i64 -112
  %.sroa.7413.0..sroa_idx = getelementptr i8, ptr %i.bsc, i64 -80
  %i.bse = load <4 x double>, ptr %i.bsd, align 8, !alias.scope !16176, !noalias !15920
  %i.bsf = fptrunc <4 x double> %i.bse to <4 x float>
  %i.bsg = shufflevector <4 x float> %i.bsf, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.bsh = load <2 x double>, ptr %.sroa.7413.0..sroa_idx, align 8, !alias.scope !16176, !noalias !15920
  %i.bsi = fdiv <2 x double> %i.bsh, splat (double 1.270000e+02)
  %i.bsj = fptrunc <2 x double> %i.bsi to <2 x float>
  store <4 x float> %i.bsg, ptr %i.eo, align 16, !alias.scope !16177, !noalias !15784
  store <2 x float> %i.bsj, ptr %.sroa.7.0..sroa_idx.i, align 16, !alias.scope !16177, !noalias !15784
  invoke void @_RNvMNtCsidf7BFzONoc_6krilla7surfaceNtB2_7Surface14push_transform(ptr noalias nofree noundef nonnull align 8 dereferenceable(976) %4, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(24) %i.eo)
          to label %bb.on unwind label %.loopexit525, !inline_history !14736

bb.on:                                            ; preds = %bb.om
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eo), !noalias !15784
  call void @llvm.lifetime.start.p0(ptr nonnull %i.en), !noalias !15784
  store ptr %4, ptr %i.en, align 8, !noalias !15784
  store i8 1, ptr %i.nv, align 8, !noalias !15784
  call void @llvm.lifetime.start.p0(ptr nonnull %i.em), !noalias !15784
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.em, ptr noundef nonnull align 8 dereferenceable(88) %i.er, i64 88, i1 false), !noalias !15784
  invoke void @_RNvMNtCsidf7BFzONoc_6krilla7surfaceNtB2_7Surface8set_fill(ptr noalias nofree noundef nonnull align 8 dereferenceable(976) %4, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %i.em)
          to label %bb.op unwind label %bb.oo, !inline_history !14736

.body264:                                         ; preds = %bb.os, %bb.pr, %bb.pq, %bb.pl, %bb.ph, %bb.oy, %bb.oo
  %.sroa.027.3.i = phi i8 [ %.sroa.027.4.i, %bb.oo ], [ 0, %bb.oy ], [ 0, %bb.ph ], [ 0, %bb.pl ], [ 0, %bb.pq ], [ 0, %bb.pr ], [ 0, %bb.os ]
  %.pn.i = phi { ptr, i32 } [ %i.bsk, %bb.oo ], [ %i.btb, %bb.oy ], [ %i.buz, %bb.ph ], [ %i.buz, %bb.pl ], [ %lpad.thr_comm.split-lp.i, %bb.pq ], [ %lpad.thr_comm.split-lp.i, %bb.pr ], [ %i.bso, %bb.os ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNvCs6xpQEr8gLsQ_11typst_utils5defer11DeferHandleNtNtCsidf7BFzONoc_6krilla7surface7SurfaceNCNvNtCs8jFhWeO2DFb_9typst_pdf4text11handle_text0EEB2b_(ptr noalias nofree noundef align 8 dereferenceable(16) %i.en) #44
          to label %bb.oi unwind label %bb.pv, !noalias !15920, !inline_history !14736

bb.oo:                                            ; preds = %bb.op, %bb.on
  %.sroa.027.4.i = phi i8 [ 0, %bb.op ], [ 1, %bb.on ]
  %i.bsk = landingpad { ptr, i32 }
          cleanup
  br label %.body264

bb.op:                                            ; preds = %bb.on
  call void @llvm.lifetime.end.p0(ptr nonnull %i.em), !noalias !15784
  invoke void @_RNvMNtCsidf7BFzONoc_6krilla7surfaceNtB2_7Surface10set_stroke(ptr noalias nofree noundef nonnull align 8 dereferenceable(976) %4, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %i.eq)
          to label %bb.oq unwind label %bb.oo, !noalias !15920

bb.oq:                                            ; preds = %bb.op
  %i.bsl = load ptr, ptr %i.es, align 8, !noalias !15784, !nonnull !10, !noundef !10
  %i.bsm = atomicrmw add ptr %i.bsl, i64 1 monotonic, align 8, !noalias !15920
  %i.bsn = icmp slt i64 %i.bsm, 0
  br i1 %i.bsn, label %bb.or, label %bb.ot

bb.or:                                            ; preds = %bb.oq
  call void @llvm.trap()
  unreachable

bb.os:                                            ; preds = %.invoke2398, %bb.pp, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsidf7BFzONoc_6krilla8graphics5paint4FillECs8jFhWeO2DFb_9typst_pdf.exit42.i
  %i.bso = landingpad { ptr, i32 }
          cleanup
  br label %.body264

bb.ot:                                            ; preds = %bb.oq
  %i.bsp = load ptr, ptr %i.es, align 8, !noalias !15784, !nonnull !10, !noundef !10 ; 8 uses
  %i.bsq = fdiv double %i.brv, 1.270000e+02
  %i.bsr = fptrunc double %i.bsq to float         ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !16178)
  call void @llvm.experimental.noalias.scope.decl(metadata !16179)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cn)
  store ptr %i.bsp, ptr %i.cn, align 8, !noalias !16180
  %i.bss = invoke i24 @_RNvMNtCsidf7BFzONoc_6krilla7surfaceNtB2_7Surface13context_color(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(976) %4)
          to label %bb.ou unwind label %bb.pq, !noalias !16181 ; 4 uses

bb.ou:                                            ; preds = %bb.ot
  %i.bst = load i64, ptr %i.nw, align 8, !range !51, !alias.scope !16178, !noalias !15920, !noundef !10
  %.not.i253 = icmp eq i64 %i.bst, -1
  %i.bsu = load i64, ptr %i.nx, align 8, !range !38, !alias.scope !16178, !noalias !15920, !noundef !10
  %.not37.i = icmp eq i64 %i.bsu, -2              ; 2 uses
  br i1 %.not.i253, label %bb.ow, label %bb.ov

bb.ov:                                            ; preds = %bb.ou
  br i1 %.not37.i, label %bb.pb, label %bb.pa

bb.ow:                                            ; preds = %bb.ou
  %i.bsv = load i64, ptr %i.nz, align 8, !alias.scope !16178, !noalias !15920, !noundef !10 ; 2 uses
  %.not.i40.i = icmp eq i64 %i.bsv, 0
  %i.bsw = load ptr, ptr %i.oa, align 8, !alias.scope !16178, !noalias !15920, !nonnull !10
  %i.bsx = getelementptr [656 x i8], ptr %i.bsw, i64 %i.bsv
  %i.bsy = getelementptr i8, ptr %i.bsx, i64 -656
  %.sroa.0.0.i41.i = select i1 %.not.i40.i, ptr %i.ny, ptr %i.bsy ; 2 uses
  %i.bsz = load ptr, ptr %i.ob, align 8, !alias.scope !16178, !noalias !15920, !nonnull !10, !align !21, !noundef !10 ; 2 uses
  %i.bta = load ptr, ptr %i.oc, align 8, !alias.scope !16178, !noalias !15920, !nonnull !10, !align !21, !noundef !10 ; 2 uses
  br i1 %.not37.i, label %bb.ox, label %.invoke2398

bb.ox:                                            ; preds = %bb.ow
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cm), !noalias !16180
  store i64 -9223372036854775808, ptr %i.cm, align 8, !alias.scope !16182, !noalias !16180
  store i64 -1, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !alias.scope !16182, !noalias !16180
  store i8 1, ptr %.sroa.42.sroa.4.0..sroa.42.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !16182, !noalias !16180
  store i8 0, ptr %.sroa.42.sroa.4.sroa.4.0..sroa.42.sroa.4.0..sroa.42.0..sroa_idx.sroa_idx.sroa_idx.i.i, align 1, !alias.scope !16182, !noalias !16180
  store float 1.000000e+00, ptr %i.oi, align 8, !alias.scope !16182, !noalias !16180
  store i8 0, ptr %i.oj, align 4, !alias.scope !16182, !noalias !16180
  invoke fastcc void @_RINvMNtCsidf7BFzONoc_6krilla7contentNtB3_14ContentBuilder11draw_glyphsNtNtCs8jFhWeO2DFb_9typst_pdf4text8PdfGlyphEB1a_(ptr noalias nofree noundef align 8 dereferenceable(656) %.sroa.0.0.i41.i, ptr noalias nofree noundef align 8 dereferenceable(600) %i.bsz, ptr noalias nofree noundef align 8 dereferenceable(2200) %i.bta, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable_or_null(88) %i.cm, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(128) null, i24 %i.bss, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.brx, i64 noundef range(i64 0, 164703072086692426) %i.brz, ptr noundef nonnull %i.bsp, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i275, i64 noundef %.sroa.3.0.i274, float noundef %i.bsr)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsidf7BFzONoc_6krilla8graphics5paint4FillECs8jFhWeO2DFb_9typst_pdf.exit42.i unwind label %bb.oy

bb.oy:                                            ; preds = %bb.ox
  %i.btb = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsidf7BFzONoc_6krilla8graphics5paint5PaintECs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.cm)
          to label %.body264 unwind label %bb.oz, !noalias !15920

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsidf7BFzONoc_6krilla8graphics5paint4FillECs8jFhWeO2DFb_9typst_pdf.exit42.i: ; preds = %bb.ox
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsidf7BFzONoc_6krilla8graphics5paint5PaintECs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.cm)
          to label %.noexc259 unwind label %bb.os

.noexc259:                                        ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsidf7BFzONoc_6krilla8graphics5paint4FillECs8jFhWeO2DFb_9typst_pdf.exit42.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cm), !noalias !16180
  br label %_RNvXNvCs6xpQEr8gLsQ_11typst_utils5deferINtB2_11DeferHandleNtNtCsidf7BFzONoc_6krilla7surface7SurfaceNCNvNtCs8jFhWeO2DFb_9typst_pdf4text11handle_text0ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB1F_.exit.i

bb.oz:                                            ; preds = %bb.pr, %bb.oy
  %i.btc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43, !noalias !15920
  unreachable

bb.pa:                                            ; preds = %bb.ov
  %i.btd = invoke noundef zeroext i1 @_RNvMNtCsidf7BFzONoc_6krilla7surfaceNtB2_7Surface26has_complex_fill_or_stroke(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(976) %4)
          to label %bb.pc unwind label %bb.pq, !noalias !16181

bb.pb:                                            ; preds = %bb.ov
  %i.bte = load i64, ptr %i.nz, align 8, !alias.scope !16183, !noalias !15920, !noundef !10 ; 2 uses
  %.not.i43.i = icmp eq i64 %i.bte, 0
  %i.btf = load ptr, ptr %i.oa, align 8, !alias.scope !16183, !noalias !15920, !nonnull !10
  %i.btg = getelementptr [656 x i8], ptr %i.btf, i64 %i.bte
  %i.bth = getelementptr i8, ptr %i.btg, i64 -656
  %.sroa.0.0.i44.i = select i1 %.not.i43.i, ptr %i.ny, ptr %i.bth
  %i.bti = load ptr, ptr %i.ob, align 8, !alias.scope !16178, !noalias !15920, !nonnull !10, !align !21, !noundef !10
  %i.btj = load ptr, ptr %i.oc, align 8, !alias.scope !16178, !noalias !15920, !nonnull !10, !align !21, !noundef !10
  br label %.invoke2398

bb.pc:                                            ; preds = %bb.pa
  %i.btk = load i64, ptr %i.nz, align 8, !alias.scope !16178, !noalias !15920, !noundef !10 ; 4 uses
  br i1 %i.btd, label %bb.pe, label %bb.pd

bb.pd:                                            ; preds = %bb.pc
  %.not.i45.i = icmp eq i64 %i.btk, 0
  %i.btl = load ptr, ptr %i.oa, align 8, !alias.scope !16184, !noalias !15920, !nonnull !10
  %i.btm = getelementptr [656 x i8], ptr %i.btl, i64 %i.btk
  %i.btn = getelementptr i8, ptr %i.btm, i64 -656
  %.sroa.0.0.i46.i = select i1 %.not.i45.i, ptr %i.ny, ptr %i.btn
  %i.bto = load ptr, ptr %i.ob, align 8, !alias.scope !16178, !noalias !15920, !nonnull !10, !align !21, !noundef !10
  %i.btp = load ptr, ptr %i.oc, align 8, !alias.scope !16178, !noalias !15920, !nonnull !10, !align !21, !noundef !10
  br label %.invoke2398

.invoke2398:                                      ; preds = %bb.ow, %bb.pb, %bb.pd
  %i.btq = phi ptr [ %.sroa.0.0.i46.i, %bb.pd ], [ %.sroa.0.0.i44.i, %bb.pb ], [ %.sroa.0.0.i41.i, %bb.ow ]
  %i.btr = phi ptr [ %i.bto, %bb.pd ], [ %i.bti, %bb.pb ], [ %i.bsz, %bb.ow ]
  %i.bts = phi ptr [ %i.btp, %bb.pd ], [ %i.btj, %bb.pb ], [ %i.bta, %bb.ow ]
  %i.btt = phi ptr [ %i.nw, %bb.pd ], [ %i.nw, %bb.pb ], [ null, %bb.ow ]
  %i.btu = phi ptr [ %i.nx, %bb.pd ], [ null, %bb.pb ], [ %i.nx, %bb.ow ]
  invoke fastcc void @_RINvMNtCsidf7BFzONoc_6krilla7contentNtB3_14ContentBuilder11draw_glyphsNtNtCs8jFhWeO2DFb_9typst_pdf4text8PdfGlyphEB1a_(ptr noalias nofree noundef align 8 dereferenceable(656) %i.btq, ptr noalias nofree noundef align 8 dereferenceable(600) %i.btr, ptr noalias nofree noundef align 8 dereferenceable(2200) %i.bts, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(88) %i.btt, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(128) %i.btu, i24 %i.bss, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.brx, i64 noundef range(i64 0, 164703072086692426) %i.brz, ptr noundef nonnull %i.bsp, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i275, i64 noundef %.sroa.3.0.i274, float noundef %i.bsr)
          to label %_RNvXNvCs6xpQEr8gLsQ_11typst_utils5deferINtB2_11DeferHandleNtNtCsidf7BFzONoc_6krilla7surface7SurfaceNCNvNtCs8jFhWeO2DFb_9typst_pdf4text11handle_text0ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB1F_.exit.i unwind label %bb.os

bb.pe:                                            ; preds = %bb.pc
  %i.btv = load ptr, ptr %i.oa, align 8, !alias.scope !16185, !noalias !15920, !nonnull !10
  %i.btw = load ptr, ptr %i.ob, align 8, !alias.scope !16178, !noalias !15920, !nonnull !10, !align !21, !noundef !10
  %i.btx = load ptr, ptr %i.oc, align 8, !alias.scope !16178, !noalias !15920, !nonnull !10, !align !21, !noundef !10
  %i.bty = atomicrmw add ptr %i.bsp, i64 1 monotonic, align 8, !noalias !16180
  %i.btz = icmp slt i64 %i.bty, 0
  br i1 %i.btz, label %bb.pf, label %_RNvXs4_NtNtCsidf7BFzONoc_6krilla4text4fontNtB5_4FontNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i

bb.pf:                                            ; preds = %bb.pe
  call void @llvm.trap(), !noalias !15920
  unreachable

_RNvXs4_NtNtCsidf7BFzONoc_6krilla4text4fontNtB5_4FontNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i: ; preds = %bb.pe
  %.not.i47.i = icmp eq i64 %i.btk, 0
  %i.bua = getelementptr [656 x i8], ptr %i.btv, i64 %i.btk
  %i.bub = getelementptr i8, ptr %i.bua, i64 -656
  %.sroa.0.0.i48.i = select i1 %.not.i47.i, ptr %i.ny, ptr %i.bub
  invoke fastcc void @_RINvMNtCsidf7BFzONoc_6krilla7contentNtB3_14ContentBuilder11draw_glyphsNtNtCs8jFhWeO2DFb_9typst_pdf4text8PdfGlyphEB1a_(ptr noalias nofree noundef align 8 dereferenceable(656) %.sroa.0.0.i48.i, ptr noalias nofree noundef align 8 dereferenceable(600) %i.btw, ptr noalias nofree noundef align 8 dereferenceable(2200) %i.btx, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable_or_null(88) %i.nw, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(128) null, i24 %i.bss, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.brx, i64 noundef range(i64 0, 164703072086692426) %i.brz, ptr noundef nonnull %i.bsp, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i275, i64 noundef %.sroa.3.0.i274, float noundef %i.bsr)
          to label %bb.pg unwind label %bb.pq

bb.pg:                                            ; preds = %_RNvXs4_NtNtCsidf7BFzONoc_6krilla4text4fontNtB5_4FontNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !16186), !noalias !15920
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cl), !noalias !16180
  store ptr %i.bsp, ptr %i.cl, align 8, !noalias !16187
  %.idx.i.i = mul nuw nsw i64 %i.brz, 56
  %i.buc = getelementptr inbounds nuw i8, ptr %i.brx, i64 %.idx.i.i
  %i.bud = icmp eq i64 %i.brz, 0
  br i1 %i.bud, label %._crit_edge.i.i258, label %.lr.ph.i.i254

.lr.ph.i.i254:                                    ; preds = %bb.pg
  %i.bue = fneg float %i.bsr
  br label %bb.pi

bb.ph:                                            ; preds = %bb.pl
  fence acquire, !noalias !15920
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCsidf7BFzONoc_6krilla4util9PrehashedNtNtNtBL_4text4font4ReprEE9drop_slowBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.cl) #38
          to label %.body264 unwind label %bb.po, !noalias !16188

bb.pi:                                            ; preds = %bb.pn, %.lr.ph.i.i254
  %.sroa.07.019.i.i = phi ptr [ %i.brx, %.lr.ph.i.i254 ], [ %i.buf, %bb.pn ] ; 5 uses
  %.sroa.02.018.i.i255 = phi float [ 0.000000e+00, %.lr.ph.i.i254 ], [ %i.bvl, %bb.pn ] ; 2 uses
  %i.buf = getelementptr inbounds nuw i8, ptr %.sroa.07.019.i.i, i64 56 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ck), !noalias !16187
  %i.bug = getelementptr inbounds nuw i8, ptr %.sroa.07.019.i.i, i64 24
  %i.buh = load double, ptr %i.bug, align 8, !alias.scope !16189, !noalias !15920, !noundef !10
  %i.bui = fptrunc double %i.buh to float
  %i.buj = fmul float %i.bsr, %i.bui
  %i.buk = getelementptr inbounds nuw i8, ptr %.sroa.07.019.i.i, i64 40
  %i.bul = load double, ptr %i.buk, align 8, !alias.scope !16190, !noalias !15920, !noundef !10
  %i.bum = fptrunc double %i.bul to float
  %i.bun = fmul float %i.bsr, %i.bum
  %i.buo = fadd float %.sroa.02.018.i.i255, %i.buj
  %i.bup = fsub float 0.000000e+00, %i.bun
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %i.ck, align 16, !noalias !16187
  store float %i.buo, ptr %i.od, align 16, !noalias !16187
  store float %i.bup, ptr %i.oe, align 4, !noalias !16187
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cj), !noalias !16187
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ci), !noalias !16187
  %.val14.i.i = load ptr, ptr %i.cl, align 8, !noalias !16187, !nonnull !10, !noundef !10
  %i.buq = getelementptr inbounds nuw i8, ptr %.val14.i.i, i64 32
  %i.bur = load ptr, ptr %i.buq, align 16, !noalias !16188, !nonnull !10, !noundef !10
  %i.bus = getelementptr inbounds nuw i8, ptr %i.bur, i64 160
  %i.but = load i16, ptr %i.bus, align 8, !noalias !16188, !noundef !10
  %i.buu = uitofp i16 %i.but to float             ; 2 uses
  %i.buv = fdiv float %i.bsr, %i.buu
  %i.buw = fdiv float %i.bue, %i.buu
end_hunk_0
begin_hunk_1_@_RNvNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4tree5build10push_group:bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20808)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !alias.scope !20809, !noundef !10 ; 3 uses
  %i.af = load i64, ptr %i.ac, align 8, !range !17, !alias.scope !20809, !noundef !10
  %i.ag = icmp eq i64 %i.ae, %i.af
  br i1 %i.ag, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4tree5build10StackEntryE8grow_oneBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ac) #38
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ah = trunc i64 %i.q to i32                   ; 2 uses
  %i.ai = trunc i64 %i.w to i32
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.ak = load ptr, ptr %i.aj, align 8, !alias.scope !20809, !nonnull !10, !noundef !10
  %i.al = getelementptr inbounds nuw [48 x i8], ptr %i.ak, i64 %i.ae ; 4 uses
  store i128 1, ptr %i.al, align 16, !noalias !20809
  %.sroa.4.0..sroa_idx.i7 = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store i128 %i.d, ptr %.sroa.4.0..sroa_idx.i7, align 16, !noalias !20809
  %.sroa.5.0..sroa_idx.i8 = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  store i32 %i.ah, ptr %.sroa.5.0..sroa_idx.i8, align 16, !noalias !20809
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 36
  store i32 %i.ai, ptr %.sroa.6.0..sroa_idx.i, align 4, !noalias !20809
  %i.am = add i64 %i.ae, 1
  store i64 %i.am, ptr %i.ad, align 8, !alias.scope !20809
  ret i32 %i.ah

.body.thread:                                     ; preds = %bb.o, %bb.m, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4tree4text8TextAttrEBJ_.exit.sink.split.i, %bb.h
  %eh.lpad-body3 = phi { ptr, i32 } [ %lpad.thr_comm, %bb.o ], [ %i.u, %bb.h ], [ %lpad.thr_comm, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4tree4text8TextAttrEBJ_.exit.sink.split.i ], [ %lpad.thr_comm, %bb.m ]
  resume { ptr, i32 } %eh.lpad-body3

bb.m:                                             ; preds = %bb.d, %bb.c
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.an = load i8, ptr %1, align 8, !range !53, !alias.scope !20810, !noundef !10
  switch i8 %i.an, label %.body.thread [
    i8 2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4tree4text8TextAttrEBJ_.exit.sink.split.i
    i8 5, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4tree4text8TextAttrEBJ_.exit.sink.split.i
    i8 7, label %bb.n
    i8 9, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4tree4text8TextAttrEBJ_.exit.sink.split.i
    i8 19, label %bb.n
    i8 20, label %bb.n
    i8 21, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4tree4text8TextAttrEBJ_.exit.sink.split.i
    i8 25, label %bb.o
  ]

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4tree4text8TextAttrEBJ_.exit.sink.split.i: ; preds = %bb.o, %bb.n, %bb.m, %bb.m, %bb.m, %bb.m
  %.sink1.i = phi i64 [ 8, %bb.m ], [ 8, %bb.m ], [ 8, %bb.m ], [ 16, %bb.o ], [ 8, %bb.m ], [ 16, %bb.n ]
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 %.sink1.i
  invoke void @_RNvXs2_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3rawNtB5_10RawContentNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ao)
          to label %.body.thread unwind label %bb.p

bb.n:                                             ; preds = %bb.m, %bb.m, %bb.m
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4tree4text8TextAttrEBJ_.exit.sink.split.i

bb.o:                                             ; preds = %bb.m
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aq = load i64, ptr %i.ap, align 8, !range !54, !alias.scope !20811, !noundef !10
  %switch.i.i = icmp samesign ult i64 %i.aq, 2
  br i1 %switch.i.i, label %.body.thread, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4tree4text8TextAttrEBJ_.exit.sink.split.i

bb.p:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4tree4text8TextAttrEBJ_.exit.sink.split.i
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { ptr, i64 } @_RNvNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4tree5build11visit_frame(ptr noalias nofree noundef nonnull align 8 dereferenceable(408) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [80 x i8], align 8                ; 13 uses
  %.sroa.753.i = alloca [7 x i8], align 8         ; 4 uses
  %.sroa.748.i = alloca [7 x i8], align 8         ; 4 uses
  %.sroa.7.i = alloca [7 x i8], align 8           ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 8 uses
  %i.d = alloca [16 x i8], align 8                ; 7 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [72 x i8], align 8                ; 12 uses
  %i.g = alloca [72 x i8], align 8                ; 4 uses
  %i.h = alloca [16 x i8], align 8                ; 8 uses
  %i.i = alloca [16 x i8], align 8                ; 8 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %i.k = alloca [16 x i8], align 8                ; 7 uses
  %i.l = alloca [16 x i8], align 8                ; 5 uses
  %i.m = alloca [72 x i8], align 8                ; 12 uses
  %i.n = alloca [72 x i8], align 8                ; 4 uses
  %i.o = alloca [2 x i8], align 1                 ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  %i.u = load i64, ptr %i.t, align 16, !noundef !10 ; 2 uses
  %.idx = mul nuw nsw i64 %i.u, 192
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 %.idx
  %i.w = icmp eq i64 %i.u, 0
  br i1 %i.w, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 6 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 14 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 6 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 11 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 7 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 320
  %.sroa.386.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 15
  %i.af = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %i.ag = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.ai = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.ak = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.f, i64 40 ; 3 uses
  %.sroa.386.0..sroa_idx87.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 15 ; 2 uses
  %.sroa.753.16..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  %.sroa.437.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 15
  %.sroa.445.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  %i.ao = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %i.aq = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.ar = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.as = getelementptr inbounds nuw i8, ptr %i.m, i64 32 ; 5 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.m, i64 40 ; 5 uses
  %.sroa.437.0..sroa_idx38.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 15 ; 2 uses
  %.sroa.7.16..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.437.0..sroa_idx40.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 15 ; 2 uses
  %.sroa.748.16..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.4.0..sroa_idx18.i = getelementptr inbounds nuw i8, ptr %i.b, i64 25
  %.sroa.522.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %.sroa.4.0..sroa_idx.i.i25 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 76
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 5 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 56
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.at
  %.sroa.01.0211 = phi ptr [ %i.s, %.lr.ph ], [ %i.bk, %bb.at ] ; 9 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.01.0211, i64 192 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.01.0211, i64 16
  %i.bm = load i64, ptr %i.bl, align 16, !range !37, !noundef !10
  switch i64 %i.bm, label %default.unreachable420 [
    i64 0, label %bb.c
    i64 1, label %bb.at
    i64 2, label %bb.at
    i64 3, label %bb.at
    i64 4, label %bb.at
    i64 5, label %bb.au
  ]

default.unreachable420:                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.01.0211, i64 32 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !20980)
  call void @llvm.experimental.noalias.scope.decl(metadata !20981)
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.01.0211, i64 96
  %i.bp = load i8, ptr %i.bo, align 16, !range !64, !alias.scope !20981, !noundef !10 ; 3 uses
  %.not.i = icmp eq i8 %i.bp, 2
  br i1 %.not.i, label %_RNvNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4tree5build17visit_group_frame.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.01.0211, i64 80
  %i.br = load i128, ptr %i.bq, align 16, !alias.scope !20981, !noundef !10 ; 6 uses
  %.val6.i = load i64, ptr %i.z, align 8, !alias.scope !20980, !noundef !10 ; 2 uses
  %.not.i41 = icmp eq i64 %.val6.i, 0
  br i1 %.not.i41, label %bb.e, label %_RNvMNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4tree5buildNtB2_11TreeBuilder7current.exit, !prof !13

bb.e:                                             ; preds = %bb.d
  call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @181) #42, !noalias !20982
  unreachable

_RNvMNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4tree5buildNtB2_11TreeBuilder7current.exit: ; preds = %bb.d
  %.val.i = load ptr, ptr %i.aa, align 8, !alias.scope !20980, !nonnull !10, !noundef !10
  %i.bs = trunc nuw i8 %i.bp to i1
  %i.bt = getelementptr [4 x i8], ptr %.val.i, i64 %.val6.i
  %i.bu = getelementptr i8, ptr %i.bt, i64 -4
  %i.bv = load i32, ptr %i.bu, align 4, !noalias !20982, !noundef !10 ; 2 uses
  %i.bw = load i64, ptr %i.y, align 8, !noundef !10 ; 5 uses
  %i.bx = icmp ult i64 %i.bw, 192153584101141163
  call void @llvm.assume(i1 %i.bx)
  call void @llvm.experimental.noalias.scope.decl(metadata !20983)
  %spec.select = select i1 %i.bs, i32 %i.bv, i32 -1
  call void @llvm.experimental.noalias.scope.decl(metadata !20984), !noalias !20981
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !20985
  store i32 %spec.select, ptr %i.au, align 8, !noalias !20985
  store i64 1, ptr %i.av, align 8, !noalias !20985
  store i8 3, ptr %i.aw, align 8, !noalias !20986
  store i8 %i.bp, ptr %.sroa.4.0..sroa_idx18.i, align 1, !noalias !20986
  store i32 -1, ptr %.sroa.522.0..sroa_idx.i, align 4, !noalias !20986
  store i64 0, ptr %i.b, align 8, !noalias !20985
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i.i25, align 8, !noalias !20985
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !20985
  store i8 0, ptr %i.ax, align 4, !noalias !20985
  %i.by = load i64, ptr %i.ad, align 8, !alias.scope !20987, !noalias !20981, !noundef !10 ; 5 uses
  %i.bz = icmp ult i64 %i.by, 115292150460684698
  call void @llvm.assume(i1 %i.bz), !noalias !20981
  call void @llvm.experimental.noalias.scope.decl(metadata !20988), !noalias !20981
  %i.ca = load i64, ptr %i.ab, align 8, !range !17, !alias.scope !20989, !noalias !20981, !noundef !10
  %i.cb = icmp eq i64 %i.by, %i.ca
  br i1 %i.cb, label %bb.f, label %_RNvMs_NtNtCs8jFhWeO2DFb_9typst_pdf4tags6groupsNtB4_6Groups11new_virtual.exit.i

bb.f:                                             ; preds = %_RNvMNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4tree5buildNtB2_11TreeBuilder7current.exit
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags6groups5GroupE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.ab)
          to label %_RNvMs_NtNtCs8jFhWeO2DFb_9typst_pdf4tags6groupsNtB4_6Groups11new_virtual.exit.i unwind label %bb.g, !noalias !20990

bb.g:                                             ; preds = %bb.f
  %i.cc = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags6groups5GroupEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.b) #44
          to label %common.resume unwind label %bb.h, !noalias !20991

bb.h:                                             ; preds = %bb.g
  %i.cd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43, !noalias !20991
  unreachable

common.resume:                                    ; preds = %bb.ce, %bb.ch, %.body22.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.cq, %.body.i, %bb.g, %bb.z, %bb.aa, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4tree5build10StackEntryEEB1g_.exit.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.ht, %bb.z ], [ %i.kw, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4tree5build10StackEntryEEB1g_.exit.i.i ], [ %i.cc, %bb.g ], [ %i.ht, %bb.aa ], [ %i.qu, %bb.ce ], [ %i.qx, %bb.ch ], [ %.pn122.i.i, %.body.i ], [ %lpad.loopexit.split-lp748, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %.pn.i.i, %.body22.i ], [ %i.rl, %bb.cq ]
  resume { ptr, i32 } %common.resume.op

_RNvMs_NtNtCs8jFhWeO2DFb_9typst_pdf4tags6groupsNtB4_6Groups11new_virtual.exit.i: ; preds = %bb.f, %_RNvMNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4tree5buildNtB2_11TreeBuilder7current.exit
  %i.ce = trunc i64 %i.by to i32                  ; 2 uses
  %i.cf = load ptr, ptr %i.ac, align 8, !alias.scope !20989, !noalias !20981, !nonnull !10, !noundef !10
  %i.cg = getelementptr inbounds nuw [80 x i8], ptr %i.cf, i64 %i.by
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.cg, ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 80, i1 false), !noalias !20991
  %i.ch = add nuw nsw i64 %i.by, 1
  store i64 %i.ch, ptr %i.ad, align 8, !alias.scope !20989, !noalias !20981
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !20985
  call void @llvm.experimental.noalias.scope.decl(metadata !20992), !noalias !20981
  %i.ci = trunc i128 %i.br to i64                 ; 2 uses
  %i.cj = mul i64 %i.ci, -1065810590584100411
  %i.ck = lshr i128 %i.br, 64
  %i.cl = trunc nuw i128 %i.ck to i64             ; 2 uses
  %i.cm = add i64 %i.cj, %i.cl
  %i.cn = mul i64 %i.cm, -1065810590584100411     ; 2 uses
  %i.co = call noundef i64 @llvm.fshl.i64(i64 %i.cn, i64 %i.cn, i64 26) ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !20993), !noalias !20981
  call void @llvm.experimental.noalias.scope.decl(metadata !20994), !noalias !20981
  %i.cp = lshr i64 %i.co, 57
  %i.cq = trunc nuw nsw i64 %i.cp to i8           ; 5 uses
  %i.cr = load i64, ptr %i.ba, align 8, !alias.scope !20995, !noalias !20981, !noundef !10 ; 3 uses
  %i.cs = load ptr, ptr %i.ay, align 8, !alias.scope !20995, !noalias !20981, !nonnull !10, !noundef !10 ; 3 uses
  %i.ct = insertelement <16 x i8> poison, i8 %i.cq, i64 0
  %i.cu = shufflevector <16 x i8> %i.ct, <16 x i8> poison, <16 x i32> zeroinitializer ; 3 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.k, %_RNvMs_NtNtCs8jFhWeO2DFb_9typst_pdf4tags6groupsNtB4_6Groups11new_virtual.exit.i
  %.sroa.9.0.i.i.i.i = phi i64 [ 0, %_RNvMs_NtNtCs8jFhWeO2DFb_9typst_pdf4tags6groupsNtB4_6Groups11new_virtual.exit.i ], [ %i.dl, %bb.k ]
  %.pn.i.i.i = phi i64 [ %i.co, %_RNvMs_NtNtCs8jFhWeO2DFb_9typst_pdf4tags6groupsNtB4_6Groups11new_virtual.exit.i ], [ %i.dm, %bb.k ]
  %.sroa.01.0.i.i.i.i = and i64 %.pn.i.i.i, %i.cr ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cs, i64 %.sroa.01.0.i.i.i.i
  %.sroa.0.0.copyload.i24.i.i.i = load <16 x i8>, ptr %i.cv, align 1, !noalias !20996 ; 2 uses
  %i.cw = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i, %i.cu
  %i.cx = bitcast <16 x i1> %i.cw to i16          ; 2 uses
  %.not.i.not30.i.i.i = icmp eq i16 %i.cx, 0
  br i1 %.not.i.not30.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.i, %bb.j
  %.sroa.06.0.i31.i.i.i = phi i16 [ %i.dk, %bb.j ], [ %i.cx, %bb.i ] ; 3 uses
  %i.cy = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i.i, i1 true)
  %i.cz = zext nneg i16 %i.cy to i64
  %i.da = add i64 %.sroa.01.0.i.i.i.i, %i.cz
  %i.db = and i64 %i.da, %i.cr
  %i.dc = sub nsw i64 0, %i.db
  %i.dd = getelementptr inbounds [48 x i8], ptr %i.cs, i64 %i.dc ; 2 uses
  %i.de = getelementptr inbounds i8, ptr %i.dd, i64 -48
  %.val2.i.i.i.i26 = load i128, ptr %i.de, align 16, !noalias !20997, !noundef !10
  %i.df = icmp eq i128 %.val2.i.i.i.i26, %i.br
  br i1 %i.df, label %_RNvMs19_NtNtNtCsaL1QbXo9JQH_3std11collections4hash3mapINtB6_5EntryNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationINtCsiSzwKAiqS6b_8smallvec8SmallVecAINtNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util5idvec2IdNtNtB2P_6groups5GroupEj4_EE10or_defaultB2R_.exit.i, label %bb.j, !prof !16

._crit_edge.i.i.i:                                ; preds = %bb.j, %bb.i
  %i.dg = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i, splat (i8 -1)
  %i.dh = bitcast <16 x i1> %i.dg to i16
  %i.di = icmp eq i16 %i.dh, 0
  br i1 %i.di, label %bb.k, label %bb.l, !prof !13

bb.j:                                             ; preds = %.lr.ph.i.i.i
  %i.dj = add i16 %.sroa.06.0.i31.i.i.i, -1
  %i.dk = and i16 %i.dj, %.sroa.06.0.i31.i.i.i    ; 2 uses
  %.not.i.not.i.i.i = icmp eq i16 %i.dk, 0
  br i1 %.not.i.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

bb.k:                                             ; preds = %._crit_edge.i.i.i
  %i.dl = add i64 %.sroa.9.0.i.i.i.i, 16          ; 2 uses
  %i.dm = add i64 %.sroa.01.0.i.i.i.i, %i.dl
  br label %bb.i

bb.l:                                             ; preds = %._crit_edge.i.i.i
  %i.dn = load i64, ptr %i.bb, align 8, !alias.scope !20998, !noalias !20981, !noundef !10
  %i.do = icmp eq i64 %i.dn, 0
  br i1 %i.do, label %bb.m, label %bb.n, !prof !13

bb.m:                                             ; preds = %bb.l
  %i.dp = call { i64, i64 } @_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationINtCsiSzwKAiqS6b_8smallvec8SmallVecAINtNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util5idvec2IdNtNtB2D_6groups5GroupEj4_EEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B1W_NtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE0EB2F_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ay, i64 noundef 1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.az, i1 noundef zeroext true) #38, !noalias !20999 ; 0 uses
  %.val.i.i.pre.i = load ptr, ptr %i.ay, align 8, !alias.scope !21000, !noalias !21001
  %.val3.i.i.pre.i = load i64, ptr %i.ba, align 8, !alias.scope !21000, !noalias !21001
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.val3.i.i.i = phi i64 [ %.val3.i.i.pre.i, %bb.m ], [ %i.cr, %bb.l ] ; 4 uses
  %.val.i.i.i27 = phi ptr [ %.val.i.i.pre.i, %bb.m ], [ %i.cs, %bb.l ] ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !21002), !noalias !20981
  %.sroa.0.07.i.i.i.i = and i64 %.val3.i.i.i, %i.co ; 3 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.val.i.i.i27, i64 %.sroa.0.07.i.i.i.i
  %.sroa.0.0.copyload.i68.i.i.i.i = load <16 x i8>, ptr %i.dq, align 1, !noalias !21003
  %i.dr = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i.i.i.i, zeroinitializer
  %i.ds = bitcast <16 x i1> %i.dr to i16          ; 2 uses
  %.not.i9.i.i.i.i = icmp eq i16 %i.ds, 0
  br i1 %.not.i9.i.i.i.i, label %.lr.ph.i.i.i.i37, label %._crit_edge.i.i.i.i28, !prof !22

._crit_edge.i.i.i.i28:                            ; preds = %.lr.ph.i.i.i.i37, %bb.n
  %.sroa.0.0.lcssa.i.i.i.i = phi i64 [ %.sroa.0.07.i.i.i.i, %bb.n ], [ %.sroa.0.0.i.i.i.i38, %.lr.ph.i.i.i.i37 ]
  %.lcssa.i.i.i.i = phi i16 [ %i.ds, %bb.n ], [ %i.ej, %.lr.ph.i.i.i.i37 ]
  %i.dt = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i, i1 true)
  %i.du = zext nneg i16 %i.dt to i64
  %i.dv = add i64 %.sroa.0.0.lcssa.i.i.i.i, %i.du
  %i.dw = and i64 %i.dv, %.val3.i.i.i             ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.val.i.i.i27, i64 %i.dw
  %i.dy = load i8, ptr %i.dx, align 1, !noalias !21004, !noundef !10 ; 2 uses
  %i.dz = icmp sgt i8 %i.dy, -1
  br i1 %i.dz, label %bb.o, label %_RNvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationINtCsiSzwKAiqS6b_8smallvec8SmallVecAINtNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util5idvec2IdNtNtB2C_6groups5GroupEj4_EEE14insert_no_growB2E_.exit.i.i, !prof !13

bb.o:                                             ; preds = %._crit_edge.i.i.i.i28
  %.val2.i.i.i.i.i36 = load <16 x i8>, ptr %.val.i.i.i27, align 16, !noalias !21004
  %i.ea = icmp slt <16 x i8> %.val2.i.i.i.i.i36, zeroinitializer
  %i.eb = bitcast <16 x i1> %i.ea to i16          ; 2 uses
  %.not.i6.i.i.i.i = icmp ne i16 %i.eb, 0
  %i.ec = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.eb, i1 true)
  %i.ed = zext nneg i16 %i.ec to i64              ; 2 uses
  call void @llvm.assume(i1 %.not.i6.i.i.i.i), !noalias !20981
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i.i27, i64 %i.ed
  %.pre.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i, align 1, !noalias !21004
  br label %_RNvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationINtCsiSzwKAiqS6b_8smallvec8SmallVecAINtNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util5idvec2IdNtNtB2C_6groups5GroupEj4_EEE14insert_no_growB2E_.exit.i.i

.lr.ph.i.i.i.i37:                                 ; preds = %bb.n, %.lr.ph.i.i.i.i37
  %.sroa.0.010.i.i.i.i = phi i64 [ %.sroa.0.0.i.i.i.i38, %.lr.ph.i.i.i.i37 ], [ %.sroa.0.07.i.i.i.i, %bb.n ]
  %i.ee = phi i64 [ %i.ef, %.lr.ph.i.i.i.i37 ], [ 0, %bb.n ]
  %i.ef = add i64 %i.ee, 16                       ; 2 uses
  %i.eg = add i64 %i.ef, %.sroa.0.010.i.i.i.i
  %.sroa.0.0.i.i.i.i38 = and i64 %i.eg, %.val3.i.i.i ; 3 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %.val.i.i.i27, i64 %.sroa.0.0.i.i.i.i38
  %.sroa.0.0.copyload.i6.i.i.i.i = load <16 x i8>, ptr %i.eh, align 1, !noalias !21003
  %i.ei = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i.i.i.i, zeroinitializer
  %i.ej = bitcast <16 x i1> %i.ei to i16          ; 2 uses
  %.not.i.i.i.i.i39 = icmp eq i16 %i.ej, 0
  br i1 %.not.i.i.i.i.i39, label %.lr.ph.i.i.i.i37, label %._crit_edge.i.i.i.i28, !prof !23

_RNvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationINtCsiSzwKAiqS6b_8smallvec8SmallVecAINtNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util5idvec2IdNtNtB2C_6groups5GroupEj4_EEE14insert_no_growB2E_.exit.i.i: ; preds = %bb.o, %._crit_edge.i.i.i.i28
  %i.ek = phi i8 [ %.pre.i.i.i, %bb.o ], [ %i.dy, %._crit_edge.i.i.i.i28 ]
  %.sroa.0.0.i5.i.i.i.i = phi i64 [ %i.ed, %bb.o ], [ %i.dw, %._crit_edge.i.i.i.i28 ] ; 3 uses
  %i.el = getelementptr inbounds nuw i8, ptr %.val.i.i.i27, i64 %.sroa.0.0.i5.i.i.i.i
  %i.em = add i64 %.sroa.0.0.i5.i.i.i.i, -16
  %i.en = and i64 %i.em, %.val3.i.i.i
  store i8 %i.cq, ptr %i.el, align 1, !noalias !21004
  %i.eo = getelementptr i8, ptr %.val.i.i.i27, i64 %i.en
  %i.ep = getelementptr i8, ptr %i.eo, i64 16
  store i8 %i.cq, ptr %i.ep, align 1, !noalias !21004
  %i.eq = sub nsw i64 0, %.sroa.0.0.i5.i.i.i.i
  %i.er = getelementptr inbounds [48 x i8], ptr %.val.i.i.i27, i64 %i.eq ; 4 uses
  %i.es = and i8 %i.ek, 1
  %i.et = zext nneg i8 %i.es to i64
  %i.eu = getelementptr inbounds i8, ptr %i.er, i64 -48
  store i64 %i.ci, ptr %i.eu, align 16, !noalias !21005
  %.sroa_idx25.i = getelementptr inbounds i8, ptr %i.er, i64 -40
  store i64 %i.cl, ptr %.sroa_idx25.i, align 8, !noalias !21005
  %.sroa.5.0..sroa_idx.i10.i = getelementptr inbounds i8, ptr %i.er, i64 -16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i10.i, align 16, !noalias !21005
  %i.ev = load <2 x i64>, ptr %i.bb, align 8, !alias.scope !21000, !noalias !21001
  %i.ew = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.et, i64 0
  %i.ex = sub <2 x i64> %i.ev, %i.ew
  store <2 x i64> %i.ex, ptr %i.bb, align 8, !alias.scope !21000, !noalias !21001
  br label %_RNvMs19_NtNtNtCsaL1QbXo9JQH_3std11collections4hash3mapINtB6_5EntryNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationINtCsiSzwKAiqS6b_8smallvec8SmallVecAINtNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util5idvec2IdNtNtB2P_6groups5GroupEj4_EE10or_defaultB2R_.exit.i

_RNvMs19_NtNtNtCsaL1QbXo9JQH_3std11collections4hash3mapINtB6_5EntryNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationINtCsiSzwKAiqS6b_8smallvec8SmallVecAINtNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util5idvec2IdNtNtB2P_6groups5GroupEj4_EE10or_defaultB2R_.exit.i: ; preds = %.lr.ph.i.i.i, %_RNvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationINtCsiSzwKAiqS6b_8smallvec8SmallVecAINtNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util5idvec2IdNtNtB2C_6groups5GroupEj4_EEE14insert_no_growB2E_.exit.i.i
  %.pn.i.i29 = phi ptr [ %i.er, %_RNvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationINtCsiSzwKAiqS6b_8smallvec8SmallVecAINtNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util5idvec2IdNtNtB2C_6groups5GroupEj4_EEE14insert_no_growB2E_.exit.i.i ], [ %i.dd, %.lr.ph.i.i.i ] ; 3 uses
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.pn.i.i29, i64 -32 ; 4 uses
  %i.ey = getelementptr inbounds i8, ptr %.pn.i.i29, i64 -16 ; 2 uses
end_hunk_1
begin_hunk_2_@llvm.fabs.v2f32
!15971 = !{!14974, !14973, !14972, !14962, !14957, !14934, !14735}
!15972 = !{!15003, !15000}
!15973 = !{!14988, !14974, !14968, !14973, !14966, !14972, !14964, !14962, !14957, !14934, !14735}
!15974 = !{!15022, !15020, !15018, !15004, !15001, !14988, !14968, !14966, !14964}
!15975 = !{!15024, !15022, !15020, !15018, !15004, !15001, !14988, !14968, !14966, !14964}
!15976 = !{!15027}
!15977 = !{!15029}
!15978 = !{!15031}
!15979 = !{!15031, !15029, !15027}
!15980 = !{!15035, !15031, !15033, !15029, !15032, !15027, !14962, !14957, !14934, !14735}
!15981 = !{!15037, !15031, !15033, !15029, !15032, !15027, !14962, !14957, !14934, !14735}
!15982 = !{!15039, !14962, !14957, !14934, !14735}
!15983 = !{!15049, !15047, !15046, !15044, !15043, !15041, !14962, !14957, !14934, !14735}
!15984 = !{!15051, !15047, !15046, !15044, !15043, !15041, !14962, !14957, !14934, !14735}
!15985 = !{!15053, !14962, !14957, !14934, !14735}
!15986 = !{!15055}
!15987 = !{!15056, !15055, !14962, !14957, !14934, !14735}
!15988 = !{!15058}
!15989 = !{!15060}
!15990 = !{!15062}
!15991 = !{!15064}
!15992 = !{!15066}
!15993 = !{!15066, !15064, !15062, !15060, !15058}
!15994 = !{!15066, !15064, !15062, !15060, !15058, !14962, !14957, !14934, !14735}
!15995 = !{!14957, !14934, !14735}
!15996 = !{!15068}
!15997 = !{!15068, !14962, !14961, !14957, !14934, !14933, !14735}
!15998 = !{!15068, !14962, !14957, !14934, !14735}
!15999 = !{!15070, !15068, !14962, !14957, !14934, !14735}
!16000 = !{!15078, !15076, !15074, !15072, !15068, !14962, !14957, !14934, !14735}
!16001 = !{!15080}
!16002 = !{!15082}
!16003 = !{!15084}
!16004 = !{!15084, !15082, !15080}
!16005 = !{!15084, !15082, !15080, !15068, !14962, !14957, !14934, !14735}
!16006 = !{!15086}
!16007 = !{!15090, !15088, !15068, !14962, !14957, !14934, !14735}
!16008 = !{!15100, !15098, !15096, !15094, !15092, !15088, !15068, !14962, !14957, !14934, !14735}
!16009 = !{!15106, !15104, !15102, !15100, !15098, !15096, !15094, !15092, !15088, !15068, !14962, !14957, !14934, !14735}
!16010 = !{!15111}
!16011 = !{!15111, !15068, !14962, !14957, !14934, !14735}
!16012 = !{!15111, !15068, !14962, !14961, !14957, !14934, !14933, !14735}
!16013 = !{!15114, !15113, !15068, !14962, !14957, !14934, !14735}
!16014 = !{!15114, !15068, !14962, !14957, !14934, !14735}
!16015 = !{!15116}
!16016 = !{!15118}
!16017 = !{!15120}
!16018 = !{!15120, !15118, !15116}
!16019 = !{!15120, !15118, !15116, !15068, !14962, !14957, !14934, !14735}
!16020 = !{!15122}
!16021 = !{!15124}
!16022 = !{!15126}
!16023 = !{!15126, !15124, !15122}
!16024 = !{!15126, !15124, !15122, !15068, !14962, !14957, !14934, !14735}
!16025 = !{!15130, !15128, !15068, !14962, !14957, !14934, !14735}
!16026 = !{!15132}
!16027 = !{!15133}
!16028 = !{!15132, !15133, !14962, !14957, !14934, !14735}
!16029 = !{!15137, !15135, !14957, !14934, !14933, !14735}
!16030 = !{!15135, !14962, !14957, !14934, !14735}
!16031 = !{!15135, !14962, !14957, !14934, !14933, !14735}
!16032 = !{!15137, !15135, !14962, !14957, !14934, !14933, !14735}
!16033 = !{!15135, !14962, !14961, !14957, !14934, !14933, !14735}
!16034 = !{!15139}
!16035 = !{!15140}
!16036 = !{!15142}
!16037 = !{!15139, !15140, !15135, !14962, !14961, !14957, !14934, !14933, !14735}
!16038 = !{!15144}
!16039 = !{!15146}
!16040 = !{!15146, !15144, !15142}
!16041 = !{!15150, !15146, !15148, !15144, !15147, !15142, !15139, !15140, !15135, !14962, !14957, !14934, !14735}
!16042 = !{!15152, !15146, !15148, !15144, !15147, !15142, !15139, !15140, !15135, !14962, !14957, !14934, !14735}
!16043 = !{!15139, !15140, !15135, !14962, !14957, !14934, !14735}
!16044 = !{!15155, !15154, !15139, !15140, !15135, !14962, !14957, !14934, !14735}
!16045 = !{!15157, !15139, !15140, !15135, !14962, !14957, !14934, !14735}
!16046 = !{!15159}
!16047 = !{!15161}
!16048 = !{!15163}
!16049 = !{!15163, !15161, !15159}
!16050 = !{!15167, !15163, !15165, !15161, !15164, !15159, !15139, !15140, !15135, !14962, !14957, !14934, !14735}
!16051 = !{!15169, !15163, !15165, !15161, !15164, !15159, !15139, !15140, !15135, !14962, !14957, !14934, !14735}
!16052 = !{!15171}
!16053 = !{!15173}
!16054 = !{!15173, !15171, !15140}
!16055 = !{!15175}
!16056 = !{!15177}
!16057 = !{!15179}
!16058 = !{!15179, !15177, !15175, !15173, !15171, !15140}
!16059 = !{!15179, !15177, !15175, !15173, !15171, !15139, !15140, !15135, !14962, !14957, !14934, !14735}
!16060 = !{!15139, !15135, !14962, !14957, !14934, !14735}
!16061 = !{!15181}
!16062 = !{!15183, !15181}
!16063 = !{!15181, !15184, !15139, !15140, !15135, !14962, !14957, !14934, !14735}
!16064 = !{!15181, !15139, !15140, !15135, !14962, !14957, !14934, !14735}
!16065 = !{!15186, !15139, !15140, !15135, !14962, !14961, !14957, !14934, !14933, !14735}
!16066 = !{!15188, !15186, !15139, !15140, !15135, !14962, !14957, !14934, !14735}
!16067 = !{!15186, !15139, !15140, !15135, !14962, !14957, !14934, !14735}
!16068 = !{!15139, !15135, !14962, !14961, !14957, !14934, !14933, !14735}
!16069 = !{!15190, !15139, !15140, !15135, !14962, !14961, !14957, !14934, !14933, !14735}
!16070 = !{!15192, !15190, !15139, !15140, !15135, !14962, !14961, !14957, !14934, !14933, !14735}
!16071 = !{!15192, !15190, !15139, !15140, !15135, !14962, !14957, !14934, !14735}
!16072 = !{!15190, !15139, !15140, !15135, !14962, !14957, !14934, !14735}
!16073 = !{!15194}
!16074 = !{!15196}
!16075 = !{!15198}
!16076 = !{!15200}
!16077 = !{!15200, !15198, !15196, !15194}
!16078 = !{!15202}
!16079 = !{!15204}
!16080 = !{!15206}
!16081 = !{!15206, !15204, !15202, !15200, !15198, !15196, !15194}
!16082 = !{!15206, !15204, !15202, !15200, !15198, !15196, !15194, !15190, !15139, !15140, !15135, !14962, !14957, !14934, !14735}
!16083 = !{!15208, !15139, !15140, !15135, !14962, !14961, !14957, !14934, !14933, !14735}
!16084 = !{!15210, !15208, !15139, !15140, !15135, !14962, !14957, !14934, !14735}
!16085 = !{!15208, !15139, !15140, !15135, !14962, !14957, !14934, !14735}
!16086 = !{!15212}
!16087 = !{!15212, !15139}
!16088 = !{!15212, !15139, !15140, !15135, !14962, !14957, !14934, !14735}
!16089 = !{!15214}
!16090 = !{!15214, !15139}
!16091 = !{!15214, !15139, !15135, !14962, !14957, !14934, !14735}
!16092 = !{!14961, !14934, !14933, !14735}
!16093 = !{!15216}
!16094 = !{!15218}
!16095 = !{!15220}
!16096 = !{!15222}
!16097 = !{!15224}
!16098 = !{!15224, !15222, !15220, !15218, !15216}
!16099 = !{!15224, !15222, !15220, !15218, !15216, !14962, !14957, !14934, !14735}
!16100 = !{!15226}
!16101 = !{!15228}
!16102 = !{!15230}
!16103 = !{!15232}
!16104 = !{!15234}
!16105 = !{!15236}
!16106 = !{!15236, !15234, !15232, !15230, !15228, !15226}
!16107 = !{!15236, !15234, !15232, !15230, !15228, !15226, !14957, !14934, !14735}
!16108 = !{!15238}
!16109 = !{!15240}
!16110 = !{!15242}
!16111 = !{!15242, !15240, !15238}
!16112 = !{!15242, !15240, !15238, !14934, !14735}
!16113 = !{!15244}
!16114 = !{!15244, !14934, !14933, !14735}
!16115 = !{!15244, !14934, !14735}
!16116 = !{!15248, !15246, !15244, !14933}
!16117 = !{!15246, !15244, !14933}
!16118 = !{!15250, !14934, !14735}
!16119 = !{!15252, !14735}
!16120 = !{!15254}
!16121 = !{!15256}
!16122 = !{!15258}
!16123 = !{!15258, !15256, !15254}
!16124 = !{!15258, !15256, !15254, !14934, !14735}
!16125 = !{!15264, !15262, !15260, !15244, !14934, !14735}
!16126 = !{!15266}
!16127 = !{!15268}
!16128 = !{!15270}
!16129 = !{!15270, !15268, !15266}
!16130 = !{!15270, !15268, !15266, !14934, !14735}
!16131 = !{!15272}
!16132 = !{!15274}
!16133 = !{!15276}
!16134 = !{!15276, !15274, !15272}
!16135 = !{!15276, !15274, !15272, !14934, !14735}
!16136 = !{!15278}
!16137 = !{!15278, !15244, !14933}
!16138 = !{!15278, !14934, !14735}
!16139 = !{!15286, !15284, !15282, !15280, !14934, !14735}
!16140 = !{!15288}
!16141 = !{!15288, !14934, !14933, !14735}
!16142 = !{!15294, !15292, !15290, !15288, !14934, !14735}
!16143 = !{!15296}
!16144 = !{!15297}
!16145 = !{!15299, !15296, !15288, !14933}
!16146 = !{!15296, !15288, !14933}
!16147 = !{!15301, !15297, !14934, !14735}
!16148 = !{!15303, !15297, !14934, !14735}
!16149 = !{!15297, !14934, !14735}
!16150 = !{!15305, !14934, !14735}
!16151 = !{!15307}
!16152 = !{!15309}
!16153 = !{!15311}
!16154 = !{!15311, !15309, !15307}
!16155 = !{!15311, !15309, !15307, !14934, !14735}
!16156 = !{!15317, !15315, !15313, !15288, !14934, !14735}
!16157 = !{!15319}
!16158 = !{!15321}
!16159 = !{!15323}
!16160 = !{!15323, !15321, !15319}
!16161 = !{!15323, !15321, !15319, !14934, !14735}
!16162 = !{!15305}
!16163 = !{!15305, !15288, !14933}
!16164 = !{!15331, !15329, !15327, !15325, !14934, !14735}
!16165 = !{!15333}
!16166 = !{!15335}
!16167 = !{!15337}
!16168 = !{!15339}
!16169 = !{!15339, !15337, !15335}
!16170 = !{!15339, !15337, !15335, !14735}
!16171 = !{!15346, !15345, !15344, !15343, !15342, !15341}
!16172 = !{!15346, !15342}
!16173 = !{!15349}
!16174 = !{!15351, !14732}
!16175 = !{!15353}
!16176 = !{!15356, !15355}
!16177 = !{!15358}
!16178 = !{!15360}
!16179 = !{!15361}
!16180 = !{!15360, !15361, !15362, !14735}
!16181 = !{!15361, !15362, !14735}
!16182 = !{!15364}
!16183 = !{!15366, !15360}
!16184 = !{!15368, !15360}
!16185 = !{!15370, !15360}
!16186 = !{!15372}
!16187 = !{!15373, !15372, !15360, !15361, !15362, !14735}
!16188 = !{!15372, !14735}
!16189 = !{!15375, !15372, !15361}
!16190 = !{!15377, !15372, !15361}
!16191 = !{!15379}
!16192 = !{!15381}
!16193 = !{!15383}
!16194 = !{!15383, !15381, !15379}
!16195 = !{!15383, !15381, !15379, !15372, !14735}
!16196 = !{!15385, !15372, !15361}
!16197 = !{!15387, !15372, !15361}
!16198 = !{!15393, !15391, !15389}
!16199 = !{!15389}
!16200 = !{!15391}
!16201 = !{!15393}
!16202 = !{!15393, !15391, !15389, !15372, !14735}
!16203 = !{!15399, !15397, !15395, !15360, !15361, !15362, !14735}
!16204 = !{!15401}
!16205 = !{!15403}
!16206 = !{!15405}
!16207 = !{!15405, !15403, !15401}
!16208 = !{!15405, !15403, !15401, !14735}
!16209 = !{!15407}
!16210 = !{!15409}
!16211 = !{!15411}
!16212 = !{!15413}
!16213 = !{!15413, !15411, !15409}
!16214 = !{!15413, !15411, !15409, !14735}
!16215 = !{!15415}
!16216 = !{!15417}
!16217 = !{!15418}
!16218 = !{!15419}
!16219 = !{!15417, !15418, !15419}
!16220 = !{!15421}
!16221 = !{!15422, !15421, !15417, !15418, !15419}
!16222 = !{!15426, !15424, !15421, !15419}
!16223 = !{!15422, !15417, !15418}
!16224 = !{!15428}
!16225 = !{!15428, !15422, !15417, !15418}
!16226 = !{!15430, !15417, !15418, !15419}
!16227 = !{!15417, !15418}
!16228 = !{!15430, !15417, !15418}
!16229 = !{!15433, !15432, !15417, !15418, !15419}
!16230 = !{!15435}
!16231 = !{!15435, !15433, !15432, !15417, !15418, !15419}
!16232 = !{!15437}
!16233 = !{!15438}
!16234 = !{!15437, !15435}
!16235 = !{!15444, !15442, !15440, !15438}
!16236 = !{!15446, !15444, !15442, !15440, !15438}
!16237 = !{!15448}
!16238 = !{!15449}
!16239 = !{!15455, !15453, !15451, !15449, !15438}
!16240 = !{!15457, !15455, !15453, !15451, !15449, !15438}
!16241 = !{!15448, !15437, !15435}
!16242 = !{!15433, !15432, !15417, !15418}
!16243 = !{!15449, !15438}
!16244 = !{!15463, !15461, !15459, !15449, !15438}
!16245 = !{!15465, !15463, !15461, !15459, !15449, !15438}
!16246 = !{!15467, !15448, !15437, !15435}
!16247 = !{!15473, !15471, !15469, !15449, !15438}
!16248 = !{!15475, !15473, !15471, !15469, !15449, !15438}
!16249 = !{!15477, !15448, !15437, !15435}
!16250 = !{!15483, !15481, !15479, !15449, !15438}
!16251 = !{!15485, !15483, !15481, !15479, !15449, !15438}
!16252 = !{!15491, !15489, !15487, !15449, !15438}
!16253 = !{!15493, !15491, !15489, !15487, !15449, !15438}
!16254 = !{!15495}
!16255 = !{!15495, !15418}
!16256 = !{!15497}
!16257 = !{!15499}
!16258 = !{!15499, !15497, !15495, !15418}
!16259 = !{!15503, !15499, !15501, !15497, !15500, !15495, !15417, !15418}
!16260 = !{!15505, !15499, !15501, !15497, !15500, !15495, !15417, !15418}
!16261 = !{!15507}
!16262 = !{!15507, !15418}
!16263 = !{!15507, !15417, !15418}
!16264 = !{!15509, !15417, !15418}
!16265 = !{!15511}
!16266 = !{!15512}
!16267 = !{!15511, !15512, !15417, !15418}
!16268 = !{!15511, !15417, !15418}
!16269 = !{!15511, !15512}
!16270 = !{!15514}
!16271 = !{!15516, !15514}
!16272 = !{!15519, !15517, !15514, !15417, !15418}
!16273 = !{!15517, !15417, !15418}
!16274 = !{!15521, !15418}
!16275 = !{!15523, !15417, !15418}
!16276 = !{!15525}
!16277 = !{!15527}
!16278 = !{!15529}
!16279 = !{!15529, !15527, !15525, !15417}
!16280 = !{!15531}
!16281 = !{!15531, !15529, !15527, !15525, !15417}
!16282 = !{!15533}
!16283 = !{!15535}
!16284 = !{!15535, !15533, !15531, !15529, !15527, !15525, !15417}
!16285 = !{!15539, !15535, !15533, !15537, !15531, !15536, !15529, !15527, !15525, !15417, !15418}
!16286 = !{!15541, !15535, !15533, !15537, !15531, !15536, !15529, !15527, !15525, !15417, !15418}
!16287 = !{!15543, !15541, !15535, !15533, !15537, !15531, !15536, !15529, !15527, !15525, !15417, !15418}
!16288 = !{!15529, !15527, !15525, !15417, !15418}
!16289 = !{!15545}
!16290 = !{!15525, !15417, !15418}
!16291 = !{!15547}
!16292 = !{!15547, !15418}
!16293 = !{!15549}
!16294 = !{!15549, !15547, !15418}
!16295 = !{!15551}
!16296 = !{!15551, !15417, !15418}
!16297 = !{!15553, !15417, !15418}
!16298 = !{!15555}
!16299 = !{!15557}
!16300 = !{!15557, !15555}
!16301 = !{!15559, !15557, !15555, !15417, !15418}
!16302 = !{!15549, !15547, !15417, !15418}
!16303 = !{!15561, !15417, !15418}
!16304 = !{!15563}
!16305 = !{!15565}
!16306 = !{!15565, !15563}
!16307 = !{!15565, !15563, !15418}
!16308 = !{!15567}
!16309 = !{!15568}
!16310 = !{!15567, !15568, !15417, !15418}
!16311 = !{!15567, !15417, !15418}
!16312 = !{!15567, !15568}
!16313 = !{!15571, !15570, !15417, !15418}
!16314 = !{!15571}
!16315 = !{!15570, !15417, !15418}
!16316 = !{!15571, !15417, !15418}
!16317 = !{!15573, !15417, !15418}
!16318 = !{!15575}
!16319 = !{!15577}
!16320 = !{!15577, !15575}
!16321 = !{!15579, !15577, !15575, !15417, !15418}
!16322 = !{!15581, !15417, !15418}
!16323 = !{!15583, !15417, !15418}
!16324 = !{!15585}
!16325 = !{!15586}
!16326 = !{!15585, !15586, !15417, !15418}
!16327 = !{!15585, !15417, !15418}
!16328 = !{!15585, !15586}
!16329 = !{!15589, !15588, !15417, !15418}
!16330 = !{!15589}
!16331 = !{!15588, !15417, !15418}
!16332 = !{!15589, !15417, !15418}
!16333 = !{!15591}
!16334 = !{!15591, !15592, !15417, !15418}
!16335 = !{!15592, !15417, !15418}
!16336 = !{!15591, !15417, !15418}
!16337 = !{!15594}
!16338 = !{!15596}
!16339 = !{!15596, !15594}
!16340 = !{!15598, !15596, !15594, !15417, !15418}
!16341 = !{!15600}
!16342 = !{!15602}
!16343 = !{!15603}
!16344 = !{!15602, !15603, !15604}
!16345 = !{!15606}
!16346 = !{!15607}
!16347 = !{!15609}
!16348 = !{!15609, !15606, !15602}
!16349 = !{!15611, !15609, !15606, !15607, !15610, !15602, !15603, !15604}
!16350 = !{!15613}
!16351 = !{!15613, !15606, !15602}
!16352 = !{!15614, !15613, !15606, !15607, !15610, !15602, !15603, !15604}
!16353 = !{!15616}
!16354 = !{!15617}
!16355 = !{!15619, !15616}
!16356 = !{!15616, !15617}
!16357 = !{!15621}
!16358 = !{!15622}
!16359 = !{!15622, !15617}
!16360 = !{!15626, !15621, !15622, !15624, !15623}
!16361 = !{!15626, !15621, !15622, !15624, !15623, !15616, !15617}
!16362 = !{!15629, !15628, !15621, !15622, !15624, !15623, !15616, !15617}
!16363 = !{!15631}
!16364 = !{!15621, !15622, !15624, !15623, !15616, !15617, !15632}
!16365 = !{!15621, !15622, !15624, !15623, !15616, !15617}
!16366 = !{!15635, !15631, !15634, !15633, !15621, !15622, !15624, !15623, !15616, !15617, !15632}
!16367 = !{!15622, !15624, !15623, !15616, !15617}
!16368 = !{!15637}
!16369 = !{!15637, !15621}
!16370 = !{!15637, !15621, !15622, !15624, !15623, !15616, !15617}
!16371 = !{!15639}
!16372 = !{!15640}
end_hunk_2
