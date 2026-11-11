Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/InputFiles?download=true
inline.NumInlined: 3097
inline.NumDeleted: 1584
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN3lld4wasm7ObjFile5parseEb:bb.a
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 3 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 3 uses
  br label %bb.bh

bb.ah:                                            ; preds = %.lr.ph434, %._crit_edge430
  %i.ho = load ptr, ptr %i.d, align 8, !tbaa !308
  %i.hp = call noundef nonnull align 8 dereferenceable(74) ptr @_ZNK4llvm6object14WasmObjectFile14getWasmSectionERKNS0_10SectionRefE(ptr noundef nonnull align 8 dereferenceable(708) %i.ho, ptr noundef nonnull align 8 dereferenceable(16) %13) #21 ; 12 uses
  %i.hq = load i32, ptr %i.hp, align 8, !tbaa !645
  switch i32 %i.hq, label %bb.az [
    i32 10, label %bb.ai
    i32 11, label %bb.aj
    i32 0, label %bb.ak
  ]

bb.ai:                                            ; preds = %bb.ah
  store ptr %i.hp, ptr %i.ey, align 8, !tbaa !405
  br label %bb.az

bb.aj:                                            ; preds = %bb.ah
  store ptr %i.hp, ptr %i.ex, align 8, !tbaa !646
  br label %bb.az

bb.ak:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hp, i64 8 ; 4 uses
  %.sroa.02.0.copyload.i = load ptr, ptr %i.hr, align 8, !tbaa !25
  %.sroa.23.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hp, i64 16 ; 4 uses
  %.sroa.23.0.copyload.i = load i64, ptr %.sroa.23.0..sroa_idx.i, align 8, !tbaa !26 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  call void @_ZN4llvm23getInstrProfSectionNameB5cxx11ENS_17InstrProfSectKindENS_6Triple16ObjectFormatTypeEb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, i32 noundef 10, i32 noundef 7, i1 noundef zeroext true) #21
  %i.hs = load ptr, ptr %2, align 8, !tbaa !27    ; 3 uses
  %i.ht = load i64, ptr %i.eo, align 8, !tbaa !23
  %.not.i.i149 = icmp eq i64 %.sroa.23.0.copyload.i, %i.ht
  br i1 %.not.i.i149, label %bb.al, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread19.i

bb.al:                                            ; preds = %bb.ak
  %i.hu = icmp eq i64 %.sroa.23.0.copyload.i, 0
  br i1 %i.hu, label %.critedge.i, label %_ZN4llvmeqENS_9StringRefES0_.exit.i

_ZN4llvmeqENS_9StringRefES0_.exit.i:              ; preds = %bb.al
  %bcmp.i.i = call i32 @bcmp(ptr %.sroa.02.0.copyload.i, ptr %i.hs, i64 %.sroa.23.0.copyload.i)
  %i.hv = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.hv, label %.critedge.i, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread19.i

_ZN4llvmeqENS_9StringRefES0_.exit.thread19.i:     ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit.i, %bb.ak
  %.sroa.0.0.copyload.i150 = load ptr, ptr %i.hr, align 8, !tbaa !25
  %.sroa.2.0.copyload.i151 = load i64, ptr %.sroa.23.0..sroa_idx.i, align 8, !tbaa !26 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call void @_ZN4llvm23getInstrProfSectionNameB5cxx11ENS_17InstrProfSectKindENS_6Triple16ObjectFormatTypeEb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, i32 noundef 9, i32 noundef 7, i1 noundef zeroext true) #21
  %i.hw = load ptr, ptr %3, align 8, !tbaa !27    ; 3 uses
  %i.hx = load i64, ptr %i.ep, align 8, !tbaa !23 ; 2 uses
  %.not.i8.i = icmp eq i64 %.sroa.2.0.copyload.i151, %i.hx
  br i1 %.not.i8.i, label %bb.am, label %bb.ao

bb.am:                                            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit.thread19.i
  %i.hy = icmp eq i64 %.sroa.2.0.copyload.i151, 0
  br i1 %i.hy, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %bcmp.i10.i = call i32 @bcmp(ptr %.sroa.0.0.copyload.i150, ptr %i.hw, i64 %.sroa.2.0.copyload.i151)
  %i.hz = icmp eq i32 %bcmp.i10.i, 0
  %i.ia = select i1 %i.hz, i32 8, i32 1
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am, %_ZN4llvmeqENS_9StringRefES0_.exit.thread19.i
  %.ph.i = phi i32 [ 8, %bb.am ], [ 1, %_ZN4llvmeqENS_9StringRefES0_.exit.thread19.i ], [ %i.ia, %bb.an ]
  %i.ib = icmp eq ptr %i.hw, %i.eq
  br i1 %i.ib, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %bb.ao
  %i.ic = icmp ult i64 %i.hx, 16
  call void @llvm.assume(i1 %i.ic)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.ao
  %i.id = load i64, ptr %i.eq, align 8, !tbaa !24
  %i.ie = add i64 %i.id, 1
  call void @_ZdlPvm(ptr noundef %i.hw, i64 noundef %i.ie) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %.pre.i = load ptr, ptr %2, align 8, !tbaa !27
  br label %.critedge.i

.critedge.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZN4llvmeqENS_9StringRefES0_.exit.i, %bb.al
  %i.if = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.hs, %_ZN4llvmeqENS_9StringRefES0_.exit.i ], [ %i.hs, %bb.al ] ; 2 uses
  %..i = phi i32 [ %.ph.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ 8, %_ZN4llvmeqENS_9StringRefES0_.exit.i ], [ 8, %bb.al ]
  %i.ig = icmp eq ptr %i.if, %i.er
  br i1 %i.ig, label %_ZN3lld4wasmL25getCustomSectionAlignmentERKN4llvm6object11WasmSectionE.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i: ; preds = %.critedge.i
  %i.ih = load i64, ptr %i.er, align 8, !tbaa !24
  %i.ii = add i64 %i.ih, 1
  call void @_ZdlPvm(ptr noundef %i.if, i64 noundef %i.ii) #22
  br label %_ZN3lld4wasmL25getCustomSectionAlignmentERKN4llvm6object11WasmSectionE.exit

_ZN3lld4wasmL25getCustomSectionAlignmentERKN4llvm6object11WasmSectionE.exit: ; preds = %.critedge.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  store i32 %..i, ptr %i.b, align 4, !tbaa !35
  %.val = load ptr, ptr %i.hr, align 8            ; 6 uses
  %i.ij = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN3lld4wasm3ctxE, i64 212), align 4, !tbaa !647
  %i.ik = icmp eq i32 %i.ij, 0
  br i1 %i.ik, label %_ZN3lld4wasmL11shouldMergeERKN4llvm6object11WasmSectionE.exit.thread, label %bb.ap

bb.ap:                                            ; preds = %_ZN3lld4wasmL25getCustomSectionAlignmentERKN4llvm6object11WasmSectionE.exit
  %.val123 = load i64, ptr %.sroa.23.0..sroa_idx.i, align 8
  switch i64 %.val123, label %_ZN3lld4wasmL11shouldMergeERKN4llvm6object11WasmSectionE.exit.thread [
    i64 10, label %_ZN3lld4wasmL11shouldMergeERKN4llvm6object11WasmSectionE.exit
    i64 14, label %_ZN4llvmeqENS_9StringRefES0_.exit11.i
    i64 15, label %.split
  ]

_ZN4llvmeqENS_9StringRefES0_.exit11.i:            ; preds = %bb.ap
  %i.il = load i64, ptr %.val, align 1
  %i.im = xor i64 %i.il, 8313477191008871470
  %i.in = getelementptr i8, ptr %.val, i64 6
  %i.io = load i64, ptr %i.in, align 1
  %i.ip = xor i64 %i.io, 8031998611090076511
  %i.iq = or i64 %i.im, %i.ip
  %i.ir = icmp ne i64 %i.iq, 0
  %i.is = zext i1 %i.ir to i32
  %i.it = icmp eq i32 %i.is, 0
  br i1 %i.it, label %bb.aq, label %_ZN3lld4wasmL11shouldMergeERKN4llvm6object11WasmSectionE.exit.thread

.split:                                           ; preds = %bb.ap
  %i.iu = load i64, ptr %.val, align 1
  %i.iv = xor i64 %i.iu, 7809074032743375918
  %i.iw = getelementptr i8, ptr %.val, i64 7
  %i.ix = load i64, ptr %i.iw, align 1
  %i.iy = xor i64 %i.ix, 8247343671183042924
  %i.iz = or i64 %i.iv, %i.iy
  %i.ja = icmp ne i64 %i.iz, 0
  %i.jb = zext i1 %i.ja to i32
  %i.jc = icmp eq i32 %i.jb, 0
  br i1 %i.jc, label %bb.aq, label %_ZN3lld4wasmL11shouldMergeERKN4llvm6object11WasmSectionE.exit.thread

_ZN3lld4wasmL11shouldMergeERKN4llvm6object11WasmSectionE.exit: ; preds = %bb.ap
  %i.jd = load i64, ptr %.val, align 1
  %i.je = xor i64 %i.jd, 8313477191008871470
  %i.jf = getelementptr i8, ptr %.val, i64 8
  %i.jg = load i16, ptr %i.jf, align 1
  %i.jh = zext i16 %i.jg to i64
  %i.ji = xor i64 %i.jh, 29300
  %i.jj = or i64 %i.je, %i.ji
  %i.jk = icmp ne i64 %i.jj, 0
  %i.jl = zext i1 %i.jk to i32
  %i.jm = icmp eq i32 %i.jl, 0
  br i1 %i.jm, label %bb.aq, label %_ZN3lld4wasmL11shouldMergeERKN4llvm6object11WasmSectionE.exit.thread

bb.aq:                                            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit11.i, %.split, %_ZN3lld4wasmL11shouldMergeERKN4llvm6object11WasmSectionE.exit
  %i.jn = call noundef ptr @_ZN3lld17SpecificAllocBase11getOrCreateEPvmmRFPS0_S1_E(ptr noundef nonnull @_ZN3lld13SpecificAllocINS_4wasm15MergeInputChunkEE3tagE, i64 noundef 88, i64 noundef 8, ptr noundef nonnull @_ZN3lld13SpecificAllocINS_4wasm15MergeInputChunkEE6createEPv) #21 ; 2 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 8 ; 3 uses
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !52 ; 2 uses
  %i.jq = ptrtoint ptr %i.jp to i64
  %i.jr = add i64 %i.jq, 160                      ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %i.jn, i64 16
  %i.jt = load i64, ptr %i.js, align 8, !tbaa !53
  %i.ju = icmp ult i64 %i.jr, %i.jt
  br i1 %i.ju, label %bb.ar, label %bb.as, !prof !54

bb.ar:                                            ; preds = %bb.aq
  %i.jv = inttoptr i64 %i.jr to ptr
  store ptr %i.jv, ptr %i.jo, align 8, !tbaa !52
  br label %_ZN3lld4makeINS_4wasm15MergeInputChunkEJRKN4llvm6object11WasmSectionEPNS1_7ObjFileERjEEEPT_DpOT0_.exit

bb.as:                                            ; preds = %bb.aq
  %i.jw = call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm1EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.jo, i64 noundef 160, i64 noundef 160, i8 0)
  br label %_ZN3lld4makeINS_4wasm15MergeInputChunkEJRKN4llvm6object11WasmSectionEPNS1_7ObjFileERjEEEPT_DpOT0_.exit

_ZN3lld4makeINS_4wasm15MergeInputChunkEJRKN4llvm6object11WasmSectionEPNS1_7ObjFileERjEEEPT_DpOT0_.exit: ; preds = %bb.ar, %bb.as
  %.0.i.i.i = phi ptr [ %i.jp, %bb.ar ], [ %i.jw, %bb.as ] ; 15 uses
  %i.jx = load i32, ptr %i.b, align 4, !tbaa !35
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.hr, align 8, !tbaa !25
  %.sroa.2.0.copyload.i.i = load i64, ptr %.sroa.23.0..sroa_idx.i, align 8, !tbaa !26
  store ptr %.sroa.0.0.copyload.i.i, ptr %.0.i.i.i, align 8, !tbaa !25
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 8
  store i64 %.sroa.2.0.copyload.i.i, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !26
  %i.jy = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.jy, i8 0, i64 16, i1 false)
  %i.jz = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 32
  store ptr %0, ptr %i.jz, align 8, !tbaa !406
  %i.ka = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 40
  store ptr null, ptr %i.ka, align 8, !tbaa !407
  %i.kb = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 48
  %i.kc = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 52
  store i32 0, ptr %i.kc, align 4, !tbaa !286
  %i.kd = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 56
  store i32 %i.jx, ptr %i.kd, align 8, !tbaa !408
  %i.ke = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 60
  store i32 1, ptr %i.ke, align 4, !tbaa !409
  %i.kf = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 64
  store i32 0, ptr %i.kf, align 8, !tbaa !284
  %i.kg = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 72
  %i.kh = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 88 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.kg, i8 0, i64 16, i1 false)
  %i.ki = load i8, ptr %i.kh, align 8
  %i.kj = and i8 %i.ki, -32
  %i.kk = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN3lld4wasm3ctxE, i64 12), align 4, !tbaa !330, !range !32, !noundef !170
  %i.kl = shl nuw nsw i8 %i.kk, 3
  %i.km = or disjoint i8 %i.kl, %i.kj
  %i.kn = xor i8 %i.km, 9
  store i8 %i.kn, ptr %i.kh, align 8
  %i.ko = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 96
  %i.kp = getelementptr inbounds nuw i8, ptr %i.hp, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ko, i8 0, i64 64, i1 false)
  %i.kq = load i32, ptr %i.kp, align 8, !tbaa !410 ; 2 uses
  store i32 %i.kq, ptr %i.kb, align 8, !tbaa !411
  %i.kr = getelementptr inbounds nuw i8, ptr %i.hp, i64 32
  %i.ks = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ks, ptr noundef nonnull align 8 dereferenceable(16) %i.kr, i64 16, i1 false), !tbaa.struct !315
  br label %bb.at

_ZN3lld4wasmL11shouldMergeERKN4llvm6object11WasmSectionE.exit.thread: ; preds = %bb.ap, %_ZN3lld4wasmL25getCustomSectionAlignmentERKN4llvm6object11WasmSectionE.exit, %_ZN4llvmeqENS_9StringRefES0_.exit11.i, %.split, %_ZN3lld4wasmL11shouldMergeERKN4llvm6object11WasmSectionE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  store ptr %0, ptr %i.c, align 8, !tbaa !412
  %i.kt = call noundef ptr @_ZN3lld4makeINS_4wasm12InputSectionEJRKN4llvm6object11WasmSectionEPNS1_7ObjFileERjEEEPT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(74) %i.hp, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %i.b) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.kt, i64 48
  %.pre468 = load i32, ptr %.phi.trans.insert, align 8, !tbaa !411
  br label %bb.at

