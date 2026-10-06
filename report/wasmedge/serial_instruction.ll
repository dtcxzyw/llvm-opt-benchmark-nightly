Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wasmedge/original/serial_instruction?download=true
inline.NumInlined: 1131
inline.NumDeleted: 513
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZNK8WasmEdge6Loader10Serializer20serializeInstructionERKNS_3AST11InstructionERSt6vectorIhSaIhEE:bb.a
  br label %bb.asi

bb.asi:                                           ; preds = %bb.ash, %bb.asg, %.critedge1081
  call void @llvm.lifetime.end.p0(ptr nonnull %i.uw) #19
  br label %bb.atv

bb.asj:                                           ; preds = %bb.aqu, %bb.aqu
  store i64 1, ptr %0, align 4
  br label %bb.atv

bb.ask:                                           ; preds = %bb.aqu
  %i.aau = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aav = load i32, ptr %2, align 16, !tbaa !28
  call void @_ZNK8WasmEdge6Loader10Serializer12serializeU32EjRSt6vectorIhSaIhEE(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %i.aav, ptr noundef nonnull align 8 dereferenceable(24) %3) #19
  %i.aaw = load ptr, ptr %i.aau, align 8, !tbaa !28 ; 2 uses
  %i.aax = load i32, ptr %2, align 16, !tbaa !28  ; 2 uses
  %i.aay = zext i32 %i.aax to i64
  %.idx = shl nuw nsw i64 %i.aay, 3
  %i.aaz = getelementptr inbounds nuw i8, ptr %i.aaw, i64 %.idx
  %.not1172 = icmp eq i32 %i.aax, 0
  br i1 %.not1172, label %.critedge1085, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ask, %.critedge1083
  %.010681173 = phi ptr [ %i.abf, %.critedge1083 ], [ %i.aaw, %bb.ask ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #19
  call void @_ZNK8WasmEdge6Loader10Serializer16serializeValTypeERKNS_7ValTypeENS_11ASTNodeAttrERSt6vectorIhSaIhEE(ptr dead_on_unwind nonnull writable sret(%"class.cxx20::expected") align 4 %17, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(8) %.010681173, i8 noundef zeroext 31, ptr noundef nonnull align 8 dereferenceable(24) %3) #19
  %i.aba = load i8, ptr %17, align 4, !tbaa !36, !range !37, !noundef !25
  %i.abb = trunc nuw i8 %i.aba to i1
  br i1 %i.abb, label %.critedge1083, label %bb.asl

bb.asl:                                           ; preds = %.lr.ph
  %i.abc = getelementptr inbounds nuw i8, ptr %17, i64 4
  %i.abd = load i32, ptr %i.abc, align 4, !tbaa !28
  store i8 0, ptr %0, align 4, !tbaa !36
  %i.abe = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.abd, ptr %i.abe, align 4, !tbaa !28
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #19
  br label %bb.atv

.critedge1083:                                    ; preds = %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #19
  %i.abf = getelementptr inbounds nuw i8, ptr %.010681173, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.abf, %i.aaz
  br i1 %.not, label %.critedge1085, label %.lr.ph

.critedge1085:                                    ; preds = %.critedge1083, %bb.ask
  store i64 1, ptr %0, align 4
  br label %bb.atv

bb.asm:                                           ; preds = %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu
  %i.abg = load i32, ptr %2, align 16, !tbaa !28
  call void @_ZNK8WasmEdge6Loader10Serializer12serializeU32EjRSt6vectorIhSaIhEE(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %i.abg, ptr noundef nonnull align 8 dereferenceable(24) %3) #19
  store i64 1, ptr %0, align 4
  br label %bb.atv

bb.asn:                                           ; preds = %bb.aqu
  %i.abh = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.abi = load i32, ptr %i.abh, align 4, !tbaa !28
  call void @_ZNK8WasmEdge6Loader10Serializer12serializeU32EjRSt6vectorIhSaIhEE(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %i.abi, ptr noundef nonnull align 8 dereferenceable(24) %3) #19
  br label %bb.aso

bb.aso:                                           ; preds = %bb.asn, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu
  %i.abj = load i32, ptr %2, align 16, !tbaa !28
  call void @_ZNK8WasmEdge6Loader10Serializer12serializeU32EjRSt6vectorIhSaIhEE(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %i.abj, ptr noundef nonnull align 8 dereferenceable(24) %3) #19
  store i64 1, ptr %0, align 4
  br label %bb.atv

bb.asp:                                           ; preds = %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu
  call fastcc void @"_ZZNK8WasmEdge6Loader10Serializer20serializeInstructionERKNS_3AST11InstructionERSt6vectorIhSaIhEEENK3$_0clEv"(ptr dead_on_unwind noalias writable align 4 %0, ptr noundef nonnull align 8 dereferenceable(24) %9)
  br label %bb.atv

bb.asq:                                           ; preds = %bb.aqu
  %i.abk = load i32, ptr %2, align 16, !tbaa !28
  call void @_ZNK8WasmEdge6Loader10Serializer12serializeU32EjRSt6vectorIhSaIhEE(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %i.abk, ptr noundef nonnull align 8 dereferenceable(24) %3) #19
  br label %bb.asr

bb.asr:                                           ; preds = %bb.asq, %bb.aqu, %bb.aqu, %bb.aqu
  %i.abl = load ptr, ptr %1, align 8, !tbaa !24, !nonnull !25, !align !26
  %i.abm = call noundef zeroext i1 @_ZNK8WasmEdge9Configure11hasProposalENS_8ProposalE(ptr noundef nonnull align 8 dereferenceable(168) %i.abl, i8 noundef zeroext 11) #19
  %i.abn = load i32, ptr %2, align 16, !tbaa !28  ; 2 uses
  br i1 %i.abm, label %bb.ass, label %.invoke1197

bb.ass:                                           ; preds = %bb.asr
  call void @_ZNK8WasmEdge6Loader10Serializer12serializeU32EjRSt6vectorIhSaIhEE(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %i.abn, ptr noundef nonnull align 8 dereferenceable(24) %3) #19
  store i64 1, ptr %0, align 4
  br label %bb.atv

bb.ast:                                           ; preds = %bb.aqu
  %i.abo = load ptr, ptr %1, align 8, !tbaa !24, !nonnull !25, !align !26
  %i.abp = call noundef zeroext i1 @_ZNK8WasmEdge9Configure11hasProposalENS_8ProposalE(ptr noundef nonnull align 8 dereferenceable(168) %i.abo, i8 noundef zeroext 11) #19
  br i1 %i.abp, label %bb.asu, label %bb.asv

bb.asu:                                           ; preds = %bb.ast
  %i.abq = load i32, ptr %2, align 16, !tbaa !28
  call void @_ZNK8WasmEdge6Loader10Serializer12serializeU32EjRSt6vectorIhSaIhEE(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %i.abq, ptr noundef nonnull align 8 dereferenceable(24) %3) #19
  %i.abr = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.abs = load i32, ptr %i.abr, align 4, !tbaa !28
  call void @_ZNK8WasmEdge6Loader10Serializer12serializeU32EjRSt6vectorIhSaIhEE(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %i.abs, ptr noundef nonnull align 8 dereferenceable(24) %3) #19
  store i64 1, ptr %0, align 4
  br label %bb.atv

bb.asv:                                           ; preds = %bb.ast
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #19
  %i.abt = load i32, ptr %2, align 16, !tbaa !28
  invoke fastcc void @"_ZZNK8WasmEdge6Loader10Serializer20serializeInstructionERKNS_3AST11InstructionERSt6vectorIhSaIhEEENK3$_1clEj"(ptr dead_on_unwind noalias nonnull writable align 4 %18, ptr nonnull %3, i32 noundef %i.abt)
          to label %bb.asw unwind label %.loopexit.split-lp.loopexit.split-lp

bb.asw:                                           ; preds = %bb.asv
  %i.abu = load i8, ptr %18, align 4, !tbaa !36, !range !37, !noundef !25
  %i.abv = trunc nuw i8 %i.abu to i1
  br i1 %i.abv, label %.critedge1087, label %bb.asx

bb.asx:                                           ; preds = %bb.asw
  %i.abw = getelementptr inbounds nuw i8, ptr %18, i64 4
  %i.abx = load i32, ptr %i.abw, align 4, !tbaa !28
  store i8 0, ptr %0, align 4, !tbaa !36
  %i.aby = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.abx, ptr %i.aby, align 4, !tbaa !28
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #19
  br label %bb.atv

.critedge1087:                                    ; preds = %bb.asw
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #19
  br label %.invoke1197.sink.split

bb.asy:                                           ; preds = %bb.aqu
  %i.abz = load i32, ptr %2, align 16, !tbaa !28
  call void @_ZNK8WasmEdge6Loader10Serializer12serializeU32EjRSt6vectorIhSaIhEE(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %i.abz, ptr noundef nonnull align 8 dereferenceable(24) %3) #19
  store i64 1, ptr %0, align 4
  br label %bb.atv

bb.asz:                                           ; preds = %bb.aqu
  %i.aca = load i128, ptr %2, align 16, !tbaa !129
  %.sroa.01135.0.extract.trunc = trunc i128 %i.aca to i32
  call void @_ZNK8WasmEdge6Loader10Serializer12serializeS32EiRSt6vectorIhSaIhEE(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %.sroa.01135.0.extract.trunc, ptr noundef nonnull align 8 dereferenceable(24) %3) #19
  store i64 1, ptr %0, align 4
  br label %bb.atv

bb.ata:                                           ; preds = %bb.aqu
  %i.acb = load i128, ptr %2, align 16, !tbaa !129
  %.sroa.01133.0.extract.trunc = trunc i128 %i.acb to i64
  call void @_ZNK8WasmEdge6Loader10Serializer12serializeS64ElRSt6vectorIhSaIhEE(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %.sroa.01133.0.extract.trunc, ptr noundef nonnull align 8 dereferenceable(24) %3) #19
  store i64 1, ptr %0, align 4
  br label %bb.atv

bb.atb:                                           ; preds = %bb.aqu
  %i.acc = load float, ptr %2, align 16
  call void @_ZNK8WasmEdge6Loader10Serializer11serializeFNIfjEENSt9enable_ifIXaaeqstT_stT0_sr3stdE13is_integral_vIS5_EEvE4typeES4_RSt6vectorIhSaIhEE(ptr noundef nonnull align 8 dereferenceable(8) %1, float noundef %i.acc, ptr noundef nonnull align 8 dereferenceable(24) %3) #19
  store i64 1, ptr %0, align 4
  br label %bb.atv

bb.atc:                                           ; preds = %bb.aqu
  %i.acd = load double, ptr %2, align 16
  call void @_ZNK8WasmEdge6Loader10Serializer11serializeFNIdmEENSt9enable_ifIXaaeqstT_stT0_sr3stdE13is_integral_vIS5_EEvE4typeES4_RSt6vectorIhSaIhEE(ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %i.acd, ptr noundef nonnull align 8 dereferenceable(24) %3) #19
  store i64 1, ptr %0, align 4
  br label %bb.atv

bb.atd:                                           ; preds = %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu
  store i64 1, ptr %0, align 4
  br label %bb.atv

bb.ate:                                           ; preds = %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu
  call fastcc void @"_ZZNK8WasmEdge6Loader10Serializer20serializeInstructionERKNS_3AST11InstructionERSt6vectorIhSaIhEEENK3$_0clEv"(ptr dead_on_unwind noalias writable align 4 %0, ptr noundef nonnull align 8 dereferenceable(24) %9)
  br label %bb.atv

bb.atf:                                           ; preds = %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #19
  call fastcc void @"_ZZNK8WasmEdge6Loader10Serializer20serializeInstructionERKNS_3AST11InstructionERSt6vectorIhSaIhEEENK3$_0clEv"(ptr dead_on_unwind noalias nonnull writable align 4 %19, ptr noundef nonnull align 8 dereferenceable(24) %9)
  %i.ace = load i8, ptr %19, align 4, !tbaa !36, !range !37, !noundef !25
  %i.acf = trunc nuw i8 %i.ace to i1
  br i1 %i.acf, label %.critedge1089, label %bb.atg

bb.atg:                                           ; preds = %bb.atf
  %i.acg = getelementptr inbounds nuw i8, ptr %19, i64 4
  %i.ach = load i32, ptr %i.acg, align 4, !tbaa !28
  store i8 0, ptr %0, align 4, !tbaa !36
  %i.aci = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.ach, ptr %i.aci, align 4, !tbaa !28
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #19
  br label %bb.atv

.critedge1089:                                    ; preds = %bb.atf
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ux) #19
  %i.acj = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ack = load i8, ptr %i.acj, align 8, !tbaa !130
  store i8 %i.ack, ptr %i.ux, align 1, !tbaa !28
  invoke void @_ZNSt6vectorIhSaIhEE9push_backEOh(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 1 dereferenceable(1) %i.ux)
          to label %bb.ath unwind label %.loopexit.split-lp.loopexit.split-lp

