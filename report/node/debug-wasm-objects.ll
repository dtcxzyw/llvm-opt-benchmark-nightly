Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/debug-wasm-objects?download=true
inline.NumInlined: 2433
inline.NumDeleted: 945
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN2v88internal15WasmValueObject3NewEPNS0_7IsolateERKNS0_4wasm9WasmValueE:bb.a
bb.v:                                             ; preds = %_ZNK2v88internal4wasm18CanonicalValueType15is_reference_toENS1_8HeapType14RepresentationE.exit.thread, %_ZNK2v88internal4wasm18CanonicalValueType15is_reference_toENS1_8HeapType14RepresentationE.exit
  %i.dp = load i64, ptr %.cast.i.i, align 8       ; 4 uses
  %i.dq = trunc i64 %i.dp to i1
  br i1 %i.dq, label %_ZN2v88internal12IsWasmStructENS0_6TaggedINS0_6ObjectEEE.exit, label %_ZN2v88internal12IsJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit.thread

_ZN2v88internal12IsJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit.thread: ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  br label %.critedge

_ZN2v88internal12IsWasmStructENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %bb.v
  %i.dr = add nsw i64 %i.dp, -1
  %i.ds = inttoptr i64 %i.dr to ptr               ; 6 uses
  %i.dt = load atomic volatile i64, ptr %i.ds monotonic, align 8
  %i.du = add i64 %i.dt, 11
  %i.dv = inttoptr i64 %i.du to ptr
  %i.dw = load atomic volatile i16, ptr %i.dv monotonic, align 2
  %i.dx = icmp eq i16 %i.dw, 301
  %i.dy = load atomic volatile i64, ptr %i.ds monotonic, align 8 ; 2 uses
  br i1 %i.dx, label %bb.w, label %_ZN2v88internal11IsWasmArrayENS0_6TaggedINS0_6ObjectEEE.exit

bb.w:                                             ; preds = %_ZN2v88internal12IsWasmStructENS0_6TaggedINS0_6ObjectEEE.exit
  %i.dz = add i64 %i.dy, 31
  %i.ea = inttoptr i64 %i.dz to ptr
  %i.eb = load i64, ptr %i.ea, align 8
  %i.ec = add i64 %i.eb, 7
  %i.ed = inttoptr i64 %i.ec to ptr
  %i.ee = load i32, ptr %i.ed, align 4
  %i.ef = call fastcc ptr @_ZN2v88internal12_GLOBAL__N_114GetRefTypeNameEPNS0_7IsolateENS0_4wasm18CanonicalValueTypeE(ptr noundef %0, i32 %i.ee)
  %i.eg = call ptr @_ZN2v88internal11StructProxy6CreateEPNS0_7IsolateENS0_12DirectHandleINS0_10WasmStructEEE(ptr noundef %0, ptr nonnull %.cast.i.i)
  br label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE9NewNumberILNS0_14AllocationTypeE0EEENS0_6HandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEd.exit

_ZN2v88internal11IsWasmArrayENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %_ZN2v88internal12IsWasmStructENS0_6TaggedINS0_6ObjectEEE.exit
  %i.eh = add i64 %i.dy, 11
  %i.ei = inttoptr i64 %i.eh to ptr
  %i.ej = load atomic volatile i16, ptr %i.ei monotonic, align 2
  %i.ek = icmp eq i16 %i.ej, 300
  %i.el = load atomic volatile i64, ptr %i.ds monotonic, align 8 ; 2 uses
  br i1 %i.ek, label %bb.x, label %_ZN2v88internal13IsWasmFuncRefENS0_6TaggedINS0_6ObjectEEE.exit

bb.x:                                             ; preds = %_ZN2v88internal11IsWasmArrayENS0_6TaggedINS0_6ObjectEEE.exit
  %i.em = add i64 %i.el, 31
  %i.en = inttoptr i64 %i.em to ptr
  %i.eo = load i64, ptr %i.en, align 8
  %i.ep = add i64 %i.eo, 7
  %i.eq = inttoptr i64 %i.ep to ptr
  %i.er = load i32, ptr %i.eq, align 4
  %i.es = call fastcc ptr @_ZN2v88internal12_GLOBAL__N_114GetRefTypeNameEPNS0_7IsolateENS0_4wasm18CanonicalValueTypeE(ptr noundef %0, i32 %i.er)
  %i.et = call ptr @_ZN2v88internal10ArrayProxy6CreateEPNS0_7IsolateENS0_12DirectHandleINS0_9WasmArrayEEE(ptr noundef %0, ptr nonnull %.cast.i.i)
  br label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE9NewNumberILNS0_14AllocationTypeE0EEENS0_6HandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEd.exit

