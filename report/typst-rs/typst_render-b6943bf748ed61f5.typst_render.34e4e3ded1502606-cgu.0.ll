Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst_render-b6943bf748ed61f5.typst_render.34e4e3ded1502606-cgu.0?download=true
inline.NumInlined: 1272
inline.NumDeleted: 654
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvNtCs4xylOWI7Ys4_12typst_render4text20render_outline_glyph:bb.a
  invoke fastcc void @_RNvNtCs4xylOWI7Ys4_12typst_render5paint19render_tiling_frame(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.cg, float %.val248, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.aik)
          to label %bb.hq unwind label %.loopexit.split-lp

.body:                                            ; preds = %.loopexit356, %.loopexit.split-lp, %bb.ht, %.body227, %bb.hd, %bb.he, %bb.fz, %bb.ga
  %.pn = phi { ptr, i32 } [ %lpad.phi.i, %bb.hd ], [ %i.apb, %bb.fz ], [ %eh.lpad-body228, %bb.ht ], [ %i.apb, %bb.ga ], [ %lpad.phi.i, %bb.he ], [ %eh.lpad-body228, %.body227 ], [ %lpad.loopexit, %.loopexit356 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %i.aim = atomicrmw sub ptr %.sroa.0.0.i.i, i64 1 release, align 8, !noalias !1411
  %i.ain = icmp eq i64 %i.aim, 1
  br i1 %i.ain, label %bb.fb, label %common.resume

bb.fb:                                            ; preds = %.body
  fence acquire
  call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtCs4ots9DM4Kx5_8pixglyph6BitmapE9drop_slowCs4xylOWI7Ys4_12typst_render(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.ci) #25
  br label %common.resume

.loopexit356:                                     ; preds = %bb.gw
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %.split99.us.i.invoke, %.invoke786, %.invoke, %bb.ew, %bb.ex, %bb.ez, %bb.fc, %bb.fi, %bb.gq, %bb.fa
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.fc:                                            ; preds = %bb.ew
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd), !noalias !1412
  invoke void @_RNvMs4_NtNtCsdaEETE4DqmE_13typst_library9visualize5colorNtB5_12ProcessColor6to_rgb(ptr noalias nofree noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.bd, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(20) %i.ch)
          to label %bb.fd unwind label %.loopexit.split-lp

bb.fd:                                            ; preds = %bb.fc
  %.sroa.4.0..sroa_idx.i.i88 = getelementptr inbounds nuw i8, ptr %i.bd, i64 4
  %.sroa.4.0.copyload.i.i = load float, ptr %.sroa.4.0..sroa_idx.i.i88, align 4, !alias.scope !1413, !noalias !1412
  %.sroa.5.0..sroa_idx.i.i89 = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %.sroa.5.0.copyload.i.i = load float, ptr %.sroa.5.0..sroa_idx.i.i89, align 8, !alias.scope !1413, !noalias !1412
  %i.aio = fmul float %.sroa.4.0.copyload.i.i, 2.550000e+02
  %i.aip = call nsz float @llvm.minimumnum.f32(float %i.aio, float 2.550000e+02)
  %i.aiq = fadd float %i.aip, f0x4B000000
  %i.air = bitcast float %i.aiq to i32
  %i.ais = call i32 @llvm.usub.sat.i32(i32 %i.air, i32 1258291200) ; 2 uses
  %i.ait = fmul float %.sroa.5.0.copyload.i.i, 2.550000e+02
  %i.aiu = call nsz float @llvm.minimumnum.f32(float %i.ait, float 2.550000e+02)
  %i.aiv = fadd float %i.aiu, f0x4B000000
  %i.aiw = bitcast float %i.aiv to i32
  %i.aix = call i32 @llvm.usub.sat.i32(i32 %i.aiw, i32 1258291200) ; 2 uses
  %i.aiy = load <4 x float>, ptr %i.bd, align 16, !alias.scope !1413, !noalias !1412
  %i.aiz = shufflevector <4 x float> %i.aiy, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.aja = fmul <2 x float> %i.aiz, splat (float 2.550000e+02)
  %i.ajb = call nsz <2 x float> @llvm.minimumnum.v2f32(<2 x float> %i.aja, <2 x float> splat (float 2.550000e+02))
  %i.ajc = fadd <2 x float> %i.ajb, splat (float f0x4B000000) ; 2 uses
  %bc = bitcast <2 x float> %i.ajc to <2 x i32>
  %i.ajd = extractelement <2 x i32> %bc, i64 0
  %i.aje = call i32 @llvm.usub.sat.i32(i32 %i.ajd, i32 1258291200)
  %bc91 = bitcast <2 x float> %i.ajc to <2 x i32>
  %i.ajf = extractelement <2 x i32> %bc91, i64 1
  %i.ajg = call i32 @llvm.usub.sat.i32(i32 %i.ajf, i32 1258291200)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd), !noalias !1412
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ch)
  %i.ajh = and i32 %i.ajg, 255                    ; 5 uses
  %i.aji = icmp eq i32 %i.ajh, 255
  %.sroa.03.0.insert.ext.i = and i32 %i.aje, 255  ; 2 uses
  br i1 %i.aji, label %bb.fe, label %bb.ff

bb.fe:                                            ; preds = %bb.fd
  %.sroa.5.sroa.6.0.insert.ext = shl i32 %i.aix, 8
  %.sroa.5.sroa.0.0.insert.ext = and i32 %i.ais, 255
  %.sroa.5.sroa.6.0.insert.ext.masked = and i32 %.sroa.5.sroa.6.0.insert.ext, 65280
  %i.ajj = or disjoint i32 %.sroa.5.sroa.6.0.insert.ext.masked, %.sroa.5.sroa.0.0.insert.ext
  %i.ajk = shl nuw nsw i32 %i.ajj, 8
  %.sroa.44.0.insert.insert.i = or disjoint i32 %i.ajk, %.sroa.03.0.insert.ext.i
  %.sroa.03.0.insert.insert.i = or disjoint i32 %.sroa.44.0.insert.insert.i, -16777216
  br label %_RNvMNtCsfVrisfeHJNS_9tiny_skia5colorNtB2_7ColorU811premultiply.exit

bb.ff:                                            ; preds = %bb.fd
  %i.ajl = mul nuw nsw i32 %i.ajh, %.sroa.03.0.insert.ext.i
  %i.ajm = add nuw nsw i32 %i.ajl, 128            ; 2 uses
  %i.ajn = lshr i32 %i.ajm, 8
  %i.ajo = add nuw nsw i32 %i.ajn, %i.ajm
  %i.ajp = lshr i32 %i.ajo, 8
  %i.ajq = and i32 %i.ais, 255
  %i.ajr = mul nuw nsw i32 %i.ajh, %i.ajq
  %i.ajs = add nuw nsw i32 %i.ajr, 128            ; 2 uses
  %i.ajt = lshr i32 %i.ajs, 8
  %i.aju = add nuw nsw i32 %i.ajt, %i.ajs
  %.sroa.4.0.insert.shift.i = and i32 %i.aju, 261888
  %i.ajv = and i32 %i.aix, 255
  %.sroa.6.0.insert.shift.i = shl nuw i32 %i.ajh, 24
  %i.ajw = mul nuw nsw i32 %i.ajv, 257
  %i.ajx = mul nuw nsw i32 %i.ajw, %i.ajh
  %i.ajy = add nuw nsw i32 %i.ajx, 32896
  %.sroa.5.0.insert.shift.i = and i32 %i.ajy, 33488896
  %.sroa.5.0.insert.insert.i = or i32 %.sroa.5.0.insert.shift.i, %.sroa.6.0.insert.shift.i
  %.sroa.4.0.insert.insert.i = or i32 %.sroa.5.0.insert.insert.i, %.sroa.4.0.insert.shift.i
  %.sroa.02.0.insert.insert.i = or i32 %.sroa.4.0.insert.insert.i, %i.ajp
  br label %_RNvMNtCsfVrisfeHJNS_9tiny_skia5colorNtB2_7ColorU811premultiply.exit

_RNvMNtCsfVrisfeHJNS_9tiny_skia5colorNtB2_7ColorU811premultiply.exit: ; preds = %bb.ff, %bb.fe
  %.sroa.0.0.i = phi i32 [ %.sroa.03.0.insert.insert.i, %bb.fe ], [ %.sroa.02.0.insert.insert.i, %bb.ff ] ; 6 uses
  %i.ajz = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.val62 = load ptr, ptr %i.ajz, align 8, !align !16, !noundef !5 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1414)
  call void @llvm.experimental.noalias.scope.decl(metadata !1415)
  %.not.i93 = icmp eq ptr %.val62, null
  %i.aka = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.akb = load i32, ptr %i.aka, align 8, !range !20, !alias.scope !1414, !noalias !1415, !noundef !5 ; 8 uses
  %i.akc = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.akd = load i32, ptr %i.akc, align 4, !range !20, !alias.scope !1414, !noalias !1415, !noundef !5 ; 6 uses
  %i.ake = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 48
  %i.akf = load i32, ptr %i.ake, align 8, !alias.scope !1415, !noalias !1414, !noundef !5 ; 7 uses
  %i.akg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 52
  %i.akh = load i32, ptr %i.akg, align 4, !alias.scope !1415, !noalias !1414, !noundef !5 ; 4 uses
  %i.aki = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 40
  %i.akj = load i32, ptr %i.aki, align 8, !alias.scope !1415, !noalias !1414, !noundef !5 ; 6 uses
  %i.akk = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 44
  %i.akl = load i32, ptr %i.akk, align 4, !alias.scope !1415, !noalias !1414, !noundef !5 ; 6 uses
  br i1 %.not.i93, label %bb.fg, label %bb.fi

bb.fg:                                            ; preds = %_RNvMNtCsfVrisfeHJNS_9tiny_skia5colorNtB2_7ColorU811premultiply.exit
  %i.akm = add i32 %i.akl, %i.akh                 ; 2 uses
  %i.akn = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ako = load ptr, ptr %i.akn, align 8, !alias.scope !1414, !noalias !1415, !nonnull !5, !noundef !5 ; 4 uses
  %i.akp = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.akq = load i64, ptr %i.akp, align 8, !alias.scope !1414, !noalias !1415, !noundef !5 ; 2 uses
  %i.akr = ptrtoint ptr %i.ako to i64
  %i.aks = and i64 %i.akr, 3
  %i.akt = icmp eq i64 %i.aks, 0
  br i1 %i.akt, label %bb.fh, label %.invoke

bb.fh:                                            ; preds = %bb.fg
  %i.aku = and i64 %i.akq, 3
  %i.akv = icmp eq i64 %i.aku, 0
  br i1 %i.akv, label %bb.fj, label %.invoke

bb.fi:                                            ; preds = %_RNvMNtCsfVrisfeHJNS_9tiny_skia5colorNtB2_7ColorU811premultiply.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc), !noalias !1416
  %i.akw = add i32 %i.akf, 2                      ; 2 uses
  %i.akx = add i32 %i.akh, 2
  invoke void @_RNvMNtCsfVrisfeHJNS_9tiny_skia6pixmapNtB2_6Pixmap3new(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.bc, i32 noundef %i.akw, i32 noundef %i.akx)
          to label %.noexc95 unwind label %.loopexit.split-lp

.noexc95:                                         ; preds = %bb.fi
  %i.aky = load i64, ptr %i.bc, align 8, !range !7, !noalias !1416, !noundef !5 ; 5 uses
  %.not51.i = icmp eq i64 %i.aky, -1
  br i1 %.not51.i, label %bb.gk, label %bb.fx

.invoke:                                          ; preds = %bb.go, %bb.gp, %bb.fg, %bb.fh
  %i.akz = phi i8 [ 0, %bb.fg ], [ 1, %bb.fh ], [ 1, %bb.gp ], [ 0, %bb.go ]
  invoke void @_RINvNtCsiuZbGDBbf1c_8bytemuck8internal20something_went_wrongNtB4_12PodCastErrorECs1BY3mFRTp65_10read_fonts(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef 14, i8 noundef %i.akz) #31
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.fj:                                            ; preds = %bb.fh
  %i.ala = lshr exact i64 %i.akq, 2               ; 5 uses
  %i.alb = icmp sgt i32 %i.akb, -1
  br i1 %i.alb, label %_RNvXs1d_NtNtCs3oUPovFnLWP_4core3cmp5implslNtB8_3Ord5clamp.exit59.i, label %bb.fk, !prof !19

bb.fk:                                            ; preds = %bb.fj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay), !noalias !1417
  store i32 0, ptr %i.ay, align 4, !noalias !1417
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !noalias !1417
  store i32 %i.akb, ptr %i.ax, align 4, !noalias !1417
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !1417
  store ptr %i.ay, ptr %i.aw, align 8, !noalias !1417
  br label %.invoke786