bb.ath:                                           ; preds = %.critedge1089
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ux) #19
  store i64 1, ptr %0, align 4
  br label %bb.atv

bb.ati:                                           ; preds = %bb.aqu, %bb.aqu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.uy) #19
  %i.acl = load i128, ptr %2, align 16, !tbaa !129
  store i128 %i.acl, ptr %i.uy, align 16, !tbaa !129
  %i.acm = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.acn = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %.pre.a = load ptr, ptr %i.acm, align 8, !tbaa !41
  br label %bb.atk

bb.atj:                                           ; preds = %_ZNSt6vectorIhSaIhEE9push_backERKh.exit1125
  store i64 1, ptr %0, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.uy) #19
  br label %bb.atv

bb.atk:                                           ; preds = %bb.ati, %_ZNSt6vectorIhSaIhEE9push_backERKh.exit1125
  %i.aco = phi ptr [ %.pre.a, %bb.ati ], [ %i.adj, %_ZNSt6vectorIhSaIhEE9push_backERKh.exit1125 ] ; 3 uses
  %indvars.iv = phi i64 [ 0, %bb.ati ], [ %indvars.iv.next, %_ZNSt6vectorIhSaIhEE9push_backERKh.exit1125 ] ; 2 uses
  %i.acp = sub nuw nsw i64 15, %indvars.iv
  %i.acq = getelementptr inbounds nuw i8, ptr %i.uy, i64 %i.acp ; 2 uses
  %20 = load ptr, ptr %i.acn, align 8, !tbaa !42
  %.not.i1116 = icmp eq ptr %i.aco, %20
  br i1 %.not.i1116, label %bb.atm, label %bb.atl

bb.atl:                                           ; preds = %bb.atk
  %i.acr = load i8, ptr %i.acq, align 1, !tbaa !28
  store i8 %i.acr, ptr %i.aco, align 1, !tbaa !28
  %i.acs = load ptr, ptr %i.acm, align 8, !tbaa !41
  %i.act = getelementptr inbounds nuw i8, ptr %i.acs, i64 1 ; 2 uses
  store ptr %i.act, ptr %i.acm, align 8, !tbaa !41
  br label %_ZNSt6vectorIhSaIhEE9push_backERKh.exit1125

bb.atm:                                           ; preds = %bb.atk
  %i.acu = load ptr, ptr %3, align 8, !tbaa !43   ; 4 uses
  %i.acv = ptrtoint ptr %i.aco to i64
  %i.acw = ptrtoint ptr %i.acu to i64
  %i.acx = sub i64 %i.acv, %i.acw                 ; 8 uses
  %i.acy = icmp eq i64 %i.acx, 9223372036854775807
  br i1 %i.acy, label %.invoke, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i1117