_ZN2v88internal13IsWasmFuncRefENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %_ZN2v88internal11IsWasmArrayENS0_6TaggedINS0_6ObjectEEE.exit
  %i.eu = add i64 %i.el, 11
  %i.ev = inttoptr i64 %i.eu to ptr
  %i.ew = load atomic volatile i16, ptr %i.ev monotonic, align 2
  %i.ex = icmp eq i16 %i.ew, 293
  br i1 %i.ex, label %bb.y, label %_ZN2v88internal10IsWasmNullENS0_6TaggedINS0_6ObjectEEE.exit

bb.y:                                             ; preds = %_ZN2v88internal13IsWasmFuncRefENS0_6TaggedINS0_6ObjectEEE.exit
  %i.ey = add i64 %i.dp, 7
  %i.ez = inttoptr i64 %i.ey to ptr
  %i.fa = load atomic volatile i64, ptr %i.ez acquire, align 8
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.fc = load ptr, ptr %i.fb, align 8            ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.fe = load ptr, ptr %i.fd, align 8
  %i.ff = icmp eq ptr %i.fc, %i.fe
  br i1 %i.ff, label %bb.z, label %_ZN2v88internal6HandleINS0_20WasmInternalFunctionEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !5

bb.z:                                             ; preds = %bb.y
  %i.fg = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #17
  br label %_ZN2v88internal6HandleINS0_20WasmInternalFunctionEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_20WasmInternalFunctionEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %bb.y, %bb.z
  %.0.i.i = phi ptr [ %i.fg, %bb.z ], [ %i.fc, %bb.y ] ; 3 uses
  %i.fh = ptrtoint ptr %.0.i.i to i64
  %i.fi = add i64 %i.fh, 8
  %i.fj = inttoptr i64 %i.fi to ptr
  store ptr %i.fj, ptr %i.fb, align 8
  store i64 %i.fa, ptr %.0.i.i, align 8
  %i.fk = call ptr @_ZN2v88internal20WasmInternalFunction19GetOrCreateExternalENS0_12DirectHandleIS1_EE(ptr nonnull %.0.i.i) #17
  %.sroa.0.0.copyload.i172 = load i32, ptr %1, align 8
  %i.fl = call fastcc ptr @_ZN2v88internal12_GLOBAL__N_114GetRefTypeNameEPNS0_7IsolateENS0_4wasm18CanonicalValueTypeE(ptr noundef nonnull %0, i32 %.sroa.0.0.copyload.i172)
  br label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE9NewNumberILNS0_14AllocationTypeE0EEENS0_6HandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEd.exit

_ZN2v88internal10IsWasmNullENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %_ZN2v88internal13IsWasmFuncRefENS0_6TaggedINS0_6ObjectEEE.exit
  %i.fm = load atomic volatile i64, ptr %i.ds monotonic, align 8
  %i.fn = add i64 %i.fm, 11
  %i.fo = inttoptr i64 %i.fn to ptr
  %i.fp = load atomic volatile i16, ptr %i.fo monotonic, align 2
  %i.fq = icmp eq i16 %i.fp, 294
  br i1 %i.fq, label %bb.aa, label %_ZN2v88internal12IsJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit

bb.aa:                                            ; preds = %_ZN2v88internal10IsWasmNullENS0_6TaggedINS0_6ObjectEEE.exit
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 664
  %.sroa.0.0.copyload.i174 = load i32, ptr %1, align 8
  %i.fs = call fastcc ptr @_ZN2v88internal12_GLOBAL__N_114GetRefTypeNameEPNS0_7IsolateENS0_4wasm18CanonicalValueTypeE(ptr noundef %0, i32 %.sroa.0.0.copyload.i174)
  br label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE9NewNumberILNS0_14AllocationTypeE0EEENS0_6HandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEd.exit

_ZN2v88internal12IsJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %_ZN2v88internal10IsWasmNullENS0_6TaggedINS0_6ObjectEEE.exit
  %i.ft = load atomic volatile i64, ptr %i.ds monotonic, align 8
  %i.fu = add i64 %i.ft, 11
  %i.fv = inttoptr i64 %i.fu to ptr
  %i.fw = load atomic volatile i16, ptr %i.fv monotonic, align 2
  %i.fx = add i16 %i.fw, -2065
  %i.fy = icmp ult i16 %i.fx, 17
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  br i1 %i.fy, label %.critedge, label %bb.ab

bb.ab:                                            ; preds = %_ZN2v88internal12IsJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit
  %i.fz = load ptr, ptr @_ZN2v88internal12IsolateGroup22default_isolate_group_E, align 8
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 10624
  %i.gb = load ptr, ptr %i.ga, align 8
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 112
  %i.gd = load i64, ptr %i.gc, align 8
  %i.ge = icmp eq i64 %i.dp, %i.gd
  br i1 %i.ge, label %.critedge, label %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit

