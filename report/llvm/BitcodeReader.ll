Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/BitcodeReader?download=true
inline.NumInlined: 16889
inline.NumDeleted: 7457
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_ZN12_GLOBAL__N_113BitcodeReader11parseModuleEmbN4llvm15ParserCallbacksE:bb.a
  br label %bb.nf

bb.iy:                                            ; preds = %bb.ih
  %i.aql = load ptr, ptr %i.dj, align 8, !tbaa !1621, !noalias !2589, !nonnull !19, !align !703
  %i.aqm = call noundef ptr @_ZN4llvm4Type10getLabelTyERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(8) %i.aql) #29
  br label %bb.nf

bb.iz:                                            ; preds = %bb.ih
  %i.aqn = load ptr, ptr %i.dj, align 8, !tbaa !1621, !noalias !2589, !nonnull !19, !align !703
  %i.aqo = call noundef ptr @_ZN4llvm4Type13getMetadataTyERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(8) %i.aqn) #29
  br label %bb.nf

bb.ja:                                            ; preds = %bb.ih
  %i.aqp = load ptr, ptr %i.dj, align 8, !tbaa !1621, !noalias !2589, !nonnull !19, !align !703
  %i.aqq = call noundef ptr @_ZN4llvm11IntegerType3getERNS_11LLVMContextEj(ptr noundef nonnull align 8 dereferenceable(8) %i.aqp, i32 noundef 64) #29
  %i.aqr = call noundef ptr @_ZN4llvm15FixedVectorType3getEPNS_4TypeEj(ptr noundef %i.aqq, i32 noundef 1) #29
  br label %bb.nf

bb.jb:                                            ; preds = %bb.ih
  %i.aqs = load ptr, ptr %i.dj, align 8, !tbaa !1621, !noalias !2589, !nonnull !19, !align !703
  %i.aqt = call noundef ptr @_ZN4llvm4Type12getX86_AMXTyERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(8) %i.aqs) #29
  br label %bb.nf

bb.jc:                                            ; preds = %bb.ih
  %i.aqu = load ptr, ptr %i.dj, align 8, !tbaa !1621, !noalias !2589, !nonnull !19, !align !703
  %i.aqv = call noundef ptr @_ZN4llvm4Type10getTokenTyERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(8) %i.aqu) #29
  br label %bb.nf

bb.jd:                                            ; preds = %bb.ih
  %i.aqw = load i32, ptr %i.ez, align 8, !tbaa !66, !noalias !2589
  %.not.i197.i.i = icmp eq i32 %i.aqw, 0
  br i1 %.not.i197.i.i, label %bb.je, label %bb.jf

bb.je:                                            ; preds = %bb.jd
  call void @llvm.lifetime.start.p0(ptr nonnull %79) #29, !noalias !2589
  store i8 1, ptr %i.ir, align 1, !tbaa !46, !noalias !2589
  store ptr @.str.176, ptr %79, align 8, !tbaa !47, !noalias !2589
  store i8 3, ptr %i.iq, align 8, !tbaa !43, !noalias !2589
  call fastcc void @_ZN12_GLOBAL__N_117BitcodeReaderBase5errorERKN4llvm5TwineE(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(424) %i.cu, ptr noundef nonnull align 8 dereferenceable(34) %79)
  call void @llvm.lifetime.end.p0(ptr nonnull %79) #29, !noalias !2589
  br label %_ZNSt6vectorIPN4llvm4TypeESaIS2_EE6resizeEm.exit.jt1.i.jt1.i

bb.jf:                                            ; preds = %bb.jd
  %i.aqx = load ptr, ptr %71, align 8, !tbaa !21, !noalias !2589
  %i.aqy = load i64, ptr %i.aqx, align 8, !tbaa !68 ; 2 uses
  %i.aqz = add i64 %i.aqy, -1
  %or.cond.i.i = icmp ult i64 %i.aqz, 8388608
  br i1 %or.cond.i.i, label %.thread.i.i220, label %bb.jg

.thread.i.i220:                                   ; preds = %bb.jf
  %i.ara = load ptr, ptr %i.dj, align 8, !tbaa !1621, !noalias !2589, !nonnull !19, !align !703
  %i.arb = trunc nuw nsw i64 %i.aqy to i32
  %i.arc = call noundef ptr @_ZN4llvm8ByteType3getERNS_11LLVMContextEj(ptr noundef nonnull align 8 dereferenceable(8) %i.ara, i32 noundef %i.arb) #29
  br label %bb.nf

bb.jg:                                            ; preds = %bb.jf
  call void @llvm.lifetime.start.p0(ptr nonnull %80) #29, !noalias !2589
  store i8 1, ptr %i.ip, align 1, !tbaa !46, !noalias !2589
  store ptr @.str.217, ptr %80, align 8, !tbaa !47, !noalias !2589
  store i8 3, ptr %i.io, align 8, !tbaa !43, !noalias !2589
  call fastcc void @_ZN12_GLOBAL__N_117BitcodeReaderBase5errorERKN4llvm5TwineE(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(424) %i.cu, ptr noundef nonnull align 8 dereferenceable(34) %80)
  call void @llvm.lifetime.end.p0(ptr nonnull %80) #29, !noalias !2589
  br label %_ZNSt6vectorIPN4llvm4TypeESaIS2_EE6resizeEm.exit.jt1.i.jt1.i

bb.jh:                                            ; preds = %bb.ih
  %i.ard = load i32, ptr %i.ez, align 8, !tbaa !66, !noalias !2589
  %.not.i200.i.i = icmp eq i32 %i.ard, 0
  br i1 %.not.i200.i.i, label %bb.ji, label %bb.jj

bb.ji:                                            ; preds = %bb.jh
  call void @llvm.lifetime.start.p0(ptr nonnull %81) #29, !noalias !2589
  store i8 1, ptr %i.in, align 1, !tbaa !46, !noalias !2589
  store ptr @.str.218, ptr %81, align 8, !tbaa !47, !noalias !2589
  store i8 3, ptr %i.im, align 8, !tbaa !43, !noalias !2589
  call fastcc void @_ZN12_GLOBAL__N_117BitcodeReaderBase5errorERKN4llvm5TwineE(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(424) %i.cu, ptr noundef nonnull align 8 dereferenceable(34) %81)
  call void @llvm.lifetime.end.p0(ptr nonnull %81) #29, !noalias !2589
  br label %_ZNSt6vectorIPN4llvm4TypeESaIS2_EE6resizeEm.exit.jt1.i.jt1.i

bb.jj:                                            ; preds = %bb.jh
  %i.are = load ptr, ptr %71, align 8, !tbaa !21, !noalias !2589
  %i.arf = load i64, ptr %i.are, align 8, !tbaa !68 ; 2 uses
  %i.arg = add i64 %i.arf, -1
  %or.cond20.i.i = icmp ult i64 %i.arg, 8388608
  br i1 %or.cond20.i.i, label %.thread321.i.i, label %bb.jk

.thread321.i.i:                                   ; preds = %bb.jj
  %i.arh = load ptr, ptr %i.dj, align 8, !tbaa !1621, !noalias !2589, !nonnull !19, !align !703
  %i.ari = trunc nuw nsw i64 %i.arf to i32
  %i.arj = call noundef ptr @_ZN4llvm11IntegerType3getERNS_11LLVMContextEj(ptr noundef nonnull align 8 dereferenceable(8) %i.arh, i32 noundef %i.ari) #29
  br label %bb.nf