.invoke:                                          ; preds = %bb.atm, %bb.arc
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.301) #23
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i1117: ; preds = %bb.atm
  %.sroa.speculated.i.i.i1118 = call i64 @llvm.umax.i64(i64 %i.acx, i64 1)
  %i.acz = add i64 %.sroa.speculated.i.i.i1118, %i.acx ; 2 uses
  %i.ada = icmp ult i64 %i.acz, %i.acx
  %i.adb = call i64 @llvm.umin.i64(i64 %i.acz, i64 9223372036854775807)
  %i.adc = select i1 %i.ada, i64 9223372036854775807, i64 %i.adb ; 3 uses
  %.not.i.i.i1119 = icmp ne i64 %i.adc, 0
  call void @llvm.assume(i1 %.not.i.i.i1119)
  %i.add = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.adc) #21
          to label %.noexc1124 unwind label %.loopexit.split-lp.loopexit ; 4 uses

.noexc1124:                                       ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i1117
  %i.ade = getelementptr inbounds nuw i8, ptr %i.add, i64 %i.acx ; 2 uses
  %i.adf = load i8, ptr %i.acq, align 1, !tbaa !28
  store i8 %i.adf, ptr %i.ade, align 1, !tbaa !28
  %i.adg = icmp sgt i64 %i.acx, 0
  br i1 %i.adg, label %bb.atn, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i1120

bb.atn:                                           ; preds = %.noexc1124
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.add, ptr align 1 %i.acu, i64 %i.acx, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i1120

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i1120: ; preds = %bb.atn, %.noexc1124
  %i.adh = getelementptr inbounds nuw i8, ptr %i.ade, i64 1 ; 2 uses
  %.not.i17.i.i1121 = icmp eq ptr %i.acu, null
  br i1 %.not.i17.i.i1121, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i1122, label %bb.ato

bb.ato:                                           ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i1120
  call void @_ZdlPvm(ptr noundef nonnull %i.acu, i64 noundef %i.acx) #22
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i1122

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i1122: ; preds = %bb.ato, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i1120
  store ptr %i.add, ptr %3, align 8, !tbaa !43
  store ptr %i.adh, ptr %i.acm, align 8, !tbaa !41
  %i.adi = getelementptr inbounds nuw i8, ptr %i.add, i64 %i.adc
  store ptr %i.adi, ptr %i.acn, align 8, !tbaa !42
  br label %_ZNSt6vectorIhSaIhEE9push_backERKh.exit1125

_ZNSt6vectorIhSaIhEE9push_backERKh.exit1125:      ; preds = %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i1122, %bb.atl
  %i.adj = phi ptr [ %i.adh, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i1122 ], [ %i.act, %bb.atl ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 16
  br i1 %exitcond.not, label %bb.atj, label %bb.atk, !llvm.loop !109

bb.atp:                                           ; preds = %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.uz) #19
  %i.adk = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.adl = load i8, ptr %i.adk, align 8, !tbaa !130
  store i8 %i.adl, ptr %i.uz, align 1, !tbaa !28
  invoke void @_ZNSt6vectorIhSaIhEE9push_backEOh(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 1 dereferenceable(1) %i.uz)
          to label %bb.atq unwind label %.loopexit.split-lp.loopexit.split-lp

bb.atq:                                           ; preds = %bb.atp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.uz) #19
  store i64 1, ptr %0, align 4
  br label %bb.atv

bb.atr:                                           ; preds = %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu
  store i64 1, ptr %0, align 4
  br label %bb.atv

bb.ats:                                           ; preds = %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu
  store i64 1, ptr %0, align 4
  br label %bb.atv

.invoke1197.sink.split:                           ; preds = %bb.aqu, %.critedge1087
  %i.adm = load i32, ptr %2, align 16, !tbaa !28
  br label %.invoke1197

.invoke1197:                                      ; preds = %.invoke1197.sink.split, %bb.asr
  %i.adn = phi i32 [ %i.abn, %bb.asr ], [ %i.adm, %.invoke1197.sink.split ]
  invoke fastcc void @"_ZZNK8WasmEdge6Loader10Serializer20serializeInstructionERKNS_3AST11InstructionERSt6vectorIhSaIhEEENK3$_1clEj"(ptr dead_on_unwind noalias writable align 4 %0, ptr nonnull %3, i32 noundef %i.adn)
          to label %bb.atv unwind label %.loopexit.split-lp.loopexit.split-lp

bb.att:                                           ; preds = %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu, %bb.aqu
  call fastcc void @"_ZZNK8WasmEdge6Loader10Serializer20serializeInstructionERKNS_3AST11InstructionERSt6vectorIhSaIhEEENK3$_0clEv"(ptr dead_on_unwind noalias writable align 4 %0, ptr noundef nonnull align 8 dereferenceable(24) %9)
  br label %bb.atv

bb.atu:                                           ; preds = %bb.aqu
  unreachable

bb.atv:                                           ; preds = %.invoke1197, %bb.aqv, %._crit_edge1180, %bb.ark, %bb.arl, %._crit_edge, %bb.arr, %bb.aru, %bb.arv, %.critedge1077, %bb.ary, %bb.arz, %bb.asa, %bb.asb, %bb.asi, %bb.asj, %bb.asm, %bb.aso, %bb.asp, %bb.ass, %bb.asu, %bb.asy, %bb.asz, %bb.ata, %bb.atb, %bb.atc, %bb.atd, %bb.ate, %bb.ath, %bb.atj, %bb.atq, %bb.atr, %bb.ats, %bb.att, %.critedge1085, %bb.aqz, %bb.arx, %bb.asx, %bb.atg, %bb.aqw, %bb.asl, %_ZNK8WasmEdge6Loader10Serializer15logNeedProposalENS_7ErrCodeENS_8ProposalENS_11ASTNodeAttrE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  ret void

