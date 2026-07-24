inline.NumInlined: 14590
inline.NumDeleted: 3684
loop-unroll.NumCompletelyUnrolled: 30
loop-unroll.NumRuntimeUnrolled: 32
loop-unroll.NumUnrolled: 62
begin_hunk_0_@_ZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_111readColumnsEPNS0_15ByteInputStreamERKSt6vectorISt10shared_ptrIKNS0_4TypeEESaISB_EEiPKmiPNS0_6memory10MemoryPoolERKNS2_17PrestoVectorSerde13PrestoOptionsERS7_IS8_INS0_10BaseVectorEESaISQ_EE:bb.a
  %i.ajf = load ptr, ptr %i.ew, align 8, !tbaa !161
  %i.ajg = ptrtoint ptr %i.ajf to i64
  %i.ajh = ptrtoint ptr %i.aje to i64
  %i.aji = sub i64 %i.ajg, %i.ajh
  call void @_ZdlPvm(ptr noundef nonnull %i.aje, i64 noundef %i.aji) #40
  br label %_ZNSt6vectorISt10shared_ptrIN8facebook5velox10BaseVectorEESaIS4_EED2Ev.exit277

_ZNSt6vectorISt10shared_ptrIN8facebook5velox10BaseVectorEESaIS4_EED2Ev.exit277: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN8facebook5velox10BaseVectorEES4_EvT_S6_RSaIT0_E.exit.i275, %bb.iq
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #22
  %i.ajj = load ptr, ptr %25, align 8, !tbaa !35  ; 3 uses
  %i.ajk = load ptr, ptr %i.gc, align 8, !tbaa !32 ; 2 uses
  %.not4.i.i.i250 = icmp eq ptr %i.ajj, %i.ajk
  br i1 %.not4.i.i.i250, label %_ZSt8_DestroyIPSt10shared_ptrIKN8facebook5velox4TypeEES5_EvT_S7_RSaIT0_E.exit.i261, label %.lr.ph.i.i.i251

.lr.ph.i.i.i251:                                  ; preds = %_ZNSt6vectorISt10shared_ptrIN8facebook5velox10BaseVectorEESaIS4_EED2Ev.exit277, %_ZSt8_DestroyISt10shared_ptrIKN8facebook5velox4TypeEEEvPT_.exit.i.i.i257
  %.05.i.i.i252 = phi ptr [ %i.akc, %_ZSt8_DestroyISt10shared_ptrIKN8facebook5velox4TypeEEEvPT_.exit.i.i.i257 ], [ %i.ajj, %_ZNSt6vectorISt10shared_ptrIN8facebook5velox10BaseVectorEESaIS4_EED2Ev.exit277 ] ; 2 uses
  %i.ajl = getelementptr inbounds nuw i8, ptr %.05.i.i.i252, i64 8
  %i.ajm = load ptr, ptr %i.ajl, align 8, !tbaa !89 ; 8 uses
  %.not.i.i.i.i.i.i.i253 = icmp eq ptr %i.ajm, null
  br i1 %.not.i.i.i.i.i.i.i253, label %_ZSt8_DestroyISt10shared_ptrIKN8facebook5velox4TypeEEEvPT_.exit.i.i.i257, label %bb.ir

bb.ir:                                            ; preds = %.lr.ph.i.i.i251
  %i.ajn = getelementptr inbounds nuw i8, ptr %i.ajm, i64 8 ; 4 uses
  %i.ajo = load atomic i64, ptr %i.ajn acquire, align 8 ; 2 uses
  %i.ajp = icmp eq i64 %i.ajo, 4294967297
  %i.ajq = trunc i64 %i.ajo to i32                ; 2 uses
  br i1 %i.ajp, label %bb.is, label %bb.it

bb.is:                                            ; preds = %bb.ir
  store i32 0, ptr %i.ajn, align 8, !tbaa !91
  %i.ajr = getelementptr inbounds nuw i8, ptr %i.ajm, i64 12
  store i32 0, ptr %i.ajr, align 4, !tbaa !93
  %i.ajs = load ptr, ptr %i.ajm, align 8, !tbaa !17
  %i.ajt = getelementptr inbounds nuw i8, ptr %i.ajs, i64 16
  %i.aju = load ptr, ptr %i.ajt, align 8
  call void %i.aju(ptr noundef nonnull align 8 dereferenceable(16) %i.ajm) #22, !inline_history !250
  %i.ajv = load ptr, ptr %i.ajm, align 8, !tbaa !17
  %i.ajw = getelementptr inbounds nuw i8, ptr %i.ajv, i64 24
  %i.ajx = load ptr, ptr %i.ajw, align 8
  call void %i.ajx(ptr noundef nonnull align 8 dereferenceable(16) %i.ajm) #22, !inline_history !250
  br label %_ZSt8_DestroyISt10shared_ptrIKN8facebook5velox4TypeEEEvPT_.exit.i.i.i257

bb.it:                                            ; preds = %bb.ir
  %i.ajy = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i.i.i.i.i254 = icmp eq i8 %i.ajy, 0
  br i1 %.not.i.i.i.i.i.i.i.i254, label %bb.iv, label %bb.iu

bb.iu:                                            ; preds = %bb.it
  %i.ajz = add nsw i32 %i.ajq, -1
  store i32 %i.ajz, ptr %i.ajn, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i255

bb.iv:                                            ; preds = %bb.it
  %i.aka = atomicrmw volatile add ptr %i.ajn, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i255

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i255: ; preds = %bb.iv, %bb.iu
  %.0.i.i.i.i.i.i.i.i.i256 = phi i32 [ %i.ajq, %bb.iu ], [ %i.aka, %bb.iv ]
  %i.akb = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i256, 1
  br i1 %i.akb, label %bb.iw, label %_ZSt8_DestroyISt10shared_ptrIKN8facebook5velox4TypeEEEvPT_.exit.i.i.i257, !prof !36

bb.iw:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i255
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ajm) #22
  br label %_ZSt8_DestroyISt10shared_ptrIKN8facebook5velox4TypeEEEvPT_.exit.i.i.i257

_ZSt8_DestroyISt10shared_ptrIKN8facebook5velox4TypeEEEvPT_.exit.i.i.i257: ; preds = %bb.iw, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i255, %bb.is, %.lr.ph.i.i.i251
  %i.akc = getelementptr inbounds nuw i8, ptr %.05.i.i.i252, i64 16 ; 2 uses
  %.not.i.i.i258 = icmp eq ptr %i.akc, %i.ajk
  br i1 %.not.i.i.i258, label %_ZSt8_DestroyIPSt10shared_ptrIKN8facebook5velox4TypeEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i259, label %.lr.ph.i.i.i251, !llvm.loop !97

_ZSt8_DestroyIPSt10shared_ptrIKN8facebook5velox4TypeEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i259: ; preds = %_ZSt8_DestroyISt10shared_ptrIKN8facebook5velox4TypeEEEvPT_.exit.i.i.i257
  %.pr.i260 = load ptr, ptr %25, align 8, !tbaa !35
  br label %_ZSt8_DestroyIPSt10shared_ptrIKN8facebook5velox4TypeEES5_EvT_S7_RSaIT0_E.exit.i261

_ZSt8_DestroyIPSt10shared_ptrIKN8facebook5velox4TypeEES5_EvT_S7_RSaIT0_E.exit.i261: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIKN8facebook5velox4TypeEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i259, %_ZNSt6vectorISt10shared_ptrIN8facebook5velox10BaseVectorEESaIS4_EED2Ev.exit277
  %i.akd = phi ptr [ %.pr.i260, %_ZSt8_DestroyIPSt10shared_ptrIKN8facebook5velox4TypeEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i259 ], [ %i.ajj, %_ZNSt6vectorISt10shared_ptrIN8facebook5velox10BaseVectorEESaIS4_EED2Ev.exit277 ] ; 3 uses
  %.not.i.i1.i262 = icmp eq ptr %i.akd, null
  br i1 %.not.i.i1.i262, label %_ZNSt6vectorISt10shared_ptrIKN8facebook5velox4TypeEESaIS5_EED2Ev.exit263, label %bb.ix

bb.ix:                                            ; preds = %_ZSt8_DestroyIPSt10shared_ptrIKN8facebook5velox4TypeEES5_EvT_S7_RSaIT0_E.exit.i261
  %i.ake = load ptr, ptr %i.gd, align 8, !tbaa !90
  %i.akf = ptrtoint ptr %i.ake to i64
  %i.akg = ptrtoint ptr %i.akd to i64
  %i.akh = sub i64 %i.akf, %i.akg
  call void @_ZdlPvm(ptr noundef nonnull %i.akd, i64 noundef %i.akh) #40
  br label %_ZNSt6vectorISt10shared_ptrIKN8facebook5velox4TypeEESaIS5_EED2Ev.exit263

_ZNSt6vectorISt10shared_ptrIKN8facebook5velox4TypeEESaIS5_EED2Ev.exit263: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIKN8facebook5velox4TypeEES5_EvT_S7_RSaIT0_E.exit.i261, %bb.ix
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %33)
  call void @llvm.lifetime.end.p0(ptr nonnull %34)
  call void @llvm.lifetime.end.p0(ptr nonnull %35)
  br label %bb.mg

bb.iy:                                            ; preds = %bb.aq, %bb.ap, %bb.em
  %i.aki = invoke { i64, ptr } @_ZN8facebook5velox10serializer6presto6detail18typeToEncodingNameERKSt10shared_ptrIKNS0_4TypeEE(ptr noundef nonnull align 8 dereferenceable(16) %i.jg)
          to label %bb.iz unwind label %bb.lh     ; 2 uses

bb.iz:                                            ; preds = %bb.iy
  %i.akj = extractvalue { i64, ptr } %i.aki, 0    ; 5 uses
  %i.akk = extractvalue { i64, ptr } %i.aki, 1
  %i.akl = load ptr, ptr %51, align 8, !tbaa !44  ; 7 uses
  %i.akm = load i64, ptr %i.eq, align 8, !tbaa !87 ; 4 uses
  %i.akn = icmp eq i64 %i.akj, %i.akm
  br i1 %i.akn, label %bb.ja, label %bb.jb

bb.ja:                                            ; preds = %bb.iz
  %i.ako = icmp eq i64 %i.akj, 0
  br i1 %i.ako, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit145, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i:   ; preds = %bb.ja
  %bcmp.i143 = call i32 @bcmp(ptr %i.akk, ptr %i.akl, i64 %i.akj)
  %i.akp = icmp ne i32 %bcmp.i143, 0
  %i.akq = icmp eq i64 %i.akj, 10
  %or.cond482 = and i1 %i.akq, %i.akp
  br i1 %or.cond482, label %bb.jc, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit145

bb.jb:                                            ; preds = %bb.iz
  %.old = icmp eq i64 %i.akm, 10
  br i1 %.old, label %bb.jc, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit145

bb.jc:                                            ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i, %bb.jb
  %i.akr = load i64, ptr %i.akl, align 1
  %i.aks = xor i64 5931875536641218882, %i.akr
  %i.akt = getelementptr i8, ptr %i.akl, i64 8
  %i.aku = load i16, ptr %i.akt, align 1
  %i.akv = zext i16 %i.aku to i64
  %i.akw = xor i64 22849, %i.akv
  %i.akx = or i64 %i.aks, %i.akw
  %i.aky = icmp ne i64 %i.akx, 0
  %i.akz = zext i1 %i.aky to i32
  %i.ala = icmp eq i32 %i.akz, 0
  br i1 %i.ala, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit151, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit145

_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit151: ; preds = %bb.jc
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #22
  invoke void @_ZN8facebook5velox7UNKNOWNEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.0") align 8 %21)
          to label %.noexc155 unwind label %bb.lh

.noexc155:                                        ; preds = %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit151
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !251)
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #22, !noalias !251
  invoke void @_ZN8facebook5velox10BaseVector14createInternalERKSt10shared_ptrIKNS0_4TypeEEiPNS0_6memory10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.3") align 8 %20, ptr noundef nonnull align 8 dereferenceable(16) %21, i32 noundef 0, ptr noundef %5)
          to label %bb.jd unwind label %bb.jh

bb.jd:                                            ; preds = %.noexc155
  call void @llvm.experimental.noalias.scope.decl(metadata !254)
  %i.alb = load ptr, ptr %20, align 8, !tbaa !157, !noalias !257 ; 3 uses
  store ptr %i.alb, ptr %22, align 8, !tbaa !157, !alias.scope !257
  %i.alc = load ptr, ptr %i.gz, align 8, !tbaa !89, !noalias !257 ; 3 uses
  store ptr %i.alc, ptr %i.gy, align 8, !tbaa !89, !alias.scope !257
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #22, !noalias !251
  invoke void @_ZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_14readINS0_12UnknownValueEEEvPNS0_15ByteInputStreamERKSt10shared_ptrIKNS0_4TypeEEiPKmiPNS0_6memory10MemoryPoolERKNS2_17PrestoVectorSerde13PrestoOptionsERS9_INS0_10BaseVectorEE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(16) %21, i32 noundef 0, ptr noundef %3, i32 noundef %4, ptr poison, ptr nonnull readnone align 8 poison, ptr noundef nonnull align 8 dereferenceable(16) %22)
          to label %bb.je unwind label %bb.ji

bb.je:                                            ; preds = %bb.jd
  %i.ald = getelementptr inbounds nuw i8, ptr %i.alb, i64 56
  %i.ale = load i32, ptr %i.ald, align 8, !tbaa !164 ; 11 uses
  %i.alf = getelementptr inbounds nuw i8, ptr %i.alb, i64 32
  %i.alg = load ptr, ptr %i.alf, align 8, !tbaa !232 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.alg, null
  br i1 %.not.i.i.i, label %_ZN8facebook5velox10BaseVector10countNullsERKN5boost13intrusive_ptrINS0_6BufferEEEi.exit.i, label %bb.jf

bb.jf:                                            ; preds = %bb.je
  %i.alh = getelementptr inbounds nuw i8, ptr %i.alg, i64 16
  %i.ali = load ptr, ptr %i.alh, align 8, !tbaa !238 ; 4 uses
  %.not.i.i.i.i.i.i.i = icmp sgt i32 %i.ale, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.jg, label %_ZN8facebook5velox4bits10countNullsEPKmjj.exit.i.i.i

bb.jg:                                            ; preds = %bb.jf
  %i.alj = and i32 %i.ale, 2147483584             ; 3 uses
  %.not3342.i.i.i.i.i.i.i = icmp eq i32 %i.alj, 0
  br i1 %.not3342.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i, label %iter.check

iter.check:                                       ; preds = %bb.jg
  %i.alk = zext nneg i32 %i.alj to i64            ; 2 uses
  %i.all = add nsw i64 %i.alk, -64                ; 3 uses
  %i.alm = lshr exact i64 %i.all, 6
  %i.aln = add nuw nsw i64 %i.alm, 1              ; 5 uses
  %min.iters.check = icmp ult i64 %i.all, 192
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check1278 = icmp ult i64 %i.all, 960
  br i1 %min.iters.check1278, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.aln, 12
  %n.vec = and i64 %i.aln, 576460752303423472     ; 4 uses
  %i.alo = shl i64 %n.vec, 6                      ; 2 uses
  %i.alp = or disjoint i64 %i.alo, 64
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.amd, %vector.body ]
  %vec.phi1279 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ame, %vector.body ]
  %vec.phi1280 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.amf, %vector.body ]
  %vec.phi1281 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.amg, %vector.body ]
  %i.alq = shl nuw nsw i64 %index, 3
  %i.alr = getelementptr inbounds nuw i8, ptr %i.ali, i64 %i.alq ; 4 uses
  %i.als = getelementptr inbounds nuw i8, ptr %i.alr, i64 32
  %i.alt = getelementptr inbounds nuw i8, ptr %i.alr, i64 64
  %i.alu = getelementptr inbounds nuw i8, ptr %i.alr, i64 96
  %wide.load = load <4 x i64>, ptr %i.alr, align 8, !tbaa !185
  %wide.load1282 = load <4 x i64>, ptr %i.als, align 8, !tbaa !185
  %wide.load1283 = load <4 x i64>, ptr %i.alt, align 8, !tbaa !185
  %wide.load1284 = load <4 x i64>, ptr %i.alu, align 8, !tbaa !185
  %i.alv = call range(i64 0, 65) <4 x i64> @llvm.ctpop.v4i64(<4 x i64> %wide.load)
  %i.alw = call range(i64 0, 65) <4 x i64> @llvm.ctpop.v4i64(<4 x i64> %wide.load1282)
  %i.alx = call range(i64 0, 65) <4 x i64> @llvm.ctpop.v4i64(<4 x i64> %wide.load1283)
  %i.aly = call range(i64 0, 65) <4 x i64> @llvm.ctpop.v4i64(<4 x i64> %wide.load1284)
  %i.alz = trunc nuw nsw <4 x i64> %i.alv to <4 x i32>
  %i.ama = trunc nuw nsw <4 x i64> %i.alw to <4 x i32>
  %i.amb = trunc nuw nsw <4 x i64> %i.alx to <4 x i32>
  %i.amc = trunc nuw nsw <4 x i64> %i.aly to <4 x i32>
  %i.amd = add <4 x i32> %vec.phi, %i.alz         ; 2 uses
  %i.ame = add <4 x i32> %vec.phi1279, %i.ama     ; 2 uses
  %i.amf = add <4 x i32> %vec.phi1280, %i.amb     ; 2 uses
  %i.amg = add <4 x i32> %vec.phi1281, %i.amc     ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.amh = icmp eq i64 %index.next, %n.vec
  br i1 %i.amh, label %middle.block, label %vector.body, !llvm.loop !258

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.ame, %i.amd
  %bin.rdx1285 = add <4 x i32> %i.amf, %bin.rdx
  %bin.rdx1286 = add <4 x i32> %i.amg, %bin.rdx1285
  %i.ami = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx1286) ; 3 uses
  %cmp.n = icmp eq i64 %i.aln, %n.vec
  br i1 %cmp.n, label %._crit_edge.i.i.i.i.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %vec.epilog.ph, !prof !261

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i32 [ %i.ami, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec1289 = and i64 %i.aln, 576460752303423484 ; 3 uses
  %i.amj = shl i64 %n.vec1289, 6                  ; 2 uses
  %i.amk = or disjoint i64 %i.amj, 64
  %i.aml = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index1290 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next1293, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi1291 = phi <4 x i32> [ %i.aml, %vec.epilog.ph ], [ %i.amq, %vec.epilog.vector.body ]
  %i.amm = shl nuw nsw i64 %index1290, 3
  %i.amn = getelementptr inbounds nuw i8, ptr %i.ali, i64 %i.amm
  %wide.load1292 = load <4 x i64>, ptr %i.amn, align 8, !tbaa !185
  %i.amo = call range(i64 0, 65) <4 x i64> @llvm.ctpop.v4i64(<4 x i64> %wide.load1292)
  %i.amp = trunc nuw nsw <4 x i64> %i.amo to <4 x i32>
  %i.amq = add <4 x i32> %vec.phi1291, %i.amp     ; 2 uses
  %index.next1293 = add nuw i64 %index1290, 4     ; 2 uses
  %i.amr = icmp eq i64 %index.next1293, %n.vec1289
  br i1 %i.amr, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !262

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.ams = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.amq) ; 2 uses
  %cmp.n1294 = icmp eq i64 %i.aln, %n.vec1289
  br i1 %cmp.n1294, label %._crit_edge.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv1.i.i.ph = phi i64 [ 0, %iter.check ], [ %i.alo, %vec.epilog.iter.check ], [ %i.amj, %vec.epilog.middle.block ]
  %indvars.iv.i.i.ph = phi i64 [ 64, %iter.check ], [ %i.alp, %vec.epilog.iter.check ], [ %i.amk, %vec.epilog.middle.block ]
  %.ph = phi i32 [ 0, %iter.check ], [ %i.ami, %vec.epilog.iter.check ], [ %i.ams, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %vec.epilog.middle.block, %bb.jg
  %.1.i.i.i.i.i.i = phi i32 [ 0, %bb.jg ], [ %i.ams, %vec.epilog.middle.block ], [ %i.ami, %middle.block ], [ %i.amz, %.lr.ph.i.i.i.i.i.i.i ] ; 2 uses
  %.not34.i.i.i.i.i.i.i = icmp eq i32 %i.ale, %i.alj
  br i1 %.not34.i.i.i.i.i.i.i, label %_ZN8facebook5velox4bits10countNullsEPKmjj.exit.i.i.i, label %.sink.split.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i
  %indvars.iv1.i.i = phi i64 [ %indvars.iv.next2.i.i, %.lr.ph.i.i.i.i.i.i.i ], [ %indvars.iv1.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph.i.i.i.i.i.i.i ], [ %indvars.iv.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %i.amt = phi i32 [ %i.amz, %.lr.ph.i.i.i.i.i.i.i ], [ %.ph, %.lr.ph.i.i.i.i.i.i.i.preheader ]
  %i.amu = lshr exact i64 %indvars.iv1.i.i, 3
  %i.amv = getelementptr inbounds nuw i8, ptr %i.ali, i64 %i.amu
  %i.amw = load i64, ptr %i.amv, align 8, !tbaa !185
  %i.amx = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.amw)
  %i.amy = trunc nuw nsw i64 %i.amx to i32
  %i.amz = add nuw nsw i32 %i.amt, %i.amy         ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 64
  %.not33.i.i.i.i.i.not.i.i = icmp samesign ult i64 %indvars.iv.i.i, %i.alk
  %indvars.iv.next2.i.i = add nuw nsw i64 %indvars.iv1.i.i, 64
  br i1 %.not33.i.i.i.i.i.not.i.i, label %.lr.ph.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i, !llvm.loop !263

.sink.split.i.i.i.i.i.i.i:                        ; preds = %._crit_edge.i.i.i.i.i.i.i
  %i.ana = lshr i32 %i.ale, 6
  %i.anb = and i32 %i.ale, 63
  %i.anc = zext nneg i32 %i.anb to i64
  %notmask.i36.i.i.i.i.i.i.i = shl nsw i64 -1, %i.anc
  %i.and = xor i64 %notmask.i36.i.i.i.i.i.i.i, -1
  %i.ane = zext nneg i32 %i.ana to i64
  %i.anf = getelementptr inbounds nuw [8 x i8], ptr %i.ali, i64 %i.ane
  %i.ang = load i64, ptr %i.anf, align 8, !tbaa !185
  %i.anh = and i64 %i.ang, %i.and
  %i.ani = call range(i64 0, 64) i64 @llvm.ctpop.i64(i64 %i.anh)
  %i.anj = trunc nuw nsw i64 %i.ani to i32
  %i.ank = add nsw i32 %.1.i.i.i.i.i.i, %i.anj
  br label %_ZN8facebook5velox4bits10countNullsEPKmjj.exit.i.i.i

_ZN8facebook5velox4bits10countNullsEPKmjj.exit.i.i.i: ; preds = %.sink.split.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i, %bb.jf
  %.3.i.i.i.i.i.i = phi i32 [ %i.ank, %.sink.split.i.i.i.i.i.i.i ], [ %.1.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i ], [ 0, %bb.jf ]
  %i.anl = sub i32 %i.ale, %.3.i.i.i.i.i.i
  br label %_ZN8facebook5velox10BaseVector10countNullsERKN5boost13intrusive_ptrINS0_6BufferEEEi.exit.i

_ZN8facebook5velox10BaseVector10countNullsERKN5boost13intrusive_ptrINS0_6BufferEEEi.exit.i: ; preds = %_ZN8facebook5velox4bits10countNullsEPKmjj.exit.i.i.i, %bb.je
  %i.anm = phi i32 [ %i.anl, %_ZN8facebook5velox4bits10countNullsEPKmjj.exit.i.i.i ], [ 0, %bb.je ]
  %.not.i152 = icmp eq i32 %i.ale, %i.anm         ; 2 uses
  br i1 %.not.i152, label %bb.jk, label %bb.kr

bb.jh:                                            ; preds = %.noexc155
  %i.ann = landingpad { ptr, i32 }
          cleanup
  br label %bb.lf

bb.ji:                                            ; preds = %bb.jd
  %i.ano = landingpad { ptr, i32 }
          cleanup
  br label %bb.le

bb.jj:                                            ; preds = %bb.ka
  %i.anp = landingpad { ptr, i32 }
          cleanup
  br label %bb.le

bb.jk:                                            ; preds = %_ZN8facebook5velox10BaseVector10countNullsERKN5boost13intrusive_ptrINS0_6BufferEEEi.exit.i
  br i1 %i.fe, label %bb.jl, label %bb.ka

bb.jl:                                            ; preds = %bb.jk
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #22
  invoke void @_ZN8facebook5velox10BaseVector18createNullConstantERKSt10shared_ptrIKNS0_4TypeEEiPNS0_6memory10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.3") align 8 %23, ptr noundef nonnull align 8 dereferenceable(16) %i.jg, i32 noundef %i.ale, ptr noundef %5)
          to label %bb.jm unwind label %bb.jz

bb.jm:                                            ; preds = %bb.jl
  %i.anq = getelementptr inbounds nuw i8, ptr %i.ji, i64 8
  %i.anr = load <2 x ptr>, ptr %23, align 16, !tbaa !84
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %23, i8 0, i64 16, i1 false)
  %i.ans = load ptr, ptr %i.anq, align 8, !tbaa !89 ; 8 uses
  store <2 x ptr> %i.anr, ptr %i.ji, align 8, !tbaa !84
  %.not.i.i.i.i.i = icmp eq ptr %i.ans, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit.i, label %bb.jn

bb.jn:                                            ; preds = %bb.jm
  %i.ant = getelementptr inbounds nuw i8, ptr %i.ans, i64 8 ; 4 uses
  %i.anu = load atomic i64, ptr %i.ant acquire, align 8 ; 2 uses
  %i.anv = icmp eq i64 %i.anu, 4294967297
  %i.anw = trunc i64 %i.anu to i32                ; 2 uses
  br i1 %i.anv, label %bb.jo, label %bb.jp

bb.jo:                                            ; preds = %bb.jn
  store i32 0, ptr %i.ant, align 8, !tbaa !91
  %i.anx = getelementptr inbounds nuw i8, ptr %i.ans, i64 12
  store i32 0, ptr %i.anx, align 4, !tbaa !93
  %i.any = load ptr, ptr %i.ans, align 8, !tbaa !17
  %i.anz = getelementptr inbounds nuw i8, ptr %i.any, i64 16
  %i.aoa = load ptr, ptr %i.anz, align 8
  call void %i.aoa(ptr noundef nonnull align 8 dereferenceable(16) %i.ans) #22, !inline_history !264
  %i.aob = load ptr, ptr %i.ans, align 8, !tbaa !17
  %i.aoc = getelementptr inbounds nuw i8, ptr %i.aob, i64 24
  %i.aod = load ptr, ptr %i.aoc, align 8
  call void %i.aod(ptr noundef nonnull align 8 dereferenceable(16) %i.ans) #22, !inline_history !264
  br label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit.i

bb.jp:                                            ; preds = %bb.jn
  %i.aoe = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i.i.i = icmp eq i8 %i.aoe, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.jr, label %bb.jq

bb.jq:                                            ; preds = %bb.jp
  %i.aof = add nsw i32 %i.anw, -1
  store i32 %i.aof, ptr %i.ant, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.jr:                                            ; preds = %bb.jp
  %i.aog = atomicrmw volatile add ptr %i.ant, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.jr, %bb.jq
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.anw, %bb.jq ], [ %i.aog, %bb.jr ]
  %i.aoh = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.aoh, label %bb.js, label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit.i, !prof !36

bb.js:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ans) #22
  br label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit.i

_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit.i: ; preds = %bb.js, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.jo, %bb.jm
  %i.aoi = load ptr, ptr %i.hk, align 8, !tbaa !89 ; 8 uses
  %.not.i.i40.i = icmp eq ptr %i.aoi, null
  br i1 %.not.i.i40.i, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.jt

bb.jt:                                            ; preds = %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit.i
  %i.aoj = getelementptr inbounds nuw i8, ptr %i.aoi, i64 8 ; 4 uses
  %i.aok = load atomic i64, ptr %i.aoj acquire, align 8 ; 2 uses
  %i.aol = icmp eq i64 %i.aok, 4294967297
  %i.aom = trunc i64 %i.aok to i32                ; 2 uses
  br i1 %i.aol, label %bb.ju, label %bb.jv

bb.ju:                                            ; preds = %bb.jt
  store i32 0, ptr %i.aoj, align 8, !tbaa !91
  %i.aon = getelementptr inbounds nuw i8, ptr %i.aoi, i64 12
  store i32 0, ptr %i.aon, align 4, !tbaa !93
  %i.aoo = load ptr, ptr %i.aoi, align 8, !tbaa !17
  %i.aop = getelementptr inbounds nuw i8, ptr %i.aoo, i64 16
  %i.aoq = load ptr, ptr %i.aop, align 8
  call void %i.aoq(ptr noundef nonnull align 8 dereferenceable(16) %i.aoi) #22, !inline_history !265
  %i.aor = load ptr, ptr %i.aoi, align 8, !tbaa !17
  %i.aos = getelementptr inbounds nuw i8, ptr %i.aor, i64 24
  %i.aot = load ptr, ptr %i.aos, align 8
  call void %i.aot(ptr noundef nonnull align 8 dereferenceable(16) %i.aoi) #22, !inline_history !265
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.jv:                                            ; preds = %bb.jt
  %i.aou = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i = icmp eq i8 %i.aou, 0
  br i1 %.not.i.i.i.i, label %bb.jx, label %bb.jw

bb.jw:                                            ; preds = %bb.jv
  %i.aov = add nsw i32 %i.aom, -1
  store i32 %i.aov, ptr %i.aoj, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.jx:                                            ; preds = %bb.jv
  %i.aow = atomicrmw volatile add ptr %i.aoj, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.jx, %bb.jw
  %.0.i.i.i.i.i = phi i32 [ %i.aom, %bb.jw ], [ %i.aow, %bb.jx ]
  %i.aox = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.aox, label %bb.jy, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !36

bb.jy:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aoi) #22
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.jy, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.ju, %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #22
  %.pre64.i = load ptr, ptr %i.gy, align 8, !tbaa !89
  br label %bb.kr

bb.jz:                                            ; preds = %bb.jl
  %i.aoy = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #22
  br label %bb.le

end_hunk_0
begin_hunk_1_@_ZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_117checkTypeEncodingESt17basic_string_viewIcSt11char_traitsIcEERKSt10shared_ptrIKNS0_4TypeEE:bb.a
bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %0, 0
  br i1 %i.e, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i:   ; preds = %bb.b
  %bcmp.i = tail call i32 @bcmp(ptr %1, ptr %i.c, i64 %0)
  %i.f = icmp eq i32 %bcmp.i, 0
  br i1 %i.f, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit, label %bb.c

bb.c:                                             ; preds = %bb.a, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.g = load ptr, ptr %2, align 8, !tbaa !106    ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !17
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call noundef ptr %i.j(ptr noundef nonnull align 8 dereferenceable(18) %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22, !noalias !349
  store ptr %i.k, ptr %3, align 16, !tbaa !40, !noalias !349
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.c, ptr %i.l, align 16, !tbaa !40, !noalias !349
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %i.b, ptr %i.m, align 8, !tbaa !40, !noalias !349
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %1, ptr %i.n, align 16, !tbaa !40, !noalias !349
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 %0, ptr %i.o, align 8, !tbaa !40, !noalias !349
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr nonnull @.str.49, i64 83, i64 3548, ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22, !noalias !349
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_117checkTypeEncodingESt17basic_string_viewIcSt11char_traitsIcEERKSt10shared_ptrIKNS0_4TypeEEE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr nonnull @.str.49) #39
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = load ptr, ptr %4, align 8, !tbaa !44     ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.t = load i64, ptr %i.r, align 8, !tbaa !40
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  resume { ptr, i32 } %i.p