.invoke786:                                       ; preds = %bb.gt, %bb.gs, %bb.fs, %bb.fk
  %.sink791.sroa.phi = phi ptr [ %.sink791.sroa.gep, %bb.gt ], [ %.sink791.sroa.gep220, %bb.gs ], [ %.sink791.sroa.gep221, %bb.fs ], [ %.sink791.sroa.gep222, %bb.fk ]
  %.sink791.sroa.phi223 = phi ptr [ %.sink791.sroa.gep224, %bb.gt ], [ %.sink791.sroa.gep225, %bb.gs ], [ %.sink791.sroa.gep226, %bb.fs ], [ %.sink791.sroa.gep227, %bb.fk ]
  %.sink791.sroa.phi228 = phi ptr [ %.sink791.sroa.gep229, %bb.gt ], [ %.sink791.sroa.gep230, %bb.gs ], [ %.sink791.sroa.gep231, %bb.fs ], [ %.sink791.sroa.gep232, %bb.fk ]
  %.sink791 = phi ptr [ %i.ab, %bb.gt ], [ %i.ae, %bb.gs ], [ %i.at, %bb.fs ], [ %i.aw, %bb.fk ]
  %.sink788 = phi ptr [ %i.ac, %bb.gt ], [ %i.af, %bb.gs ], [ %i.au, %bb.fs ], [ %i.ax, %bb.fk ]
  %i.alc = phi ptr [ @13, %bb.gt ], [ @12, %bb.gs ], [ @13, %bb.fs ], [ @12, %bb.fk ]
  store ptr @_RNvXsQ_NtNtCs3oUPovFnLWP_4core3fmt3numlNtB7_5Debug3fmt, ptr %.sink791.sroa.phi, align 8, !noalias !5
  store ptr %.sink788, ptr %.sink791.sroa.phi223, align 8, !noalias !5
  store ptr @_RNvXsQ_NtNtCs3oUPovFnLWP_4core3fmt3numlNtB7_5Debug3fmt, ptr %.sink791.sroa.phi228, align 8, !noalias !5
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @72, ptr noundef nonnull %.sink791, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.alc) #31
          to label %.cont787 unwind label %.loopexit.split-lp

.cont787:                                         ; preds = %.invoke786
  unreachable

_RNvXs1d_NtNtCs3oUPovFnLWP_4core3cmp5implslNtB8_3Ord5clamp.exit59.i: ; preds = %bb.fj
  %i.ald = add i32 %i.akj, %i.akf                 ; 2 uses
  %i.ale = icmp slt i32 %i.akj, 0
  %..i.i = call i32 @llvm.umin.i32(i32 %i.akj, i32 range(i32 1, 0) %i.akb)
  %.sroa.0.0.i.i94 = select i1 %i.ale, i32 0, i32 %..i.i ; 3 uses
  %i.alf = icmp sgt i32 %i.ald, -1
  %..i57.i = call i32 @llvm.umin.i32(i32 %i.ald, i32 %i.akb) ; 3 uses
  %i.alg = icmp samesign ugt i32 %..i57.i, %.sroa.0.0.i.i94
  %i.alh = select i1 %i.alf, i1 %i.alg, i1 false
  br i1 %i.alh, label %.lr.ph106.i, label %.loopexit

.lr.ph106.i:                                      ; preds = %_RNvXs1d_NtNtCs3oUPovFnLWP_4core3cmp5implslNtB8_3Ord5clamp.exit59.i
  %i.ali = icmp sgt i32 %i.akd, -1
  %i.alj = icmp slt i32 %i.akl, 0
  %..i62.i = call i32 @llvm.umin.i32(i32 %i.akl, i32 range(i32 1, 0) %i.akd)
  %.sroa.0.0.i63.i = select i1 %i.alj, i32 0, i32 %..i62.i ; 2 uses
  %i.alk = icmp slt i32 %i.akm, 0
  %..i67.i = call i32 @llvm.umin.i32(i32 %i.akm, i32 range(i32 1, 0) %i.akd)
  %.sroa.0.0.i68.i = select i1 %i.alk, i32 0, i32 %..i67.i ; 2 uses
  %i.all = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 32
  %i.alm = load i64, ptr %i.all, align 8, !alias.scope !1415, !noalias !1414 ; 4 uses
  %i.aln = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 24
  %i.alo = load ptr, ptr %i.aln, align 8, !alias.scope !1415, !noalias !1414, !nonnull !5 ; 2 uses
  %i.alp = and i32 %.sroa.0.0.i, 255
  %i.alq = icmp eq i32 %i.alp, 255
  %i.alr = and i32 %.sroa.0.0.i, 16711935         ; 2 uses
  %i.als = lshr i32 %.sroa.0.0.i, 8
  %i.alt = and i32 %i.als, 16711935               ; 2 uses
  br i1 %i.ali, label %.lr.ph106.split.i, label %bb.fs, !prof !19

.lr.ph106.split.i:                                ; preds = %.lr.ph106.i
  %i.alu = icmp slt i32 %.sroa.0.0.i63.i, %.sroa.0.0.i68.i
  br i1 %i.alu, label %.lr.ph106.split.split.i, label %.loopexit

.lr.ph106.split.split.i:                          ; preds = %.lr.ph106.split.i
  %i.alv = zext nneg i32 %.sroa.0.0.i63.i to i64  ; 2 uses
  %wide.trip.count171.i = zext nneg i32 %.sroa.0.0.i68.i to i64 ; 2 uses
  br i1 %i.alq, label %_RNvXs1d_NtNtCs3oUPovFnLWP_4core3cmp5implslNtB8_3Ord5clamp.exit69.us.i, label %_RNvXs1d_NtNtCs3oUPovFnLWP_4core3cmp5implslNtB8_3Ord5clamp.exit69.i

_RNvXs1d_NtNtCs3oUPovFnLWP_4core3cmp5implslNtB8_3Ord5clamp.exit69.us.i: ; preds = %.lr.ph106.split.split.i, %..loopexit_crit_edge.split.us110.i
  %.sroa.024.0105.us.i = phi i32 [ %i.alw, %..loopexit_crit_edge.split.us110.i ], [ %.sroa.0.0.i.i94, %.lr.ph106.split.split.i ] ; 3 uses
  %i.alw = add nuw nsw i32 %.sroa.024.0105.us.i, 1 ; 2 uses
  %i.alx = sub i32 %.sroa.024.0105.us.i, %i.akj
  br label %bb.fl

bb.fl:                                            ; preds = %.backedge.us109.i, %_RNvXs1d_NtNtCs3oUPovFnLWP_4core3cmp5implslNtB8_3Ord5clamp.exit69.us.i
  %indvars.iv167.i = phi i64 [ %indvars.iv.next168.i, %.backedge.us109.i ], [ %i.alv, %_RNvXs1d_NtNtCs3oUPovFnLWP_4core3cmp5implslNtB8_3Ord5clamp.exit69.us.i ] ; 2 uses
  %indvars.iv.next168.i = add nuw nsw i64 %indvars.iv167.i, 1 ; 2 uses
  %i.aly = trunc nsw i64 %indvars.iv167.i to i32  ; 2 uses
  %i.alz = sub i32 %i.aly, %i.akl
  %i.ama = mul i32 %i.alz, %i.akf
  %i.amb = add i32 %i.alx, %i.ama
  %i.amc = sext i32 %i.amb to i64                 ; 3 uses
  %i.amd = icmp ugt i64 %i.alm, %i.amc
  br i1 %i.amd, label %bb.fm, label %.split99.us.i.invoke

bb.fm:                                            ; preds = %bb.fl
  %i.ame = getelementptr inbounds nuw i8, ptr %i.alo, i64 %i.amc
  %i.amf = load i8, ptr %i.ame, align 1, !noalias !1416, !noundef !5 ; 3 uses
  %i.amg = icmp eq i8 %i.amf, 0
  br i1 %i.amg, label %.backedge.us109.i, label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  %i.amh = mul i32 %i.akb, %i.aly
  %i.ami = add i32 %i.amh, %.sroa.024.0105.us.i
  %i.amj = sext i32 %i.ami to i64                 ; 5 uses
  %i.amk = icmp eq i8 %i.amf, -1
  %i.aml = icmp ugt i64 %i.ala, %i.amj            ; 2 uses
  br i1 %i.amk, label %bb.fq, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  br i1 %i.aml, label %bb.fp, label %.split99.us.i.invoke

bb.fp:                                            ; preds = %bb.fo
  %i.amm = zext i8 %i.amf to i32                  ; 2 uses
  %i.amn = mul nuw i32 %i.alr, %i.amm
  %i.amo = lshr i32 %i.amn, 8
  %i.amp = and i32 %i.amo, 16711935
  %i.amq = mul nuw i32 %i.alt, %i.amm             ; 2 uses
  %i.amr = and i32 %i.amq, -16711936
  %i.ams = getelementptr inbounds nuw [4 x i8], ptr %i.ako, i64 %i.amj ; 2 uses
  %i.amt = load i32, ptr %i.ams, align 4, !noalias !1416, !noundef !5 ; 2 uses
  %i.amu = lshr i32 %i.amq, 24
  %i.amv = sub nuw nsw i32 256, %i.amu            ; 2 uses
  %i.amw = and i32 %i.amt, 16711935
  %i.amx = mul nuw i32 %i.amw, %i.amv
  %i.amy = lshr i32 %i.amx, 8
  %i.amz = lshr i32 %i.amt, 8
  %i.ana = and i32 %i.amz, 16711935
  %i.anb = mul nuw i32 %i.ana, %i.amv
  %i.anc = and i32 %i.amy, 16711935
  %i.and = and i32 %i.anb, -16711936
  %i.ane = or disjoint i32 %i.amp, %i.amr
  %i.anf = add i32 %i.ane, %i.and
  %i.ang = add i32 %i.anf, %i.anc
  store i32 %i.ang, ptr %i.ams, align 4, !noalias !1416
  br label %.backedge.us109.i

bb.fq:                                            ; preds = %bb.fn
  br i1 %i.aml, label %bb.fr, label %.split99.us.i.invoke

bb.fr:                                            ; preds = %bb.fq
  %i.anh = getelementptr inbounds nuw [4 x i8], ptr %i.ako, i64 %i.amj
  store i32 %.sroa.0.0.i, ptr %i.anh, align 4, !noalias !1416
  br label %.backedge.us109.i

.backedge.us109.i:                                ; preds = %bb.fr, %bb.fp, %bb.fm
  %exitcond171.not.i = icmp eq i64 %indvars.iv.next168.i, %wide.trip.count171.i
  br i1 %exitcond171.not.i, label %..loopexit_crit_edge.split.us110.i, label %bb.fl

..loopexit_crit_edge.split.us110.i:               ; preds = %.backedge.us109.i
  %exitcond549.not = icmp eq i32 %i.alw, %..i57.i
  br i1 %exitcond549.not, label %.loopexit, label %_RNvXs1d_NtNtCs3oUPovFnLWP_4core3cmp5implslNtB8_3Ord5clamp.exit69.us.i

_RNvXs1d_NtNtCs3oUPovFnLWP_4core3cmp5implslNtB8_3Ord5clamp.exit69.i: ; preds = %.lr.ph106.split.split.i, %..loopexit_crit_edge.split.us.i
  %.sroa.024.0105.i = phi i32 [ %i.ani, %..loopexit_crit_edge.split.us.i ], [ %.sroa.0.0.i.i94, %.lr.ph106.split.split.i ] ; 3 uses
  %i.ani = add nuw nsw i32 %.sroa.024.0105.i, 1   ; 2 uses
  %i.anj = sub i32 %.sroa.024.0105.i, %i.akj
  br label %bb.ft

bb.fs:                                            ; preds = %.lr.ph106.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !1418
  store i32 0, ptr %i.av, align 4, !noalias !1418
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !1418
  store i32 %i.akd, ptr %i.au, align 4, !noalias !1418
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !1418
  store ptr %i.av, ptr %i.at, align 8, !noalias !1418
  br label %.invoke786

bb.ft:                                            ; preds = %.backedge.us.i, %_RNvXs1d_NtNtCs3oUPovFnLWP_4core3cmp5implslNtB8_3Ord5clamp.exit69.i
  %indvars.iv161.i = phi i64 [ %indvars.iv.next162.i, %.backedge.us.i ], [ %i.alv, %_RNvXs1d_NtNtCs3oUPovFnLWP_4core3cmp5implslNtB8_3Ord5clamp.exit69.i ] ; 2 uses
  %indvars.iv.next162.i = add nuw nsw i64 %indvars.iv161.i, 1 ; 2 uses
  %i.ank = trunc nsw i64 %indvars.iv161.i to i32  ; 2 uses
  %i.anl = sub i32 %i.ank, %i.akl
  %i.anm = mul i32 %i.anl, %i.akf
  %i.ann = add i32 %i.anj, %i.anm
  %i.ano = sext i32 %i.ann to i64                 ; 3 uses
  %i.anp = icmp ugt i64 %i.alm, %i.ano
  br i1 %i.anp, label %bb.fu, label %.split99.us.i.invoke

bb.fu:                                            ; preds = %bb.ft
  %i.anq = getelementptr inbounds nuw i8, ptr %i.alo, i64 %i.ano
  %i.anr = load i8, ptr %i.anq, align 1, !noalias !1416, !noundef !5 ; 2 uses
  %i.ans = icmp eq i8 %i.anr, 0
  br i1 %i.ans, label %.backedge.us.i, label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  %i.ant = mul i32 %i.akb, %i.ank
  %i.anu = add i32 %i.ant, %.sroa.024.0105.i
  %i.anv = sext i32 %i.anu to i64                 ; 3 uses
  %i.anw = icmp ugt i64 %i.ala, %i.anv
  br i1 %i.anw, label %bb.fw, label %.split99.us.i.invoke

bb.fw:                                            ; preds = %bb.fv
  %i.anx = zext i8 %i.anr to i32                  ; 2 uses
  %i.any = mul nuw i32 %i.alr, %i.anx
  %i.anz = lshr i32 %i.any, 8
  %i.aoa = and i32 %i.anz, 16711935
  %i.aob = mul nuw i32 %i.alt, %i.anx             ; 2 uses
  %i.aoc = and i32 %i.aob, -16711936
  %i.aod = getelementptr inbounds nuw [4 x i8], ptr %i.ako, i64 %i.anv ; 2 uses
  %i.aoe = load i32, ptr %i.aod, align 4, !noalias !1416, !noundef !5 ; 2 uses
  %i.aof = lshr i32 %i.aob, 24
  %i.aog = sub nuw nsw i32 256, %i.aof            ; 2 uses
  %i.aoh = and i32 %i.aoe, 16711935
  %i.aoi = mul nuw i32 %i.aoh, %i.aog
  %i.aoj = lshr i32 %i.aoi, 8
  %i.aok = lshr i32 %i.aoe, 8
  %i.aol = and i32 %i.aok, 16711935
  %i.aom = mul nuw i32 %i.aol, %i.aog
  %i.aon = and i32 %i.aoj, 16711935
  %i.aoo = and i32 %i.aom, -16711936
  %i.aop = or disjoint i32 %i.aoa, %i.aoc
  %i.aoq = add i32 %i.aop, %i.aoo
  %i.aor = add i32 %i.aoq, %i.aon
  store i32 %i.aor, ptr %i.aod, align 4, !noalias !1416
  br label %.backedge.us.i

