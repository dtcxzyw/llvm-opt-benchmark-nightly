Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/WasmEmitter?download=true
inline.NumInlined: 1139
inline.NumDeleted: 639
begin_hunk_0_@_ZN12_GLOBAL__N_110WasmWriter9writeWasmERN4llvm11raw_ostreamE:bb.a
  br label %_ZN4llvm11raw_ostreamlsEc.exit.i.i182

_ZN4llvm11raw_ostreamlsEc.exit.i.i182:            ; preds = %bb.oe, %bb.od
  br i1 %.not.i.not.i179, label %_ZN4llvm13encodeULEB128EmRNS_11raw_ostreamEj.exit.i183, label %bb.oc, !llvm.loop !47

_ZN4llvm13encodeULEB128EmRNS_11raw_ostreamEj.exit.i183: ; preds = %_ZN4llvm11raw_ostreamlsEc.exit.i.i182
  %i.bla = load ptr, ptr %i.bkl, align 8, !tbaa !261 ; 2 uses
  %i.blb = load ptr, ptr %i.bkm, align 8, !tbaa !261 ; 2 uses
  %.not4.i184 = icmp eq ptr %i.bla, %i.blb
  br i1 %.not4.i184, label %_ZN12_GLOBAL__N_110WasmWriter19writeSectionContentERN4llvm11raw_ostreamERNS1_8WasmYAML13CustomSectionE.exit, label %.lr.ph.i185

.lr.ph.i185:                                      ; preds = %_ZN4llvm13encodeULEB128EmRNS_11raw_ostreamEj.exit.i183, %_ZL11writeLimitsRKN4llvm8WasmYAML6LimitsERNS_11raw_ostreamE.exit.i198
  %.sroa.01.05.i186 = phi ptr [ %i.bmb, %_ZL11writeLimitsRKN4llvm8WasmYAML6LimitsERNS_11raw_ostreamE.exit.i198 ], [ %i.bla, %_ZN4llvm13encodeULEB128EmRNS_11raw_ostreamEj.exit.i183 ] ; 5 uses
  %i.blc = load i32, ptr %.sroa.01.05.i186, align 4, !tbaa !20
  %i.bld = trunc i32 %i.blc to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  store i8 %i.bld, ptr %i.d, align 1
  %i.ble = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %16, ptr noundef nonnull %i.d, i64 noundef 1) #8 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  %i.blf = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i186, i64 4
  %i.blg = load i32, ptr %i.blf, align 4, !tbaa !20
  %i.blh = zext i32 %i.blg to i64
  br label %bb.of

bb.of:                                            ; preds = %_ZN4llvm11raw_ostreamlsEc.exit.i.i.i191, %.lr.ph.i185
  %.019.i.i.i187 = phi i64 [ %i.blh, %.lr.ph.i185 ], [ %i.bli, %_ZN4llvm11raw_ostreamlsEc.exit.i.i.i191 ] ; 2 uses
  %i.bli = lshr i64 %.019.i.i.i187, 7             ; 2 uses
  %.not.i.not.i.i188 = icmp eq i64 %i.bli, 0      ; 2 uses
  %i.blj = trunc i64 %.019.i.i.i187 to i8         ; 2 uses
  %i.blk = or i8 %i.blj, -128
  %.0.i.i.i189 = select i1 %.not.i.not.i.i188, i8 %i.blj, i8 %i.blk ; 2 uses
  %i.bll = load ptr, ptr %i.ax, align 8, !tbaa !42 ; 3 uses
  %i.blm = load ptr, ptr %i.ay, align 8, !tbaa !46
  %.not.i.i.i.i190 = icmp ult ptr %i.bll, %i.blm
  br i1 %.not.i.i.i.i190, label %bb.oh, label %bb.og

bb.og:                                            ; preds = %bb.of
  %i.bln = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %16, i8 noundef zeroext %.0.i.i.i189) #8 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEc.exit.i.i.i191

bb.oh:                                            ; preds = %bb.of
  %i.blo = getelementptr inbounds nuw i8, ptr %i.bll, i64 1
  store ptr %i.blo, ptr %i.ax, align 8, !tbaa !42
  store i8 %.0.i.i.i189, ptr %i.bll, align 1, !tbaa !37
  br label %_ZN4llvm11raw_ostreamlsEc.exit.i.i.i191

_ZN4llvm11raw_ostreamlsEc.exit.i.i.i191:          ; preds = %bb.oh, %bb.og
  br i1 %.not.i.not.i.i188, label %_ZN4llvm13encodeULEB128EmRNS_11raw_ostreamEj.exit.i.i192, label %bb.of, !llvm.loop !47