_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %bb.ab
  %i.gf = load atomic volatile i64, ptr %i.ds monotonic, align 8
  %i.gg = add i64 %i.gf, 11
  %i.gh = inttoptr i64 %i.gg to ptr
  %i.gi = load atomic volatile i16, ptr %i.gh monotonic, align 2
  %i.gj = icmp ult i16 %i.gi, 128
  br i1 %i.gj, label %.critedge, label %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.thread

_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.thread: ; preds = %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit
  %.sroa.0.0.copyload.i177 = load i32, ptr %1, align 8 ; 3 uses
  store i32 %.sroa.0.0.copyload.i177, ptr %4, align 4
  %i.gk = trunc i32 %.sroa.0.0.copyload.i177 to i1
  br i1 %i.gk, label %_ZNK2v88internal4wasm18CanonicalValueType15is_reference_toENS1_8HeapType14RepresentationE.exit178, label %_ZNK2v88internal4wasm18CanonicalValueType15is_reference_toENS1_8HeapType14RepresentationE.exit178.thread

_ZNK2v88internal4wasm18CanonicalValueType15is_reference_toENS1_8HeapType14RepresentationE.exit178: ; preds = %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.thread
  %i.gl = call noundef i32 @_ZNK2v88internal4wasm13ValueTypeBase23raw_heap_representationEb(ptr noundef nonnull align 4 dereferenceable(4) %4, i1 noundef zeroext true)
  %i.gm = icmp eq i32 %i.gl, 1000006
  br i1 %i.gm, label %.critedge, label %_ZNK2v88internal4wasm18CanonicalValueType15is_reference_toENS1_8HeapType14RepresentationE.exit178._ZNK2v88internal4wasm18CanonicalValueType15is_reference_toENS1_8HeapType14RepresentationE.exit178.thread_crit_edge

_ZNK2v88internal4wasm18CanonicalValueType15is_reference_toENS1_8HeapType14RepresentationE.exit178._ZNK2v88internal4wasm18CanonicalValueType15is_reference_toENS1_8HeapType14RepresentationE.exit178.thread_crit_edge: ; preds = %_ZNK2v88internal4wasm18CanonicalValueType15is_reference_toENS1_8HeapType14RepresentationE.exit178
  %.sroa.0.0.copyload.i179.pre = load i32, ptr %1, align 8
  br label %_ZNK2v88internal4wasm18CanonicalValueType15is_reference_toENS1_8HeapType14RepresentationE.exit178.thread

_ZNK2v88internal4wasm18CanonicalValueType15is_reference_toENS1_8HeapType14RepresentationE.exit178.thread: ; preds = %_ZNK2v88internal4wasm18CanonicalValueType15is_reference_toENS1_8HeapType14RepresentationE.exit178._ZNK2v88internal4wasm18CanonicalValueType15is_reference_toENS1_8HeapType14RepresentationE.exit178.thread_crit_edge, %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.thread
  %.sroa.0.0.copyload.i179 = phi i32 [ %.sroa.0.0.copyload.i179.pre, %_ZNK2v88internal4wasm18CanonicalValueType15is_reference_toENS1_8HeapType14RepresentationE.exit178._ZNK2v88internal4wasm18CanonicalValueType15is_reference_toENS1_8HeapType14RepresentationE.exit178.thread_crit_edge ], [ %.sroa.0.0.copyload.i177, %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.thread ] ; 2 uses
  store i32 %.sroa.0.0.copyload.i179, ptr %5, align 4
  %i.gn = trunc i32 %.sroa.0.0.copyload.i179 to i1
  br i1 %i.gn, label %_ZNK2v88internal4wasm18CanonicalValueType15is_reference_toENS1_8HeapType14RepresentationE.exit180, label %_ZNK2v88internal4wasm18CanonicalValueType15is_reference_toENS1_8HeapType14RepresentationE.exit180.thread

_ZNK2v88internal4wasm18CanonicalValueType15is_reference_toENS1_8HeapType14RepresentationE.exit180.thread: ; preds = %_ZNK2v88internal4wasm18CanonicalValueType15is_reference_toENS1_8HeapType14RepresentationE.exit178.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br label %bb.ad

_ZNK2v88internal4wasm18CanonicalValueType15is_reference_toENS1_8HeapType14RepresentationE.exit180: ; preds = %_ZNK2v88internal4wasm18CanonicalValueType15is_reference_toENS1_8HeapType14RepresentationE.exit178.thread
  %i.go = call noundef i32 @_ZNK2v88internal4wasm13ValueTypeBase23raw_heap_representationEb(ptr noundef nonnull align 4 dereferenceable(4) %5, i1 noundef zeroext true)
  %i.gp = icmp eq i32 %i.go, 1000005
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br i1 %i.gp, label %bb.ac, label %bb.ad