bb.jk:                                            ; preds = %bb.jj
  call void @llvm.lifetime.start.p0(ptr nonnull %82) #29, !noalias !2589
  store i8 1, ptr %i.il, align 1, !tbaa !46, !noalias !2589
  store ptr @.str.219, ptr %82, align 8, !tbaa !47, !noalias !2589
  store i8 3, ptr %i.ik, align 8, !tbaa !43, !noalias !2589
  call fastcc void @_ZN12_GLOBAL__N_117BitcodeReaderBase5errorERKN4llvm5TwineE(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(424) %i.cu, ptr noundef nonnull align 8 dereferenceable(34) %82)
  call void @llvm.lifetime.end.p0(ptr nonnull %82) #29, !noalias !2589
  br label %_ZNSt6vectorIPN4llvm4TypeESaIS2_EE6resizeEm.exit.jt1.i.jt1.i

bb.jl:                                            ; preds = %bb.ih
  %i.ark = load i32, ptr %i.ez, align 8, !tbaa !66, !noalias !2589
  switch i32 %i.ark, label %._crit_edge410.i.i [
    i32 0, label %bb.jm
    i32 2, label %bb.jn
  ]

._crit_edge410.i.i:                               ; preds = %bb.jl
  %.pre411.i.i.a = load ptr, ptr %71, align 8, !tbaa !21, !noalias !2589
  br label %bb.jo

bb.jm:                                            ; preds = %bb.jl
  call void @llvm.lifetime.start.p0(ptr nonnull %83) #29, !noalias !2589
  store i8 1, ptr %i.ih, align 1, !tbaa !46, !noalias !2589
  store ptr @.str.220, ptr %83, align 8, !tbaa !47, !noalias !2589
  store i8 3, ptr %i.ig, align 8, !tbaa !43, !noalias !2589
  call fastcc void @_ZN12_GLOBAL__N_117BitcodeReaderBase5errorERKN4llvm5TwineE(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(424) %i.cu, ptr noundef nonnull align 8 dereferenceable(34) %83)
  call void @llvm.lifetime.end.p0(ptr nonnull %83) #29, !noalias !2589
  br label %_ZNSt6vectorIPN4llvm4TypeESaIS2_EE6resizeEm.exit.jt1.i.jt1.i

bb.jn:                                            ; preds = %bb.jl
  %i.arl = load ptr, ptr %71, align 8, !tbaa !21, !noalias !2589 ; 2 uses
  %i.arm = getelementptr inbounds nuw i8, ptr %i.arl, i64 8
  %i.arn = load i64, ptr %i.arm, align 8, !tbaa !68
  %i.aro = trunc i64 %i.arn to i32
  br label %bb.jo

bb.jo:                                            ; preds = %bb.jn, %._crit_edge410.i.i
  %i.arp = phi ptr [ %i.arl, %bb.jn ], [ %.pre411.i.i.a, %._crit_edge410.i.i ]
  %.0133.i.i = phi i32 [ %i.aro, %bb.jn ], [ 0, %._crit_edge410.i.i ]
  %i.arq = load i64, ptr %i.arp, align 8, !tbaa !68
  %i.arr = trunc i64 %i.arq to i32
  %i.ars = call fastcc noundef ptr @_ZN12_GLOBAL__N_113BitcodeReader11getTypeByIDEj(ptr noundef nonnull align 8 dereferenceable(2040) %1, i32 noundef %i.arr) ; 3 uses
  %.not177.i.i = icmp eq ptr %i.ars, null
  br i1 %.not177.i.i, label %bb.jq, label %bb.jp

bb.jp:                                            ; preds = %bb.jo
  %i.art = call noundef zeroext i1 @_ZN4llvm11PointerType18isValidElementTypeEPNS_4TypeE(ptr noundef nonnull %i.ars) #29
  br i1 %i.art, label %.thread324.i.i, label %bb.jq

.thread324.i.i:                                   ; preds = %bb.jp
  %i.aru = load ptr, ptr %71, align 8, !tbaa !21, !noalias !2589
  %i.arv = load i64, ptr %i.aru, align 8, !tbaa !68
  %i.arw = trunc i64 %i.arv to i32
  call void @_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj(ptr noundef nonnull align 8 dereferenceable(16) %75, i32 noundef %i.arw)
  %i.arx = load ptr, ptr %i.ars, align 8, !tbaa !1492, !nonnull !19, !align !703
  %i.ary = call noundef ptr @_ZN4llvm11PointerType3getERNS_11LLVMContextEj(ptr noundef nonnull align 8 dereferenceable(8) %i.arx, i32 noundef %.0133.i.i) #29
  br label %bb.nf

bb.jq:                                            ; preds = %bb.jp, %bb.jo
  call void @llvm.lifetime.start.p0(ptr nonnull %84) #29, !noalias !2589
  store i8 1, ptr %i.ij, align 1, !tbaa !46, !noalias !2589
  store ptr @.str.221, ptr %84, align 8, !tbaa !47, !noalias !2589
  store i8 3, ptr %i.ii, align 8, !tbaa !43, !noalias !2589
  call fastcc void @_ZN12_GLOBAL__N_117BitcodeReaderBase5errorERKN4llvm5TwineE(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(424) %i.cu, ptr noundef nonnull align 8 dereferenceable(34) %84)
  call void @llvm.lifetime.end.p0(ptr nonnull %84) #29, !noalias !2589
  br label %_ZNSt6vectorIPN4llvm4TypeESaIS2_EE6resizeEm.exit.jt1.i.jt1.i

bb.jr:                                            ; preds = %bb.ih
  %i.arz = load i32, ptr %i.ez, align 8, !tbaa !66, !noalias !2589
  %.not176.i.i = icmp eq i32 %i.arz, 1
  br i1 %.not176.i.i, label %bb.jt, label %bb.js

bb.js:                                            ; preds = %bb.jr
  call void @llvm.lifetime.start.p0(ptr nonnull %85) #29, !noalias !2589
  store i8 1, ptr %i.if, align 1, !tbaa !46, !noalias !2589
  store ptr @.str.222, ptr %85, align 8, !tbaa !47, !noalias !2589
  store i8 3, ptr %i.ie, align 8, !tbaa !43, !noalias !2589
  call fastcc void @_ZN12_GLOBAL__N_117BitcodeReaderBase5errorERKN4llvm5TwineE(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(424) %i.cu, ptr noundef nonnull align 8 dereferenceable(34) %85)
  call void @llvm.lifetime.end.p0(ptr nonnull %85) #29, !noalias !2589
  br label %_ZNSt6vectorIPN4llvm4TypeESaIS2_EE6resizeEm.exit.jt1.i.jt1.i