bb.at:                                            ; preds = %_ZN3lld4wasmL11shouldMergeERKN4llvm6object11WasmSectionE.exit.thread, %_ZN3lld4makeINS_4wasm15MergeInputChunkEJRKN4llvm6object11WasmSectionEPNS1_7ObjFileERjEEEPT_DpOT0_.exit
  %i.ku = phi i32 [ %i.kq, %_ZN3lld4makeINS_4wasm15MergeInputChunkEJRKN4llvm6object11WasmSectionEPNS1_7ObjFileERjEEEPT_DpOT0_.exit ], [ %.pre468, %_ZN3lld4wasmL11shouldMergeERKN4llvm6object11WasmSectionE.exit.thread ] ; 3 uses
  %.0391 = phi ptr [ %.0.i.i.i, %_ZN3lld4makeINS_4wasm15MergeInputChunkEJRKN4llvm6object11WasmSectionEPNS1_7ObjFileERjEEEPT_DpOT0_.exit ], [ %i.kt, %_ZN3lld4wasmL11shouldMergeERKN4llvm6object11WasmSectionE.exit.thread ] ; 3 uses
  %i.kv = icmp eq i32 %i.ku, -1
  br i1 %i.kv, label %_ZNK3lld4wasm7ObjFile18isExcludedByComdatEPKNS0_10InputChunkE.exit.thread, label %_ZNK3lld4wasm7ObjFile18isExcludedByComdatEPKNS0_10InputChunkE.exit

_ZNK3lld4wasm7ObjFile18isExcludedByComdatEPKNS0_10InputChunkE.exit: ; preds = %bb.at
  %i.kw = load ptr, ptr %i.es, align 8, !tbaa !347
  %i.kx = lshr i32 %i.ku, 6
  %.zext.i = zext nneg i32 %i.kx to i64
  %i.ky = getelementptr inbounds nuw [8 x i8], ptr %i.kw, i64 %.zext.i
  %i.kz = and i32 %i.ku, 63
  %i.la = zext nneg i32 %i.kz to i64
  %i.lb = shl nuw i64 1, %i.la
  %i.lc = load i64, ptr %i.ky, align 8, !tbaa !26
  %i.ld = and i64 %i.lc, %i.lb
  %.fr412 = freeze i64 %i.ld
  %.not.i156 = icmp eq i64 %.fr412, 0
  %spec.select406 = select i1 %.not.i156, i8 16, i8 0
  br label %_ZNK3lld4wasm7ObjFile18isExcludedByComdatEPKNS0_10InputChunkE.exit.thread

_ZNK3lld4wasm7ObjFile18isExcludedByComdatEPKNS0_10InputChunkE.exit.thread: ; preds = %bb.at, %_ZNK3lld4wasm7ObjFile18isExcludedByComdatEPKNS0_10InputChunkE.exit
  %i.le = phi i8 [ %spec.select406, %_ZNK3lld4wasm7ObjFile18isExcludedByComdatEPKNS0_10InputChunkE.exit ], [ 0, %bb.at ]
  %i.lf = getelementptr inbounds nuw i8, ptr %.0391, i64 88 ; 2 uses
  %i.lg = load i8, ptr %i.lf, align 8
  %i.lh = and i8 %i.lg, -17
  %i.li = or disjoint i8 %i.lh, %i.le
  store i8 %i.li, ptr %i.lf, align 8
  %i.lj = load ptr, ptr %i.eu, align 8, !tbaa !648 ; 5 uses
  %i.lk = load ptr, ptr %i.ev, align 8, !tbaa !413
  %.not.i158 = icmp eq ptr %i.lj, %i.lk
  br i1 %.not.i158, label %bb.av, label %bb.au

bb.au:                                            ; preds = %_ZNK3lld4wasm7ObjFile18isExcludedByComdatEPKNS0_10InputChunkE.exit.thread
  store ptr %.0391, ptr %i.lj, align 8, !tbaa !414
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lj, i64 8
  store ptr %i.ll, ptr %i.eu, align 8, !tbaa !648
  br label %_ZNSt6vectorIPN3lld4wasm10InputChunkESaIS3_EE12emplace_backIJRS3_EEES7_DpOT_.exit

bb.av:                                            ; preds = %_ZNK3lld4wasm7ObjFile18isExcludedByComdatEPKNS0_10InputChunkE.exit.thread
  %i.lm = load ptr, ptr %i.et, align 8, !tbaa !415 ; 4 uses
  %i.ln = ptrtoint ptr %i.lj to i64
  %i.lo = ptrtoint ptr %i.lm to i64               ; 2 uses
  %i.lp = sub i64 %i.ln, %i.lo                    ; 5 uses
  %i.lq = icmp eq i64 %i.lp, 9223372036854775800
  br i1 %i.lq, label %bb.aw, label %_ZNKSt6vectorIPN3lld4wasm10InputChunkESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.aw:                                            ; preds = %bb.av
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.38) #20
  unreachable

_ZNKSt6vectorIPN3lld4wasm10InputChunkESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.av
  %i.lr = ashr exact i64 %i.lp, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.lr, i64 1)
  %i.ls = add nsw i64 %.sroa.speculated.i.i.i, %i.lr ; 2 uses
  %i.lt = icmp ult i64 %i.ls, %i.lr
  %i.lu = call i64 @llvm.umin.i64(i64 %i.ls, i64 1152921504606846975)
  %i.lv = select i1 %i.lt, i64 1152921504606846975, i64 %i.lu ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.lv, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.lw = shl nuw nsw i64 %i.lv, 3
  %i.lx = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.lw) #23 ; 4 uses
  %i.ly = getelementptr inbounds i8, ptr %i.lx, i64 %i.lp ; 3 uses
  store ptr %.0391, ptr %i.ly, align 8, !tbaa !414
  %i.lz = icmp sgt i64 %i.lp, 0
  br i1 %i.lz, label %bb.ax, label %_ZNSt6vectorIPN3lld4wasm10InputChunkESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i

bb.ax:                                            ; preds = %_ZNKSt6vectorIPN3lld4wasm10InputChunkESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.lx, ptr align 8 %i.lm, i64 %i.lp, i1 false)
  br label %_ZNSt6vectorIPN3lld4wasm10InputChunkESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i

_ZNSt6vectorIPN3lld4wasm10InputChunkESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i: ; preds = %bb.ax, %_ZNKSt6vectorIPN3lld4wasm10InputChunkESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %i.ma = getelementptr inbounds nuw i8, ptr %i.ly, i64 8
  %.not.i17.i.i = icmp eq ptr %i.lm, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPN3lld4wasm10InputChunkESaIS3_EE17_M_realloc_insertIJRS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.ay

bb.ay:                                            ; preds = %_ZNSt6vectorIPN3lld4wasm10InputChunkESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i
  %i.mb = load ptr, ptr %i.ev, align 8, !tbaa !413
  %i.mc = ptrtoint ptr %i.mb to i64
  %i.md = sub i64 %i.mc, %i.lo
  call void @_ZdlPvm(ptr noundef nonnull %i.lm, i64 noundef %i.md) #22
  br label %_ZNSt6vectorIPN3lld4wasm10InputChunkESaIS3_EE17_M_realloc_insertIJRS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorIPN3lld4wasm10InputChunkESaIS3_EE17_M_realloc_insertIJRS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.ay, %_ZNSt6vectorIPN3lld4wasm10InputChunkESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i
  store ptr %i.lx, ptr %i.et, align 8, !tbaa !415
  store ptr %i.ma, ptr %i.eu, align 8, !tbaa !648
  %i.me = getelementptr inbounds nuw [8 x i8], ptr %i.lx, i64 %i.lv
  store ptr %i.me, ptr %i.ev, align 8, !tbaa !413
  br label %_ZNSt6vectorIPN3lld4wasm10InputChunkESaIS3_EE12emplace_backIJRS3_EEES7_DpOT_.exit

_ZNSt6vectorIPN3lld4wasm10InputChunkESaIS3_EE12emplace_backIJRS3_EEES7_DpOT_.exit: ; preds = %bb.au, %_ZNSt6vectorIPN3lld4wasm10InputChunkESaIS3_EE17_M_realloc_insertIJRS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i
  %i.mf = phi ptr [ %i.lj, %bb.au ], [ %i.ly, %_ZNSt6vectorIPN3lld4wasm10InputChunkESaIS3_EE17_M_realloc_insertIJRS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ]
  %i.mg = load ptr, ptr %i.mf, align 8, !tbaa !414 ; 3 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %i.hp, i64 48
  %i.mi = load ptr, ptr %i.mh, align 8, !tbaa !649 ; 2 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %i.hp, i64 56
  %i.mk = load ptr, ptr %i.mj, align 8, !tbaa !650
  %i.ml = ptrtoint ptr %i.mk to i64
  %i.mm = ptrtoint ptr %i.mi to i64
  %i.mn = sub i64 %i.ml, %i.mm
  %i.mo = sdiv exact i64 %i.mn, 24
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mg, i64 96
  store ptr %i.mi, ptr %i.mp, align 8, !tbaa !651
  %.sroa.2.0..sroa_idx.i159 = getelementptr inbounds nuw i8, ptr %i.mg, i64 104
  store i64 %i.mo, ptr %.sroa.2.0..sroa_idx.i159, align 8, !tbaa !26
  %i.mq = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIjPN3lld4wasm10InputChunkENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E24lookupOrInsertIntoBucketIRKjJEEESt4pairIPSA_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.ew, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  %.fca.0.extract.i = extractvalue { ptr, i8 } %i.mq, 0
  %i.mr = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i, i64 8
  store ptr %i.mg, ptr %i.mr, align 8, !tbaa !414
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  br label %bb.az

bb.az:                                            ; preds = %bb.ah, %bb.aj, %_ZNSt6vectorIPN3lld4wasm10InputChunkESaIS3_EE12emplace_backIJRS3_EEES7_DpOT_.exit, %bb.ai
  %i.ms = load i32, ptr %i.a, align 4, !tbaa !35
  %i.mt = add i32 %i.ms, 1
  store i32 %i.mt, ptr %i.a, align 4, !tbaa !35
  %i.mu = getelementptr inbounds nuw i8, ptr %i.hp, i64 48
  %i.mv = load ptr, ptr %i.mu, align 8, !tbaa !651 ; 2 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %i.hp, i64 56
  %i.mx = load ptr, ptr %i.mw, align 8, !tbaa !651 ; 2 uses
  %.not413426 = icmp eq ptr %i.mv, %i.mx
  br i1 %.not413426, label %._crit_edge430, label %.lr.ph429

._crit_edge430:                                   ; preds = %bb.bb, %bb.az
  %i.my = load ptr, ptr %i.em, align 8, !tbaa !654 ; 2 uses
  %i.mz = load ptr, ptr %i.my, align 8, !tbaa !37
  %i.na = getelementptr inbounds nuw i8, ptr %i.mz, i64 136
  %i.nb = load ptr, ptr %i.na, align 8
  call void %i.nb(ptr noundef nonnull align 8 dereferenceable(48) %i.my, ptr noundef nonnull align 8 dereferenceable(16) %13) #21, !inline_history !623
  %i.nc = load ptr, ptr %i.em, align 8, !tbaa !654
  %i.nd = icmp ne ptr %i.nc, %i.el
  %lhsv.i.i.i.i = load i64, ptr %13, align 8
  %.not.i.i.i.i = icmp ne i64 %lhsv.i.i.i.i, %i.ek
  %.not2.i = select i1 %i.nd, i1 true, i1 %.not.i.i.i.i
  br i1 %.not2.i, label %bb.ah, label %._crit_edge435

.lr.ph429:                                        ; preds = %bb.az, %bb.bb
  %.sroa.0361.0427 = phi ptr [ %i.np, %bb.bb ], [ %i.mv, %bb.az ] ; 3 uses
  %i.ne = load i8, ptr %.sroa.0361.0427, align 8, !tbaa !172
  %i.nf = icmp eq i8 %i.ne, 0
  br i1 %i.nf, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %.lr.ph429
  %i.ng = getelementptr inbounds nuw i8, ptr %.sroa.0361.0427, i64 4
  %i.nh = load i32, ptr %i.ng, align 4, !tbaa !173 ; 2 uses
  %i.ni = lshr i32 %i.nh, 6
  %.zext = zext nneg i32 %i.ni to i64
  %i.nj = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0377.0, i64 %.zext ; 2 uses
  %i.nk = and i32 %i.nh, 63
  %i.nl = zext nneg i32 %i.nk to i64
  %i.nm = shl nuw i64 1, %i.nl
  %i.nn = load i64, ptr %i.nj, align 8, !tbaa !26
  %i.no = or i64 %i.nm, %i.nn
  store i64 %i.no, ptr %i.nj, align 8, !tbaa !26
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %.lr.ph429
  %i.np = getelementptr inbounds nuw i8, ptr %.sroa.0361.0427, i64 24 ; 2 uses
  %.not413 = icmp eq ptr %i.np, %i.mx
  br i1 %.not413, label %._crit_edge430, label %.lr.ph429

._crit_edge439:                                   ; preds = %_ZNSt6vectorIPN3lld4wasm10InputChunkESaIS3_EE12emplace_backIJRS3_EEES7_DpOT_.exit198, %_ZNSt6vectorIbSaIbEE6resizeEmb.exit.._crit_edge439_crit_edge
  %.val125 = phi ptr [ %.val125.pre, %_ZNSt6vectorIbSaIbEE6resizeEmb.exit.._crit_edge439_crit_edge ], [ %.val125477, %_ZNSt6vectorIPN3lld4wasm10InputChunkESaIS3_EE12emplace_backIJRS3_EEES7_DpOT_.exit198 ] ; 2 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.nr = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ns = load ptr, ptr %i.nr, align 8, !tbaa !646 ; 3 uses
  %.val124 = load ptr, ptr %i.nq, align 8         ; 2 uses
  %.not.i162 = icmp eq ptr %i.ns, null
  %.not89.i = icmp eq ptr %.val124, %.val125
  %or.cond.i = select i1 %.not.i162, i1 true, i1 %.not89.i
  br i1 %or.cond.i, label %_ZN3lld4wasmL9setRelocsINS0_10InputChunkEEEvRKSt6vectorIPT_SaIS5_EEPKN4llvm6object11WasmSectionE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge439
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ns, i64 56
  %i.nu = load ptr, ptr %i.nt, align 8, !tbaa !650
  %i.nv = getelementptr inbounds nuw i8, ptr %i.ns, i64 48
  %i.nw = load ptr, ptr %i.nv, align 8, !tbaa !649
  %i.nx = ptrtoint ptr %i.nu to i64               ; 2 uses
  br label %bb.bc

end_hunk_0
begin_hunk_1_@_ZN3lld4wasm7ObjFile5parseEb:bb.a
  %i.op = call noundef i32 @_ZNK3lld4wasm10InputChunk12getInputSizeEv(ptr noundef nonnull align 8 dereferenceable(128) %i.ny) #21
  %i.oq = icmp sgt i64 %.pre12.i, 0
  br i1 %i.oq, label %_ZSt9__advanceIPKN4llvm4wasm14WasmRelocationElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i18.i, label %_ZSt11lower_boundIPKN4llvm4wasm14WasmRelocationEjZN3lld4wasmL9setRelocsINS6_10InputChunkEEEvRKSt6vectorIPT_SaISB_EEPKNS0_6object11WasmSectionEEUlRS3_jE_ESA_SA_SA_RKT0_T1_.exit27.i