.backedge.us.i:                                   ; preds = %bb.fw, %bb.fu
  %exitcond165.not.i = icmp eq i64 %indvars.iv.next162.i, %wide.trip.count171.i
  br i1 %exitcond165.not.i, label %..loopexit_crit_edge.split.us.i, label %bb.ft

..loopexit_crit_edge.split.us.i:                  ; preds = %.backedge.us.i
  %exitcond166.not.i = icmp eq i32 %i.ani, %..i57.i
  br i1 %exitcond166.not.i, label %.loopexit, label %_RNvXs1d_NtNtCs3oUPovFnLWP_4core3cmp5implslNtB8_3Ord5clamp.exit69.i

.split99.us.i.invoke:                             ; preds = %bb.gx, %bb.gy, %bb.gu, %bb.fv, %bb.ft, %bb.fo, %bb.fq, %bb.fl
  %i.aos = phi i64 [ %i.amj, %bb.fq ], [ %i.ano, %bb.ft ], [ %i.amc, %bb.fl ], [ %i.amj, %bb.fo ], [ %i.anv, %bb.fv ], [ %i.atd, %bb.gy ], [ %i.asv, %bb.gu ], [ %i.atd, %bb.gx ]
  %i.aot = phi i64 [ %i.ala, %bb.fq ], [ %i.alm, %bb.ft ], [ %i.alm, %bb.fl ], [ %i.ala, %bb.fo ], [ %i.ala, %bb.fv ], [ %i.arz, %bb.gy ], [ %i.ask, %bb.gu ], [ %i.arz, %bb.gx ]
  %i.aou = phi ptr [ @15, %bb.fq ], [ @14, %bb.ft ], [ @14, %bb.fl ], [ @16, %bb.fo ], [ @16, %bb.fv ], [ @15, %bb.gy ], [ @14, %bb.gu ], [ @16, %bb.gx ]
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.aos, i64 noundef %i.aot, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aou) #31
          to label %.split99.us.i.cont unwind label %.loopexit.split-lp

.split99.us.i.cont:                               ; preds = %.split99.us.i.invoke
  unreachable

bb.fx:                                            ; preds = %.noexc95
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %.sroa.410.0.copyload.i = load ptr, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !1416, !nonnull !5, !noundef !5 ; 5 uses
  %.sroa.511.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %.sroa.511.0.copyload.i = load i64, ptr %.sroa.511.0..sroa_idx.i, align 8, !noalias !1416 ; 3 uses
  %.sroa.612.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  %i.aov = load <2 x i32>, ptr %.sroa.612.0..sroa_idx.i, align 8, !noalias !1416
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !noalias !1416
  %i.aow = ptrtoint ptr %.sroa.410.0.copyload.i to i64
  %i.aox = and i64 %i.aow, 3
  %i.aoy = icmp eq i64 %i.aox, 0
  br i1 %i.aoy, label %bb.fy, label %bb.gb

bb.fy:                                            ; preds = %bb.fx
  %i.aoz = and i64 %.sroa.511.0.copyload.i, 3
  %i.apa = icmp eq i64 %i.aoz, 0
  br i1 %i.apa, label %bb.gc, label %bb.gb

bb.fz:                                            ; preds = %.split54.us.invoke.i, %.split52.us.invoke.i, %._crit_edge.split.i, %bb.gb
  %i.apb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.apc = icmp eq i64 %i.aky, 0
  br i1 %i.apc, label %.body, label %bb.ga

bb.ga:                                            ; preds = %bb.fz
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.410.0.copyload.i, i64 noundef %i.aky, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !1415
  br label %.body

bb.gb:                                            ; preds = %bb.fy, %bb.fx
  %.sroa.615.0.ph.i = phi i8 [ 1, %bb.fy ], [ 0, %bb.fx ]
  invoke void @_RINvNtCsiuZbGDBbf1c_8bytemuck8internal20something_went_wrongNtB4_12PodCastErrorECs1BY3mFRTp65_10read_fonts(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef 14, i8 noundef %.sroa.615.0.ph.i) #29
          to label %bb.gj unwind label %bb.fz, !noalias !1416

bb.gc:                                            ; preds = %bb.fy
  %i.apd = lshr exact i64 %.sroa.511.0.copyload.i, 2 ; 2 uses
  %.not127.i = icmp eq i32 %i.akf, 0
  br i1 %.not127.i, label %._crit_edge.split.i, label %.lr.ph84.i

.lr.ph84.i:                                       ; preds = %bb.gc
  %.not128.i = icmp eq i32 %i.akh, 0
  %i.ape = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 32
  %i.apf = load i64, ptr %i.ape, align 8, !alias.scope !1415, !noalias !1414 ; 4 uses
  %i.apg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 24
  %i.aph = load ptr, ptr %i.apg, align 8, !alias.scope !1415, !noalias !1414, !nonnull !5
  %i.api = icmp sgt i32 %i.akd, -1
  %i.apj = and i32 %.sroa.0.0.i, 16711935
  %i.apk = lshr i32 %.sroa.0.0.i, 8
  %i.apl = and i32 %i.apk, 16711935
  br i1 %.not128.i, label %._crit_edge.split.i, label %.lr.ph84.split.i

.lr.ph84.split.i:                                 ; preds = %.lr.ph84.i
  %i.apm = icmp sgt i32 %i.akb, -1
  br i1 %i.apm, label %.lr.ph84.split.split.us.i, label %.lr.ph.i, !prof !19

.lr.ph84.split.split.us.i:                        ; preds = %.lr.ph84.split.i
  br i1 %i.api, label %.lr.ph.us.us.preheader.i, label %.lr.ph.us.i, !prof !19

.lr.ph.us.us.preheader.i:                         ; preds = %.lr.ph84.split.split.us.i
  %wide.trip.count.i = zext i32 %i.akh to i64
  br label %.lr.ph.us.us.i

.lr.ph.us.us.i:                                   ; preds = %..loopexit32_crit_edge.split.us.split.us.us.us.i, %.lr.ph.us.us.preheader.i
  %.sroa.016.083.us.us.i = phi i32 [ %i.apn, %..loopexit32_crit_edge.split.us.split.us.us.us.i ], [ 0, %.lr.ph.us.us.preheader.i ] ; 2 uses
  %i.apn = add nuw i32 %.sroa.016.083.us.us.i, 1  ; 3 uses
  br label %bb.gd

bb.gd:                                            ; preds = %bb.gf, %.lr.ph.us.us.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.gf ], [ 0, %.lr.ph.us.us.i ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 3 uses
  %i.apo = trunc nuw i64 %indvars.iv.i to i32
  %i.app = mul i32 %i.akf, %i.apo
  %i.apq = add i32 %i.app, %.sroa.016.083.us.us.i
  %i.apr = zext i32 %i.apq to i64                 ; 3 uses
  %i.aps = icmp ugt i64 %i.apf, %i.apr
  br i1 %i.aps, label %bb.ge, label %.split54.us.invoke.i

bb.ge:                                            ; preds = %bb.gd
  %i.apt = trunc nuw i64 %indvars.iv.next.i to i32
  %i.apu = mul i32 %i.akw, %i.apt
  %i.apv = add i32 %i.apu, %i.apn
  %i.apw = zext i32 %i.apv to i64                 ; 3 uses
  %i.apx = icmp samesign ugt i64 %i.apd, %i.apw
  br i1 %i.apx, label %bb.gf, label %.split54.us.invoke.i

bb.gf:                                            ; preds = %bb.ge
  %i.apy = getelementptr inbounds nuw i8, ptr %i.aph, i64 %i.apr
  %i.apz = load i8, ptr %i.apy, align 1, !noalias !1416, !noundef !5
  %i.aqa = zext i8 %i.apz to i32                  ; 2 uses
  %i.aqb = mul nuw i32 %i.apj, %i.aqa
  %i.aqc = lshr i32 %i.aqb, 8
  %i.aqd = and i32 %i.aqc, 16711935
  %i.aqe = mul nuw i32 %i.apl, %i.aqa
  %i.aqf = and i32 %i.aqe, -16711936
  %i.aqg = or disjoint i32 %i.aqd, %i.aqf
  %i.aqh = getelementptr inbounds nuw [4 x i8], ptr %.sroa.410.0.copyload.i, i64 %i.apw
  store i32 %i.aqg, ptr %i.aqh, align 4, !noalias !1416
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %..loopexit32_crit_edge.split.us.split.us.us.us.i, label %bb.gd

..loopexit32_crit_edge.split.us.split.us.us.us.i: ; preds = %bb.gf
  %exitcond156.not.i = icmp eq i32 %i.apn, %i.akf
  br i1 %exitcond156.not.i, label %._crit_edge.split.i, label %.lr.ph.us.us.i

.lr.ph.us.i:                                      ; preds = %.lr.ph84.split.split.us.i
  %.not130.i = icmp eq i64 %i.apf, 0
  br i1 %.not130.i, label %.split54.us.invoke.i, label %.split52.us.i

._crit_edge.split.i:                              ; preds = %..loopexit32_crit_edge.split.us.split.us.us.us.i, %.lr.ph84.i, %bb.gc
  %i.aqi = add i32 %i.akj, -1
  %i.aqj = add i32 %i.akl, -1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb), !noalias !1416
  store ptr %.sroa.410.0.copyload.i, ptr %i.bb, align 8, !noalias !1416
  %i.aqk = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store i64 %.sroa.511.0.copyload.i, ptr %i.aqk, align 8, !noalias !1416
  %i.aql = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  store <2 x i32> %i.aov, ptr %i.aql, align 8, !noalias !1416
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !noalias !1416
  store i64 13950255104, ptr %i.ba, align 8, !noalias !1416
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az), !noalias !1416
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %i.az, align 16, !noalias !1416
  %i.aqm = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  store <2 x float> zeroinitializer, ptr %i.aqm, align 16, !noalias !1416
  invoke void @_RNvMs0_NtCsfVrisfeHJNS_9tiny_skia7painterNtNtB7_6pixmap6Pixmap11draw_pixmap(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %i.aqi, i32 noundef %i.aqj, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.bb, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.ba, ptr noalias nofree noundef nonnull align 4 captures(address) dereferenceable(24) %i.az, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) %.val62)
          to label %bb.gg unwind label %bb.fz, !noalias !1415

.lr.ph.i:                                         ; preds = %.lr.ph84.split.i
  %.not129.i = icmp eq i64 %i.apf, 0
  br i1 %.not129.i, label %.split54.us.invoke.i, label %bb.gi

.split52.us.i:                                    ; preds = %.lr.ph.us.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !1419
  store i32 0, ptr %i.ap, align 4, !noalias !1419
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !1419
  store i32 %i.akd, ptr %i.ao, align 4, !noalias !1419
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !1419
  store ptr %i.ap, ptr %i.an, align 8, !noalias !1419
  br label %.split52.us.invoke.i

.split52.us.invoke.i:                             ; preds = %bb.gi, %.split52.us.i
  %.sink220.i.sroa.phi = phi ptr [ %.sink220.i.sroa.gep, %bb.gi ], [ %.sink220.i.sroa.gep308, %.split52.us.i ]
  %.sink220.i.sroa.phi309 = phi ptr [ %.sink220.i.sroa.gep310, %bb.gi ], [ %.sink220.i.sroa.gep311, %.split52.us.i ]
  %.sink220.i.sroa.phi312 = phi ptr [ %.sink220.i.sroa.gep313, %bb.gi ], [ %.sink220.i.sroa.gep314, %.split52.us.i ]
  %.sink220.i = phi ptr [ %i.aq, %bb.gi ], [ %i.an, %.split52.us.i ]
  %.sink217.i = phi ptr [ %i.ar, %bb.gi ], [ %i.ao, %.split52.us.i ]
  %i.aqn = phi ptr [ @19, %bb.gi ], [ @20, %.split52.us.i ]
  store ptr @_RNvXsQ_NtNtCs3oUPovFnLWP_4core3fmt3numlNtB7_5Debug3fmt, ptr %.sink220.i.sroa.phi, align 8, !noalias !1416
  store ptr %.sink217.i, ptr %.sink220.i.sroa.phi309, align 8, !noalias !1416
  store ptr @_RNvXsQ_NtNtCs3oUPovFnLWP_4core3fmt3numlNtB7_5Debug3fmt, ptr %.sink220.i.sroa.phi312, align 8, !noalias !1416
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @72, ptr noundef nonnull %.sink220.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aqn) #31
          to label %.split52.us.cont.i unwind label %bb.fz, !noalias !1416

.split52.us.cont.i:                               ; preds = %.split52.us.invoke.i
  unreachable

bb.gg:                                            ; preds = %._crit_edge.split.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !1416
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !1416
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !1416
  %i.aqo = icmp eq i64 %i.aky, 0
  br i1 %i.aqo, label %.loopexit, label %bb.gh

bb.gh:                                            ; preds = %bb.gg
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.410.0.copyload.i, i64 noundef %i.aky, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !1415
  br label %.loopexit