_ZN4llvm13encodeULEB128EmRNS_11raw_ostreamEj.exit.i.i192: ; preds = %_ZN4llvm11raw_ostreamlsEc.exit.i.i.i191
  %i.blp = load i32, ptr %.sroa.01.05.i186, align 4, !tbaa !20
  %i.blq = and i32 %i.blp, 1
  %.not.i7.i = icmp eq i32 %i.blq, 0
  br i1 %.not.i7.i, label %_ZL11writeLimitsRKN4llvm8WasmYAML6LimitsERNS_11raw_ostreamE.exit.i198, label %bb.oi

bb.oi:                                            ; preds = %_ZN4llvm13encodeULEB128EmRNS_11raw_ostreamEj.exit.i.i192
  %i.blr = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i186, i64 8
  %i.bls = load i32, ptr %i.blr, align 4, !tbaa !20
  %i.blt = zext i32 %i.bls to i64
  br label %bb.oj

bb.oj:                                            ; preds = %_ZN4llvm11raw_ostreamlsEc.exit.i12.i.i197, %bb.oi
  %.019.i7.i.i193 = phi i64 [ %i.blt, %bb.oi ], [ %i.blu, %_ZN4llvm11raw_ostreamlsEc.exit.i12.i.i197 ] ; 2 uses
  %i.blu = lshr i64 %.019.i7.i.i193, 7            ; 2 uses
  %.not.i9.not.i.i194 = icmp eq i64 %i.blu, 0     ; 2 uses
  %i.blv = trunc i64 %.019.i7.i.i193 to i8        ; 2 uses
  %i.blw = or i8 %i.blv, -128
  %.0.i10.i.i195 = select i1 %.not.i9.not.i.i194, i8 %i.blv, i8 %i.blw ; 2 uses
  %i.blx = load ptr, ptr %i.ax, align 8, !tbaa !42 ; 3 uses
  %i.bly = load ptr, ptr %i.ay, align 8, !tbaa !46
  %.not.i.i11.i.i196 = icmp ult ptr %i.blx, %i.bly
  br i1 %.not.i.i11.i.i196, label %bb.ol, label %bb.ok

bb.ok:                                            ; preds = %bb.oj
  %i.blz = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %16, i8 noundef zeroext %.0.i10.i.i195) #8 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEc.exit.i12.i.i197

bb.ol:                                            ; preds = %bb.oj
  %i.bma = getelementptr inbounds nuw i8, ptr %i.blx, i64 1
  store ptr %i.bma, ptr %i.ax, align 8, !tbaa !42
  store i8 %.0.i10.i.i195, ptr %i.blx, align 1, !tbaa !37
  br label %_ZN4llvm11raw_ostreamlsEc.exit.i12.i.i197

_ZN4llvm11raw_ostreamlsEc.exit.i12.i.i197:        ; preds = %bb.ol, %bb.ok
  br i1 %.not.i9.not.i.i194, label %_ZL11writeLimitsRKN4llvm8WasmYAML6LimitsERNS_11raw_ostreamE.exit.i198, label %bb.oj, !llvm.loop !47

_ZL11writeLimitsRKN4llvm8WasmYAML6LimitsERNS_11raw_ostreamE.exit.i198: ; preds = %_ZN4llvm11raw_ostreamlsEc.exit.i12.i.i197, %_ZN4llvm13encodeULEB128EmRNS_11raw_ostreamEj.exit.i.i192
  %i.bmb = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i186, i64 16 ; 2 uses
  %.not.i199 = icmp eq ptr %i.bmb, %i.blb
  br i1 %.not.i199, label %_ZN12_GLOBAL__N_110WasmWriter19writeSectionContentERN4llvm11raw_ostreamERNS1_8WasmYAML13CustomSectionE.exit, label %.lr.ph.i185

bb.om:                                            ; preds = %bb.oa
  %i.bmc = icmp ne i32 %i.fj, 13
  %.not107 = or i1 %.not101302, %i.bmc
  br i1 %.not107, label %bb.oo, label %bb.on

bb.on:                                            ; preds = %bb.om
  call fastcc void @_ZN12_GLOBAL__N_110WasmWriter19writeSectionContentERN4llvm11raw_ostreamERNS1_8WasmYAML10TagSectionE(ptr noundef nonnull align 8 dereferenceable(48) %16, ptr noundef nonnull align 8 dereferenceable(72) %i.fh)
  br label %_ZN12_GLOBAL__N_110WasmWriter19writeSectionContentERN4llvm11raw_ostreamERNS1_8WasmYAML13CustomSectionE.exit