.critedge:                                        ; preds = %_ZN2v88internal12IsJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit.thread, %_ZN2v88internal12IsJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit, %bb.ab, %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit, %_ZNK2v88internal4wasm18CanonicalValueType15is_reference_toENS1_8HeapType14RepresentationE.exit178
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br label %bb.ac

bb.ac:                                            ; preds = %.critedge, %_ZNK2v88internal4wasm18CanonicalValueType15is_reference_toENS1_8HeapType14RepresentationE.exit180
  %.sroa.0.0.copyload.i181 = load i32, ptr %1, align 8
  %i.gq = call fastcc ptr @_ZN2v88internal12_GLOBAL__N_114GetRefTypeNameEPNS0_7IsolateENS0_4wasm18CanonicalValueTypeE(ptr noundef %0, i32 %.sroa.0.0.copyload.i181)
  br label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE9NewNumberILNS0_14AllocationTypeE0EEENS0_6HandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEd.exit

bb.ad:                                            ; preds = %_ZNK2v88internal4wasm18CanonicalValueType15is_reference_toENS1_8HeapType14RepresentationE.exit180.thread, %_ZNK2v88internal4wasm18CanonicalValueType15is_reference_toENS1_8HeapType14RepresentationE.exit180
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  %i.gr = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store ptr %i.gr, ptr %6, align 8
  %i.gs = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 64, ptr %i.gs, align 8
  %i.gt = load i64, ptr %.cast.i.i, align 8
  %i.gu = add i64 %i.gt, -1
  %i.gv = inttoptr i64 %i.gu to ptr
  %i.gw = load atomic volatile i64, ptr %i.gv monotonic, align 8
  %i.gx = add i64 %i.gw, 11
  %i.gy = inttoptr i64 %i.gx to ptr
  %i.gz = load atomic volatile i16, ptr %i.gy monotonic, align 2
  %i.ha = zext i16 %i.gz to i32
  %i.hb = call noundef i32 (ptr, i64, ptr, ...) @_ZN2v84base8SNPrintFENS0_6VectorIcEEPKcz(ptr nonnull %i.gr, i64 64, ptr noundef nonnull @.str.11, i32 noundef %i.ha) #17
  %.sroa.0.0.copyload.i183 = load i32, ptr %1, align 8
  %i.hc = call fastcc ptr @_ZN2v88internal12_GLOBAL__N_114GetRefTypeNameEPNS0_7IsolateENS0_4wasm18CanonicalValueTypeE(ptr noundef %0, i32 %.sroa.0.0.copyload.i183)
  %i.hd = sext i32 %i.hb to i64
  %i.he = load ptr, ptr %6, align 8
  %i.hf = call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE17InternalizeStringENS_4base6VectorIKhEEb(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr %i.he, i64 %i.hd, i1 noundef zeroext false) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  br label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE9NewNumberILNS0_14AllocationTypeE0EEENS0_6HandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEd.exit

_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit.thread: ; preds = %bb.d, %bb.d, %bb.d
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.12) #18
  unreachable

default.unreachable349:                           ; preds = %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit
  unreachable