bb.jt:                                            ; preds = %bb.jr
  %i.asa = load ptr, ptr %71, align 8, !tbaa !21, !noalias !2589
  %i.asb = load i64, ptr %i.asa, align 8, !tbaa !68
  %i.asc = trunc i64 %i.asb to i32
  %i.asd = load ptr, ptr %i.dj, align 8, !tbaa !1621, !noalias !2589, !nonnull !19, !align !703
  %i.ase = call noundef ptr @_ZN4llvm11PointerType3getERNS_11LLVMContextEj(ptr noundef nonnull align 8 dereferenceable(8) %i.asd, i32 noundef %i.asc) #29
  br label %bb.nf

bb.ju:                                            ; preds = %bb.ih
  %i.asf = load i32, ptr %i.ez, align 8, !tbaa !66, !noalias !2589 ; 3 uses
  %i.asg = icmp ult i32 %i.asf, 3
  br i1 %i.asg, label %bb.jv, label %bb.jw

bb.jv:                                            ; preds = %bb.ju
  call void @llvm.lifetime.start.p0(ptr nonnull %86) #29, !noalias !2589
  store i8 1, ptr %i.id, align 1, !tbaa !46, !noalias !2589
  store ptr @.str.223, ptr %86, align 8, !tbaa !47, !noalias !2589
  store i8 3, ptr %i.ic, align 8, !tbaa !43, !noalias !2589
  call fastcc void @_ZN12_GLOBAL__N_117BitcodeReaderBase5errorERKN4llvm5TwineE(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(424) %i.cu, ptr noundef nonnull align 8 dereferenceable(34) %86)
  call void @llvm.lifetime.end.p0(ptr nonnull %86) #29, !noalias !2589
  br label %_ZNSt6vectorIPN4llvm4TypeESaIS2_EE6resizeEm.exit.jt1.i.jt1.i

bb.jw:                                            ; preds = %bb.ju
  call void @llvm.lifetime.start.p0(ptr nonnull %87) #29, !noalias !2589
  store ptr %i.hx, ptr %87, align 8, !tbaa !21, !noalias !2589
  store i32 0, ptr %i.hy, align 8, !tbaa !66, !noalias !2589
  store i32 8, ptr %i.hz, align 4, !tbaa !67, !noalias !2589
  %.not173379.i.i = icmp eq i32 %i.asf, 3
  br i1 %.not173379.i.i, label %.critedge.i.i, label %.lr.ph382.preheader.i.i

.lr.ph382.preheader.i.i:                          ; preds = %bb.jw
  %177 = zext i32 %i.asf to i64
  br label %.lr.ph382.i.i

.lr.ph382.i.i:                                    ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_4TypeELb1EE9push_backES2_.exit.i.i, %.lr.ph382.preheader.i.i
  %indvars.iv405.i.i = phi i64 [ 3, %.lr.ph382.preheader.i.i ], [ %indvars.iv.next406.i.i, %_ZN4llvm23SmallVectorTemplateBaseIPNS_4TypeELb1EE9push_backES2_.exit.i.i ] ; 2 uses
  %i.ash = load ptr, ptr %71, align 8, !tbaa !21, !noalias !2589
  %i.asi = getelementptr inbounds nuw [8 x i8], ptr %i.ash, i64 %indvars.iv405.i.i
  %i.asj = load i64, ptr %i.asi, align 8, !tbaa !68
  %i.ask = trunc i64 %i.asj to i32
  %i.asl = call fastcc noundef ptr @_ZN12_GLOBAL__N_113BitcodeReader11getTypeByIDEj(ptr noundef nonnull align 8 dereferenceable(2040) %1, i32 noundef %i.ask) ; 3 uses
  %.not174.not.i.i = icmp eq ptr %i.asl, null
  br i1 %.not174.not.i.i, label %.critedge.i.i, label %bb.jx

bb.jx:                                            ; preds = %.lr.ph382.i.i
  %i.asm = load i32, ptr %i.hy, align 8, !tbaa !66, !noalias !2589 ; 2 uses
  %i.asn = load i32, ptr %i.hz, align 4, !tbaa !67, !noalias !2589
  %.not.i208.i.i = icmp ult i32 %i.asm, %i.asn
  br i1 %.not.i208.i.i, label %bb.jz, label %bb.jy, !prof !672

bb.jy:                                            ; preds = %bb.jx
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_4TypeELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %87, ptr noundef nonnull %i.asl)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_4TypeELb1EE9push_backES2_.exit.i.i

bb.jz:                                            ; preds = %bb.jx
  %i.aso = zext i32 %i.asm to i64
  %i.asp = load ptr, ptr %87, align 8, !tbaa !21, !noalias !2589
  %i.asq = getelementptr inbounds nuw [8 x i8], ptr %i.asp, i64 %i.aso
  store ptr %i.asl, ptr %i.asq, align 1
  %i.asr = load i32, ptr %i.hy, align 8, !tbaa !66, !noalias !2589
  %i.ass = add i32 %i.asr, 1
  store i32 %i.ass, ptr %i.hy, align 8, !tbaa !66, !noalias !2589
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_4TypeELb1EE9push_backES2_.exit.i.i

_ZN4llvm23SmallVectorTemplateBaseIPNS_4TypeELb1EE9push_backES2_.exit.i.i: ; preds = %bb.jz, %bb.jy
  %indvars.iv.next406.i.i = add nuw nsw i64 %indvars.iv405.i.i, 1 ; 2 uses
  %.not173.i.i = icmp eq i64 %indvars.iv.next406.i.i, %177
  br i1 %.not173.i.i, label %.critedge.i.i, label %.lr.ph382.i.i, !llvm.loop !2613

.critedge.i.i:                                    ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_4TypeELb1EE9push_backES2_.exit.i.i, %.lr.ph382.i.i, %bb.jw
  %i.ast = load ptr, ptr %71, align 8, !tbaa !21, !noalias !2589
  %i.asu = getelementptr inbounds nuw i8, ptr %i.ast, i64 16
  %i.asv = load i64, ptr %i.asu, align 8, !tbaa !68
  %i.asw = trunc i64 %i.asv to i32
  %i.asx = call fastcc noundef ptr @_ZN12_GLOBAL__N_113BitcodeReader11getTypeByIDEj(ptr noundef nonnull align 8 dereferenceable(2040) %1, i32 noundef %i.asw) ; 3 uses
  %.not175.i.i = icmp eq ptr %i.asx, null
  br i1 %.not175.i.i, label %bb.kb, label %bb.ka

bb.ka:                                            ; preds = %.critedge.i.i
  %i.asy = load i32, ptr %i.hy, align 8, !tbaa !66, !noalias !2589
  %i.asz = zext i32 %i.asy to i64
  %i.ata = load i32, ptr %i.ez, align 8, !tbaa !66, !noalias !2589
  %i.atb = zext i32 %i.ata to i64                 ; 2 uses
  %i.atc = add nsw i64 %i.atb, -3
  %i.atd = icmp ugt i64 %i.atc, %i.asz
  br i1 %i.atd, label %bb.kb, label %bb.kc

bb.kb:                                            ; preds = %bb.ka, %.critedge.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %88) #29, !noalias !2589
  store i8 1, ptr %i.ib, align 1, !tbaa !46, !noalias !2589
  store ptr @.str.221, ptr %88, align 8, !tbaa !47, !noalias !2589
  store i8 3, ptr %i.ia, align 8, !tbaa !43, !noalias !2589
  call fastcc void @_ZN12_GLOBAL__N_117BitcodeReaderBase5errorERKN4llvm5TwineE(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(424) %i.cu, ptr noundef nonnull align 8 dereferenceable(34) %88)
  call void @llvm.lifetime.end.p0(ptr nonnull %88) #29, !noalias !2589
  br label %bb.kd