bb.oo:                                            ; preds = %bb.om
  %i.bmd = icmp ne i32 %i.fj, 6
  %.not108 = or i1 %.not101302, %i.bmd
  br i1 %.not108, label %bb.oq, label %bb.op

bb.op:                                            ; preds = %bb.oo
  call fastcc void @_ZN12_GLOBAL__N_110WasmWriter19writeSectionContentERN4llvm11raw_ostreamERNS1_8WasmYAML13GlobalSectionE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %16, ptr noundef nonnull align 8 dereferenceable(72) %i.fh)
  br label %_ZN12_GLOBAL__N_110WasmWriter19writeSectionContentERN4llvm11raw_ostreamERNS1_8WasmYAML13CustomSectionE.exit

bb.oq:                                            ; preds = %bb.oo
  %i.bme = icmp ne i32 %i.fj, 7
  %.not109 = or i1 %.not101302, %i.bme
  br i1 %.not109, label %bb.os, label %bb.or

bb.or:                                            ; preds = %bb.oq
  call fastcc void @_ZN12_GLOBAL__N_110WasmWriter19writeSectionContentERN4llvm11raw_ostreamERNS1_8WasmYAML13ExportSectionE(ptr noundef nonnull align 8 dereferenceable(48) %16, ptr noundef nonnull align 8 dereferenceable(72) %i.fh)
  br label %_ZN12_GLOBAL__N_110WasmWriter19writeSectionContentERN4llvm11raw_ostreamERNS1_8WasmYAML13CustomSectionE.exit

bb.os:                                            ; preds = %bb.oq
  %i.bmf = icmp ne i32 %i.fj, 8
  %.not110 = or i1 %.not101302, %i.bmf
  br i1 %.not110, label %bb.ou, label %bb.ot

bb.ot:                                            ; preds = %bb.os
  %i.bmg = getelementptr i8, ptr %i.fh, i64 44
  %.val = load i32, ptr %i.bmg, align 4, !tbaa !262
  call fastcc void @_ZN12_GLOBAL__N_110WasmWriter19writeSectionContentERN4llvm11raw_ostreamERNS1_8WasmYAML12StartSectionE(ptr noundef nonnull align 8 dereferenceable(48) %16, i32 %.val)
  br label %_ZN12_GLOBAL__N_110WasmWriter19writeSectionContentERN4llvm11raw_ostreamERNS1_8WasmYAML13CustomSectionE.exit

bb.ou:                                            ; preds = %bb.os
  %i.bmh = icmp ne i32 %i.fj, 9
  %.not111 = or i1 %.not101302, %i.bmh
  br i1 %.not111, label %bb.ow, label %bb.ov

bb.ov:                                            ; preds = %bb.ou
  call fastcc void @_ZN12_GLOBAL__N_110WasmWriter19writeSectionContentERN4llvm11raw_ostreamERNS1_8WasmYAML11ElemSectionE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %16, ptr noundef nonnull align 8 dereferenceable(72) %i.fh)
  br label %_ZN12_GLOBAL__N_110WasmWriter19writeSectionContentERN4llvm11raw_ostreamERNS1_8WasmYAML13CustomSectionE.exit

bb.ow:                                            ; preds = %bb.ou
  %i.bmi = icmp ne i32 %i.fj, 10
  %.not112 = or i1 %.not101302, %i.bmi
  br i1 %.not112, label %bb.oy, label %bb.ox

bb.ox:                                            ; preds = %bb.ow
  call fastcc void @_ZN12_GLOBAL__N_110WasmWriter19writeSectionContentERN4llvm11raw_ostreamERNS1_8WasmYAML11CodeSectionE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %16, ptr noundef nonnull align 8 dereferenceable(72) %i.fh)
  br label %_ZN12_GLOBAL__N_110WasmWriter19writeSectionContentERN4llvm11raw_ostreamERNS1_8WasmYAML13CustomSectionE.exit

bb.oy:                                            ; preds = %bb.ow
  %i.bmj = icmp ne i32 %i.fj, 11
  %.not113 = or i1 %.not101302, %i.bmj
  br i1 %.not113, label %bb.pa, label %bb.oz

bb.oz:                                            ; preds = %bb.oy
  call fastcc void @_ZN12_GLOBAL__N_110WasmWriter19writeSectionContentERN4llvm11raw_ostreamERNS1_8WasmYAML11DataSectionE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %16, ptr noundef nonnull align 8 dereferenceable(72) %i.fh)
  br label %_ZN12_GLOBAL__N_110WasmWriter19writeSectionContentERN4llvm11raw_ostreamERNS1_8WasmYAML13CustomSectionE.exit