.loopexit:                                        ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          catch ptr null
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i1117
  %lpad.loopexit1168 = landingpad { ptr, i32 }
          catch ptr null
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %.invoke1197, %.invoke, %bb.asv, %bb.aqw, %bb.aqx, %bb.atp, %.critedge1089, %bb.ase, %bb.aqr, %bb.aqp, %bb.aqn, %bb.aql, %bb.aqj, %bb.aqh, %bb.aqf, %bb.aqd, %bb.aqb, %bb.apz, %bb.apx, %bb.apv, %bb.apt, %bb.apr, %bb.app, %bb.apn, %bb.apl, %bb.apj, %bb.aph, %bb.apf, %bb.apd, %bb.apb, %bb.aoz, %bb.aox, %bb.aov, %bb.aot, %bb.aor, %bb.aop, %bb.aon, %bb.aol, %bb.aoj, %bb.aoh, %bb.aof, %bb.aod, %bb.aob, %bb.anz, %bb.anx, %bb.anv, %bb.ant, %bb.anr, %bb.anp, %bb.ann, %bb.anl, %bb.anj, %bb.anh, %bb.anf, %bb.and, %bb.anb, %bb.amz, %bb.amx, %bb.amv, %bb.amt, %bb.amr, %bb.amp, %bb.amn, %bb.aml, %bb.amj, %bb.amh, %bb.amf, %bb.amd, %bb.amb, %bb.alz, %bb.alx, %bb.alv, %bb.alt, %bb.alr, %bb.alp, %bb.aln, %bb.all, %bb.alj, %bb.alh, %bb.alf, %bb.ald, %bb.alb, %bb.akz, %bb.akx, %bb.akv, %bb.akt, %bb.akr, %bb.akp, %bb.akn, %bb.akl, %bb.akj, %bb.akh, %bb.akf, %bb.akd, %bb.akb, %bb.ajz, %bb.ajx, %bb.ajv, %bb.ajt, %bb.ajr, %bb.ajp, %bb.ajn, %bb.ajl, %bb.ajj, %bb.ajh, %bb.ajf, %bb.ajd, %bb.ajb, %bb.aiz, %bb.aix, %bb.aiv, %bb.ait, %bb.air, %bb.aip, %bb.ain, %bb.ail, %bb.aij, %bb.aih, %bb.aif, %bb.aid, %bb.aib, %bb.ahz, %bb.ahx, %bb.ahv, %bb.aht, %bb.ahr, %bb.ahp, %bb.ahn, %bb.ahl, %bb.ahj, %bb.ahh, %bb.ahf, %bb.ahd, %bb.ahb, %bb.agz, %bb.agx, %bb.agv, %bb.agt, %bb.agr, %bb.agp, %bb.agn, %bb.agl, %bb.agj, %bb.agh, %bb.agf, %bb.agd, %bb.agb, %bb.afz, %bb.afx, %bb.afv, %bb.aft, %bb.afr, %bb.afp, %bb.afn, %bb.afl, %bb.afj, %bb.afh, %bb.aff, %bb.afd, %bb.afb, %bb.aez, %bb.aex, %bb.aev, %bb.aet, %bb.aer, %bb.aep, %bb.aen, %bb.ael, %bb.aej, %bb.aeh, %bb.aef, %bb.aed, %bb.aeb, %bb.adz, %bb.adx, %bb.adv, %bb.adt, %bb.adr, %bb.adp, %bb.adn, %bb.adl, %bb.adj, %bb.adh, %bb.adf, %bb.add, %bb.adb, %bb.acz, %bb.acx, %bb.acv, %bb.act, %bb.acr, %bb.acp, %bb.acn, %bb.acl, %bb.acj, %bb.ach, %bb.acf, %bb.acd, %bb.acb, %bb.abz, %bb.abx, %bb.abv, %bb.abt, %bb.abr, %bb.abp, %bb.abn, %bb.abl, %bb.abj, %bb.abh, %bb.abf, %bb.abd, %bb.abb, %bb.aaz, %bb.aax, %bb.aav, %bb.aat, %bb.aar, %bb.aap, %bb.aan, %bb.aal, %bb.aaj, %bb.aah, %bb.aaf, %bb.aad, %bb.aab, %bb.zz, %bb.zx, %bb.zv, %bb.zt, %bb.zr, %bb.zp, %bb.zn, %bb.zl, %bb.zj, %bb.zh, %bb.zf, %bb.zd, %bb.zb, %bb.yz, %bb.yx, %bb.yv, %bb.yt, %bb.yr, %bb.yp, %bb.yn, %bb.yl, %bb.yj, %bb.yh, %bb.yf, %bb.yd, %bb.yb, %bb.xz, %bb.xx, %bb.xv, %bb.xt, %bb.xr, %bb.xp, %bb.xn, %bb.xl, %bb.xj, %bb.xh, %bb.xf, %bb.xd, %bb.xb, %bb.wz, %bb.wx, %bb.wv, %bb.wt, %bb.wr, %bb.wp, %bb.wn, %bb.wl, %bb.wj, %bb.wh, %bb.wf, %bb.wd, %bb.wb, %bb.vz, %bb.vx, %bb.vv, %bb.vt, %bb.vr, %bb.vp, %bb.vn, %bb.vl, %bb.vj, %bb.vh, %bb.vf, %bb.vd, %bb.vb, %bb.uz, %bb.ux, %bb.uv, %bb.ut, %bb.ur, %bb.up, %bb.un, %bb.ul, %bb.uj, %bb.uh, %bb.uf, %bb.ud, %bb.ub, %bb.tz, %bb.tx, %bb.tv, %bb.tt, %bb.tr, %bb.tp, %bb.tn, %bb.tl, %bb.tj, %bb.th, %bb.tf, %bb.td, %bb.tb, %bb.sz, %bb.sx, %bb.sv, %bb.st, %bb.sr, %bb.sp, %bb.sn, %bb.sl, %bb.sj, %bb.sh, %bb.sf, %bb.sd, %bb.sb, %bb.rz, %bb.rx, %bb.rv, %bb.rt, %bb.rr, %bb.rp, %bb.rn, %bb.rl, %bb.rj, %bb.rh, %bb.rf, %bb.rd, %bb.rb, %bb.qz, %bb.qx, %bb.qv, %bb.qt, %bb.qr, %bb.qp, %bb.qn, %bb.ql, %bb.qj, %bb.qh, %bb.qf, %bb.qd, %bb.qb, %bb.pz, %bb.px, %bb.pv, %bb.pt, %bb.pr, %bb.pp, %bb.pn, %bb.pl, %bb.pj, %bb.ph, %bb.pf, %bb.pd, %bb.pb, %bb.oz, %bb.ox, %bb.ov, %bb.ot, %bb.or, %bb.op, %bb.on, %bb.ol, %bb.oj, %bb.oh, %bb.of, %bb.od, %bb.ob, %bb.nz, %bb.nx, %bb.nv, %bb.nt, %bb.nr, %bb.np, %bb.nn, %bb.nl, %bb.nj, %bb.nh, %bb.nf, %bb.nd, %bb.nb, %bb.mz, %bb.mx, %bb.mv, %bb.mt, %bb.mr, %bb.mp, %bb.mn, %bb.ml, %bb.mj, %bb.mh, %bb.mf, %bb.md, %bb.mb, %bb.lz, %bb.lx, %bb.lv, %bb.lt, %bb.lr, %bb.lp, %bb.ln, %bb.ll, %bb.lj, %bb.lh, %bb.lf, %bb.ld, %bb.lb, %bb.kz, %bb.kx, %bb.kv, %bb.kt, %bb.kr, %bb.kp, %bb.kn, %bb.kl, %bb.kj, %bb.kh, %bb.kf, %bb.kd, %bb.kb, %bb.jz, %bb.jx, %bb.jv, %bb.jt, %bb.jr, %bb.jp, %bb.jn, %bb.jl, %bb.jj, %bb.jh, %bb.jf, %bb.jd, %bb.jb, %bb.iz, %bb.ix, %bb.iv, %bb.it, %bb.ir, %bb.ip, %bb.in, %bb.il, %bb.ij, %bb.ih, %bb.if, %bb.id, %bb.ib, %bb.hz, %bb.hx, %bb.hv, %bb.ht, %bb.hr, %bb.hp, %bb.hn, %bb.hl, %bb.hj, %bb.hh, %bb.hf, %bb.hd, %bb.hb, %bb.gz, %bb.gx, %bb.gv, %bb.gt, %bb.gr, %bb.gp, %bb.gn, %bb.gl, %bb.gj, %bb.gh, %bb.gf, %bb.gd, %bb.gb, %bb.fz, %bb.fx, %bb.fv, %bb.ft, %bb.fr, %bb.fp, %bb.fn, %bb.fl, %bb.fj, %bb.fh, %bb.ff, %bb.fd, %bb.fb, %bb.ez, %bb.ex, %bb.ev, %bb.et, %bb.er, %bb.ep, %bb.en, %bb.el, %bb.ej, %bb.eh, %bb.ef, %bb.ed, %bb.eb, %bb.dz, %bb.dx, %bb.dv, %bb.dt, %bb.dr, %bb.dp, %bb.dn, %bb.dl, %bb.dj, %bb.dh, %bb.df, %bb.dd, %bb.db, %bb.cz, %bb.cx, %bb.cv, %bb.ct, %bb.cr, %bb.cp, %bb.cn, %bb.cl, %bb.cj, %bb.ch, %bb.cf, %bb.cd, %bb.cb, %bb.bz, %bb.bx, %bb.bv, %bb.bt, %bb.br, %bb.bp, %bb.bn, %bb.bl, %bb.bj, %bb.bh, %bb.bf, %bb.bd, %bb.bb, %bb.az, %bb.ax, %bb.av, %bb.at, %bb.ar, %bb.ap, %bb.an, %bb.al, %bb.aj, %bb.ah, %bb.af, %bb.ad, %bb.ab, %bb.z, %bb.x, %bb.v, %bb.t, %bb.r, %bb.p, %bb.n, %bb.l, %bb.j, %bb.h, %bb.f
  %lpad.loopexit.split-lp1169 = landingpad { ptr, i32 }
          catch ptr null
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit1168, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp1169, %.loopexit.split-lp.loopexit.split-lp ]
  %i.ado = extractvalue { ptr, i32 } %lpad.phi, 0
  call void @__clang_call_terminate(ptr %i.ado) #20
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i16 @_ZNK8WasmEdge9Configure19isInstrNeedProposalENS_6OpCodeE(ptr noundef nonnull align 8 dereferenceable(168) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = add i32 %1, -225
  %or.cond = icmp ult i32 %i.a, 8
  br i1 %or.cond, label %.preheader, label %bb.d

.preheader:                                       ; preds = %bb.a, %.preheader
  %i.b = tail call noundef i32 @pthread_rwlock_rdlock(ptr noundef nonnull align 8 dereferenceable(168) %0) #19
  switch i32 %i.b, label %_ZNK8WasmEdge9Configure11hasProposalENS_8ProposalE.exit [
    i32 11, label %.preheader
    i32 35, label %bb.b
  ]

bb.b:                                             ; preds = %.preheader
  invoke void @_ZSt20__throw_system_errori(i32 noundef 35) #23
          to label %.noexc.i unwind label %bb.c

.noexc.i:                                         ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #20
  unreachable

_ZNK8WasmEdge9Configure11hasProposalENS_8ProposalE.exit: ; preds = %.preheader
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.f = load i64, ptr %i.e, align 8, !tbaa !48
  %i.g = and i64 %i.f, 2
  %.not96 = icmp eq i64 %i.g, 0
  %i.h = tail call noundef i32 @pthread_rwlock_unlock(ptr noundef nonnull align 8 dereferenceable(168) %0) #19 ; 0 uses
  br i1 %.not96, label %bb.ag, label %bb.af

bb.d:                                             ; preds = %bb.a
  %i.i = add i32 %1, -182
  %or.cond3 = icmp ult i32 %i.i, 5
  br i1 %or.cond3, label %.preheader97, label %bb.g

.preheader97:                                     ; preds = %bb.d, %.preheader97
  %i.j = tail call noundef i32 @pthread_rwlock_rdlock(ptr noundef nonnull align 8 dereferenceable(168) %0) #19
  switch i32 %i.j, label %_ZNK8WasmEdge9Configure11hasProposalENS_8ProposalE.exit75 [
    i32 11, label %.preheader97
    i32 35, label %bb.e
  ]

bb.e:                                             ; preds = %.preheader97
  invoke void @_ZSt20__throw_system_errori(i32 noundef 35) #23
          to label %.noexc.i74 unwind label %bb.f

.noexc.i74:                                       ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  tail call void @__clang_call_terminate(ptr %i.l) #20
  unreachable

_ZNK8WasmEdge9Configure11hasProposalENS_8ProposalE.exit75: ; preds = %.preheader97
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.n = load i64, ptr %i.m, align 8, !tbaa !48
  %i.o = and i64 %i.n, 4
  %.not95 = icmp eq i64 %i.o, 0
  %i.p = tail call noundef i32 @pthread_rwlock_unlock(ptr noundef nonnull align 8 dereferenceable(168) %0) #19 ; 0 uses
  br i1 %.not95, label %bb.ag, label %bb.af

bb.g:                                             ; preds = %bb.d
  switch i32 %1, label %bb.p [
    i32 239, label %.preheader99
    i32 238, label %.preheader99
    i32 237, label %.preheader99
    i32 236, label %.preheader99
    i32 235, label %.preheader99
    i32 234, label %.preheader99
    i32 233, label %.preheader99
    i32 189, label %.preheader99
    i32 188, label %.preheader99
    i32 187, label %.preheader99
    i32 242, label %.preheader100
    i32 241, label %.preheader100
    i32 240, label %.preheader100
    i32 29, label %.preheader100
    i32 28, label %.preheader100
    i32 21, label %.preheader100
  ]

.preheader100:                                    ; preds = %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g
  br label %bb.m

.preheader99:                                     ; preds = %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g
  br label %bb.h

bb.h:                                             ; preds = %.preheader99, %bb.h
  %i.q = tail call noundef i32 @pthread_rwlock_rdlock(ptr noundef nonnull align 8 dereferenceable(168) %0) #19
  switch i32 %i.q, label %_ZNK8WasmEdge9Configure11hasProposalENS_8ProposalE.exit77 [
    i32 11, label %bb.h
    i32 35, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h
  invoke void @_ZSt20__throw_system_errori(i32 noundef 35) #23
          to label %.noexc.i76 unwind label %bb.j

.noexc.i76:                                       ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %bb.i
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  tail call void @__clang_call_terminate(ptr %i.s) #20
  unreachable

_ZNK8WasmEdge9Configure11hasProposalENS_8ProposalE.exit77: ; preds = %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !48
  %i.v = and i64 %i.u, 32
  %.not93 = icmp eq i64 %i.v, 0
  %i.w = tail call noundef i32 @pthread_rwlock_unlock(ptr noundef nonnull align 8 dereferenceable(168) %0) #19 ; 0 uses
  br i1 %.not93, label %.preheader98, label %bb.af

.preheader98:                                     ; preds = %_ZNK8WasmEdge9Configure11hasProposalENS_8ProposalE.exit77, %.preheader98
  %i.x = tail call noundef i32 @pthread_rwlock_rdlock(ptr noundef nonnull align 8 dereferenceable(168) %0) #19
  switch i32 %i.x, label %_ZNK8WasmEdge9Configure11hasProposalENS_8ProposalE.exit79 [
    i32 11, label %.preheader98
end_hunk_0
begin_hunk_1_@_ZNK8WasmEdge6Loader10Serializer11serializeFNIfjEENSt9enable_ifIXaaeqstT_stT0_sr3stdE13is_integral_vIS5_EEvE4typeES4_RSt6vectorIhSaIhEE:bb.a

bb.g:                                             ; preds = %_ZNSt6vectorIhSaIhEE9push_backEOh.exit
  store i8 %i.z, ptr %i.x, align 1, !tbaa !28
  %i.aa = load ptr, ptr %i.b, align 8, !tbaa !41
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 1 ; 2 uses
  store ptr %i.ab, ptr %i.b, align 8, !tbaa !41
  %.pre10 = load ptr, ptr %i.c, align 8, !tbaa !42
  br label %_ZNSt6vectorIhSaIhEE9push_backEOh.exit.1

bb.h:                                             ; preds = %_ZNSt6vectorIhSaIhEE9push_backEOh.exit
  %i.ac = load ptr, ptr %2, align 8, !tbaa !43    ; 4 uses
  %i.ad = ptrtoint ptr %i.w to i64
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = sub i64 %i.ad, %i.ae                    ; 8 uses
  %i.ag = icmp eq i64 %i.af, 9223372036854775807
  br i1 %i.ag, label %bb.d, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.1

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.1: ; preds = %bb.h
  %.sroa.speculated.i.i.i.i.1 = tail call i64 @llvm.umax.i64(i64 %i.af, i64 1)
  %i.ah = add i64 %.sroa.speculated.i.i.i.i.1, %i.af ; 2 uses
  %i.ai = icmp ult i64 %i.ah, %i.af
  %i.aj = tail call i64 @llvm.umin.i64(i64 %i.ah, i64 9223372036854775807)
  %i.ak = select i1 %i.ai, i64 9223372036854775807, i64 %i.aj ; 3 uses
  %.not.i.i.i.i.1 = icmp ne i64 %i.ak, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.1)
  %i.al = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ak) #21
          to label %.noexc6.1 unwind label %.loopexit ; 4 uses

.noexc6.1:                                        ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.1
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.af ; 2 uses
  store i8 %i.z, ptr %i.am, align 1, !tbaa !28
  %i.an = icmp sgt i64 %i.af, 0
  br i1 %i.an, label %bb.i, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.1

bb.i:                                             ; preds = %.noexc6.1
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.al, ptr align 1 %i.ac, i64 %i.af, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.1

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.1: ; preds = %bb.i, %.noexc6.1
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 1 ; 2 uses
  %.not.i17.i.i.i.1 = icmp eq ptr %i.ac, null
  br i1 %.not.i17.i.i.i.1, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.1, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.1
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef %i.af) #22
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.1

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.1: ; preds = %bb.j, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.1
  store ptr %i.al, ptr %2, align 8, !tbaa !43
  store ptr %i.ao, ptr %i.b, align 8, !tbaa !41
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ak ; 2 uses
  store ptr %i.ap, ptr %i.c, align 8, !tbaa !42
  br label %_ZNSt6vectorIhSaIhEE9push_backEOh.exit.1