_ZSt9__advanceIPKN4llvm4wasm14WasmRelocationElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i18.i: ; preds = %_ZSt11lower_boundIPKN4llvm4wasm14WasmRelocationEjZN3lld4wasmL9setRelocsINS6_10InputChunkEEEvRKSt6vectorIPT_SaISB_EEPKNS0_6object11WasmSectionEEUlRS3_jE_ESA_SA_SA_RKT0_T1_.exit.i
  %i.or = add i32 %i.op, %i.oa
  %i.os = udiv exact i64 %.pre12.i, 24
  %i.ot = zext i32 %i.or to i64
  br label %_ZSt9__advanceIPKN4llvm4wasm14WasmRelocationElEvRT_T0_St26random_access_iterator_tag.exit.i.i19.i

_ZSt9__advanceIPKN4llvm4wasm14WasmRelocationElEvRT_T0_St26random_access_iterator_tag.exit.i.i19.i: ; preds = %_ZSt9__advanceIPKN4llvm4wasm14WasmRelocationElEvRT_T0_St26random_access_iterator_tag.exit.i.i19.i, %_ZSt9__advanceIPKN4llvm4wasm14WasmRelocationElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i18.i
  %.05.i.i20.i = phi i64 [ %i.os, %_ZSt9__advanceIPKN4llvm4wasm14WasmRelocationElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i18.i ], [ %.1.i.i26.i, %_ZSt9__advanceIPKN4llvm4wasm14WasmRelocationElEvRT_T0_St26random_access_iterator_tag.exit.i.i19.i ] ; 2 uses
  %.0114.i.i21.i = phi ptr [ %.112.i.i.i, %_ZSt9__advanceIPKN4llvm4wasm14WasmRelocationElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i18.i ], [ %.112.i.i25.i, %_ZSt9__advanceIPKN4llvm4wasm14WasmRelocationElEvRT_T0_St26random_access_iterator_tag.exit.i.i19.i ] ; 2 uses
  %i.ou = lshr i64 %.05.i.i20.i, 1                ; 3 uses
  %i.ov = getelementptr inbounds nuw [24 x i8], ptr %.0114.i.i21.i, i64 %i.ou ; 2 uses
  %i.ow = getelementptr i8, ptr %i.ov, i64 8
  %.val.i.i24.i = load i64, ptr %i.ow, align 8, !tbaa !285
  %i.ox = icmp ult i64 %.val.i.i24.i, %i.ot       ; 2 uses
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ov, i64 24
  %i.oz = xor i64 %i.ou, -1
  %i.pa = add nsw i64 %.05.i.i20.i, %i.oz
  %.112.i.i25.i = select i1 %i.ox, ptr %i.oy, ptr %.0114.i.i21.i ; 3 uses
  %.1.i.i26.i = select i1 %i.ox, i64 %i.pa, i64 %i.ou ; 2 uses
  %i.pb = icmp sgt i64 %.1.i.i26.i, 0
  br i1 %i.pb, label %_ZSt9__advanceIPKN4llvm4wasm14WasmRelocationElEvRT_T0_St26random_access_iterator_tag.exit.i.i19.i, label %_ZSt11lower_boundIPKN4llvm4wasm14WasmRelocationEjZN3lld4wasmL9setRelocsINS6_10InputChunkEEEvRKSt6vectorIPT_SaISB_EEPKNS0_6object11WasmSectionEEUlRS3_jE_ESA_SA_SA_RKT0_T1_.exit27.loopexit.i, !llvm.loop !624

_ZSt11lower_boundIPKN4llvm4wasm14WasmRelocationEjZN3lld4wasmL9setRelocsINS6_10InputChunkEEEvRKSt6vectorIPT_SaISB_EEPKNS0_6object11WasmSectionEEUlRS3_jE_ESA_SA_SA_RKT0_T1_.exit27.loopexit.i: ; preds = %_ZSt9__advanceIPKN4llvm4wasm14WasmRelocationElEvRT_T0_St26random_access_iterator_tag.exit.i.i19.i
  %.pre14.i = ptrtoint ptr %.112.i.i25.i to i64
  br label %_ZSt11lower_boundIPKN4llvm4wasm14WasmRelocationEjZN3lld4wasmL9setRelocsINS6_10InputChunkEEEvRKSt6vectorIPT_SaISB_EEPKNS0_6object11WasmSectionEEUlRS3_jE_ESA_SA_SA_RKT0_T1_.exit27.i

_ZSt11lower_boundIPKN4llvm4wasm14WasmRelocationEjZN3lld4wasmL9setRelocsINS6_10InputChunkEEEvRKSt6vectorIPT_SaISB_EEPKNS0_6object11WasmSectionEEUlRS3_jE_ESA_SA_SA_RKT0_T1_.exit27.i: ; preds = %_ZSt11lower_boundIPKN4llvm4wasm14WasmRelocationEjZN3lld4wasmL9setRelocsINS6_10InputChunkEEEvRKSt6vectorIPT_SaISB_EEPKNS0_6object11WasmSectionEEUlRS3_jE_ESA_SA_SA_RKT0_T1_.exit27.loopexit.i, %_ZSt11lower_boundIPKN4llvm4wasm14WasmRelocationEjZN3lld4wasmL9setRelocsINS6_10InputChunkEEEvRKSt6vectorIPT_SaISB_EEPKNS0_6object11WasmSectionEEUlRS3_jE_ESA_SA_SA_RKT0_T1_.exit.i, %_ZSt11lower_boundIPKN4llvm4wasm14WasmRelocationEjZN3lld4wasmL9setRelocsINS6_10InputChunkEEEvRKSt6vectorIPT_SaISB_EEPKNS0_6object11WasmSectionEEUlRS3_jE_ESA_SA_SA_RKT0_T1_.exit.thread.i
  %.011.lcssa.i.i22.i = phi ptr [ %.112.i.i.i, %_ZSt11lower_boundIPKN4llvm4wasm14WasmRelocationEjZN3lld4wasmL9setRelocsINS6_10InputChunkEEEvRKSt6vectorIPT_SaISB_EEPKNS0_6object11WasmSectionEEUlRS3_jE_ESA_SA_SA_RKT0_T1_.exit27.loopexit.i ], [ %.112.i.i.i, %_ZSt11lower_boundIPKN4llvm4wasm14WasmRelocationEjZN3lld4wasmL9setRelocsINS6_10InputChunkEEEvRKSt6vectorIPT_SaISB_EEPKNS0_6object11WasmSectionEEUlRS3_jE_ESA_SA_SA_RKT0_T1_.exit.i ], [ %.011.i, %_ZSt11lower_boundIPKN4llvm4wasm14WasmRelocationEjZN3lld4wasmL9setRelocsINS6_10InputChunkEEEvRKSt6vectorIPT_SaISB_EEPKNS0_6object11WasmSectionEEUlRS3_jE_ESA_SA_SA_RKT0_T1_.exit.thread.i ]
  %.pre-phi21.i = phi i64 [ %.pre.i164, %_ZSt11lower_boundIPKN4llvm4wasm14WasmRelocationEjZN3lld4wasmL9setRelocsINS6_10InputChunkEEEvRKSt6vectorIPT_SaISB_EEPKNS0_6object11WasmSectionEEUlRS3_jE_ESA_SA_SA_RKT0_T1_.exit27.loopexit.i ], [ %.pre.i164, %_ZSt11lower_boundIPKN4llvm4wasm14WasmRelocationEjZN3lld4wasmL9setRelocsINS6_10InputChunkEEEvRKSt6vectorIPT_SaISB_EEPKNS0_6object11WasmSectionEEUlRS3_jE_ESA_SA_SA_RKT0_T1_.exit.i ], [ %i.ob, %_ZSt11lower_boundIPKN4llvm4wasm14WasmRelocationEjZN3lld4wasmL9setRelocsINS6_10InputChunkEEEvRKSt6vectorIPT_SaISB_EEPKNS0_6object11WasmSectionEEUlRS3_jE_ESA_SA_SA_RKT0_T1_.exit.thread.i ]
  %.pre-phi15.i = phi i64 [ %.pre14.i, %_ZSt11lower_boundIPKN4llvm4wasm14WasmRelocationEjZN3lld4wasmL9setRelocsINS6_10InputChunkEEEvRKSt6vectorIPT_SaISB_EEPKNS0_6object11WasmSectionEEUlRS3_jE_ESA_SA_SA_RKT0_T1_.exit27.loopexit.i ], [ %.pre.i164, %_ZSt11lower_boundIPKN4llvm4wasm14WasmRelocationEjZN3lld4wasmL9setRelocsINS6_10InputChunkEEEvRKSt6vectorIPT_SaISB_EEPKNS0_6object11WasmSectionEEUlRS3_jE_ESA_SA_SA_RKT0_T1_.exit.i ], [ %i.ob, %_ZSt11lower_boundIPKN4llvm4wasm14WasmRelocationEjZN3lld4wasmL9setRelocsINS6_10InputChunkEEEvRKSt6vectorIPT_SaISB_EEPKNS0_6object11WasmSectionEEUlRS3_jE_ESA_SA_SA_RKT0_T1_.exit.thread.i ]
  %.011.lcssa.i.i17.i = phi ptr [ %.112.i.i25.i, %_ZSt11lower_boundIPKN4llvm4wasm14WasmRelocationEjZN3lld4wasmL9setRelocsINS6_10InputChunkEEEvRKSt6vectorIPT_SaISB_EEPKNS0_6object11WasmSectionEEUlRS3_jE_ESA_SA_SA_RKT0_T1_.exit27.loopexit.i ], [ %.112.i.i.i, %_ZSt11lower_boundIPKN4llvm4wasm14WasmRelocationEjZN3lld4wasmL9setRelocsINS6_10InputChunkEEEvRKSt6vectorIPT_SaISB_EEPKNS0_6object11WasmSectionEEUlRS3_jE_ESA_SA_SA_RKT0_T1_.exit.i ], [ %.011.i, %_ZSt11lower_boundIPKN4llvm4wasm14WasmRelocationEjZN3lld4wasmL9setRelocsINS6_10InputChunkEEEvRKSt6vectorIPT_SaISB_EEPKNS0_6object11WasmSectionEEUlRS3_jE_ESA_SA_SA_RKT0_T1_.exit.thread.i ]
  %i.pc = sub i64 %.pre-phi15.i, %.pre-phi21.i
  %i.pd = sdiv exact i64 %i.pc, 24
  %i.pe = getelementptr inbounds nuw i8, ptr %i.ny, i64 96
  store ptr %.011.lcssa.i.i22.i, ptr %i.pe, align 8, !tbaa !651
  %.sroa.2.0..sroa_idx.i.i163 = getelementptr inbounds nuw i8, ptr %i.ny, i64 104
  store i64 %i.pd, ptr %.sroa.2.0..sroa_idx.i.i163, align 8, !tbaa !26
  %i.pf = getelementptr inbounds nuw i8, ptr %.sroa.03.010.i, i64 8 ; 2 uses
  %.not8.i = icmp eq ptr %i.pf, %.val125
  br i1 %.not8.i, label %_ZN3lld4wasmL9setRelocsINS0_10InputChunkEEEvRKSt6vectorIPT_SaIS5_EEPKN4llvm6object11WasmSectionE.exit, label %bb.bc

_ZN3lld4wasmL9setRelocsINS0_10InputChunkEEEvRKSt6vectorIPT_SaIS5_EEPKN4llvm6object11WasmSectionE.exit: ; preds = %_ZSt11lower_boundIPKN4llvm4wasm14WasmRelocationEjZN3lld4wasmL9setRelocsINS6_10InputChunkEEEvRKSt6vectorIPT_SaISB_EEPKNS0_6object11WasmSectionEEUlRS3_jE_ESA_SA_SA_RKT0_T1_.exit27.i, %._crit_edge439
  %i.pg = load ptr, ptr %i.d, align 8, !tbaa !308 ; 3 uses
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pg, i64 536
  %i.pi = load ptr, ptr %i.ph, align 8, !tbaa !628 ; 3 uses
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pg, i64 544
  %i.pk = load ptr, ptr %i.pj, align 8, !tbaa !629 ; 3 uses
  %i.pl = ptrtoint ptr %i.pk to i64
  %i.pm = ptrtoint ptr %i.pi to i64
  %i.pn = sub i64 %i.pl, %i.pm                    ; 2 uses
  %i.po = ashr exact i64 %i.pn, 7                 ; 3 uses
  %i.pp = getelementptr inbounds nuw i8, ptr %i.pg, i64 304
  %i.pq = load ptr, ptr %i.pp, align 8, !tbaa !641 ; 2 uses
  %i.pr = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 6 uses
  %i.ps = icmp ugt i64 %i.po, 1152921504606846975
  br i1 %i.ps, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %_ZN3lld4wasmL9setRelocsINS0_10InputChunkEEEvRKSt6vectorIPT_SaIS5_EEPKN4llvm6object11WasmSectionE.exit
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.42) #20
  unreachable

bb.be:                                            ; preds = %_ZN3lld4wasmL9setRelocsINS0_10InputChunkEEEvRKSt6vectorIPT_SaIS5_EEPKN4llvm6object11WasmSectionE.exit
  %i.pt = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 6 uses
  %i.pu = load ptr, ptr %i.pt, align 8, !tbaa !416
  %i.pv = load ptr, ptr %i.pr, align 8, !tbaa !417 ; 2 uses
  %i.pw = ptrtoint ptr %i.pu to i64
  %i.px = ptrtoint ptr %i.pv to i64               ; 2 uses
  %i.py = sub i64 %i.pw, %i.px
  %i.pz = ashr exact i64 %i.py, 3
  %i.qa = icmp ult i64 %i.pz, %i.po
  br i1 %i.qa, label %_ZNSt12_Vector_baseIPN3lld4wasm13InputFunctionESaIS3_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorIPN3lld4wasm13InputFunctionESaIS3_EE7reserveEm.exit

_ZNSt12_Vector_baseIPN3lld4wasm13InputFunctionESaIS3_EE11_M_allocateEm.exit.i: ; preds = %bb.be
  %i.qb = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 3 uses
  %i.qc = load ptr, ptr %i.qb, align 8, !tbaa !655
  %i.qd = ptrtoint ptr %i.qc to i64
  %i.qe = sub i64 %i.qd, %i.px
  %i.qf = ashr exact i64 %i.pn, 4
  %i.qg = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.qf) #23 ; 5 uses
  %i.qh = load ptr, ptr %i.pr, align 8, !tbaa !417 ; 4 uses
  %i.qi = load ptr, ptr %i.qb, align 8, !tbaa !655
  %i.qj = ptrtoint ptr %i.qi to i64
  %i.qk = ptrtoint ptr %i.qh to i64               ; 2 uses
  %i.ql = sub i64 %i.qj, %i.qk                    ; 2 uses
  %i.qm = icmp sgt i64 %i.ql, 0
  br i1 %i.qm, label %bb.bf, label %_ZNSt6vectorIPN3lld4wasm13InputFunctionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i

bb.bf:                                            ; preds = %_ZNSt12_Vector_baseIPN3lld4wasm13InputFunctionESaIS3_EE11_M_allocateEm.exit.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.qg, ptr align 8 %i.qh, i64 %i.ql, i1 false)
  br label %_ZNSt6vectorIPN3lld4wasm13InputFunctionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i