bb.pa:                                            ; preds = %bb.oy
  %i.bmk = icmp ne i32 %i.fj, 12
  %.not114 = or i1 %.not101302, %i.bmk
  br i1 %.not114, label %bb.pc, label %bb.pb

bb.pb:                                            ; preds = %bb.pa
  %i.bml = getelementptr i8, ptr %i.fh, i64 44
  %.val119 = load i32, ptr %i.bml, align 4, !tbaa !264
  call fastcc void @_ZN12_GLOBAL__N_110WasmWriter19writeSectionContentERN4llvm11raw_ostreamERNS1_8WasmYAML16DataCountSectionE(ptr noundef nonnull align 8 dereferenceable(48) %16, i32 %.val119)
  br label %_ZN12_GLOBAL__N_110WasmWriter19writeSectionContentERN4llvm11raw_ostreamERNS1_8WasmYAML13CustomSectionE.exit

bb.pc:                                            ; preds = %bb.pa
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #8
  store i8 1, ptr %i.dy, align 1, !tbaa !36
  store ptr @.str.2, ptr %18, align 8, !tbaa !37
  store i8 3, ptr %i.dx, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #8
  %i.bmm = load i32, ptr %i.fi, align 4, !tbaa !20
  store i8 9, ptr %i.dz, align 8, !tbaa !30
  store i8 1, ptr %i.ea, align 1, !tbaa !36
  store i32 %i.bmm, ptr %19, align 8, !tbaa !37
  call void @_ZN4llvmplERKNS_5TwineES2_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Twine") align 8 %17, ptr noundef nonnull align 8 dereferenceable(34) %18, ptr noundef nonnull align 8 dereferenceable(34) %19)
  %i.bmn = load ptr, ptr %i.dk, align 8, !tbaa !38
  %i.bmo = load i64, ptr %i.dl, align 8, !tbaa !39
  call void %i.bmn(i64 noundef %i.bmo, ptr noundef nonnull align 8 dereferenceable(34) %17) #8, !inline_history !40
  store i8 1, ptr %i.dm, align 8, !tbaa !41
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #8
  br label %_ZN12_GLOBAL__N_110WasmWriter19writeSectionContentERN4llvm11raw_ostreamERNS1_8WasmYAML13CustomSectionE.exit

_ZN12_GLOBAL__N_110WasmWriter19writeSectionContentERN4llvm11raw_ostreamERNS1_8WasmYAML13CustomSectionE.exit: ; preds = %_ZL14writeStringRefRKN4llvm9StringRefERNS_11raw_ostreamE.exit20.i, %._crit_edge65.i, %_ZL11writeLimitsRKN4llvm8WasmYAML6LimitsERNS_11raw_ostreamE.exit.i, %_ZN4llvm13encodeULEB128EmRNS_11raw_ostreamEj.exit12.i, %_ZL11writeLimitsRKN4llvm8WasmYAML6LimitsERNS_11raw_ostreamE.exit.i176, %_ZL11writeLimitsRKN4llvm8WasmYAML6LimitsERNS_11raw_ostreamE.exit.i198, %_ZN4llvm13encodeULEB128EmRNS_11raw_ostreamEj.exit.i183, %_ZL11writeLimitsRKN4llvm8WasmYAML6LimitsERNS_11raw_ostreamE.exit.thread.i, %_ZN4llvm13encodeULEB128EmRNS_11raw_ostreamEj.exit.i162, %_ZN4llvm13encodeULEB128EmRNS_11raw_ostreamEj.exit.i152, %_ZN4llvmplERKNS_5TwineES2_.exit.i, %_ZN4llvm13encodeULEB128EmRNS_11raw_ostreamEj.exit.i130, %.thread.i, %_ZN4llvm13encodeULEB128EmRNS_11raw_ostreamEj.exit.i, %_ZL14writeStringRefRKN4llvm9StringRefERNS_11raw_ostreamE.exit, %bb.jm, %_ZL14writeStringRefRKN4llvm9StringRefERNS_11raw_ostreamE.exit.i137.i, %_ZN12_GLOBAL__N_110WasmWriter19writeSectionContentERN4llvm11raw_ostreamERNS1_8WasmYAML14LinkingSectionE.exit.i, %_ZN12_GLOBAL__N_116SubSectionWriterD2Ev.exit104.i.i, %bb.eh, %_ZN12_GLOBAL__N_110WasmWriter19writeSectionContentERN4llvm11raw_ostreamERNS1_8WasmYAML13DylinkSectionE.exit.i, %_ZN4llvm13encodeULEB128EmRNS_11raw_ostreamEj.exit.i281, %bb.op, %bb.ot, %bb.ox, %bb.pb, %bb.pc, %bb.oz, %bb.ov, %bb.or, %bb.on
  %i.bmp = load i8, ptr %i.dm, align 8, !tbaa !41, !range !225, !noundef !18
  %i.bmq = trunc nuw i8 %i.bmp to i1
  br i1 %i.bmq, label %.critedge118, label %bb.pd