_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef i32 @_ZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_110valueCountEPNS0_15ByteInputStreamEiRNS0_7ScratchEPNS0_10raw_vectorImEE(ptr noundef %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %3) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.facebook::velox::ScratchPtr", align 8 ; 10 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !17
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i8 %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0)
  %i.e = icmp eq i8 %i.d, 0
  %i.f = icmp eq i32 %1, 0
  %or.cond = or i1 %i.f, %i.e
  br i1 %or.cond, label %bb.t, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  store ptr %2, ptr %4, align 8, !tbaa !352
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %i.g, i8 0, i64 44, i1 false)
  %i.h = sext i32 %1 to i64                       ; 2 uses
  %i.i = add nsw i64 %i.h, 63
  %i.j = lshr i64 %i.i, 6                         ; 4 uses
  %i.k = trunc i64 %i.j to i32
  %i.l = invoke noundef ptr @_ZN8facebook5velox10ScratchPtrImLi16EE3getEi(ptr noundef nonnull align 8 dereferenceable(216) %4, i32 noundef %i.k)
          to label %bb.c unwind label %bb.h       ; 17 uses

bb.c:                                             ; preds = %bb.b
  %i.m = add nsw i64 %i.h, 7                      ; 2 uses
  %i.n = lshr i64 %i.m, 3                         ; 5 uses
  %i.o = trunc i64 %i.n to i32                    ; 3 uses
  %i.p = load ptr, ptr %0, align 8, !tbaa !17
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 64
  %i.r = load ptr, ptr %i.q, align 8
  invoke void %i.r(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %i.l, i32 noundef %i.o)
          to label %_ZN8facebook5velox15ByteInputStream9readBytesImEEvPT_i.exit unwind label %bb.i, !inline_history !356

_ZN8facebook5velox15ByteInputStream9readBytesImEEvPT_i.exit: ; preds = %bb.c
  %i.s = icmp sgt i32 %i.o, 0
  br i1 %i.s, label %iter.check, label %_ZN8facebook5velox4bits11reverseBitsEPhi.exit

iter.check:                                       ; preds = %_ZN8facebook5velox15ByteInputStream9readBytesImEEvPT_i.exit
  %wide.trip.count.i = and i64 %i.n, 2147483647   ; 5 uses
  %min.iters.check = icmp samesign ult i64 %wide.trip.count.i, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check55 = icmp samesign ult i64 %wide.trip.count.i, 128
  br i1 %min.iters.check55, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.vec = and i64 %i.n, 2147483520               ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 %index ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 32 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 64 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 96 ; 2 uses
  %wide.load = load <32 x i8>, ptr %i.t, align 1, !tbaa !40
  %wide.load56 = load <32 x i8>, ptr %i.u, align 1, !tbaa !40
  %wide.load57 = load <32 x i8>, ptr %i.v, align 1, !tbaa !40
  %wide.load58 = load <32 x i8>, ptr %i.w, align 1, !tbaa !40
  %i.x = call <32 x i8> @llvm.bitreverse.v32i8(<32 x i8> %wide.load)
  %i.y = call <32 x i8> @llvm.bitreverse.v32i8(<32 x i8> %wide.load56)
  %i.z = call <32 x i8> @llvm.bitreverse.v32i8(<32 x i8> %wide.load57)
  %i.aa = call <32 x i8> @llvm.bitreverse.v32i8(<32 x i8> %wide.load58)
  store <32 x i8> %i.x, ptr %i.t, align 1, !tbaa !40
  store <32 x i8> %i.y, ptr %i.u, align 1, !tbaa !40
  store <32 x i8> %i.z, ptr %i.v, align 1, !tbaa !40
  store <32 x i8> %i.aa, ptr %i.w, align 1, !tbaa !40
  %index.next = add nuw i64 %index, 128           ; 2 uses
  %i.ab = icmp eq i64 %index.next, %n.vec
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !357

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %wide.trip.count.i, %n.vec
  br i1 %cmp.n, label %_ZN8facebook5velox4bits11reverseBitsEPhi.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %i.ac = and i64 %i.m, 960
  %min.epilog.iters.check = icmp eq i64 %i.ac, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !358

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec60 = and i64 %i.n, 2147483640             ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index61 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next63, %vec.epilog.vector.body ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.l, i64 %index61 ; 2 uses
  %wide.load62 = load <8 x i8>, ptr %i.ad, align 1, !tbaa !40
  %i.ae = call <8 x i8> @llvm.bitreverse.v8i8(<8 x i8> %wide.load62)
  store <8 x i8> %i.ae, ptr %i.ad, align 1, !tbaa !40
  %index.next63 = add nuw i64 %index61, 8         ; 2 uses
  %i.af = icmp eq i64 %index.next63, %n.vec60
  br i1 %i.af, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !359

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n64 = icmp eq i64 %wide.trip.count.i, %n.vec60
  br i1 %cmp.n64, label %_ZN8facebook5velox4bits11reverseBitsEPhi.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec60, %vec.epilog.middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.l, i64 %indvars.iv.i ; 2 uses
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !40
  %rev.i = call i8 @llvm.bitreverse.i8(i8 %i.ah)
  store i8 %rev.i, ptr %i.ag, align 1, !tbaa !40
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN8facebook5velox4bits11reverseBitsEPhi.exit, label %.lr.ph.i, !llvm.loop !360

_ZN8facebook5velox4bits11reverseBitsEPhi.exit:    ; preds = %.lr.ph.i, %middle.block, %vec.epilog.middle.block, %_ZN8facebook5velox15ByteInputStream9readBytesImEEvPT_i.exit
  %i.ai = shl i32 %i.o, 3                         ; 7 uses
  %.not27.i = icmp slt i32 %i.ai, 64
  br i1 %.not27.i, label %.preheader26.i, label %iter.check83

iter.check83:                                     ; preds = %_ZN8facebook5velox4bits11reverseBitsEPhi.exit
  %i.aj = zext nneg i32 %i.ai to i64              ; 2 uses
  %i.ak = or disjoint i64 %i.aj, 1
  %umax = call i64 @llvm.umax.i64(i64 %i.ak, i64 128)
  %i.al = add nsw i64 %umax, -65                  ; 3 uses
  %i.am = lshr i64 %i.al, 6
  %i.an = add nuw nsw i64 %i.am, 1                ; 5 uses
  %min.iters.check65 = icmp ult i64 %i.al, 192
  br i1 %min.iters.check65, label %.lr.ph.i30.preheader, label %vector.main.loop.iter.check66

vector.main.loop.iter.check66:                    ; preds = %iter.check83
  %min.iters.check67 = icmp ult i64 %i.al, 960
  br i1 %min.iters.check67, label %vec.epilog.ph87, label %vector.ph68

vector.ph68:                                      ; preds = %vector.main.loop.iter.check66
  %n.mod.vf69 = and i64 %i.an, 12
  %n.vec70 = and i64 %i.an, 576460752303423472    ; 4 uses
  %i.ao = shl i64 %n.vec70, 6                     ; 2 uses
  %i.ap = or disjoint i64 %i.ao, 64
  br label %vector.body71

vector.body71:                                    ; preds = %vector.body71, %vector.ph68
  %index72 = phi i64 [ 0, %vector.ph68 ], [ %index.next77, %vector.body71 ] ; 2 uses
  %i.aq = shl nuw nsw i64 %index72, 3
  %i.ar = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.aq ; 5 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 32 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 64 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 96 ; 2 uses
  %wide.load73 = load <4 x i64>, ptr %i.ar, align 8, !tbaa !185
  %wide.load74 = load <4 x i64>, ptr %i.as, align 8, !tbaa !185
  %wide.load75 = load <4 x i64>, ptr %i.at, align 8, !tbaa !185
  %wide.load76 = load <4 x i64>, ptr %i.au, align 8, !tbaa !185
  %i.av = xor <4 x i64> %wide.load73, splat (i64 -1)
  %i.aw = xor <4 x i64> %wide.load74, splat (i64 -1)
  %i.ax = xor <4 x i64> %wide.load75, splat (i64 -1)
  %i.ay = xor <4 x i64> %wide.load76, splat (i64 -1)
  store <4 x i64> %i.av, ptr %i.ar, align 8, !tbaa !185
  store <4 x i64> %i.aw, ptr %i.as, align 8, !tbaa !185
  store <4 x i64> %i.ax, ptr %i.at, align 8, !tbaa !185
  store <4 x i64> %i.ay, ptr %i.au, align 8, !tbaa !185
  %index.next77 = add nuw i64 %index72, 16        ; 2 uses
  %i.az = icmp eq i64 %index.next77, %n.vec70
  br i1 %i.az, label %middle.block78, label %vector.body71, !llvm.loop !361

middle.block78:                                   ; preds = %vector.body71
  %cmp.n79 = icmp eq i64 %i.an, %n.vec70
  br i1 %cmp.n79, label %.preheader26.loopexit.i, label %vec.epilog.iter.check85

vec.epilog.iter.check85:                          ; preds = %middle.block78
  %min.epilog.iters.check86 = icmp eq i64 %n.mod.vf69, 0
  br i1 %min.epilog.iters.check86, label %.lr.ph.i30.preheader, label %vec.epilog.ph87, !prof !261

vec.epilog.ph87:                                  ; preds = %vector.main.loop.iter.check66, %vec.epilog.iter.check85
  %vec.epilog.resume.val80 = phi i64 [ %n.vec70, %vec.epilog.iter.check85 ], [ 0, %vector.main.loop.iter.check66 ]
  %n.vec89 = and i64 %i.an, 576460752303423484    ; 3 uses
  %i.ba = shl i64 %n.vec89, 6                     ; 2 uses
  %i.bb = or disjoint i64 %i.ba, 64
  br label %vec.epilog.vector.body90

vec.epilog.vector.body90:                         ; preds = %vec.epilog.vector.body90, %vec.epilog.ph87
  %index91 = phi i64 [ %vec.epilog.resume.val80, %vec.epilog.ph87 ], [ %index.next93, %vec.epilog.vector.body90 ] ; 2 uses
  %i.bc = shl nuw nsw i64 %index91, 3
  %i.bd = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.bc ; 2 uses
  %wide.load92 = load <4 x i64>, ptr %i.bd, align 8, !tbaa !185
  %i.be = xor <4 x i64> %wide.load92, splat (i64 -1)
  store <4 x i64> %i.be, ptr %i.bd, align 8, !tbaa !185
  %index.next93 = add nuw i64 %index91, 4         ; 2 uses
  %i.bf = icmp eq i64 %index.next93, %n.vec89
  br i1 %i.bf, label %vec.epilog.middle.block94, label %vec.epilog.vector.body90, !llvm.loop !362

vec.epilog.middle.block94:                        ; preds = %vec.epilog.vector.body90
  %cmp.n95 = icmp eq i64 %i.an, %n.vec89
  br i1 %cmp.n95, label %.preheader26.loopexit.i, label %.lr.ph.i30.preheader

.lr.ph.i30.preheader:                             ; preds = %iter.check83, %vec.epilog.iter.check85, %vec.epilog.middle.block94
  %indvars.iv36.i.ph = phi i64 [ 0, %iter.check83 ], [ %i.ao, %vec.epilog.iter.check85 ], [ %i.ba, %vec.epilog.middle.block94 ]
  %indvars.iv.i31.ph = phi i64 [ 64, %iter.check83 ], [ %i.ap, %vec.epilog.iter.check85 ], [ %i.bb, %vec.epilog.middle.block94 ]
  br label %.lr.ph.i30

.preheader26.loopexit.i:                          ; preds = %.lr.ph.i30, %vec.epilog.middle.block94, %middle.block78
  %i.bg = and i32 %i.ai, 2147483584
  br label %.preheader26.i

.preheader26.i:                                   ; preds = %.preheader26.loopexit.i, %_ZN8facebook5velox4bits11reverseBitsEPhi.exit
  %.0.lcssa.i = phi i32 [ 0, %_ZN8facebook5velox4bits11reverseBitsEPhi.exit ], [ %i.bg, %.preheader26.loopexit.i ] ; 3 uses
  %.not2429.i.not = icmp slt i32 %.0.lcssa.i, %i.ai
  br i1 %.not2429.i.not, label %iter.check117, label %.preheader.i

iter.check117:                                    ; preds = %.preheader26.i
  %i.bh = zext nneg i32 %.0.lcssa.i to i64        ; 8 uses
  %i.bi = or disjoint i64 %i.bh, 8                ; 3 uses
  %i.bj = zext nneg i32 %i.ai to i64              ; 2 uses
  %i.bk = or disjoint i64 %i.bh, 8
  %umax98 = call i64 @llvm.umax.i64(i64 %i.bj, i64 %i.bk)
  %i.bl = xor i64 %i.bh, -1
  %i.bm = add nsw i64 %umax98, %i.bl              ; 3 uses
  %i.bn = lshr i64 %i.bm, 3
  %i.bo = add nuw nsw i64 %i.bn, 1                ; 5 uses
  %min.iters.check99 = icmp ult i64 %i.bm, 120
  br i1 %min.iters.check99, label %.lr.ph31.i.preheader, label %vector.main.loop.iter.check100

vector.main.loop.iter.check100:                   ; preds = %iter.check117
  %min.iters.check101 = icmp ult i64 %i.bm, 1016
  br i1 %min.iters.check101, label %vec.epilog.ph121, label %vector.ph102

vector.ph102:                                     ; preds = %vector.main.loop.iter.check100
  %n.mod.vf103 = and i64 %i.bo, 112
  %n.vec104 = and i64 %i.bo, 4611686018427387776  ; 4 uses
  %i.bp = shl i64 %n.vec104, 3                    ; 2 uses
  %i.bq = add i64 %i.bp, %i.bh
  %i.br = add i64 %i.bi, %i.bp                    ; 2 uses
  %i.bs = lshr exact i64 %i.bh, 3
  %5 = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.bs
  br label %vector.body105

vector.body105:                                   ; preds = %vector.body105, %vector.ph102
  %index106 = phi i64 [ 0, %vector.ph102 ], [ %index.next111, %vector.body105 ] ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %5, i64 %index106 ; 5 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 32 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 64 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 96 ; 2 uses
  %wide.load107 = load <32 x i8>, ptr %i.bt, align 1, !tbaa !40
  %wide.load108 = load <32 x i8>, ptr %i.bu, align 1, !tbaa !40
  %wide.load109 = load <32 x i8>, ptr %i.bv, align 1, !tbaa !40
  %wide.load110 = load <32 x i8>, ptr %i.bw, align 1, !tbaa !40
  %i.bx = xor <32 x i8> %wide.load107, splat (i8 -1)
  %i.by = xor <32 x i8> %wide.load108, splat (i8 -1)
  %i.bz = xor <32 x i8> %wide.load109, splat (i8 -1)
  %i.ca = xor <32 x i8> %wide.load110, splat (i8 -1)
  store <32 x i8> %i.bx, ptr %i.bt, align 1, !tbaa !40
  store <32 x i8> %i.by, ptr %i.bu, align 1, !tbaa !40
  store <32 x i8> %i.bz, ptr %i.bv, align 1, !tbaa !40
  store <32 x i8> %i.ca, ptr %i.bw, align 1, !tbaa !40
  %index.next111 = add nuw i64 %index106, 128     ; 2 uses
  %i.cb = icmp eq i64 %index.next111, %n.vec104
  br i1 %i.cb, label %middle.block112, label %vector.body105, !llvm.loop !363

middle.block112:                                  ; preds = %vector.body105
  %ind.escape = add nsw i64 %i.br, -8
  %cmp.n113 = icmp eq i64 %i.bo, %n.vec104
  br i1 %cmp.n113, label %.preheader.i.loopexit, label %vec.epilog.iter.check119

vec.epilog.iter.check119:                         ; preds = %middle.block112
  %min.epilog.iters.check120 = icmp eq i64 %n.mod.vf103, 0
  br i1 %min.epilog.iters.check120, label %.lr.ph31.i.preheader, label %vec.epilog.ph121, !prof !364

vec.epilog.ph121:                                 ; preds = %vector.main.loop.iter.check100, %vec.epilog.iter.check119
  %vec.epilog.resume.val114 = phi i64 [ %n.vec104, %vec.epilog.iter.check119 ], [ 0, %vector.main.loop.iter.check100 ]
  %n.vec123 = and i64 %i.bo, 4611686018427387888  ; 3 uses
  %i.cc = shl i64 %n.vec123, 3                    ; 2 uses
  %i.cd = add i64 %i.cc, %i.bh
  %i.ce = add i64 %i.bi, %i.cc                    ; 2 uses
  %i.cf = lshr exact i64 %i.bh, 3
  %6 = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.cf
  br label %vec.epilog.vector.body124

vec.epilog.vector.body124:                        ; preds = %vec.epilog.vector.body124, %vec.epilog.ph121
  %index125 = phi i64 [ %vec.epilog.resume.val114, %vec.epilog.ph121 ], [ %index.next127, %vec.epilog.vector.body124 ] ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %6, i64 %index125 ; 2 uses
  %wide.load126 = load <16 x i8>, ptr %i.cg, align 1, !tbaa !40
  %i.ch = xor <16 x i8> %wide.load126, splat (i8 -1)
  store <16 x i8> %i.ch, ptr %i.cg, align 1, !tbaa !40
  %index.next127 = add nuw i64 %index125, 16      ; 2 uses
  %i.ci = icmp eq i64 %index.next127, %n.vec123
  br i1 %i.ci, label %vec.epilog.middle.block128, label %vec.epilog.vector.body124, !llvm.loop !365

vec.epilog.middle.block128:                       ; preds = %vec.epilog.vector.body124
  %ind.escape129 = add nsw i64 %i.ce, -8
  %cmp.n130 = icmp eq i64 %i.bo, %n.vec123
  br i1 %cmp.n130, label %.preheader.i.loopexit, label %.lr.ph31.i.preheader

.lr.ph31.i.preheader:                             ; preds = %iter.check117, %vec.epilog.iter.check119, %vec.epilog.middle.block128
  %indvars.iv37.ph = phi i64 [ %i.bh, %iter.check117 ], [ %i.bq, %vec.epilog.iter.check119 ], [ %i.cd, %vec.epilog.middle.block128 ]
  %indvars.iv.ph = phi i64 [ %i.bi, %iter.check117 ], [ %i.br, %vec.epilog.iter.check119 ], [ %i.ce, %vec.epilog.middle.block128 ]
  br label %.lr.ph31.i

.lr.ph.i30:                                       ; preds = %.lr.ph.i30.preheader, %.lr.ph.i30
  %indvars.iv36.i = phi i64 [ %indvars.iv.next37.i, %.lr.ph.i30 ], [ %indvars.iv36.i.ph, %.lr.ph.i30.preheader ] ; 2 uses
  %indvars.iv.i31 = phi i64 [ %indvars.iv.next.i32, %.lr.ph.i30 ], [ %indvars.iv.i31.ph, %.lr.ph.i30.preheader ]
  %i.cj = lshr exact i64 %indvars.iv36.i, 3
  %i.ck = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.cj ; 2 uses
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !185
  %i.cm = xor i64 %i.cl, -1
  store i64 %i.cm, ptr %i.ck, align 8, !tbaa !185
  %indvars.iv.next.i32 = add nuw nsw i64 %indvars.iv.i31, 64 ; 2 uses
  %.not.i = icmp samesign ugt i64 %indvars.iv.next.i32, %i.aj
  %indvars.iv.next37.i = add nuw nsw i64 %indvars.iv36.i, 64
  br i1 %.not.i, label %.preheader26.loopexit.i, label %.lr.ph.i30, !llvm.loop !366

.preheader.i.loopexit:                            ; preds = %.lr.ph31.i, %vec.epilog.middle.block128, %middle.block112
  %indvars.iv.lcssa = phi i64 [ %ind.escape129, %vec.epilog.middle.block128 ], [ %ind.escape, %middle.block112 ], [ %indvars.iv, %.lr.ph31.i ]
  %i.cn = trunc nuw nsw i64 %indvars.iv.lcssa to i32
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.loopexit, %.preheader26.i
  %.1.lcssa.i = phi i32 [ %.0.lcssa.i, %.preheader26.i ], [ %i.cn, %.preheader.i.loopexit ] ; 2 uses
  %i.co = icmp slt i32 %.1.lcssa.i, %i.ai
  br i1 %i.co, label %.lr.ph34.preheader.i, label %_ZN8facebook5velox4bits6negateEPmi.exit

.lr.ph34.preheader.i:                             ; preds = %.preheader.i
  %i.cp = zext nneg i32 %.1.lcssa.i to i64
  %wide.trip.count = zext i32 %i.ai to i64
  br label %.lr.ph34.i

.lr.ph31.i:                                       ; preds = %.lr.ph31.i.preheader, %.lr.ph31.i
  %indvars.iv37 = phi i64 [ %indvars.iv.next38, %.lr.ph31.i ], [ %indvars.iv37.ph, %.lr.ph31.i.preheader ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph31.i ], [ %indvars.iv.ph, %.lr.ph31.i.preheader ] ; 3 uses
  %i.cq = lshr exact i64 %indvars.iv37, 3
  %i.cr = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.cq ; 2 uses
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !40
  %i.ct = xor i8 %i.cs, -1
  store i8 %i.ct, ptr %i.cr, align 1, !tbaa !40
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 8
  %.not24.i.not = icmp samesign ult i64 %indvars.iv, %i.bj
  %indvars.iv.next38 = add nuw nsw i64 %indvars.iv37, 8
  br i1 %.not24.i.not, label %.lr.ph31.i, label %.preheader.i.loopexit, !llvm.loop !367

.lr.ph34.i:                                       ; preds = %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i, %.lr.ph34.preheader.i
  %indvars.iv41.i = phi i64 [ %i.cp, %.lr.ph34.preheader.i ], [ %indvars.iv.next42.i, %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i ] ; 6 uses
  %i.cu = lshr i64 %indvars.iv41.i, 6
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.cu
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !185
  %i.cx = and i64 %indvars.iv41.i, 63
  %i.cy = shl nuw i64 1, %i.cx
  %i.cz = and i64 %i.cy, %i.cw
  %.not25.i = icmp eq i64 %i.cz, 0
  %i.da = lshr i64 %indvars.iv41.i, 3
  %i.db = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.da ; 2 uses
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !40  ; 2 uses
  br i1 %.not25.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph34.i
  %i.dd = trunc i64 %indvars.iv41.i to i8
  %i.de = and i8 %i.dd, 7
  %i.df = shl nuw i8 1, %i.de
  %i.dg = or i8 %i.df, %i.dc
  br label %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i

bb.e:                                             ; preds = %.lr.ph34.i
  %i.dh = and i64 %indvars.iv41.i, 7
  %i.di = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.dh
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !40
  %i.dk = and i8 %i.dj, %i.dc
  br label %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i

_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i:  ; preds = %bb.e, %bb.d
  %.sink.i.i = phi i8 [ %i.dk, %bb.e ], [ %i.dg, %bb.d ]
  store i8 %.sink.i.i, ptr %i.db, align 1, !tbaa !40
  %indvars.iv.next42.i = add nuw nsw i64 %indvars.iv41.i, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next42.i, %wide.trip.count
  br i1 %exitcond.not, label %_ZN8facebook5velox4bits6negateEPmi.exit, label %.lr.ph34.i, !llvm.loop !368

_ZN8facebook5velox4bits6negateEPmi.exit:          ; preds = %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i, %.preheader.i
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.j, label %bb.f

bb.f:                                             ; preds = %_ZN8facebook5velox4bits6negateEPmi.exit
  %i.dl = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !330
  %.not.i33 = icmp sgt i64 %i.j, %i.dm
  br i1 %.not.i33, label %_ZN8facebook5velox10raw_vectorImE7reserveEl.exit.i, label %bb.g, !prof !36

_ZN8facebook5velox10raw_vectorImE7reserveEl.exit.i: ; preds = %bb.f
  invoke void @_ZN8facebook5velox10raw_vectorImE4growEl(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.j)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f, %_ZN8facebook5velox10raw_vectorImE7reserveEl.exit.i
  %i.dn = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %i.j, ptr %i.dn, align 8, !tbaa !334
  %i.do = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !327
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.dp, ptr align 8 %i.l, i64 %i.n, i1 false)
  br label %bb.j

bb.h:                                             ; preds = %bb.b
  %i.dq = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.i:                                             ; preds = %_ZN8facebook5velox10raw_vectorImE7reserveEl.exit.i, %bb.c
  %i.dr = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.j:                                             ; preds = %bb.g, %_ZN8facebook5velox4bits6negateEPmi.exit
  %.not.i.i = icmp sgt i32 %1, 0
  br i1 %.not.i.i, label %bb.k, label %_ZN8facebook5velox4bits9countBitsEPKmii.exit

bb.k:                                             ; preds = %bb.j
  %i.ds = and i32 %1, 2147483584                  ; 3 uses
  %.not3342.i.i = icmp eq i32 %i.ds, 0
  br i1 %.not3342.i.i, label %._crit_edge.i.i, label %iter.check156

iter.check156:                                    ; preds = %bb.k
  %i.dt = zext nneg i32 %i.ds to i64              ; 2 uses
  %i.du = add nsw i64 %i.dt, -64                  ; 3 uses
  %i.dv = lshr exact i64 %i.du, 6
  %i.dw = add nuw nsw i64 %i.dv, 1                ; 5 uses
  %min.iters.check133 = icmp ult i64 %i.du, 192
  br i1 %min.iters.check133, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check134

vector.main.loop.iter.check134:                   ; preds = %iter.check156
  %min.iters.check135 = icmp ult i64 %i.du, 960
  br i1 %min.iters.check135, label %vec.epilog.ph160, label %vector.ph136

vector.ph136:                                     ; preds = %vector.main.loop.iter.check134
  %n.mod.vf137 = and i64 %i.dw, 12
  %n.vec138 = and i64 %i.dw, 576460752303423472   ; 4 uses
  %i.dx = shl i64 %n.vec138, 6                    ; 2 uses
  %i.dy = or disjoint i64 %i.dx, 64
  br label %vector.body139

vector.body139:                                   ; preds = %vector.body139, %vector.ph136
  %index140 = phi i64 [ 0, %vector.ph136 ], [ %index.next148, %vector.body139 ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph136 ], [ %i.em, %vector.body139 ]
  %vec.phi141 = phi <4 x i32> [ zeroinitializer, %vector.ph136 ], [ %i.en, %vector.body139 ]
  %vec.phi142 = phi <4 x i32> [ zeroinitializer, %vector.ph136 ], [ %i.eo, %vector.body139 ]
  %vec.phi143 = phi <4 x i32> [ zeroinitializer, %vector.ph136 ], [ %i.ep, %vector.body139 ]
  %i.dz = shl nuw nsw i64 %index140, 3
  %i.ea = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.dz ; 4 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 32
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ea, i64 64
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ea, i64 96
  %wide.load144 = load <4 x i64>, ptr %i.ea, align 8, !tbaa !185
  %wide.load145 = load <4 x i64>, ptr %i.eb, align 8, !tbaa !185
  %wide.load146 = load <4 x i64>, ptr %i.ec, align 8, !tbaa !185
  %wide.load147 = load <4 x i64>, ptr %i.ed, align 8, !tbaa !185
  %i.ee = call range(i64 0, 65) <4 x i64> @llvm.ctpop.v4i64(<4 x i64> %wide.load144)
  %i.ef = call range(i64 0, 65) <4 x i64> @llvm.ctpop.v4i64(<4 x i64> %wide.load145)
  %i.eg = call range(i64 0, 65) <4 x i64> @llvm.ctpop.v4i64(<4 x i64> %wide.load146)
  %i.eh = call range(i64 0, 65) <4 x i64> @llvm.ctpop.v4i64(<4 x i64> %wide.load147)
  %i.ei = trunc nuw nsw <4 x i64> %i.ee to <4 x i32>
  %i.ej = trunc nuw nsw <4 x i64> %i.ef to <4 x i32>
  %i.ek = trunc nuw nsw <4 x i64> %i.eg to <4 x i32>
  %i.el = trunc nuw nsw <4 x i64> %i.eh to <4 x i32>
  %i.em = add <4 x i32> %vec.phi, %i.ei           ; 2 uses
  %i.en = add <4 x i32> %vec.phi141, %i.ej        ; 2 uses
  %i.eo = add <4 x i32> %vec.phi142, %i.ek        ; 2 uses
  %i.ep = add <4 x i32> %vec.phi143, %i.el        ; 2 uses
  %index.next148 = add nuw i64 %index140, 16      ; 2 uses
  %i.eq = icmp eq i64 %index.next148, %n.vec138
  br i1 %i.eq, label %middle.block149, label %vector.body139, !llvm.loop !369

middle.block149:                                  ; preds = %vector.body139
  %bin.rdx = add <4 x i32> %i.en, %i.em
  %bin.rdx150 = add <4 x i32> %i.eo, %bin.rdx
  %bin.rdx151 = add <4 x i32> %i.ep, %bin.rdx150
  %i.er = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx151) ; 3 uses
  %cmp.n152 = icmp eq i64 %i.dw, %n.vec138
  br i1 %cmp.n152, label %._crit_edge.i.i, label %vec.epilog.iter.check158

vec.epilog.iter.check158:                         ; preds = %middle.block149
  %min.epilog.iters.check159 = icmp eq i64 %n.mod.vf137, 0
  br i1 %min.epilog.iters.check159, label %.lr.ph.i.i.preheader, label %vec.epilog.ph160, !prof !261

vec.epilog.ph160:                                 ; preds = %vector.main.loop.iter.check134, %vec.epilog.iter.check158
  %vec.epilog.resume.val153 = phi i64 [ %n.vec138, %vec.epilog.iter.check158 ], [ 0, %vector.main.loop.iter.check134 ]
  %bc.merge.rdx = phi i32 [ %i.er, %vec.epilog.iter.check158 ], [ 0, %vector.main.loop.iter.check134 ]
  %n.vec162 = and i64 %i.dw, 576460752303423484   ; 3 uses
  %i.es = shl i64 %n.vec162, 6                    ; 2 uses
  %i.et = or disjoint i64 %i.es, 64
  %i.eu = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body163

vec.epilog.vector.body163:                        ; preds = %vec.epilog.vector.body163, %vec.epilog.ph160
  %index164 = phi i64 [ %vec.epilog.resume.val153, %vec.epilog.ph160 ], [ %index.next167, %vec.epilog.vector.body163 ] ; 2 uses
  %vec.phi165 = phi <4 x i32> [ %i.eu, %vec.epilog.ph160 ], [ %i.ez, %vec.epilog.vector.body163 ]
  %i.ev = shl nuw nsw i64 %index164, 3
  %i.ew = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.ev
  %wide.load166 = load <4 x i64>, ptr %i.ew, align 8, !tbaa !185
  %i.ex = call range(i64 0, 65) <4 x i64> @llvm.ctpop.v4i64(<4 x i64> %wide.load166)
  %i.ey = trunc nuw nsw <4 x i64> %i.ex to <4 x i32>
  %i.ez = add <4 x i32> %vec.phi165, %i.ey        ; 2 uses
  %index.next167 = add nuw i64 %index164, 4       ; 2 uses
  %i.fa = icmp eq i64 %index.next167, %n.vec162
  br i1 %i.fa, label %vec.epilog.middle.block168, label %vec.epilog.vector.body163, !llvm.loop !370