_ZNSt6vectorIhSaIhEE9push_backEOh.exit.1:         ; preds = %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.1, %bb.g
  %i.aq = phi ptr [ %i.ap, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.1 ], [ %.pre10, %bb.g ] ; 2 uses
  %i.ar = phi ptr [ %i.ao, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.1 ], [ %i.ab, %bb.g ] ; 2 uses
  %i.as = lshr i32 %i.a, 16
  %i.at = trunc i32 %i.as to i8                   ; 2 uses
  %.not.i.i.2 = icmp eq ptr %i.ar, %i.aq
  br i1 %.not.i.i.2, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIhSaIhEE9push_backEOh.exit.1
  store i8 %i.at, ptr %i.ar, align 1, !tbaa !28
  %i.au = load ptr, ptr %i.b, align 8, !tbaa !41
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 1 ; 2 uses
  store ptr %i.av, ptr %i.b, align 8, !tbaa !41
  %.pre11 = load ptr, ptr %i.c, align 8, !tbaa !42
  br label %_ZNSt6vectorIhSaIhEE9push_backEOh.exit.2

bb.l:                                             ; preds = %_ZNSt6vectorIhSaIhEE9push_backEOh.exit.1
  %i.aw = load ptr, ptr %2, align 8, !tbaa !43    ; 4 uses
  %i.ax = ptrtoint ptr %i.aq to i64
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = sub i64 %i.ax, %i.ay                    ; 8 uses
  %i.ba = icmp eq i64 %i.az, 9223372036854775807
  br i1 %i.ba, label %bb.d, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.2

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.2: ; preds = %bb.l
  %.sroa.speculated.i.i.i.i.2 = tail call i64 @llvm.umax.i64(i64 %i.az, i64 1)
  %i.bb = add i64 %.sroa.speculated.i.i.i.i.2, %i.az ; 2 uses
  %i.bc = icmp ult i64 %i.bb, %i.az
  %i.bd = tail call i64 @llvm.umin.i64(i64 %i.bb, i64 9223372036854775807)
  %i.be = select i1 %i.bc, i64 9223372036854775807, i64 %i.bd ; 3 uses
  %.not.i.i.i.i.2 = icmp ne i64 %i.be, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.2)
  %i.bf = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.be) #21
          to label %.noexc6.2 unwind label %.loopexit ; 4 uses