bb.kc:                                            ; preds = %bb.ka
  %i.ate = load ptr, ptr %71, align 8, !tbaa !21, !noalias !2589 ; 2 uses
  %i.atf = getelementptr inbounds nuw i8, ptr %i.ate, i64 16
  %i.atg = getelementptr inbounds nuw [8 x i8], ptr %i.ate, i64 %i.atb
  call void @_ZN4llvm15SmallVectorImplIjE6appendIPmvEEvT_S4_(ptr noundef nonnull align 8 dereferenceable(16) %75, ptr noundef nonnull %i.atf, ptr noundef %i.atg)
  %i.ath = load ptr, ptr %87, align 8, !tbaa !21, !noalias !2589
  %i.ati = load i32, ptr %i.hy, align 8, !tbaa !66, !noalias !2589
  %i.atj = zext i32 %i.ati to i64
  %i.atk = load ptr, ptr %71, align 8, !tbaa !21, !noalias !2589
  %i.atl = load i64, ptr %i.atk, align 8, !tbaa !68
  %i.atm = icmp ne i64 %i.atl, 0
  %i.atn = call noundef ptr @_ZN4llvm12FunctionType3getEPNS_4TypeENS_8ArrayRefIS2_EEb(ptr noundef nonnull %i.asx, ptr %i.ath, i64 %i.atj, i1 noundef zeroext %i.atm) #29
  br label %bb.kd

bb.kd:                                            ; preds = %bb.kc, %bb.kb
  %.3123.jt1.i.jt1.i = phi ptr [ %i.asx, %bb.kb ], [ %i.atn, %bb.kc ]
  %cond13.jt1.i.jt1.i = phi i1 [ false, %bb.kb ], [ true, %bb.kc ]
  %i.ato = load ptr, ptr %87, align 8, !tbaa !21, !noalias !2589 ; 2 uses
  %i.atp = icmp eq ptr %i.ato, %i.hx
  br i1 %i.atp, label %_ZN4llvm11SmallVectorIPNS_4TypeELj8EED2Ev.exit.jt1.i.jt1.i, label %bb.ke

bb.ke:                                            ; preds = %bb.kd
  call void @free(ptr noundef %i.ato) #29
  br label %_ZN4llvm11SmallVectorIPNS_4TypeELj8EED2Ev.exit.jt1.i.jt1.i

_ZN4llvm11SmallVectorIPNS_4TypeELj8EED2Ev.exit.jt1.i.jt1.i: ; preds = %bb.ke, %bb.kd
  call void @llvm.lifetime.end.p0(ptr nonnull %87) #29, !noalias !2589
  br i1 %cond13.jt1.i.jt1.i, label %bb.nf, label %_ZNSt6vectorIPN4llvm4TypeESaIS2_EE6resizeEm.exit.jt1.i.jt1.i

bb.kf:                                            ; preds = %bb.ih
  %i.atq = load i32, ptr %i.ez, align 8, !tbaa !66, !noalias !2589 ; 3 uses
  %i.atr = icmp ult i32 %i.atq, 2
  br i1 %i.atr, label %bb.kg, label %bb.kh

bb.kg:                                            ; preds = %bb.kf
  call void @llvm.lifetime.start.p0(ptr nonnull %89) #29, !noalias !2589
  store i8 1, ptr %i.hw, align 1, !tbaa !46, !noalias !2589
  store ptr @.str.223, ptr %89, align 8, !tbaa !47, !noalias !2589
  store i8 3, ptr %i.hv, align 8, !tbaa !43, !noalias !2589
  call fastcc void @_ZN12_GLOBAL__N_117BitcodeReaderBase5errorERKN4llvm5TwineE(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(424) %i.cu, ptr noundef nonnull align 8 dereferenceable(34) %89)
  call void @llvm.lifetime.end.p0(ptr nonnull %89) #29, !noalias !2589
  br label %_ZNSt6vectorIPN4llvm4TypeESaIS2_EE6resizeEm.exit.jt1.i.jt1.i

bb.kh:                                            ; preds = %bb.kf
  call void @llvm.lifetime.start.p0(ptr nonnull %90) #29, !noalias !2589
  store ptr %i.ho, ptr %90, align 8, !tbaa !21, !noalias !2589
  store i32 0, ptr %i.hp, align 8, !tbaa !66, !noalias !2589
  store i32 8, ptr %i.hq, align 4, !tbaa !67, !noalias !2589
  %.not170373.i.i = icmp eq i32 %i.atq, 2
  br i1 %.not170373.i.i, label %._crit_edge377.i.i, label %.lr.ph376.preheader.i.i

.lr.ph376.preheader.i.i:                          ; preds = %bb.kh
  %178 = zext i32 %i.atq to i64
  br label %.lr.ph376.i.i

.lr.ph376.i.i:                                    ; preds = %bb.km, %.lr.ph376.preheader.i.i
  %indvars.iv402.i.i = phi i64 [ 2, %.lr.ph376.preheader.i.i ], [ %indvars.iv.next403.i.i, %bb.km ] ; 2 uses
  %i.ats = load ptr, ptr %71, align 8, !tbaa !21, !noalias !2589
  %i.att = getelementptr inbounds nuw [8 x i8], ptr %i.ats, i64 %indvars.iv402.i.i
  %i.atu = load i64, ptr %i.att, align 8, !tbaa !68
  %i.atv = trunc i64 %i.atu to i32
  %i.atw = call fastcc noundef ptr @_ZN12_GLOBAL__N_113BitcodeReader11getTypeByIDEj(ptr noundef nonnull align 8 dereferenceable(2040) %1, i32 noundef %i.atv) ; 4 uses
  %.not171.i.i = icmp eq ptr %i.atw, null
  br i1 %.not171.i.i, label %._crit_edge377.i.i, label %bb.ki

bb.ki:                                            ; preds = %.lr.ph376.i.i
  %i.atx = call noundef zeroext i1 @_ZN4llvm12FunctionType19isValidArgumentTypeEPNS_4TypeE(ptr noundef nonnull %i.atw) #29
  br i1 %i.atx, label %bb.kj, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_4TypeELb1EE9push_backES2_.exit213.i.i

bb.kj:                                            ; preds = %bb.ki
  %i.aty = load i32, ptr %i.hp, align 8, !tbaa !66, !noalias !2589 ; 2 uses
  %i.atz = load i32, ptr %i.hq, align 4, !tbaa !67, !noalias !2589
  %.not.i212.i.i = icmp ult i32 %i.aty, %i.atz
  br i1 %.not.i212.i.i, label %bb.kl, label %bb.kk, !prof !672

bb.kk:                                            ; preds = %bb.kj
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_4TypeELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %90, ptr noundef nonnull %i.atw)
  br label %bb.km