bb.gi:                                            ; preds = %.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !1420
  store i32 0, ptr %i.as, align 4, !noalias !1420
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !1420
  store i32 %i.akb, ptr %i.ar, align 4, !noalias !1420
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !1420
  store ptr %i.as, ptr %i.aq, align 8, !noalias !1420
  br label %.split52.us.invoke.i

bb.gj:                                            ; preds = %bb.gb
  unreachable

.split54.us.invoke.i:                             ; preds = %bb.ge, %bb.gd, %.lr.ph.i, %.lr.ph.us.i
  %i.aqp = phi i64 [ 0, %.lr.ph.i ], [ 0, %.lr.ph.us.i ], [ %i.apw, %bb.ge ], [ %i.apr, %bb.gd ]
  %i.aqq = phi i64 [ 0, %.lr.ph.i ], [ 0, %.lr.ph.us.i ], [ %i.apd, %bb.ge ], [ %i.apf, %bb.gd ]
  %i.aqr = phi ptr [ @18, %.lr.ph.i ], [ @18, %.lr.ph.us.i ], [ @21, %bb.ge ], [ @18, %bb.gd ]
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.aqp, i64 noundef %i.aqq, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aqr) #29
          to label %.split54.us.cont.i unwind label %bb.fz, !noalias !1416

.split54.us.cont.i:                               ; preds = %.split54.us.invoke.i
  unreachable

bb.gk:                                            ; preds = %.noexc95
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !noalias !1416
  br label %bb.gl

bb.gl:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapECs4xylOWI7Ys4_12typst_render.exit230, %bb.hp, %bb.gk
  %i.aqs = atomicrmw sub ptr %.sroa.0.0.i.i, i64 1 release, align 8, !noalias !1421
  %i.aqt = icmp eq i64 %i.aqs, 1
  br i1 %i.aqt, label %bb.gm, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtCs4ots9DM4Kx5_8pixglyph6BitmapEECs4xylOWI7Ys4_12typst_render.exit102

bb.gm:                                            ; preds = %bb.gl
  fence acquire
  call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtCs4ots9DM4Kx5_8pixglyph6BitmapE9drop_slowCs4xylOWI7Ys4_12typst_render(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.ci) #25
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtCs4ots9DM4Kx5_8pixglyph6BitmapEECs4xylOWI7Ys4_12typst_render.exit102

.loopexit:                                        ; preds = %..loopexit_crit_edge.i, %..loopexit_crit_edge.split.us.i, %..loopexit_crit_edge.split.us110.i, %_RNvXs1d_NtNtCs3oUPovFnLWP_4core3cmp5implslNtB8_3Ord5clamp.exit53.i, %.lr.ph114.split.i, %bb.hl, %bb.hm, %_RNvXs1d_NtNtCs3oUPovFnLWP_4core3cmp5implslNtB8_3Ord5clamp.exit59.i, %.lr.ph106.split.i, %bb.gg, %bb.gh, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapECs4xylOWI7Ys4_12typst_render.exit229
  %i.aqu = atomicrmw sub ptr %.sroa.0.0.i.i, i64 1 release, align 8, !noalias !1422
  %i.aqv = icmp eq i64 %i.aqu, 1
  br i1 %i.aqv, label %bb.gn, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtCs4ots9DM4Kx5_8pixglyph6BitmapEECs4xylOWI7Ys4_12typst_render.exit103

bb.gn:                                            ; preds = %.loopexit
  fence acquire
  call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtCs4ots9DM4Kx5_8pixglyph6BitmapE9drop_slowCs4xylOWI7Ys4_12typst_render(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.ci) #25
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtCs4ots9DM4Kx5_8pixglyph6BitmapEECs4xylOWI7Ys4_12typst_render.exit103

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtCs4ots9DM4Kx5_8pixglyph6BitmapEECs4xylOWI7Ys4_12typst_render.exit103: ; preds = %.loopexit, %bb.gn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ci)
  br label %bb.ja

_RNvMs_NtCs4xylOWI7Ys4_12typst_render5paintNtB4_15GradientSampler3new.exit: ; preds = %bb.ey, %switch.lookup
  %i.aqw = phi <4 x float> [ %i.aii, %bb.ey ], [ <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, %switch.lookup ] ; 2 uses
  %i.aqx = phi <2 x float> [ %i.aij, %bb.ey ], [ zeroinitializer, %switch.lookup ] ; 2 uses
  %i.aqy = phi <2 x double> [ %i.aid, %bb.ey ], [ zeroinitializer, %switch.lookup ] ; 2 uses
  %i.aqz = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.val63 = load ptr, ptr %i.aqz, align 8, !align !16, !noundef !5 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1423)
  call void @llvm.experimental.noalias.scope.decl(metadata !1424)
  %.not.i104 = icmp eq ptr %.val63, null
  %i.ara = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.arb = load i32, ptr %i.ara, align 8, !range !20, !alias.scope !1423, !noalias !1425, !noundef !5 ; 8 uses
  %i.arc = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ard = load i32, ptr %i.arc, align 4, !range !20, !alias.scope !1423, !noalias !1425, !noundef !5 ; 7 uses
  %i.are = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 48
  %i.arf = load i32, ptr %i.are, align 8, !alias.scope !1424, !noalias !1426, !noundef !5 ; 6 uses
  %i.arg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 52
  %i.arh = load i32, ptr %i.arg, align 4, !alias.scope !1424, !noalias !1426, !noundef !5 ; 4 uses
  %i.ari = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 40
  %i.arj = load i32, ptr %i.ari, align 8, !alias.scope !1424, !noalias !1426, !noundef !5 ; 6 uses
  %i.ark = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 44
  %i.arl = load i32, ptr %i.ark, align 4, !alias.scope !1424, !noalias !1426, !noundef !5 ; 6 uses
  br i1 %.not.i104, label %bb.go, label %bb.gq

bb.go:                                            ; preds = %_RNvMs_NtCs4xylOWI7Ys4_12typst_render5paintNtB4_15GradientSampler3new.exit
  %i.arm = add i32 %i.arl, %i.arh                 ; 2 uses
  %i.arn = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aro = load ptr, ptr %i.arn, align 8, !alias.scope !1423, !noalias !1425, !nonnull !5, !noundef !5 ; 3 uses
  %i.arp = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.arq = load i64, ptr %i.arp, align 8, !alias.scope !1423, !noalias !1425, !noundef !5 ; 2 uses
  %i.arr = ptrtoint ptr %i.aro to i64
  %i.ars = and i64 %i.arr, 3
  %i.art = icmp eq i64 %i.ars, 0
  br i1 %i.art, label %bb.gp, label %.invoke

bb.gp:                                            ; preds = %bb.go
  %i.aru = and i64 %i.arq, 3
  %i.arv = icmp eq i64 %i.aru, 0
  br i1 %i.arv, label %bb.gr, label %.invoke

bb.gq:                                            ; preds = %_RNvMs_NtCs4xylOWI7Ys4_12typst_render5paintNtB4_15GradientSampler3new.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !1427
  %i.arw = add i32 %i.arf, 2                      ; 2 uses
  %i.arx = add i32 %i.arh, 2
  invoke void @_RNvMNtCsfVrisfeHJNS_9tiny_skia6pixmapNtB2_6Pixmap3new(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.am, i32 noundef %i.arw, i32 noundef %i.arx)
          to label %.noexc130 unwind label %.loopexit.split-lp

.noexc130:                                        ; preds = %bb.gq
  %i.ary = load i64, ptr %i.am, align 8, !range !7, !noalias !1427, !noundef !5 ; 5 uses
  %.not45.i = icmp eq i64 %i.ary, -1
  br i1 %.not45.i, label %bb.hp, label %bb.hb

bb.gr:                                            ; preds = %bb.gp
  %i.arz = lshr exact i64 %i.arq, 2               ; 3 uses
  %i.asa = icmp sgt i32 %i.arb, -1
  br i1 %i.asa, label %_RNvXs1d_NtNtCs3oUPovFnLWP_4core3cmp5implslNtB8_3Ord5clamp.exit53.i, label %bb.gs, !prof !19

bb.gs:                                            ; preds = %bb.gr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !1428
  store i32 0, ptr %i.ag, align 4, !noalias !1428
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !1428
  store i32 %i.arb, ptr %i.af, align 4, !noalias !1428
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !1428
  store ptr %i.ag, ptr %i.ae, align 8, !noalias !1428
  br label %.invoke786

_RNvXs1d_NtNtCs3oUPovFnLWP_4core3cmp5implslNtB8_3Ord5clamp.exit53.i: ; preds = %bb.gr
  %i.asb = add i32 %i.arj, %i.arf                 ; 2 uses
  %i.asc = icmp slt i32 %i.arj, 0
  %..i.i128 = call i32 @llvm.umin.i32(i32 %i.arj, i32 range(i32 1, 0) %i.arb)
  %.sroa.0.0.i.i129 = select i1 %i.asc, i32 0, i32 %..i.i128 ; 2 uses
  %i.asd = icmp sgt i32 %i.asb, -1
  %..i51.i = call i32 @llvm.umin.i32(i32 %i.asb, i32 %i.arb) ; 2 uses
  %i.ase = icmp samesign ugt i32 %..i51.i, %.sroa.0.0.i.i129
  %i.asf = select i1 %i.asd, i1 %i.ase, i1 false
  br i1 %i.asf, label %.lr.ph114.i, label %.loopexit

.lr.ph114.i:                                      ; preds = %_RNvXs1d_NtNtCs3oUPovFnLWP_4core3cmp5implslNtB8_3Ord5clamp.exit53.i
  %i.asg = icmp sgt i32 %i.ard, -1
  %i.ash = icmp slt i32 %i.arl, 0
  %..i56.i = call i32 @llvm.umin.i32(i32 %i.arl, i32 range(i32 1, 0) %i.ard)
  %.sroa.0.0.i57.i = select i1 %i.ash, i32 0, i32 %..i56.i ; 2 uses
  %i.asi = icmp slt i32 %i.arm, 0
  %..i61.i = call i32 @llvm.umin.i32(i32 %i.arm, i32 range(i32 1, 0) %i.ard)
  %.sroa.0.0.i62.i = select i1 %i.asi, i32 0, i32 %..i61.i ; 2 uses
  %i.asj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 32
  %i.ask = load i64, ptr %i.asj, align 8, !alias.scope !1424, !noalias !1426 ; 2 uses
  %i.asl = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 24
  %i.asm = load ptr, ptr %i.asl, align 8, !alias.scope !1424, !noalias !1426, !nonnull !5
  br i1 %i.asg, label %.lr.ph114.split.i, label %bb.gt, !prof !19

.lr.ph114.split.i:                                ; preds = %.lr.ph114.i
  %i.asn = icmp slt i32 %.sroa.0.0.i57.i, %.sroa.0.0.i62.i
  br i1 %i.asn, label %_RNvXs1d_NtNtCs3oUPovFnLWP_4core3cmp5implslNtB8_3Ord5clamp.exit63.preheader.i, label %.loopexit

_RNvXs1d_NtNtCs3oUPovFnLWP_4core3cmp5implslNtB8_3Ord5clamp.exit63.preheader.i: ; preds = %.lr.ph114.split.i
  %i.aso = zext nneg i32 %.sroa.0.0.i57.i to i64
  %wide.trip.count135.i = zext nneg i32 %.sroa.0.0.i62.i to i64
  %.sroa.6.0..sroa_idx260 = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %.sroa.8.0..sroa_idx264 = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %.sroa.12.0..sroa_idx272 = getelementptr inbounds nuw i8, ptr %i.ai, i64 40
  br label %_RNvXs1d_NtNtCs3oUPovFnLWP_4core3cmp5implslNtB8_3Ord5clamp.exit63.i

..loopexit_crit_edge.i:                           ; preds = %.backedge.i
  %exitcond548.not = icmp eq i32 %i.asp, %..i51.i
  br i1 %exitcond548.not, label %.loopexit, label %_RNvXs1d_NtNtCs3oUPovFnLWP_4core3cmp5implslNtB8_3Ord5clamp.exit63.i

_RNvXs1d_NtNtCs3oUPovFnLWP_4core3cmp5implslNtB8_3Ord5clamp.exit63.i: ; preds = %..loopexit_crit_edge.i, %_RNvXs1d_NtNtCs3oUPovFnLWP_4core3cmp5implslNtB8_3Ord5clamp.exit63.preheader.i
  %.sroa.020.0113.i = phi i32 [ %i.asp, %..loopexit_crit_edge.i ], [ %.sroa.0.0.i.i129, %_RNvXs1d_NtNtCs3oUPovFnLWP_4core3cmp5implslNtB8_3Ord5clamp.exit63.preheader.i ] ; 4 uses
  %i.asp = add nuw nsw i32 %.sroa.020.0113.i, 1   ; 2 uses
  %i.asq = sub i32 %.sroa.020.0113.i, %i.arj
  br label %bb.gu

bb.gt:                                            ; preds = %.lr.ph114.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !1429
  store i32 0, ptr %i.ad, align 4, !noalias !1429
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !1429
  store i32 %i.ard, ptr %i.ac, align 4, !noalias !1429
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !1429
  store ptr %i.ad, ptr %i.ab, align 8, !noalias !1429
  br label %.invoke786