.noexc6.2:                                        ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.2
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.az ; 2 uses
  store i8 %i.at, ptr %i.bg, align 1, !tbaa !28
  %i.bh = icmp sgt i64 %i.az, 0
  br i1 %i.bh, label %bb.m, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.2

bb.m:                                             ; preds = %.noexc6.2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bf, ptr align 1 %i.aw, i64 %i.az, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.2

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.2: ; preds = %bb.m, %.noexc6.2
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 1 ; 2 uses
  %.not.i17.i.i.i.2 = icmp eq ptr %i.aw, null
  br i1 %.not.i17.i.i.i.2, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.2, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aw, i64 noundef %i.az) #22
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.2

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.2: ; preds = %bb.n, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.2
  store ptr %i.bf, ptr %2, align 8, !tbaa !43
  store ptr %i.bi, ptr %i.b, align 8, !tbaa !41
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.be ; 2 uses
  store ptr %i.bj, ptr %i.c, align 8, !tbaa !42
  br label %_ZNSt6vectorIhSaIhEE9push_backEOh.exit.2

_ZNSt6vectorIhSaIhEE9push_backEOh.exit.2:         ; preds = %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.2, %bb.k
  %i.bk = phi ptr [ %i.bj, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.2 ], [ %.pre11, %bb.k ] ; 2 uses
  %i.bl = phi ptr [ %i.bi, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.2 ], [ %i.av, %bb.k ] ; 2 uses
  %i.bm = lshr i32 %i.a, 24
  %i.bn = trunc nuw i32 %i.bm to i8               ; 2 uses
  %.not.i.i.3 = icmp eq ptr %i.bl, %i.bk
  br i1 %.not.i.i.3, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIhSaIhEE9push_backEOh.exit.2
  store i8 %i.bn, ptr %i.bl, align 1, !tbaa !28
  %i.bo = load ptr, ptr %i.b, align 8, !tbaa !41
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 1
  store ptr %i.bp, ptr %i.b, align 8, !tbaa !41
  br label %_ZNSt6vectorIhSaIhEE9push_backEOh.exit.3

bb.p:                                             ; preds = %_ZNSt6vectorIhSaIhEE9push_backEOh.exit.2
  %i.bq = load ptr, ptr %2, align 8, !tbaa !43    ; 4 uses
  %i.br = ptrtoint ptr %i.bk to i64
  %i.bs = ptrtoint ptr %i.bq to i64
  %i.bt = sub i64 %i.br, %i.bs                    ; 8 uses
  %i.bu = icmp eq i64 %i.bt, 9223372036854775807
  br i1 %i.bu, label %bb.d, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.3

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.3: ; preds = %bb.p
  %.sroa.speculated.i.i.i.i.3 = tail call i64 @llvm.umax.i64(i64 %i.bt, i64 1)
  %i.bv = add i64 %.sroa.speculated.i.i.i.i.3, %i.bt ; 2 uses
  %i.bw = icmp ult i64 %i.bv, %i.bt
  %i.bx = tail call i64 @llvm.umin.i64(i64 %i.bv, i64 9223372036854775807)
  %i.by = select i1 %i.bw, i64 9223372036854775807, i64 %i.bx ; 3 uses
  %.not.i.i.i.i.3 = icmp ne i64 %i.by, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.3)
  %i.bz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.by) #21
          to label %.noexc6.3 unwind label %.loopexit ; 4 uses

.noexc6.3:                                        ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.3
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.bt ; 2 uses
  store i8 %i.bn, ptr %i.ca, align 1, !tbaa !28
  %i.cb = icmp sgt i64 %i.bt, 0
  br i1 %i.cb, label %bb.q, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.3

bb.q:                                             ; preds = %.noexc6.3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bz, ptr align 1 %i.bq, i64 %i.bt, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.3

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.3: ; preds = %bb.q, %.noexc6.3
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 1
  %.not.i17.i.i.i.3 = icmp eq ptr %i.bq, null
  br i1 %.not.i17.i.i.i.3, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.3, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.3
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bq, i64 noundef %i.bt) #22
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.3

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.3: ; preds = %bb.r, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.3
  store ptr %i.bz, ptr %2, align 8, !tbaa !43
  store ptr %i.cc, ptr %i.b, align 8, !tbaa !41
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.by
  store ptr %i.cd, ptr %i.c, align 8, !tbaa !42
  br label %_ZNSt6vectorIhSaIhEE9push_backEOh.exit.3

