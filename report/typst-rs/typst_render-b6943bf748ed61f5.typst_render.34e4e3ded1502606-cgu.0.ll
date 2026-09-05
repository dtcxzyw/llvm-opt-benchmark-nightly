Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst_render-b6943bf748ed61f5.typst_render.34e4e3ded1502606-cgu.0?download=true
inline.NumInlined: 1272
inline.NumDeleted: 654
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvNtCs4xylOWI7Ys4_12typst_render4text20render_outline_glyph:bb.a
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
  %.sroa.0.0.i68.i = select i1 %i.alk, i32 0, i32 %..i67.i ; 3 uses
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
  br i1 %i.alq, label %_RNvXs1d_NtNtCs3oUPovFnLWP_4core3cmp5implslNtB8_3Ord5clamp.exit69.us.i, label %_RNvXs1d_NtNtCs3oUPovFnLWP_4core3cmp5implslNtB8_3Ord5clamp.exit69.i

_RNvXs1d_NtNtCs3oUPovFnLWP_4core3cmp5implslNtB8_3Ord5clamp.exit69.us.i: ; preds = %.lr.ph106.split.split.i, %..loopexit_crit_edge.split.us109.i
  %.sroa.024.0105.us.i = phi i32 [ %i.alw, %..loopexit_crit_edge.split.us109.i ], [ %.sroa.0.0.i.i94, %.lr.ph106.split.split.i ] ; 3 uses
  %i.alw = add nuw nsw i32 %.sroa.024.0105.us.i, 1 ; 2 uses
  %i.alx = sub i32 %.sroa.024.0105.us.i, %i.akj
  br label %bb.fl

bb.fl:                                            ; preds = %.backedge.us108.i, %_RNvXs1d_NtNtCs3oUPovFnLWP_4core3cmp5implslNtB8_3Ord5clamp.exit69.us.i
  %indvars.iv167.i = phi i64 [ %i.alv, %_RNvXs1d_NtNtCs3oUPovFnLWP_4core3cmp5implslNtB8_3Ord5clamp.exit69.us.i ], [ %indvars.iv.next168.i, %.backedge.us108.i ] ; 2 uses
  %indvars.iv.next168.i = add nuw nsw i64 %indvars.iv167.i, 1 ; 2 uses
  %i.aly = trunc i64 %indvars.iv167.i to i32      ; 2 uses
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
  br i1 %i.amg, label %.backedge.us108.i, label %bb.fn

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
  br label %.backedge.us108.i

bb.fq:                                            ; preds = %bb.fn
  br i1 %i.aml, label %bb.fr, label %.split99.us.i.invoke

bb.fr:                                            ; preds = %bb.fq
  %i.anh = getelementptr inbounds nuw [4 x i8], ptr %i.ako, i64 %i.amj
  store i32 %.sroa.0.0.i, ptr %i.anh, align 4, !noalias !1416
  br label %.backedge.us108.i

.backedge.us108.i:                                ; preds = %bb.fr, %bb.fp, %bb.fm
  %lftr.wideiv170.i = trunc i64 %indvars.iv.next168.i to i32
  %exitcond171.not.i = icmp eq i32 %.sroa.0.0.i68.i, %lftr.wideiv170.i
  br i1 %exitcond171.not.i, label %..loopexit_crit_edge.split.us109.i, label %bb.fl

..loopexit_crit_edge.split.us109.i:               ; preds = %.backedge.us108.i
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
  %i.ank = trunc i64 %indvars.iv161.i to i32      ; 2 uses
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
  %lftr.wideiv164.i = trunc i64 %indvars.iv.next162.i to i32
  %exitcond165.not.i = icmp eq i32 %.sroa.0.0.i68.i, %lftr.wideiv164.i
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
end_hunk_0