bb.gu:                                            ; preds = %.backedge.i, %_RNvXs1d_NtNtCs3oUPovFnLWP_4core3cmp5implslNtB8_3Ord5clamp.exit63.i
  %indvars.iv132.i = phi i64 [ %i.aso, %_RNvXs1d_NtNtCs3oUPovFnLWP_4core3cmp5implslNtB8_3Ord5clamp.exit63.i ], [ %indvars.iv.next133.i, %.backedge.i ] ; 2 uses
  %indvars.iv.next133.i = add nuw nsw i64 %indvars.iv132.i, 1 ; 2 uses
  %i.asr = trunc nsw i64 %indvars.iv132.i to i32  ; 3 uses
  %i.ass = sub i32 %i.asr, %i.arl
  %i.ast = mul i32 %i.ass, %i.arf
  %i.asu = add i32 %i.asq, %i.ast
  %i.asv = sext i32 %i.asu to i64                 ; 3 uses
  %i.asw = icmp ugt i64 %i.ask, %i.asv
  br i1 %i.asw, label %bb.gv, label %.split99.us.i.invoke

bb.gv:                                            ; preds = %bb.gu
  %i.asx = getelementptr inbounds nuw i8, ptr %i.asm, i64 %i.asv
  %i.asy = load i8, ptr %i.asx, align 1, !noalias !1427, !noundef !5 ; 3 uses
  %i.asz = icmp eq i8 %i.asy, 0
  br i1 %i.asz, label %.backedge.i, label %bb.gw

bb.gw:                                            ; preds = %bb.gv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !1427
  store ptr %i.ahy, ptr %i.ai, align 8, !noalias !1430
  store <2 x double> %i.aqy, ptr %.sroa.6.0..sroa_idx260, align 8, !noalias !1430
  store <4 x float> %i.aqw, ptr %.sroa.8.0..sroa_idx264, align 8, !noalias !1430
  store <2 x float> %i.aqx, ptr %.sroa.12.0..sroa_idx272, align 8, !noalias !1430
  %i.ata = invoke noundef i32 @_RNvXs0_NtCs4xylOWI7Ys4_12typst_render5paintNtB5_15GradientSamplerNtB5_12PaintSampler6sample(ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.ai, i32 noundef %.sroa.020.0113.i, i32 noundef %i.asr)
          to label %.noexc135 unwind label %.loopexit356 ; 4 uses

.noexc135:                                        ; preds = %bb.gw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !1427
  %i.atb = mul i32 %i.arb, %i.asr
  %i.atc = add i32 %i.atb, %.sroa.020.0113.i
  %i.atd = sext i32 %i.atc to i64                 ; 5 uses
  %i.ate = icmp eq i8 %i.asy, -1
  %i.atf = and i32 %i.ata, 255
  %i.atg = icmp eq i32 %i.atf, 255
  %or.cond.i = and i1 %i.ate, %i.atg
  %i.ath = icmp ugt i64 %i.arz, %i.atd            ; 2 uses
  br i1 %or.cond.i, label %bb.gy, label %bb.gx

.backedge.i:                                      ; preds = %bb.ha, %bb.gz, %bb.gv
  %exitcond135.not.i = icmp eq i64 %indvars.iv.next133.i, %wide.trip.count135.i
  br i1 %exitcond135.not.i, label %..loopexit_crit_edge.i, label %bb.gu

bb.gx:                                            ; preds = %.noexc135
  br i1 %i.ath, label %bb.ha, label %.split99.us.i.invoke

bb.gy:                                            ; preds = %.noexc135
  br i1 %i.ath, label %bb.gz, label %.split99.us.i.invoke

bb.gz:                                            ; preds = %bb.gy
  %i.ati = getelementptr inbounds nuw [4 x i8], ptr %i.aro, i64 %i.atd
  store i32 %i.ata, ptr %i.ati, align 4, !noalias !1427
  br label %.backedge.i

bb.ha:                                            ; preds = %bb.gx
  %i.atj = and i32 %i.ata, 16711935
  %i.atk = zext i8 %i.asy to i32                  ; 2 uses
  %i.atl = mul nuw i32 %i.atj, %i.atk
  %i.atm = lshr i32 %i.atl, 8
  %i.atn = and i32 %i.atm, 16711935
  %i.ato = lshr i32 %i.ata, 8
  %i.atp = and i32 %i.ato, 16711935
  %i.atq = mul nuw i32 %i.atp, %i.atk             ; 2 uses
  %i.atr = and i32 %i.atq, -16711936
  %i.ats = getelementptr inbounds nuw [4 x i8], ptr %i.aro, i64 %i.atd ; 2 uses
  %i.att = load i32, ptr %i.ats, align 4, !noalias !1427, !noundef !5 ; 2 uses
  %i.atu = lshr i32 %i.atq, 24
  %i.atv = sub nuw nsw i32 256, %i.atu            ; 2 uses
  %i.atw = and i32 %i.att, 16711935
  %i.atx = mul nuw i32 %i.atw, %i.atv
  %i.aty = lshr i32 %i.atx, 8
  %i.atz = lshr i32 %i.att, 8
  %i.aua = and i32 %i.atz, 16711935
  %i.aub = mul nuw i32 %i.aua, %i.atv
  %i.auc = and i32 %i.aty, 16711935
  %i.aud = and i32 %i.aub, -16711936
  %i.aue = or disjoint i32 %i.atn, %i.atr
  %i.auf = add i32 %i.aue, %i.aud
  %i.aug = add i32 %i.auf, %i.auc
  store i32 %i.aug, ptr %i.ats, align 4, !noalias !1427
  br label %.backedge.i

bb.hb:                                            ; preds = %.noexc130
  %.sroa.410.0..sroa_idx.i105 = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %.sroa.410.0.copyload.i106 = load ptr, ptr %.sroa.410.0..sroa_idx.i105, align 8, !noalias !1427, !nonnull !5, !noundef !5 ; 5 uses
  %.sroa.511.0..sroa_idx.i107 = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %.sroa.511.0.copyload.i108 = load i64, ptr %.sroa.511.0..sroa_idx.i107, align 8, !noalias !1427 ; 3 uses
  %.sroa.612.0..sroa_idx.i109 = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.auh = load <2 x i32>, ptr %.sroa.612.0..sroa_idx.i109, align 8, !noalias !1427
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !1427
  %i.aui = ptrtoint ptr %.sroa.410.0.copyload.i106 to i64
  %i.auj = and i64 %i.aui, 3
  %i.auk = icmp eq i64 %i.auj, 0
  br i1 %i.auk, label %bb.hc, label %bb.hf

bb.hc:                                            ; preds = %bb.hb
  %i.aul = and i64 %.sroa.511.0.copyload.i108, 3
  %i.aum = icmp eq i64 %i.aul, 0
  br i1 %i.aum, label %bb.hg, label %bb.hf

.loopexit.split-lp.i:                             ; preds = %.split.us.invoke.i, %.invoke.i, %._crit_edge.split.i123, %bb.hf
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.hd

bb.hd:                                            ; preds = %.loopexit35.split.us.split.us.split.us.split.us.i, %.loopexit.split-lp.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.us.us.us.us.i, %.loopexit35.split.us.split.us.split.us.split.us.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ] ; 2 uses
  %i.aun = icmp eq i64 %i.ary, 0
  br i1 %i.aun, label %.body, label %bb.he

bb.he:                                            ; preds = %bb.hd
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.410.0.copyload.i106, i64 noundef %i.ary, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !1425
  br label %.body

bb.hf:                                            ; preds = %bb.hc, %bb.hb
  %.sroa.615.0.ph.i113 = phi i8 [ 1, %bb.hc ], [ 0, %bb.hb ]
  invoke void @_RINvNtCsiuZbGDBbf1c_8bytemuck8internal20something_went_wrongNtB4_12PodCastErrorECs1BY3mFRTp65_10read_fonts(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef 14, i8 noundef %.sroa.615.0.ph.i113) #29
          to label %bb.ho unwind label %.loopexit.split-lp.i, !noalias !1427

bb.hg:                                            ; preds = %bb.hc
  %i.auo = lshr exact i64 %.sroa.511.0.copyload.i108, 2 ; 2 uses
  %.not115.i = icmp eq i32 %i.arf, 0
  br i1 %.not115.i, label %._crit_edge.split.i123, label %.lr.ph97.i

.lr.ph97.i:                                       ; preds = %bb.hg
  %.not116.i = icmp eq i32 %i.arh, 0
  %i.aup = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 32
  %i.auq = load i64, ptr %i.aup, align 8, !alias.scope !1424, !noalias !1426 ; 4 uses
  %i.aur = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 24
  %i.aus = load ptr, ptr %i.aur, align 8, !alias.scope !1424, !noalias !1426, !nonnull !5
  %i.aut = icmp sgt i32 %i.ard, -1
  br i1 %.not116.i, label %._crit_edge.split.i123, label %.lr.ph97.split.i

.lr.ph97.split.i:                                 ; preds = %.lr.ph97.i
  %i.auu = icmp sgt i32 %i.arb, -1
  br i1 %i.auu, label %.lr.ph97.split.split.us.i, label %.lr.ph.i115, !prof !19

.lr.ph97.split.split.us.i:                        ; preds = %.lr.ph97.split.i
  br i1 %i.aut, label %.lr.ph.us.us.preheader.i117, label %.lr.ph.us.i116, !prof !19

.lr.ph.us.us.preheader.i117:                      ; preds = %.lr.ph97.split.split.us.i
  %wide.trip.count.i118 = zext i32 %i.arh to i64
  %.sroa.6.0..sroa_idx259 = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 40
  br label %.lr.ph.us.us.i119

.lr.ph.us.us.i119:                                ; preds = %..loopexit34_crit_edge.split.us.split.us.us.us.i, %.lr.ph.us.us.preheader.i117
  %.sroa.012.096.us.us.i = phi i32 [ %i.auv, %..loopexit34_crit_edge.split.us.split.us.us.us.i ], [ 0, %.lr.ph.us.us.preheader.i117 ] ; 3 uses
  %i.auv = add nuw i32 %.sroa.012.096.us.us.i, 1  ; 3 uses
  %i.auw = add i32 %.sroa.012.096.us.us.i, %i.arj ; 2 uses
  %i.aux = icmp slt i32 %i.auw, 0
  %..i68.us.us.i = call i32 @llvm.umin.i32(i32 %i.auw, i32 range(i32 1, 0) %i.arb)
  %.sroa.0.0.i69.us.us.i = select i1 %i.aux, i32 0, i32 %..i68.us.us.i
  br label %bb.hh

bb.hh:                                            ; preds = %bb.hk, %.lr.ph.us.us.i119
  %indvars.iv.i120 = phi i64 [ %indvars.iv.next.i121, %bb.hk ], [ 0, %.lr.ph.us.us.i119 ] ; 2 uses
  %indvars.iv.next.i121 = add nuw nsw i64 %indvars.iv.i120, 1 ; 3 uses
  %i.auy = trunc nuw i64 %indvars.iv.i120 to i32  ; 2 uses
  %i.auz = mul i32 %i.arf, %i.auy
  %i.ava = add i32 %i.auz, %.sroa.012.096.us.us.i
  %i.avb = zext i32 %i.ava to i64                 ; 3 uses
  %i.avc = icmp ugt i64 %i.auq, %i.avb
  br i1 %i.avc, label %bb.hi, label %.split.us.invoke.i

bb.hi:                                            ; preds = %bb.hh
  %i.avd = getelementptr inbounds nuw i8, ptr %i.aus, i64 %i.avb
  %i.ave = load i8, ptr %i.avd, align 1, !noalias !1427, !noundef !5
  %i.avf = add i32 %i.arl, %i.auy                 ; 2 uses
  %i.avg = icmp slt i32 %i.avf, 0
  %..i73.us.us.us.us.i = call i32 @llvm.umin.i32(i32 %i.avf, i32 range(i32 1, 0) %i.ard)
  %.sroa.0.0.i74.us.us.us.us.i = select i1 %i.avg, i32 0, i32 %..i73.us.us.us.us.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !1427
  store ptr %i.ahy, ptr %i.ah, align 8, !noalias !1430
  store <2 x double> %i.aqy, ptr %.sroa.6.0..sroa_idx259, align 8, !noalias !1430
  store <4 x float> %i.aqw, ptr %.sroa.8.0..sroa_idx, align 8, !noalias !1430
  store <2 x float> %i.aqx, ptr %.sroa.12.0..sroa_idx, align 8, !noalias !1430
  %i.avh = invoke noundef i32 @_RNvXs0_NtCs4xylOWI7Ys4_12typst_render5paintNtB5_15GradientSamplerNtB5_12PaintSampler6sample(ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.ah, i32 noundef %.sroa.0.0.i69.us.us.i, i32 noundef %.sroa.0.0.i74.us.us.us.us.i)
          to label %bb.hj unwind label %.loopexit35.split.us.split.us.split.us.split.us.i, !noalias !1427 ; 2 uses

bb.hj:                                            ; preds = %bb.hi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !1427
  %i.avi = trunc nuw i64 %indvars.iv.next.i121 to i32
  %i.avj = mul i32 %i.arw, %i.avi
  %i.avk = add i32 %i.avj, %i.auv
  %i.avl = zext i32 %i.avk to i64                 ; 3 uses
  %i.avm = icmp samesign ugt i64 %i.auo, %i.avl
  br i1 %i.avm, label %bb.hk, label %.split.us.invoke.i

bb.hk:                                            ; preds = %bb.hj
  %i.avn = and i32 %i.avh, 16711935
  %i.avo = zext i8 %i.ave to i32                  ; 2 uses
  %i.avp = mul nuw i32 %i.avn, %i.avo
  %i.avq = lshr i32 %i.avp, 8
  %i.avr = and i32 %i.avq, 16711935
  %i.avs = lshr i32 %i.avh, 8
  %i.avt = and i32 %i.avs, 16711935
  %i.avu = mul nuw i32 %i.avt, %i.avo
  %i.avv = and i32 %i.avu, -16711936
  %i.avw = or disjoint i32 %i.avr, %i.avv
  %i.avx = getelementptr inbounds nuw [4 x i8], ptr %.sroa.410.0.copyload.i106, i64 %i.avl
  store i32 %i.avw, ptr %i.avx, align 4, !noalias !1427
  %exitcond.not.i122 = icmp eq i64 %indvars.iv.next.i121, %wide.trip.count.i118
  br i1 %exitcond.not.i122, label %..loopexit34_crit_edge.split.us.split.us.us.us.i, label %bb.hh