_ZNSt6vectorIPN3lld4wasm13InputFunctionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i: ; preds = %bb.bf, %_ZNSt12_Vector_baseIPN3lld4wasm13InputFunctionESaIS3_EE11_M_allocateEm.exit.i
  %.not.i8.i169 = icmp eq ptr %i.qh, null
  br i1 %.not.i8.i169, label %_ZNSt12_Vector_baseIPN3lld4wasm13InputFunctionESaIS3_EE13_M_deallocateEPS3_m.exit.i, label %bb.bg

bb.bg:                                            ; preds = %_ZNSt6vectorIPN3lld4wasm13InputFunctionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i
  %i.qn = load ptr, ptr %i.pt, align 8, !tbaa !416
  %i.qo = ptrtoint ptr %i.qn to i64
  %i.qp = sub i64 %i.qo, %i.qk
  call void @_ZdlPvm(ptr noundef nonnull %i.qh, i64 noundef %i.qp) #22
  br label %_ZNSt12_Vector_baseIPN3lld4wasm13InputFunctionESaIS3_EE13_M_deallocateEPS3_m.exit.i

_ZNSt12_Vector_baseIPN3lld4wasm13InputFunctionESaIS3_EE13_M_deallocateEPS3_m.exit.i: ; preds = %bb.bg, %_ZNSt6vectorIPN3lld4wasm13InputFunctionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i
  store ptr %i.qg, ptr %i.pr, align 8, !tbaa !417
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qg, i64 %i.qe
  store ptr %i.qq, ptr %i.qb, align 8, !tbaa !655
  %i.qr = getelementptr inbounds nuw [8 x i8], ptr %i.qg, i64 %i.po
  store ptr %i.qr, ptr %i.pt, align 8, !tbaa !416
  br label %_ZNSt6vectorIPN3lld4wasm13InputFunctionESaIS3_EE7reserveEm.exit

_ZNSt6vectorIPN3lld4wasm13InputFunctionESaIS3_EE7reserveEm.exit: ; preds = %bb.be, %_ZNSt12_Vector_baseIPN3lld4wasm13InputFunctionESaIS3_EE13_M_deallocateEPS3_m.exit.i
  %.val126479 = phi ptr [ %i.pv, %bb.be ], [ %i.qg, %_ZNSt12_Vector_baseIPN3lld4wasm13InputFunctionESaIS3_EE13_M_deallocateEPS3_m.exit.i ]
  %.not117440 = icmp eq ptr %i.pi, %i.pk
  br i1 %.not117440, label %_ZNSt6vectorIPN3lld4wasm13InputFunctionESaIS3_EE7reserveEm.exit.._crit_edge443_crit_edge, label %.lr.ph442

_ZNSt6vectorIPN3lld4wasm13InputFunctionESaIS3_EE7reserveEm.exit.._crit_edge443_crit_edge: ; preds = %_ZNSt6vectorIPN3lld4wasm13InputFunctionESaIS3_EE7reserveEm.exit
  %.phi.trans.insert480 = getelementptr inbounds nuw i8, ptr %0, i64 320
  %.val127.pre = load ptr, ptr %.phi.trans.insert480, align 8
  br label %._crit_edge443

.lr.ph442:                                        ; preds = %_ZNSt6vectorIPN3lld4wasm13InputFunctionESaIS3_EE7reserveEm.exit
  %i.qs = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.qt = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 3 uses
  br label %bb.bv

bb.bh:                                            ; preds = %.lr.ph438, %_ZNSt6vectorIPN3lld4wasm10InputChunkESaIS3_EE12emplace_backIJRS3_EEES7_DpOT_.exit198
  %.0109437 = phi ptr [ %i.hh, %.lr.ph438 ], [ %i.we, %_ZNSt6vectorIPN3lld4wasm10InputChunkESaIS3_EE12emplace_backIJRS3_EEES7_DpOT_.exit198 ] ; 15 uses
  %i.qu = getelementptr inbounds nuw i8, ptr %.0109437, i64 92 ; 3 uses
  %i.qv = load i32, ptr %i.qu, align 4, !tbaa !658
  %.not.i170 = trunc i32 %i.qv to i1
  %i.qw = getelementptr inbounds nuw i8, ptr %.0109437, i64 88 ; 3 uses
  %i.qx = load i32, ptr %i.qw, align 8
  %.not4.i = icmp ne i32 %i.qx, 0
  %not..not.i = xor i1 %.not.i170, true
  %or.cond.i171 = select i1 %not..not.i, i1 true, i1 %.not4.i
  %i.qy = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN3lld4wasm3ctxE, i64 212), align 4
  %i.qz = icmp eq i32 %i.qy, 0
  %or.cond7.i = select i1 %or.cond.i171, i1 true, i1 %i.qz
  br i1 %or.cond7.i, label %_ZN3lld4wasmL11shouldMergeERKN4llvm6object11WasmSegmentE.exit.thread, label %_ZN3lld4wasmL11shouldMergeERKN4llvm6object11WasmSegmentE.exit

_ZN3lld4wasmL11shouldMergeERKN4llvm6object11WasmSegmentE.exit: ; preds = %bb.bh
  %i.ra = getelementptr inbounds nuw i8, ptr %.0109437, i64 64
  %i.rb = load i64, ptr %i.ra, align 8, !tbaa !659
  %.not409 = icmp eq i64 %i.rb, 0
  br i1 %.not409, label %_ZN3lld4wasmL11shouldMergeERKN4llvm6object11WasmSegmentE.exit.thread, label %bb.bi

bb.bi:                                            ; preds = %_ZN3lld4wasmL11shouldMergeERKN4llvm6object11WasmSegmentE.exit
  %i.rc = call noundef ptr @_ZN3lld17SpecificAllocBase11getOrCreateEPvmmRFPS0_S1_E(ptr noundef nonnull @_ZN3lld13SpecificAllocINS_4wasm15MergeInputChunkEE3tagE, i64 noundef 88, i64 noundef 8, ptr noundef nonnull @_ZN3lld13SpecificAllocINS_4wasm15MergeInputChunkEE6createEPv) #21 ; 2 uses
  %i.rd = getelementptr inbounds nuw i8, ptr %i.rc, i64 8 ; 3 uses
  %i.re = load ptr, ptr %i.rd, align 8, !tbaa !52 ; 2 uses
  %i.rf = ptrtoint ptr %i.re to i64
  %i.rg = add i64 %i.rf, 160                      ; 2 uses
  %i.rh = getelementptr inbounds nuw i8, ptr %i.rc, i64 16
  %i.ri = load i64, ptr %i.rh, align 8, !tbaa !53
  %i.rj = icmp ult i64 %i.rg, %i.ri
  br i1 %i.rj, label %bb.bj, label %bb.bk, !prof !54

bb.bj:                                            ; preds = %bb.bi
  %i.rk = inttoptr i64 %i.rg to ptr
  store ptr %i.rk, ptr %i.rd, align 8, !tbaa !52
  br label %_ZN3lld4makeINS_4wasm15MergeInputChunkEJRKN4llvm6object11WasmSegmentEPNS1_7ObjFileEEEEPT_DpOT0_.exit

bb.bk:                                            ; preds = %bb.bi
  %i.rl = call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm1EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.rd, i64 noundef 160, i64 noundef 160, i8 0)
  br label %_ZN3lld4makeINS_4wasm15MergeInputChunkEJRKN4llvm6object11WasmSegmentEPNS1_7ObjFileEEEEPT_DpOT0_.exit

_ZN3lld4makeINS_4wasm15MergeInputChunkEJRKN4llvm6object11WasmSegmentEPNS1_7ObjFileEEEEPT_DpOT0_.exit: ; preds = %bb.bj, %bb.bk
  %.0.i.i.i173 = phi ptr [ %i.re, %bb.bj ], [ %i.rl, %bb.bk ] ; 14 uses
  %i.rm = getelementptr inbounds nuw i8, ptr %.0109437, i64 72
  %.sroa.0.0.copyload.i.i174 = load ptr, ptr %i.rm, align 8, !tbaa !25 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i175 = getelementptr inbounds nuw i8, ptr %.0109437, i64 80
  %.sroa.2.0.copyload.i.i176 = load i64, ptr %.sroa.2.0..sroa_idx.i.i175, align 8, !tbaa !26 ; 2 uses
  store ptr %.sroa.0.0.copyload.i.i174, ptr %.0.i.i.i173, align 8, !tbaa !25
  %.sroa.2.0..sroa_idx.i.i.i177 = getelementptr inbounds nuw i8, ptr %.0.i.i.i173, i64 8
  store i64 %.sroa.2.0.copyload.i.i176, ptr %.sroa.2.0..sroa_idx.i.i.i177, align 8, !tbaa !26
  %i.rn = getelementptr inbounds nuw i8, ptr %.0.i.i.i173, i64 16
  %i.ro = getelementptr inbounds nuw i8, ptr %.0.i.i.i173, i64 32
  %i.rp = getelementptr inbounds nuw i8, ptr %.0.i.i.i173, i64 40
  %i.rq = getelementptr inbounds nuw i8, ptr %.0.i.i.i173, i64 48 ; 2 uses
  %i.rr = getelementptr inbounds nuw i8, ptr %.0.i.i.i173, i64 52 ; 2 uses
  %i.rs = getelementptr inbounds nuw i8, ptr %.0.i.i.i173, i64 56
  %i.rt = load i32, ptr %i.qu, align 4, !tbaa !658
  %i.ru = load <2 x i32>, ptr %i.qw, align 8, !tbaa !35
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.rn, i8 0, i64 16, i1 false)
  store ptr %0, ptr %i.ro, align 8, !tbaa !406
  store ptr null, ptr %i.rp, align 8, !tbaa !407
  store i32 -1, ptr %i.rq, align 8, !tbaa !411
  store i32 0, ptr %i.rr, align 4, !tbaa !286
  store <2 x i32> %i.ru, ptr %i.rs, align 8, !tbaa !35
  %i.rv = getelementptr inbounds nuw i8, ptr %.0.i.i.i173, i64 64
  store i32 0, ptr %i.rv, align 8, !tbaa !284
  %i.rw = getelementptr inbounds nuw i8, ptr %.0.i.i.i173, i64 72
  %i.rx = getelementptr inbounds nuw i8, ptr %.0.i.i.i173, i64 88 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.rw, i8 0, i64 16, i1 false)
  %i.ry = load i8, ptr %i.rx, align 8
  %i.rz = and i8 %i.ry, -32
  %i.sa = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN3lld4wasm3ctxE, i64 12), align 4, !tbaa !330, !range !32, !noundef !170
  %i.sb = shl nuw nsw i8 %i.sa, 3
  %i.sc = or disjoint i8 %i.sb, %i.rz
  %i.sd = xor i8 %i.sc, 9                         ; 2 uses
  store i8 %i.sd, ptr %i.rx, align 8
  %i.se = getelementptr inbounds nuw i8, ptr %.0.i.i.i173, i64 96
  %i.sf = getelementptr inbounds nuw i8, ptr %.0109437, i64 56
  %i.sg = getelementptr inbounds nuw i8, ptr %.0.i.i.i173, i64 112
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.se, i8 0, i64 64, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.sg, ptr noundef nonnull align 8 dereferenceable(16) %i.sf, i64 16, i1 false), !tbaa.struct !315
  %i.sh = getelementptr inbounds nuw i8, ptr %.0109437, i64 96
  %i.si = load i32, ptr %i.sh, align 8, !tbaa !660 ; 2 uses
  store i32 %i.si, ptr %i.rq, align 8, !tbaa !411
  %i.sj = load i32, ptr %.0109437, align 8, !tbaa !661
  store i32 %i.sj, ptr %i.rr, align 4, !tbaa !286
  br label %bb.bn

_ZN3lld4wasmL11shouldMergeERKN4llvm6object11WasmSegmentE.exit.thread: ; preds = %bb.bh, %_ZN3lld4wasmL11shouldMergeERKN4llvm6object11WasmSegmentE.exit
  %i.sk = call noundef ptr @_ZN3lld17SpecificAllocBase11getOrCreateEPvmmRFPS0_S1_E(ptr noundef nonnull @_ZN3lld13SpecificAllocINS_4wasm12InputSegmentEE3tagE, i64 noundef 88, i64 noundef 8, ptr noundef nonnull @_ZN3lld13SpecificAllocINS_4wasm12InputSegmentEE6createEPv) #21 ; 2 uses
  %i.sl = getelementptr inbounds nuw i8, ptr %i.sk, i64 8 ; 3 uses
  %i.sm = load ptr, ptr %i.sl, align 8, !tbaa !52 ; 2 uses
  %i.sn = ptrtoint ptr %i.sm to i64
  %i.so = add i64 %i.sn, 136                      ; 2 uses
  %i.sp = getelementptr inbounds nuw i8, ptr %i.sk, i64 16
  %i.sq = load i64, ptr %i.sp, align 8, !tbaa !53
  %i.sr = icmp ult i64 %i.so, %i.sq
  br i1 %i.sr, label %bb.bl, label %bb.bm, !prof !54

bb.bl:                                            ; preds = %_ZN3lld4wasmL11shouldMergeERKN4llvm6object11WasmSegmentE.exit.thread
  %i.ss = inttoptr i64 %i.so to ptr
  store ptr %i.ss, ptr %i.sl, align 8, !tbaa !52
  br label %_ZN3lld4makeINS_4wasm12InputSegmentEJRKN4llvm6object11WasmSegmentEPNS1_7ObjFileEEEEPT_DpOT0_.exit

bb.bm:                                            ; preds = %_ZN3lld4wasmL11shouldMergeERKN4llvm6object11WasmSegmentE.exit.thread
  %i.st = call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm1EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.sl, i64 noundef 136, i64 noundef 136, i8 0)
  br label %_ZN3lld4makeINS_4wasm12InputSegmentEJRKN4llvm6object11WasmSegmentEPNS1_7ObjFileEEEEPT_DpOT0_.exit