vec.epilog.middle.block168:                       ; preds = %vec.epilog.vector.body163
  %i.fb = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.ez) ; 2 uses
  %cmp.n169 = icmp eq i64 %i.dw, %n.vec162
  br i1 %cmp.n169, label %._crit_edge.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check156, %vec.epilog.iter.check158, %vec.epilog.middle.block168
  %indvars.iv44.ph = phi i64 [ 0, %iter.check156 ], [ %i.dx, %vec.epilog.iter.check158 ], [ %i.es, %vec.epilog.middle.block168 ]
  %indvars.iv42.ph = phi i64 [ 64, %iter.check156 ], [ %i.dy, %vec.epilog.iter.check158 ], [ %i.et, %vec.epilog.middle.block168 ]
  %.ph = phi i32 [ 0, %iter.check156 ], [ %i.er, %vec.epilog.iter.check158 ], [ %i.fb, %vec.epilog.middle.block168 ]
  br label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %middle.block149, %vec.epilog.middle.block168, %bb.k
  %.1.i = phi i32 [ 0, %bb.k ], [ %i.fb, %vec.epilog.middle.block168 ], [ %i.er, %middle.block149 ], [ %i.fi, %.lr.ph.i.i ] ; 2 uses
  %.not34.i.i = icmp eq i32 %1, %i.ds
  br i1 %.not34.i.i, label %_ZN8facebook5velox4bits9countBitsEPKmii.exit, label %.sink.split.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %indvars.iv44 = phi i64 [ %indvars.iv.next45, %.lr.ph.i.i ], [ %indvars.iv44.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %indvars.iv42 = phi i64 [ %indvars.iv.next43, %.lr.ph.i.i ], [ %indvars.iv42.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.fc = phi i32 [ %i.fi, %.lr.ph.i.i ], [ %.ph, %.lr.ph.i.i.preheader ]
  %i.fd = lshr exact i64 %indvars.iv44, 3
  %i.fe = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.fd
  %i.ff = load i64, ptr %i.fe, align 8, !tbaa !185
  %i.fg = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.ff)
  %i.fh = trunc nuw nsw i64 %i.fg to i32
  %i.fi = add nuw nsw i32 %i.fc, %i.fh            ; 2 uses
  %indvars.iv.next43 = add nuw nsw i64 %indvars.iv42, 64
  %.not33.i.i.not = icmp samesign ult i64 %indvars.iv42, %i.dt
  %indvars.iv.next45 = add nuw nsw i64 %indvars.iv44, 64
  br i1 %.not33.i.i.not, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !371

.sink.split.i.i:                                  ; preds = %._crit_edge.i.i
  %i.fj = lshr i32 %1, 6
  %i.fk = and i32 %1, 63
  %i.fl = zext nneg i32 %i.fk to i64
  %notmask.i36.i.i = shl nsw i64 -1, %i.fl
  %i.fm = xor i64 %notmask.i36.i.i, -1
  %i.fn = zext nneg i32 %i.fj to i64
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.fn
  %i.fp = load i64, ptr %i.fo, align 8, !tbaa !185
  %i.fq = and i64 %i.fp, %i.fm
  %i.fr = call range(i64 0, 64) i64 @llvm.ctpop.i64(i64 %i.fq)
  %i.fs = trunc nuw nsw i64 %i.fr to i32
  %i.ft = add nsw i32 %.1.i, %i.fs
  br label %_ZN8facebook5velox4bits9countBitsEPKmii.exit

_ZN8facebook5velox4bits9countBitsEPKmii.exit:     ; preds = %.sink.split.i.i, %._crit_edge.i.i, %bb.j
  %.3.i = phi i32 [ %i.ft, %.sink.split.i.i ], [ %.1.i, %._crit_edge.i.i ], [ 0, %bb.j ]
  %i.fu = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !372
  %.not.i34 = icmp eq ptr %i.fv, null
  br i1 %.not.i34, label %_ZN8facebook5velox10ScratchPtrImLi16EED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZN8facebook5velox4bits9countBitsEPKmii.exit
  %i.fw = load ptr, ptr %4, align 8, !tbaa !352
  invoke void @_ZN8facebook5velox7Scratch7releaseEONS0_10raw_vectorIcEE(ptr noundef nonnull align 8 dereferenceable(24) %i.fw, ptr noundef nonnull align 8 dereferenceable(32) %i.g)
          to label %bb.m unwind label %bb.r

bb.m:                                             ; preds = %bb.l
  %.pr.i = load ptr, ptr %i.fu, align 8, !tbaa !372 ; 2 uses
  %i.fx = icmp eq ptr %.pr.i, null
  br i1 %i.fx, label %_ZN8facebook5velox10ScratchPtrImLi16EED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.fy = getelementptr inbounds i8, ptr %.pr.i, i64 -32 ; 2 uses
  %i.fz = load ptr, ptr %i.g, align 8, !tbaa !373 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.fz, null
  br i1 %.not.i.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ga = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.gb = load i64, ptr %i.ga, align 8, !tbaa !374
  %i.gc = add i64 %i.gb, 64
  %i.gd = load ptr, ptr %i.fz, align 8, !tbaa !17
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 120
  %i.gf = load ptr, ptr %i.ge, align 8
  invoke void %i.gf(ptr noundef nonnull align 8 dereferenceable(264) %i.fz, ptr noundef nonnull %i.fy, i64 noundef %i.gc)
          to label %_ZN8facebook5velox10ScratchPtrImLi16EED2Ev.exit unwind label %bb.q, !inline_history !375

bb.p:                                             ; preds = %bb.n
  call void @free(ptr noundef nonnull %i.fy) #22
  br label %_ZN8facebook5velox10ScratchPtrImLi16EED2Ev.exit

bb.q:                                             ; preds = %bb.o
  %i.gg = landingpad { ptr, i32 }
          catch ptr null
  %i.gh = extractvalue { ptr, i32 } %i.gg, 0
  call void @__clang_call_terminate(ptr %i.gh) #42
  unreachable

bb.r:                                             ; preds = %bb.l
  %i.gi = landingpad { ptr, i32 }
          catch ptr null
  %i.gj = extractvalue { ptr, i32 } %i.gi, 0
  call void @__clang_call_terminate(ptr %i.gj) #42
  unreachable

_ZN8facebook5velox10ScratchPtrImLi16EED2Ev.exit:  ; preds = %_ZN8facebook5velox4bits9countBitsEPKmii.exit, %bb.m, %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %bb.t

bb.s:                                             ; preds = %bb.i, %bb.h
  %.pn = phi { ptr, i32 } [ %i.dr, %bb.i ], [ %i.dq, %bb.h ]
  call void @_ZN8facebook5velox10ScratchPtrImLi16EED2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216) %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  resume { ptr, i32 } %.pn

bb.t:                                             ; preds = %bb.a, %_ZN8facebook5velox10ScratchPtrImLi16EED2Ev.exit
  %.0 = phi i32 [ %.3.i, %_ZN8facebook5velox10ScratchPtrImLi16EED2Ev.exit ], [ %1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN8facebook5velox10ScratchPtrImLi16EE3getEi(ptr noundef nonnull align 8 dereferenceable(216) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !376
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b, !prof !47

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10ScratchPtrImLi16EE3getEiE18veloxCheckFailArgs) #39
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %1, ptr %i.c, align 8, !tbaa !377
  %i.d = icmp slt i32 %1, 17
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  br label %bb.k

bb.e:                                             ; preds = %bb.c
  %i.f = load ptr, ptr %0, align 8, !tbaa !352    ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !378, !noalias !379 ; 2 uses
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %_ZN8facebook5velox7Scratch3getEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = load ptr, ptr %i.f, align 8, !tbaa !75, !noalias !379
  %i.k = sext i32 %i.h to i64
  %i.l = getelementptr [32 x i8], ptr %i.j, i64 %i.k ; 3 uses
  %i.m = getelementptr i8, ptr %i.l, i64 -32      ; 2 uses
  %i.n = getelementptr i8, ptr %i.l, i64 -16
  %i.o = getelementptr i8, ptr %i.l, i64 -8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !374, !noalias !379 ; 2 uses
  %i.q = load <2 x i64>, ptr %i.n, align 8, !tbaa !185, !noalias !379
  %i.r = load <2 x ptr>, ptr %i.m, align 8, !tbaa !84, !noalias !379
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.m, i8 0, i64 32, i1 false), !noalias !379
  %i.s = load i32, ptr %i.g, align 8, !tbaa !378, !noalias !379
  %i.t = add nsw i32 %i.s, -1
  store i32 %i.t, ptr %i.g, align 8, !tbaa !378, !noalias !379
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !382, !noalias !379
  %i.w = sub nsw i64 %i.v, %i.p
  store i64 %i.w, ptr %i.u, align 8, !tbaa !382, !noalias !379
  br label %_ZN8facebook5velox7Scratch3getEv.exit

_ZN8facebook5velox7Scratch3getEv.exit:            ; preds = %bb.e, %bb.f
  %.sroa.12.0 = phi i64 [ %i.p, %bb.f ], [ 0, %bb.e ]
  %i.x = phi <2 x i64> [ %i.q, %bb.f ], [ zeroinitializer, %bb.e ]
  %i.y = phi <2 x ptr> [ %i.r, %bb.f ], [ splat (ptr null), %bb.e ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !372 ; 2 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %_ZN8facebook5velox10raw_vectorIcED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZN8facebook5velox7Scratch3getEv.exit
  %i.ad = getelementptr inbounds i8, ptr %i.ab, i64 -32 ; 2 uses
  %i.ae = load ptr, ptr %i.z, align 8, !tbaa !373 ; 3 uses
  %.not.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !374
  %i.ah = add i64 %i.ag, 64
  %i.ai = load ptr, ptr %i.ae, align 8, !tbaa !17
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 120
  %i.ak = load ptr, ptr %i.aj, align 8
  invoke void %i.ak(ptr noundef nonnull align 8 dereferenceable(264) %i.ae, ptr noundef nonnull %i.ad, i64 noundef %i.ah)
          to label %_ZN8facebook5velox10raw_vectorIcED2Ev.exit unwind label %bb.j, !inline_history !375

bb.i:                                             ; preds = %bb.g
  tail call void @free(ptr noundef nonnull %i.ad) #22
  br label %_ZN8facebook5velox10raw_vectorIcED2Ev.exit

bb.j:                                             ; preds = %bb.h
end_hunk_1
begin_hunk_2_@_ZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_14readINS0_12UnknownValueEEEvPNS0_15ByteInputStreamERKSt10shared_ptrIKNS0_4TypeEEiPKmiPNS0_6memory10MemoryPoolERKNS2_17PrestoVectorSerde13PrestoOptionsERS9_INS0_10BaseVectorEE:bb.a
.noexc49:                                         ; preds = %.preheader.i44.i.i.i.i
  %i.gb = add nsw i64 %.011.i45.i.i.i.i, -1
  %i.gc = and i64 %i.gb, %.011.i45.i.i.i.i        ; 2 uses
  %.not10.i46.i.i.i.i = icmp eq i64 %i.gc, 0
  br i1 %.not10.i46.i.i.i.i, label %_ZN8facebook5velox4bits13forEachSetBitIZNS0_10serializer6presto6detail12_GLOBAL__N_110readValuesINS0_12UnknownValueEEEvPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSG_EUliE_EEvPKmiiT_.exit.i, label %.preheader.i44.i.i.i.i, !llvm.loop !691

_ZN8facebook5velox4bits13forEachSetBitIZNS0_10serializer6presto6detail12_GLOBAL__N_110readValuesINS0_12UnknownValueEEEvPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSG_EUliE_EEvPKmiiT_.exit.i: ; preds = %.noexc49, %.noexc43, %bb.ah, %._crit_edge.i.i.i.i, %bb.q, %_ZNK8facebook5velox6Buffer9asMutableINS0_12UnknownValueEEEPT_v.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  br label %_ZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_110readValuesINS0_12UnknownValueEEEvPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSE_.exit

bb.ai:                                            ; preds = %bb.g
  %i.gd = getelementptr inbounds nuw i8, ptr %.val34, i64 44
  %i.ge = load i8, ptr %i.gd, align 4, !tbaa !233
  %i.gf = and i8 %i.ge, 2
  %.not.i15.i = icmp eq i8 %i.gf, 0
  br i1 %.not.i15.i, label %_ZNK8facebook5velox6Buffer9asMutableIhEEPT_v.exit.i, label %.invoke, !prof !47

_ZNK8facebook5velox6Buffer9asMutableIhEEPT_v.exit.i: ; preds = %bb.ai
  %i.gg = getelementptr inbounds nuw i8, ptr %.val34, i64 16
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !238
  %i.gi = sext i32 %2 to i64
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gh, i64 %i.gi
  %i.gk = load ptr, ptr %0, align 8, !tbaa !17
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 64
  %i.gm = load ptr, ptr %i.gl, align 8
  invoke void %i.gm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %i.gj, i32 noundef %i.t)
          to label %_ZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_110readValuesINS0_12UnknownValueEEEvPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSE_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !701

_ZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_110readValuesINS0_12UnknownValueEEEvPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSE_.exit: ; preds = %_ZNK8facebook5velox6Buffer9asMutableIhEEPT_v.exit.i, %_ZN8facebook5velox4bits13forEachSetBitIZNS0_10serializer6presto6detail12_GLOBAL__N_110readValuesINS0_12UnknownValueEEEvPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSG_EUliE_EEvPKmiiT_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.aj

bb.aj:                                            ; preds = %_ZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_110readValuesINS0_12UnknownValueEEEvPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSE_.exit, %bb.f, %bb.e
  %i.gn = load ptr, ptr %17, align 8, !tbaa !232  ; 7 uses
  %.not.i52 = icmp eq ptr %i.gn, null
  br i1 %.not.i52, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 40
  %i.gp = atomicrmw sub ptr %i.go, i32 1 acq_rel, align 4
  %i.gq = icmp eq i32 %i.gp, 1
  br i1 %i.gq, label %.sink.split.i.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit

.sink.split.i.i:                                  ; preds = %bb.ak
  %i.gr = load ptr, ptr %i.gn, align 8, !tbaa !17
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 64
  %i.gt = load ptr, ptr %i.gs, align 8
  invoke void %i.gt(ptr noundef nonnull align 8 dereferenceable(64) %i.gn)
          to label %.noexc.i unwind label %bb.al, !inline_history !246

.noexc.i:                                         ; preds = %.sink.split.i.i
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !247
  %.not.i.i53 = icmp eq ptr %i.gv, null
  %i.gw = load ptr, ptr %i.gn, align 8, !tbaa !17
  %..i.i = select i1 %.not.i.i53, i64 8, i64 48
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 %..i.i
  %i.gy = load ptr, ptr %i.gx, align 8
  invoke void %i.gy(ptr noundef nonnull align 8 dereferenceable(64) %i.gn)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit unwind label %bb.al, !inline_history !246

bb.al:                                            ; preds = %.noexc.i, %.sink.split.i.i
  %i.gz = landingpad { ptr, i32 }
          catch ptr null
  %i.ha = extractvalue { ptr, i32 } %i.gz, 0
  call void @__clang_call_terminate(ptr %i.ha) #42
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit: ; preds = %bb.aj, %bb.ak, %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #22
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt13unordered_mapIN8facebook5velox8TypeKindESt8functionIFvPNS1_15ByteInputStreamERKSt10shared_ptrIKNS1_4TypeEEiPKmiPNS1_6memory10MemoryPoolERKNS1_10serializer6presto17PrestoVectorSerde13PrestoOptionsERS6_INS1_10BaseVectorEEEESt4hashIS2_ESt8equal_toIS2_ESaISt4pairIKS2_SR_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !704  ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not5.i.i.i, label %_ZNSt10_HashtableIN8facebook5velox8TypeKindESt4pairIKS2_St8functionIFvPNS1_15ByteInputStreamERKSt10shared_ptrIKNS1_4TypeEEiPKmiPNS1_6memory10MemoryPoolERKNS1_10serializer6presto17PrestoVectorSerde13PrestoOptionsERS8_INS1_10BaseVectorEEEEESaISU_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENSW_18_Mod_range_hashingENSW_20_Default_ranged_hashENSW_20_Prime_rehash_policyENSW_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN8facebook5velox8TypeKindESt8functionIFvPNS4_15ByteInputStreamERKSt10shared_ptrIKNS4_4TypeEEiPKmiPNS4_6memory10MemoryPoolERKNS4_10serializer6presto17PrestoVectorSerde13PrestoOptionsERSA_INS4_10BaseVectorEEEEELb0EEEEE18_M_deallocate_nodeEPSX_.exit.i.i.i
  %.06.i.i.i = phi ptr [ %i.c, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN8facebook5velox8TypeKindESt8functionIFvPNS4_15ByteInputStreamERKSt10shared_ptrIKNS4_4TypeEEiPKmiPNS4_6memory10MemoryPoolERKNS4_10serializer6presto17PrestoVectorSerde13PrestoOptionsERSA_INS4_10BaseVectorEEEEELb0EEEEE18_M_deallocate_nodeEPSX_.exit.i.i.i ], [ %i.b, %bb.a ] ; 4 uses
  %i.c = load ptr, ptr %.06.i.i.i, align 8, !tbaa !120 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !86   ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN8facebook5velox8TypeKindESt8functionIFvPNS4_15ByteInputStreamERKSt10shared_ptrIKNS4_4TypeEEiPKmiPNS4_6memory10MemoryPoolERKNS4_10serializer6presto17PrestoVectorSerde13PrestoOptionsERSA_INS4_10BaseVectorEEEEELb0EEEEE18_M_deallocate_nodeEPSX_.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 16 ; 2 uses
  %i.g = invoke noundef zeroext i1 %i.e(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i32 noundef 3)
          to label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN8facebook5velox8TypeKindESt8functionIFvPNS4_15ByteInputStreamERKSt10shared_ptrIKNS4_4TypeEEiPKmiPNS4_6memory10MemoryPoolERKNS4_10serializer6presto17PrestoVectorSerde13PrestoOptionsERSA_INS4_10BaseVectorEEEEELb0EEEEE18_M_deallocate_nodeEPSX_.exit.i.i.i unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #42
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN8facebook5velox8TypeKindESt8functionIFvPNS4_15ByteInputStreamERKSt10shared_ptrIKNS4_4TypeEEiPKmiPNS4_6memory10MemoryPoolERKNS4_10serializer6presto17PrestoVectorSerde13PrestoOptionsERSA_INS4_10BaseVectorEEEEELb0EEEEE18_M_deallocate_nodeEPSX_.exit.i.i.i: ; preds = %bb.b, %.lr.ph.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i, i64 noundef 48) #40
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt10_HashtableIN8facebook5velox8TypeKindESt4pairIKS2_St8functionIFvPNS1_15ByteInputStreamERKSt10shared_ptrIKNS1_4TypeEEiPKmiPNS1_6memory10MemoryPoolERKNS1_10serializer6presto17PrestoVectorSerde13PrestoOptionsERS8_INS1_10BaseVectorEEEEESaISU_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENSW_18_Mod_range_hashingENSW_20_Default_ranged_hashENSW_20_Prime_rehash_policyENSW_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i, !llvm.loop !705

_ZNSt10_HashtableIN8facebook5velox8TypeKindESt4pairIKS2_St8functionIFvPNS1_15ByteInputStreamERKSt10shared_ptrIKNS1_4TypeEEiPKmiPNS1_6memory10MemoryPoolERKNS1_10serializer6presto17PrestoVectorSerde13PrestoOptionsERS8_INS1_10BaseVectorEEEEESaISU_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENSW_18_Mod_range_hashingENSW_20_Default_ranged_hashENSW_20_Prime_rehash_policyENSW_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN8facebook5velox8TypeKindESt8functionIFvPNS4_15ByteInputStreamERKSt10shared_ptrIKNS4_4TypeEEiPKmiPNS4_6memory10MemoryPoolERKNS4_10serializer6presto17PrestoVectorSerde13PrestoOptionsERSA_INS4_10BaseVectorEEEEELb0EEEEE18_M_deallocate_nodeEPSX_.exit.i.i.i, %bb.a
  %i.j = load ptr, ptr %0, align 8, !tbaa !274
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !273
  %i.m = shl i64 %i.l, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.j, i8 0, i64 %i.m, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.n = load ptr, ptr %0, align 8, !tbaa !274    ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt10_HashtableIN8facebook5velox8TypeKindESt4pairIKS2_St8functionIFvPNS1_15ByteInputStreamERKSt10shared_ptrIKNS1_4TypeEEiPKmiPNS1_6memory10MemoryPoolERKNS1_10serializer6presto17PrestoVectorSerde13PrestoOptionsERS8_INS1_10BaseVectorEEEEESaISU_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENSW_18_Mod_range_hashingENSW_20_Default_ranged_hashENSW_20_Prime_rehash_policyENSW_17_Hashtable_traitsILb0ELb0ELb1EEEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt10_HashtableIN8facebook5velox8TypeKindESt4pairIKS2_St8functionIFvPNS1_15ByteInputStreamERKSt10shared_ptrIKNS1_4TypeEEiPKmiPNS1_6memory10MemoryPoolERKNS1_10serializer6presto17PrestoVectorSerde13PrestoOptionsERS8_INS1_10BaseVectorEEEEESaISU_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENSW_18_Mod_range_hashingENSW_20_Default_ranged_hashENSW_20_Prime_rehash_policyENSW_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i
  %i.q = load i64, ptr %i.k, align 8, !tbaa !273
  %i.r = shl i64 %i.q, 3
  tail call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #40
  br label %_ZNSt10_HashtableIN8facebook5velox8TypeKindESt4pairIKS2_St8functionIFvPNS1_15ByteInputStreamERKSt10shared_ptrIKNS1_4TypeEEiPKmiPNS1_6memory10MemoryPoolERKNS1_10serializer6presto17PrestoVectorSerde13PrestoOptionsERS8_INS1_10BaseVectorEEEEESaISU_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENSW_18_Mod_range_hashingENSW_20_Default_ranged_hashENSW_20_Prime_rehash_policyENSW_17_Hashtable_traitsILb0ELb0ELb1EEEED2Ev.exit

_ZNSt10_HashtableIN8facebook5velox8TypeKindESt4pairIKS2_St8functionIFvPNS1_15ByteInputStreamERKSt10shared_ptrIKNS1_4TypeEEiPKmiPNS1_6memory10MemoryPoolERKNS1_10serializer6presto17PrestoVectorSerde13PrestoOptionsERS8_INS1_10BaseVectorEEEEESaISU_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENSW_18_Mod_range_hashingENSW_20_Default_ranged_hashENSW_20_Prime_rehash_policyENSW_17_Hashtable_traitsILb0ELb0ELb1EEEED2Ev.exit: ; preds = %_ZNSt10_HashtableIN8facebook5velox8TypeKindESt4pairIKS2_St8functionIFvPNS1_15ByteInputStreamERKSt10shared_ptrIKNS1_4TypeEEiPKmiPNS1_6memory10MemoryPoolERKNS1_10serializer6presto17PrestoVectorSerde13PrestoOptionsERS8_INS1_10BaseVectorEEEEESaISU_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENSW_18_Mod_range_hashingENSW_20_Default_ranged_hashENSW_20_Prime_rehash_policyENSW_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i, %bb.d
  ret void
}

declare void @_ZN8facebook5velox10BaseVector14ensureWritableERKNS0_17SelectivityVectorERKSt10shared_ptrIKNS0_4TypeEEPNS0_6memory10MemoryPoolERS5_IS1_EPNS0_10VectorPoolE(ptr noundef nonnull align 8 dereferenceable(38), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #11

declare noundef nonnull align 8 dereferenceable(38) ptr @_ZN8facebook5velox17SelectivityVector5emptyEv() local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
define internal fastcc noundef i32 @_ZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_19readNullsEPNS0_15ByteInputStreamEiiPKmiRNS0_10BaseVectorE(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef nonnull align 8 dereferenceable(94) %5) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !17
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i8 %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0)
  %i.e = icmp eq i8 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %.not53 = icmp eq ptr %3, null
  br i1 %.not53, label %.thread, label %bb.c

.thread:                                          ; preds = %bb.b
  %i.f = add nsw i32 %2, %1
  %i.g = load ptr, ptr %5, align 8, !tbaa !17
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 184
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(94) %5, i32 noundef %2, i32 noundef %i.f)
  br label %bb.r

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.k = load i32, ptr %i.j, align 8, !tbaa !164
  tail call void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(94) %5, i32 noundef %i.k, i1 noundef zeroext true)
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !676
  %i.n = sext i32 %2 to i64
  %i.o = sext i32 %4 to i64
  tail call void @_ZN8facebook5velox4bits8copyBitsEPKmmPmmm(ptr noundef nonnull %3, i64 noundef 0, ptr noundef %i.m, i64 noundef %i.n, i64 noundef %i.o)
  %.not.i.i = icmp sgt i32 %4, 0
  br i1 %.not.i.i, label %bb.d, label %_ZN8facebook5velox4bits9countBitsEPKmii.exit

bb.d:                                             ; preds = %bb.c
  %i.p = and i32 %4, 2147483584                   ; 3 uses
  %.not3342.i.i = icmp eq i32 %i.p, 0
  br i1 %.not3342.i.i, label %._crit_edge.i.i, label %iter.check200

iter.check200:                                    ; preds = %bb.d
  %i.q = zext nneg i32 %i.p to i64                ; 2 uses
  %i.r = add nsw i64 %i.q, -64                    ; 3 uses
  %i.s = lshr exact i64 %i.r, 6
  %i.t = add nuw nsw i64 %i.s, 1                  ; 5 uses
  %min.iters.check177 = icmp ult i64 %i.r, 192
  br i1 %min.iters.check177, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check178

vector.main.loop.iter.check178:                   ; preds = %iter.check200
  %min.iters.check179 = icmp ult i64 %i.r, 960
  br i1 %min.iters.check179, label %vec.epilog.ph204, label %vector.ph180

vector.ph180:                                     ; preds = %vector.main.loop.iter.check178
  %n.mod.vf181 = and i64 %i.t, 12
  %n.vec182 = and i64 %i.t, 576460752303423472    ; 4 uses
  %i.u = shl i64 %n.vec182, 6                     ; 2 uses
  %i.v = or disjoint i64 %i.u, 64
  br label %vector.body183

vector.body183:                                   ; preds = %vector.body183, %vector.ph180
  %index184 = phi i64 [ 0, %vector.ph180 ], [ %index.next192, %vector.body183 ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph180 ], [ %i.aj, %vector.body183 ]
  %vec.phi185 = phi <4 x i32> [ zeroinitializer, %vector.ph180 ], [ %i.ak, %vector.body183 ]
  %vec.phi186 = phi <4 x i32> [ zeroinitializer, %vector.ph180 ], [ %i.al, %vector.body183 ]
  %vec.phi187 = phi <4 x i32> [ zeroinitializer, %vector.ph180 ], [ %i.am, %vector.body183 ]
  %i.w = shl nuw nsw i64 %index184, 3
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 %i.w ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 64
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 96
  %wide.load188 = load <4 x i64>, ptr %i.x, align 8, !tbaa !185
  %wide.load189 = load <4 x i64>, ptr %i.y, align 8, !tbaa !185
  %wide.load190 = load <4 x i64>, ptr %i.z, align 8, !tbaa !185
  %wide.load191 = load <4 x i64>, ptr %i.aa, align 8, !tbaa !185
  %i.ab = tail call range(i64 0, 65) <4 x i64> @llvm.ctpop.v4i64(<4 x i64> %wide.load188)
  %i.ac = tail call range(i64 0, 65) <4 x i64> @llvm.ctpop.v4i64(<4 x i64> %wide.load189)
  %i.ad = tail call range(i64 0, 65) <4 x i64> @llvm.ctpop.v4i64(<4 x i64> %wide.load190)
  %i.ae = tail call range(i64 0, 65) <4 x i64> @llvm.ctpop.v4i64(<4 x i64> %wide.load191)
  %i.af = trunc nuw nsw <4 x i64> %i.ab to <4 x i32>
  %i.ag = trunc nuw nsw <4 x i64> %i.ac to <4 x i32>
  %i.ah = trunc nuw nsw <4 x i64> %i.ad to <4 x i32>
  %i.ai = trunc nuw nsw <4 x i64> %i.ae to <4 x i32>
  %i.aj = add <4 x i32> %vec.phi, %i.af           ; 2 uses
  %i.ak = add <4 x i32> %vec.phi185, %i.ag        ; 2 uses
  %i.al = add <4 x i32> %vec.phi186, %i.ah        ; 2 uses
  %i.am = add <4 x i32> %vec.phi187, %i.ai        ; 2 uses
  %index.next192 = add nuw i64 %index184, 16      ; 2 uses
  %i.an = icmp eq i64 %index.next192, %n.vec182
  br i1 %i.an, label %middle.block193, label %vector.body183, !llvm.loop !706

middle.block193:                                  ; preds = %vector.body183
  %bin.rdx = add <4 x i32> %i.ak, %i.aj
  %bin.rdx194 = add <4 x i32> %i.al, %bin.rdx
  %bin.rdx195 = add <4 x i32> %i.am, %bin.rdx194
  %i.ao = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx195) ; 3 uses
  %cmp.n196 = icmp eq i64 %i.t, %n.vec182
  br i1 %cmp.n196, label %._crit_edge.i.i, label %vec.epilog.iter.check202

vec.epilog.iter.check202:                         ; preds = %middle.block193
  %min.epilog.iters.check203 = icmp eq i64 %n.mod.vf181, 0
  br i1 %min.epilog.iters.check203, label %.lr.ph.i.i.preheader, label %vec.epilog.ph204, !prof !261

vec.epilog.ph204:                                 ; preds = %vector.main.loop.iter.check178, %vec.epilog.iter.check202
  %vec.epilog.resume.val197 = phi i64 [ %n.vec182, %vec.epilog.iter.check202 ], [ 0, %vector.main.loop.iter.check178 ]
  %bc.merge.rdx = phi i32 [ %i.ao, %vec.epilog.iter.check202 ], [ 0, %vector.main.loop.iter.check178 ]
  %n.vec206 = and i64 %i.t, 576460752303423484    ; 3 uses
  %i.ap = shl i64 %n.vec206, 6                    ; 2 uses
  %i.aq = or disjoint i64 %i.ap, 64
  %i.ar = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body207

vec.epilog.vector.body207:                        ; preds = %vec.epilog.vector.body207, %vec.epilog.ph204
  %index208 = phi i64 [ %vec.epilog.resume.val197, %vec.epilog.ph204 ], [ %index.next211, %vec.epilog.vector.body207 ] ; 2 uses
  %vec.phi209 = phi <4 x i32> [ %i.ar, %vec.epilog.ph204 ], [ %i.aw, %vec.epilog.vector.body207 ]
  %i.as = shl nuw nsw i64 %index208, 3
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 %i.as
  %wide.load210 = load <4 x i64>, ptr %i.at, align 8, !tbaa !185
  %i.au = tail call range(i64 0, 65) <4 x i64> @llvm.ctpop.v4i64(<4 x i64> %wide.load210)
  %i.av = trunc nuw nsw <4 x i64> %i.au to <4 x i32>
  %i.aw = add <4 x i32> %vec.phi209, %i.av        ; 2 uses
  %index.next211 = add nuw i64 %index208, 4       ; 2 uses
  %i.ax = icmp eq i64 %index.next211, %n.vec206
  br i1 %i.ax, label %vec.epilog.middle.block212, label %vec.epilog.vector.body207, !llvm.loop !707