..loopexit34_crit_edge.split.us.split.us.us.us.i: ; preds = %bb.hk
  %exitcond131.not.i = icmp eq i32 %i.auv, %i.arf
  br i1 %exitcond131.not.i, label %._crit_edge.split.i123, label %.lr.ph.us.us.i119

.loopexit35.split.us.split.us.split.us.split.us.i: ; preds = %bb.hi
  %lpad.loopexit.us.us.us.us.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.hd

.lr.ph.us.i116:                                   ; preds = %.lr.ph97.split.split.us.i
  %.not118.i = icmp eq i64 %i.auq, 0
  br i1 %.not118.i, label %.split.us.invoke.i, label %.split57.us.i

._crit_edge.split.i123:                           ; preds = %..loopexit34_crit_edge.split.us.split.us.us.us.i, %.lr.ph97.i, %bb.hg
  %i.avy = add i32 %i.arj, -1
  %i.avz = add i32 %i.arl, -1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !1427
  store ptr %.sroa.410.0.copyload.i106, ptr %i.al, align 8, !noalias !1427
  %i.awa = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store i64 %.sroa.511.0.copyload.i108, ptr %i.awa, align 8, !noalias !1427
  %i.awb = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store <2 x i32> %i.auh, ptr %i.awb, align 8, !noalias !1427
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !1427
  store i64 13950255104, ptr %i.ak, align 8, !noalias !1427
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !1427
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %i.aj, align 16, !noalias !1427
  %i.awc = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store <2 x float> zeroinitializer, ptr %i.awc, align 16, !noalias !1427
  invoke void @_RNvMs0_NtCsfVrisfeHJNS_9tiny_skia7painterNtNtB7_6pixmap6Pixmap11draw_pixmap(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %i.avy, i32 noundef %i.avz, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.al, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.ak, ptr noalias nofree noundef nonnull align 4 captures(address) dereferenceable(24) %i.aj, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) %.val63)
          to label %bb.hl unwind label %.loopexit.split-lp.i, !noalias !1425

.lr.ph.i115:                                      ; preds = %.lr.ph97.split.i
  %.not117.i = icmp eq i64 %i.auq, 0
  br i1 %.not117.i, label %.split.us.invoke.i, label %bb.hn

end_hunk_0
begin_hunk_1_@_RNvNtCs4xylOWI7Ys4_12typst_render4text20render_outline_glyph:bb.a
.split.us.cont.i:                                 ; preds = %.split.us.invoke.i
  unreachable

bb.ho:                                            ; preds = %bb.hf
  unreachable

bb.hp:                                            ; preds = %.noexc130
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !1427
  br label %bb.gl

bb.hq:                                            ; preds = %bb.fa
  %.val64 = load ptr, ptr %i.aik, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.awi = getelementptr inbounds nuw i8, ptr %.val64, i64 128
  %i.awj = load i8, ptr %i.awi, align 16, !range !24, !noalias !1433, !noundef !5
  %cond.i140 = icmp eq i8 %i.awj, 0
  br i1 %cond.i140, label %bb.hu, label %bb.hr

bb.hr:                                            ; preds = %bb.hq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !1433
  %i.awk = getelementptr inbounds nuw i8, ptr %1, i64 40
  invoke void @_RNvMs_NtCsd315radwPZ_14tiny_skia_path9transformNtB4_9Transform6invert(ptr noalias nofree noundef nonnull sret([28 x i8]) align 4 captures(address) dereferenceable(28) %i.u, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(24) %i.awk)
          to label %.noexc154 unwind label %.loopexit.split-lp362

.noexc154:                                        ; preds = %bb.hr
  %i.awl = load i32, ptr %i.u, align 4, !range !15, !noalias !1433, !noundef !5
  %i.awm = trunc nuw i32 %i.awl to i1
  br i1 %i.awm, label %bb.hs, label %.invoke792, !prof !19

bb.hs:                                            ; preds = %.noexc154
  %i.awn = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.awo = load <4 x float>, ptr %i.awn, align 4, !noalias !1433
  %.sroa.6.0..sroa_idx.i144 = getelementptr inbounds nuw i8, ptr %i.u, i64 20
  %i.awp = load <2 x float>, ptr %.sroa.6.0..sroa_idx.i144, align 4, !noalias !1433
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !1433
  br label %bb.hu

.invoke792:                                       ; preds = %.noexc223, %.noexc154
  %i.awq = phi ptr [ @49, %.noexc154 ], [ @73, %.noexc223 ]
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.awq) #31
          to label %.cont793 unwind label %.loopexit.split-lp362

.cont793:                                         ; preds = %.invoke792
  unreachable

.loopexit361:                                     ; preds = %bb.ie, %.noexc222.a
  %lpad.loopexit363 = landingpad { ptr, i32 }
          cleanup
  br label %.body227

.loopexit.split-lp362:                            ; preds = %.invoke796, %.invoke794, %.invoke792, %bb.hr, %bb.hx, %bb.hy
  %lpad.loopexit.split-lp364 = landingpad { ptr, i32 }
          cleanup
  br label %.body227

.body227:                                         ; preds = %.loopexit361, %.loopexit.split-lp362, %bb.il, %bb.im
  %eh.lpad-body228 = phi { ptr, i32 } [ %lpad.phi.i169, %bb.il ], [ %lpad.phi.i169, %bb.im ], [ %lpad.loopexit363, %.loopexit361 ], [ %lpad.loopexit.split-lp364, %.loopexit.split-lp362 ] ; 2 uses
  %.val60 = load i64, ptr %i.cg, align 8          ; 2 uses
  %i.awr = icmp eq i64 %.val60, 0
  br i1 %i.awr, label %.body, label %bb.ht

bb.ht:                                            ; preds = %.body227
  %i.aws = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %.val61 = load ptr, ptr %i.aws, align 8, !nonnull !5, !noundef !5
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val61, i64 noundef %.val60, i64 noundef range(i64 1, -9223372036854775807) 1) #26
  br label %.body

bb.hu:                                            ; preds = %bb.hs, %bb.hq
  %i.awt = phi <4 x float> [ %i.awo, %bb.hs ], [ <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, %bb.hq ] ; 2 uses
  %i.awu = phi <2 x float> [ %i.awp, %bb.hs ], [ zeroinitializer, %bb.hq ] ; 2 uses
  %i.awv = getelementptr inbounds nuw i8, ptr %.val64, i64 80
  %i.aww = getelementptr inbounds nuw i8, ptr %.val64, i64 96
  %i.awx = fpext float %.val248 to double
  %i.awy = load <2 x double>, ptr %i.awv, align 16, !noalias !1433
  %i.awz = load <2 x double>, ptr %i.aww, align 16, !noalias !1433
  %i.axa = fadd <2 x double> %i.awy, %i.awz       ; 2 uses
  %i.axb = fcmp ord <2 x double> %i.axa, zeroinitializer
  %i.axc = select <2 x i1> %i.axb, <2 x double> %i.axa, <2 x double> zeroinitializer
  %i.axd = insertelement <2 x double> poison, double %i.awx, i64 0
  %i.axe = shufflevector <2 x double> %i.axd, <2 x double> poison, <2 x i32> zeroinitializer
  %i.axf = fmul <2 x double> %i.axc, %i.axe       ; 2 uses
  %i.axg = fcmp ord <2 x double> %i.axf, zeroinitializer
  %i.axh = select <2 x i1> %i.axg, <2 x double> %i.axf, <2 x double> zeroinitializer ; 5 uses
  %i.axi = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.val65 = load ptr, ptr %i.axi, align 8, !align !16, !noundef !5 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1434)
  call void @llvm.experimental.noalias.scope.decl(metadata !1435)
  %.not.i156 = icmp eq ptr %.val65, null
  %i.axj = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.axk = load i32, ptr %i.axj, align 8, !range !20, !alias.scope !1434, !noalias !1436, !noundef !5 ; 8 uses
  %i.axl = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.axm = load i32, ptr %i.axl, align 4, !range !20, !alias.scope !1434, !noalias !1436, !noundef !5 ; 7 uses
  %i.axn = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 48
  %i.axo = load i32, ptr %i.axn, align 8, !alias.scope !1435, !noalias !1437, !noundef !5 ; 6 uses
  %i.axp = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 52
  %i.axq = load i32, ptr %i.axp, align 4, !alias.scope !1435, !noalias !1437, !noundef !5 ; 4 uses
  %i.axr = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 40
  %i.axs = load i32, ptr %i.axr, align 8, !alias.scope !1435, !noalias !1437, !noundef !5 ; 6 uses
  %i.axt = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 44
  %i.axu = load i32, ptr %i.axt, align 4, !alias.scope !1435, !noalias !1437, !noundef !5 ; 6 uses
  br i1 %.not.i156, label %bb.hv, label %bb.hx

bb.hv:                                            ; preds = %bb.hu
  %i.axv = add i32 %i.axu, %i.axq                 ; 2 uses
  %i.axw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.axx = load ptr, ptr %i.axw, align 8, !alias.scope !1434, !noalias !1436, !nonnull !5, !noundef !5 ; 3 uses
  %i.axy = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.axz = load i64, ptr %i.axy, align 8, !alias.scope !1434, !noalias !1436, !noundef !5 ; 2 uses
  %i.aya = ptrtoint ptr %i.axx to i64
  %i.ayb = and i64 %i.aya, 3
  %i.ayc = icmp eq i64 %i.ayb, 0
  br i1 %i.ayc, label %bb.hw, label %bb.hy

bb.hw:                                            ; preds = %bb.hv
  %i.ayd = and i64 %i.axz, 3
  %i.aye = icmp eq i64 %i.ayd, 0
  br i1 %i.aye, label %bb.hz, label %bb.hy

bb.hx:                                            ; preds = %bb.hu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !1438
  %i.ayf = add i32 %i.axo, 2                      ; 2 uses
  %i.ayg = add i32 %i.axq, 2
  invoke void @_RNvMNtCsfVrisfeHJNS_9tiny_skia6pixmapNtB2_6Pixmap3new(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.t, i32 noundef %i.ayf, i32 noundef %i.ayg)
          to label %.noexc217.a unwind label %.loopexit.split-lp362

.noexc217.a:                                      ; preds = %bb.hx
  %i.ayh = load i64, ptr %i.t, align 8, !range !7, !noalias !1438, !noundef !5 ; 5 uses
  %.not45.i157 = icmp eq i64 %i.ayh, -1
  br i1 %.not45.i157, label %bb.iy, label %bb.ij

bb.hy:                                            ; preds = %bb.hw, %bb.hv
  %.sroa.621.0.ph.i198 = phi i8 [ 1, %bb.hw ], [ 0, %bb.hv ]
  invoke void @_RINvNtCsiuZbGDBbf1c_8bytemuck8internal20something_went_wrongNtB4_12PodCastErrorECs1BY3mFRTp65_10read_fonts(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef 14, i8 noundef %.sroa.621.0.ph.i198) #31
          to label %.noexc218 unwind label %.loopexit.split-lp362

.noexc218:                                        ; preds = %bb.hy
  unreachable

bb.hz:                                            ; preds = %bb.hw
  %i.ayi = lshr exact i64 %i.axz, 2               ; 3 uses
  %i.ayj = icmp sgt i32 %i.axk, -1
  br i1 %i.ayj, label %_RNvXs1d_NtNtCs3oUPovFnLWP_4core3cmp5implslNtB8_3Ord5clamp.exit53.i201, label %bb.ia, !prof !19

bb.ia:                                            ; preds = %bb.hz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !1439
  store i32 0, ptr %i.n, align 4, !noalias !1439
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !1439
  store i32 %i.axk, ptr %i.m, align 4, !noalias !1439
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !1439
  store ptr %i.n, ptr %i.l, align 8, !noalias !1439
  br label %.invoke794

.invoke794:                                       ; preds = %bb.ib, %bb.ia
  %.sink802.sroa.phi = phi ptr [ %.sink802.sroa.gep, %bb.ib ], [ %.sink802.sroa.gep233, %bb.ia ]
  %.sink802.sroa.phi234 = phi ptr [ %.sink802.sroa.gep235, %bb.ib ], [ %.sink802.sroa.gep236, %bb.ia ]
  %.sink802.sroa.phi237 = phi ptr [ %.sink802.sroa.gep238, %bb.ib ], [ %.sink802.sroa.gep239, %bb.ia ]
  %.sink802 = phi ptr [ %i.i, %bb.ib ], [ %i.l, %bb.ia ]
  %.sink799 = phi ptr [ %i.j, %bb.ib ], [ %i.m, %bb.ia ]
  %i.ayk = phi ptr [ @13, %bb.ib ], [ @12, %bb.ia ]
  store ptr @_RNvXsQ_NtNtCs3oUPovFnLWP_4core3fmt3numlNtB7_5Debug3fmt, ptr %.sink802.sroa.phi, align 8, !noalias !1438
  store ptr %.sink799, ptr %.sink802.sroa.phi234, align 8, !noalias !1438
  store ptr @_RNvXsQ_NtNtCs3oUPovFnLWP_4core3fmt3numlNtB7_5Debug3fmt, ptr %.sink802.sroa.phi237, align 8, !noalias !1438
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @72, ptr noundef nonnull %.sink802, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ayk) #31
          to label %.cont795 unwind label %.loopexit.split-lp362

.cont795:                                         ; preds = %.invoke794
  unreachable