_ZN3lld4makeINS_4wasm12InputSegmentEJRKN4llvm6object11WasmSegmentEPNS1_7ObjFileEEEEPT_DpOT0_.exit: ; preds = %bb.bl, %bb.bm
  %.0.i.i.i178 = phi ptr [ %i.sm, %bb.bl ], [ %i.st, %bb.bm ] ; 15 uses
  %i.su = getelementptr inbounds nuw i8, ptr %.0109437, i64 72
  %.sroa.0.0.copyload.i.i179 = load ptr, ptr %i.su, align 8, !tbaa !25 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i180 = getelementptr inbounds nuw i8, ptr %.0109437, i64 80
  %.sroa.2.0.copyload.i.i181 = load i64, ptr %.sroa.2.0..sroa_idx.i.i180, align 8, !tbaa !26 ; 2 uses
  store ptr %.sroa.0.0.copyload.i.i179, ptr %.0.i.i.i178, align 8, !tbaa !25
  %.sroa.2.0..sroa_idx.i.i.i182 = getelementptr inbounds nuw i8, ptr %.0.i.i.i178, i64 8
  store i64 %.sroa.2.0.copyload.i.i181, ptr %.sroa.2.0..sroa_idx.i.i.i182, align 8, !tbaa !26
  %i.sv = getelementptr inbounds nuw i8, ptr %.0.i.i.i178, i64 16
  %i.sw = getelementptr inbounds nuw i8, ptr %.0.i.i.i178, i64 32
  %i.sx = getelementptr inbounds nuw i8, ptr %.0.i.i.i178, i64 40
  %i.sy = getelementptr inbounds nuw i8, ptr %.0.i.i.i178, i64 48 ; 2 uses
  %i.sz = getelementptr inbounds nuw i8, ptr %.0.i.i.i178, i64 52 ; 2 uses
  %i.ta = getelementptr inbounds nuw i8, ptr %.0.i.i.i178, i64 56
  %i.tb = load i32, ptr %i.qu, align 4, !tbaa !658
  %i.tc = load <2 x i32>, ptr %i.qw, align 8, !tbaa !35
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.sv, i8 0, i64 16, i1 false)
  store ptr %0, ptr %i.sw, align 8, !tbaa !406
  store ptr null, ptr %i.sx, align 8, !tbaa !407
  store i32 -1, ptr %i.sy, align 8, !tbaa !411
  store i32 0, ptr %i.sz, align 4, !tbaa !286
  store <2 x i32> %i.tc, ptr %i.ta, align 8, !tbaa !35
  %i.td = getelementptr inbounds nuw i8, ptr %.0.i.i.i178, i64 64
  store i32 0, ptr %i.td, align 8, !tbaa !284
  %i.te = getelementptr inbounds nuw i8, ptr %.0.i.i.i178, i64 72
  %i.tf = getelementptr inbounds nuw i8, ptr %.0.i.i.i178, i64 88 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.te, i8 0, i64 16, i1 false)
  %i.tg = load i8, ptr %i.tf, align 8
  %i.th = and i8 %i.tg, -32
  %i.ti = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN3lld4wasm3ctxE, i64 12), align 4, !tbaa !330, !range !32, !noundef !170
  %i.tj = shl nuw nsw i8 %i.ti, 3
  %i.tk = or disjoint i8 %i.tj, %i.th
  %i.tl = xor i8 %i.tk, 8                         ; 2 uses
  store i8 %i.tl, ptr %i.tf, align 8
  %i.tm = getelementptr inbounds nuw i8, ptr %.0.i.i.i178, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.tm, i8 0, i64 32, i1 false)
  %i.tn = getelementptr inbounds nuw i8, ptr %.0.i.i.i178, i64 128
  store ptr %.0109437, ptr %i.tn, align 8, !tbaa !662
  %i.to = getelementptr inbounds nuw i8, ptr %.0109437, i64 56
  %i.tp = getelementptr inbounds nuw i8, ptr %.0.i.i.i178, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.tp, ptr noundef nonnull align 8 dereferenceable(16) %i.to, i64 16, i1 false), !tbaa.struct !315
  %i.tq = getelementptr inbounds nuw i8, ptr %.0109437, i64 96
  %i.tr = load i32, ptr %i.tq, align 8, !tbaa !660 ; 2 uses
  store i32 %i.tr, ptr %i.sy, align 8, !tbaa !411
  %i.ts = load i32, ptr %.0109437, align 8, !tbaa !661
  store i32 %i.ts, ptr %i.sz, align 4, !tbaa !286
  br label %bb.bn

bb.bn:                                            ; preds = %_ZN3lld4makeINS_4wasm12InputSegmentEJRKN4llvm6object11WasmSegmentEPNS1_7ObjFileEEEEPT_DpOT0_.exit, %_ZN3lld4makeINS_4wasm15MergeInputChunkEJRKN4llvm6object11WasmSegmentEPNS1_7ObjFileEEEEPT_DpOT0_.exit
  %i.tt = phi ptr [ %.sroa.0.0.copyload.i.i174, %_ZN3lld4makeINS_4wasm15MergeInputChunkEJRKN4llvm6object11WasmSegmentEPNS1_7ObjFileEEEEPT_DpOT0_.exit ], [ %.sroa.0.0.copyload.i.i179, %_ZN3lld4makeINS_4wasm12InputSegmentEJRKN4llvm6object11WasmSegmentEPNS1_7ObjFileEEEEPT_DpOT0_.exit ] ; 4 uses
  %i.tu = phi i64 [ %.sroa.2.0.copyload.i.i176, %_ZN3lld4makeINS_4wasm15MergeInputChunkEJRKN4llvm6object11WasmSegmentEPNS1_7ObjFileEEEEPT_DpOT0_.exit ], [ %.sroa.2.0.copyload.i.i181, %_ZN3lld4makeINS_4wasm12InputSegmentEJRKN4llvm6object11WasmSegmentEPNS1_7ObjFileEEEEPT_DpOT0_.exit ] ; 2 uses
  %i.tv = phi i32 [ %i.rt, %_ZN3lld4makeINS_4wasm15MergeInputChunkEJRKN4llvm6object11WasmSegmentEPNS1_7ObjFileEEEEPT_DpOT0_.exit ], [ %i.tb, %_ZN3lld4makeINS_4wasm12InputSegmentEJRKN4llvm6object11WasmSegmentEPNS1_7ObjFileEEEEPT_DpOT0_.exit ] ; 2 uses
  %i.tw = phi i8 [ %i.sd, %_ZN3lld4makeINS_4wasm15MergeInputChunkEJRKN4llvm6object11WasmSegmentEPNS1_7ObjFileEEEEPT_DpOT0_.exit ], [ %i.tl, %_ZN3lld4makeINS_4wasm12InputSegmentEJRKN4llvm6object11WasmSegmentEPNS1_7ObjFileEEEEPT_DpOT0_.exit ]
  %i.tx = phi i32 [ %i.si, %_ZN3lld4makeINS_4wasm15MergeInputChunkEJRKN4llvm6object11WasmSegmentEPNS1_7ObjFileEEEEPT_DpOT0_.exit ], [ %i.tr, %_ZN3lld4makeINS_4wasm12InputSegmentEJRKN4llvm6object11WasmSegmentEPNS1_7ObjFileEEEEPT_DpOT0_.exit ] ; 3 uses
  %.0390 = phi ptr [ %.0.i.i.i173, %_ZN3lld4makeINS_4wasm15MergeInputChunkEJRKN4llvm6object11WasmSegmentEPNS1_7ObjFileEEEEPT_DpOT0_.exit ], [ %.0.i.i.i178, %_ZN3lld4makeINS_4wasm12InputSegmentEJRKN4llvm6object11WasmSegmentEPNS1_7ObjFileEEEEPT_DpOT0_.exit ] ; 4 uses
  %i.ty = icmp eq i32 %i.tx, -1
  br i1 %i.ty, label %_ZNK3lld4wasm7ObjFile18isExcludedByComdatEPKNS0_10InputChunkE.exit186.thread, label %_ZNK3lld4wasm7ObjFile18isExcludedByComdatEPKNS0_10InputChunkE.exit186

_ZNK3lld4wasm7ObjFile18isExcludedByComdatEPKNS0_10InputChunkE.exit186: ; preds = %bb.bn
  %i.tz = load ptr, ptr %i.hk, align 8, !tbaa !347
  %i.ua = lshr i32 %i.tx, 6
  %.zext.i183 = zext nneg i32 %i.ua to i64
  %i.ub = getelementptr inbounds nuw [8 x i8], ptr %i.tz, i64 %.zext.i183
  %i.uc = and i32 %i.tx, 63
  %i.ud = zext nneg i32 %i.uc to i64
  %i.ue = shl nuw i64 1, %i.ud
  %i.uf = load i64, ptr %i.ub, align 8, !tbaa !26
  %i.ug = and i64 %i.uf, %i.ue
  %.fr = freeze i64 %i.ug
  %.not.i184 = icmp eq i64 %.fr, 0
  %spec.select407 = select i1 %.not.i184, i8 16, i8 0
  br label %_ZNK3lld4wasm7ObjFile18isExcludedByComdatEPKNS0_10InputChunkE.exit186.thread

_ZNK3lld4wasm7ObjFile18isExcludedByComdatEPKNS0_10InputChunkE.exit186.thread: ; preds = %bb.bn, %_ZNK3lld4wasm7ObjFile18isExcludedByComdatEPKNS0_10InputChunkE.exit186
  %i.uh = phi i8 [ %spec.select407, %_ZNK3lld4wasm7ObjFile18isExcludedByComdatEPKNS0_10InputChunkE.exit186 ], [ 0, %bb.bn ]
  %i.ui = getelementptr inbounds nuw i8, ptr %.0390, i64 88
  %i.uj = and i8 %i.tw, -17
  %i.uk = or disjoint i8 %i.uj, %i.uh
  store i8 %i.uk, ptr %i.ui, align 8
  %i.ul = getelementptr inbounds nuw i8, ptr %.0390, i64 60
  %i.um = and i32 %i.tv, 2
  %.not410 = icmp eq i32 %i.um, 0
  br i1 %.not410, label %bb.bo, label %_ZNK4llvm9StringRef11starts_withES0_.exit190.thread400

bb.bo:                                            ; preds = %_ZNK3lld4wasm7ObjFile18isExcludedByComdatEPKNS0_10InputChunkE.exit186.thread
  %.not.i187 = icmp ult i64 %i.tu, 6
  br i1 %.not.i187, label %_ZNK4llvm9StringRef11starts_withES0_.exit.thread399, label %_ZNK4llvm9StringRef11starts_withES0_.exit

_ZNK4llvm9StringRef11starts_withES0_.exit:        ; preds = %bb.bo
  %i.un = load i32, ptr %i.tt, align 1
  %i.uo = xor i32 %i.un, 1633973294
  %i.up = getelementptr i8, ptr %i.tt, i64 4
  %i.uq = load i16, ptr %i.up, align 1
  %i.ur = zext i16 %i.uq to i32
  %i.us = xor i32 %i.ur, 24948
  %i.ut = or i32 %i.uo, %i.us
  %i.uu = icmp ne i32 %i.ut, 0
  %i.uv = zext i1 %i.uu to i32
  %i.uw = icmp eq i32 %i.uv, 0
  br i1 %i.uw, label %_ZNK4llvm9StringRef11starts_withES0_.exit.thread, label %_ZNK4llvm9StringRef11starts_withES0_.exit190

_ZNK4llvm9StringRef11starts_withES0_.exit.thread399: ; preds = %bb.bo
  %.not.i188.not = icmp eq i64 %i.tu, 5
  br i1 %.not.i188.not, label %_ZNK4llvm9StringRef11starts_withES0_.exit190, label %_ZNK4llvm9StringRef11starts_withES0_.exit190.thread400

_ZNK4llvm9StringRef11starts_withES0_.exit190:     ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit, %_ZNK4llvm9StringRef11starts_withES0_.exit.thread399
  %i.ux = load i32, ptr %i.tt, align 1
  %i.uy = xor i32 %i.ux, 1935832110
  %i.uz = getelementptr i8, ptr %i.tt, i64 4
  %i.va = load i8, ptr %i.uz, align 1
  %i.vb = zext i8 %i.va to i32
  %i.vc = xor i32 %i.vb, 115
  %i.vd = or i32 %i.uy, %i.vc
  %i.ve = icmp ne i32 %i.vd, 0
  %i.vf = zext i1 %i.ve to i32
  %i.vg = icmp eq i32 %i.vf, 0
  br i1 %i.vg, label %_ZNK4llvm9StringRef11starts_withES0_.exit.thread, label %_ZNK4llvm9StringRef11starts_withES0_.exit190.thread400

_ZNK4llvm9StringRef11starts_withES0_.exit.thread: ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit190, %_ZNK4llvm9StringRef11starts_withES0_.exit
  %i.vh = or disjoint i32 %i.tv, 2
  store i32 %i.vh, ptr %i.ul, align 4, !tbaa !409
  br label %_ZNK4llvm9StringRef11starts_withES0_.exit190.thread400

_ZNK4llvm9StringRef11starts_withES0_.exit190.thread400: ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit.thread399, %_ZNK4llvm9StringRef11starts_withES0_.exit.thread, %_ZNK4llvm9StringRef11starts_withES0_.exit190, %_ZNK3lld4wasm7ObjFile18isExcludedByComdatEPKNS0_10InputChunkE.exit186.thread
  %i.vi = load ptr, ptr %i.hm, align 8, !tbaa !648 ; 4 uses
  %i.vj = load ptr, ptr %i.hn, align 8, !tbaa !413
  %.not.i191 = icmp eq ptr %i.vi, %i.vj
  br i1 %.not.i191, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit190.thread400
  store ptr %.0390, ptr %i.vi, align 8, !tbaa !414
  %i.vk = getelementptr inbounds nuw i8, ptr %i.vi, i64 8 ; 2 uses
  store ptr %i.vk, ptr %i.hm, align 8, !tbaa !648
  br label %_ZNSt6vectorIPN3lld4wasm10InputChunkESaIS3_EE12emplace_backIJRS3_EEES7_DpOT_.exit198

bb.bq:                                            ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit190.thread400
  %i.vl = load ptr, ptr %i.hl, align 8, !tbaa !415 ; 4 uses
  %i.vm = ptrtoint ptr %i.vi to i64
  %i.vn = ptrtoint ptr %i.vl to i64               ; 2 uses
  %i.vo = sub i64 %i.vm, %i.vn                    ; 5 uses
  %i.vp = icmp eq i64 %i.vo, 9223372036854775800
  br i1 %i.vp, label %bb.br, label %_ZNKSt6vectorIPN3lld4wasm10InputChunkESaIS3_EE12_M_check_lenEmPKc.exit.i.i192

bb.br:                                            ; preds = %bb.bq
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.38) #20
  unreachable

_ZNKSt6vectorIPN3lld4wasm10InputChunkESaIS3_EE12_M_check_lenEmPKc.exit.i.i192: ; preds = %bb.bq
  %i.vq = ashr exact i64 %i.vo, 3                 ; 3 uses
  %.sroa.speculated.i.i.i193 = call i64 @llvm.umax.i64(i64 %i.vq, i64 1)
  %i.vr = add nsw i64 %.sroa.speculated.i.i.i193, %i.vq ; 2 uses
  %i.vs = icmp ult i64 %i.vr, %i.vq
  %i.vt = call i64 @llvm.umin.i64(i64 %i.vr, i64 1152921504606846975)
  %i.vu = select i1 %i.vs, i64 1152921504606846975, i64 %i.vt ; 3 uses
  %.not.i.i.i194 = icmp ne i64 %i.vu, 0
  call void @llvm.assume(i1 %.not.i.i.i194)
  %i.vv = shl nuw nsw i64 %i.vu, 3
  %i.vw = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.vv) #23 ; 4 uses
  %i.vx = getelementptr inbounds i8, ptr %i.vw, i64 %i.vo ; 2 uses
  store ptr %.0390, ptr %i.vx, align 8, !tbaa !414
  %i.vy = icmp sgt i64 %i.vo, 0
  br i1 %i.vy, label %bb.bs, label %_ZNSt6vectorIPN3lld4wasm10InputChunkESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i195

bb.bs:                                            ; preds = %_ZNKSt6vectorIPN3lld4wasm10InputChunkESaIS3_EE12_M_check_lenEmPKc.exit.i.i192
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.vw, ptr align 8 %i.vl, i64 %i.vo, i1 false)
  br label %_ZNSt6vectorIPN3lld4wasm10InputChunkESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i195