vec.epilog.middle.block212:                       ; preds = %vec.epilog.vector.body207
  %i.ay = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.aw) ; 2 uses
  %cmp.n213 = icmp eq i64 %i.t, %n.vec206
  br i1 %cmp.n213, label %._crit_edge.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check200, %vec.epilog.iter.check202, %vec.epilog.middle.block212
  %indvars.iv84.ph = phi i64 [ 0, %iter.check200 ], [ %i.u, %vec.epilog.iter.check202 ], [ %i.ap, %vec.epilog.middle.block212 ]
  %indvars.iv82.ph = phi i64 [ 64, %iter.check200 ], [ %i.v, %vec.epilog.iter.check202 ], [ %i.aq, %vec.epilog.middle.block212 ]
  %.ph = phi i32 [ 0, %iter.check200 ], [ %i.ao, %vec.epilog.iter.check202 ], [ %i.ay, %vec.epilog.middle.block212 ]
  br label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %middle.block193, %vec.epilog.middle.block212, %bb.d
  %.1.i = phi i32 [ 0, %bb.d ], [ %i.ay, %vec.epilog.middle.block212 ], [ %i.ao, %middle.block193 ], [ %i.bf, %.lr.ph.i.i ] ; 2 uses
  %.not34.i.i = icmp eq i32 %4, %i.p
  br i1 %.not34.i.i, label %_ZN8facebook5velox4bits9countBitsEPKmii.exit, label %.sink.split.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %indvars.iv84 = phi i64 [ %indvars.iv.next85, %.lr.ph.i.i ], [ %indvars.iv84.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %indvars.iv82 = phi i64 [ %indvars.iv.next83, %.lr.ph.i.i ], [ %indvars.iv82.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.az = phi i32 [ %i.bf, %.lr.ph.i.i ], [ %.ph, %.lr.ph.i.i.preheader ]
  %i.ba = lshr exact i64 %indvars.iv84, 3
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 %i.ba
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !185
  %i.bd = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.bc)
  %i.be = trunc nuw nsw i64 %i.bd to i32
  %i.bf = add nuw nsw i32 %i.az, %i.be            ; 2 uses
  %indvars.iv.next83 = add nuw nsw i64 %indvars.iv82, 64
  %.not33.i.i.not = icmp samesign ult i64 %indvars.iv82, %i.q
  %indvars.iv.next85 = add nuw nsw i64 %indvars.iv84, 64
  br i1 %.not33.i.i.not, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !708

.sink.split.i.i:                                  ; preds = %._crit_edge.i.i
  %i.bg = lshr i32 %4, 6
  %i.bh = and i32 %4, 63
  %i.bi = zext nneg i32 %i.bh to i64
  %notmask.i36.i.i = shl nsw i64 -1, %i.bi
  %i.bj = xor i64 %notmask.i36.i.i, -1
  %i.bk = zext nneg i32 %i.bg to i64
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.bk
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !185
  %i.bn = and i64 %i.bm, %i.bj
  %i.bo = tail call range(i64 0, 64) i64 @llvm.ctpop.i64(i64 %i.bn)
  %i.bp = trunc nuw nsw i64 %i.bo to i32
  %i.bq = add nsw i32 %.1.i, %i.bp
  br label %_ZN8facebook5velox4bits9countBitsEPKmii.exit

_ZN8facebook5velox4bits9countBitsEPKmii.exit:     ; preds = %bb.c, %._crit_edge.i.i, %.sink.split.i.i
  %.3.i = phi i32 [ %i.bq, %.sink.split.i.i ], [ %.1.i, %._crit_edge.i.i ], [ 0, %bb.c ]
  %i.br = sub nsw i32 %4, %.3.i
  br label %bb.r

bb.e:                                             ; preds = %bb.a
  %i.bs = icmp eq i32 %4, 0
  %i.bt = select i1 %i.bs, i32 %1, i32 %4         ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !676
  %i.bw = icmp eq ptr %i.bv, null
  %i.bx = add nsw i32 %i.bt, %2                   ; 2 uses
  %i.by = add nsw i32 %i.bx, 8
  tail call void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(94) %5, i32 noundef %i.by, i1 noundef zeroext false)
  %i.bz = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  %.pre = load ptr, ptr %i.bz, align 8, !tbaa !232 ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.pre, i64 44
  %i.cb = load i8, ptr %i.ca, align 4, !tbaa !233 ; 2 uses
  br i1 %i.bw, label %bb.f, label %_ZN8facebook5velox4bits8fillBitsEPmiib.exit

bb.f:                                             ; preds = %bb.e
  %i.cc = and i8 %i.cb, 2
  %.not.i = icmp eq i8 %i.cc, 0
  br i1 %.not.i, label %_ZNK8facebook5velox6Buffer9asMutableImEEPT_v.exit, label %bb.g, !prof !47

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #39
  unreachable

_ZNK8facebook5velox6Buffer9asMutableImEEPT_v.exit: ; preds = %bb.f
  %i.cd = getelementptr inbounds nuw i8, ptr %.pre, i64 16
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !238 ; 2 uses
  %.not.i.i54 = icmp sgt i32 %2, 0
  br i1 %.not.i.i54, label %bb.h, label %_ZN8facebook5velox4bits8fillBitsEPmiib.exit

bb.h:                                             ; preds = %_ZNK8facebook5velox6Buffer9asMutableImEEPT_v.exit
  %i.cf = and i32 %2, 2147483584                  ; 2 uses
  %.not3347.i.i = icmp eq i32 %i.cf, 0
  br i1 %.not3347.i.i, label %._crit_edge.i.i57, label %.lr.ph.i.i55.preheader

.lr.ph.i.i55.preheader:                           ; preds = %bb.h
  %i.cg = add nsw i32 %2, -64
  %i.ch = lshr i32 %i.cg, 3
  %i.ci = and i32 %i.ch, 536870904
  %narrow = add nuw nsw i32 %i.ci, 8
  %i.cj = zext nneg i32 %narrow to i64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ce, i8 -1, i64 %i.cj, i1 false), !tbaa !185
  br label %._crit_edge.i.i57

._crit_edge.i.i57:                                ; preds = %.lr.ph.i.i55.preheader, %bb.h
  %.not34.i.i58 = icmp eq i32 %2, %i.cf
  br i1 %.not34.i.i58, label %_ZN8facebook5velox4bits8fillBitsEPmiib.exit, label %bb.i

bb.i:                                             ; preds = %._crit_edge.i.i57
  %i.ck = lshr i32 %2, 6
  %i.cl = and i32 %2, 63
  %i.cm = zext nneg i32 %i.cl to i64
  %notmask.i37.i.i = shl nsw i64 -1, %i.cm
  %i.cn = xor i64 %notmask.i37.i.i, -1
  %i.co = zext nneg i32 %i.ck to i64
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %i.co ; 2 uses
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !185
  %i.cr = or i64 %i.cq, %i.cn
  store i64 %i.cr, ptr %i.cp, align 8, !tbaa !185
  br label %_ZN8facebook5velox4bits8fillBitsEPmiib.exit

_ZN8facebook5velox4bits8fillBitsEPmiib.exit:      ; preds = %bb.e, %bb.i, %._crit_edge.i.i57, %_ZNK8facebook5velox6Buffer9asMutableImEEPT_v.exit
  %i.cs = and i8 %i.cb, 2
  %.not.i60 = icmp eq i8 %i.cs, 0
  br i1 %.not.i60, label %_ZNK8facebook5velox6Buffer9asMutableIhEEPT_v.exit, label %bb.j, !prof !47

bb.j:                                             ; preds = %_ZN8facebook5velox4bits8fillBitsEPmiib.exit
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableIhEEPT_vE18veloxCheckFailArgs) #39
  unreachable

_ZNK8facebook5velox6Buffer9asMutableIhEEPT_v.exit: ; preds = %_ZN8facebook5velox4bits8fillBitsEPmiib.exit
  %i.ct = getelementptr inbounds nuw i8, ptr %.pre, i64 16
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !238
  %i.cv = sext i32 %2 to i64                      ; 3 uses
  %i.cw = add nsw i64 %i.cv, 7                    ; 2 uses
  %i.cx = lshr i64 %i.cw, 3
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.cx ; 14 uses
  %i.cz = tail call noundef i64 @_ZN8facebook5velox10BaseVector8byteSizeIbEEmi(i32 noundef %1) ; 5 uses
  %i.da = trunc i64 %i.cz to i32                  ; 3 uses
  %i.db = load ptr, ptr %0, align 8, !tbaa !17
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 64
  %i.dd = load ptr, ptr %i.dc, align 8
  tail call void %i.dd(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %i.cy, i32 noundef %i.da)
  %i.de = icmp sgt i32 %i.da, 0
  br i1 %i.de, label %iter.check, label %_ZN8facebook5velox4bits11reverseBitsEPhi.exit

iter.check:                                       ; preds = %_ZNK8facebook5velox6Buffer9asMutableIhEEPT_v.exit
  %wide.trip.count.i = and i64 %i.cz, 2147483647  ; 5 uses
  %min.iters.check = icmp samesign ult i64 %wide.trip.count.i, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check99 = icmp samesign ult i64 %wide.trip.count.i, 128
  br i1 %min.iters.check99, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.cz, 120
  %n.vec = and i64 %i.cz, 2147483520              ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.cy, i64 %index ; 5 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 32 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.df, i64 64 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.df, i64 96 ; 2 uses
  %wide.load = load <32 x i8>, ptr %i.df, align 1, !tbaa !40
  %wide.load100 = load <32 x i8>, ptr %i.dg, align 1, !tbaa !40
  %wide.load101 = load <32 x i8>, ptr %i.dh, align 1, !tbaa !40
  %wide.load102 = load <32 x i8>, ptr %i.di, align 1, !tbaa !40
  %i.dj = tail call <32 x i8> @llvm.bitreverse.v32i8(<32 x i8> %wide.load)
  %i.dk = tail call <32 x i8> @llvm.bitreverse.v32i8(<32 x i8> %wide.load100)
  %i.dl = tail call <32 x i8> @llvm.bitreverse.v32i8(<32 x i8> %wide.load101)
  %i.dm = tail call <32 x i8> @llvm.bitreverse.v32i8(<32 x i8> %wide.load102)
  store <32 x i8> %i.dj, ptr %i.df, align 1, !tbaa !40
  store <32 x i8> %i.dk, ptr %i.dg, align 1, !tbaa !40
  store <32 x i8> %i.dl, ptr %i.dh, align 1, !tbaa !40
  store <32 x i8> %i.dm, ptr %i.di, align 1, !tbaa !40
  %index.next = add nuw i64 %index, 128           ; 2 uses
  %i.dn = icmp eq i64 %index.next, %n.vec
  br i1 %i.dn, label %middle.block, label %vector.body, !llvm.loop !709

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %wide.trip.count.i, %n.vec
  br i1 %cmp.n, label %_ZN8facebook5velox4bits11reverseBitsEPhi.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !358

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec104 = and i64 %i.cz, 2147483640           ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index105 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next107, %vec.epilog.vector.body ] ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.cy, i64 %index105 ; 2 uses
  %wide.load106 = load <8 x i8>, ptr %i.do, align 1, !tbaa !40
  %i.dp = tail call <8 x i8> @llvm.bitreverse.v8i8(<8 x i8> %wide.load106)
  store <8 x i8> %i.dp, ptr %i.do, align 1, !tbaa !40
  %index.next107 = add nuw i64 %index105, 8       ; 2 uses
  %i.dq = icmp eq i64 %index.next107, %n.vec104
  br i1 %i.dq, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !710

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n108 = icmp eq i64 %wide.trip.count.i, %n.vec104
  br i1 %cmp.n108, label %_ZN8facebook5velox4bits11reverseBitsEPhi.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec104, %vec.epilog.middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.cy, i64 %indvars.iv.i ; 2 uses
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !40
  %rev.i = tail call i8 @llvm.bitreverse.i8(i8 %i.ds)
  store i8 %rev.i, ptr %i.dr, align 1, !tbaa !40
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN8facebook5velox4bits11reverseBitsEPhi.exit, label %.lr.ph.i, !llvm.loop !711

_ZN8facebook5velox4bits11reverseBitsEPhi.exit:    ; preds = %.lr.ph.i, %middle.block, %vec.epilog.middle.block, %_ZNK8facebook5velox6Buffer9asMutableIhEEPT_v.exit
  %i.dt = shl i32 %i.da, 3                        ; 7 uses
  %.not27.i = icmp slt i32 %i.dt, 64
  br i1 %.not27.i, label %.preheader26.i, label %iter.check127

iter.check127:                                    ; preds = %_ZN8facebook5velox4bits11reverseBitsEPhi.exit
  %i.du = zext nneg i32 %i.dt to i64              ; 2 uses
  %i.dv = or disjoint i64 %i.du, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %i.dv, i64 128)
  %i.dw = add nsw i64 %umax, -65                  ; 3 uses
  %i.dx = lshr i64 %i.dw, 6
  %i.dy = add nuw nsw i64 %i.dx, 1                ; 5 uses
  %min.iters.check109 = icmp ult i64 %i.dw, 192
  br i1 %min.iters.check109, label %.lr.ph.i62.preheader, label %vector.main.loop.iter.check110

vector.main.loop.iter.check110:                   ; preds = %iter.check127
  %min.iters.check111 = icmp ult i64 %i.dw, 960
  br i1 %min.iters.check111, label %vec.epilog.ph131, label %vector.ph112

vector.ph112:                                     ; preds = %vector.main.loop.iter.check110
  %n.mod.vf113 = and i64 %i.dy, 12
  %n.vec114 = and i64 %i.dy, 576460752303423472   ; 4 uses
  %i.dz = shl i64 %n.vec114, 6                    ; 2 uses
  %i.ea = or disjoint i64 %i.dz, 64
  br label %vector.body115

vector.body115:                                   ; preds = %vector.body115, %vector.ph112
  %index116 = phi i64 [ 0, %vector.ph112 ], [ %index.next121, %vector.body115 ] ; 2 uses
  %i.eb = shl nuw nsw i64 %index116, 3
  %i.ec = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.eb ; 5 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 32 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ec, i64 64 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ec, i64 96 ; 2 uses
  %wide.load117 = load <4 x i64>, ptr %i.ec, align 8, !tbaa !185
  %wide.load118 = load <4 x i64>, ptr %i.ed, align 8, !tbaa !185
  %wide.load119 = load <4 x i64>, ptr %i.ee, align 8, !tbaa !185
  %wide.load120 = load <4 x i64>, ptr %i.ef, align 8, !tbaa !185
  %i.eg = xor <4 x i64> %wide.load117, splat (i64 -1)
  %i.eh = xor <4 x i64> %wide.load118, splat (i64 -1)
  %i.ei = xor <4 x i64> %wide.load119, splat (i64 -1)
  %i.ej = xor <4 x i64> %wide.load120, splat (i64 -1)
  store <4 x i64> %i.eg, ptr %i.ec, align 8, !tbaa !185
  store <4 x i64> %i.eh, ptr %i.ed, align 8, !tbaa !185
  store <4 x i64> %i.ei, ptr %i.ee, align 8, !tbaa !185
  store <4 x i64> %i.ej, ptr %i.ef, align 8, !tbaa !185
  %index.next121 = add nuw i64 %index116, 16      ; 2 uses
  %i.ek = icmp eq i64 %index.next121, %n.vec114
  br i1 %i.ek, label %middle.block122, label %vector.body115, !llvm.loop !712

middle.block122:                                  ; preds = %vector.body115
  %cmp.n123 = icmp eq i64 %i.dy, %n.vec114
  br i1 %cmp.n123, label %.preheader26.loopexit.i, label %vec.epilog.iter.check129

vec.epilog.iter.check129:                         ; preds = %middle.block122
  %min.epilog.iters.check130 = icmp eq i64 %n.mod.vf113, 0
  br i1 %min.epilog.iters.check130, label %.lr.ph.i62.preheader, label %vec.epilog.ph131, !prof !261

vec.epilog.ph131:                                 ; preds = %vector.main.loop.iter.check110, %vec.epilog.iter.check129
  %vec.epilog.resume.val124 = phi i64 [ %n.vec114, %vec.epilog.iter.check129 ], [ 0, %vector.main.loop.iter.check110 ]
  %n.vec133 = and i64 %i.dy, 576460752303423484   ; 3 uses
  %i.el = shl i64 %n.vec133, 6                    ; 2 uses
  %i.em = or disjoint i64 %i.el, 64
  br label %vec.epilog.vector.body134

vec.epilog.vector.body134:                        ; preds = %vec.epilog.vector.body134, %vec.epilog.ph131
  %index135 = phi i64 [ %vec.epilog.resume.val124, %vec.epilog.ph131 ], [ %index.next137, %vec.epilog.vector.body134 ] ; 2 uses
  %i.en = shl nuw nsw i64 %index135, 3
  %i.eo = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.en ; 2 uses
  %wide.load136 = load <4 x i64>, ptr %i.eo, align 8, !tbaa !185
  %i.ep = xor <4 x i64> %wide.load136, splat (i64 -1)
  store <4 x i64> %i.ep, ptr %i.eo, align 8, !tbaa !185
  %index.next137 = add nuw i64 %index135, 4       ; 2 uses
  %i.eq = icmp eq i64 %index.next137, %n.vec133
  br i1 %i.eq, label %vec.epilog.middle.block138, label %vec.epilog.vector.body134, !llvm.loop !713

vec.epilog.middle.block138:                       ; preds = %vec.epilog.vector.body134
  %cmp.n139 = icmp eq i64 %i.dy, %n.vec133
  br i1 %cmp.n139, label %.preheader26.loopexit.i, label %.lr.ph.i62.preheader

.lr.ph.i62.preheader:                             ; preds = %iter.check127, %vec.epilog.iter.check129, %vec.epilog.middle.block138
  %indvars.iv36.i.ph = phi i64 [ 0, %iter.check127 ], [ %i.dz, %vec.epilog.iter.check129 ], [ %i.el, %vec.epilog.middle.block138 ]
  %indvars.iv.i63.ph = phi i64 [ 64, %iter.check127 ], [ %i.ea, %vec.epilog.iter.check129 ], [ %i.em, %vec.epilog.middle.block138 ]
  br label %.lr.ph.i62

.preheader26.loopexit.i:                          ; preds = %.lr.ph.i62, %vec.epilog.middle.block138, %middle.block122
  %i.er = and i32 %i.dt, 2147483584
  br label %.preheader26.i

.preheader26.i:                                   ; preds = %.preheader26.loopexit.i, %_ZN8facebook5velox4bits11reverseBitsEPhi.exit
  %.0.lcssa.i = phi i32 [ 0, %_ZN8facebook5velox4bits11reverseBitsEPhi.exit ], [ %i.er, %.preheader26.loopexit.i ] ; 3 uses
  %.not2429.i.not = icmp slt i32 %.0.lcssa.i, %i.dt
  br i1 %.not2429.i.not, label %iter.check161, label %.preheader.i

iter.check161:                                    ; preds = %.preheader26.i
  %i.es = zext nneg i32 %.0.lcssa.i to i64        ; 8 uses
  %i.et = or disjoint i64 %i.es, 8                ; 3 uses
  %i.eu = zext nneg i32 %i.dt to i64              ; 2 uses
  %i.ev = or disjoint i64 %i.es, 8
  %umax142 = tail call i64 @llvm.umax.i64(i64 %i.eu, i64 %i.ev)
  %i.ew = xor i64 %i.es, -1
  %i.ex = add nsw i64 %umax142, %i.ew             ; 3 uses
  %i.ey = lshr i64 %i.ex, 3
  %i.ez = add nuw nsw i64 %i.ey, 1                ; 5 uses
  %min.iters.check143 = icmp ult i64 %i.ex, 120
  br i1 %min.iters.check143, label %.lr.ph31.i.preheader, label %vector.main.loop.iter.check144

vector.main.loop.iter.check144:                   ; preds = %iter.check161
  %min.iters.check145 = icmp ult i64 %i.ex, 1016
  br i1 %min.iters.check145, label %vec.epilog.ph165, label %vector.ph146

vector.ph146:                                     ; preds = %vector.main.loop.iter.check144
  %n.mod.vf147 = and i64 %i.ez, 112
  %n.vec148 = and i64 %i.ez, 4611686018427387776  ; 4 uses
  %i.fa = shl i64 %n.vec148, 3                    ; 2 uses
  %i.fb = add i64 %i.fa, %i.es
  %i.fc = add i64 %i.et, %i.fa                    ; 2 uses
  %i.fd = lshr exact i64 %i.es, 3
  %6 = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.fd
  br label %vector.body149

vector.body149:                                   ; preds = %vector.body149, %vector.ph146
  %index150 = phi i64 [ 0, %vector.ph146 ], [ %index.next155, %vector.body149 ] ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %6, i64 %index150 ; 5 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 32 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fe, i64 64 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fe, i64 96 ; 2 uses
  %wide.load151 = load <32 x i8>, ptr %i.fe, align 1, !tbaa !40
  %wide.load152 = load <32 x i8>, ptr %i.ff, align 1, !tbaa !40
  %wide.load153 = load <32 x i8>, ptr %i.fg, align 1, !tbaa !40
  %wide.load154 = load <32 x i8>, ptr %i.fh, align 1, !tbaa !40
  %i.fi = xor <32 x i8> %wide.load151, splat (i8 -1)
  %i.fj = xor <32 x i8> %wide.load152, splat (i8 -1)
  %i.fk = xor <32 x i8> %wide.load153, splat (i8 -1)
  %i.fl = xor <32 x i8> %wide.load154, splat (i8 -1)
  store <32 x i8> %i.fi, ptr %i.fe, align 1, !tbaa !40
  store <32 x i8> %i.fj, ptr %i.ff, align 1, !tbaa !40
  store <32 x i8> %i.fk, ptr %i.fg, align 1, !tbaa !40
  store <32 x i8> %i.fl, ptr %i.fh, align 1, !tbaa !40
  %index.next155 = add nuw i64 %index150, 128     ; 2 uses
  %i.fm = icmp eq i64 %index.next155, %n.vec148
  br i1 %i.fm, label %middle.block156, label %vector.body149, !llvm.loop !714

middle.block156:                                  ; preds = %vector.body149
  %ind.escape = add nsw i64 %i.fc, -8
  %cmp.n157 = icmp eq i64 %i.ez, %n.vec148
  br i1 %cmp.n157, label %.preheader.i.loopexit, label %vec.epilog.iter.check163

vec.epilog.iter.check163:                         ; preds = %middle.block156
  %min.epilog.iters.check164 = icmp eq i64 %n.mod.vf147, 0
  br i1 %min.epilog.iters.check164, label %.lr.ph31.i.preheader, label %vec.epilog.ph165, !prof !364

vec.epilog.ph165:                                 ; preds = %vector.main.loop.iter.check144, %vec.epilog.iter.check163
  %vec.epilog.resume.val158 = phi i64 [ %n.vec148, %vec.epilog.iter.check163 ], [ 0, %vector.main.loop.iter.check144 ]
  %n.vec167 = and i64 %i.ez, 4611686018427387888  ; 3 uses
  %i.fn = shl i64 %n.vec167, 3                    ; 2 uses
  %i.fo = add i64 %i.fn, %i.es
  %i.fp = add i64 %i.et, %i.fn                    ; 2 uses
  %i.fq = lshr exact i64 %i.es, 3
  %7 = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.fq
  br label %vec.epilog.vector.body168

vec.epilog.vector.body168:                        ; preds = %vec.epilog.vector.body168, %vec.epilog.ph165
  %index169 = phi i64 [ %vec.epilog.resume.val158, %vec.epilog.ph165 ], [ %index.next171, %vec.epilog.vector.body168 ] ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %7, i64 %index169 ; 2 uses
  %wide.load170 = load <16 x i8>, ptr %i.fr, align 1, !tbaa !40
  %i.fs = xor <16 x i8> %wide.load170, splat (i8 -1)
  store <16 x i8> %i.fs, ptr %i.fr, align 1, !tbaa !40
  %index.next171 = add nuw i64 %index169, 16      ; 2 uses
  %i.ft = icmp eq i64 %index.next171, %n.vec167
  br i1 %i.ft, label %vec.epilog.middle.block172, label %vec.epilog.vector.body168, !llvm.loop !715

vec.epilog.middle.block172:                       ; preds = %vec.epilog.vector.body168
  %ind.escape173 = add nsw i64 %i.fp, -8
  %cmp.n174 = icmp eq i64 %i.ez, %n.vec167
  br i1 %cmp.n174, label %.preheader.i.loopexit, label %.lr.ph31.i.preheader

.lr.ph31.i.preheader:                             ; preds = %iter.check161, %vec.epilog.iter.check163, %vec.epilog.middle.block172
  %indvars.iv77.ph = phi i64 [ %i.es, %iter.check161 ], [ %i.fb, %vec.epilog.iter.check163 ], [ %i.fo, %vec.epilog.middle.block172 ]
  %indvars.iv.ph = phi i64 [ %i.et, %iter.check161 ], [ %i.fc, %vec.epilog.iter.check163 ], [ %i.fp, %vec.epilog.middle.block172 ]
  br label %.lr.ph31.i

.lr.ph.i62:                                       ; preds = %.lr.ph.i62.preheader, %.lr.ph.i62
  %indvars.iv36.i = phi i64 [ %indvars.iv.next37.i, %.lr.ph.i62 ], [ %indvars.iv36.i.ph, %.lr.ph.i62.preheader ] ; 2 uses
  %indvars.iv.i63 = phi i64 [ %indvars.iv.next.i64, %.lr.ph.i62 ], [ %indvars.iv.i63.ph, %.lr.ph.i62.preheader ]
  %i.fu = lshr exact i64 %indvars.iv36.i, 3
  %i.fv = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.fu ; 2 uses
  %i.fw = load i64, ptr %i.fv, align 8, !tbaa !185
  %i.fx = xor i64 %i.fw, -1
  store i64 %i.fx, ptr %i.fv, align 8, !tbaa !185
  %indvars.iv.next.i64 = add nuw nsw i64 %indvars.iv.i63, 64 ; 2 uses
  %.not.i65 = icmp samesign ugt i64 %indvars.iv.next.i64, %i.du
  %indvars.iv.next37.i = add nuw nsw i64 %indvars.iv36.i, 64
  br i1 %.not.i65, label %.preheader26.loopexit.i, label %.lr.ph.i62, !llvm.loop !716

.preheader.i.loopexit:                            ; preds = %.lr.ph31.i, %vec.epilog.middle.block172, %middle.block156
  %indvars.iv.lcssa = phi i64 [ %ind.escape173, %vec.epilog.middle.block172 ], [ %ind.escape, %middle.block156 ], [ %indvars.iv, %.lr.ph31.i ]
  %i.fy = trunc nuw nsw i64 %indvars.iv.lcssa to i32
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.loopexit, %.preheader26.i
  %.1.lcssa.i = phi i32 [ %.0.lcssa.i, %.preheader26.i ], [ %i.fy, %.preheader.i.loopexit ] ; 2 uses
  %i.fz = icmp slt i32 %.1.lcssa.i, %i.dt
  br i1 %i.fz, label %.lr.ph34.preheader.i, label %_ZN8facebook5velox4bits6negateEPmi.exit

.lr.ph34.preheader.i:                             ; preds = %.preheader.i
  %i.ga = zext nneg i32 %.1.lcssa.i to i64
  %wide.trip.count = zext i32 %i.dt to i64
  br label %.lr.ph34.i

.lr.ph31.i:                                       ; preds = %.lr.ph31.i.preheader, %.lr.ph31.i
  %indvars.iv77 = phi i64 [ %indvars.iv.next78, %.lr.ph31.i ], [ %indvars.iv77.ph, %.lr.ph31.i.preheader ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph31.i ], [ %indvars.iv.ph, %.lr.ph31.i.preheader ] ; 3 uses
  %i.gb = lshr exact i64 %indvars.iv77, 3
  %i.gc = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.gb ; 2 uses
  %i.gd = load i8, ptr %i.gc, align 1, !tbaa !40
  %i.ge = xor i8 %i.gd, -1
  store i8 %i.ge, ptr %i.gc, align 1, !tbaa !40
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 8
  %.not24.i.not = icmp samesign ult i64 %indvars.iv, %i.eu
  %indvars.iv.next78 = add nuw nsw i64 %indvars.iv77, 8
  br i1 %.not24.i.not, label %.lr.ph31.i, label %.preheader.i.loopexit, !llvm.loop !717

.lr.ph34.i:                                       ; preds = %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i, %.lr.ph34.preheader.i
  %indvars.iv41.i = phi i64 [ %i.ga, %.lr.ph34.preheader.i ], [ %indvars.iv.next42.i, %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i ] ; 6 uses
  %i.gf = lshr i64 %indvars.iv41.i, 6
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %i.gf
  %i.gh = load i64, ptr %i.gg, align 8, !tbaa !185
  %i.gi = and i64 %indvars.iv41.i, 63
  %i.gj = shl nuw i64 1, %i.gi
  %i.gk = and i64 %i.gj, %i.gh
  %.not25.i = icmp eq i64 %i.gk, 0
  %i.gl = lshr i64 %indvars.iv41.i, 3
  %i.gm = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.gl ; 2 uses
  %i.gn = load i8, ptr %i.gm, align 1, !tbaa !40  ; 2 uses
  br i1 %.not25.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.lr.ph34.i
  %i.go = trunc i64 %indvars.iv41.i to i8
  %i.gp = and i8 %i.go, 7
  %i.gq = shl nuw i8 1, %i.gp
  %i.gr = or i8 %i.gq, %i.gn
  br label %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i

bb.l:                                             ; preds = %.lr.ph34.i
  %i.gs = and i64 %indvars.iv41.i, 7
  %i.gt = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.gs
  %i.gu = load i8, ptr %i.gt, align 1, !tbaa !40
  %i.gv = and i8 %i.gu, %i.gn
  br label %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i

_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i:  ; preds = %bb.l, %bb.k
  %.sink.i.i = phi i8 [ %i.gv, %bb.l ], [ %i.gr, %bb.k ]
  store i8 %.sink.i.i, ptr %i.gm, align 1, !tbaa !40
  %indvars.iv.next42.i = add nuw nsw i64 %indvars.iv41.i, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next42.i, %wide.trip.count
  br i1 %exitcond.not, label %_ZN8facebook5velox4bits6negateEPmi.exit, label %.lr.ph34.i, !llvm.loop !368

_ZN8facebook5velox4bits6negateEPmi.exit:          ; preds = %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i, %.preheader.i
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZN8facebook5velox4bits6negateEPmi.exit
  tail call void @_ZN8facebook5velox4bits11scatterBitsEiiPKcPKmPc(i32 noundef %1, i32 noundef %4, ptr noundef %i.cy, ptr noundef nonnull %3, ptr noundef %i.cy)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_ZN8facebook5velox4bits6negateEPmi.exit
  %i.gw = and i64 %i.cw, -8                       ; 2 uses
  %i.gx = icmp ugt i64 %i.gw, %i.cv
  br i1 %i.gx, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.gy = load ptr, ptr %i.bz, align 8, !tbaa !232 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 44
  %i.ha = load i8, ptr %i.gz, align 4, !tbaa !233
  %i.hb = and i8 %i.ha, 2
  %.not.i66 = icmp eq i8 %i.hb, 0
  br i1 %.not.i66, label %_ZNK8facebook5velox6Buffer9asMutableImEEPT_v.exit69, label %bb.p, !prof !47

bb.p:                                             ; preds = %bb.o
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #39
  unreachable

_ZNK8facebook5velox6Buffer9asMutableImEEPT_v.exit69: ; preds = %bb.o
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gy, i64 16
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !238 ; 2 uses
  %i.he = sext i32 %i.bt to i64
  tail call void @_ZN8facebook5velox4bits8copyBitsEPKmmPmmm(ptr noundef %i.hd, i64 noundef %i.gw, ptr noundef %i.hd, i64 noundef %i.cv, i64 noundef %i.he)
  br label %bb.q

bb.q:                                             ; preds = %_ZNK8facebook5velox6Buffer9asMutableImEEPT_v.exit69, %bb.n
  %i.hf = tail call noundef i32 @_ZN8facebook5velox10BaseVector10countNullsERKN5boost13intrusive_ptrINS0_6BufferEEEii(ptr noundef nonnull align 8 dereferenceable(8) %i.bz, i32 noundef %2, i32 noundef %i.bx)
  br label %bb.r