_ZNSt6vectorIhSaIhEE9push_backEOh.exit.3:         ; preds = %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.3, %bb.o
  ret void

.loopexit:                                        ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.3, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.2, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.1, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.s

.loopexit.split-lp:                               ; preds = %bb.d
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.s

bb.s:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.ce = extractvalue { ptr, i32 } %lpad.phi, 0
  tail call void @__clang_call_terminate(ptr %i.ce) #20
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK8WasmEdge6Loader10Serializer11serializeFNIdmEENSt9enable_ifIXaaeqstT_stT0_sr3stdE13is_integral_vIS5_EEvE4typeES4_RSt6vectorIhSaIhEE(ptr noundef nonnull align 8 dereferenceable(8) %0, double noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = bitcast double %1 to i64
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %.pre.a = load ptr, ptr %i.b, align 8, !tbaa !41
  br label %bb.c

bb.b:                                             ; preds = %_ZNSt6vectorIhSaIhEE9push_backEOh.exit
  ret void

bb.c:                                             ; preds = %bb.a, %_ZNSt6vectorIhSaIhEE9push_backEOh.exit
  %i.d = phi ptr [ %.pre.a, %bb.a ], [ %i.v, %_ZNSt6vectorIhSaIhEE9push_backEOh.exit ] ; 3 uses
  %.09 = phi i32 [ 0, %bb.a ], [ %i.x, %_ZNSt6vectorIhSaIhEE9push_backEOh.exit ]
  %.058 = phi i64 [ %i.a, %bb.a ], [ %i.w, %_ZNSt6vectorIhSaIhEE9push_backEOh.exit ] ; 2 uses
  %i.e = trunc i64 %.058 to i8                    ; 2 uses
  %3 = load ptr, ptr %i.c, align 8, !tbaa !42
  %.not.i.i = icmp eq ptr %i.d, %3
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i8 %i.e, ptr %i.d, align 1, !tbaa !28
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !41
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 1 ; 2 uses
  store ptr %i.g, ptr %i.b, align 8, !tbaa !41
  br label %_ZNSt6vectorIhSaIhEE9push_backEOh.exit

bb.e:                                             ; preds = %bb.c
  %i.h = load ptr, ptr %2, align 8, !tbaa !43     ; 4 uses
  %i.i = ptrtoint ptr %i.d to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j                       ; 8 uses
  %i.l = icmp eq i64 %i.k, 9223372036854775807
  br i1 %i.l, label %bb.f, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.301) #23
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.f
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.e
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.k, i64 1)
  %i.m = add i64 %.sroa.speculated.i.i.i.i, %i.k  ; 2 uses
  %i.n = icmp ult i64 %i.m, %i.k
  %i.o = tail call i64 @llvm.umin.i64(i64 %i.m, i64 9223372036854775807)
  %i.p = select i1 %i.n, i64 9223372036854775807, i64 %i.o ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.p, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.q = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.p) #21
          to label %.noexc6 unwind label %.loopexit ; 4 uses

.noexc6:                                          ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.k ; 2 uses
  store i8 %i.e, ptr %i.r, align 1, !tbaa !28
  %i.s = icmp sgt i64 %i.k, 0
  br i1 %i.s, label %bb.g, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i

bb.g:                                             ; preds = %.noexc6
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.q, ptr align 1 %i.h, i64 %i.k, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.g, %.noexc6
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 1 ; 2 uses
  %.not.i17.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.k) #22
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i: ; preds = %bb.h, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i
  store ptr %i.q, ptr %2, align 8, !tbaa !43
  store ptr %i.t, ptr %i.b, align 8, !tbaa !41
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.p
  store ptr %i.u, ptr %i.c, align 8, !tbaa !42
  br label %_ZNSt6vectorIhSaIhEE9push_backEOh.exit

_ZNSt6vectorIhSaIhEE9push_backEOh.exit:           ; preds = %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i, %bb.d
  %i.v = phi ptr [ %i.t, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i ], [ %i.g, %bb.d ]
  %i.w = lshr i64 %.058, 8
  %i.x = add nuw nsw i32 %.09, 1                  ; 2 uses
  %exitcond.not = icmp eq i32 %i.x, 8
  br i1 %exitcond.not, label %bb.b, label %bb.c, !llvm.loop !270

.loopexit:                                        ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.i

.loopexit.split-lp:                               ; preds = %bb.f
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.i

bb.i:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.y = extractvalue { ptr, i32 } %lpad.phi, 0
  tail call void @__clang_call_terminate(ptr %i.y) #20
  unreachable
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #18

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold nofree noreturn }
attributes #5 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #19 = { nounwind }
attributes #20 = { noreturn nounwind }
attributes #21 = { builtin allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) }
attributes #22 = { builtin nounwind }
attributes #23 = { noreturn }
attributes #24 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!7, !8, !9}
!llvm.ident = !{!10}
!llvm.errno.tbaa = !{!15}