_ZN2v88internal11FactoryBaseINS0_7FactoryEE9NewNumberILNS0_14AllocationTypeE0EEENS0_6HandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEd.exit: ; preds = %bb.r, %_ZN2v88internal6handleINS0_3SmiEEENS0_6HandleIT_EENS0_6TaggedIS4_EEPNS0_7IsolateE.exit.i162, %bb.n, %_ZN2v88internal6handleINS0_3SmiEEENS0_6HandleIT_EENS0_6TaggedIS4_EEPNS0_7IsolateE.exit.i154, %_ZN2v88internal6handleINS0_3SmiEEENS0_6HandleIT_EENS0_6TaggedIS4_EEPNS0_7IsolateE.exit.i146, %_ZN2v88internal6handleINS0_3SmiEEENS0_6HandleIT_EENS0_6TaggedIS4_EEPNS0_7IsolateE.exit.i135, %_ZN2v88internal6handleINS0_3SmiEEENS0_6HandleIT_EENS0_6TaggedIS4_EEPNS0_7IsolateE.exit.i, %bb.u, %bb.x, %bb.aa, %bb.ad, %bb.ac, %_ZN2v88internal6HandleINS0_20WasmInternalFunctionEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, %bb.w, %_ZN2v88internal12_GLOBAL__N_119WasmSimd128ToStringEPNS0_7IsolateENS0_7Simd128E.exit, %bb.i, %_ZN2v88internal11FactoryBaseINS0_7FactoryEE16NewNumberFromIntILNS0_14AllocationTypeE0EEENS0_6HandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEi.exit
  %.sroa.0241.1 = phi ptr [ %i.hf, %bb.ad ], [ %.cast.i.i, %bb.ac ], [ %i.cw, %bb.r ], [ %.0.i.i.i.i139, %_ZN2v88internal11FactoryBaseINS0_7FactoryEE16NewNumberFromIntILNS0_14AllocationTypeE0EEENS0_6HandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEi.exit ], [ %i.at, %bb.i ], [ %.0.i.i.i.i163, %_ZN2v88internal6handleINS0_3SmiEEENS0_6HandleIT_EENS0_6TaggedIS4_EEPNS0_7IsolateE.exit.i162 ], [ %.0.i.i.i.i155, %_ZN2v88internal6handleINS0_3SmiEEENS0_6HandleIT_EENS0_6TaggedIS4_EEPNS0_7IsolateE.exit.i154 ], [ %i.bz, %bb.n ], [ %i.dh, %_ZN2v88internal12_GLOBAL__N_119WasmSimd128ToStringEPNS0_7IsolateENS0_7Simd128E.exit ], [ %.cast.i.i, %bb.u ], [ %i.eg, %bb.w ], [ %i.et, %bb.x ], [ %i.fk, %_ZN2v88internal6HandleINS0_20WasmInternalFunctionEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit ], [ %i.fr, %bb.aa ], [ %.0.i.i.i.i, %_ZN2v88internal6handleINS0_3SmiEEENS0_6HandleIT_EENS0_6TaggedIS4_EEPNS0_7IsolateE.exit.i ], [ %.0.i.i.i.i136, %_ZN2v88internal6handleINS0_3SmiEEENS0_6HandleIT_EENS0_6TaggedIS4_EEPNS0_7IsolateE.exit.i135 ], [ %.0.i.i.i.i147, %_ZN2v88internal6handleINS0_3SmiEEENS0_6HandleIT_EENS0_6TaggedIS4_EEPNS0_7IsolateE.exit.i146 ]
  %.sroa.0242.1 = phi ptr [ %i.hc, %bb.ad ], [ %i.gq, %bb.ac ], [ %i.ce, %bb.r ], [ %i.ag, %_ZN2v88internal11FactoryBaseINS0_7FactoryEE16NewNumberFromIntILNS0_14AllocationTypeE0EEENS0_6HandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEi.exit ], [ %i.as, %bb.i ], [ %i.ce, %_ZN2v88internal6handleINS0_3SmiEEENS0_6HandleIT_EENS0_6TaggedIS4_EEPNS0_7IsolateE.exit.i162 ], [ %i.bg, %_ZN2v88internal6handleINS0_3SmiEEENS0_6HandleIT_EENS0_6TaggedIS4_EEPNS0_7IsolateE.exit.i154 ], [ %i.bg, %bb.n ], [ %i.db, %_ZN2v88internal12_GLOBAL__N_119WasmSimd128ToStringEPNS0_7IsolateENS0_7Simd128E.exit ], [ %i.do, %bb.u ], [ %i.ef, %bb.w ], [ %i.es, %bb.x ], [ %i.fl, %_ZN2v88internal6HandleINS0_20WasmInternalFunctionEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit ], [ %i.fs, %bb.aa ], [ %i.i, %_ZN2v88internal6handleINS0_3SmiEEENS0_6HandleIT_EENS0_6TaggedIS4_EEPNS0_7IsolateE.exit.i ], [ %i.u, %_ZN2v88internal6handleINS0_3SmiEEENS0_6HandleIT_EENS0_6TaggedIS4_EEPNS0_7IsolateE.exit.i135 ], [ %i.au, %_ZN2v88internal6handleINS0_3SmiEEENS0_6HandleIT_EENS0_6TaggedIS4_EEPNS0_7IsolateE.exit.i146 ]
  %i.hg = call ptr @_ZN2v88internal15WasmValueObject3NewEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEENS4_INS0_6ObjectEEE(ptr noundef %0, ptr %.sroa.0242.1, ptr %.sroa.0241.1)
  ret ptr %i.hg
}