bb.kl:                                            ; preds = %bb.kj
  %i.aua = zext i32 %i.aty to i64
  %i.aub = load ptr, ptr %90, align 8, !tbaa !21, !noalias !2589
  %i.auc = getelementptr inbounds nuw [8 x i8], ptr %i.aub, i64 %i.aua
  store ptr %i.atw, ptr %i.auc, align 1
  %i.aud = load i32, ptr %i.hp, align 8, !tbaa !66, !noalias !2589
  %i.aue = add i32 %i.aud, 1
  store i32 %i.aue, ptr %i.hp, align 8, !tbaa !66, !noalias !2589
  br label %bb.km

bb.km:                                            ; preds = %bb.kl, %bb.kk
  %indvars.iv.next403.i.i = add nuw nsw i64 %indvars.iv402.i.i, 1 ; 2 uses
  %.not170.i.i = icmp eq i64 %indvars.iv.next403.i.i, %178
  br i1 %.not170.i.i, label %._crit_edge377.i.i, label %.lr.ph376.i.i, !llvm.loop !2614

_ZN4llvm23SmallVectorTemplateBaseIPNS_4TypeELb1EE9push_backES2_.exit213.i.i: ; preds = %bb.ki
  call void @llvm.lifetime.start.p0(ptr nonnull %91) #29, !noalias !2589
  store i8 1, ptr %i.hs, align 1, !tbaa !46, !noalias !2589
  store ptr @.str.224, ptr %91, align 8, !tbaa !47, !noalias !2589
  store i8 3, ptr %i.hr, align 8, !tbaa !43, !noalias !2589
  call fastcc void @_ZN12_GLOBAL__N_117BitcodeReaderBase5errorERKN4llvm5TwineE(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(424) %i.cu, ptr noundef nonnull align 8 dereferenceable(34) %91)
  call void @llvm.lifetime.end.p0(ptr nonnull %91) #29, !noalias !2589
  br label %bb.kq

._crit_edge377.i.i:                               ; preds = %bb.km, %.lr.ph376.i.i, %bb.kh
  %i.auf = load ptr, ptr %71, align 8, !tbaa !21, !noalias !2589
  %i.aug = getelementptr inbounds nuw i8, ptr %i.auf, i64 8
  %i.auh = load i64, ptr %i.aug, align 8, !tbaa !68
  %i.aui = trunc i64 %i.auh to i32
  %i.auj = call fastcc noundef ptr @_ZN12_GLOBAL__N_113BitcodeReader11getTypeByIDEj(ptr noundef nonnull align 8 dereferenceable(2040) %1, i32 noundef %i.aui) ; 3 uses
  %.not172.i.i = icmp eq ptr %i.auj, null
  br i1 %.not172.i.i, label %bb.ko, label %bb.kn

bb.kn:                                            ; preds = %._crit_edge377.i.i
  %i.auk = load i32, ptr %i.hp, align 8, !tbaa !66, !noalias !2589
  %i.aul = zext i32 %i.auk to i64
  %i.aum = load i32, ptr %i.ez, align 8, !tbaa !66, !noalias !2589
  %i.aun = zext i32 %i.aum to i64                 ; 2 uses
  %i.auo = add nsw i64 %i.aun, -2
  %i.aup = icmp ugt i64 %i.auo, %i.aul
  br i1 %i.aup, label %bb.ko, label %bb.kp

bb.ko:                                            ; preds = %bb.kn, %._crit_edge377.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %92) #29, !noalias !2589
  store i8 1, ptr %i.hu, align 1, !tbaa !46, !noalias !2589
  store ptr @.str.221, ptr %92, align 8, !tbaa !47, !noalias !2589
  store i8 3, ptr %i.ht, align 8, !tbaa !43, !noalias !2589
  call fastcc void @_ZN12_GLOBAL__N_117BitcodeReaderBase5errorERKN4llvm5TwineE(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(424) %i.cu, ptr noundef nonnull align 8 dereferenceable(34) %92)
  call void @llvm.lifetime.end.p0(ptr nonnull %92) #29, !noalias !2589
  br label %bb.kq

bb.kp:                                            ; preds = %bb.kn
  %i.auq = load ptr, ptr %71, align 8, !tbaa !21, !noalias !2589 ; 2 uses
  %i.aur = getelementptr inbounds nuw i8, ptr %i.auq, i64 8
  %i.aus = getelementptr inbounds nuw [8 x i8], ptr %i.auq, i64 %i.aun
  call void @_ZN4llvm15SmallVectorImplIjE6appendIPmvEEvT_S4_(ptr noundef nonnull align 8 dereferenceable(16) %75, ptr noundef nonnull %i.aur, ptr noundef %i.aus)
  %i.aut = load ptr, ptr %90, align 8, !tbaa !21, !noalias !2589
  %i.auu = load i32, ptr %i.hp, align 8, !tbaa !66, !noalias !2589
  %i.auv = zext i32 %i.auu to i64
  %i.auw = load ptr, ptr %71, align 8, !tbaa !21, !noalias !2589
  %i.aux = load i64, ptr %i.auw, align 8, !tbaa !68
  %i.auy = icmp ne i64 %i.aux, 0
  %i.auz = call noundef ptr @_ZN4llvm12FunctionType3getEPNS_4TypeENS_8ArrayRefIS2_EEb(ptr noundef nonnull %i.auj, ptr %i.aut, i64 %i.auv, i1 noundef zeroext %i.auy) #29
  br label %bb.kq

bb.kq:                                            ; preds = %bb.kp, %bb.ko, %_ZN4llvm23SmallVectorTemplateBaseIPNS_4TypeELb1EE9push_backES2_.exit213.i.i
  %.4124.jt1.i.jt1.i = phi ptr [ %i.auj, %bb.ko ], [ %i.auz, %bb.kp ], [ null, %_ZN4llvm23SmallVectorTemplateBaseIPNS_4TypeELb1EE9push_backES2_.exit213.i.i ]
  %cond11.jt1.i.jt1.i = phi i1 [ false, %bb.ko ], [ true, %bb.kp ], [ false, %_ZN4llvm23SmallVectorTemplateBaseIPNS_4TypeELb1EE9push_backES2_.exit213.i.i ]
  %i.ava = load ptr, ptr %90, align 8, !tbaa !21, !noalias !2589 ; 2 uses
  %i.avb = icmp eq ptr %i.ava, %i.ho
  br i1 %i.avb, label %_ZN4llvm11SmallVectorIPNS_4TypeELj8EED2Ev.exit215.jt1.i.jt1.i, label %bb.kr

bb.kr:                                            ; preds = %bb.kq
  call void @free(ptr noundef %i.ava) #29
  br label %_ZN4llvm11SmallVectorIPNS_4TypeELj8EED2Ev.exit215.jt1.i.jt1.i

_ZN4llvm11SmallVectorIPNS_4TypeELj8EED2Ev.exit215.jt1.i.jt1.i: ; preds = %bb.kr, %bb.kq
  call void @llvm.lifetime.end.p0(ptr nonnull %90) #29, !noalias !2589
  br i1 %cond11.jt1.i.jt1.i, label %bb.nf, label %_ZNSt6vectorIPN4llvm4TypeESaIS2_EE6resizeEm.exit.jt1.i.jt1.i