!0 = distinct !{!0, !45}
!1 = distinct !{!1, !45}
!2 = distinct !{!2, !45}
!3 = distinct !{!3, !45}
!4 = distinct !{null, null, null}
!5 = distinct !{null, null, null}
!6 = distinct !{null, null, null}
!7 = !{i32 1, !"long-double-type", !"x86_fp80"}
!8 = !{i32 8, !"PIC Level", i32 2}
!9 = !{i32 7, !"uwtable", i32 2}
!10 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!11 = !{!"Simple C++ TBAA"}
!12 = !{!"omnipotent char", !11, i64 0}
!13 = !{!"int", !12, i64 0}
!14 = !{!"__libc_errno", !13, i64 0}
!15 = !{!14, !13, i64 0}
!16 = !{!"any pointer", !12, i64 0}
!17 = !{!"p1 _ZTSN8WasmEdge6Loader10SerializerE", !16, i64 0}
!18 = !{!"p1 _ZTSN8WasmEdge3AST11InstructionE", !16, i64 0}
!19 = !{!"p1 _ZTSSt6vectorIhSaIhEE", !16, i64 0}
!20 = !{!"_ZTSZNK8WasmEdge6Loader10Serializer20serializeInstructionERKNS_3AST11InstructionERSt6vectorIhSaIhEEE3$_0", !17, i64 0, !18, i64 8, !19, i64 16}
!21 = !{!20, !17, i64 0}
!22 = !{!"p1 _ZTSN8WasmEdge9ConfigureE", !16, i64 0}
!23 = !{!"_ZTSN8WasmEdge6Loader10SerializerE", !22, i64 0}
!24 = !{!23, !22, i64 0}
!25 = !{}
!26 = !{i64 8}
!27 = !{!"bool", !12, i64 0}
!28 = !{!12, !12, i64 0}
!29 = !{!"_ZTSN8WasmEdge8ProposalE", !12, i64 0}
!30 = !{!"_ZTSN8WasmEdge7ErrInfo12InfoProposalE", !29, i64 0}
!31 = !{!30, !29, i64 0}
!32 = !{!"_ZTSN8WasmEdge11ASTNodeAttrE", !12, i64 0}
!33 = !{!"_ZTSN8WasmEdge7ErrInfo7InfoASTE", !32, i64 0}
!34 = !{!33, !32, i64 0}
!35 = !{!"_ZTSN5cxx206detail21expected_storage_baseIvN8WasmEdge7ErrCodeELb0ELb1EEE", !27, i64 0, !12, i64 4}
!36 = !{!35, !27, i64 0}
!37 = !{i8 0, i8 2}
!38 = !{!13, !13, i64 0}
!39 = !{!"p1 omnipotent char", !16, i64 0}
!40 = !{!"_ZTSNSt12_Vector_baseIhSaIhEE17_Vector_impl_dataE", !39, i64 0, !39, i64 8, !39, i64 16}
!41 = !{!40, !39, i64 8}
!42 = !{!40, !39, i64 16}
!43 = !{!40, !39, i64 0}
!44 = !{!39, !39, i64 0}
!45 = !{!"llvm.loop.mustprogress"}
!46 = !{!"long", !12, i64 0}
!47 = !{!"_ZTSSt12_Base_bitsetILm1EE", !46, i64 0}
!48 = !{!47, !46, i64 0}
!49 = !{!"_ZTSN3fmt3v116detail6bufferIcEE", !39, i64 0, !46, i64 8, !46, i64 16, !16, i64 24}
!50 = !{!49, !16, i64 24}
!51 = !{!49, !39, i64 0}
!52 = !{!49, !46, i64 16}
!53 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !39, i64 0}
!54 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !53, i64 0, !46, i64 8, !12, i64 16}
!55 = !{!54, !39, i64 0}
!56 = !{!54, !46, i64 8}
!57 = !{!49, !46, i64 8}
!58 = !{!"branch_weights", !"expected", i32 1430940, i32 2146052708}
!59 = !{!"_ZTSN3fmt3v1117presentation_typeE", !12, i64 0}
!60 = !{!"_ZTSN3fmt3v115align4typeE", !12, i64 0}
!61 = !{!"_ZTSN3fmt3v114sign4typeE", !12, i64 0}
!62 = !{!"_ZTSN3fmt3v116detail6fill_tE", !12, i64 0, !12, i64 4}
!63 = !{!"_ZTSN3fmt3v1112format_specsE", !13, i64 0, !13, i64 4, !59, i64 8, !60, i64 9, !61, i64 9, !27, i64 9, !27, i64 10, !27, i64 10, !62, i64 11}
!64 = !{!63, !13, i64 4}
!65 = !{!62, !12, i64 4}
!66 = !{!"_ZTSN3fmt3v1117basic_string_viewIcEE", !39, i64 0, !46, i64 8}
!67 = !{!66, !39, i64 0}
!68 = !{!66, !46, i64 8}
!69 = !{!"_ZTSN8WasmEdge9WasmPhaseE", !12, i64 0}
!70 = !{!69, !69, i64 0}
!71 = !{!63, !59, i64 8}
!72 = !{!"p1 _ZTSN3fmt3v1126basic_format_parse_contextIcEE", !16, i64 0}
!73 = !{!"p1 _ZTSN3fmt3v116detail7arg_refIcEE", !16, i64 0}
!74 = !{!"_ZTSN3fmt3v1126basic_format_parse_contextIcEE", !66, i64 0, !13, i64 16}
!75 = !{!74, !13, i64 16}
!76 = !{!"_ZTSN3fmt3v116detail11arg_id_kindE", !12, i64 0}
!77 = !{!76, !76, i64 0}
!78 = !{!"long long", !12, i64 0}
!79 = !{!"_ZTSN3fmt3v1117basic_format_argsINS0_7contextEEE", !78, i64 0, !12, i64 8}
!80 = !{!79, !78, i64 0}
!81 = !{!"_ZTSN3fmt3v116detail5valueINS0_7contextEEE", !12, i64 0}
!82 = !{!"_ZTSN3fmt3v116detail4typeE", !12, i64 0}
!83 = !{!"_ZTSN3fmt3v1116basic_format_argINS0_7contextEEE", !81, i64 0, !82, i64 16}
!84 = !{!83, !82, i64 16}
!85 = !{i64 0, i64 16, !28}
!86 = !{!82, !82, i64 0}
!87 = !{i64 0, i64 16, !28, i64 16, i64 4, !86}
!88 = !{!46, !46, i64 0}
!89 = !{!"p1 long", !16, i64 0}
!90 = !{!89, !89, i64 0}
!91 = !{!"_ZTSN3fmt3v116detail18find_escape_resultIcEE", !39, i64 0, !39, i64 8, !13, i64 16}
!92 = !{!91, !39, i64 0}
!93 = !{!91, !39, i64 8}
!94 = !{!91, !13, i64 16}
!95 = !{!63, !13, i64 0}
!96 = !{!"llvm.loop.isvectorized", i32 1}
!97 = !{!"llvm.loop.unroll.runtime.disable"}
!98 = !{!"branch_weights", i32 8, i32 24}
!99 = !{!"llvm.loop.unroll.disable"}
!100 = !{!"_ZTSZN3fmt3v116detail5writeIcNS0_14basic_appenderIcEEEET0_S5_NS0_17basic_string_viewIT_EERKNS0_12format_specsEEUlS4_E_", !27, i64 0, !66, i64 8, !39, i64 24, !46, i64 32}
!101 = !{!100, !27, i64 0}
!102 = !{!100, !39, i64 24}
!103 = !{!100, !46, i64 32}
!104 = !{!"branch_weights", i32 4, i32 28}
!105 = distinct !{!105, i1 false, !"_ZNK8WasmEdge6Loader10Serializer15logNeedProposalENS_7ErrCodeENS_8ProposalENS_11ASTNodeAttrE"}
!106 = distinct !{!106, !105, !"_ZNK8WasmEdge6Loader10Serializer15logNeedProposalENS_7ErrCodeENS_8ProposalENS_11ASTNodeAttrE: argument 0"}
!107 = distinct !{!107, i1 false, !"_ZN8WasmEdge8UnexpectERKNS_7ErrCodeE"}
!108 = distinct !{!108, !107, !"_ZN8WasmEdge8UnexpectERKNS_7ErrCodeE: argument 0"}
!109 = distinct !{!109, !45}
!110 = !{!18, !18, i64 0}
!111 = !{!19, !19, i64 0}
!112 = !{!"_ZTSN8WasmEdge6OpCodeE", !12, i64 0}
!113 = !{!"_ZTSN8WasmEdge3AST11InstructionUt_E", !12, i64 0, !27, i64 1, !27, i64 1, !27, i64 1, !27, i64 1}
!114 = !{!"_ZTSN8WasmEdge3AST11InstructionE", !12, i64 0, !13, i64 16, !112, i64 20, !113, i64 24}
!115 = !{!114, !112, i64 20}
!116 = !{!106}
!117 = !{!108, !106}
!118 = !{!"p1 _ZTSN8WasmEdge3AST11Instruction15CatchDescriptorE", !16, i64 0}
!119 = !{!"_ZTSNSt12_Vector_baseIN8WasmEdge3AST11Instruction15CatchDescriptorESaIS3_EE17_Vector_impl_dataE", !118, i64 0, !118, i64 8, !118, i64 16}
!120 = !{!119, !118, i64 8}
!121 = !{!119, !118, i64 0}
!122 = !{!118, !118, i64 0}
!123 = !{!"_ZTSN8WasmEdge3AST11Instruction14JumpDescriptorE", !13, i64 0, !13, i64 4, !13, i64 8, !13, i64 12}
!124 = !{!123, !13, i64 0}
!125 = !{!"_ZTSN8WasmEdge7ValTypeE", !12, i64 0}
!126 = !{!"_ZTSN8WasmEdge3AST11Instruction16BrCastDescriptorE", !123, i64 0, !125, i64 16, !125, i64 24}
!127 = !{!126, !13, i64 0}
!128 = !{!"__int128", !12, i64 0}
!129 = !{!128, !128, i64 0}
!130 = !{!114, !12, i64 24}
!131 = distinct !{!131, i1 false, !"_ZN8WasmEdge8UnexpectERKNS_7ErrCodeE"}
end_hunk_1