_RNvXs1d_NtNtCs3oUPovFnLWP_4core3cmp5implslNtB8_3Ord5clamp.exit53.i201: ; preds = %bb.hz
  %i.ayl = add i32 %i.axs, %i.axo                 ; 2 uses
  %i.aym = icmp slt i32 %i.axs, 0
  %..i.i202 = call i32 @llvm.umin.i32(i32 %i.axs, i32 range(i32 1, 0) %i.axk)
  %.sroa.0.0.i.i203 = select i1 %i.aym, i32 0, i32 %..i.i202 ; 2 uses
  %i.ayn = icmp sgt i32 %i.ayl, -1
  %..i51.i204 = call i32 @llvm.umin.i32(i32 %i.ayl, i32 %i.axk) ; 2 uses
  %i.ayo = icmp samesign ugt i32 %..i51.i204, %.sroa.0.0.i.i203
  %i.ayp = select i1 %i.ayn, i1 %i.ayo, i1 false
  br i1 %i.ayp, label %.lr.ph126.i, label %.loopexit366

.lr.ph126.i:                                      ; preds = %_RNvXs1d_NtNtCs3oUPovFnLWP_4core3cmp5implslNtB8_3Ord5clamp.exit53.i201
  %i.ayq = icmp sgt i32 %i.axm, -1
  %i.ayr = icmp slt i32 %i.axu, 0
  %..i56.i205 = call i32 @llvm.umin.i32(i32 %i.axu, i32 range(i32 1, 0) %i.axm)
  %.sroa.0.0.i57.i206 = select i1 %i.ayr, i32 0, i32 %..i56.i205 ; 2 uses
  %i.ays = icmp slt i32 %i.axv, 0
  %..i61.i207 = call i32 @llvm.umin.i32(i32 %i.axv, i32 range(i32 1, 0) %i.axm)
  %.sroa.0.0.i62.i208 = select i1 %i.ays, i32 0, i32 %..i61.i207 ; 2 uses
  %i.ayt = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 32
  %i.ayu = load i64, ptr %i.ayt, align 8, !alias.scope !1435, !noalias !1437 ; 2 uses
  %i.ayv = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 24
  %i.ayw = load ptr, ptr %i.ayv, align 8, !alias.scope !1435, !noalias !1437, !nonnull !5
  %i.ayx = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.ayy = getelementptr inbounds nuw i8, ptr %i.p, i64 24 ; 2 uses
  br i1 %i.ayq, label %.lr.ph126.split.i, label %bb.ib, !prof !19

.lr.ph126.split.i:                                ; preds = %.lr.ph126.i
  %i.ayz = icmp slt i32 %.sroa.0.0.i57.i206, %.sroa.0.0.i62.i208
  br i1 %i.ayz, label %_RNvXs1d_NtNtCs3oUPovFnLWP_4core3cmp5implslNtB8_3Ord5clamp.exit63.preheader.i211, label %.loopexit366

_RNvXs1d_NtNtCs3oUPovFnLWP_4core3cmp5implslNtB8_3Ord5clamp.exit63.preheader.i211: ; preds = %.lr.ph126.split.i
  %i.aza = zext nneg i32 %.sroa.0.0.i57.i206 to i64
  %wide.trip.count149.i = zext nneg i32 %.sroa.0.0.i62.i208 to i64
  %.sroa.6280.0..sroa_idx281 = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.7283.0..sroa_idx284 = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %.sroa.12298.0..sroa_idx299 = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  %.sroa.14.0..sroa_idx304 = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  %i.azb = fdiv <2 x double> %i.axh, splat (double 1.270000e+02)
  %i.azc = fptrunc <2 x double> %i.azb to <2 x float> ; 2 uses
  %i.azd = call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.azc)
  %i.aze = extractelement <2 x double> %i.axh, i64 0
  %i.azf = extractelement <2 x double> %i.axh, i64 1
  %i.azg = insertelement <2 x float> poison, float %.val248, i64 0
  %i.azh = shufflevector <2 x float> %i.azg, <2 x float> poison, <2 x i32> zeroinitializer
  br label %_RNvXs1d_NtNtCs3oUPovFnLWP_4core3cmp5implslNtB8_3Ord5clamp.exit63.i212

..loopexit_crit_edge.i216:                        ; preds = %.backedge.i214
  %exitcond.not = icmp eq i32 %i.azi, %..i51.i204
  br i1 %exitcond.not, label %.loopexit366, label %_RNvXs1d_NtNtCs3oUPovFnLWP_4core3cmp5implslNtB8_3Ord5clamp.exit63.i212

_RNvXs1d_NtNtCs3oUPovFnLWP_4core3cmp5implslNtB8_3Ord5clamp.exit63.i212: ; preds = %..loopexit_crit_edge.i216, %_RNvXs1d_NtNtCs3oUPovFnLWP_4core3cmp5implslNtB8_3Ord5clamp.exit63.preheader.i211
  %.sroa.020.0125.i = phi i32 [ %i.azi, %..loopexit_crit_edge.i216 ], [ %.sroa.0.0.i.i203, %_RNvXs1d_NtNtCs3oUPovFnLWP_4core3cmp5implslNtB8_3Ord5clamp.exit63.preheader.i211 ] ; 4 uses
  %i.azi = add nuw nsw i32 %.sroa.020.0125.i, 1   ; 2 uses
  %i.azj = sub i32 %.sroa.020.0125.i, %i.axs
  %i.azk = uitofp nneg i32 %.sroa.020.0125.i to float
  br label %bb.ic

bb.ib:                                            ; preds = %.lr.ph126.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !1440
  store i32 0, ptr %i.k, align 4, !noalias !1440
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !1440
  store i32 %i.axm, ptr %i.j, align 4, !noalias !1440
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1440
  store ptr %i.k, ptr %i.i, align 8, !noalias !1440
  br label %.invoke794

bb.ic:                                            ; preds = %.backedge.i214, %_RNvXs1d_NtNtCs3oUPovFnLWP_4core3cmp5implslNtB8_3Ord5clamp.exit63.i212
  %indvars.iv146.i = phi i64 [ %i.aza, %_RNvXs1d_NtNtCs3oUPovFnLWP_4core3cmp5implslNtB8_3Ord5clamp.exit63.i212 ], [ %indvars.iv.next147.i, %.backedge.i214 ] ; 2 uses
  %indvars.iv.next147.i = add nuw nsw i64 %indvars.iv146.i, 1 ; 2 uses
  %i.azl = trunc nsw i64 %indvars.iv146.i to i32  ; 3 uses
  %i.azm = sub i32 %i.azl, %i.axu
  %i.azn = mul i32 %i.azm, %i.axo
  %i.azo = add i32 %i.azj, %i.azn
  %i.azp = sext i32 %i.azo to i64                 ; 3 uses
  %i.azq = icmp ugt i64 %i.ayu, %i.azp
  br i1 %i.azq, label %bb.id, label %.invoke796

bb.id:                                            ; preds = %bb.ic
  %i.azr = getelementptr inbounds nuw i8, ptr %i.ayw, i64 %i.azp
  %i.azs = load i8, ptr %i.azr, align 1, !noalias !1438, !noundef !5 ; 3 uses
  %i.azt = icmp eq i8 %i.azs, 0
  br i1 %i.azt, label %.backedge.i214, label %bb.ie

.invoke796:                                       ; preds = %bb.if, %bb.ig, %bb.ic
  %i.azu = phi i64 [ %i.bao, %bb.ig ], [ %i.azp, %bb.ic ], [ %i.bao, %bb.if ]
  %i.azv = phi i64 [ %i.ayi, %bb.ig ], [ %i.ayu, %bb.ic ], [ %i.ayi, %bb.if ]
  %i.azw = phi ptr [ @15, %bb.ig ], [ @14, %bb.ic ], [ @16, %bb.if ]
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.azu, i64 noundef %i.azv, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.azw) #31
          to label %.cont797 unwind label %.loopexit.split-lp362

.cont797:                                         ; preds = %.invoke796
  unreachable

bb.ie:                                            ; preds = %bb.id
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !1438
  store ptr %i.cg, ptr %i.p, align 8, !noalias !1441
  store double %i.aze, ptr %.sroa.6280.0..sroa_idx281, align 8, !noalias !1441
  store double %i.azf, ptr %.sroa.7283.0..sroa_idx284, align 8, !noalias !1441
  store <4 x float> %i.awt, ptr %i.ayy, align 8, !noalias !1441
  store <2 x float> %i.awu, ptr %.sroa.12298.0..sroa_idx299, align 8, !noalias !1441
  store float %.val248, ptr %.sroa.14.0..sroa_idx304, align 8, !noalias !1441
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1442
  %i.azx = uitofp nneg i32 %i.azl to float
  store float %i.azk, ptr %i.h, align 8, !noalias !1442
  store float %i.azx, ptr %i.ayx, align 4, !noalias !1442
  invoke void @_RNvMs_NtCsd315radwPZ_14tiny_skia_path9transformNtB4_9Transform9map_point(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(24) %i.ayy, ptr noalias nofree noundef nonnull align 4 dereferenceable(8) %i.h)
          to label %.noexc222.a unwind label %.loopexit361

.noexc222.a:                                      ; preds = %bb.ie
  %i.azy = load <2 x float>, ptr %i.h, align 8, !noalias !1442
  %i.azz = fmul <2 x float> %i.azh, %i.azy
  %i.baa = frem <2 x float> %i.azz, %i.azc        ; 3 uses
  %i.bab = fcmp olt <2 x float> %i.baa, zeroinitializer
  %i.bac = fadd <2 x float> %i.azd, %i.baa
  %i.bad = select <2 x i1> %i.bab, <2 x float> %i.bac, <2 x float> %i.baa ; 2 uses
  %i.bae = extractelement <2 x float> %i.bad, i64 0
  %i.baf = call float @llvm.floor.f32(float %i.bae)
  %i.bag = call i32 @llvm.fptoui.sat.i32.f32(float %i.baf)
  %i.bah = extractelement <2 x float> %i.bad, i64 1
  %i.bai = call float @llvm.floor.f32(float %i.bah)
  %i.baj = call i32 @llvm.fptoui.sat.i32.f32(float %i.bai)
  %i.bak = invoke i40 @_RNvMNtCsfVrisfeHJNS_9tiny_skia6pixmapNtB2_6Pixmap5pixel(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.cg, i32 noundef %i.bag, i32 noundef %i.baj)
          to label %.noexc223 unwind label %.loopexit361 ; 2 uses

.noexc223:                                        ; preds = %.noexc222.a
  %i.bal = trunc i40 %i.bak to i1
  br i1 %i.bal, label %_RNvXs2_NtCs4xylOWI7Ys4_12typst_render5paintNtB5_13TilingSamplerNtB5_12PaintSampler6sample.exit.i, label %.invoke792, !prof !19

_RNvXs2_NtCs4xylOWI7Ys4_12typst_render5paintNtB5_13TilingSamplerNtB5_12PaintSampler6sample.exit.i: ; preds = %.noexc223
  %.sroa.04.1.extract.shift.i.i = lshr i40 %i.bak, 8
  %.sroa.04.1.extract.trunc.i.i = trunc nuw i40 %.sroa.04.1.extract.shift.i.i to i32 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1442
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !1438
  %i.bam = mul i32 %i.axk, %i.azl
  %i.ban = add i32 %i.bam, %.sroa.020.0125.i
  %i.bao = sext i32 %i.ban to i64                 ; 5 uses
  %i.bap = icmp eq i8 %i.azs, -1
  %i.baq = and i32 %.sroa.04.1.extract.trunc.i.i, 255
  %i.bar = icmp eq i32 %i.baq, 255
  %or.cond.i213 = and i1 %i.bap, %i.bar
  %i.bas = icmp ugt i64 %i.ayi, %i.bao            ; 2 uses
  br i1 %or.cond.i213, label %bb.ig, label %bb.if

.backedge.i214:                                   ; preds = %bb.ii, %bb.ih, %bb.id
  %exitcond149.not.i = icmp eq i64 %indvars.iv.next147.i, %wide.trip.count149.i
  br i1 %exitcond149.not.i, label %..loopexit_crit_edge.i216, label %bb.ic

bb.if:                                            ; preds = %_RNvXs2_NtCs4xylOWI7Ys4_12typst_render5paintNtB5_13TilingSamplerNtB5_12PaintSampler6sample.exit.i
  br i1 %i.bas, label %bb.ii, label %.invoke796

bb.ig:                                            ; preds = %_RNvXs2_NtCs4xylOWI7Ys4_12typst_render5paintNtB5_13TilingSamplerNtB5_12PaintSampler6sample.exit.i
  br i1 %i.bas, label %bb.ih, label %.invoke796

bb.ih:                                            ; preds = %bb.ig
  %i.bat = getelementptr inbounds nuw [4 x i8], ptr %i.axx, i64 %i.bao
  store i32 %.sroa.04.1.extract.trunc.i.i, ptr %i.bat, align 4, !noalias !1438
  br label %.backedge.i214