declare ptr @_ZN2v88internal6BigInt9FromInt64EPNS0_7IsolateEl(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc ptr @_ZN2v88internal12_GLOBAL__N_114GetRefTypeNameEPNS0_7IsolateENS0_4wasm18CanonicalValueTypeE(ptr noundef %0, i32 %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %"class.v8::internal::wasm::StringBuilder", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 280 ; 3 uses
  store ptr %2, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 288 ; 2 uses
  store ptr %2, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 296
  store i64 256, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 304 ; 2 uses
  store i8 1, ptr %i.e, align 8
  %i.f = call noundef ptr @_ZN2v88internal4wasm29GetCanonicalTypeNamesProviderEv() #17
  call void @_ZN2v88internal4wasm26CanonicalTypeNamesProvider14PrintValueTypeERNS1_13StringBuilderENS1_18CanonicalValueTypeE(ptr noundef nonnull align 8 dereferenceable(88) %i.f, ptr noundef nonnull align 8 dereferenceable(305) %2, i32 %1) #17
  %.val = load ptr, ptr %i.b, align 8             ; 2 uses
  %.val3 = load ptr, ptr %i.c, align 8
  %i.g = ptrtoint ptr %.val3 to i64
  %i.h = ptrtoint ptr %.val to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE17InternalizeStringENS_4base6VectorIKhEEb(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr %.val, i64 %i.i, i1 noundef zeroext false) #17
  %i.k = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 264
  %i.m = load ptr, ptr %i.l, align 8              ; 2 uses
  %i.n = icmp eq ptr %i.k, %i.m
  br i1 %i.n, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %bb.c, %bb.a
  %i.o = load i8, ptr %i.e, align 8, !range !8, !noundef !9
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.d, label %bb.f

.lr.ph.i:                                         ; preds = %bb.a, %bb.c
  %.sroa.05.08.i = phi ptr [ %i.s, %bb.c ], [ %i.k, %bb.a ] ; 2 uses
  %i.q = load ptr, ptr %.sroa.05.08.i, align 8    ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  call void @_ZdaPv(ptr noundef nonnull %i.q) #20
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.i
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.05.08.i, i64 8 ; 2 uses
  %i.t = icmp eq ptr %i.s, %i.m
  br i1 %i.t, label %._crit_edge.i, label %.lr.ph.i

bb.d:                                             ; preds = %._crit_edge.i
  %i.u = load ptr, ptr %i.b, align 8              ; 3 uses
  %.not.i = icmp eq ptr %i.u, %2
  %i.v = icmp eq ptr %i.u, null
  %or.cond.i = or i1 %.not.i, %i.v
  br i1 %or.cond.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_ZdaPv(ptr noundef nonnull %i.u) #20
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i
  %i.w = load ptr, ptr %i.a, align 8              ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i.i, label %_ZN2v88internal4wasm13StringBuilderD2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 272
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = sub i64 %i.z, %i.aa
  call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.ab) #20
  br label %_ZN2v88internal4wasm13StringBuilderD2Ev.exit

_ZN2v88internal4wasm13StringBuilderD2Ev.exit:     ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  ret ptr %i.j
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden ptr @_ZN2v88internal11StructProxy6CreateEPNS0_7IsolateENS0_12DirectHandleINS0_10WasmStructEEE(ptr noundef %0, ptr %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call fastcc ptr @_ZN2v88internal12_GLOBAL__N_124GetOrCreateDebugProxyMapEPNS0_7IsolateENS1_12DebugProxyIdEPFNS_5LocalINS_16FunctionTemplateEEEPNS_7IsolateEEb(ptr noundef %0, i32 noundef 7, ptr noundef nonnull @_ZN2v88internal12_GLOBAL__N_115NamedDebugProxyINS0_11StructProxyELNS1_12DebugProxyIdE7ENS0_10WasmStructEE14CreateTemplateEPNS_7IsolateE, i1 noundef zeroext true), !inline_history !10 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8
  %i.c = add i64 %i.b, 15
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = load atomic volatile i32, ptr %i.d monotonic, align 4
  %i.f = and i32 %i.e, 2097152
  %.not.i.i = icmp eq i32 %i.f, 0
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call ptr @_ZN2v88internal7Factory22NewSlowJSObjectFromMapENS0_12DirectHandleINS0_3MapEEEiNS0_14AllocationTypeENS2_INS0_14AllocationSiteEEENS0_15NewJSObjectTypeE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nonnull %i.a, i32 noundef 0, i8 noundef zeroext 0, ptr null, i8 noundef zeroext 1) #17, !inline_history !10
  br label %_ZN2v88internal7Factory28NewFastOrSlowJSObjectFromMapENS0_12DirectHandleINS0_3MapEEEiNS0_14AllocationTypeENS2_INS0_14AllocationSiteEEENS0_15NewJSObjectTypeE.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = tail call ptr @_ZN2v88internal7Factory18NewJSObjectFromMapENS0_12DirectHandleINS0_3MapEEENS0_14AllocationTypeENS2_INS0_14AllocationSiteEEENS0_15NewJSObjectTypeE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nonnull %i.a, i8 noundef zeroext 0, ptr null, i8 noundef zeroext 1) #17, !inline_history !10
  br label %_ZN2v88internal7Factory28NewFastOrSlowJSObjectFromMapENS0_12DirectHandleINS0_3MapEEEiNS0_14AllocationTypeENS2_INS0_14AllocationSiteEEENS0_15NewJSObjectTypeE.exit.i