bb.ks:                                            ; preds = %bb.ih
  %i.avc = load i32, ptr %i.ez, align 8, !tbaa !66, !noalias !2589 ; 3 uses
  %.not.i216.i.i = icmp eq i32 %i.avc, 0
  br i1 %.not.i216.i.i, label %bb.kt, label %bb.ku

bb.kt:                                            ; preds = %bb.ks
  call void @llvm.lifetime.start.p0(ptr nonnull %93) #29, !noalias !2589
  store i8 1, ptr %i.hn, align 1, !tbaa !46, !noalias !2589
  store ptr @.str.225, ptr %93, align 8, !tbaa !47, !noalias !2589
  store i8 3, ptr %i.hm, align 8, !tbaa !43, !noalias !2589
  call fastcc void @_ZN12_GLOBAL__N_117BitcodeReaderBase5errorERKN4llvm5TwineE(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(424) %i.cu, ptr noundef nonnull align 8 dereferenceable(34) %93)
  call void @llvm.lifetime.end.p0(ptr nonnull %93) #29, !noalias !2589
  br label %_ZNSt6vectorIPN4llvm4TypeESaIS2_EE6resizeEm.exit.jt1.i.jt1.i

bb.ku:                                            ; preds = %bb.ks
  call void @llvm.lifetime.start.p0(ptr nonnull %94) #29, !noalias !2589
  store ptr %i.hh, ptr %94, align 8, !tbaa !21, !noalias !2589
  store i32 0, ptr %i.hi, align 8, !tbaa !66, !noalias !2589
  store i32 8, ptr %i.hj, align 4, !tbaa !67, !noalias !2589
  %.not167368.i.i = icmp eq i32 %i.avc, 1
  br i1 %.not167368.i.i, label %.critedge181.i.i, label %.lr.ph371.preheader.i.i

.lr.ph371.preheader.i.i:                          ; preds = %bb.ku
  %179 = zext i32 %i.avc to i64
  br label %.lr.ph371.i.i

.lr.ph371.i.i:                                    ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_4TypeELb1EE9push_backES2_.exit219.i.i, %.lr.ph371.preheader.i.i
  %indvars.iv399.i.i = phi i64 [ 1, %.lr.ph371.preheader.i.i ], [ %indvars.iv.next400.i.i, %_ZN4llvm23SmallVectorTemplateBaseIPNS_4TypeELb1EE9push_backES2_.exit219.i.i ] ; 2 uses
  %i.avd = load ptr, ptr %71, align 8, !tbaa !21, !noalias !2589
  %i.ave = getelementptr inbounds nuw [8 x i8], ptr %i.avd, i64 %indvars.iv399.i.i
  %i.avf = load i64, ptr %i.ave, align 8, !tbaa !68
  %i.avg = trunc i64 %i.avf to i32
  %i.avh = call fastcc noundef ptr @_ZN12_GLOBAL__N_113BitcodeReader11getTypeByIDEj(ptr noundef nonnull align 8 dereferenceable(2040) %1, i32 noundef %i.avg) ; 3 uses
  %.not168.not.i.i = icmp eq ptr %i.avh, null
  %.pre408.pre415.i.i = load i32, ptr %i.hi, align 8, !tbaa !66, !noalias !2589 ; 3 uses
  br i1 %.not168.not.i.i, label %.critedge181.loopexit.i.i, label %bb.kv

bb.kv:                                            ; preds = %.lr.ph371.i.i
  %i.avi = load i32, ptr %i.hj, align 4, !tbaa !67, !noalias !2589
  %.not.i218.i.i = icmp ult i32 %.pre408.pre415.i.i, %i.avi
  br i1 %.not.i218.i.i, label %bb.kx, label %bb.kw, !prof !672

bb.kw:                                            ; preds = %bb.kv
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_4TypeELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %94, ptr noundef nonnull %i.avh)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_4TypeELb1EE9push_backES2_.exit219.i.i

bb.kx:                                            ; preds = %bb.kv
  %i.avj = zext i32 %.pre408.pre415.i.i to i64
  %i.avk = load ptr, ptr %94, align 8, !tbaa !21, !noalias !2589
  %i.avl = getelementptr inbounds nuw [8 x i8], ptr %i.avk, i64 %i.avj
  store ptr %i.avh, ptr %i.avl, align 1
  %i.avm = load i32, ptr %i.hi, align 8, !tbaa !66, !noalias !2589
  %i.avn = add i32 %i.avm, 1
  store i32 %i.avn, ptr %i.hi, align 8, !tbaa !66, !noalias !2589
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_4TypeELb1EE9push_backES2_.exit219.i.i

_ZN4llvm23SmallVectorTemplateBaseIPNS_4TypeELb1EE9push_backES2_.exit219.i.i: ; preds = %bb.kx, %bb.kw
  %indvars.iv.next400.i.i = add nuw nsw i64 %indvars.iv399.i.i, 1 ; 2 uses
  %exitcond785 = icmp eq i64 %indvars.iv.next400.i.i, %179
  br i1 %exitcond785, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_4TypeELb1EE9push_backES2_.exit219..critedge181.loopexit_crit_edge.i.i, label %.lr.ph371.i.i, !llvm.loop !2615

_ZN4llvm23SmallVectorTemplateBaseIPNS_4TypeELb1EE9push_backES2_.exit219..critedge181.loopexit_crit_edge.i.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_4TypeELb1EE9push_backES2_.exit219.i.i
  %.pre408.pre.i.i = load i32, ptr %i.hi, align 8, !tbaa !66, !noalias !2589
  br label %.critedge181.loopexit.i.i, !llvm.loop !2615

.critedge181.loopexit.i.i:                        ; preds = %.lr.ph371.i.i, %_ZN4llvm23SmallVectorTemplateBaseIPNS_4TypeELb1EE9push_backES2_.exit219..critedge181.loopexit_crit_edge.i.i
  %.pre408.i.i.a = phi i32 [ %.pre408.pre.i.i, %_ZN4llvm23SmallVectorTemplateBaseIPNS_4TypeELb1EE9push_backES2_.exit219..critedge181.loopexit_crit_edge.i.i ], [ %.pre408.pre415.i.i, %.lr.ph371.i.i ]
  %.pre409.i.i.a = load i32, ptr %i.ez, align 8, !tbaa !66, !noalias !2589
  %i.avo = zext i32 %.pre408.i.i.a to i64
  %i.avp = zext i32 %.pre409.i.i.a to i64
  br label %.critedge181.i.i

.critedge181.i.i:                                 ; preds = %.critedge181.loopexit.i.i, %bb.ku
  %i.avq = phi i64 [ %i.avp, %.critedge181.loopexit.i.i ], [ 1, %bb.ku ] ; 2 uses
  %i.avr = phi i64 [ %i.avo, %.critedge181.loopexit.i.i ], [ 0, %bb.ku ]
  %i.avs = add nsw i64 %i.avq, -1
  %.not169.i.i = icmp eq i64 %i.avs, %i.avr       ; 2 uses
  br i1 %.not169.i.i, label %bb.kz, label %bb.ky