end_hunk_1
begin_hunk_2_@_ZN3lld4wasm7ObjFile5parseEb:bb.a
  %i.aij = load ptr, ptr %i.aeb, align 8, !tbaa !180 ; 4 uses
  %i.aik = ptrtoint ptr %i.aig to i64
  %i.ail = ptrtoint ptr %i.aij to i64             ; 2 uses
  %i.aim = sub i64 %i.aik, %i.ail                 ; 5 uses
  %i.ain = icmp eq i64 %i.aim, 9223372036854775800
  br i1 %i.ain, label %bb.dj, label %_ZNKSt6vectorIPN3lld4wasm6SymbolESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.dj:                                            ; preds = %bb.di
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.38) #20
  unreachable

_ZNKSt6vectorIPN3lld4wasm6SymbolESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.di
  %i.aio = ashr exact i64 %i.aim, 3               ; 3 uses
  %.sroa.speculated.i.i.i294 = call i64 @llvm.umax.i64(i64 %i.aio, i64 1)
  %i.aip = add nsw i64 %.sroa.speculated.i.i.i294, %i.aio ; 2 uses
  %i.aiq = icmp ult i64 %i.aip, %i.aio
  %i.air = call i64 @llvm.umin.i64(i64 %i.aip, i64 1152921504606846975)
  %i.ais = select i1 %i.aiq, i64 1152921504606846975, i64 %i.air ; 3 uses
  %.not.i.i.i295 = icmp ne i64 %i.ais, 0
  call void @llvm.assume(i1 %.not.i.i.i295)
  %i.ait = shl nuw nsw i64 %i.ais, 3
  %i.aiu = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ait) #23 ; 4 uses
  %i.aiv = getelementptr inbounds i8, ptr %i.aiu, i64 %i.aim ; 2 uses
  store ptr %i.aif, ptr %i.aiv, align 8, !tbaa !182
  %i.aiw = icmp sgt i64 %i.aim, 0
  br i1 %i.aiw, label %bb.dk, label %_ZNSt6vectorIPN3lld4wasm6SymbolESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i

bb.dk:                                            ; preds = %_ZNKSt6vectorIPN3lld4wasm6SymbolESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.aiu, ptr align 8 %i.aij, i64 %i.aim, i1 false)
  br label %_ZNSt6vectorIPN3lld4wasm6SymbolESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i

_ZNSt6vectorIPN3lld4wasm6SymbolESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i: ; preds = %bb.dk, %_ZNKSt6vectorIPN3lld4wasm6SymbolESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %i.aix = getelementptr inbounds nuw i8, ptr %i.aiv, i64 8
  %.not.i17.i.i296 = icmp eq ptr %i.aij, null
  br i1 %.not.i17.i.i296, label %_ZNSt6vectorIPN3lld4wasm6SymbolESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.dl

bb.dl:                                            ; preds = %_ZNSt6vectorIPN3lld4wasm6SymbolESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i
  %i.aiy = load ptr, ptr %i.ael, align 8, !tbaa !335
  %i.aiz = ptrtoint ptr %i.aiy to i64
  %i.aja = sub i64 %i.aiz, %i.ail
  call void @_ZdlPvm(ptr noundef nonnull %i.aij, i64 noundef %i.aja) #22
  br label %_ZNSt6vectorIPN3lld4wasm6SymbolESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorIPN3lld4wasm6SymbolESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.dl, %_ZNSt6vectorIPN3lld4wasm6SymbolESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i
  store ptr %i.aiu, ptr %i.aeb, align 8, !tbaa !180
  store ptr %i.aix, ptr %i.afx, align 8, !tbaa !334
  %i.ajb = getelementptr inbounds nuw [8 x i8], ptr %i.aiu, i64 %i.ais
  store ptr %i.ajb, ptr %i.ael, align 8, !tbaa !335
  br label %_ZNSt6vectorIPN3lld4wasm6SymbolESaIS3_EE9push_backERKS3_.exit

.critedge:                                        ; preds = %bb.df, %bb.de
  %i.ajc = load ptr, ptr %i.afx, align 8, !tbaa !334
  %i.ajd = load ptr, ptr %i.aeb, align 8, !tbaa !180
  %i.aje = ptrtoint ptr %i.ajc to i64
  %i.ajf = ptrtoint ptr %i.ajd to i64
  %i.ajg = sub i64 %i.aje, %i.ajf
  %i.ajh = ashr exact i64 %i.ajg, 3               ; 3 uses
  %i.aji = sdiv i64 %i.ajh, 64
  %i.ajj = getelementptr inbounds [8 x i8], ptr %.sroa.0377.0, i64 %i.aji
  %i.ajk = and i64 %i.ajh, -9223372036854775745
  %i.ajl = icmp ugt i64 %i.ajk, -9223372036854775808
  %storemerge.idx.i.i.i.i.i297 = select i1 %i.ajl, i64 -8, i64 0
  %storemerge.i.i.i.i.i298 = getelementptr inbounds i8, ptr %i.ajj, i64 %storemerge.idx.i.i.i.i.i297
  %i.ajm = and i64 %i.ajh, 63
  %i.ajn = shl nuw i64 1, %i.ajm
  %i.ajo = load i64, ptr %storemerge.i.i.i.i.i298, align 8, !tbaa !26
  %i.ajp = and i64 %i.ajn, %i.ajo
  %i.ajq = icmp ne i64 %i.ajp, 0
  %i.ajr = call noundef ptr @_ZN3lld4wasm7ObjFile15createUndefinedERKN4llvm6object10WasmSymbolEb(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr noundef nonnull align 8 dereferenceable(144) %i.ahx, i1 noundef zeroext %i.ajq) ; 2 uses
  %i.ajs = load ptr, ptr %i.afx, align 8, !tbaa !334 ; 4 uses
  %i.ajt = load ptr, ptr %i.ael, align 8, !tbaa !335
  %.not.i.i301 = icmp eq ptr %i.ajs, %i.ajt
  br i1 %.not.i.i301, label %bb.dn, label %bb.dm

bb.dm:                                            ; preds = %.critedge
  store ptr %i.ajr, ptr %i.ajs, align 8, !tbaa !182
  %i.aju = getelementptr inbounds nuw i8, ptr %i.ajs, i64 8
  store ptr %i.aju, ptr %i.afx, align 8, !tbaa !334
  br label %_ZNSt6vectorIPN3lld4wasm6SymbolESaIS3_EE9push_backERKS3_.exit

bb.dn:                                            ; preds = %.critedge
  %i.ajv = load ptr, ptr %i.aeb, align 8, !tbaa !180 ; 4 uses
  %i.ajw = ptrtoint ptr %i.ajs to i64
  %i.ajx = ptrtoint ptr %i.ajv to i64             ; 2 uses
  %i.ajy = sub i64 %i.ajw, %i.ajx                 ; 5 uses
  %i.ajz = icmp eq i64 %i.ajy, 9223372036854775800
  br i1 %i.ajz, label %bb.do, label %_ZNKSt6vectorIPN3lld4wasm6SymbolESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i

bb.do:                                            ; preds = %bb.dn
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.38) #20
  unreachable

_ZNKSt6vectorIPN3lld4wasm6SymbolESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.dn
  %i.aka = ashr exact i64 %i.ajy, 3               ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.aka, i64 1)
  %i.akb = add nsw i64 %.sroa.speculated.i.i.i.i, %i.aka ; 2 uses
  %i.akc = icmp ult i64 %i.akb, %i.aka
  %i.akd = call i64 @llvm.umin.i64(i64 %i.akb, i64 1152921504606846975)
  %i.ake = select i1 %i.akc, i64 1152921504606846975, i64 %i.akd ; 3 uses
  %.not.i.i.i.i302 = icmp ne i64 %i.ake, 0
  call void @llvm.assume(i1 %.not.i.i.i.i302)
  %i.akf = shl nuw nsw i64 %i.ake, 3
  %i.akg = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.akf) #23 ; 4 uses
  %i.akh = getelementptr inbounds i8, ptr %i.akg, i64 %i.ajy ; 2 uses
  store ptr %i.ajr, ptr %i.akh, align 8, !tbaa !182
  %i.aki = icmp sgt i64 %i.ajy, 0
  br i1 %i.aki, label %bb.dp, label %_ZNSt6vectorIPN3lld4wasm6SymbolESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i

bb.dp:                                            ; preds = %_ZNKSt6vectorIPN3lld4wasm6SymbolESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.akg, ptr align 8 %i.ajv, i64 %i.ajy, i1 false)
  br label %_ZNSt6vectorIPN3lld4wasm6SymbolESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i

_ZNSt6vectorIPN3lld4wasm6SymbolESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i: ; preds = %bb.dp, %_ZNKSt6vectorIPN3lld4wasm6SymbolESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.akj = getelementptr inbounds nuw i8, ptr %i.akh, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.ajv, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPN3lld4wasm6SymbolESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %bb.dq

bb.dq:                                            ; preds = %_ZNSt6vectorIPN3lld4wasm6SymbolESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i
  %i.akk = load ptr, ptr %i.ael, align 8, !tbaa !335
  %i.akl = ptrtoint ptr %i.akk to i64
  %i.akm = sub i64 %i.akl, %i.ajx
  call void @_ZdlPvm(ptr noundef nonnull %i.ajv, i64 noundef %i.akm) #22
  br label %_ZNSt6vectorIPN3lld4wasm6SymbolESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i

_ZNSt6vectorIPN3lld4wasm6SymbolESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i: ; preds = %bb.dq, %_ZNSt6vectorIPN3lld4wasm6SymbolESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i
  store ptr %i.akg, ptr %i.aeb, align 8, !tbaa !180
  store ptr %i.akj, ptr %i.afx, align 8, !tbaa !334
  %i.akn = getelementptr inbounds nuw [8 x i8], ptr %i.akg, i64 %i.ake
  store ptr %i.akn, ptr %i.ael, align 8, !tbaa !335
  br label %_ZNSt6vectorIPN3lld4wasm6SymbolESaIS3_EE9push_backERKS3_.exit

_ZNSt6vectorIPN3lld4wasm6SymbolESaIS3_EE9push_backERKS3_.exit: ; preds = %_ZNSt6vectorIPN3lld4wasm6SymbolESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, %bb.dm, %_ZNSt6vectorIPN3lld4wasm6SymbolESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, %bb.dh
  %i.ako = load ptr, ptr %i.afw, align 8, !tbaa !344 ; 2 uses
  %i.akp = load ptr, ptr %i.ako, align 8, !tbaa !37
  %i.akq = getelementptr inbounds nuw i8, ptr %i.akp, i64 24
  %i.akr = load ptr, ptr %i.akq, align 8
  call void %i.akr(ptr noundef nonnull align 8 dereferenceable(48) %i.ako, ptr noundef nonnull align 8 dereferenceable(16) %14) #21, !inline_history !1
  %lhsv.i.i.i.i287 = load i64, ptr %14, align 8   ; 2 uses
  %.not.i.i.i.i289.not = icmp eq i64 %lhsv.i.i.i.i287, %i.afv
  br i1 %.not.i.i.i.i289.not, label %._crit_edge463, label %bb.de
}

declare noundef zeroext i1 @_ZN3lld4wasm11SymbolTable9addComdatEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(128), ptr, i64) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(74) ptr @_ZNK4llvm6object14WasmObjectFile14getWasmSectionERKNS0_10SectionRefE(ptr noundef nonnull align 8 dereferenceable(708), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZN3lld4makeINS_4wasm12InputSectionEJRKN4llvm6object11WasmSectionEPNS1_7ObjFileERjEEEPT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(74) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = tail call noundef ptr @_ZN3lld17SpecificAllocBase11getOrCreateEPvmmRFPS0_S1_E(ptr noundef nonnull @_ZN3lld13SpecificAllocINS_4wasm12InputSectionEE3tagE, i64 noundef 88, i64 noundef 8, ptr noundef nonnull @_ZN3lld13SpecificAllocINS_4wasm12InputSectionEE6createEPv) #21 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !52   ; 2 uses
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = add i64 %i.d, 144                        ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !53
  %i.h = icmp ult i64 %i.e, %i.g
  br i1 %i.h, label %bb.b, label %bb.c, !prof !54

bb.b:                                             ; preds = %bb.a
  %i.i = inttoptr i64 %i.e to ptr
  store ptr %i.i, ptr %i.b, align 8, !tbaa !52
  br label %_ZN4llvm24SpecificBumpPtrAllocatorIN3lld4wasm12InputSectionEE8AllocateEm.exit

bb.c:                                             ; preds = %bb.a
  %i.j = tail call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm1EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 noundef 144, i64 noundef 144, i8 0)
  br label %_ZN4llvm24SpecificBumpPtrAllocatorIN3lld4wasm12InputSectionEE8AllocateEm.exit