bb.r:                                             ; preds = %.thread, %_ZN8facebook5velox4bits9countBitsEPKmii.exit, %bb.q
  %.0 = phi i32 [ %i.hf, %bb.q ], [ %i.br, %_ZN8facebook5velox4bits9countBitsEPKmii.exit ], [ 0, %.thread ]
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox10FlatVectorIbE13mutableValuesEi(ptr dead_on_unwind noalias writable sret(%"class.boost::intrusive_ptr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(176) %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::optional.258", align 1 ; 5 uses
  %4 = alloca %"class.std::optional.258", align 1 ; 5 uses
  %5 = alloca %"class.boost::intrusive_ptr", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !164
  %i.c = tail call noundef i64 @_ZN8facebook5velox10BaseVector8byteSizeIbEEmi(i32 noundef %i.b) ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 7 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !232  ; 3 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %_ZN8facebook5velox13AlignedBuffer8allocateIbEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_Eb.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 44
  %i.g = load i8, ptr %i.f, align 4, !tbaa !233
  %i.h = and i8 %i.g, 2
  %.not22 = icmp eq i8 %i.h, 0
  br i1 %.not22, label %bb.c, label %_ZN8facebook5velox13AlignedBuffer8allocateIbEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_Eb.exit

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.j = load atomic i32, ptr %i.i acquire, align 4
  %i.k = icmp eq i32 %i.j, 1
  br i1 %i.k, label %bb.d, label %_ZN8facebook5velox13AlignedBuffer8allocateIbEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_Eb.exit

bb.d:                                             ; preds = %bb.c
  %i.l = load ptr, ptr %i.d, align 8, !tbaa !232
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load i64, ptr %i.m, align 8, !tbaa !460
  %i.o = icmp ult i64 %i.n, %i.c
  br i1 %i.o, label %_ZN8facebook5velox13AlignedBuffer10reallocateIbEEvPN5boost13intrusive_ptrINS0_6BufferEEEmRKSt8optionalIT_E.exit, label %bb.o

_ZN8facebook5velox13AlignedBuffer10reallocateIbEEvPN5boost13intrusive_ptrINS0_6BufferEEEmRKSt8optionalIT_E.exit: ; preds = %bb.d
  %i.p = load i32, ptr %i.a, align 8, !tbaa !164
  %i.q = sext i32 %i.p to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  store i8 0, ptr %4, align 1, !tbaa !40
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 1
  store i8 1, ptr %i.r, align 1, !tbaa !244
  %i.s = add nsw i64 %i.q, 7
  %i.t = lshr i64 %i.s, 3
  call void @_ZN8facebook5velox13AlignedBuffer10reallocateIcEEvPN5boost13intrusive_ptrINS0_6BufferEEEmRKSt8optionalIT_E(ptr noundef nonnull %i.d, i64 noundef %i.t, ptr noundef nonnull align 1 dereferenceable(2) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %bb.o

_ZN8facebook5velox13AlignedBuffer8allocateIbEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_Eb.exit: ; preds = %bb.c, %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.u = load i32, ptr %i.a, align 8, !tbaa !164
  %i.v = sext i32 %i.u to i64
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !663
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22, !noalias !718
  store i8 0, ptr %3, align 1, !tbaa !40, !noalias !718
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 1
  store i8 1, ptr %i.y, align 1, !tbaa !244, !noalias !718
  %i.z = add nsw i64 %i.v, 7
  %i.aa = lshr i64 %i.z, 3
  call void @_ZN8facebook5velox13AlignedBuffer8allocateIcEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_Eb(ptr dead_on_unwind nonnull writable sret(%"class.boost::intrusive_ptr") align 8 %5, i64 noundef %i.aa, ptr noundef %i.x, ptr noundef nonnull align 1 dereferenceable(2) %3, i1 noundef zeroext false)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22, !noalias !718
  %i.ab = load ptr, ptr %i.d, align 8, !tbaa !232 ; 3 uses
  %.not23 = icmp eq ptr %i.ab, null
  br i1 %.not23, label %bb.i, label %bb.e

bb.e:                                             ; preds = %_ZN8facebook5velox13AlignedBuffer8allocateIbEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_Eb.exit
end_hunk_2
begin_hunk_3_@_ZN8facebook5velox10FlatVectorImEC2EPNS0_6memory10MemoryPoolERKSt10shared_ptrIKNS0_4TypeEEN5boost13intrusive_ptrINS0_6BufferEEEiSF_OSt6vectorISF_SaISF_EERKNS0_17SimpleVectorStatsImEESt8optionalIiESP_SO_IbESP_SP_:bb.a
  br label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.ak = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i34 = icmp eq i8 %i.ak, 0
  br i1 %.not.i.i.i34, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.al = add nsw i32 %i.ac, -1
  store i32 %i.al, ptr %i.z, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.am = atomicrmw volatile add ptr %i.z, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i = phi i32 [ %i.ac, %bb.k ], [ %i.am, %bb.l ]
  %i.an = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.an, label %bb.m, label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !36

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.y) #22
  br label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.m
  store ptr getelementptr inbounds nuw inrange(-16, 400) (i8, ptr @_ZTVN8facebook5velox10FlatVectorImEE, i64 16), ptr %0, align 8, !tbaa !17
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 4 uses
  %i.ap = load ptr, ptr %5, align 8, !tbaa !232
  store ptr %i.ap, ptr %i.ao, align 8, !tbaa !232
  store ptr null, ptr %5, align 8, !tbaa !232
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ar = load ptr, ptr %i.ao, align 8, !tbaa !232 ; 2 uses
  %.not = icmp eq ptr %i.ar, null
  br i1 %.not, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !238
  br label %bb.o

bb.o:                                             ; preds = %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.n
  %i.au = phi ptr [ %i.at, %bb.n ], [ null, %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ]
  store ptr %i.au, ptr %i.aq, align 8, !tbaa !2001
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.av, i8 0, i64 24, i1 false)
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %i.aw, align 8, !tbaa !1568
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 184
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, i8 0, i64 16, i1 false)
  %i.ay = load <2 x ptr>, ptr %6, align 8, !tbaa !1622
  store <2 x ptr> %i.ay, ptr %17, align 16, !tbaa !1622
  %i.az = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !1572
  store ptr %i.bb, ptr %i.az, align 16, !tbaa !1572
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  invoke void @_ZN8facebook5velox10FlatVectorImE16setStringBuffersESt6vectorIN5boost13intrusive_ptrINS0_6BufferEEESaIS7_EE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull %17)
          to label %bb.p unwind label %bb.x

bb.p:                                             ; preds = %bb.o
  %i.bc = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.bd = load ptr, ptr %17, align 16, !tbaa !1569 ; 3 uses
  %i.be = load ptr, ptr %i.bc, align 8, !tbaa !1570 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.bd, %i.be
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.p, %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.bt, %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i ], [ %i.bd, %bb.p ] ; 2 uses
  %i.bf = load ptr, ptr %.05.i.i.i, align 8, !tbaa !232 ; 7 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bf, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i.i.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 40
  %i.bh = atomicrmw sub ptr %i.bg, i32 1 acq_rel, align 4
  %i.bi = icmp eq i32 %i.bh, 1
  br i1 %i.bi, label %.sink.split.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i

.sink.split.i.i.i.i.i.i.i:                        ; preds = %bb.q
  %i.bj = load ptr, ptr %i.bf, align 8, !tbaa !17
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 64
  %i.bl = load ptr, ptr %i.bk, align 8
  invoke void %i.bl(ptr noundef nonnull align 8 dereferenceable(64) %i.bf)
          to label %.noexc.i.i.i.i.i.i unwind label %bb.r, !inline_history !246

.noexc.i.i.i.i.i.i:                               ; preds = %.sink.split.i.i.i.i.i.i.i
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !247
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bn, null
  %i.bo = load ptr, ptr %i.bf, align 8, !tbaa !17
  %..i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i, i64 8, i64 48
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 %..i.i.i.i.i.i.i
  %i.bq = load ptr, ptr %i.bp, align 8
  invoke void %i.bq(ptr noundef nonnull align 8 dereferenceable(64) %i.bf)
          to label %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i unwind label %bb.r, !inline_history !246

bb.r:                                             ; preds = %.noexc.i.i.i.i.i.i, %.sink.split.i.i.i.i.i.i.i
  %i.br = landingpad { ptr, i32 }
          catch ptr null
  %i.bs = extractvalue { ptr, i32 } %i.br, 0
  call void @__clang_call_terminate(ptr %i.bs) #42
  unreachable

_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i: ; preds = %.noexc.i.i.i.i.i.i, %bb.q, %.lr.ph.i.i.i
  %i.bt = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i35 = icmp eq ptr %i.bt, %i.be
  br i1 %.not.i.i.i35, label %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !1571

_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %17, align 16, !tbaa !1569
  br label %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %bb.p
  %i.bu = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.bd, %bb.p ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.bu, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.bv = load ptr, ptr %i.az, align 16, !tbaa !1572
  %i.bw = ptrtoint ptr %i.bv to i64
  %i.bx = ptrtoint ptr %i.bu to i64
  %i.by = sub i64 %i.bw, %i.bx
  call void @_ZdlPvm(ptr noundef nonnull %i.bu, i64 noundef %i.by) #40
  br label %_ZNSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EED2Ev.exit

_ZNSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.s
  %i.bz = load ptr, ptr %i.ao, align 8, !tbaa !232 ; 5 uses
  %.not53 = icmp eq ptr %i.bz, null
  br i1 %.not53, label %bb.t, label %.critedge

bb.t:                                             ; preds = %_ZNSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EED2Ev.exit
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !232
  %.not54 = icmp eq ptr %i.cb, null
  br i1 %.not54, label %bb.u, label %bb.z, !prof !36

bb.u:                                             ; preds = %bb.t
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10FlatVectorImEC1EPNS0_6memory10MemoryPoolERKSt10shared_ptrIKNS0_4TypeEEN5boost13intrusive_ptrINS0_6BufferEEEiSF_OSt6vectorISF_SaISF_EERKNS0_17SimpleVectorStatsImEESt8optionalIiESP_SO_IbESP_SP_E18veloxCheckFailArgs_0, ptr noundef nonnull @.str.141) #39
          to label %bb.v unwind label %bb.y

bb.v:                                             ; preds = %bb.u
  unreachable

bb.w:                                             ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit
  %i.cc = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %16) #22
  call void @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %15) #22
  br label %bb.aq

bb.x:                                             ; preds = %bb.o
  %i.cd = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %17) #22
  br label %bb.ap

bb.y:                                             ; preds = %bb.u
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.z:                                             ; preds = %bb.t
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !676 ; 4 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ci = load i32, ptr %i.ch, align 8, !tbaa !164 ; 5 uses
  %.not.i.i.i36 = icmp sgt i32 %i.ci, 0
  br i1 %.not.i.i.i36, label %bb.aa, label %.thread

bb.aa:                                            ; preds = %bb.z
  %i.cj = and i32 %i.ci, 2147483584               ; 3 uses
  %.not3342.i.i.i = icmp eq i32 %i.cj, 0
  br i1 %.not3342.i.i.i, label %._crit_edge.i.i.i, label %iter.check

iter.check:                                       ; preds = %bb.aa
  %i.ck = zext nneg i32 %i.cj to i64              ; 2 uses
  %i.cl = add nsw i64 %i.ck, -64                  ; 3 uses
  %i.cm = lshr exact i64 %i.cl, 6
  %i.cn = add nuw nsw i64 %i.cm, 1                ; 5 uses
  %min.iters.check = icmp ult i64 %i.cl, 192
  br i1 %min.iters.check, label %.lr.ph.i.i.i37.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check78 = icmp ult i64 %i.cl, 960
  br i1 %min.iters.check78, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.cn, 12
  %n.vec = and i64 %i.cn, 576460752303423472      ; 4 uses
  %i.co = shl i64 %n.vec, 6                       ; 2 uses
  %i.cp = or disjoint i64 %i.co, 64
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.dd, %vector.body ]
  %vec.phi79 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.de, %vector.body ]
  %vec.phi80 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.df, %vector.body ]
  %vec.phi81 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.dg, %vector.body ]
  %i.cq = shl nuw nsw i64 %index, 3
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.cq ; 4 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 32
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 64
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 96
  %wide.load = load <4 x i64>, ptr %i.cr, align 8, !tbaa !185
  %wide.load82 = load <4 x i64>, ptr %i.cs, align 8, !tbaa !185
  %wide.load83 = load <4 x i64>, ptr %i.ct, align 8, !tbaa !185
  %wide.load84 = load <4 x i64>, ptr %i.cu, align 8, !tbaa !185
  %i.cv = call range(i64 0, 65) <4 x i64> @llvm.ctpop.v4i64(<4 x i64> %wide.load)
  %i.cw = call range(i64 0, 65) <4 x i64> @llvm.ctpop.v4i64(<4 x i64> %wide.load82)
  %i.cx = call range(i64 0, 65) <4 x i64> @llvm.ctpop.v4i64(<4 x i64> %wide.load83)
  %i.cy = call range(i64 0, 65) <4 x i64> @llvm.ctpop.v4i64(<4 x i64> %wide.load84)
  %i.cz = trunc nuw nsw <4 x i64> %i.cv to <4 x i32>
  %i.da = trunc nuw nsw <4 x i64> %i.cw to <4 x i32>
  %i.db = trunc nuw nsw <4 x i64> %i.cx to <4 x i32>
  %i.dc = trunc nuw nsw <4 x i64> %i.cy to <4 x i32>
  %i.dd = add <4 x i32> %vec.phi, %i.cz           ; 2 uses
  %i.de = add <4 x i32> %vec.phi79, %i.da         ; 2 uses
  %i.df = add <4 x i32> %vec.phi80, %i.db         ; 2 uses
  %i.dg = add <4 x i32> %vec.phi81, %i.dc         ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.dh = icmp eq i64 %index.next, %n.vec
  br i1 %i.dh, label %middle.block, label %vector.body, !llvm.loop !2008

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.de, %i.dd
  %bin.rdx85 = add <4 x i32> %i.df, %bin.rdx
  %bin.rdx86 = add <4 x i32> %i.dg, %bin.rdx85
  %i.di = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx86) ; 3 uses
  %cmp.n = icmp eq i64 %i.cn, %n.vec
  br i1 %cmp.n, label %._crit_edge.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i37.preheader, label %vec.epilog.ph, !prof !261

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i32 [ %i.di, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec89 = and i64 %i.cn, 576460752303423484    ; 3 uses
  %i.dj = shl i64 %n.vec89, 6                     ; 2 uses
  %i.dk = or disjoint i64 %i.dj, 64
  %i.dl = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index90 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next93, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi91 = phi <4 x i32> [ %i.dl, %vec.epilog.ph ], [ %i.dq, %vec.epilog.vector.body ]
  %i.dm = shl nuw nsw i64 %index90, 3
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.dm
  %wide.load92 = load <4 x i64>, ptr %i.dn, align 8, !tbaa !185
  %i.do = call range(i64 0, 65) <4 x i64> @llvm.ctpop.v4i64(<4 x i64> %wide.load92)
  %i.dp = trunc nuw nsw <4 x i64> %i.do to <4 x i32>
  %i.dq = add <4 x i32> %vec.phi91, %i.dp         ; 2 uses
  %index.next93 = add nuw i64 %index90, 4         ; 2 uses
  %i.dr = icmp eq i64 %index.next93, %n.vec89
  br i1 %i.dr, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !2009

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.ds = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.dq) ; 2 uses
  %cmp.n94 = icmp eq i64 %i.cn, %n.vec89
  br i1 %cmp.n94, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i37.preheader

.lr.ph.i.i.i37.preheader:                         ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv55.ph = phi i64 [ 0, %iter.check ], [ %i.co, %vec.epilog.iter.check ], [ %i.dj, %vec.epilog.middle.block ]
  %indvars.iv.ph = phi i64 [ 64, %iter.check ], [ %i.cp, %vec.epilog.iter.check ], [ %i.dk, %vec.epilog.middle.block ]
  %.ph = phi i32 [ 0, %iter.check ], [ %i.di, %vec.epilog.iter.check ], [ %i.ds, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i37

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i37, %middle.block, %vec.epilog.middle.block, %bb.aa
  %.1.i.i = phi i32 [ 0, %bb.aa ], [ %i.ds, %vec.epilog.middle.block ], [ %i.di, %middle.block ], [ %i.dz, %.lr.ph.i.i.i37 ] ; 2 uses
  %.not34.i.i.i = icmp eq i32 %i.ci, %i.cj
  br i1 %.not34.i.i.i, label %bb.ab, label %.sink.split.i.i.i

.lr.ph.i.i.i37:                                   ; preds = %.lr.ph.i.i.i37.preheader, %.lr.ph.i.i.i37
  %indvars.iv55 = phi i64 [ %indvars.iv.next56, %.lr.ph.i.i.i37 ], [ %indvars.iv55.ph, %.lr.ph.i.i.i37.preheader ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph.i.i.i37 ], [ %indvars.iv.ph, %.lr.ph.i.i.i37.preheader ] ; 2 uses
  %i.dt = phi i32 [ %i.dz, %.lr.ph.i.i.i37 ], [ %.ph, %.lr.ph.i.i.i37.preheader ]
  %i.du = lshr exact i64 %indvars.iv55, 3
  %i.dv = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.du
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !185
  %i.dx = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.dw)
  %i.dy = trunc nuw nsw i64 %i.dx to i32
  %i.dz = add nuw nsw i32 %i.dt, %i.dy            ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 64
  %.not33.i.i.i.not = icmp samesign ult i64 %indvars.iv, %i.ck
  %indvars.iv.next56 = add nuw nsw i64 %indvars.iv55, 64
  br i1 %.not33.i.i.i.not, label %.lr.ph.i.i.i37, label %._crit_edge.i.i.i, !llvm.loop !2010

.sink.split.i.i.i:                                ; preds = %._crit_edge.i.i.i
  %i.ea = lshr i32 %i.ci, 6
  %i.eb = and i32 %i.ci, 63
  %i.ec = zext nneg i32 %i.eb to i64
  %notmask.i36.i.i.i = shl nsw i64 -1, %i.ec
  %i.ed = xor i64 %notmask.i36.i.i.i, -1
  %i.ee = zext nneg i32 %i.ea to i64
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %i.ee
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !185
  %i.eh = and i64 %i.eg, %i.ed
  %i.ei = call range(i64 0, 64) i64 @llvm.ctpop.i64(i64 %i.eh)
  %i.ej = trunc nuw nsw i64 %i.ei to i32
  %i.ek = add nsw i32 %.1.i.i, %i.ej
  br label %bb.ab

bb.ab:                                            ; preds = %.sink.split.i.i.i, %._crit_edge.i.i.i
  %.3.i.i = phi i32 [ %i.ek, %.sink.split.i.i.i ], [ %.1.i.i, %._crit_edge.i.i.i ] ; 2 uses
  %.not26 = icmp eq i32 %.3.i.i, 0
  br i1 %.not26, label %.thread, label %bb.ac, !prof !2011

bb.ac:                                            ; preds = %bb.ab
  %i.el = sext i32 %.3.i.i to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22, !noalias !2012
  store i32 0, ptr %14, align 16, !tbaa !40, !alias.scope !2015, !noalias !2012
  %i.em = getelementptr inbounds nuw i8, ptr %14, i64 16
  store i64 %i.el, ptr %i.em, align 16, !tbaa !40, !alias.scope !2015, !noalias !2012
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %18, ptr nonnull @.str.143, i64 77, i64 65, ptr nonnull %14)
          to label %bb.ad unwind label %bb.af

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22, !noalias !2012
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10FlatVectorImEC1EPNS0_6memory10MemoryPoolERKSt10shared_ptrIKNS0_4TypeEEN5boost13intrusive_ptrINS0_6BufferEEEiSF_OSt6vectorISF_SaISF_EERKNS0_17SimpleVectorStatsImEESt8optionalIiESP_SO_IbESP_SP_E18veloxCheckFailArgs_1, ptr noundef nonnull align 8 dereferenceable(32) %18, ptr nonnull @.str.143) #39
          to label %bb.ae unwind label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  unreachable

bb.af:                                            ; preds = %bb.ac
  %i.en = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.ag:                                            ; preds = %bb.ad
  %i.eo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ep = load ptr, ptr %18, align 8, !tbaa !44   ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.er = icmp eq ptr %i.ep, %i.eq
  br i1 %i.er, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.ag
  %i.es = load i64, ptr %i.eq, align 8, !tbaa !40
  %i.et = add i64 %i.es, 1
  call void @_ZdlPvm(ptr noundef %i.ep, i64 noundef %i.et) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.af
  %.pn27 = phi { ptr, i32 } [ %i.eo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.en, %bb.af ], [ %i.eo, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #22
  br label %bb.ap

.critedge:                                        ; preds = %_ZNSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EED2Ev.exit
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ev = load i32, ptr %i.eu, align 8, !tbaa !164
  %i.ew = sext i32 %i.ev to i64
  %i.ex = shl nsw i64 %i.ew, 3                    ; 4 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.bz, i64 32
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !744 ; 2 uses
  %.not23 = icmp ult i64 %i.ez, %i.ex
  br i1 %.not23, label %bb.ah, label %bb.an, !prof !36

bb.ah:                                            ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22, !noalias !2018
  store i64 %i.ez, ptr %13, align 16, !tbaa !40, !alias.scope !2021, !noalias !2018
  %i.fa = getelementptr inbounds nuw i8, ptr %13, i64 16
  store i64 %i.ex, ptr %i.fa, align 16, !tbaa !40, !alias.scope !2021, !noalias !2018
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %19, ptr nonnull @.str.22, i64 11, i64 68, ptr nonnull %13)
          to label %bb.ai unwind label %bb.al

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22, !noalias !2018
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10FlatVectorImEC1EPNS0_6memory10MemoryPoolERKSt10shared_ptrIKNS0_4TypeEEN5boost13intrusive_ptrINS0_6BufferEEEiSF_OSt6vectorISF_SaISF_EERKNS0_17SimpleVectorStatsImEESt8optionalIiESP_SO_IbESP_SP_E18veloxCheckFailArgs_4, ptr noundef nonnull align 8 dereferenceable(32) %19, ptr nonnull @.str.22) #39
          to label %bb.aj unwind label %bb.am

bb.aj:                                            ; preds = %bb.ai
  unreachable

bb.ak:                                            ; preds = %bb.ao
  %i.fb = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.al:                                            ; preds = %bb.ah
  %i.fc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40

bb.am:                                            ; preds = %bb.ai
  %i.fd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fe = load ptr, ptr %19, align 8, !tbaa !44   ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.fg = icmp eq ptr %i.fe, %i.ff
  br i1 %i.fg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38: ; preds = %bb.am
  %i.fh = load i64, ptr %i.ff, align 8, !tbaa !40
  %i.fi = add i64 %i.fh, 1
  call void @_ZdlPvm(ptr noundef %i.fe, i64 noundef %i.fi) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40: ; preds = %bb.am, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38, %bb.al
  %.pn = phi { ptr, i32 } [ %i.fd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38 ], [ %i.fc, %bb.al ], [ %i.fd, %bb.am ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #22
  br label %bb.ap

bb.an:                                            ; preds = %.critedge
  %i.fj = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  %i.fk = load i64, ptr %i.fj, align 8, !tbaa !460
  %i.fl = icmp ult i64 %i.fk, %i.ex
  br i1 %i.fl, label %bb.ao, label %.thread

bb.ao:                                            ; preds = %bb.an
  %i.fm = load ptr, ptr %i.bz, align 8, !tbaa !17
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 16
  %i.fo = load ptr, ptr %i.fn, align 8
  invoke void %i.fo(ptr noundef nonnull align 8 dereferenceable(64) %i.bz, i64 noundef %i.ex)
          to label %.thread unwind label %bb.ak

.thread:                                          ; preds = %bb.z, %bb.an, %bb.ao, %bb.ab
  ret void

bb.ap:                                            ; preds = %bb.ak, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.y, %bb.x
  %.pn30 = phi { ptr, i32 } [ %i.ce, %bb.y ], [ %i.cd, %bb.x ], [ %i.fb, %bb.ak ], [ %.pn27, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40 ]
  call void @_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.aw) #22
  call void @_ZNSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.av) #22
  call void @_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ao) #22
  call void @_ZN8facebook5velox10BaseVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(136) %0) #22
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.w
  %.pn30.pn = phi { ptr, i32 } [ %.pn30, %bb.ap ], [ %i.cc, %bb.w ]
  resume { ptr, i32 } %.pn30.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox12SimpleVectorImEC2EPNS0_6memory10MemoryPoolESt10shared_ptrIKNS0_4TypeEENS0_14VectorEncoding6SimpleEN5boost13intrusive_ptrINS0_6BufferEEEiRKNS0_17SimpleVectorStatsImEESt8optionalIiESL_SK_IbESL_SL_(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 %7, i64 %8, i16 %9, i64 %10, i64 %11) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %12 = alloca %"class.std::shared_ptr.0", align 16 ; 4 uses
  %13 = alloca %"class.boost::intrusive_ptr", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load <2 x ptr>, ptr %2, align 8, !tbaa !84
  store ptr null, ptr %i.b, align 8, !tbaa !89
  store <2 x ptr> %i.c, ptr %12, align 16, !tbaa !84
  store ptr null, ptr %2, align 8, !tbaa !106
  %i.d = load ptr, ptr %4, align 8, !tbaa !232
  store ptr %i.d, ptr %13, align 8, !tbaa !232
  store ptr null, ptr %4, align 8, !tbaa !232
end_hunk_3
begin_hunk_4_@_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSE_EUlimE_ZNS3_ISF_EEvSH_iibSE_EUliE_EEviiSE_T0_:bb.a
  %.not10.i46 = icmp eq i64 %i.fs, 0
  br i1 %.not10.i46, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit, label %bb.m, !llvm.loop !2604

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit: ; preds = %bb.m, %bb.d, %bb.l, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSE_EUlimE_ZNS3_ISF_EEvSH_iibSE_EUliE_EEviiSE_T0_(i32 noundef %0, i32 noundef %1, ptr noundef byval(%class.anon.676) align 8 %2, ptr noundef byval(%class.anon.677) align 8 %3) local_unnamed_addr #16 comdat {
bb.a:
  %.not = icmp slt i32 %0, %1
  br i1 %.not, label %bb.b, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit

bb.b:                                             ; preds = %bb.a
  %i.a = add i32 %0, 63                           ; 2 uses
  %i.b = srem i32 %i.a, 64
  %i.c = sub nsw i32 %i.a, %i.b                   ; 6 uses
  %i.d = and i32 %1, -64                          ; 6 uses
  %i.e = icmp slt i32 %i.d, %i.c
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = ashr i32 %1, 6
  %i.g = and i32 %1, 63
  %i.h = zext nneg i32 %i.g to i64
  %notmask.i = shl nsw i64 -1, %i.h
  %i.i = xor i64 %notmask.i, -1
  %i.j = sub nsw i32 %i.c, %0                     ; 2 uses
  %i.k = zext nneg i32 %i.j to i64
  %notmask.i.i = shl nsw i64 -1, %i.k
  %i.l = xor i64 %notmask.i.i, -1
  %i.m = sub nsw i32 64, %i.j
  %i.n = zext nneg i32 %i.m to i64
  %i.o = shl i64 %i.l, %i.n
  %i.p = and i64 %i.o, %i.i
  %i.q = load i8, ptr %2, align 8, !tbaa !2538, !range !57, !noundef !58
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !2541
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !185
  %i.w = xor i8 %i.q, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !2608
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !2609, !nonnull !58, !align !436
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !279
  %i.ag = sext i32 %i.d to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 144
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !2001
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.preheader.i
  %.011.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.ap, %bb.d ] ; 3 uses
  %i.aj = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i, i1 true)
  %i.ak = or disjoint i64 %i.aj, %i.ag            ; 2 uses
  %i.al = getelementptr inbounds [8 x i8], ptr %i.af, i64 %i.ak
  %i.am = load i64, ptr %i.al, align 8, !tbaa !185
  %i.an = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.ak
  store i64 %i.am, ptr %i.an, align 8, !tbaa !185
  %i.ao = add nsw i64 %.011.i, -1
  %i.ap = and i64 %i.ao, %.011.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.ap, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit, label %bb.d, !llvm.loop !2610

bb.e:                                             ; preds = %bb.b
  %.not32 = icmp eq i32 %0, %i.c
  br i1 %.not32, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit40, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aq = sdiv i32 %0, 64                         ; 2 uses
  %i.ar = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.as = zext nneg i32 %i.ar to i64
  %notmask.i.i35 = shl nsw i64 -1, %i.as
  %i.at = xor i64 %notmask.i.i35, -1
  %i.au = sub nsw i32 64, %i.ar
  %i.av = zext nneg i32 %i.au to i64
  %i.aw = shl i64 %i.at, %i.av
  %i.ax = load i8, ptr %2, align 8, !tbaa !2538, !range !57, !noundef !58
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !2541
  %i.ba = sext i32 %i.aq to i64
  %i.bb = getelementptr inbounds [8 x i8], ptr %i.az, i64 %i.ba
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !185
  %i.bd = xor i8 %i.ax, 1
  %i.be = zext nneg i8 %i.bd to i64
  %i.bf = sub nsw i64 0, %i.be
  %i.bg = xor i64 %i.bc, %i.bf
  %i.bh = and i64 %i.bg, %i.aw                    ; 2 uses
  %.not.i36 = icmp eq i64 %i.bh, 0
  br i1 %.not.i36, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit40, label %.preheader.i37

.preheader.i37:                                   ; preds = %bb.f
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bj = shl nsw i32 %i.aq, 6
  %i.bk = load ptr, ptr %i.bi, align 8, !tbaa !2608
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !2609, !nonnull !58, !align !436
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !279
  %i.bo = sext i32 %i.bj to i64
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bk, i64 144
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !2001
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.preheader.i37
  %.011.i38 = phi i64 [ %i.bh, %.preheader.i37 ], [ %i.bx, %bb.g ] ; 3 uses
  %i.br = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i38, i1 true)
  %i.bs = or disjoint i64 %i.br, %i.bo            ; 2 uses
  %i.bt = getelementptr inbounds [8 x i8], ptr %i.bn, i64 %i.bs
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !185
  %i.bv = getelementptr inbounds [8 x i8], ptr %i.bq, i64 %i.bs
  store i64 %i.bu, ptr %i.bv, align 8, !tbaa !185
  %i.bw = add i64 %.011.i38, -1
  %i.bx = and i64 %i.bw, %.011.i38                ; 2 uses
  %.not10.i39 = icmp eq i64 %i.bx, 0
  br i1 %.not10.i39, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit40, label %bb.g, !llvm.loop !2610

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit40: ; preds = %bb.g, %bb.f, %bb.e
  %i.by = add nsw i32 %i.c, 64                    ; 2 uses
  %.not3350 = icmp sgt i32 %i.by, %i.d
  br i1 %.not3350, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit40
  %i.bz = load i8, ptr %3, align 8, !tbaa !2542, !range !57, !noundef !58
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !2544
  %i.cc = xor i8 %i.bz, 1
  %i.cd = zext nneg i8 %i.cc to i64
  %i.ce = sub nsw i64 0, %i.cd
  %i.cf = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cg = load ptr, ptr %i.cf, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ci = load ptr, ptr %i.ch, align 8, !nonnull !58, !align !436 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 144 ; 2 uses
  br label %bb.h

._crit_edge:                                      ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit40
  %.not34 = icmp eq i32 %1, %i.d
  br i1 %.not34, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit, label %bb.k

bb.h:                                             ; preds = %.lr.ph, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit
  %i.ck = phi i32 [ %i.by, %.lr.ph ], [ %i.eg, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit ] ; 2 uses
  %.051 = phi i32 [ %i.c, %.lr.ph ], [ %i.ck, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit ] ; 2 uses
  %i.cl = sdiv i32 %.051, 64                      ; 3 uses
  %i.cm = sext i32 %i.cl to i64
  %i.cn = getelementptr inbounds [8 x i8], ptr %i.cb, i64 %i.cm
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !185
  %i.cp = xor i64 %i.co, %i.ce                    ; 2 uses
  switch i64 %i.cp, label %.lr.ph.i [
    i64 -1, label %bb.i
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit
  ]

.lr.ph.i:                                         ; preds = %bb.h
  %i.cq = shl nsw i32 %i.cl, 6
  %i.cr = load ptr, ptr %i.ci, align 8, !tbaa !279
  %i.cs = sext i32 %i.cq to i64
  %i.ct = load ptr, ptr %i.cj, align 8, !tbaa !2001
  br label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.cu = shl nsw i32 %i.cl, 6                    ; 2 uses
  %i.cv = add i32 %i.cu, 64
  %i.cw = sext i32 %i.cv to i64                   ; 2 uses
  %.0.off = add i32 %.051, 127
  %.not22.i = icmp ult i32 %.0.off, 64
  br i1 %.not22.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit, label %iter.check