bb.pd:                                            ; preds = %_ZN12_GLOBAL__N_110WasmWriter19writeSectionContentERN4llvm11raw_ostreamERNS1_8WasmYAML13CustomSectionE.exit
  %i.bmr = load ptr, ptr %.sroa.0292.0347, align 8, !tbaa !24 ; 2 uses
  %i.bms = getelementptr inbounds nuw i8, ptr %i.bmr, i64 40
  %i.bmt = getelementptr inbounds nuw i8, ptr %i.bmr, i64 41
  %i.bmu = load i8, ptr %i.bmt, align 1, !tbaa !266, !range !225, !noundef !18
  %i.bmv = trunc nuw i8 %i.bmu to i1
  %i.bmw = load i8, ptr %i.bms, align 1
  %.0.i209 = select i1 %i.bmv, i8 %i.bmw, i8 5    ; 2 uses
  %23 = zext i8 %.0.i209 to i32                   ; 3 uses
  %i.bmx = load i64, ptr %i.ar, align 8, !tbaa !51
  %i.bmy = call noundef i32 @_ZN4llvm14getULEB128SizeEm(i64 noundef %i.bmx) #8
  %.not316 = icmp ugt i32 %i.bmy, %23             ; 2 uses
  br i1 %.not316, label %_ZN4llvmplERKNS_5TwineES2_.exit, label %bb.pe

_ZN4llvmplERKNS_5TwineES2_.exit:                  ; preds = %bb.pd
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #8
  %.sroa.0.0.insert.ext = zext i8 %.0.i209 to i64
  %i.bmz = inttoptr i64 %.sroa.0.0.insert.ext to ptr
  store ptr @.str.3, ptr %20, align 8, !alias.scope !267
  store ptr %i.bmz, ptr %i.eb, align 8, !alias.scope !267
  store i8 3, ptr %i.ec, align 8, !tbaa !30, !alias.scope !267
  store i8 9, ptr %i.ed, align 1, !tbaa !36, !alias.scope !267
  %i.bna = load ptr, ptr %i.dk, align 8, !tbaa !38
  %i.bnb = load i64, ptr %i.dl, align 8, !tbaa !39
  call void %i.bna(i64 noundef %i.bnb, ptr noundef nonnull align 8 dereferenceable(34) %20) #8, !inline_history !40
  store i8 1, ptr %i.dm, align 8, !tbaa !41
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #8
  br label %bb.pn

bb.pe:                                            ; preds = %bb.pd
  %i.bnc = load i64, ptr %i.ar, align 8, !tbaa !51
  br label %bb.pf

bb.pf:                                            ; preds = %_ZN4llvm11raw_ostreamlsEc.exit.i216, %bb.pe
  %.019.i211 = phi i64 [ %i.bnc, %bb.pe ], [ %i.bnd, %_ZN4llvm11raw_ostreamlsEc.exit.i216 ] ; 2 uses
  %.018.i212 = phi i32 [ 0, %bb.pe ], [ %i.bne, %_ZN4llvm11raw_ostreamlsEc.exit.i216 ]
  %i.bnd = lshr i64 %.019.i211, 7                 ; 2 uses
  %i.bne = add nuw nsw i32 %.018.i212, 1          ; 4 uses
  %.not.i213 = icmp ne i64 %i.bnd, 0              ; 2 uses
  %i.bnf = trunc i64 %.019.i211 to i8             ; 2 uses
  %i.bng = icmp samesign ult i32 %i.bne, %23      ; 2 uses
  %or.cond.i = select i1 %.not.i213, i1 true, i1 %i.bng
  %i.bnh = or i8 %i.bnf, -128
  %.0.i214 = select i1 %or.cond.i, i8 %i.bnh, i8 %i.bnf ; 2 uses
  %i.bni = load ptr, ptr %i.ao, align 8, !tbaa !42 ; 3 uses
  %i.bnj = load ptr, ptr %i.ap, align 8, !tbaa !46
  %.not.i.i215 = icmp ult ptr %i.bni, %i.bnj
  br i1 %.not.i.i215, label %bb.ph, label %bb.pg