_ZN4llvm24SpecificBumpPtrAllocatorIN3lld4wasm12InputSectionEE8AllocateEm.exit: ; preds = %bb.b, %bb.c
  %.0.i.i = phi ptr [ %i.c, %bb.b ], [ %i.j, %bb.c ] ; 17 uses
  %i.k = load ptr, ptr %1, align 8, !tbaa !412
  %i.l = load i32, ptr %2, align 4, !tbaa !35
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sroa.01.0.copyload.i = load ptr, ptr %i.m, align 8, !tbaa !25
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.sroa.22.0.copyload.i = load i64, ptr %.sroa.22.0..sroa_idx.i, align 8, !tbaa !26
  store ptr %.sroa.01.0.copyload.i, ptr %.0.i.i, align 8, !tbaa !25
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8
  store i64 %.sroa.22.0.copyload.i, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !26
  %i.n = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, i8 0, i64 16, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 32
  store ptr %i.k, ptr %i.o, align 8, !tbaa !406
  %i.p = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 40
  store ptr null, ptr %i.p, align 8, !tbaa !407
  %i.q = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 48 ; 2 uses
  store i32 -1, ptr %i.q, align 8, !tbaa !411
  %i.r = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 52
  store i32 0, ptr %i.r, align 4, !tbaa !286
  %i.s = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 56
  store i32 %i.l, ptr %i.s, align 8, !tbaa !408
  %i.t = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 60
  store i32 0, ptr %i.t, align 4, !tbaa !409
  %i.u = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 64
  store i32 0, ptr %i.u, align 8, !tbaa !284
  %i.v = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 72
  %i.w = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 88 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, i8 0, i64 16, i1 false)
  %i.x = load i8, ptr %i.w, align 8
  %i.y = and i8 %i.x, -32
  %i.z = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN3lld4wasm3ctxE, i64 12), align 4, !tbaa !330, !range !32, !noundef !170
  %i.aa = shl nuw nsw i8 %i.z, 3
  %i.ab = or disjoint i8 %i.aa, %i.y
  %i.ac = xor i8 %i.ab, 13
  store i8 %i.ac, ptr %i.w, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ad, i8 0, i64 32, i1 false)
  %i.ae = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 128
  %.sroa.0.0.copyload.i = load ptr, ptr %i.m, align 8, !tbaa !25
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.22.0..sroa_idx.i, align 8, !tbaa !26
  %i.af = tail call noundef i64 @_ZN3lld4wasm12InputSection22getTombstoneForSectionEN4llvm9StringRefE(ptr %.sroa.0.0.copyload.i, i64 %.sroa.2.0.copyload.i) #21
  store i64 %i.af, ptr %i.ae, align 8, !tbaa !682
  %i.ag = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 136
  store ptr %0, ptr %i.ag, align 8, !tbaa !683
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !410
  store i32 %i.ai, ptr %i.q, align 8, !tbaa !411
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ak = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 112
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, ptr noundef nonnull align 8 dereferenceable(16) %i.aj, i64 16, i1 false), !tbaa.struct !315
  ret ptr %.0.i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK3lld4wasm7ObjFile18isExcludedByComdatEPKNS0_10InputChunkE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(456) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.b = load i32, ptr %i.a, align 8, !tbaa !411  ; 3 uses
  %i.c = icmp eq i32 %i.b, -1
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !347
  %i.f = lshr i32 %i.b, 6
  %.zext = zext nneg i32 %i.f to i64
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %.zext
  %i.h = and i32 %i.b, 63
  %i.i = zext nneg i32 %i.h to i64
  %i.j = shl nuw i64 1, %i.i
  %i.k = load i64, ptr %i.g, align 8, !tbaa !26
  %i.l = and i64 %i.k, %i.j
  %.not = icmp eq i64 %i.l, 0
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %.not, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZN3lld4wasm7ObjFile13createDefinedERKN4llvm6object10WasmSymbolE(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr noundef nonnull align 8 dereferenceable(144) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %.sroa.0.0.copyload79 = load ptr, ptr %1, align 8, !tbaa !25 ; 10 uses
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.13.0.copyload = load i64, ptr %.sroa.13.0..sroa_idx, align 8, !tbaa !26 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.b = load i32, ptr %i.a, align 4, !tbaa !326  ; 17 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i8, ptr %i.c, align 8, !tbaa !327
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 6 uses
  switch i8 %i.d, label %bb.ai [
    i8 0, label %bb.b
    i8 1, label %bb.h
    i8 2, label %bb.p
    i8 3, label %bb.u
    i8 4, label %bb.y
    i8 5, label %bb.ad
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.g = load i32, ptr %i.e, align 8, !tbaa !24
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !308
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 680
  %i.k = load i32, ptr %i.j, align 8, !tbaa !355
  %i.l = sub i32 %i.g, %i.k
  %i.m = zext i32 %i.l to i64
  %i.n = load ptr, ptr %i.f, align 8, !tbaa !417
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.m
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !418  ; 3 uses
  %i.q = and i32 %i.b, 3
  %i.r = icmp eq i32 %i.q, 2
  br i1 %i.r, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.s = tail call noundef ptr @_ZN3lld17SpecificAllocBase11getOrCreateEPvmmRFPS0_S1_E(ptr noundef nonnull @_ZN3lld13SpecificAllocINS_4wasm15DefinedFunctionEE3tagE, i64 noundef 88, i64 noundef 8, ptr noundef nonnull @_ZN3lld13SpecificAllocINS_4wasm15DefinedFunctionEE6createEPv) #21 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 3 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !52   ; 2 uses
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = add i64 %i.v, 112                        ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.y = load i64, ptr %i.x, align 8, !tbaa !53
  %i.z = icmp ult i64 %i.w, %i.y
  br i1 %i.z, label %bb.d, label %bb.e, !prof !54

bb.d:                                             ; preds = %bb.c
  %i.aa = inttoptr i64 %i.w to ptr
  store ptr %i.aa, ptr %i.t, align 8, !tbaa !52
  br label %_ZN3lld4makeINS_4wasm15DefinedFunctionEJRN4llvm9StringRefERjPNS1_7ObjFileERPNS1_13InputFunctionEEEEPT_DpOT0_.exit

bb.e:                                             ; preds = %bb.c
  %i.ab = tail call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm1EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.t, i64 noundef 112, i64 noundef 112, i8 0)
  br label %_ZN3lld4makeINS_4wasm15DefinedFunctionEJRN4llvm9StringRefERjPNS1_7ObjFileERPNS1_13InputFunctionEEEEPT_DpOT0_.exit

_ZN3lld4makeINS_4wasm15DefinedFunctionEJRN4llvm9StringRefERjPNS1_7ObjFileERPNS1_13InputFunctionEEEEPT_DpOT0_.exit: ; preds = %bb.d, %bb.e
  %.0.i.i.i = phi ptr [ %i.u, %bb.d ], [ %i.ab, %bb.e ] ; 2 uses
  tail call void @_ZN3lld4wasm15DefinedFunctionC1EN4llvm9StringRefEjPNS0_9InputFileEPNS0_13InputFunctionE(ptr noundef nonnull align 8 dereferenceable(112) %.0.i.i.i, ptr %.sroa.0.0.copyload79, i64 %.sroa.13.0.copyload, i32 noundef %i.b, ptr noundef nonnull %0, ptr noundef %i.p) #21
  br label %bb.aj

bb.f:                                             ; preds = %bb.b
  %i.ac = getelementptr inbounds nuw i8, ptr %i.p, i64 88
  %i.ad = load i8, ptr %i.ac, align 8
  %i.ae = and i8 %i.ad, 16
  %.not28 = icmp eq i8 %i.ae, 0
  br i1 %.not28, label %bb.g, label %bb.aj

bb.g:                                             ; preds = %bb.f
  %i.af = load ptr, ptr @_ZN3lld4wasm6symtabE, align 8, !tbaa !333
  %i.ag = tail call noundef ptr @_ZN3lld4wasm11SymbolTable18addDefinedFunctionEN4llvm9StringRefEjPNS0_9InputFileEPNS0_13InputFunctionE(ptr noundef nonnull align 8 dereferenceable(128) %i.af, ptr %.sroa.0.0.copyload79, i64 %.sroa.13.0.copyload, i32 noundef %i.b, ptr noundef nonnull %0, ptr noundef nonnull %i.p) #21
  br label %bb.aj

bb.h:                                             ; preds = %bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.ai = load i32, ptr %i.e, align 8, !tbaa !24
  %i.aj = zext i32 %i.ai to i64
  %i.ak = load ptr, ptr %i.ah, align 8, !tbaa !415
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.aj
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !414 ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !24 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !24 ; 2 uses
  %i.ar = and i32 %i.b, 256
  %.not26 = icmp eq i32 %i.ar, 0
  br i1 %.not26, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.as = getelementptr inbounds nuw i8, ptr %i.am, i64 60
  %i.at = load i32, ptr %i.as, align 4, !tbaa !409
  %i.au = shl i32 %i.at, 7
  %i.av = and i32 %i.au, 256
  %spec.select = or disjoint i32 %i.av, %i.b
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.089 = phi i32 [ %i.b, %bb.h ], [ %spec.select, %bb.i ] ; 2 uses
  %i.aw = and i32 %i.b, 3
  %i.ax = icmp eq i32 %i.aw, 2
  br i1 %i.ax, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.ay = tail call noundef ptr @_ZN3lld17SpecificAllocBase11getOrCreateEPvmmRFPS0_S1_E(ptr noundef nonnull @_ZN3lld13SpecificAllocINS_4wasm11DefinedDataEE3tagE, i64 noundef 88, i64 noundef 8, ptr noundef nonnull @_ZN3lld13SpecificAllocINS_4wasm11DefinedDataEE6createEPv) #21 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8 ; 3 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !52 ; 2 uses
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = add i64 %i.bb, 112                      ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !53
  %i.bf = icmp ult i64 %i.bc, %i.be
  br i1 %i.bf, label %bb.l, label %bb.m, !prof !54

bb.l:                                             ; preds = %bb.k
  %i.bg = inttoptr i64 %i.bc to ptr
  store ptr %i.bg, ptr %i.az, align 8, !tbaa !52
  br label %_ZN3lld4makeINS_4wasm11DefinedDataEJRN4llvm9StringRefERjPNS1_7ObjFileERPNS1_10InputChunkERmSC_EEEPT_DpOT0_.exit

bb.m:                                             ; preds = %bb.k
  %i.bh = tail call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm1EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.az, i64 noundef 112, i64 noundef 112, i8 0)
  br label %_ZN3lld4makeINS_4wasm11DefinedDataEJRN4llvm9StringRefERjPNS1_7ObjFileERPNS1_10InputChunkERmSC_EEEPT_DpOT0_.exit

_ZN3lld4makeINS_4wasm11DefinedDataEJRN4llvm9StringRefERjPNS1_7ObjFileERPNS1_10InputChunkERmSC_EEEPT_DpOT0_.exit: ; preds = %bb.l, %bb.m
  %.0.i.i.i29 = phi ptr [ %i.ba, %bb.l ], [ %i.bh, %bb.m ] ; 14 uses
  store ptr %.sroa.0.0.copyload79, ptr %.0.i.i.i29, align 8, !tbaa !25
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0.i.i.i29, i64 8
  store i64 %.sroa.13.0.copyload, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !tbaa !26
  %i.bi = getelementptr inbounds nuw i8, ptr %.0.i.i.i29, i64 16
  store ptr %0, ptr %i.bi, align 8, !tbaa !328
  %i.bj = getelementptr inbounds nuw i8, ptr %.0.i.i.i29, i64 24
  store i32 -1, ptr %i.bj, align 8, !tbaa !329
  %i.bk = getelementptr inbounds nuw i8, ptr %.0.i.i.i29, i64 28
  store i32 -1, ptr %i.bk, align 4, !tbaa !287
  %i.bl = getelementptr inbounds nuw i8, ptr %.0.i.i.i29, i64 32
  store i8 1, ptr %i.bl, align 8, !tbaa !190
  %i.bm = getelementptr inbounds nuw i8, ptr %.0.i.i.i29, i64 33
  %i.bn = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN3lld4wasm3ctxE, i64 12), align 4, !tbaa !330, !range !32, !noundef !170
  %i.bo = xor i8 %i.bn, 1
  store i8 %i.bo, ptr %i.bm, align 1
  %i.bp = getelementptr inbounds nuw i8, ptr %.0.i.i.i29, i64 36
  store i32 %.089, ptr %i.bp, align 4, !tbaa !331
  %i.bq = getelementptr inbounds nuw i8, ptr %.0.i.i.i29, i64 56
  store i8 0, ptr %i.bq, align 8, !tbaa !314
  %i.br = getelementptr inbounds nuw i8, ptr %.0.i.i.i29, i64 80
  store i8 0, ptr %i.br, align 8, !tbaa !314
  %i.bs = getelementptr inbounds nuw i8, ptr %.0.i.i.i29, i64 88
  store ptr %i.am, ptr %i.bs, align 8, !tbaa !686
  %i.bt = getelementptr inbounds nuw i8, ptr %.0.i.i.i29, i64 96
  store i64 %i.ao, ptr %i.bt, align 8, !tbaa !687
  %i.bu = getelementptr inbounds nuw i8, ptr %.0.i.i.i29, i64 104
  store i64 %i.aq, ptr %i.bu, align 8, !tbaa !688
  br label %bb.aj

bb.n:                                             ; preds = %bb.j
end_hunk_2
begin_hunk_3_@_ZN3lld13SpecificAllocINS_4wasm12InputSegmentEE6createEPv:bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 0, ptr %i.e, align 8, !tbaa !432
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 4, ptr %i.f, align 4, !tbaa !433
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %i.h, ptr %i.g, align 8, !tbaa !431
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 0, ptr %i.i, align 8, !tbaa !432
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 84
  store i32 0, ptr %i.j, align 4, !tbaa !433
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3lld13SpecificAllocINS_4wasm12InputSegmentEED2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3lld13SpecificAllocINS_4wasm12InputSegmentEEE, i64 16), ptr %0, align 8, !tbaa !37
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !431  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !432  ; 2 uses
  %i.g = zext i32 %i.f to i64
  %.idx.i.i.i.i = shl nuw nsw i64 %i.g, 4
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx.i.i.i.i
  %.not10.i.i.i.i = icmp eq i32 %i.f, 0
  br i1 %.not10.i.i.i.i, label %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm1EE26DeallocateCustomSizedSlabsEv.exit.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %.lr.ph.i.i.i.i
  %.011.i.i.i.i = phi ptr [ %i.l, %.lr.ph.i.i.i.i ], [ %i.d, %bb.a ] ; 3 uses
  %i.i = load ptr, ptr %.011.i.i.i.i, align 8, !tbaa !462
  %i.j = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !463
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.i, i64 noundef %i.k, i64 noundef 16) #21
  %i.l = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.l, %i.h
  br i1 %.not.i.i.i.i, label %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm1EE26DeallocateCustomSizedSlabsEv.exit.i.i.i, label %.lr.ph.i.i.i.i

_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm1EE26DeallocateCustomSizedSlabsEv.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i, %bb.a
  store i32 0, ptr %i.e, align 8, !tbaa !432
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !432  ; 3 uses
  %.not.i1.i.i.i = icmp eq i32 %i.n, 0
  br i1 %.not.i1.i.i.i, label %_ZN4llvm24SpecificBumpPtrAllocatorIN3lld4wasm12InputSegmentEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm1EE26DeallocateCustomSizedSlabsEv.exit.i.i.i
  %i.o = load ptr, ptr %i.b, align 8, !tbaa !431  ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !449  ; 2 uses
  store ptr %i.p, ptr %i.a, align 8, !tbaa !52
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = add i64 %i.q, 4097
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.r, ptr %i.s, align 8, !tbaa !53
  %i.t = zext i32 %i.n to i64
  %.idx.i.i.i = shl nuw nsw i64 %i.t, 3
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 %.idx.i.i.i
  %.not6.i.i.i.i = icmp eq i32 %i.n, 1
  br i1 %.not6.i.i.i.i, label %_ZN4llvm15SmallVectorImplIPvE5eraseEPKS1_S4_.exit.i.i.i, label %.lr.ph.i2.preheader.i.i.i

.lr.ph.i2.preheader.i.i.i:                        ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  br label %.lr.ph.i2.i.i.i

.lr.ph.i2.i.i.i:                                  ; preds = %.lr.ph.i2.i.i.i, %.lr.ph.i2.preheader.i.i.i
  %.07.i.i.i.i = phi ptr [ %i.af, %.lr.ph.i2.i.i.i ], [ %i.v, %.lr.ph.i2.preheader.i.i.i ] ; 3 uses
  %i.w = load ptr, ptr %i.b, align 8, !tbaa !431
  %i.x = ptrtoint ptr %.07.i.i.i.i to i64
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = sub i64 %i.x, %i.y
  %sum.shift.i.i.i.i = lshr i64 %i.z, 10
  %i.aa = trunc i64 %sum.shift.i.i.i.i to i32
  %i.ab = and i32 %i.aa, 33554431
  %i.ac = tail call i32 @llvm.umin.i32(i32 %i.ab, i32 30)
  %.sroa.speculated.i.i.i.i.i = zext nneg i32 %i.ac to i64
  %i.ad = shl nuw nsw i64 4096, %.sroa.speculated.i.i.i.i.i
  %i.ae = load ptr, ptr %.07.i.i.i.i, align 8, !tbaa !449
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ae, i64 noundef %i.ad, i64 noundef 16) #21
  %i.af = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i, i64 8 ; 2 uses
  %.not.i3.i.i.i = icmp eq ptr %i.af, %i.u
  br i1 %.not.i3.i.i.i, label %_ZN4llvm15SmallVectorImplIPvE5eraseEPKS1_S4_.exit.i.i.i, label %.lr.ph.i2.i.i.i, !llvm.loop !4