iter.check:                                       ; preds = %bb.i
  %i.cx = sext i32 %i.cu to i64                   ; 6 uses
  %i.cy = load ptr, ptr %i.ci, align 8, !tbaa !279 ; 4 uses
  %i.cz = load ptr, ptr %i.cj, align 8, !tbaa !2001 ; 4 uses
  %i.da = or disjoint i64 %i.cx, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %i.da, i64 %i.cw) ; 2 uses
  %i.db = sub i64 %umax, %i.cx                    ; 3 uses
  %min.iters.check = icmp ult i64 %i.db, 4
  %i.dc = ptrtoaddr ptr %i.cz to i64
  %i.dd = ptrtoaddr ptr %i.cy to i64
  %i.de = sub i64 %i.dd, %i.dc
  %diff.check = icmp ugt i64 %i.de, -128
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check68 = icmp ult i64 %i.db, 16
  %n.mod.vf72 = and i64 %umax, 1                  ; 3 uses
  %n.vec73 = sub nuw i64 %i.db, %n.mod.vf72       ; 3 uses
  %i.df = add i64 %n.vec73, %i.cx                 ; 2 uses
  br i1 %min.iters.check68, label %vec.epilog.vector.body, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.dg = add nuw i64 %index, %i.cx               ; 2 uses
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %i.dg ; 4 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 32
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 64
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dh, i64 96
  %wide.load = load <4 x i64>, ptr %i.dh, align 8, !tbaa !185
  %wide.load69 = load <4 x i64>, ptr %i.di, align 8, !tbaa !185
  %wide.load70 = load <4 x i64>, ptr %i.dj, align 8, !tbaa !185
  %wide.load71 = load <4 x i64>, ptr %i.dk, align 8, !tbaa !185
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %i.dg ; 4 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 32
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 64
  %i.do = getelementptr inbounds nuw i8, ptr %i.dl, i64 96
  store <4 x i64> %wide.load, ptr %i.dl, align 8, !tbaa !185
  store <4 x i64> %wide.load69, ptr %i.dm, align 8, !tbaa !185
  store <4 x i64> %wide.load70, ptr %i.dn, align 8, !tbaa !185
  store <4 x i64> %wide.load71, ptr %i.do, align 8, !tbaa !185
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.dp = icmp eq i64 %index.next, %n.vec73
  br i1 %i.dp, label %middle.block, label %vector.body, !llvm.loop !2611

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.mod.vf72, 0
  br i1 %cmp.n, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.vector.body:                           ; preds = %vector.main.loop.iter.check, %vec.epilog.vector.body
  %index74 = phi i64 [ %index.next76, %vec.epilog.vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.dq = add nuw i64 %index74, %i.cx             ; 2 uses
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %i.dq
  %wide.load75 = load <4 x i64>, ptr %i.dr, align 8, !tbaa !185
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %i.dq
  store <4 x i64> %wide.load75, ptr %i.ds, align 8, !tbaa !185
  %index.next76 = add nuw i64 %index74, 4         ; 2 uses
  %i.dt = icmp eq i64 %index.next76, %n.vec73
  br i1 %i.dt, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !2612

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n77 = icmp eq i64 %n.mod.vf72, 0
  br i1 %cmp.n77, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %middle.block, %iter.check, %vec.epilog.middle.block
  %.020.i.ph = phi i64 [ %i.df, %middle.block ], [ %i.cx, %iter.check ], [ %i.df, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.020.i = phi i64 [ %i.dx, %vec.epilog.scalar.ph ], [ %.020.i.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %.020.i
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !185
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %.020.i
  store i64 %i.dv, ptr %i.dw, align 8, !tbaa !185
  %i.dx = add nuw i64 %.020.i, 1                  ; 2 uses
  %i.dy = icmp ult i64 %i.dx, %i.cw
  br i1 %i.dy, label %vec.epilog.scalar.ph, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit, !llvm.loop !2613

bb.j:                                             ; preds = %bb.j, %.lr.ph.i
  %.01519.i = phi i64 [ %i.cp, %.lr.ph.i ], [ %i.ef, %bb.j ] ; 3 uses
  %i.dz = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01519.i, i1 true)
  %i.ea = or disjoint i64 %i.dz, %i.cs            ; 2 uses
  %i.eb = getelementptr inbounds [8 x i8], ptr %i.cr, i64 %i.ea
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !185
  %i.ed = getelementptr inbounds [8 x i8], ptr %i.ct, i64 %i.ea
  store i64 %i.ec, ptr %i.ed, align 8, !tbaa !185
  %i.ee = add i64 %.01519.i, -1
  %i.ef = and i64 %i.ee, %.01519.i                ; 2 uses
  %.not.i41 = icmp eq i64 %i.ef, 0
  br i1 %.not.i41, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit, label %bb.j, !llvm.loop !2614

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit: ; preds = %vec.epilog.scalar.ph, %bb.j, %middle.block, %vec.epilog.middle.block, %bb.h, %bb.i
  %i.eg = add nsw i32 %i.ck, 64                   ; 2 uses
  %.not33 = icmp sgt i32 %i.eg, %i.d
  br i1 %.not33, label %._crit_edge, label %bb.h, !llvm.loop !2615

bb.k:                                             ; preds = %._crit_edge
  %i.eh = ashr i32 %1, 6
  %i.ei = and i32 %1, 63
  %i.ej = zext nneg i32 %i.ei to i64
  %notmask.i42 = shl nsw i64 -1, %i.ej
  %i.ek = xor i64 %notmask.i42, -1
  %i.el = load i8, ptr %2, align 8, !tbaa !2538, !range !57, !noundef !58
  %i.em = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !2541
  %i.eo = sext i32 %i.eh to i64
  %i.ep = getelementptr inbounds [8 x i8], ptr %i.en, i64 %i.eo
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !185
  %i.er = xor i8 %i.el, 1
  %i.es = zext nneg i8 %i.er to i64
  %i.et = sub nsw i64 0, %i.es
  %i.eu = xor i64 %i.eq, %i.et
  %i.ev = and i64 %i.eu, %i.ek                    ; 2 uses
  %.not.i43 = icmp eq i64 %i.ev, 0
  br i1 %.not.i43, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit, label %.preheader.i44

.preheader.i44:                                   ; preds = %bb.k
  %i.ew = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !2608
  %i.ey = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !2609, !nonnull !58, !align !436
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !279
  %i.fb = sext i32 %i.d to i64
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ex, i64 144
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !2001
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.preheader.i44
  %.011.i45 = phi i64 [ %i.ev, %.preheader.i44 ], [ %i.fk, %bb.l ] ; 3 uses
  %i.fe = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i45, i1 true)
  %i.ff = or disjoint i64 %i.fe, %i.fb            ; 2 uses
  %i.fg = getelementptr inbounds [8 x i8], ptr %i.fa, i64 %i.ff
  %i.fh = load i64, ptr %i.fg, align 8, !tbaa !185
  %i.fi = getelementptr inbounds [8 x i8], ptr %i.fd, i64 %i.ff
  store i64 %i.fh, ptr %i.fi, align 8, !tbaa !185
  %i.fj = add nsw i64 %.011.i45, -1
  %i.fk = and i64 %i.fj, %.011.i45                ; 2 uses
  %.not10.i46 = icmp eq i64 %i.fk, 0
  br i1 %.not10.i46, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit, label %bb.l, !llvm.loop !2610

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit: ; preds = %bb.l, %bb.d, %bb.k, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSE_EUlimE_ZNS3_ISF_EEvSH_iibSE_EUliE_EEviiSE_T0_(i32 noundef %0, i32 noundef %1, ptr noundef byval(%class.anon.680) align 8 %2, ptr noundef byval(%class.anon.681) align 8 %3) local_unnamed_addr #16 comdat {
bb.a:
  %.not = icmp slt i32 %0, %1
  br i1 %.not, label %bb.b, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit

bb.b:                                             ; preds = %bb.a
  %i.a = add i32 %0, 63                           ; 2 uses
  %i.b = srem i32 %i.a, 64
  %i.c = sub nsw i32 %i.a, %i.b                   ; 6 uses
  %i.d = and i32 %1, -64                          ; 6 uses
  %i.e = icmp slt i32 %i.d, %i.c
  br i1 %i.e, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.f = ashr i32 %1, 6
  %i.g = and i32 %1, 63
  %i.h = zext nneg i32 %i.g to i64
  %notmask.i = shl nsw i64 -1, %i.h
  %i.i = xor i64 %notmask.i, -1
  %i.j = sub nsw i32 %i.c, %0                     ; 2 uses
  %i.k = zext nneg i32 %i.j to i64
  %notmask.i.i = shl nsw i64 -1, %i.k
  %i.l = xor i64 %notmask.i.i, -1
  %i.m = sub nsw i32 64, %i.j
  %i.n = zext nneg i32 %i.m to i64
  %i.o = shl i64 %i.l, %i.n
  %i.p = and i64 %i.o, %i.i
  %i.q = load i8, ptr %2, align 8, !tbaa !2568, !range !57, !noundef !58
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !2570
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !185
  %i.w = xor i8 %i.q, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ae = load ptr, ptr %i.ab, align 8, !tbaa !2563, !nonnull !58, !align !436
  %i.af = load ptr, ptr %i.ac, align 8, !tbaa !2565, !nonnull !58, !align !436
  %i.ag = load ptr, ptr %i.ad, align 8, !tbaa !2566, !nonnull !58, !align !436
  br label %bb.d

bb.d:                                             ; preds = %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i, %.preheader.i
  %.011.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.bk, %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i ] ; 3 uses
  %i.ah = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i, i1 true) ; 2 uses
  %i.ai = trunc nuw nsw i64 %i.ah to i32
  %i.aj = or disjoint i32 %i.d, %i.ai             ; 2 uses
  %i.ak = load ptr, ptr %i.ae, align 8, !tbaa !203
  %i.al = sext i32 %i.aj to i64
  %i.am = getelementptr inbounds [4 x i8], ptr %i.ak, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !3
  %i.ao = load ptr, ptr %i.af, align 8, !tbaa !279
  %i.ap = load ptr, ptr %i.ag, align 8, !tbaa !279
  %i.aq = zext i32 %i.an to i64                   ; 2 uses
  %i.ar = lshr i64 %i.aq, 6
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.ar
  %i.at = load i64, ptr %i.as, align 8, !tbaa !185
  %i.au = and i64 %i.aq, 63
  %i.av = shl nuw i64 1, %i.au
  %i.aw = and i64 %i.at, %i.av
  %.not.i.i.i = icmp eq i64 %i.aw, 0
  %i.ax = zext i32 %i.aj to i64                   ; 2 uses
  %i.ay = lshr i64 %i.ax, 3
  %i.az = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ay ; 2 uses
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !40  ; 2 uses
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bb = trunc nuw nsw i64 %i.ah to i8
  %i.bc = and i8 %i.bb, 7
  %i.bd = shl nuw i8 1, %i.bc
  %i.be = or i8 %i.ba, %i.bd
  br label %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i

bb.f:                                             ; preds = %bb.d
  %i.bf = and i64 %i.ax, 7
  %i.bg = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.bf
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !40
  %i.bi = and i8 %i.bh, %i.ba
  br label %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i

_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i: ; preds = %bb.f, %bb.e
  %.sink.i.i.i.i = phi i8 [ %i.bi, %bb.f ], [ %i.be, %bb.e ]
  store i8 %.sink.i.i.i.i, ptr %i.az, align 1, !tbaa !40
  %i.bj = add nsw i64 %.011.i, -1
  %i.bk = and i64 %i.bj, %.011.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.bk, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit, label %bb.d, !llvm.loop !2616

bb.g:                                             ; preds = %bb.b
  %.not32 = icmp eq i32 %0, %i.c
  br i1 %.not32, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit43, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bl = sdiv i32 %0, 64                         ; 2 uses
  %i.bm = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.bn = zext nneg i32 %i.bm to i64
  %notmask.i.i35 = shl nsw i64 -1, %i.bn
  %i.bo = xor i64 %notmask.i.i35, -1
end_hunk_4
begin_hunk_5_@_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_EUlimE_ZNS3_ISE_EEvSG_iibSH_EUliE_EEviiSH_T0_:bb.a
bb.a:
  %.not = icmp slt i32 %0, %1
  br i1 %.not, label %bb.b, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit

bb.b:                                             ; preds = %bb.a
  %i.a = add i32 %0, 63                           ; 2 uses
  %i.b = srem i32 %i.a, 64
  %i.c = sub nsw i32 %i.a, %i.b                   ; 6 uses
  %i.d = and i32 %1, -64                          ; 6 uses
  %i.e = icmp slt i32 %i.d, %i.c
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = ashr i32 %1, 6
  %i.g = and i32 %1, 63
  %i.h = zext nneg i32 %i.g to i64
  %notmask.i = shl nsw i64 -1, %i.h
  %i.i = xor i64 %notmask.i, -1
  %i.j = sub nsw i32 %i.c, %0                     ; 2 uses
  %i.k = zext nneg i32 %i.j to i64
  %notmask.i.i = shl nsw i64 -1, %i.k
  %i.l = xor i64 %notmask.i.i, -1
  %i.m = sub nsw i32 64, %i.j
  %i.n = zext nneg i32 %i.m to i64
  %i.o = shl i64 %i.l, %i.n
  %i.p = and i64 %i.o, %i.i
  %i.q = load i8, ptr %2, align 8, !tbaa !2548, !range !57, !noundef !58
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !2551
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !185
  %i.w = xor i8 %i.q, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !2620
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !2621, !nonnull !58, !align !436
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 144
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !2001
  %i.ah = sext i32 %i.d to i64
  %invariant.gep.i = getelementptr [8 x i8], ptr %i.ag, i64 %i.ah
  %.pre.i = load i64, ptr %i.ae, align 8, !tbaa !185
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.preheader.i
  %.011.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.ak, %bb.d ] ; 3 uses
  %i.ai = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i, i1 true)
  %gep.i = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %i.ai
  store i64 %.pre.i, ptr %gep.i, align 8, !tbaa !185
  %i.aj = add nsw i64 %.011.i, -1
  %i.ak = and i64 %i.aj, %.011.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.ak, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %bb.d, !llvm.loop !2622

bb.e:                                             ; preds = %bb.b
  %.not32 = icmp eq i32 %0, %i.c
  br i1 %.not32, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit43, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.al = sdiv i32 %0, 64                         ; 2 uses
  %i.am = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.an = zext nneg i32 %i.am to i64
  %notmask.i.i35 = shl nsw i64 -1, %i.an
  %i.ao = xor i64 %notmask.i.i35, -1
  %i.ap = sub nsw i32 64, %i.am
  %i.aq = zext nneg i32 %i.ap to i64
  %i.ar = shl i64 %i.ao, %i.aq
  %i.as = load i8, ptr %2, align 8, !tbaa !2548, !range !57, !noundef !58
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !2551
  %i.av = sext i32 %i.al to i64
  %i.aw = getelementptr inbounds [8 x i8], ptr %i.au, i64 %i.av
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !185
  %i.ay = xor i8 %i.as, 1
  %i.az = zext nneg i8 %i.ay to i64
  %i.ba = sub nsw i64 0, %i.az
  %i.bb = xor i64 %i.ax, %i.ba
  %i.bc = and i64 %i.bb, %i.ar                    ; 2 uses
  %.not.i36 = icmp eq i64 %i.bc, 0
  br i1 %.not.i36, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit43, label %.preheader.i37

.preheader.i37:                                   ; preds = %bb.f
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.be = shl nsw i32 %i.al, 6
  %i.bf = load ptr, ptr %i.bd, align 8, !tbaa !2620
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !2621, !nonnull !58, !align !436
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 144
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !2001
  %i.bk = sext i32 %i.be to i64
  %invariant.gep.i38 = getelementptr [8 x i8], ptr %i.bj, i64 %i.bk
  %.pre.i39 = load i64, ptr %i.bh, align 8, !tbaa !185
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.preheader.i37
  %.011.i40 = phi i64 [ %i.bc, %.preheader.i37 ], [ %i.bn, %bb.g ] ; 3 uses
  %i.bl = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i40, i1 true)
  %gep.i41 = getelementptr [8 x i8], ptr %invariant.gep.i38, i64 %i.bl
  store i64 %.pre.i39, ptr %gep.i41, align 8, !tbaa !185
  %i.bm = add i64 %.011.i40, -1
  %i.bn = and i64 %i.bm, %.011.i40                ; 2 uses
  %.not10.i42 = icmp eq i64 %i.bn, 0
  br i1 %.not10.i42, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit43, label %bb.g, !llvm.loop !2622

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit43: ; preds = %bb.g, %bb.f, %bb.e
  %i.bo = add nsw i32 %i.c, 64                    ; 2 uses
  %.not3359 = icmp sgt i32 %i.bo, %i.d
  br i1 %.not3359, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit43
  %i.bp = load i8, ptr %3, align 8, !tbaa !2552, !range !57, !noundef !58
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !2554
  %i.bs = xor i8 %i.bp, 1
  %i.bt = zext nneg i8 %i.bs to i64
  %i.bu = sub nsw i64 0, %i.bt
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.by = load ptr, ptr %i.bx, align 8, !nonnull !58, !align !436 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 144 ; 2 uses
  br label %bb.h

._crit_edge:                                      ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit43
  %.not34 = icmp eq i32 %1, %i.d
  br i1 %.not34, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %bb.k

bb.h:                                             ; preds = %.lr.ph, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit
  %i.ca = phi i32 [ %i.bo, %.lr.ph ], [ %i.dw, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit ] ; 2 uses
  %.060 = phi i32 [ %i.c, %.lr.ph ], [ %i.ca, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit ] ; 2 uses
  %i.cb = sdiv i32 %.060, 64                      ; 3 uses
  %i.cc = sext i32 %i.cb to i64
  %i.cd = getelementptr inbounds [8 x i8], ptr %i.br, i64 %i.cc
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !185
  %i.cf = xor i64 %i.ce, %i.bu                    ; 2 uses
  switch i64 %i.cf, label %.lr.ph.i [
    i64 -1, label %bb.i
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit
  ]

.lr.ph.i:                                         ; preds = %bb.h
  %i.cg = shl nsw i32 %i.cb, 6
  %i.ch = load ptr, ptr %i.bz, align 8, !tbaa !2001
  %i.ci = sext i32 %i.cg to i64
  %invariant.gep.i45 = getelementptr [8 x i8], ptr %i.ch, i64 %i.ci
  %.pre24.i = load i64, ptr %i.by, align 8, !tbaa !185
  br label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.cj = shl nsw i32 %i.cb, 6                    ; 3 uses
  %i.ck = add i32 %i.cj, 64
  %i.cl = sext i32 %i.ck to i64                   ; 3 uses
  %.0.off = add i32 %.060, 127
  %.not22.i = icmp ult i32 %.0.off, 64
  br i1 %.not22.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %iter.check

iter.check:                                       ; preds = %bb.i
  %i.cm = sext i32 %i.cj to i64                   ; 9 uses
  %i.cn = load ptr, ptr %i.bz, align 8, !tbaa !2001 ; 3 uses
  %.pre.i44 = load i64, ptr %i.by, align 8, !tbaa !185 ; 2 uses
  %i.co = or disjoint i64 %i.cm, 1
  %umax76 = tail call i64 @llvm.umax.i64(i64 %i.co, i64 %i.cl) ; 2 uses
  %i.cp = sub i64 %umax76, %i.cm                  ; 3 uses
  %min.iters.check = icmp ult i64 %i.cp, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.cq = or disjoint i64 %i.cm, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %i.cq, i64 %i.cl)
  %i.cr = xor i64 %i.cm, -1
  %i.cs = add i64 %umax, %i.cr                    ; 2 uses
  %i.ct = sext i32 %i.cj to i35                   ; 2 uses
  %i.cu = shl nsw i35 %i.ct, 3
  %i.cv = trunc i64 %i.cs to i35
  %i.cw = add i35 %i.ct, %i.cv
  %i.cx = shl i35 %i.cw, 3
  %i.cy = icmp slt i35 %i.cx, %i.cu
  %i.cz = icmp ugt i64 %i.cs, 4294967295
  %i.da = or i1 %i.cy, %i.cz
  br i1 %i.da, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.scevcheck
  %min.iters.check77 = icmp ult i64 %i.cp, 16
  %n.mod.vf78 = and i64 %umax76, 1                ; 3 uses
  %n.vec79 = sub i64 %i.cp, %n.mod.vf78           ; 3 uses
  %i.db = add i64 %n.vec79, %i.cm                 ; 2 uses
  %broadcast.splatinsert80 = insertelement <4 x i64> poison, i64 %.pre.i44, i64 0
  %broadcast.splat81 = shufflevector <4 x i64> %broadcast.splatinsert80, <4 x i64> poison, <4 x i32> zeroinitializer ; 5 uses
  br i1 %min.iters.check77, label %vec.epilog.vector.body, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.dc = add nuw i64 %index, %i.cm
  %i.dd = shl i64 %i.dc, 32
  %i.de = ashr exact i64 %i.dd, 29
  %i.df = getelementptr inbounds i8, ptr %i.cn, i64 %i.de ; 4 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 32
  %i.dh = getelementptr inbounds nuw i8, ptr %i.df, i64 64
  %i.di = getelementptr inbounds nuw i8, ptr %i.df, i64 96
  store <4 x i64> %broadcast.splat81, ptr %i.df, align 8, !tbaa !185
  store <4 x i64> %broadcast.splat81, ptr %i.dg, align 8, !tbaa !185
  store <4 x i64> %broadcast.splat81, ptr %i.dh, align 8, !tbaa !185
  store <4 x i64> %broadcast.splat81, ptr %i.di, align 8, !tbaa !185
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.dj = icmp eq i64 %index.next, %n.vec79
  br i1 %i.dj, label %middle.block, label %vector.body, !llvm.loop !2623

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.mod.vf78, 0
  br i1 %cmp.n, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.vector.body:                           ; preds = %vector.main.loop.iter.check, %vec.epilog.vector.body
  %index82 = phi i64 [ %index.next83, %vec.epilog.vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.dk = add nuw i64 %index82, %i.cm
  %i.dl = shl i64 %i.dk, 32
  %i.dm = ashr exact i64 %i.dl, 29
  %i.dn = getelementptr inbounds i8, ptr %i.cn, i64 %i.dm
  store <4 x i64> %broadcast.splat81, ptr %i.dn, align 8, !tbaa !185
  %index.next83 = add nuw i64 %index82, 4         ; 2 uses
  %i.do = icmp eq i64 %index.next83, %n.vec79
  br i1 %i.do, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !2624

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n84 = icmp eq i64 %n.mod.vf78, 0
  br i1 %cmp.n84, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %middle.block, %vector.scevcheck, %iter.check, %vec.epilog.middle.block
  %.020.i.ph = phi i64 [ %i.db, %middle.block ], [ %i.cm, %vector.scevcheck ], [ %i.cm, %iter.check ], [ %i.db, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.020.i = phi i64 [ %i.dr, %vec.epilog.scalar.ph ], [ %.020.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %sext.i = shl i64 %.020.i, 32
  %i.dp = ashr exact i64 %sext.i, 29
  %i.dq = getelementptr inbounds i8, ptr %i.cn, i64 %i.dp
  store i64 %.pre.i44, ptr %i.dq, align 8, !tbaa !185
  %i.dr = add nuw i64 %.020.i, 1                  ; 2 uses
  %i.ds = icmp ult i64 %i.dr, %i.cl
  br i1 %i.ds, label %vec.epilog.scalar.ph, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit, !llvm.loop !2625

bb.j:                                             ; preds = %bb.j, %.lr.ph.i
  %.01519.i = phi i64 [ %i.cf, %.lr.ph.i ], [ %i.dv, %bb.j ] ; 3 uses
  %i.dt = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01519.i, i1 true)
  %gep.i46 = getelementptr [8 x i8], ptr %invariant.gep.i45, i64 %i.dt
  store i64 %.pre24.i, ptr %gep.i46, align 8, !tbaa !185
  %i.du = add i64 %.01519.i, -1
  %i.dv = and i64 %i.du, %.01519.i                ; 2 uses
  %.not.i47 = icmp eq i64 %i.dv, 0
  br i1 %.not.i47, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %bb.j, !llvm.loop !2626

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit: ; preds = %vec.epilog.scalar.ph, %bb.j, %middle.block, %vec.epilog.middle.block, %bb.h, %bb.i
  %i.dw = add nsw i32 %i.ca, 64                   ; 2 uses
  %.not33 = icmp sgt i32 %i.dw, %i.d
  br i1 %.not33, label %._crit_edge, label %bb.h, !llvm.loop !2627

bb.k:                                             ; preds = %._crit_edge
  %i.dx = ashr i32 %1, 6
  %i.dy = and i32 %1, 63
  %i.dz = zext nneg i32 %i.dy to i64
  %notmask.i48 = shl nsw i64 -1, %i.dz
  %i.ea = xor i64 %notmask.i48, -1
  %i.eb = load i8, ptr %2, align 8, !tbaa !2548, !range !57, !noundef !58
  %i.ec = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !2551
  %i.ee = sext i32 %i.dx to i64
  %i.ef = getelementptr inbounds [8 x i8], ptr %i.ed, i64 %i.ee
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !185
  %i.eh = xor i8 %i.eb, 1
  %i.ei = zext nneg i8 %i.eh to i64
  %i.ej = sub nsw i64 0, %i.ei
  %i.ek = xor i64 %i.eg, %i.ej
  %i.el = and i64 %i.ek, %i.ea                    ; 2 uses
  %.not.i49 = icmp eq i64 %i.el, 0
  br i1 %.not.i49, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %.preheader.i50

.preheader.i50:                                   ; preds = %bb.k
  %i.em = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !2620
  %i.eo = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !2621, !nonnull !58, !align !436
  %i.eq = getelementptr inbounds nuw i8, ptr %i.en, i64 144
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !2001
  %i.es = sext i32 %i.d to i64
  %invariant.gep.i51 = getelementptr [8 x i8], ptr %i.er, i64 %i.es
  %.pre.i52 = load i64, ptr %i.ep, align 8, !tbaa !185
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.preheader.i50
  %.011.i53 = phi i64 [ %i.el, %.preheader.i50 ], [ %i.ev, %bb.l ] ; 3 uses
  %i.et = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i53, i1 true)
  %gep.i54 = getelementptr [8 x i8], ptr %invariant.gep.i51, i64 %i.et
  store i64 %.pre.i52, ptr %gep.i54, align 8, !tbaa !185
  %i.eu = add nsw i64 %.011.i53, -1
  %i.ev = and i64 %i.eu, %.011.i53                ; 2 uses
  %.not10.i55 = icmp eq i64 %i.ev, 0
  br i1 %.not10.i55, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %bb.l, !llvm.loop !2622

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit: ; preds = %bb.l, %bb.d, %bb.k, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSD_(ptr noundef %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3, ptr %4, ptr %5) local_unnamed_addr #0 comdat {
bb.a:
  %6 = alloca %class.anon.685, align 8            ; 7 uses
  %7 = alloca %class.anon.684, align 8            ; 9 uses
  %i.a = zext i1 %3 to i8                         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store i8 %i.a, ptr %6, align 8
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %0, ptr %.sroa.28.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %4, ptr %.sroa.3.0..sroa_idx9, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %5, ptr %.sroa.4.0..sroa_idx, align 8
  store i8 %i.a, ptr %7, align 8
  %.sroa.212.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %0, ptr %.sroa.212.0..sroa_idx, align 8
  %.sroa.313.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %4, ptr %.sroa.313.0..sroa_idx, align 8
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr %5, ptr %.sroa.414.0..sroa_idx, align 8
  %.not.i = icmp slt i32 %1, %2
  br i1 %.not.i, label %bb.b, label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSE_EUlimE_ZNS3_ISF_EEvSH_iibSE_EUliE_EEviiSE_T0_.exit

bb.b:                                             ; preds = %bb.a
  %i.b = add i32 %1, 63                           ; 2 uses
  %i.c = srem i32 %i.b, 64
  %i.d = sub nsw i32 %i.b, %i.c                   ; 6 uses
  %i.e = and i32 %2, -64                          ; 4 uses
  %i.f = icmp slt i32 %i.e, %i.d
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = ashr i32 %2, 6
  %i.h = and i32 %2, 63
  %i.i = zext nneg i32 %i.h to i64
  %notmask.i.i = shl nsw i64 -1, %i.i
  %i.j = xor i64 %notmask.i.i, -1
  %i.k = sub nsw i32 %i.d, %1                     ; 2 uses
  %i.l = zext nneg i32 %i.k to i64
  %notmask.i.i.i = shl nsw i64 -1, %i.l
  %i.m = xor i64 %notmask.i.i.i, -1
  %i.n = sub nsw i32 64, %i.k
  %i.o = zext nneg i32 %i.n to i64
  %i.p = shl i64 %i.m, %i.o
  %i.q = and i64 %i.p, %i.j
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSD_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef %i.g, i64 noundef %i.q)
  br label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSE_EUlimE_ZNS3_ISF_EEvSH_iibSE_EUliE_EEviiSE_T0_.exit

bb.d:                                             ; preds = %bb.b
  %.not32.i = icmp eq i32 %1, %i.d
  br i1 %.not32.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = sdiv i32 %1, 64
  %i.s = sub nsw i32 %i.d, %1                     ; 2 uses
  %i.t = zext nneg i32 %i.s to i64
  %notmask.i.i35.i = shl nsw i64 -1, %i.t
  %i.u = xor i64 %notmask.i.i35.i, -1
  %i.v = sub nsw i32 64, %i.s
  %i.w = zext nneg i32 %i.v to i64
  %i.x = shl i64 %i.u, %i.w
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSD_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef %i.r, i64 noundef %i.x)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.y = add nsw i32 %i.d, 64                     ; 2 uses
  %.not3337.i = icmp sgt i32 %i.y, %i.e
  br i1 %.not3337.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.f
  %.not34.i = icmp eq i32 %2, %i.e
  br i1 %.not34.i, label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSE_EUlimE_ZNS3_ISF_EEvSH_iibSE_EUliE_EEviiSE_T0_.exit, label %bb.g

.lr.ph.i:                                         ; preds = %bb.f, %.lr.ph.i
  %i.z = phi i32 [ %i.ab, %.lr.ph.i ], [ %i.y, %bb.f ] ; 2 uses
  %.038.i = phi i32 [ %i.z, %.lr.ph.i ], [ %i.d, %bb.f ]
  %i.aa = sdiv i32 %.038.i, 64
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSD_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef %i.aa)
  %i.ab = add nsw i32 %i.z, 64                    ; 2 uses
  %.not33.i = icmp sgt i32 %i.ab, %i.e
  br i1 %.not33.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !2628

bb.g:                                             ; preds = %._crit_edge.i
  %i.ac = ashr i32 %2, 6
  %i.ad = and i32 %2, 63
  %i.ae = zext nneg i32 %i.ad to i64
  %notmask.i36.i = shl nsw i64 -1, %i.ae
  %i.af = xor i64 %notmask.i36.i, -1
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSD_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef %i.ac, i64 noundef %i.af)
  br label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSE_EUlimE_ZNS3_ISF_EEvSH_iibSE_EUliE_EEviiSE_T0_.exit

_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSE_EUlimE_ZNS3_ISF_EEvSH_iibSE_EUliE_EEviiSE_T0_.exit: ; preds = %bb.a, %bb.c, %._crit_edge.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSD_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !2629, !range !57, !noundef !58
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2632
  %i.d = sext i32 %1 to i64
  %i.e = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.d
  %i.f = load i64, ptr %i.e, align 8, !tbaa !185
  %i.g = xor i8 %i.a, 1
  %i.h = zext nneg i8 %i.g to i64
  %i.i = sub nsw i64 0, %i.h
  %i.j = xor i64 %i.f, %i.i
  %i.k = and i64 %i.j, %2                         ; 6 uses