bb.pg:                                            ; preds = %bb.pf
  %i.bnk = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %1, i8 noundef zeroext %.0.i214) #8 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEc.exit.i216

bb.ph:                                            ; preds = %bb.pf
  %i.bnl = getelementptr inbounds nuw i8, ptr %i.bni, i64 1
  store ptr %i.bnl, ptr %i.ao, align 8, !tbaa !42
  store i8 %.0.i214, ptr %i.bni, align 1, !tbaa !37
  br label %_ZN4llvm11raw_ostreamlsEc.exit.i216

_ZN4llvm11raw_ostreamlsEc.exit.i216:              ; preds = %bb.ph, %bb.pg
  br i1 %.not.i213, label %bb.pf, label %bb.pi, !llvm.loop !47

bb.pi:                                            ; preds = %_ZN4llvm11raw_ostreamlsEc.exit.i216
  br i1 %i.bng, label %.preheader.i, label %_ZN4llvm13encodeULEB128EmRNS_11raw_ostreamEj.exit219

.preheader.i:                                     ; preds = %bb.pi
  %i.bnm = add nsw i32 %23, -1                    ; 2 uses
  %i.bnn = icmp ult i32 %i.bne, %i.bnm
  br i1 %i.bnn, label %.lr.ph.i218, label %._crit_edge.i217

.lr.ph.i218:                                      ; preds = %.preheader.i, %_ZN4llvm11raw_ostreamlsEc.exit26.i
  %.133.i = phi i32 [ %i.bns, %_ZN4llvm11raw_ostreamlsEc.exit26.i ], [ %i.bne, %.preheader.i ]
  %i.bno = load ptr, ptr %i.ao, align 8, !tbaa !42 ; 3 uses
  %i.bnp = load ptr, ptr %i.ap, align 8, !tbaa !46
  %.not.i24.i = icmp ult ptr %i.bno, %i.bnp
  br i1 %.not.i24.i, label %bb.pk, label %bb.pj

bb.pj:                                            ; preds = %.lr.ph.i218
  %i.bnq = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %1, i8 noundef zeroext -128) #8 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEc.exit26.i

bb.pk:                                            ; preds = %.lr.ph.i218
  %i.bnr = getelementptr inbounds nuw i8, ptr %i.bno, i64 1
  store ptr %i.bnr, ptr %i.ao, align 8, !tbaa !42
  store i8 -128, ptr %i.bno, align 1, !tbaa !37
  br label %_ZN4llvm11raw_ostreamlsEc.exit26.i

_ZN4llvm11raw_ostreamlsEc.exit26.i:               ; preds = %bb.pk, %bb.pj
  %i.bns = add i32 %.133.i, 1                     ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.bns, %i.bnm
  br i1 %exitcond.not.i, label %._crit_edge.i217, label %.lr.ph.i218, !llvm.loop !272

._crit_edge.i217:                                 ; preds = %_ZN4llvm11raw_ostreamlsEc.exit26.i, %.preheader.i
  %i.bnt = load ptr, ptr %i.ao, align 8, !tbaa !42 ; 3 uses
  %i.bnu = load ptr, ptr %i.ap, align 8, !tbaa !46
  %.not.i27.i = icmp ult ptr %i.bnt, %i.bnu
  br i1 %.not.i27.i, label %bb.pm, label %bb.pl

bb.pl:                                            ; preds = %._crit_edge.i217
  %i.bnv = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %1, i8 noundef zeroext 0) #8 ; 0 uses
  br label %_ZN4llvm13encodeULEB128EmRNS_11raw_ostreamEj.exit219

bb.pm:                                            ; preds = %._crit_edge.i217
  %i.bnw = getelementptr inbounds nuw i8, ptr %i.bnt, i64 1
  store ptr %i.bnw, ptr %i.ao, align 8, !tbaa !42
  store i8 0, ptr %i.bnt, align 1, !tbaa !37
  br label %_ZN4llvm13encodeULEB128EmRNS_11raw_ostreamEj.exit219

_ZN4llvm13encodeULEB128EmRNS_11raw_ostreamEj.exit219: ; preds = %bb.pl, %bb.pm, %bb.pi
  %i.bnx = load ptr, ptr %15, align 8, !tbaa !99
  %i.bny = load i64, ptr %i.ar, align 8, !tbaa !51
  %i.bnz = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef %i.bnx, i64 noundef %i.bny) #8 ; 0 uses
  br label %bb.pn