_ZN2v88internal7Factory28NewFastOrSlowJSObjectFromMapENS0_12DirectHandleINS0_3MapEEEiNS0_14AllocationTypeENS2_INS0_14AllocationSiteEEENS0_15NewJSObjectTypeE.exit.i: ; preds = %bb.c, %bb.b
  %.sroa.09.0.i.i = phi ptr [ %i.g, %bb.b ], [ %i.h, %bb.c ] ; 2 uses
  %i.i = load i64, ptr %.sroa.09.0.i.i, align 8   ; 4 uses
  %i.j = load i64, ptr %1, align 8                ; 5 uses
  %i.k = add i64 %i.i, -1                         ; 2 uses
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = load atomic volatile i64, ptr %i.l monotonic, align 8 ; 2 uses
  %i.n = add i64 %i.m, 11
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = load atomic volatile i16, ptr %i.o monotonic, align 2 ; 2 uses
  %i.q = icmp eq i16 %i.p, 1057
  br i1 %i.q, label %_ZN2v88internal8JSObject22GetEmbedderFieldOffsetEi.exit.i.i, label %bb.d

bb.d:                                             ; preds = %_ZN2v88internal7Factory28NewFastOrSlowJSObjectFromMapENS0_12DirectHandleINS0_3MapEEEiNS0_14AllocationTypeENS2_INS0_14AllocationSiteEEENS0_15NewJSObjectTypeE.exit.i
  %i.r = add i64 %i.m, 13
  %i.s = inttoptr i64 %i.r to ptr
  %i.t = load atomic volatile i8, ptr %i.s monotonic, align 1
  %i.u = icmp slt i8 %i.t, 0
  %i.v = tail call noundef i32 @_ZN2v88internal8JSObject13GetHeaderSizeENS0_12InstanceTypeEb(i16 noundef zeroext %i.p, i1 noundef zeroext %i.u) #17, !inline_history !10
  %i.w = sext i32 %i.v to i64
  br label %_ZN2v88internal8JSObject22GetEmbedderFieldOffsetEi.exit.i.i

_ZN2v88internal8JSObject22GetEmbedderFieldOffsetEi.exit.i.i: ; preds = %bb.d, %_ZN2v88internal7Factory28NewFastOrSlowJSObjectFromMapENS0_12DirectHandleINS0_3MapEEEiNS0_14AllocationTypeENS2_INS0_14AllocationSiteEEENS0_15NewJSObjectTypeE.exit.i
  %i.x = phi i64 [ %i.w, %bb.d ], [ 24, %_ZN2v88internal7Factory28NewFastOrSlowJSObjectFromMapENS0_12DirectHandleINS0_3MapEEEiNS0_14AllocationTypeENS2_INS0_14AllocationSiteEEENS0_15NewJSObjectTypeE.exit.i ]
  %i.y = add i64 %i.x, %i.k                       ; 3 uses
  %i.z = inttoptr i64 %i.y to ptr
  store atomic volatile i64 %i.j, ptr %i.z monotonic, align 8
  %i.aa = trunc i64 %i.j to i1
  br i1 %i.aa, label %bb.e, label %_ZN2v88internal12_GLOBAL__N_117IndexedDebugProxyINS0_11StructProxyELNS1_12DebugProxyIdE7ENS0_10WasmStructEE6CreateEPNS0_7IsolateENS0_12DirectHandleIS5_EEb.exit

bb.e:                                             ; preds = %_ZN2v88internal8JSObject22GetEmbedderFieldOffsetEi.exit.i.i
  %i.ab = and i64 %i.i, -262144
  %i.ac = inttoptr i64 %i.ab to ptr
  %i.ad = load i64, ptr %i.ac, align 262144       ; 2 uses
  %i.ae = and i64 %i.ad, 32
  %.not.i.i.i.i = icmp eq i64 %i.ae, 0
  %i.af = and i64 %i.ad, 25
  %.not38.i.i.i.i = icmp eq i64 %i.af, 0
  br i1 %.not38.i.i.i.i, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.ag = and i64 %i.j, -262144
  %i.ah = inttoptr i64 %i.ag to ptr
  %.sroa.0.0.copyload.i28.i.i.i.i = load i64, ptr %i.ah, align 262144
  %i.ai = and i64 %.sroa.0.0.copyload.i28.i.i.i.i, 25
  %.not39.i.i.i.i = icmp eq i64 %i.ai, 0
  br i1 %.not39.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.i, i64 noundef %i.y, i64 %i.j) #17, !inline_history !10
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  br i1 %.not.i.i.i.i, label %_ZN2v88internal12_GLOBAL__N_117IndexedDebugProxyINS0_11StructProxyELNS1_12DebugProxyIdE7ENS0_10WasmStructEE6CreateEPNS0_7IsolateENS0_12DirectHandleIS5_EEb.exit, label %bb.i, !prof !7

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.i, i64 %i.y, i64 %i.j) #17, !inline_history !10
  br label %_ZN2v88internal12_GLOBAL__N_117IndexedDebugProxyINS0_11StructProxyELNS1_12DebugProxyIdE7ENS0_10WasmStructEE6CreateEPNS0_7IsolateENS0_12DirectHandleIS5_EEb.exit