end_hunk_5
begin_hunk_6_@_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_EUlimE_ZNS3_IS9_EEvSB_iibSC_EUliE_EEviiSC_T0_:bb.a

bb.b:                                             ; preds = %bb.a
  %i.a = add i32 %0, 63                           ; 2 uses
  %i.b = srem i32 %i.a, 64
  %i.c = sub nsw i32 %i.a, %i.b                   ; 6 uses
  %i.d = and i32 %1, -64                          ; 6 uses
  %i.e = icmp slt i32 %i.d, %i.c
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = ashr i32 %1, 6
  %i.g = and i32 %1, 63
  %i.h = zext nneg i32 %i.g to i64
  %notmask.i = shl nsw i64 -1, %i.h
  %i.i = xor i64 %notmask.i, -1
  %i.j = sub nsw i32 %i.c, %0                     ; 2 uses
  %i.k = zext nneg i32 %i.j to i64
  %notmask.i.i = shl nsw i64 -1, %i.k
  %i.l = xor i64 %notmask.i.i, -1
  %i.m = sub nsw i32 64, %i.j
  %i.n = zext nneg i32 %i.m to i64
  %i.o = shl i64 %i.l, %i.n
  %i.p = and i64 %i.o, %i.i
  %i.q = load i8, ptr %2, align 8, !tbaa !2080, !range !57, !noundef !58
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !2083
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !185
  %i.w = xor i8 %i.q, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !2683
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 144
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !2001
  %i.ag = sext i32 %i.d to i64
  %i.ah = load ptr, ptr %i.ab, align 8, !tbaa !2684, !nonnull !58, !align !436
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !279
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.preheader.i
  %.011.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.ap, %bb.d ] ; 3 uses
  %i.aj = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i, i1 true)
  %i.ak = or disjoint i64 %i.aj, %i.ag            ; 2 uses
  %i.al = getelementptr inbounds [8 x i8], ptr %i.af, i64 %i.ak
  %i.am = load i64, ptr %i.al, align 8, !tbaa !185
  %i.an = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.ak
  store i64 %i.am, ptr %i.an, align 8, !tbaa !185
  %i.ao = add nsw i64 %.011.i, -1
  %i.ap = and i64 %i.ao, %.011.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.ap, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %bb.d, !llvm.loop !2685

bb.e:                                             ; preds = %bb.b
  %.not32 = icmp eq i32 %0, %i.c
  br i1 %.not32, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aq = sdiv i32 %0, 64                         ; 2 uses
  %i.ar = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.as = zext nneg i32 %i.ar to i64
  %notmask.i.i35 = shl nsw i64 -1, %i.as
  %i.at = xor i64 %notmask.i.i35, -1
  %i.au = sub nsw i32 64, %i.ar
  %i.av = zext nneg i32 %i.au to i64
  %i.aw = shl i64 %i.at, %i.av
  %i.ax = load i8, ptr %2, align 8, !tbaa !2080, !range !57, !noundef !58
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !2083
  %i.ba = sext i32 %i.aq to i64
  %i.bb = getelementptr inbounds [8 x i8], ptr %i.az, i64 %i.ba
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !185
  %i.bd = xor i8 %i.ax, 1
  %i.be = zext nneg i8 %i.bd to i64
  %i.bf = sub nsw i64 0, %i.be
  %i.bg = xor i64 %i.bc, %i.bf
  %i.bh = and i64 %i.bg, %i.aw                    ; 2 uses
  %.not.i36 = icmp eq i64 %i.bh, 0
  br i1 %.not.i36, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40, label %.preheader.i37

.preheader.i37:                                   ; preds = %bb.f
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bj = shl nsw i32 %i.aq, 6
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !2683
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 144
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !2001
  %i.bo = sext i32 %i.bj to i64
  %i.bp = load ptr, ptr %i.bi, align 8, !tbaa !2684, !nonnull !58, !align !436
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !279
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.preheader.i37
  %.011.i38 = phi i64 [ %i.bh, %.preheader.i37 ], [ %i.bx, %bb.g ] ; 3 uses
  %i.br = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i38, i1 true)
  %i.bs = or disjoint i64 %i.br, %i.bo            ; 2 uses
  %i.bt = getelementptr inbounds [8 x i8], ptr %i.bn, i64 %i.bs
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !185
  %i.bv = getelementptr inbounds [8 x i8], ptr %i.bq, i64 %i.bs
  store i64 %i.bu, ptr %i.bv, align 8, !tbaa !185
  %i.bw = add i64 %.011.i38, -1
  %i.bx = and i64 %i.bw, %.011.i38                ; 2 uses
  %.not10.i39 = icmp eq i64 %i.bx, 0
  br i1 %.not10.i39, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40, label %bb.g, !llvm.loop !2685

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40: ; preds = %bb.g, %bb.f, %bb.e
  %i.by = add nsw i32 %i.c, 64                    ; 2 uses
  %.not3350 = icmp sgt i32 %i.by, %i.d
  br i1 %.not3350, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40
  %i.bz = load i8, ptr %3, align 8, !tbaa !2085, !range !57, !noundef !58
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !2087
  %i.cc = xor i8 %i.bz, 1
  %i.cd = zext nneg i8 %i.cc to i64
  %i.ce = sub nsw i64 0, %i.cd
  %i.cf = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cg = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ch = load ptr, ptr %i.cg, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 144 ; 2 uses
  %i.cj = load ptr, ptr %i.cf, align 8, !nonnull !58, !align !436 ; 2 uses
  br label %bb.h

._crit_edge:                                      ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40
  %.not34 = icmp eq i32 %1, %i.d
  br i1 %.not34, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %bb.k

bb.h:                                             ; preds = %.lr.ph, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit
  %i.ck = phi i32 [ %i.by, %.lr.ph ], [ %i.et, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit ] ; 2 uses
  %.051 = phi i32 [ %i.c, %.lr.ph ], [ %i.ck, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit ] ; 2 uses
  %i.cl = sdiv i32 %.051, 64                      ; 3 uses
  %i.cm = sext i32 %i.cl to i64
  %i.cn = getelementptr inbounds [8 x i8], ptr %i.cb, i64 %i.cm
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !185
  %i.cp = xor i64 %i.co, %i.ce                    ; 2 uses
  switch i64 %i.cp, label %.lr.ph.i [
    i64 -1, label %bb.i
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit
  ]

.lr.ph.i:                                         ; preds = %bb.h
  %i.cq = shl nsw i32 %i.cl, 6
  %i.cr = load ptr, ptr %i.ci, align 8, !tbaa !2001
  %i.cs = sext i32 %i.cq to i64
  %i.ct = load ptr, ptr %i.cj, align 8, !tbaa !279
  br label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.cu = shl nsw i32 %i.cl, 6                    ; 4 uses
  %i.cv = add i32 %i.cu, 64
  %i.cw = sext i32 %i.cv to i64                   ; 3 uses
  %.0.off = add i32 %.051, 127
  %.not22.i = icmp ult i32 %.0.off, 64
  br i1 %.not22.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %iter.check

iter.check:                                       ; preds = %bb.i
  %i.cx = sext i32 %i.cu to i64                   ; 9 uses
  %i.cy = load ptr, ptr %i.ci, align 8, !tbaa !2001 ; 4 uses
  %i.cz = load ptr, ptr %i.cj, align 8, !tbaa !279 ; 4 uses
  %i.da = or disjoint i64 %i.cx, 1
  %umax67 = tail call i64 @llvm.umax.i64(i64 %i.da, i64 %i.cw) ; 2 uses
  %i.db = sub i64 %umax67, %i.cx                  ; 3 uses
  %min.iters.check = icmp ult i64 %i.db, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.dc = ptrtoaddr ptr %i.cz to i64
  %i.dd = ptrtoaddr ptr %i.cy to i64
  %i.de = or disjoint i64 %i.cx, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %i.de, i64 %i.cw)
  %i.df = xor i64 %i.cx, -1
  %i.dg = add i64 %umax, %i.df                    ; 2 uses
  %i.dh = trunc i64 %i.dg to i32
  %i.di = add i32 %i.cu, %i.dh
  %i.dj = icmp slt i32 %i.di, %i.cu
  %i.dk = icmp ugt i64 %i.dg, 4294967295
  %i.dl = or i1 %i.dj, %i.dk
  %i.dm = sub i64 %i.dd, %i.dc
  %diff.check = icmp ugt i64 %i.dm, -128
  %or.cond = select i1 %i.dl, i1 true, i1 %diff.check
  br i1 %or.cond, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.scevcheck
  %min.iters.check68 = icmp ult i64 %i.db, 16
  %n.mod.vf72 = and i64 %umax67, 1                ; 3 uses
  %n.vec73 = sub i64 %i.db, %n.mod.vf72           ; 3 uses
  %i.dn = add i64 %n.vec73, %i.cx                 ; 2 uses
  br i1 %min.iters.check68, label %vec.epilog.vector.body, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.do = add nuw i64 %index, %i.cx
  %i.dp = shl i64 %i.do, 32
  %i.dq = ashr exact i64 %i.dp, 32                ; 2 uses
  %i.dr = getelementptr inbounds [8 x i8], ptr %i.cy, i64 %i.dq ; 4 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 32
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dr, i64 64
  %i.du = getelementptr inbounds nuw i8, ptr %i.dr, i64 96
  %wide.load = load <4 x i64>, ptr %i.dr, align 8, !tbaa !185
  %wide.load69 = load <4 x i64>, ptr %i.ds, align 8, !tbaa !185
  %wide.load70 = load <4 x i64>, ptr %i.dt, align 8, !tbaa !185
  %wide.load71 = load <4 x i64>, ptr %i.du, align 8, !tbaa !185
  %i.dv = getelementptr inbounds [8 x i8], ptr %i.cz, i64 %i.dq ; 4 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 32
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dv, i64 64
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dv, i64 96
  store <4 x i64> %wide.load, ptr %i.dv, align 8, !tbaa !185
  store <4 x i64> %wide.load69, ptr %i.dw, align 8, !tbaa !185
  store <4 x i64> %wide.load70, ptr %i.dx, align 8, !tbaa !185
  store <4 x i64> %wide.load71, ptr %i.dy, align 8, !tbaa !185
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.dz = icmp eq i64 %index.next, %n.vec73
  br i1 %i.dz, label %middle.block, label %vector.body, !llvm.loop !2686

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.mod.vf72, 0
  br i1 %cmp.n, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.vector.body:                           ; preds = %vector.main.loop.iter.check, %vec.epilog.vector.body
  %index74 = phi i64 [ %index.next76, %vec.epilog.vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.ea = add nuw i64 %index74, %i.cx
  %i.eb = shl i64 %i.ea, 32
  %i.ec = ashr exact i64 %i.eb, 32                ; 2 uses
  %i.ed = getelementptr inbounds [8 x i8], ptr %i.cy, i64 %i.ec
  %wide.load75 = load <4 x i64>, ptr %i.ed, align 8, !tbaa !185
  %i.ee = getelementptr inbounds [8 x i8], ptr %i.cz, i64 %i.ec
  store <4 x i64> %wide.load75, ptr %i.ee, align 8, !tbaa !185
  %index.next76 = add nuw i64 %index74, 4         ; 2 uses
  %i.ef = icmp eq i64 %index.next76, %n.vec73
  br i1 %i.ef, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !2687

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n77 = icmp eq i64 %n.mod.vf72, 0
  br i1 %cmp.n77, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %middle.block, %vector.scevcheck, %iter.check, %vec.epilog.middle.block
  %.020.i.ph = phi i64 [ %i.dn, %middle.block ], [ %i.cx, %iter.check ], [ %i.cx, %vector.scevcheck ], [ %i.dn, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.020.i = phi i64 [ %i.ek, %vec.epilog.scalar.ph ], [ %.020.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %sext.i = shl i64 %.020.i, 32
  %i.eg = ashr exact i64 %sext.i, 32              ; 2 uses
  %i.eh = getelementptr inbounds [8 x i8], ptr %i.cy, i64 %i.eg
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !185
  %i.ej = getelementptr inbounds [8 x i8], ptr %i.cz, i64 %i.eg
  store i64 %i.ei, ptr %i.ej, align 8, !tbaa !185
  %i.ek = add nuw i64 %.020.i, 1                  ; 2 uses
  %i.el = icmp ult i64 %i.ek, %i.cw
  br i1 %i.el, label %vec.epilog.scalar.ph, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit, !llvm.loop !2688

bb.j:                                             ; preds = %bb.j, %.lr.ph.i
  %.01519.i = phi i64 [ %i.cp, %.lr.ph.i ], [ %i.es, %bb.j ] ; 3 uses
  %i.em = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01519.i, i1 true)
  %i.en = or disjoint i64 %i.em, %i.cs            ; 2 uses
  %i.eo = getelementptr inbounds [8 x i8], ptr %i.cr, i64 %i.en
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !185
  %i.eq = getelementptr inbounds [8 x i8], ptr %i.ct, i64 %i.en
  store i64 %i.ep, ptr %i.eq, align 8, !tbaa !185
  %i.er = add i64 %.01519.i, -1
  %i.es = and i64 %i.er, %.01519.i                ; 2 uses
  %.not.i41 = icmp eq i64 %i.es, 0
  br i1 %.not.i41, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %bb.j, !llvm.loop !2689

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit: ; preds = %vec.epilog.scalar.ph, %bb.j, %middle.block, %vec.epilog.middle.block, %bb.h, %bb.i
  %i.et = add nsw i32 %i.ck, 64                   ; 2 uses
  %.not33 = icmp sgt i32 %i.et, %i.d
  br i1 %.not33, label %._crit_edge, label %bb.h, !llvm.loop !2690

bb.k:                                             ; preds = %._crit_edge
  %i.eu = ashr i32 %1, 6
  %i.ev = and i32 %1, 63
  %i.ew = zext nneg i32 %i.ev to i64
  %notmask.i42 = shl nsw i64 -1, %i.ew
  %i.ex = xor i64 %notmask.i42, -1
  %i.ey = load i8, ptr %2, align 8, !tbaa !2080, !range !57, !noundef !58
  %i.ez = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !2083
  %i.fb = sext i32 %i.eu to i64
  %i.fc = getelementptr inbounds [8 x i8], ptr %i.fa, i64 %i.fb
  %i.fd = load i64, ptr %i.fc, align 8, !tbaa !185
  %i.fe = xor i8 %i.ey, 1
  %i.ff = zext nneg i8 %i.fe to i64
  %i.fg = sub nsw i64 0, %i.ff
  %i.fh = xor i64 %i.fd, %i.fg
  %i.fi = and i64 %i.fh, %i.ex                    ; 2 uses
  %.not.i43 = icmp eq i64 %i.fi, 0
  br i1 %.not.i43, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %.preheader.i44

.preheader.i44:                                   ; preds = %bb.k
  %i.fj = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.fk = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !2683
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 144
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !2001
  %i.fo = sext i32 %i.d to i64
  %i.fp = load ptr, ptr %i.fj, align 8, !tbaa !2684, !nonnull !58, !align !436
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !279
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.preheader.i44
  %.011.i45 = phi i64 [ %i.fi, %.preheader.i44 ], [ %i.fx, %bb.l ] ; 3 uses
  %i.fr = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i45, i1 true)
  %i.fs = or disjoint i64 %i.fr, %i.fo            ; 2 uses
  %i.ft = getelementptr inbounds [8 x i8], ptr %i.fn, i64 %i.fs
  %i.fu = load i64, ptr %i.ft, align 8, !tbaa !185
  %i.fv = getelementptr inbounds [8 x i8], ptr %i.fq, i64 %i.fs
  store i64 %i.fu, ptr %i.fv, align 8, !tbaa !185
  %i.fw = add nsw i64 %.011.i45, -1
  %i.fx = and i64 %i.fw, %.011.i45                ; 2 uses
  %.not10.i46 = icmp eq i64 %i.fx, 0
  br i1 %.not10.i46, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %bb.l, !llvm.loop !2685

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit: ; preds = %bb.l, %bb.d, %bb.k, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #0 align 2

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #2 align 2

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #10

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #10

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly11toAppendFitIJmPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEETnNSt9enable_ifIXsr12IsSomeStringINSt14remove_pointerI19__type_pack_elementIXmisPDpT_ELi1EEJSC_EEE4typeEEE5valueEiE4typeELi0EEEvDpRKSB_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [20 x i8], align 16               ; 6 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !2101
  %i.c = load i64, ptr %0, align 8, !tbaa !185
  %i.d = tail call noundef i64 @_ZN5folly13to_ascii_sizeILm10EEEmm(i64 noundef %i.c)
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 noundef %i.d)
  %i.e = load i64, ptr %0, align 8, !tbaa !185
  %i.f = load ptr, ptr %1, align 8, !tbaa !2101   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.g = call noundef i64 @_ZN5folly13to_ascii_withILm10ENS_17to_ascii_alphabetILb0EEELm20EEEmRAT1__cm(ptr noundef nonnull align 1 dereferenceable(20) %i.a, i64 noundef %i.e) ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !87   ; 5 uses
  %i.j = sub i64 9223372036854775807, %i.i
  %i.k = icmp ult i64 %i.j, %i.g
  br i1 %i.k, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i

bb.b:                                             ; preds = %bb.a
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.178) #39
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i: ; preds = %bb.a
  %i.l = add i64 %i.i, %i.g                       ; 3 uses
  %i.m = load ptr, ptr %i.f, align 8, !tbaa !44   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.p = icmp ult i64 %i.i, 16
  call void @llvm.assume(i1 %i.p)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.q = load i64, ptr %i.n, align 8, !tbaa !40
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.r = phi i64 [ %i.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i ]
  %.not.i.i.i = icmp ugt i64 %i.l, %i.r
  br i1 %.not.i.i.i, label %bb.g, label %bb.c

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  %.not8.i.i.i = icmp eq i64 %i.g, 0
  br i1 %.not8.i.i.i, label %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEENSt9enable_ifIXaaaaaa13is_integral_vIT0_Ent11is_signed_vIS8_Esr12IsSomeStringIT_EE5valuegestS8_Li4EEvE4typeES8_PS9_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.i ; 2 uses
  %cond.i.i.i = icmp eq i64 %i.g, 1
  br i1 %cond.i.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.t = load i8, ptr %i.a, align 16, !tbaa !40
  store i8 %i.t, ptr %i.s, align 1, !tbaa !40
  br label %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEENSt9enable_ifIXaaaaaa13is_integral_vIT0_Ent11is_signed_vIS8_Esr12IsSomeStringIT_EE5valuegestS8_Li4EEvE4typeES8_PS9_.exit

bb.f:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.s, ptr nonnull align 16 %i.a, i64 %i.g, i1 false)
  br label %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEENSt9enable_ifIXaaaaaa13is_integral_vIT0_Ent11is_signed_vIS8_Esr12IsSomeStringIT_EE5valuegestS8_Li4EEvE4typeES8_PS9_.exit

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 noundef %i.i, i64 noundef 0, ptr noundef nonnull %i.a, i64 noundef %i.g)
  br label %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEENSt9enable_ifIXaaaaaa13is_integral_vIT0_Ent11is_signed_vIS8_Esr12IsSomeStringIT_EE5valuegestS8_Li4EEvE4typeES8_PS9_.exit

_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEENSt9enable_ifIXaaaaaa13is_integral_vIT0_Ent11is_signed_vIS8_Esr12IsSomeStringIT_EE5valuegestS8_Li4EEvE4typeES8_PS9_.exit: ; preds = %bb.c, %bb.e, %bb.f, %bb.g
  store i64 %i.l, ptr %i.h, align 8, !tbaa !87
  %i.u = load ptr, ptr %i.f, align 8, !tbaa !44
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.l
  store i8 0, ptr %i.v, align 1, !tbaa !40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit:
  %i.a = load ptr, ptr %0, align 8, !tbaa !44     ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.c = icmp eq ptr %i.a, %i.b                   ; 2 uses
  %i.d = load i64, ptr %i.b, align 8
  %i.e = select i1 %i.c, i64 15, i64 %i.d         ; 2 uses
  %.not = icmp ugt i64 %1, %i.e
  br i1 %.not, label %bb.a, label %bb.g

bb.a:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.f = icmp slt i64 %1, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #39
  unreachable
end_hunk_6
begin_hunk_7_@_ZN8facebook5velox10FlatVectorInEC2EPNS0_6memory10MemoryPoolERKSt10shared_ptrIKNS0_4TypeEEN5boost13intrusive_ptrINS0_6BufferEEEiSF_OSt6vectorISF_SaISF_EERKNS0_17SimpleVectorStatsInEESt8optionalIiESP_SO_IbESP_SP_:bb.a
  br label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.ak = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i34 = icmp eq i8 %i.ak, 0
  br i1 %.not.i.i.i34, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.al = add nsw i32 %i.ac, -1
  store i32 %i.al, ptr %i.z, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.am = atomicrmw volatile add ptr %i.z, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i = phi i32 [ %i.ac, %bb.k ], [ %i.am, %bb.l ]
  %i.an = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.an, label %bb.m, label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !36

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.y) #22
  br label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.m
  store ptr getelementptr inbounds nuw inrange(-16, 400) (i8, ptr @_ZTVN8facebook5velox10FlatVectorInEE, i64 16), ptr %0, align 16, !tbaa !17
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 4 uses
  %i.ap = load ptr, ptr %5, align 8, !tbaa !232
  store ptr %i.ap, ptr %i.ao, align 16, !tbaa !232
  store ptr null, ptr %5, align 8, !tbaa !232
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.ar = load ptr, ptr %i.ao, align 16, !tbaa !232 ; 2 uses
  %.not = icmp eq ptr %i.ar, null
  br i1 %.not, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !238
  br label %bb.o

bb.o:                                             ; preds = %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.n
  %i.au = phi ptr [ %i.at, %bb.n ], [ null, %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ]
  store ptr %i.au, ptr %i.aq, align 8, !tbaa !598
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.av, i8 0, i64 24, i1 false)
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %i.aw, align 8, !tbaa !1568
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 224
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ax, i8 0, i64 16, i1 false)
  %i.ay = load <2 x ptr>, ptr %6, align 8, !tbaa !1622
  store <2 x ptr> %i.ay, ptr %17, align 16, !tbaa !1622
  %i.az = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !1572
  store ptr %i.bb, ptr %i.az, align 16, !tbaa !1572
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  invoke void @_ZN8facebook5velox10FlatVectorInE16setStringBuffersESt6vectorIN5boost13intrusive_ptrINS0_6BufferEEESaIS7_EE(ptr noundef nonnull align 16 dereferenceable(240) %0, ptr noundef nonnull %17)
          to label %bb.p unwind label %bb.x

bb.p:                                             ; preds = %bb.o
  %i.bc = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.bd = load ptr, ptr %17, align 16, !tbaa !1569 ; 3 uses
  %i.be = load ptr, ptr %i.bc, align 8, !tbaa !1570 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.bd, %i.be
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.p, %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.bt, %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i ], [ %i.bd, %bb.p ] ; 2 uses
  %i.bf = load ptr, ptr %.05.i.i.i, align 8, !tbaa !232 ; 7 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bf, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i.i.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 40
  %i.bh = atomicrmw sub ptr %i.bg, i32 1 acq_rel, align 4
  %i.bi = icmp eq i32 %i.bh, 1
  br i1 %i.bi, label %.sink.split.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i

.sink.split.i.i.i.i.i.i.i:                        ; preds = %bb.q
  %i.bj = load ptr, ptr %i.bf, align 8, !tbaa !17
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 64
  %i.bl = load ptr, ptr %i.bk, align 8
  invoke void %i.bl(ptr noundef nonnull align 8 dereferenceable(64) %i.bf)
          to label %.noexc.i.i.i.i.i.i unwind label %bb.r, !inline_history !246

.noexc.i.i.i.i.i.i:                               ; preds = %.sink.split.i.i.i.i.i.i.i
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !247
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bn, null
  %i.bo = load ptr, ptr %i.bf, align 8, !tbaa !17
  %..i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i, i64 8, i64 48
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 %..i.i.i.i.i.i.i
  %i.bq = load ptr, ptr %i.bp, align 8
  invoke void %i.bq(ptr noundef nonnull align 8 dereferenceable(64) %i.bf)
          to label %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i unwind label %bb.r, !inline_history !246

bb.r:                                             ; preds = %.noexc.i.i.i.i.i.i, %.sink.split.i.i.i.i.i.i.i
  %i.br = landingpad { ptr, i32 }
          catch ptr null
  %i.bs = extractvalue { ptr, i32 } %i.br, 0
  call void @__clang_call_terminate(ptr %i.bs) #42
  unreachable

_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i: ; preds = %.noexc.i.i.i.i.i.i, %bb.q, %.lr.ph.i.i.i
  %i.bt = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i35 = icmp eq ptr %i.bt, %i.be
  br i1 %.not.i.i.i35, label %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !1571

_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %17, align 16, !tbaa !1569
  br label %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %bb.p
  %i.bu = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.bd, %bb.p ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.bu, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.bv = load ptr, ptr %i.az, align 16, !tbaa !1572
  %i.bw = ptrtoint ptr %i.bv to i64
  %i.bx = ptrtoint ptr %i.bu to i64
  %i.by = sub i64 %i.bw, %i.bx
  call void @_ZdlPvm(ptr noundef nonnull %i.bu, i64 noundef %i.by) #40
  br label %_ZNSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EED2Ev.exit

_ZNSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.s
  %i.bz = load ptr, ptr %i.ao, align 16, !tbaa !232 ; 5 uses
  %.not53 = icmp eq ptr %i.bz, null
  br i1 %.not53, label %bb.t, label %.critedge

bb.t:                                             ; preds = %_ZNSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EED2Ev.exit
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cb = load ptr, ptr %i.ca, align 16, !tbaa !232
  %.not54 = icmp eq ptr %i.cb, null
  br i1 %.not54, label %bb.u, label %bb.z, !prof !36

bb.u:                                             ; preds = %bb.t
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10FlatVectorInEC1EPNS0_6memory10MemoryPoolERKSt10shared_ptrIKNS0_4TypeEEN5boost13intrusive_ptrINS0_6BufferEEEiSF_OSt6vectorISF_SaISF_EERKNS0_17SimpleVectorStatsInEESt8optionalIiESP_SO_IbESP_SP_E18veloxCheckFailArgs_0, ptr noundef nonnull @.str.141) #39
          to label %bb.v unwind label %bb.y

bb.v:                                             ; preds = %bb.u
  unreachable

bb.w:                                             ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit
  %i.cc = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %16) #22
  call void @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %15) #22
  br label %bb.aq

bb.x:                                             ; preds = %bb.o
  %i.cd = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %17) #22
  br label %bb.ap

bb.y:                                             ; preds = %bb.u
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.z:                                             ; preds = %bb.t
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !676 ; 4 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ci = load i32, ptr %i.ch, align 8, !tbaa !164 ; 5 uses
  %.not.i.i.i36 = icmp sgt i32 %i.ci, 0
  br i1 %.not.i.i.i36, label %bb.aa, label %.thread

bb.aa:                                            ; preds = %bb.z
  %i.cj = and i32 %i.ci, 2147483584               ; 3 uses
  %.not3342.i.i.i = icmp eq i32 %i.cj, 0
  br i1 %.not3342.i.i.i, label %._crit_edge.i.i.i, label %iter.check

iter.check:                                       ; preds = %bb.aa
  %i.ck = zext nneg i32 %i.cj to i64              ; 2 uses
  %i.cl = add nsw i64 %i.ck, -64                  ; 3 uses
  %i.cm = lshr exact i64 %i.cl, 6
  %i.cn = add nuw nsw i64 %i.cm, 1                ; 5 uses
  %min.iters.check = icmp ult i64 %i.cl, 192
  br i1 %min.iters.check, label %.lr.ph.i.i.i37.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check78 = icmp ult i64 %i.cl, 960
  br i1 %min.iters.check78, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.cn, 12
  %n.vec = and i64 %i.cn, 576460752303423472      ; 4 uses
  %i.co = shl i64 %n.vec, 6                       ; 2 uses
  %i.cp = or disjoint i64 %i.co, 64
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.dd, %vector.body ]
  %vec.phi79 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.de, %vector.body ]
  %vec.phi80 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.df, %vector.body ]
  %vec.phi81 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.dg, %vector.body ]
  %i.cq = shl nuw nsw i64 %index, 3
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.cq ; 4 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 32
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 64
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 96
  %wide.load = load <4 x i64>, ptr %i.cr, align 8, !tbaa !185
  %wide.load82 = load <4 x i64>, ptr %i.cs, align 8, !tbaa !185
  %wide.load83 = load <4 x i64>, ptr %i.ct, align 8, !tbaa !185
  %wide.load84 = load <4 x i64>, ptr %i.cu, align 8, !tbaa !185
  %i.cv = call range(i64 0, 65) <4 x i64> @llvm.ctpop.v4i64(<4 x i64> %wide.load)
  %i.cw = call range(i64 0, 65) <4 x i64> @llvm.ctpop.v4i64(<4 x i64> %wide.load82)
  %i.cx = call range(i64 0, 65) <4 x i64> @llvm.ctpop.v4i64(<4 x i64> %wide.load83)
  %i.cy = call range(i64 0, 65) <4 x i64> @llvm.ctpop.v4i64(<4 x i64> %wide.load84)
  %i.cz = trunc nuw nsw <4 x i64> %i.cv to <4 x i32>
  %i.da = trunc nuw nsw <4 x i64> %i.cw to <4 x i32>
  %i.db = trunc nuw nsw <4 x i64> %i.cx to <4 x i32>
  %i.dc = trunc nuw nsw <4 x i64> %i.cy to <4 x i32>
  %i.dd = add <4 x i32> %vec.phi, %i.cz           ; 2 uses
  %i.de = add <4 x i32> %vec.phi79, %i.da         ; 2 uses
  %i.df = add <4 x i32> %vec.phi80, %i.db         ; 2 uses
  %i.dg = add <4 x i32> %vec.phi81, %i.dc         ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.dh = icmp eq i64 %index.next, %n.vec
  br i1 %i.dh, label %middle.block, label %vector.body, !llvm.loop !2794

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.de, %i.dd
  %bin.rdx85 = add <4 x i32> %i.df, %bin.rdx
  %bin.rdx86 = add <4 x i32> %i.dg, %bin.rdx85
  %i.di = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx86) ; 3 uses
  %cmp.n = icmp eq i64 %i.cn, %n.vec
  br i1 %cmp.n, label %._crit_edge.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i37.preheader, label %vec.epilog.ph, !prof !261

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i32 [ %i.di, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec89 = and i64 %i.cn, 576460752303423484    ; 3 uses
  %i.dj = shl i64 %n.vec89, 6                     ; 2 uses
  %i.dk = or disjoint i64 %i.dj, 64
  %i.dl = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index90 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next93, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi91 = phi <4 x i32> [ %i.dl, %vec.epilog.ph ], [ %i.dq, %vec.epilog.vector.body ]
  %i.dm = shl nuw nsw i64 %index90, 3
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.dm
  %wide.load92 = load <4 x i64>, ptr %i.dn, align 8, !tbaa !185
  %i.do = call range(i64 0, 65) <4 x i64> @llvm.ctpop.v4i64(<4 x i64> %wide.load92)
  %i.dp = trunc nuw nsw <4 x i64> %i.do to <4 x i32>
  %i.dq = add <4 x i32> %vec.phi91, %i.dp         ; 2 uses
  %index.next93 = add nuw i64 %index90, 4         ; 2 uses
  %i.dr = icmp eq i64 %index.next93, %n.vec89
  br i1 %i.dr, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !2795

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.ds = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.dq) ; 2 uses
  %cmp.n94 = icmp eq i64 %i.cn, %n.vec89
  br i1 %cmp.n94, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i37.preheader