bb.pn:                                            ; preds = %_ZN4llvmplERKNS_5TwineES2_.exit, %_ZN4llvm13encodeULEB128EmRNS_11raw_ostreamEj.exit219
  call void @_ZN4llvm11raw_ostreamD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %16) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #8
  %i.boa = load ptr, ptr %15, align 8, !tbaa !99  ; 2 uses
  %i.bob = icmp eq ptr %i.boa, %i.aq
  br i1 %i.bob, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.pn
  %i.boc = load i64, ptr %i.aq, align 8, !tbaa !37
  %i.bod = add i64 %i.boc, 1
  call void @_ZdlPvm(ptr noundef %i.boa, i64 noundef %i.bod) #9
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #8
  br i1 %.not316, label %.loopexit, label %bb.po

bb.po:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.boe = getelementptr inbounds nuw i8, ptr %.sroa.0292.0347, i64 8 ; 2 uses
  %.not299 = icmp eq ptr %i.boe, %i.an
  br i1 %.not299, label %.critedge116, label %bb.b

.critedge118:                                     ; preds = %_ZN12_GLOBAL__N_110WasmWriter19writeSectionContentERN4llvm11raw_ostreamERNS1_8WasmYAML13CustomSectionE.exit
  call void @_ZN4llvm11raw_ostreamD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %16) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #8
  %i.bof = load ptr, ptr %15, align 8, !tbaa !99  ; 2 uses
  %i.bog = icmp eq ptr %i.bof, %i.aq
  br i1 %i.bog, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i220

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i220: ; preds = %.critedge118
  %i.boh = load i64, ptr %i.aq, align 8, !tbaa !37
  %i.boi = add i64 %i.boh, 1
  call void @_ZdlPvm(ptr noundef %i.bof, i64 noundef %i.boi) #9
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222: ; preds = %.critedge118, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i220
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #8
  br label %.loopexit

.critedge116:                                     ; preds = %bb.po
  %.pre = load ptr, ptr %0, align 8, !tbaa !14    ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  %.pre377 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !22 ; 2 uses
  %.phi.trans.insert378 = getelementptr inbounds nuw i8, ptr %.pre, i64 16
  %.pre379 = load ptr, ptr %.phi.trans.insert378, align 8, !tbaa !22 ; 2 uses
  %.not300349 = icmp eq ptr %.pre377, %.pre379
  br i1 %.not300349, label %.loopexit, label %.lr.ph352

.lr.ph352:                                        ; preds = %.critedge116
  %i.boj = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 4 uses
  %i.bok = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 3 uses
  %i.bol = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.bom = getelementptr inbounds nuw i8, ptr %22, i64 40
  %i.bon = getelementptr inbounds nuw i8, ptr %22, i64 44
  %i.boo = getelementptr inbounds nuw i8, ptr %22, i64 16
  %i.bop = getelementptr inbounds nuw i8, ptr %22, i64 48
  %i.boq = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.bor = getelementptr inbounds nuw i8, ptr %3, i64 33
  %i.bos = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bot = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bou = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bov = getelementptr inbounds nuw i8, ptr %22, i64 32 ; 25 uses
  %i.bow = getelementptr inbounds nuw i8, ptr %22, i64 24 ; 11 uses
  %i.box = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.boy = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.boz = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %bb.pp

bb.pp:                                            ; preds = %.lr.ph352, %bb.ra
  %.0351 = phi i32 [ 0, %.lr.ph352 ], [ %.1, %bb.ra ] ; 2 uses
  %.sroa.0287.0350 = phi ptr [ %.pre377, %.lr.ph352 ], [ %i.btx, %bb.ra ] ; 3 uses
  %i.bpa = load ptr, ptr %.sroa.0287.0350, align 8, !tbaa !24 ; 2 uses
  %i.bpb = getelementptr inbounds nuw i8, ptr %i.bpa, i64 16
  %i.bpc = load ptr, ptr %i.bpb, align 8, !tbaa !273
  %i.bpd = getelementptr inbounds nuw i8, ptr %i.bpa, i64 24
  %i.bpe = load ptr, ptr %i.bpd, align 8, !tbaa !273
  %i.bpf = icmp eq ptr %i.bpc, %i.bpe
  br i1 %i.bpf, label %bb.ra, label %bb.pq