_ZN4llvm15SmallVectorImplIPvE5eraseEPKS1_S4_.exit.i.i.i: ; preds = %.lr.ph.i2.i.i.i, %bb.b
  store i32 1, ptr %i.m, align 8, !tbaa !432
  br label %_ZN4llvm24SpecificBumpPtrAllocatorIN3lld4wasm12InputSegmentEED2Ev.exit

_ZN4llvm24SpecificBumpPtrAllocatorIN3lld4wasm12InputSegmentEED2Ev.exit: ; preds = %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm1EE26DeallocateCustomSizedSlabsEv.exit.i.i.i, %_ZN4llvm15SmallVectorImplIPvE5eraseEPKS1_S4_.exit.i.i.i
  tail call void @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm1EED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.a) #21
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3lld13SpecificAllocINS_4wasm12InputSegmentEED0Ev(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3lld13SpecificAllocINS_4wasm12InputSegmentEEE, i64 16), ptr %0, align 8, !tbaa !37
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !431  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !432  ; 2 uses
  %i.g = zext i32 %i.f to i64
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.g, 4
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx.i.i.i.i.i
  %.not10.i.i.i.i.i = icmp eq i32 %i.f, 0
  br i1 %.not10.i.i.i.i.i, label %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm1EE26DeallocateCustomSizedSlabsEv.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.a, %.lr.ph.i.i.i.i.i
  %.011.i.i.i.i.i = phi ptr [ %i.l, %.lr.ph.i.i.i.i.i ], [ %i.d, %bb.a ] ; 3 uses
  %i.i = load ptr, ptr %.011.i.i.i.i.i, align 8, !tbaa !462
  %i.j = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !463
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.i, i64 noundef %i.k, i64 noundef 16) #21, !inline_history !861
  %i.l = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.l, %i.h
  br i1 %.not.i.i.i.i.i, label %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm1EE26DeallocateCustomSizedSlabsEv.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i

_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm1EE26DeallocateCustomSizedSlabsEv.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %bb.a
  store i32 0, ptr %i.e, align 8, !tbaa !432
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !432  ; 3 uses
  %.not.i1.i.i.i.i = icmp eq i32 %i.n, 0
  br i1 %.not.i1.i.i.i.i, label %_ZN3lld13SpecificAllocINS_4wasm12InputSegmentEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm1EE26DeallocateCustomSizedSlabsEv.exit.i.i.i.i
  %i.o = load ptr, ptr %i.b, align 8, !tbaa !431  ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !449  ; 2 uses
  store ptr %i.p, ptr %i.a, align 8, !tbaa !52
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = add i64 %i.q, 4097
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.r, ptr %i.s, align 8, !tbaa !53
  %i.t = zext i32 %i.n to i64
  %.idx.i.i.i.i = shl nuw nsw i64 %i.t, 3
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 %.idx.i.i.i.i
  %.not6.i.i.i.i.i = icmp eq i32 %i.n, 1
  br i1 %.not6.i.i.i.i.i, label %_ZN4llvm15SmallVectorImplIPvE5eraseEPKS1_S4_.exit.i.i.i.i, label %.lr.ph.i2.preheader.i.i.i.i

.lr.ph.i2.preheader.i.i.i.i:                      ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  br label %.lr.ph.i2.i.i.i.i

.lr.ph.i2.i.i.i.i:                                ; preds = %.lr.ph.i2.i.i.i.i, %.lr.ph.i2.preheader.i.i.i.i
  %.07.i.i.i.i.i = phi ptr [ %i.af, %.lr.ph.i2.i.i.i.i ], [ %i.v, %.lr.ph.i2.preheader.i.i.i.i ] ; 3 uses
  %i.w = load ptr, ptr %i.b, align 8, !tbaa !431
  %i.x = ptrtoint ptr %.07.i.i.i.i.i to i64
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = sub i64 %i.x, %i.y
  %sum.shift.i.i.i.i.i = lshr i64 %i.z, 10
  %i.aa = trunc i64 %sum.shift.i.i.i.i.i to i32
  %i.ab = and i32 %i.aa, 33554431
  %i.ac = tail call i32 @llvm.umin.i32(i32 %i.ab, i32 30)
  %.sroa.speculated.i.i.i.i.i.i = zext nneg i32 %i.ac to i64
  %i.ad = shl nuw nsw i64 4096, %.sroa.speculated.i.i.i.i.i.i
  %i.ae = load ptr, ptr %.07.i.i.i.i.i, align 8, !tbaa !449
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ae, i64 noundef %i.ad, i64 noundef 16) #21, !inline_history !861
  %i.af = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i3.i.i.i.i = icmp eq ptr %i.af, %i.u
  br i1 %.not.i3.i.i.i.i, label %_ZN4llvm15SmallVectorImplIPvE5eraseEPKS1_S4_.exit.i.i.i.i, label %.lr.ph.i2.i.i.i.i, !llvm.loop !4

_ZN4llvm15SmallVectorImplIPvE5eraseEPKS1_S4_.exit.i.i.i.i: ; preds = %.lr.ph.i2.i.i.i.i, %bb.b
  store i32 1, ptr %i.m, align 8, !tbaa !432
  br label %_ZN3lld13SpecificAllocINS_4wasm12InputSegmentEED2Ev.exit

_ZN3lld13SpecificAllocINS_4wasm12InputSegmentEED2Ev.exit: ; preds = %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm1EE26DeallocateCustomSizedSlabsEv.exit.i.i.i.i, %_ZN4llvm15SmallVectorImplIPvE5eraseEPKS1_S4_.exit.i.i.i.i
  tail call void @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm1EED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.a) #21, !inline_history !861
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 88) #22
  ret void
}

declare noundef i32 @_ZNK3lld4wasm10InputChunk12getInputSizeEv(ptr noundef nonnull align 8 dereferenceable(128)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3lld4wasm13InputFunctionC2ERKN4llvm4wasm13WasmSignatureEPKNS3_12WasmFunctionEPNS0_7ObjFileE(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 88
  %.sroa.02.0.copyload = load ptr, ptr %i.b, align 8, !tbaa !25
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 96
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !26
  store ptr %.sroa.02.0.copyload, ptr %0, align 8, !tbaa !25
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.2.0.copyload, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !26
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store ptr %3, ptr %i.d, align 8, !tbaa !406
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr null, ptr %i.e, align 8, !tbaa !407
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store i32 -1, ptr %i.f, align 8, !tbaa !411
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  %i.j = load i8, ptr %i.i, align 8
  %i.k = and i8 %i.j, -32
  %i.l = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN3lld4wasm3ctxE, i64 12), align 4, !tbaa !330, !range !32, !noundef !170
  %i.m = shl nuw nsw i8 %i.l, 3
  %i.n = or disjoint i8 %i.m, %i.k
  %i.o = xor i8 %i.n, 11
  store i8 %i.o, ptr %i.i, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.p, i8 0, i64 32, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr %1, ptr %i.q, align 8, !tbaa !319
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  store ptr %2, ptr %i.r, align 8, !tbaa !300
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.u = load i8, ptr %i.t, align 8, !tbaa !314, !range !32, !noundef !170
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %bb.b, label %.critedge.critedge

bb.b:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 64
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  tail call void @llvm.experimental.noalias.scope.decl(metadata !864)
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !435, !noalias !864 ; 3 uses
  %.not.i = icmp eq ptr %i.x, null
  br i1 %.not.i, label %_ZNK4llvm9StringRef3strB5cxx11Ev.exit.thread, label %bb.c

_ZNK4llvm9StringRef3strB5cxx11Ev.exit.thread:     ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.z, align 8, !tbaa !23, !alias.scope !864
  store i8 0, ptr %i.y, align 8, !tbaa !24, !alias.scope !864
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  store ptr %i.aa, ptr %i.s, align 8, !tbaa !20
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 16
  br label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !434, !noalias !864 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store ptr %i.ae, ptr %4, align 8, !tbaa !20, !alias.scope !864
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21, !noalias !864
  store i64 %i.ad, ptr %i.a, align 8, !tbaa !26, !noalias !864
  %i.af = icmp ugt i64 %i.ad, 15
  br i1 %i.af, label %bb.d, label %._crit_edge.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.ag = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #21 ; 2 uses
  store ptr %i.ag, ptr %4, align 8, !tbaa !27, !alias.scope !864
  %i.ah = load i64, ptr %i.a, align 8, !tbaa !26, !noalias !864
  store i64 %i.ah, ptr %i.ae, align 8, !tbaa !24, !alias.scope !864
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.d, %bb.c
  %i.ai = phi ptr [ %i.ag, %bb.d ], [ %i.ae, %bb.c ] ; 2 uses
  switch i64 %i.ad, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZNK4llvm9StringRef3strB5cxx11Ev.exit
  ]

bb.e:                                             ; preds = %._crit_edge.i.i.i
  %i.aj = load i8, ptr %i.x, align 1, !tbaa !24
  store i8 %i.aj, ptr %i.ai, align 1, !tbaa !24
  br label %_ZNK4llvm9StringRef3strB5cxx11Ev.exit

bb.f:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ai, ptr nonnull align 1 %i.x, i64 %i.ad, i1 false)
  br label %_ZNK4llvm9StringRef3strB5cxx11Ev.exit

_ZNK4llvm9StringRef3strB5cxx11Ev.exit:            ; preds = %._crit_edge.i.i.i, %bb.e, %bb.f
  %i.ak = load i64, ptr %i.a, align 8, !tbaa !26, !noalias !864 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.ak, ptr %i.al, align 8, !tbaa !23, !alias.scope !864
  %i.am = load ptr, ptr %4, align 8, !tbaa !27, !alias.scope !864
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ak
  store i8 0, ptr %i.an, align 1, !tbaa !24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21, !noalias !864
  %.pre = load ptr, ptr %4, align 8, !tbaa !27    ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  store ptr %i.ao, ptr %i.s, align 8, !tbaa !20
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.aq = icmp eq ptr %.pre, %i.ap
  br i1 %i.aq, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

bb.g:                                             ; preds = %_ZNK4llvm9StringRef3strB5cxx11Ev.exit.thread, %_ZNK4llvm9StringRef3strB5cxx11Ev.exit
  %i.ar = phi ptr [ %i.ab, %_ZNK4llvm9StringRef3strB5cxx11Ev.exit.thread ], [ %i.ap, %_ZNK4llvm9StringRef3strB5cxx11Ev.exit ] ; 2 uses
  %i.as = phi ptr [ %i.aa, %_ZNK4llvm9StringRef3strB5cxx11Ev.exit.thread ], [ %i.ao, %_ZNK4llvm9StringRef3strB5cxx11Ev.exit ]
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.au = load i64, ptr %i.at, align 8, !tbaa !23 ; 3 uses
  %i.av = icmp ult i64 %i.au, 16
  call void @llvm.assume(i1 %i.av)
  %i.aw = add nuw nsw i64 %i.au, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.as, ptr noundef nonnull align 8 dereferenceable(1) %i.ar, i64 %i.aw, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %_ZNK4llvm9StringRef3strB5cxx11Ev.exit
  store ptr %.pre, ptr %i.s, align 8, !tbaa !27
  %i.ax = load i64, ptr %i.ap, align 8, !tbaa !24
  store i64 %i.ax, ptr %i.ao, align 8, !tbaa !24
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.pre14 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.ay = phi ptr [ %i.ar, %bb.g ], [ %i.ap, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i ]
  %i.az = phi i64 [ %i.au, %bb.g ], [ %.pre14, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i ]
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i64 %i.az, ptr %i.ba, align 8, !tbaa !23
  store i8 0, ptr %i.ay, align 1, !tbaa !24
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i8 1, ptr %i.bb, align 8, !tbaa !467
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  %.pre15 = load ptr, ptr %i.r, align 8, !tbaa !300
  %.pre16 = load ptr, ptr %i.d, align 8, !tbaa !406
  br label %.critedge

.critedge.critedge:                               ; preds = %bb.a
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i8 0, ptr %i.bc, align 8, !tbaa !467
  br label %.critedge

.critedge:                                        ; preds = %.critedge.critedge, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bd = phi ptr [ %3, %.critedge.critedge ], [ %.pre16, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  %i.be = phi ptr [ %2, %.critedge.critedge ], [ %.pre15, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 188
  store i8 0, ptr %i.bf, align 4, !tbaa !419
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 196
  store i8 0, ptr %i.bg, align 4, !tbaa !419
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i32 0, ptr %i.bh, align 8, !tbaa !865
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 204
  store i32 0, ptr %i.bi, align 4, !tbaa !866
  %i.bj = getelementptr inbounds nuw i8, ptr %i.be, i64 48
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !867 ; 2 uses
  store i32 %i.bk, ptr %i.g, align 4, !tbaa !286
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bd, i64 120
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !405
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 32
  %i.bo = zext i32 %i.bk to i64
  %i.bp = getelementptr inbounds nuw i8, ptr %i.be, i64 52
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !868
  %i.br = zext i32 %i.bq to i64
  %i.bs = load ptr, ptr %i.bn, align 8, !tbaa !869
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.bo
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %i.bt, ptr %i.bu, align 8, !tbaa !25
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 %i.br, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !26
  %i.bv = getelementptr inbounds nuw i8, ptr %i.be, i64 104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %i.bv, i64 16, i1 false), !tbaa.struct !315
  %i.bw = getelementptr inbounds nuw i8, ptr %i.be, i64 120
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !870
  store i32 %i.bx, ptr %i.f, align 8, !tbaa !411
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN3lld13SpecificAllocINS_4wasm13InputFunctionEE6createEPv(ptr noundef %0) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3lld13SpecificAllocINS_4wasm13InputFunctionEEE, i64 16), ptr %0, align 8, !tbaa !37
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.b, i8 0, i64 16, i1 false)
  store ptr %i.d, ptr %i.c, align 8, !tbaa !431
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 0, ptr %i.e, align 8, !tbaa !432
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 4, ptr %i.f, align 4, !tbaa !433
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %i.h, ptr %i.g, align 8, !tbaa !431
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 0, ptr %i.i, align 8, !tbaa !432
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 84
  store i32 0, ptr %i.j, align 4, !tbaa !433
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3lld13SpecificAllocINS_4wasm13InputFunctionEED2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3lld13SpecificAllocINS_4wasm13InputFunctionEEE, i64 16), ptr %0, align 8, !tbaa !37
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @_ZN4llvm24SpecificBumpPtrAllocatorIN3lld4wasm13InputFunctionEE10DestroyAllEv(ptr noundef nonnull align 8 dereferenceable(80) %i.a)
  tail call void @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm1EED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.a) #21
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3lld13SpecificAllocINS_4wasm13InputFunctionEED0Ev(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3lld13SpecificAllocINS_4wasm13InputFunctionEEE, i64 16), ptr %0, align 8, !tbaa !37
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @_ZN4llvm24SpecificBumpPtrAllocatorIN3lld4wasm13InputFunctionEE10DestroyAllEv(ptr noundef nonnull align 8 dereferenceable(80) %i.a), !inline_history !871
  tail call void @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm1EED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.a) #21, !inline_history !871
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 88) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm24SpecificBumpPtrAllocatorIN3lld4wasm13InputFunctionEE10DestroyAllEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
end_hunk_3