bb.ky:                                            ; preds = %.critedge181.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %95) #29, !noalias !2589
  store i8 1, ptr %i.hl, align 1, !tbaa !46, !noalias !2589
  store ptr @.str.221, ptr %95, align 8, !tbaa !47, !noalias !2589
  store i8 3, ptr %i.hk, align 8, !tbaa !43, !noalias !2589
  call fastcc void @_ZN12_GLOBAL__N_117BitcodeReaderBase5errorERKN4llvm5TwineE(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(424) %i.cu, ptr noundef nonnull align 8 dereferenceable(34) %95)
  call void @llvm.lifetime.end.p0(ptr nonnull %95) #29, !noalias !2589
  br label %bb.la

bb.kz:                                            ; preds = %.critedge181.i.i
  %i.avt = load ptr, ptr %71, align 8, !tbaa !21, !noalias !2589 ; 2 uses
  %i.avu = getelementptr inbounds nuw i8, ptr %i.avt, i64 8
  %i.avv = getelementptr inbounds nuw [8 x i8], ptr %i.avt, i64 %i.avq
  call void @_ZN4llvm15SmallVectorImplIjE6appendIPmvEEvT_S4_(ptr noundef nonnull align 8 dereferenceable(16) %75, ptr noundef nonnull %i.avu, ptr noundef %i.avv)
  %i.avw = load ptr, ptr %i.dj, align 8, !tbaa !1621, !noalias !2589, !nonnull !19, !align !703
  %i.avx = load ptr, ptr %94, align 8, !tbaa !21, !noalias !2589
  %i.avy = load i32, ptr %i.hi, align 8, !tbaa !66, !noalias !2589
  %i.avz = zext i32 %i.avy to i64
  %i.awa = load ptr, ptr %71, align 8, !tbaa !21, !noalias !2589
  %i.awb = load i64, ptr %i.awa, align 8, !tbaa !68
  %i.awc = icmp ne i64 %i.awb, 0
  %i.awd = call noundef ptr @_ZN4llvm10StructType3getERNS_11LLVMContextENS_8ArrayRefIPNS_4TypeEEEb(ptr noundef nonnull align 8 dereferenceable(8) %i.avw, ptr %i.avx, i64 %i.avz, i1 noundef zeroext %i.awc) #29
  br label %bb.la

bb.la:                                            ; preds = %bb.kz, %bb.ky
  %.5125.jt1.i.jt1.i = phi ptr [ null, %bb.ky ], [ %i.awd, %bb.kz ]
  %i.awe = load ptr, ptr %94, align 8, !tbaa !21, !noalias !2589 ; 2 uses
  %i.awf = icmp eq ptr %i.awe, %i.hh
  br i1 %i.awf, label %_ZN4llvm11SmallVectorIPNS_4TypeELj8EED2Ev.exit221.jt1.i.jt1.i, label %bb.lb

bb.lb:                                            ; preds = %bb.la
  call void @free(ptr noundef %i.awe) #29
  br label %_ZN4llvm11SmallVectorIPNS_4TypeELj8EED2Ev.exit221.jt1.i.jt1.i

_ZN4llvm11SmallVectorIPNS_4TypeELj8EED2Ev.exit221.jt1.i.jt1.i: ; preds = %bb.lb, %bb.la
  call void @llvm.lifetime.end.p0(ptr nonnull %94) #29, !noalias !2589
  br i1 %.not169.i.i, label %bb.nf, label %_ZNSt6vectorIPN4llvm4TypeESaIS2_EE6resizeEm.exit.jt1.i.jt1.i

bb.lc:                                            ; preds = %bb.ih
  %i.awg = load ptr, ptr %71, align 8, !tbaa !21, !noalias !2589 ; 2 uses
  %i.awh = load i32, ptr %i.ez, align 8, !tbaa !66, !noalias !2589 ; 3 uses
  %i.awi = zext i32 %i.awh to i64                 ; 5 uses
  %i.awj = load i64, ptr %i.fc, align 8, !tbaa !534, !noalias !2589 ; 2 uses
  %i.awk = add i64 %i.awj, %i.awi                 ; 2 uses
  %i.awl = load i64, ptr %i.fd, align 8, !tbaa !535, !noalias !2589
  %i.awm = icmp ult i64 %i.awl, %i.awk
  br i1 %i.awm, label %bb.ld, label %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i.i.i

bb.ld:                                            ; preds = %bb.lc
  call void @_ZN4llvm15SmallVectorBaseImE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(88) %72, ptr noundef nonnull %i.fb, i64 noundef %i.awk, i64 noundef 1) #29
  %.pre.i.i.i.i = load i64, ptr %i.fc, align 8, !tbaa !534, !noalias !2589
  br label %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i.i.i