bb.pq:                                            ; preds = %bb.pp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  store i8 0, ptr %i.c, align 1
  %i.bpg = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull %i.c, i64 noundef 1) #8 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #8
  store ptr %i.boj, ptr %21, align 8, !tbaa !49
  store i64 0, ptr %i.bok, align 8, !tbaa !51
  store i8 0, ptr %i.boj, align 8, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #8
  store i32 0, ptr %i.bol, align 8, !tbaa !53
  store i8 0, ptr %i.bom, align 8, !tbaa !54
  store i32 1, ptr %i.bon, align 4, !tbaa !55
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.boo, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN4llvm18raw_string_ostreamE, i64 16), ptr %22, align 8, !tbaa !56
  store ptr %21, ptr %i.bop, align 8, !tbaa !58
  call void @_ZN4llvm11raw_ostream16SetBufferAndModeEPcmNS0_10BufferKindE(ptr noundef nonnull align 8 dereferenceable(56) %22, ptr noundef null, i64 noundef 0, i32 noundef 0) #8
  %i.bph = load ptr, ptr %.sroa.0287.0350, align 8, !tbaa !24 ; 5 uses
  %i.bpi = getelementptr inbounds nuw i8, ptr %i.bph, i64 8
  %i.bpj = load i32, ptr %i.bpi, align 4, !tbaa !20
  switch i32 %i.bpj, label %bb.qi [
    i32 10, label %bb.pr
    i32 11, label %bb.pw
    i32 0, label %bb.qb
  ]

bb.pr:                                            ; preds = %bb.pq
  %i.bpk = load ptr, ptr %i.bov, align 8, !tbaa !42 ; 3 uses
  %i.bpl = load ptr, ptr %i.bow, align 8, !tbaa !46
  %.not.i.i.i.i234 = icmp ult ptr %i.bpk, %i.bpl
  br i1 %.not.i.i.i.i234, label %bb.pt, label %bb.ps

bb.ps:                                            ; preds = %bb.pr
  %i.bpm = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %22, i8 noundef zeroext 10) #8 ; 0 uses
  br label %_ZN4llvm13encodeULEB128EmRNS_11raw_ostreamEj.exit.i.i235

bb.pt:                                            ; preds = %bb.pr
  %i.bpn = getelementptr inbounds nuw i8, ptr %i.bpk, i64 1
  store ptr %i.bpn, ptr %i.bov, align 8, !tbaa !42
  store i8 10, ptr %i.bpk, align 1, !tbaa !37
  br label %_ZN4llvm13encodeULEB128EmRNS_11raw_ostreamEj.exit.i.i235

_ZN4llvm13encodeULEB128EmRNS_11raw_ostreamEj.exit.i.i235: ; preds = %bb.pt, %bb.ps
  %i.bpo = load ptr, ptr %i.bow, align 8, !tbaa !46
  %i.bpp = load ptr, ptr %i.bov, align 8, !tbaa !42 ; 2 uses
  %i.bpq = ptrtoint ptr %i.bpo to i64
  %i.bpr = ptrtoint ptr %i.bpp to i64
  %i.bps = sub i64 %i.bpq, %i.bpr
  %i.bpt = icmp ult i64 %i.bps, 10
  br i1 %i.bpt, label %bb.pu, label %bb.pv

bb.pu:                                            ; preds = %_ZN4llvm13encodeULEB128EmRNS_11raw_ostreamEj.exit.i.i235
  %i.bpu = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %22, ptr noundef nonnull @.str.19, i64 noundef 10) #8 ; 0 uses
  br label %_ZL14writeStringRefRKN4llvm9StringRefERNS_11raw_ostreamE.exit.i223

bb.pv:                                            ; preds = %_ZN4llvm13encodeULEB128EmRNS_11raw_ostreamEj.exit.i.i235
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.bpp, ptr noundef nonnull align 1 dereferenceable(10) @.str.19, i64 10, i1 false)
  %i.bpv = load ptr, ptr %i.bov, align 8, !tbaa !42
  %i.bpw = getelementptr inbounds nuw i8, ptr %i.bpv, i64 10
  store ptr %i.bpw, ptr %i.bov, align 8, !tbaa !42
  br label %_ZL14writeStringRefRKN4llvm9StringRefERNS_11raw_ostreamE.exit.i223

bb.pw:                                            ; preds = %bb.pq
  %i.bpx = load ptr, ptr %i.bov, align 8, !tbaa !42 ; 3 uses
  %i.bpy = load ptr, ptr %i.bow, align 8, !tbaa !46
  %.not.i.i.i19.i = icmp ult ptr %i.bpx, %i.bpy
  br i1 %.not.i.i.i19.i, label %bb.py, label %bb.px

bb.px:                                            ; preds = %bb.pw
  %i.bpz = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %22, i8 noundef zeroext 10) #8 ; 0 uses
  br label %_ZN4llvm13encodeULEB128EmRNS_11raw_ostreamEj.exit.i21.i

bb.py:                                            ; preds = %bb.pw
  %i.bqa = getelementptr inbounds nuw i8, ptr %i.bpx, i64 1
end_hunk_0