.lr.ph.i.i.i37.preheader:                         ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv55.ph = phi i64 [ 0, %iter.check ], [ %i.co, %vec.epilog.iter.check ], [ %i.dj, %vec.epilog.middle.block ]
  %indvars.iv.ph = phi i64 [ 64, %iter.check ], [ %i.cp, %vec.epilog.iter.check ], [ %i.dk, %vec.epilog.middle.block ]
  %.ph = phi i32 [ 0, %iter.check ], [ %i.di, %vec.epilog.iter.check ], [ %i.ds, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i37

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i37, %middle.block, %vec.epilog.middle.block, %bb.aa
  %.1.i.i = phi i32 [ 0, %bb.aa ], [ %i.ds, %vec.epilog.middle.block ], [ %i.di, %middle.block ], [ %i.dz, %.lr.ph.i.i.i37 ] ; 2 uses
  %.not34.i.i.i = icmp eq i32 %i.ci, %i.cj
  br i1 %.not34.i.i.i, label %bb.ab, label %.sink.split.i.i.i

.lr.ph.i.i.i37:                                   ; preds = %.lr.ph.i.i.i37.preheader, %.lr.ph.i.i.i37
  %indvars.iv55 = phi i64 [ %indvars.iv.next56, %.lr.ph.i.i.i37 ], [ %indvars.iv55.ph, %.lr.ph.i.i.i37.preheader ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph.i.i.i37 ], [ %indvars.iv.ph, %.lr.ph.i.i.i37.preheader ] ; 2 uses
  %i.dt = phi i32 [ %i.dz, %.lr.ph.i.i.i37 ], [ %.ph, %.lr.ph.i.i.i37.preheader ]
  %i.du = lshr exact i64 %indvars.iv55, 3
  %i.dv = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.du
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !185
  %i.dx = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.dw)
  %i.dy = trunc nuw nsw i64 %i.dx to i32
  %i.dz = add nuw nsw i32 %i.dt, %i.dy            ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 64
  %.not33.i.i.i.not = icmp samesign ult i64 %indvars.iv, %i.ck
  %indvars.iv.next56 = add nuw nsw i64 %indvars.iv55, 64
  br i1 %.not33.i.i.i.not, label %.lr.ph.i.i.i37, label %._crit_edge.i.i.i, !llvm.loop !2796

.sink.split.i.i.i:                                ; preds = %._crit_edge.i.i.i
  %i.ea = lshr i32 %i.ci, 6
  %i.eb = and i32 %i.ci, 63
  %i.ec = zext nneg i32 %i.eb to i64
  %notmask.i36.i.i.i = shl nsw i64 -1, %i.ec
  %i.ed = xor i64 %notmask.i36.i.i.i, -1
  %i.ee = zext nneg i32 %i.ea to i64
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %i.ee
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !185
  %i.eh = and i64 %i.eg, %i.ed
  %i.ei = call range(i64 0, 64) i64 @llvm.ctpop.i64(i64 %i.eh)
  %i.ej = trunc nuw nsw i64 %i.ei to i32
  %i.ek = add nsw i32 %.1.i.i, %i.ej
  br label %bb.ab

bb.ab:                                            ; preds = %.sink.split.i.i.i, %._crit_edge.i.i.i
  %.3.i.i = phi i32 [ %i.ek, %.sink.split.i.i.i ], [ %.1.i.i, %._crit_edge.i.i.i ] ; 2 uses
  %.not26 = icmp eq i32 %.3.i.i, 0
  br i1 %.not26, label %.thread, label %bb.ac, !prof !2011

bb.ac:                                            ; preds = %bb.ab
  %i.el = sext i32 %.3.i.i to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22, !noalias !2797
  store i32 0, ptr %14, align 16, !tbaa !40, !alias.scope !2800, !noalias !2797
  %i.em = getelementptr inbounds nuw i8, ptr %14, i64 16
  store i64 %i.el, ptr %i.em, align 16, !tbaa !40, !alias.scope !2800, !noalias !2797
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %18, ptr nonnull @.str.143, i64 77, i64 65, ptr nonnull %14)
          to label %bb.ad unwind label %bb.af

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22, !noalias !2797
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10FlatVectorInEC1EPNS0_6memory10MemoryPoolERKSt10shared_ptrIKNS0_4TypeEEN5boost13intrusive_ptrINS0_6BufferEEEiSF_OSt6vectorISF_SaISF_EERKNS0_17SimpleVectorStatsInEESt8optionalIiESP_SO_IbESP_SP_E18veloxCheckFailArgs_1, ptr noundef nonnull align 8 dereferenceable(32) %18, ptr nonnull @.str.143) #39
          to label %bb.ae unwind label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  unreachable

bb.af:                                            ; preds = %bb.ac
  %i.en = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.ag:                                            ; preds = %bb.ad
  %i.eo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ep = load ptr, ptr %18, align 8, !tbaa !44   ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.er = icmp eq ptr %i.ep, %i.eq
  br i1 %i.er, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.ag
  %i.es = load i64, ptr %i.eq, align 8, !tbaa !40
  %i.et = add i64 %i.es, 1
  call void @_ZdlPvm(ptr noundef %i.ep, i64 noundef %i.et) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.af
  %.pn27 = phi { ptr, i32 } [ %i.eo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.en, %bb.af ], [ %i.eo, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #22
  br label %bb.ap

.critedge:                                        ; preds = %_ZNSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EED2Ev.exit
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ev = load i32, ptr %i.eu, align 8, !tbaa !164
  %i.ew = sext i32 %i.ev to i64
  %i.ex = shl nsw i64 %i.ew, 4                    ; 4 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.bz, i64 32
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !744 ; 2 uses
  %.not23 = icmp ult i64 %i.ez, %i.ex
  br i1 %.not23, label %bb.ah, label %bb.am, !prof !36

bb.ah:                                            ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22, !noalias !2803
  store i64 %i.ez, ptr %13, align 16, !tbaa !40, !alias.scope !2806, !noalias !2803
  %i.fa = getelementptr inbounds nuw i8, ptr %13, i64 16
  store i64 %i.ex, ptr %i.fa, align 16, !tbaa !40, !alias.scope !2806, !noalias !2803
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %19, ptr nonnull @.str.22, i64 11, i64 68, ptr nonnull %13)
          to label %bb.ai unwind label %bb.ak

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22, !noalias !2803
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10FlatVectorInEC1EPNS0_6memory10MemoryPoolERKSt10shared_ptrIKNS0_4TypeEEN5boost13intrusive_ptrINS0_6BufferEEEiSF_OSt6vectorISF_SaISF_EERKNS0_17SimpleVectorStatsInEESt8optionalIiESP_SO_IbESP_SP_E18veloxCheckFailArgs_4, ptr noundef nonnull align 8 dereferenceable(32) %19, ptr nonnull @.str.22) #39
          to label %bb.aj unwind label %bb.al

bb.aj:                                            ; preds = %bb.ai
  unreachable

bb.ak:                                            ; preds = %bb.ah
  %i.fb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40

bb.al:                                            ; preds = %bb.ai
  %i.fc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fd = load ptr, ptr %19, align 8, !tbaa !44   ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.ff = icmp eq ptr %i.fd, %i.fe
  br i1 %i.ff, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38: ; preds = %bb.al
  %i.fg = load i64, ptr %i.fe, align 8, !tbaa !40
  %i.fh = add i64 %i.fg, 1
  call void @_ZdlPvm(ptr noundef %i.fd, i64 noundef %i.fh) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40: ; preds = %bb.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38, %bb.ak
  %.pn = phi { ptr, i32 } [ %i.fc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38 ], [ %i.fb, %bb.ak ], [ %i.fc, %bb.al ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #22
  br label %bb.ap

bb.am:                                            ; preds = %.critedge
  %i.fi = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  %i.fj = load i64, ptr %i.fi, align 8, !tbaa !460
  %i.fk = icmp ult i64 %i.fj, %i.ex
  br i1 %i.fk, label %bb.an, label %.thread

bb.an:                                            ; preds = %bb.am
  %i.fl = load ptr, ptr %i.bz, align 8, !tbaa !17
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 16
  %i.fn = load ptr, ptr %i.fm, align 8
  invoke void %i.fn(ptr noundef nonnull align 8 dereferenceable(64) %i.bz, i64 noundef %i.ex)
          to label %.thread unwind label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.fo = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

.thread:                                          ; preds = %bb.z, %bb.am, %bb.an, %bb.ab
  ret void

bb.ap:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, %bb.ao, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.y, %bb.x
  %.pn30 = phi { ptr, i32 } [ %i.ce, %bb.y ], [ %i.cd, %bb.x ], [ %i.fo, %bb.ao ], [ %.pn27, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40 ]
  call void @_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.aw) #22
  call void @_ZNSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.av) #22
  call void @_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ao) #22
  call void @_ZN8facebook5velox10BaseVectorD2Ev(ptr noundef nonnull align 16 dereferenceable(176) %0) #22
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.w
  %.pn30.pn = phi { ptr, i32 } [ %.pn30, %bb.ap ], [ %i.cc, %bb.w ]
  resume { ptr, i32 } %.pn30.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox12SimpleVectorInEC2EPNS0_6memory10MemoryPoolESt10shared_ptrIKNS0_4TypeEENS0_14VectorEncoding6SimpleEN5boost13intrusive_ptrINS0_6BufferEEEiRKNS0_17SimpleVectorStatsInEESt8optionalIiESL_SK_IbESL_SL_(ptr noundef nonnull align 16 dereferenceable(176) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef nonnull align 16 dereferenceable(64) %6, i64 %7, i64 %8, i16 %9, i64 %10, i64 %11) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %12 = alloca %"class.std::shared_ptr.0", align 16 ; 4 uses
  %13 = alloca %"class.boost::intrusive_ptr", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load <2 x ptr>, ptr %2, align 8, !tbaa !84
  store ptr null, ptr %i.b, align 8, !tbaa !89
  store <2 x ptr> %i.c, ptr %12, align 16, !tbaa !84
  store ptr null, ptr %2, align 8, !tbaa !106
  %i.d = load ptr, ptr %4, align 8, !tbaa !232
  store ptr %i.d, ptr %13, align 8, !tbaa !232
  store ptr null, ptr %4, align 8, !tbaa !232
end_hunk_7
begin_hunk_8_@_ZN8facebook5velox10FlatVectorIaEC2EPNS0_6memory10MemoryPoolERKSt10shared_ptrIKNS0_4TypeEEN5boost13intrusive_ptrINS0_6BufferEEEiSF_OSt6vectorISF_SaISF_EERKNS0_17SimpleVectorStatsIaEESt8optionalIiESP_SO_IbESP_SP_:bb.a
  br label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.ak = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i34 = icmp eq i8 %i.ak, 0
  br i1 %.not.i.i.i34, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.al = add nsw i32 %i.ac, -1
  store i32 %i.al, ptr %i.z, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.am = atomicrmw volatile add ptr %i.z, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i = phi i32 [ %i.ac, %bb.k ], [ %i.am, %bb.l ]
  %i.an = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.an, label %bb.m, label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !36

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.y) #22
  br label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.m
  store ptr getelementptr inbounds nuw inrange(-16, 400) (i8, ptr @_ZTVN8facebook5velox10FlatVectorIaEE, i64 16), ptr %0, align 8, !tbaa !17
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 4 uses
  %i.ap = load ptr, ptr %5, align 8, !tbaa !232
  store ptr %i.ap, ptr %i.ao, align 8, !tbaa !232
  store ptr null, ptr %5, align 8, !tbaa !232
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ar = load ptr, ptr %i.ao, align 8, !tbaa !232 ; 2 uses
  %.not = icmp eq ptr %i.ar, null
  br i1 %.not, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !238
  br label %bb.o

bb.o:                                             ; preds = %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.n
  %i.au = phi ptr [ %i.at, %bb.n ], [ null, %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ]
  store ptr %i.au, ptr %i.aq, align 8, !tbaa !619
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.av, i8 0, i64 24, i1 false)
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %i.aw, align 8, !tbaa !1568
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 160
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, i8 0, i64 16, i1 false)
  %i.ay = load <2 x ptr>, ptr %6, align 8, !tbaa !1622
  store <2 x ptr> %i.ay, ptr %17, align 16, !tbaa !1622
  %i.az = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !1572
  store ptr %i.bb, ptr %i.az, align 16, !tbaa !1572
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  invoke void @_ZN8facebook5velox10FlatVectorIaE16setStringBuffersESt6vectorIN5boost13intrusive_ptrINS0_6BufferEEESaIS7_EE(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull %17)
          to label %bb.p unwind label %bb.x

bb.p:                                             ; preds = %bb.o
  %i.bc = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.bd = load ptr, ptr %17, align 16, !tbaa !1569 ; 3 uses
  %i.be = load ptr, ptr %i.bc, align 8, !tbaa !1570 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.bd, %i.be
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.p, %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.bt, %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i ], [ %i.bd, %bb.p ] ; 2 uses
  %i.bf = load ptr, ptr %.05.i.i.i, align 8, !tbaa !232 ; 7 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bf, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i.i.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 40
  %i.bh = atomicrmw sub ptr %i.bg, i32 1 acq_rel, align 4
  %i.bi = icmp eq i32 %i.bh, 1
  br i1 %i.bi, label %.sink.split.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i

.sink.split.i.i.i.i.i.i.i:                        ; preds = %bb.q
  %i.bj = load ptr, ptr %i.bf, align 8, !tbaa !17
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 64
  %i.bl = load ptr, ptr %i.bk, align 8
  invoke void %i.bl(ptr noundef nonnull align 8 dereferenceable(64) %i.bf)
          to label %.noexc.i.i.i.i.i.i unwind label %bb.r, !inline_history !246

.noexc.i.i.i.i.i.i:                               ; preds = %.sink.split.i.i.i.i.i.i.i
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !247
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bn, null
  %i.bo = load ptr, ptr %i.bf, align 8, !tbaa !17
  %..i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i, i64 8, i64 48
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 %..i.i.i.i.i.i.i
  %i.bq = load ptr, ptr %i.bp, align 8
  invoke void %i.bq(ptr noundef nonnull align 8 dereferenceable(64) %i.bf)
          to label %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i unwind label %bb.r, !inline_history !246

bb.r:                                             ; preds = %.noexc.i.i.i.i.i.i, %.sink.split.i.i.i.i.i.i.i
  %i.br = landingpad { ptr, i32 }
          catch ptr null
  %i.bs = extractvalue { ptr, i32 } %i.br, 0
  call void @__clang_call_terminate(ptr %i.bs) #42
  unreachable

_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i: ; preds = %.noexc.i.i.i.i.i.i, %bb.q, %.lr.ph.i.i.i
  %i.bt = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i35 = icmp eq ptr %i.bt, %i.be
  br i1 %.not.i.i.i35, label %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !1571

_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %17, align 16, !tbaa !1569
  br label %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %bb.p
  %i.bu = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.bd, %bb.p ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.bu, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.bv = load ptr, ptr %i.az, align 16, !tbaa !1572
  %i.bw = ptrtoint ptr %i.bv to i64
  %i.bx = ptrtoint ptr %i.bu to i64
  %i.by = sub i64 %i.bw, %i.bx
  call void @_ZdlPvm(ptr noundef nonnull %i.bu, i64 noundef %i.by) #40
  br label %_ZNSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EED2Ev.exit

_ZNSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.s
  %i.bz = load ptr, ptr %i.ao, align 8, !tbaa !232 ; 5 uses
  %.not53 = icmp eq ptr %i.bz, null
  br i1 %.not53, label %bb.t, label %.critedge

bb.t:                                             ; preds = %_ZNSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EED2Ev.exit
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !232
  %.not54 = icmp eq ptr %i.cb, null
  br i1 %.not54, label %bb.u, label %bb.z, !prof !36

bb.u:                                             ; preds = %bb.t
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10FlatVectorIaEC1EPNS0_6memory10MemoryPoolERKSt10shared_ptrIKNS0_4TypeEEN5boost13intrusive_ptrINS0_6BufferEEEiSF_OSt6vectorISF_SaISF_EERKNS0_17SimpleVectorStatsIaEESt8optionalIiESP_SO_IbESP_SP_E18veloxCheckFailArgs_0, ptr noundef nonnull @.str.141) #39
          to label %bb.v unwind label %bb.y

bb.v:                                             ; preds = %bb.u
  unreachable

bb.w:                                             ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit
  %i.cc = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %16) #22
  call void @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %15) #22
  br label %bb.aq

bb.x:                                             ; preds = %bb.o
  %i.cd = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %17) #22
  br label %bb.ap

bb.y:                                             ; preds = %bb.u
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.z:                                             ; preds = %bb.t
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !676 ; 4 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ci = load i32, ptr %i.ch, align 8, !tbaa !164 ; 5 uses
  %.not.i.i.i36 = icmp sgt i32 %i.ci, 0
  br i1 %.not.i.i.i36, label %bb.aa, label %.thread

bb.aa:                                            ; preds = %bb.z
  %i.cj = and i32 %i.ci, 2147483584               ; 3 uses
  %.not3342.i.i.i = icmp eq i32 %i.cj, 0
  br i1 %.not3342.i.i.i, label %._crit_edge.i.i.i, label %iter.check

iter.check:                                       ; preds = %bb.aa
  %i.ck = zext nneg i32 %i.cj to i64              ; 2 uses
  %i.cl = add nsw i64 %i.ck, -64                  ; 3 uses
  %i.cm = lshr exact i64 %i.cl, 6
  %i.cn = add nuw nsw i64 %i.cm, 1                ; 5 uses
  %min.iters.check = icmp ult i64 %i.cl, 192
  br i1 %min.iters.check, label %.lr.ph.i.i.i37.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check78 = icmp ult i64 %i.cl, 960
  br i1 %min.iters.check78, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.cn, 12
  %n.vec = and i64 %i.cn, 576460752303423472      ; 4 uses
  %i.co = shl i64 %n.vec, 6                       ; 2 uses
  %i.cp = or disjoint i64 %i.co, 64
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.dd, %vector.body ]
  %vec.phi79 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.de, %vector.body ]
  %vec.phi80 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.df, %vector.body ]
  %vec.phi81 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.dg, %vector.body ]
  %i.cq = shl nuw nsw i64 %index, 3
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.cq ; 4 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 32
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 64
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 96
  %wide.load = load <4 x i64>, ptr %i.cr, align 8, !tbaa !185
  %wide.load82 = load <4 x i64>, ptr %i.cs, align 8, !tbaa !185
  %wide.load83 = load <4 x i64>, ptr %i.ct, align 8, !tbaa !185
  %wide.load84 = load <4 x i64>, ptr %i.cu, align 8, !tbaa !185
  %i.cv = call range(i64 0, 65) <4 x i64> @llvm.ctpop.v4i64(<4 x i64> %wide.load)
  %i.cw = call range(i64 0, 65) <4 x i64> @llvm.ctpop.v4i64(<4 x i64> %wide.load82)
  %i.cx = call range(i64 0, 65) <4 x i64> @llvm.ctpop.v4i64(<4 x i64> %wide.load83)
  %i.cy = call range(i64 0, 65) <4 x i64> @llvm.ctpop.v4i64(<4 x i64> %wide.load84)
  %i.cz = trunc nuw nsw <4 x i64> %i.cv to <4 x i32>
  %i.da = trunc nuw nsw <4 x i64> %i.cw to <4 x i32>
  %i.db = trunc nuw nsw <4 x i64> %i.cx to <4 x i32>
  %i.dc = trunc nuw nsw <4 x i64> %i.cy to <4 x i32>
  %i.dd = add <4 x i32> %vec.phi, %i.cz           ; 2 uses
  %i.de = add <4 x i32> %vec.phi79, %i.da         ; 2 uses
  %i.df = add <4 x i32> %vec.phi80, %i.db         ; 2 uses
  %i.dg = add <4 x i32> %vec.phi81, %i.dc         ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.dh = icmp eq i64 %index.next, %n.vec
  br i1 %i.dh, label %middle.block, label %vector.body, !llvm.loop !3298

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.de, %i.dd
  %bin.rdx85 = add <4 x i32> %i.df, %bin.rdx
  %bin.rdx86 = add <4 x i32> %i.dg, %bin.rdx85
  %i.di = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx86) ; 3 uses
  %cmp.n = icmp eq i64 %i.cn, %n.vec
  br i1 %cmp.n, label %._crit_edge.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i37.preheader, label %vec.epilog.ph, !prof !261

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i32 [ %i.di, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec89 = and i64 %i.cn, 576460752303423484    ; 3 uses
  %i.dj = shl i64 %n.vec89, 6                     ; 2 uses
  %i.dk = or disjoint i64 %i.dj, 64
  %i.dl = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index90 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next93, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi91 = phi <4 x i32> [ %i.dl, %vec.epilog.ph ], [ %i.dq, %vec.epilog.vector.body ]
  %i.dm = shl nuw nsw i64 %index90, 3
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.dm
  %wide.load92 = load <4 x i64>, ptr %i.dn, align 8, !tbaa !185
  %i.do = call range(i64 0, 65) <4 x i64> @llvm.ctpop.v4i64(<4 x i64> %wide.load92)
  %i.dp = trunc nuw nsw <4 x i64> %i.do to <4 x i32>
  %i.dq = add <4 x i32> %vec.phi91, %i.dp         ; 2 uses
  %index.next93 = add nuw i64 %index90, 4         ; 2 uses
  %i.dr = icmp eq i64 %index.next93, %n.vec89
  br i1 %i.dr, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !3299

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.ds = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.dq) ; 2 uses
  %cmp.n94 = icmp eq i64 %i.cn, %n.vec89
  br i1 %cmp.n94, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i37.preheader

.lr.ph.i.i.i37.preheader:                         ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv55.ph = phi i64 [ 0, %iter.check ], [ %i.co, %vec.epilog.iter.check ], [ %i.dj, %vec.epilog.middle.block ]
  %indvars.iv.ph = phi i64 [ 64, %iter.check ], [ %i.cp, %vec.epilog.iter.check ], [ %i.dk, %vec.epilog.middle.block ]
  %.ph = phi i32 [ 0, %iter.check ], [ %i.di, %vec.epilog.iter.check ], [ %i.ds, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i37

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i37, %middle.block, %vec.epilog.middle.block, %bb.aa
  %.1.i.i = phi i32 [ 0, %bb.aa ], [ %i.ds, %vec.epilog.middle.block ], [ %i.di, %middle.block ], [ %i.dz, %.lr.ph.i.i.i37 ] ; 2 uses
  %.not34.i.i.i = icmp eq i32 %i.ci, %i.cj
  br i1 %.not34.i.i.i, label %bb.ab, label %.sink.split.i.i.i

.lr.ph.i.i.i37:                                   ; preds = %.lr.ph.i.i.i37.preheader, %.lr.ph.i.i.i37
  %indvars.iv55 = phi i64 [ %indvars.iv.next56, %.lr.ph.i.i.i37 ], [ %indvars.iv55.ph, %.lr.ph.i.i.i37.preheader ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph.i.i.i37 ], [ %indvars.iv.ph, %.lr.ph.i.i.i37.preheader ] ; 2 uses
  %i.dt = phi i32 [ %i.dz, %.lr.ph.i.i.i37 ], [ %.ph, %.lr.ph.i.i.i37.preheader ]
  %i.du = lshr exact i64 %indvars.iv55, 3
  %i.dv = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.du
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !185
  %i.dx = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.dw)
  %i.dy = trunc nuw nsw i64 %i.dx to i32
  %i.dz = add nuw nsw i32 %i.dt, %i.dy            ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 64
  %.not33.i.i.i.not = icmp samesign ult i64 %indvars.iv, %i.ck
  %indvars.iv.next56 = add nuw nsw i64 %indvars.iv55, 64
  br i1 %.not33.i.i.i.not, label %.lr.ph.i.i.i37, label %._crit_edge.i.i.i, !llvm.loop !3300

.sink.split.i.i.i:                                ; preds = %._crit_edge.i.i.i
  %i.ea = lshr i32 %i.ci, 6
  %i.eb = and i32 %i.ci, 63
  %i.ec = zext nneg i32 %i.eb to i64
  %notmask.i36.i.i.i = shl nsw i64 -1, %i.ec
  %i.ed = xor i64 %notmask.i36.i.i.i, -1
  %i.ee = zext nneg i32 %i.ea to i64
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %i.ee
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !185
  %i.eh = and i64 %i.eg, %i.ed
  %i.ei = call range(i64 0, 64) i64 @llvm.ctpop.i64(i64 %i.eh)
  %i.ej = trunc nuw nsw i64 %i.ei to i32
  %i.ek = add nsw i32 %.1.i.i, %i.ej
  br label %bb.ab

bb.ab:                                            ; preds = %.sink.split.i.i.i, %._crit_edge.i.i.i
  %.3.i.i = phi i32 [ %i.ek, %.sink.split.i.i.i ], [ %.1.i.i, %._crit_edge.i.i.i ] ; 2 uses
  %.not26 = icmp eq i32 %.3.i.i, 0
  br i1 %.not26, label %.thread, label %bb.ac, !prof !2011

bb.ac:                                            ; preds = %bb.ab
  %i.el = sext i32 %.3.i.i to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22, !noalias !3301
  store i32 0, ptr %14, align 16, !tbaa !40, !alias.scope !3304, !noalias !3301
  %i.em = getelementptr inbounds nuw i8, ptr %14, i64 16
  store i64 %i.el, ptr %i.em, align 16, !tbaa !40, !alias.scope !3304, !noalias !3301
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %18, ptr nonnull @.str.143, i64 77, i64 65, ptr nonnull %14)
          to label %bb.ad unwind label %bb.af

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22, !noalias !3301
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10FlatVectorIaEC1EPNS0_6memory10MemoryPoolERKSt10shared_ptrIKNS0_4TypeEEN5boost13intrusive_ptrINS0_6BufferEEEiSF_OSt6vectorISF_SaISF_EERKNS0_17SimpleVectorStatsIaEESt8optionalIiESP_SO_IbESP_SP_E18veloxCheckFailArgs_1, ptr noundef nonnull align 8 dereferenceable(32) %18, ptr nonnull @.str.143) #39
          to label %bb.ae unwind label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  unreachable

bb.af:                                            ; preds = %bb.ac
  %i.en = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.ag:                                            ; preds = %bb.ad
  %i.eo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ep = load ptr, ptr %18, align 8, !tbaa !44   ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.er = icmp eq ptr %i.ep, %i.eq
  br i1 %i.er, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.ag
  %i.es = load i64, ptr %i.eq, align 8, !tbaa !40
  %i.et = add i64 %i.es, 1
  call void @_ZdlPvm(ptr noundef %i.ep, i64 noundef %i.et) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.af
  %.pn27 = phi { ptr, i32 } [ %i.eo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.en, %bb.af ], [ %i.eo, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #22
  br label %bb.ap

.critedge:                                        ; preds = %_ZNSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EED2Ev.exit
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ev = load i32, ptr %i.eu, align 8, !tbaa !164
  %i.ew = sext i32 %i.ev to i64                   ; 4 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.bz, i64 32
  %i.ey = load i64, ptr %i.ex, align 8, !tbaa !744 ; 2 uses
  %.not23 = icmp ult i64 %i.ey, %i.ew
  br i1 %.not23, label %bb.ah, label %bb.am, !prof !36

bb.ah:                                            ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22, !noalias !3307
  store i64 %i.ey, ptr %13, align 16, !tbaa !40, !alias.scope !3310, !noalias !3307
  %i.ez = getelementptr inbounds nuw i8, ptr %13, i64 16
  store i64 %i.ew, ptr %i.ez, align 16, !tbaa !40, !alias.scope !3310, !noalias !3307
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %19, ptr nonnull @.str.22, i64 11, i64 68, ptr nonnull %13)
          to label %bb.ai unwind label %bb.ak

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22, !noalias !3307
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10FlatVectorIaEC1EPNS0_6memory10MemoryPoolERKSt10shared_ptrIKNS0_4TypeEEN5boost13intrusive_ptrINS0_6BufferEEEiSF_OSt6vectorISF_SaISF_EERKNS0_17SimpleVectorStatsIaEESt8optionalIiESP_SO_IbESP_SP_E18veloxCheckFailArgs_4, ptr noundef nonnull align 8 dereferenceable(32) %19, ptr nonnull @.str.22) #39
          to label %bb.aj unwind label %bb.al

bb.aj:                                            ; preds = %bb.ai
  unreachable

bb.ak:                                            ; preds = %bb.ah
  %i.fa = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40

bb.al:                                            ; preds = %bb.ai
  %i.fb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fc = load ptr, ptr %19, align 8, !tbaa !44   ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.fe = icmp eq ptr %i.fc, %i.fd
  br i1 %i.fe, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38: ; preds = %bb.al
  %i.ff = load i64, ptr %i.fd, align 8, !tbaa !40
  %i.fg = add i64 %i.ff, 1
  call void @_ZdlPvm(ptr noundef %i.fc, i64 noundef %i.fg) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40: ; preds = %bb.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38, %bb.ak
  %.pn = phi { ptr, i32 } [ %i.fb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38 ], [ %i.fa, %bb.ak ], [ %i.fb, %bb.al ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #22
  br label %bb.ap

bb.am:                                            ; preds = %.critedge
  %i.fh = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  %i.fi = load i64, ptr %i.fh, align 8, !tbaa !460
  %i.fj = icmp ult i64 %i.fi, %i.ew
  br i1 %i.fj, label %bb.an, label %.thread

bb.an:                                            ; preds = %bb.am
  %i.fk = load ptr, ptr %i.bz, align 8, !tbaa !17
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 16
  %i.fm = load ptr, ptr %i.fl, align 8
  invoke void %i.fm(ptr noundef nonnull align 8 dereferenceable(64) %i.bz, i64 noundef %i.ew)
          to label %.thread unwind label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.fn = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

.thread:                                          ; preds = %bb.z, %bb.am, %bb.an, %bb.ab
  ret void

bb.ap:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, %bb.ao, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.y, %bb.x
  %.pn30 = phi { ptr, i32 } [ %i.ce, %bb.y ], [ %i.cd, %bb.x ], [ %i.fn, %bb.ao ], [ %.pn27, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40 ]
  call void @_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.aw) #22
  call void @_ZNSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.av) #22
  call void @_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ao) #22
  call void @_ZN8facebook5velox10BaseVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(108) %0) #22
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.w
  %.pn30.pn = phi { ptr, i32 } [ %.pn30, %bb.ap ], [ %i.cc, %bb.w ]
  resume { ptr, i32 } %.pn30.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox12SimpleVectorIaEC2EPNS0_6memory10MemoryPoolESt10shared_ptrIKNS0_4TypeEENS0_14VectorEncoding6SimpleEN5boost13intrusive_ptrINS0_6BufferEEEiRKNS0_17SimpleVectorStatsIaEESt8optionalIiESL_SK_IbESL_SL_(ptr noundef nonnull align 8 dereferenceable(108) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef nonnull align 1 dereferenceable(4) %6, i64 %7, i64 %8, i16 %9, i64 %10, i64 %11) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %12 = alloca %"class.std::shared_ptr.0", align 16 ; 4 uses
  %13 = alloca %"class.boost::intrusive_ptr", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load <2 x ptr>, ptr %2, align 8, !tbaa !84
  store ptr null, ptr %i.b, align 8, !tbaa !89
  store <2 x ptr> %i.c, ptr %12, align 16, !tbaa !84
  store ptr null, ptr %2, align 8, !tbaa !106
  %i.d = load ptr, ptr %4, align 8, !tbaa !232
  store ptr %i.d, ptr %13, align 8, !tbaa !232
  store ptr null, ptr %4, align 8, !tbaa !232
  invoke void @_ZN8facebook5velox10BaseVectorC2EPNS0_6memory10MemoryPoolESt10shared_ptrIKNS0_4TypeEENS0_14VectorEncoding6SimpleEN5boost13intrusive_ptrINS0_6BufferEEEiSt8optionalIiESG_SG_SG_(ptr noundef nonnull align 8 dereferenceable(94) %0, ptr noundef %1, ptr noundef nonnull %12, i32 noundef %3, ptr noundef nonnull %13, i32 noundef %5, i64 %7, i64 %8, i64 %10, i64 %11)
end_hunk_8