bb.ii:                                            ; preds = %bb.if
  %i.bau = and i32 %.sroa.04.1.extract.trunc.i.i, 16711935
  %i.bav = zext i8 %i.azs to i32                  ; 2 uses
  %i.baw = mul nuw i32 %i.bau, %i.bav
  %i.bax = lshr i32 %i.baw, 8
  %i.bay = and i32 %i.bax, 16711935
  %i.baz = lshr i32 %.sroa.04.1.extract.trunc.i.i, 8
  %i.bba = and i32 %i.baz, 16711935
  %i.bbb = mul nuw i32 %i.bba, %i.bav             ; 2 uses
  %i.bbc = and i32 %i.bbb, -16711936
  %i.bbd = getelementptr inbounds nuw [4 x i8], ptr %i.axx, i64 %i.bao ; 2 uses
  %i.bbe = load i32, ptr %i.bbd, align 4, !noalias !1438, !noundef !5 ; 2 uses
  %i.bbf = lshr i32 %i.bbb, 24
  %i.bbg = sub nuw nsw i32 256, %i.bbf            ; 2 uses
  %i.bbh = and i32 %i.bbe, 16711935
  %i.bbi = mul nuw i32 %i.bbh, %i.bbg
  %i.bbj = lshr i32 %i.bbi, 8
  %i.bbk = lshr i32 %i.bbe, 8
  %i.bbl = and i32 %i.bbk, 16711935
  %i.bbm = mul nuw i32 %i.bbl, %i.bbg
  %i.bbn = and i32 %i.bbj, 16711935
  %i.bbo = and i32 %i.bbm, -16711936
  %i.bbp = or disjoint i32 %i.bay, %i.bbc
  %i.bbq = add i32 %i.bbp, %i.bbo
  %i.bbr = add i32 %i.bbq, %i.bbn
  store i32 %i.bbr, ptr %i.bbd, align 4, !noalias !1438
  br label %.backedge.i214

bb.ij:                                            ; preds = %.noexc217.a
  %.sroa.410.0..sroa_idx.i158 = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.410.0.copyload.i159 = load ptr, ptr %.sroa.410.0..sroa_idx.i158, align 8, !noalias !1438, !nonnull !5, !noundef !5 ; 5 uses
  %.sroa.511.0..sroa_idx.i160 = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %.sroa.511.0.copyload.i161 = load i64, ptr %.sroa.511.0..sroa_idx.i160, align 8, !noalias !1438 ; 3 uses
  %.sroa.612.0..sroa_idx.i162 = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.bbs = load <2 x i32>, ptr %.sroa.612.0..sroa_idx.i162, align 8, !noalias !1438
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !1438
  %i.bbt = ptrtoint ptr %.sroa.410.0.copyload.i159 to i64
  %i.bbu = and i64 %i.bbt, 3
  %i.bbv = icmp eq i64 %i.bbu, 0
  br i1 %i.bbv, label %bb.ik, label %bb.in

bb.ik:                                            ; preds = %bb.ij
  %i.bbw = and i64 %.sroa.511.0.copyload.i161, 3
  %i.bbx = icmp eq i64 %i.bbw, 0
  br i1 %i.bbx, label %bb.io, label %bb.in

.loopexit.split-lp.i167:                          ; preds = %.split64.us.i, %.split.us.invoke.i179, %.invoke.i175, %._crit_edge.split.i196, %bb.in
  %lpad.loopexit.split-lp.i168 = landingpad { ptr, i32 }
          cleanup
  br label %bb.il

bb.il:                                            ; preds = %.loopexit35.split.us.split.us.split.us.split.us.i192, %.loopexit.split-lp.i167
  %lpad.phi.i169 = phi { ptr, i32 } [ %lpad.loopexit.us.us.us.us.i193, %.loopexit35.split.us.split.us.split.us.split.us.i192 ], [ %lpad.loopexit.split-lp.i168, %.loopexit.split-lp.i167 ] ; 2 uses
  %i.bby = icmp eq i64 %i.ayh, 0
  br i1 %i.bby, label %.body227, label %bb.im

bb.im:                                            ; preds = %bb.il
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.410.0.copyload.i159, i64 noundef %i.ayh, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !1436
  br label %.body227

bb.in:                                            ; preds = %bb.ik, %bb.ij
  %.sroa.615.0.ph.i166 = phi i8 [ 1, %bb.ik ], [ 0, %bb.ij ]
  invoke void @_RINvNtCsiuZbGDBbf1c_8bytemuck8internal20something_went_wrongNtB4_12PodCastErrorECs1BY3mFRTp65_10read_fonts(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef 14, i8 noundef %.sroa.615.0.ph.i166) #29
          to label %bb.iw unwind label %.loopexit.split-lp.i167, !noalias !1438

bb.io:                                            ; preds = %bb.ik
  %i.bbz = lshr exact i64 %.sroa.511.0.copyload.i161, 2 ; 2 uses
  %.not127.i171 = icmp eq i32 %i.axo, 0
  br i1 %.not127.i171, label %._crit_edge.split.i196, label %.lr.ph109.i

.lr.ph109.i:                                      ; preds = %bb.io
  %.not128.i172 = icmp eq i32 %i.axq, 0
  %i.bca = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 32
  %i.bcb = load i64, ptr %i.bca, align 8, !alias.scope !1435, !noalias !1437 ; 4 uses
  %i.bcc = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 24
  %i.bcd = load ptr, ptr %i.bcc, align 8, !alias.scope !1435, !noalias !1437, !nonnull !5
  %i.bce = icmp sgt i32 %i.axm, -1
  %i.bcf = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.bcg = getelementptr inbounds nuw i8, ptr %i.o, i64 24 ; 2 uses
  br i1 %.not128.i172, label %._crit_edge.split.i196, label %.lr.ph109.split.i

.lr.ph109.split.i:                                ; preds = %.lr.ph109.i
  %i.bch = icmp sgt i32 %i.axk, -1
  br i1 %i.bch, label %.lr.ph109.split.split.us.i, label %.lr.ph.i173, !prof !19

.lr.ph109.split.split.us.i:                       ; preds = %.lr.ph109.split.i
  br i1 %i.bce, label %.lr.ph.us.us.preheader.i183, label %.lr.ph.us.i181, !prof !19

.lr.ph.us.us.preheader.i183:                      ; preds = %.lr.ph109.split.split.us.i
  %wide.trip.count.i184 = zext i32 %i.axq to i64
  %.sroa.6280.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.12298.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  %i.bci = fdiv <2 x double> %i.axh, splat (double 1.270000e+02)
  %i.bcj = fptrunc <2 x double> %i.bci to <2 x float> ; 2 uses
  %i.bck = call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.bcj)
  %i.bcl = insertelement <2 x float> poison, float %.val248, i64 0
  %i.bcm = shufflevector <2 x float> %i.bcl, <2 x float> poison, <2 x i32> zeroinitializer
  br label %.lr.ph.us.us.i185

.lr.ph.us.us.i185:                                ; preds = %..loopexit34_crit_edge.split.us.split.us.us.us.i195, %.lr.ph.us.us.preheader.i183
  %.sroa.012.0108.us.us.i = phi i32 [ %i.bcn, %..loopexit34_crit_edge.split.us.split.us.us.us.i195 ], [ 0, %.lr.ph.us.us.preheader.i183 ] ; 3 uses
  %i.bcn = add nuw i32 %.sroa.012.0108.us.us.i, 1 ; 3 uses
  %i.bco = add i32 %.sroa.012.0108.us.us.i, %i.axs ; 2 uses
  %i.bcp = icmp slt i32 %i.bco, 0
  %..i68.us.us.i186 = call i32 @llvm.umin.i32(i32 %i.bco, i32 range(i32 1, 0) %i.axk)
  %.sroa.0.0.i69.us.us.i187 = select i1 %i.bcp, i32 0, i32 %..i68.us.us.i186
  %i.bcq = uitofp nneg i32 %.sroa.0.0.i69.us.us.i187 to float
  br label %bb.ip

bb.ip:                                            ; preds = %bb.is, %.lr.ph.us.us.i185
  %indvars.iv.i188 = phi i64 [ %indvars.iv.next.i189, %bb.is ], [ 0, %.lr.ph.us.us.i185 ] ; 2 uses
  %indvars.iv.next.i189 = add nuw nsw i64 %indvars.iv.i188, 1 ; 3 uses
  %i.bcr = trunc nuw i64 %indvars.iv.i188 to i32  ; 2 uses
  %i.bcs = mul i32 %i.axo, %i.bcr
  %i.bct = add i32 %i.bcs, %.sroa.012.0108.us.us.i
  %i.bcu = zext i32 %i.bct to i64                 ; 3 uses
  %i.bcv = icmp ugt i64 %i.bcb, %i.bcu
  br i1 %i.bcv, label %bb.iq, label %.split.us.invoke.i179

bb.iq:                                            ; preds = %bb.ip
  %i.bcw = getelementptr inbounds nuw i8, ptr %i.bcd, i64 %i.bcu
  %i.bcx = load i8, ptr %i.bcw, align 1, !noalias !1438, !noundef !5
  %i.bcy = add i32 %i.axu, %i.bcr                 ; 2 uses
  %i.bcz = icmp slt i32 %i.bcy, 0
  %..i73.us.us.us.us.i190 = call i32 @llvm.umin.i32(i32 %i.bcy, i32 range(i32 1, 0) %i.axm)
  %.sroa.0.0.i74.us.us.us.us.i191 = select i1 %i.bcz, i32 0, i32 %..i73.us.us.us.us.i190
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !1438
  store ptr %i.cg, ptr %i.o, align 8, !noalias !1441
  store <2 x double> %i.axh, ptr %.sroa.6280.0..sroa_idx, align 8, !noalias !1441
  store <4 x float> %i.awt, ptr %i.bcg, align 8, !noalias !1441
  store <2 x float> %i.awu, ptr %.sroa.12298.0..sroa_idx, align 8, !noalias !1441
  store float %.val248, ptr %.sroa.14.0..sroa_idx, align 8, !noalias !1441
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1443
  %i.bda = uitofp nneg i32 %.sroa.0.0.i74.us.us.us.us.i191 to float
  store float %i.bcq, ptr %i.a, align 8, !noalias !1443
  store float %i.bda, ptr %i.bcf, align 4, !noalias !1443
  invoke void @_RNvMs_NtCsd315radwPZ_14tiny_skia_path9transformNtB4_9Transform9map_point(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(24) %i.bcg, ptr noalias nofree noundef nonnull align 4 dereferenceable(8) %i.a)
          to label %.noexc81.us.us.us.us.i unwind label %.loopexit35.split.us.split.us.split.us.split.us.i192, !noalias !1438

.noexc81.us.us.us.us.i:                           ; preds = %bb.iq
  %i.bdb = load <2 x float>, ptr %i.a, align 8, !noalias !1443
  %i.bdc = fmul <2 x float> %i.bcm, %i.bdb
  %i.bdd = frem <2 x float> %i.bdc, %i.bcj        ; 3 uses
  %i.bde = fcmp olt <2 x float> %i.bdd, zeroinitializer
  %i.bdf = fadd <2 x float> %i.bck, %i.bdd
  %i.bdg = select <2 x i1> %i.bde, <2 x float> %i.bdf, <2 x float> %i.bdd ; 2 uses
  %i.bdh = extractelement <2 x float> %i.bdg, i64 0
  %i.bdi = call float @llvm.floor.f32(float %i.bdh)
  %i.bdj = call i32 @llvm.fptoui.sat.i32.f32(float %i.bdi)
  %i.bdk = extractelement <2 x float> %i.bdg, i64 1
  %i.bdl = call float @llvm.floor.f32(float %i.bdk)
  %i.bdm = call i32 @llvm.fptoui.sat.i32.f32(float %i.bdl)
  %i.bdn = invoke i40 @_RNvMNtCsfVrisfeHJNS_9tiny_skia6pixmapNtB2_6Pixmap5pixel(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.cg, i32 noundef %i.bdj, i32 noundef %i.bdm)
          to label %.noexc82.us.us.us.us.i unwind label %.loopexit35.split.us.split.us.split.us.split.us.i192, !noalias !1438 ; 2 uses

.noexc82.us.us.us.us.i:                           ; preds = %.noexc81.us.us.us.us.i
  %i.bdo = trunc i40 %i.bdn to i1
  br i1 %i.bdo, label %bb.ir, label %.split64.us.i, !prof !19

bb.ir:                                            ; preds = %.noexc82.us.us.us.us.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1443
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !1438
  %i.bdp = trunc nuw i64 %indvars.iv.next.i189 to i32
  %i.bdq = mul i32 %i.ayf, %i.bdp
  %i.bdr = add i32 %i.bdq, %i.bcn
  %i.bds = zext i32 %i.bdr to i64                 ; 3 uses
  %i.bdt = icmp samesign ugt i64 %i.bbz, %i.bds
  br i1 %i.bdt, label %bb.is, label %.split.us.invoke.i179

bb.is:                                            ; preds = %bb.ir
  %.sroa.04.1.extract.shift.i79.us.us.us.us.i = lshr i40 %i.bdn, 8
  %.sroa.04.1.extract.trunc.i80.us.us.us.us.i = trunc nuw i40 %.sroa.04.1.extract.shift.i79.us.us.us.us.i to i32 ; 2 uses
  %i.bdu = and i32 %.sroa.04.1.extract.trunc.i80.us.us.us.us.i, 16711935
  %i.bdv = zext i8 %i.bcx to i32                  ; 2 uses
  %i.bdw = mul nuw i32 %i.bdu, %i.bdv
  %i.bdx = lshr i32 %i.bdw, 8
  %i.bdy = and i32 %i.bdx, 16711935
  %i.bdz = lshr i32 %.sroa.04.1.extract.trunc.i80.us.us.us.us.i, 8
  %i.bea = and i32 %i.bdz, 16711935
  %i.beb = mul nuw i32 %i.bea, %i.bdv
  %i.bec = and i32 %i.beb, -16711936
  %i.bed = or disjoint i32 %i.bdy, %i.bec
  %i.bee = getelementptr inbounds nuw [4 x i8], ptr %.sroa.410.0.copyload.i159, i64 %i.bds
  store i32 %i.bed, ptr %i.bee, align 4, !noalias !1438
  %exitcond.not.i194 = icmp eq i64 %indvars.iv.next.i189, %wide.trip.count.i184
  br i1 %exitcond.not.i194, label %..loopexit34_crit_edge.split.us.split.us.us.us.i195, label %bb.ip
end_hunk_1