_ZN2v88internal12_GLOBAL__N_117IndexedDebugProxyINS0_11StructProxyELNS1_12DebugProxyIdE7ENS0_10WasmStructEE6CreateEPNS0_7IsolateENS0_12DirectHandleIS5_EEb.exit: ; preds = %_ZN2v88internal8JSObject22GetEmbedderFieldOffsetEi.exit.i.i, %bb.h, %bb.i
  ret ptr %.sroa.09.0.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden ptr @_ZN2v88internal10ArrayProxy6CreateEPNS0_7IsolateENS0_12DirectHandleINS0_9WasmArrayEEE(ptr noundef %0, ptr %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call fastcc ptr @_ZN2v88internal12_GLOBAL__N_124GetOrCreateDebugProxyMapEPNS0_7IsolateENS1_12DebugProxyIdEPFNS_5LocalINS_16FunctionTemplateEEEPNS_7IsolateEEb(ptr noundef %0, i32 noundef 8, ptr noundef nonnull @_ZN2v88internal10ArrayProxy14CreateTemplateEPNS_7IsolateE, i1 noundef zeroext false), !inline_history !11 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8
  %i.c = add i64 %i.b, 15
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = load atomic volatile i32, ptr %i.d monotonic, align 4
  %i.f = and i32 %i.e, 2097152
  %.not.i.i = icmp eq i32 %i.f, 0
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call ptr @_ZN2v88internal7Factory22NewSlowJSObjectFromMapENS0_12DirectHandleINS0_3MapEEEiNS0_14AllocationTypeENS2_INS0_14AllocationSiteEEENS0_15NewJSObjectTypeE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nonnull %i.a, i32 noundef 0, i8 noundef zeroext 0, ptr null, i8 noundef zeroext 1) #17, !inline_history !11
  br label %_ZN2v88internal7Factory28NewFastOrSlowJSObjectFromMapENS0_12DirectHandleINS0_3MapEEEiNS0_14AllocationTypeENS2_INS0_14AllocationSiteEEENS0_15NewJSObjectTypeE.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = tail call ptr @_ZN2v88internal7Factory18NewJSObjectFromMapENS0_12DirectHandleINS0_3MapEEENS0_14AllocationTypeENS2_INS0_14AllocationSiteEEENS0_15NewJSObjectTypeE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nonnull %i.a, i8 noundef zeroext 0, ptr null, i8 noundef zeroext 1) #17, !inline_history !11
  br label %_ZN2v88internal7Factory28NewFastOrSlowJSObjectFromMapENS0_12DirectHandleINS0_3MapEEEiNS0_14AllocationTypeENS2_INS0_14AllocationSiteEEENS0_15NewJSObjectTypeE.exit.i

_ZN2v88internal7Factory28NewFastOrSlowJSObjectFromMapENS0_12DirectHandleINS0_3MapEEEiNS0_14AllocationTypeENS2_INS0_14AllocationSiteEEENS0_15NewJSObjectTypeE.exit.i: ; preds = %bb.c, %bb.b
  %.sroa.09.0.i.i = phi ptr [ %i.g, %bb.b ], [ %i.h, %bb.c ] ; 3 uses
  %i.i = load i64, ptr %.sroa.09.0.i.i, align 8   ; 4 uses
  %i.j = load i64, ptr %1, align 8                ; 5 uses
  %i.k = add i64 %i.i, -1                         ; 2 uses
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = load atomic volatile i64, ptr %i.l monotonic, align 8 ; 2 uses
  %i.n = add i64 %i.m, 11
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = load atomic volatile i16, ptr %i.o monotonic, align 2 ; 2 uses
  %i.q = icmp eq i16 %i.p, 1057
  br i1 %i.q, label %_ZN2v88internal8JSObject22GetEmbedderFieldOffsetEi.exit.i.i, label %bb.d
end_hunk_0