_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i.i.i: ; preds = %bb.ld, %bb.lc
  %i.awn = phi i64 [ %i.awj, %bb.lc ], [ %.pre.i.i.i.i, %bb.ld ] ; 2 uses
  %.not347.i.i = icmp eq i32 %i.awh, 0
  br i1 %.not347.i.i, label %_ZL15convertToStringIN4llvm11SmallStringILj64EEEEbNS0_8ArrayRefImEEjRT_.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i.i.i:         ; preds = %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i.i.i
  %i.awo = load ptr, ptr %72, align 8, !tbaa !533, !noalias !2589
  %i.awp = getelementptr inbounds nuw i8, ptr %i.awo, i64 %i.awn ; 2 uses
  %xtraiter = and i64 %i.awi, 7                   ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol:              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol
  %.012.i.i.i.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.awu, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol ], [ %i.awi, %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i.i.i ]
  %.0811.i.i.i.i.i.i.i.i.i.i.i.i.prol = phi ptr [ %i.awt, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol ], [ %i.awp, %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i.i.i ] ; 2 uses
  %.0910.i.i.i.i.i.i.i.i.i.i.i.i.prol = phi ptr [ %i.aws, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol ], [ %i.awg, %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i.i.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i.i.i ]
  %i.awq = load i64, ptr %.0910.i.i.i.i.i.i.i.i.i.i.i.i.prol, align 8, !tbaa !68
  %i.awr = trunc i64 %i.awq to i8
  store i8 %i.awr, ptr %.0811.i.i.i.i.i.i.i.i.i.i.i.i.prol, align 1, !tbaa !47
  %i.aws = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i.i.i.i.i.i.prol, i64 8 ; 2 uses
  %i.awt = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.i.i.i.i.i.prol, i64 1 ; 2 uses
  %i.awu = add nsw i64 %.012.i.i.i.i.i.i.i.i.i.i.i.i.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !2616

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit:     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i.i.i
  %.012.i.i.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %i.awi, %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i.i.i ], [ %i.awu, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol ]
  %.0811.i.i.i.i.i.i.i.i.i.i.i.i.unr = phi ptr [ %i.awp, %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i.i.i ], [ %i.awt, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol ]
  %.0910.i.i.i.i.i.i.i.i.i.i.i.i.unr = phi ptr [ %i.awg, %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i.i.i ], [ %i.aws, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol ]
  %i.awv = icmp ult i32 %i.awh, 8
  br i1 %i.awv, label %_ZN4llvm23SmallVectorTemplateBaseIcLb1EE18uninitialized_copyIPKmPcEEvT_S6_T0_.exit.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ayc, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ayb, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.0811.i.i.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %.0910.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.aya, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.0910.i.i.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %i.aww = load i64, ptr %.0910.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !68
  %i.awx = trunc i64 %i.aww to i8
  store i8 %i.awx, ptr %.0811.i.i.i.i.i.i.i.i.i.i.i.i, align 1, !tbaa !47
  %i.awy = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.awz = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.i.i.i.i.i, i64 1
  %i.axa = load i64, ptr %i.awy, align 8, !tbaa !68
  %i.axb = trunc i64 %i.axa to i8
  store i8 %i.axb, ptr %i.awz, align 1, !tbaa !47
  %i.axc = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i.i.i.i.i.i, i64 16
  %i.axd = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.i.i.i.i.i, i64 2
  %i.axe = load i64, ptr %i.axc, align 8, !tbaa !68
  %i.axf = trunc i64 %i.axe to i8
  store i8 %i.axf, ptr %i.axd, align 1, !tbaa !47
  %i.axg = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i.i.i.i.i.i, i64 24
  %i.axh = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.i.i.i.i.i, i64 3
  %i.axi = load i64, ptr %i.axg, align 8, !tbaa !68
  %i.axj = trunc i64 %i.axi to i8
  store i8 %i.axj, ptr %i.axh, align 1, !tbaa !47
  %i.axk = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i.i.i.i.i.i, i64 32
  %i.axl = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.i.i.i.i.i, i64 4
  %i.axm = load i64, ptr %i.axk, align 8, !tbaa !68
  %i.axn = trunc i64 %i.axm to i8
  store i8 %i.axn, ptr %i.axl, align 1, !tbaa !47
  %i.axo = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i.i.i.i.i.i, i64 40
  %i.axp = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.i.i.i.i.i, i64 5
  %i.axq = load i64, ptr %i.axo, align 8, !tbaa !68
  %i.axr = trunc i64 %i.axq to i8
  store i8 %i.axr, ptr %i.axp, align 1, !tbaa !47
  %i.axs = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i.i.i.i.i.i, i64 48
  %i.axt = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.i.i.i.i.i, i64 6
  %i.axu = load i64, ptr %i.axs, align 8, !tbaa !68
  %i.axv = trunc i64 %i.axu to i8
  store i8 %i.axv, ptr %i.axt, align 1, !tbaa !47
  %i.axw = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i.i.i.i.i.i, i64 56
  %i.axx = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.i.i.i.i.i, i64 7
  %i.axy = load i64, ptr %i.axw, align 8, !tbaa !68
  %i.axz = trunc i64 %i.axy to i8
  store i8 %i.axz, ptr %i.axx, align 1, !tbaa !47
  %i.aya = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i.i.i.i.i.i, i64 64
  %i.ayb = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.ayc = add nsw i64 %.012.i.i.i.i.i.i.i.i.i.i.i.i, -8
  %i.ayd = icmp sgt i64 %.012.i.i.i.i.i.i.i.i.i.i.i.i, 8
  br i1 %i.ayd, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseIcLb1EE18uninitialized_copyIPKmPcEEvT_S6_T0_.exit.loopexit.i.i.i.i, !llvm.loop !742

_ZN4llvm23SmallVectorTemplateBaseIcLb1EE18uninitialized_copyIPKmPcEEvT_S6_T0_.exit.loopexit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit
  %.pre8.i.i.i.i = load i64, ptr %i.fc, align 8, !tbaa !534, !noalias !2589
  br label %_ZL15convertToStringIN4llvm11SmallStringILj64EEEEbNS0_8ArrayRefImEEjRT_.exit.i.i

_ZL15convertToStringIN4llvm11SmallStringILj64EEEEbNS0_8ArrayRefImEEjRT_.exit.i.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseIcLb1EE18uninitialized_copyIPKmPcEEvT_S6_T0_.exit.loopexit.i.i.i.i, %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i.i.i
  %i.aye = phi i64 [ %.pre8.i.i.i.i, %_ZN4llvm23SmallVectorTemplateBaseIcLb1EE18uninitialized_copyIPKmPcEEvT_S6_T0_.exit.loopexit.i.i.i.i ], [ %i.awn, %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i.i.i ]
  %i.ayf = add i64 %i.aye, %i.awi
  store i64 %i.ayf, ptr %i.fc, align 8, !tbaa !534, !noalias !2589
  br label %_ZNSt6vectorIPN4llvm4TypeESaIS2_EE6resizeEm.exit.jt2.i.jt0.i, !llvm.loop !2603

bb.le:                                            ; preds = %bb.ih
  %i.ayg = load i32, ptr %i.ez, align 8, !tbaa !66, !noalias !2589
  %.not.i223.i.i = icmp eq i32 %i.ayg, 0
  br i1 %.not.i223.i.i, label %bb.lf, label %bb.lg

bb.lf:                                            ; preds = %bb.le
  call void @llvm.lifetime.start.p0(ptr nonnull %96) #29, !noalias !2589
  store i8 1, ptr %i.hg, align 1, !tbaa !46, !noalias !2589
  store ptr @.str.227, ptr %96, align 8, !tbaa !47, !noalias !2589
  store i8 3, ptr %i.hf, align 8, !tbaa !43, !noalias !2589
  call fastcc void @_ZN12_GLOBAL__N_117BitcodeReaderBase5errorERKN4llvm5TwineE(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(424) %i.cu, ptr noundef nonnull align 8 dereferenceable(34) %96)
  call void @llvm.lifetime.end.p0(ptr nonnull %96) #29, !noalias !2589
  br label %_ZNSt6vectorIPN4llvm4TypeESaIS2_EE6resizeEm.exit.jt1.i.jt1.i

bb.lg:                                            ; preds = %bb.le
  %i.ayh = load i32, ptr %i.u, align 4, !tbaa !101, !noalias !2589
  %i.ayi = zext i32 %i.ayh to i64                 ; 2 uses
  %i.ayj = load ptr, ptr %i.ev, align 8, !tbaa !2010, !noalias !2589
  %i.ayk = load ptr, ptr %i.eu, align 8, !tbaa !1381, !noalias !2589 ; 2 uses
  %i.ayl = ptrtoint ptr %i.ayj to i64
  %i.aym = ptrtoint ptr %i.ayk to i64
  %i.ayn = sub i64 %i.ayl, %i.aym
  %i.ayo = ashr exact i64 %i.ayn, 3
  %.not162.i.i = icmp ugt i64 %i.ayo, %i.ayi
  br i1 %.not162.i.i, label %bb.li, label %bb.lh

bb.lh:                                            ; preds = %bb.lg
  call void @llvm.lifetime.start.p0(ptr nonnull %97) #29, !noalias !2589
  store i8 1, ptr %i.gz, align 1, !tbaa !46, !noalias !2589
  store ptr @.str.228, ptr %97, align 8, !tbaa !47, !noalias !2589
  store i8 3, ptr %i.gy, align 8, !tbaa !43, !noalias !2589
  call fastcc void @_ZN12_GLOBAL__N_117BitcodeReaderBase5errorERKN4llvm5TwineE(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(424) %i.cu, ptr noundef nonnull align 8 dereferenceable(34) %97)
  call void @llvm.lifetime.end.p0(ptr nonnull %97) #29, !noalias !2589
  br label %_ZNSt6vectorIPN4llvm4TypeESaIS2_EE6resizeEm.exit.i.i

end_hunk_0
