inline.NumInlined: 20842
inline.NumDeleted: 3929
begin_hunk_0_@_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE8DecodeIfEPS8_NS1_10WasmOpcodeE:bb.a
  store i64 %i.cx, ptr %i.cr, align 8
  %i.cy = load ptr, ptr %i.cn, align 8
  store i32 0, ptr %i.cw, align 4
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cw, i64 4
  store i32 0, ptr %i.cz, align 4
  %i.da = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.db = ptrtoint ptr %i.cy to i64
  store i64 %i.db, ptr %i.da, align 8
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cw, i64 40 ; 2 uses
  store ptr %i.dd, ptr %i.dc, align 8
  %i.de = getelementptr inbounds nuw i8, ptr %i.cw, i64 24
  store ptr %i.dd, ptr %i.de, align 8
  %i.df = getelementptr inbounds nuw i8, ptr %i.cw, i64 32
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cw, i64 232 ; 2 uses
  store ptr %i.dg, ptr %i.df, align 8
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cw, i64 336
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.dg, i8 0, i64 104, i1 false)
  store i8 -1, ptr %i.dh, align 8
  %i.di = getelementptr inbounds nuw i8, ptr %i.cw, i64 340
  store i32 -1, ptr %i.di, align 4
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cw, i64 344
  store i8 -1, ptr %i.dj, align 8
  %i.dk = getelementptr inbounds nuw i8, ptr %i.ci, i64 96 ; 2 uses
  store ptr %i.cw, ptr %i.dk, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call fastcc void @_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler11JumpIfFalseEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEEPNS0_5LabelERSt8optionalINS1_16FreezeCacheStateEE(ptr noundef nonnull align 8 dereferenceable(1284) %i.cm, ptr noundef %i.cw, ptr noundef nonnull align 1 dereferenceable(2) %2)
  %i.dl = load ptr, ptr %i.dk, align 8
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 616
  call void @_ZN2v88internal4wasm16LiftoffAssembler10CacheState5SplitERKS3_(ptr noundef nonnull align 8 dereferenceable(337) %i.dm, ptr noundef nonnull align 8 dereferenceable(337) %i.dn) #24
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 1372
  %.val.i = load i32, ptr %i.do, align 4
  %i.dp = getelementptr inbounds nuw i8, ptr %i.ci, i64 464
  store i32 %.val.i, ptr %i.dp, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE12DecodeIfImplEPNS8_9TraceLineENS1_10WasmOpcodeE.exit

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE12DecodeIfImplEPNS8_9TraceLineENS1_10WasmOpcodeE.exit: ; preds = %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE3PopIJNS1_20IndependentValueTypeEEQfraaoosr3stdE9is_same_vINS1_9ValueTypeETL0__Esr3stdE12is_base_of_vISA_SC_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISF_XsZT_EEE4typeEDpT_.exit, %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler2IfEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEERKNS1_9ValueBaseIS6_EEPNS3_7ControlE.exit
  %i.dq = load i32, ptr %3, align 8
  %i.dr = add i32 %i.dq, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  ret i32 %i.dr
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef i32 @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE10DecodeElseEPS8_NS1_10WasmOpcodeE(ptr noundef %0, i32 %1) #0 align 2 {
bb.a:
  %2 = alloca %"struct.v8::internal::wasm::LiftoffAssembler::CacheState", align 8 ; 14 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1504
  %i.b = getelementptr i8, ptr %0, i64 1512       ; 3 uses
  %.val3 = load ptr, ptr %i.b, align 8            ; 21 uses
  %i.c = getelementptr inbounds i8, ptr %.val3, i64 -472
  store i8 1, ptr %i.c, align 8
  %.val = load ptr, ptr %i.a, align 8
  %.val2 = load ptr, ptr %i.b, align 8            ; 2 uses
  %i.d = ptrtoint ptr %.val2 to i64
  %i.e = ptrtoint ptr %.val to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = sdiv exact i64 %i.f, 472
  %i.h = and i64 %i.g, 4294967295
  %i.i = icmp eq i64 %i.h, 1
  br i1 %i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds i8, ptr %.val2, i64 -943
  %i.k = load i8, ptr %i.j, align 1
  %i.l = icmp eq i8 %i.k, 0
  br i1 %i.l, label %bb.c, label %bb.o

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 4 uses
  %i.n = getelementptr inbounds i8, ptr %.val3, i64 -471
  %i.o = load i8, ptr %i.n, align 1
  %i.p = icmp eq i8 %i.o, 0
  br i1 %i.p, label %bb.d, label %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler4ElseEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEEPNS3_7ControlE.exit

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds i8, ptr %.val3, i64 -392
  %i.r = load i8, ptr %i.q, align 8, !range !5, !noundef !6
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds i8, ptr %.val3, i64 -368
  tail call void @_ZN2v88internal4wasm16LiftoffAssembler18MergeFullStackWithERNS2_10CacheStateE(ptr noundef nonnull align 8 dereferenceable(1284) %i.m, ptr noundef nonnull align 8 dereferenceable(337) %i.t) #24
  br label %bb.n

bb.f:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds i8, ptr %.val3, i64 -408
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 596
  %i.w = load i32, ptr %i.v, align 4
  %i.x = load i32, ptr %i.u, align 8
  %i.y = getelementptr inbounds i8, ptr %.val3, i64 -448
  %i.z = load i32, ptr %i.y, align 8
  %i.aa = getelementptr inbounds i8, ptr %.val3, i64 -8
  %i.ab = load i32, ptr %i.aa, align 8
  %i.ac = add i32 %i.ab, %i.z
  call void @_ZN2v88internal4wasm16LiftoffAssembler17MergeIntoNewStateEjjj(ptr dead_on_unwind nonnull writable sret(%"struct.v8::internal::wasm::LiftoffAssembler::CacheState") align 8 %2, ptr noundef nonnull align 8 dereferenceable(1284) %i.m, i32 noundef %i.w, i32 noundef %i.x, i32 noundef %i.ac) #24
  %i.ad = getelementptr inbounds i8, ptr %.val3, i64 -368 ; 3 uses
  %i.ae = icmp eq ptr %i.ad, %2
  br i1 %i.ae, label %_ZN2v88internal4wasm16LiftoffAssembler10CacheStateaSEOS3_.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.ag = load ptr, ptr %i.af, align 8            ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.ag, %i.ah
  br i1 %.not.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal4wasm15LiftoffVarStateELm16ENS2_13ZoneAllocatorIS4_EEE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(337) %i.ad)
  %i.ai = load ptr, ptr %i.af, align 8
  %i.aj = getelementptr inbounds i8, ptr %.val3, i64 -360
  store ptr %i.ai, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = getelementptr inbounds i8, ptr %.val3, i64 -352
  store ptr %i.al, ptr %i.am, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ao = load ptr, ptr %i.an, align 8
  br label %bb.m

bb.i:                                             ; preds = %bb.g
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = ptrtoint ptr %i.ag to i64
  %i.at = sub i64 %i.ar, %i.as                    ; 4 uses
  %i.au = getelementptr inbounds i8, ptr %.val3, i64 -360 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8            ; 2 uses
  %i.aw = icmp sgt i64 %i.at, 12
  br i1 %i.aw, label %bb.j, label %bb.k, !prof !16

bb.j:                                             ; preds = %bb.i
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.av, ptr align 4 %i.ag, i64 %i.at, i1 false)
  br label %_ZSt4moveIPN2v88internal4wasm15LiftoffVarStateES4_ET0_T_S6_S5_.exit.i.i.i.i

bb.k:                                             ; preds = %bb.i
  %i.ax = icmp eq i64 %i.at, 12
  br i1 %i.ax, label %bb.l, label %_ZSt4moveIPN2v88internal4wasm15LiftoffVarStateES4_ET0_T_S6_S5_.exit.i.i.i.i

bb.l:                                             ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.av, ptr noundef nonnull align 4 dereferenceable(12) %i.ag, i64 12, i1 false)
  br label %_ZSt4moveIPN2v88internal4wasm15LiftoffVarStateES4_ET0_T_S6_S5_.exit.i.i.i.i

_ZSt4moveIPN2v88internal4wasm15LiftoffVarStateES4_ET0_T_S6_S5_.exit.i.i.i.i: ; preds = %bb.l, %bb.k, %bb.j
  %i.ay = load ptr, ptr %i.au, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.at
  br label %bb.m

bb.m:                                             ; preds = %_ZSt4moveIPN2v88internal4wasm15LiftoffVarStateES4_ET0_T_S6_S5_.exit.i.i.i.i, %bb.h
  %.sink16.i.i.i.i = phi i64 [ 16, %_ZSt4moveIPN2v88internal4wasm15LiftoffVarStateES4_ET0_T_S6_S5_.exit.i.i.i.i ], [ 24, %bb.h ]
  %.sink.i.i.i.i = phi ptr [ %i.az, %_ZSt4moveIPN2v88internal4wasm15LiftoffVarStateES4_ET0_T_S6_S5_.exit.i.i.i.i ], [ %i.ao, %bb.h ]
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.sink16.i.i.i.i
  store ptr %.sink.i.i.i.i, ptr %i.ba, align 8
  store ptr %i.ah, ptr %i.af, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.ah, ptr %i.bb, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 224
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %i.bc, ptr %i.bd, align 8
  br label %_ZN2v88internal4wasm16LiftoffAssembler10CacheStateaSEOS3_.exit.i

_ZN2v88internal4wasm16LiftoffAssembler10CacheStateaSEOS3_.exit.i: ; preds = %bb.m, %bb.f
  %i.be = getelementptr inbounds i8, ptr %.val3, i64 -144
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 224
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(113) %i.be, ptr noundef nonnull align 8 dereferenceable(113) %i.bf, i64 113, i1 false)
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal4wasm15LiftoffVarStateELm16ENS2_13ZoneAllocatorIS4_EEE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(337) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %bb.n

bb.n:                                             ; preds = %_ZN2v88internal4wasm16LiftoffAssembler10CacheStateaSEOS3_.exit.i, %bb.e
  %i.bg = getelementptr inbounds i8, ptr %.val3, i64 -24
  call void @_ZN2v88internal9Assembler3jmpEPNS0_5LabelENS2_8DistanceE(ptr noundef nonnull align 8 dereferenceable(1284) %i.m, ptr noundef nonnull %i.bg, i32 noundef 1) #24
  br label %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler4ElseEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEEPNS3_7ControlE.exit

_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler4ElseEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEEPNS3_7ControlE.exit: ; preds = %bb.c, %bb.n
  %i.bh = getelementptr inbounds i8, ptr %.val3, i64 -376 ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8
  call void @_ZN2v88internal9Assembler4bindEPNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(1284) %i.m, ptr noundef nonnull %i.bi) #24
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.bk = load ptr, ptr %i.bh, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  call void @_ZN2v88internal4wasm16LiftoffAssembler10CacheState5StealERS3_(ptr noundef nonnull align 8 dereferenceable(337) %i.bj, ptr noundef nonnull align 8 dereferenceable(337) %i.bl) #24
  br label %bb.o

bb.o:                                             ; preds = %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler4ElseEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEEPNS3_7ControlE.exit, %bb.b
  %i.bm = getelementptr inbounds i8, ptr %.val3, i64 -471 ; 2 uses
  %i.bn = load i8, ptr %i.bm, align 1
  %i.bo = icmp eq i8 %i.bn, 0
  br i1 %i.bo, label %bb.p, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE14DecodeElseImplEPNS8_9TraceLineENS1_10WasmOpcodeE.exit

bb.p:                                             ; preds = %bb.o
  %i.bp = getelementptr inbounds i8, ptr %.val3, i64 -392
  store i8 1, ptr %i.bp, align 8
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE14DecodeElseImplEPNS8_9TraceLineENS1_10WasmOpcodeE.exit

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE14DecodeElseImplEPNS8_9TraceLineENS1_10WasmOpcodeE.exit: ; preds = %bb.o, %bb.p
  %3 = getelementptr i8, ptr %.val3, i64 -444
  %.val6 = load i32, ptr %3, align 4              ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 1529
  %i.br = load i8, ptr %i.bq, align 1, !range !5, !noundef !6
  %i.bs = trunc nuw i8 %i.br to i1
  br i1 %i.bs, label %bb.q, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE28RollbackLocalsInitializationEPNS6_7ControlE.exit

bb.q:                                             ; preds = %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE14DecodeElseImplEPNS8_9TraceLineENS1_10WasmOpcodeE.exit
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 1480 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 1488 ; 3 uses
  %i.bv = load ptr, ptr %i.bu, align 8            ; 2 uses
  %i.bw = load ptr, ptr %i.bt, align 8
  %i.bx = ptrtoint ptr %i.bv to i64
  %i.by = ptrtoint ptr %i.bw to i64
  %i.bz = sub i64 %i.bx, %i.by
  %i.ca = lshr exact i64 %i.bz, 2
  %i.cb = trunc i64 %i.ca to i32
  %i.cc = icmp ult i32 %.val6, %i.cb
  br i1 %i.cc, label %.lr.ph.i, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE28RollbackLocalsInitializationEPNS6_7ControlE.exit

.lr.ph.i:                                         ; preds = %bb.q
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 1472
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %.lr.ph.i
  %i.ce = phi ptr [ %i.bv, %.lr.ph.i ], [ %i.ck, %bb.r ]
  %i.cf = getelementptr inbounds i8, ptr %i.ce, i64 -4 ; 2 uses
  %i.cg = load i32, ptr %i.cf, align 4
  store ptr %i.cf, ptr %i.bu, align 8
  %i.ch = load ptr, ptr %i.cd, align 8
  %i.ci = zext i32 %i.cg to i64
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.ci
  store i8 0, ptr %i.cj, align 1
  %i.ck = load ptr, ptr %i.bu, align 8            ; 2 uses
  %i.cl = load ptr, ptr %i.bt, align 8
  %i.cm = ptrtoint ptr %i.ck to i64
  %i.cn = ptrtoint ptr %i.cl to i64
  %i.co = sub i64 %i.cm, %i.cn
  %i.cp = lshr exact i64 %i.co, 2
  %i.cq = trunc i64 %i.cp to i32
  %i.cr = icmp ult i32 %.val6, %i.cq
  br i1 %i.cr, label %bb.r, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE28RollbackLocalsInitializationEPNS6_7ControlE.exit, !llvm.loop !219

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE28RollbackLocalsInitializationEPNS6_7ControlE.exit: ; preds = %bb.r, %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE14DecodeElseImplEPNS8_9TraceLineENS1_10WasmOpcodeE.exit, %bb.q
  %i.cs = getelementptr inbounds i8, ptr %.val3, i64 -432 ; 3 uses
  %i.ct = getelementptr i8, ptr %.val3, i64 -448
  %.val6.a = load i32, ptr %i.ct, align 8
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 1448 ; 2 uses
  %i.cv = load ptr, ptr %i.cu, align 8
  %i.cw = zext i32 %.val6.a to i64
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %i.cw ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 1456 ; 6 uses
  store ptr %i.cx, ptr %i.cy, align 8
  %i.cz = load i32, ptr %i.cs, align 8            ; 4 uses
  %i.da = icmp eq i32 %i.cz, 1
  br i1 %i.da, label %bb.s, label %bb.t

bb.s:                                             ; preds = %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE28RollbackLocalsInitializationEPNS6_7ControlE.exit
  %i.db = getelementptr inbounds i8, ptr %.val3, i64 -424
  %.sroa.03.0.copyload.i = load i32, ptr %i.db, align 8
  store i32 %.sroa.03.0.copyload.i, ptr %i.cx, align 4
  %i.dc = load ptr, ptr %i.cy, align 8
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 4
  store ptr %i.dd, ptr %i.cy, align 8
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE15PushMergeValuesEPNS6_7ControlEPNS1_5MergeINS1_9ValueBaseIS4_EEEE.exit

bb.t:                                             ; preds = %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE28RollbackLocalsInitializationEPNS6_7ControlE.exit
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 1464
  %i.df = load ptr, ptr %i.de, align 8
  %i.dg = ptrtoint ptr %i.df to i64
  %i.dh = ptrtoint ptr %i.cx to i64
  %i.di = sub i64 %i.dg, %i.dh
  %i.dj = ashr exact i64 %i.di, 2
  %i.dk = sext i32 %i.cz to i64
  %.not.i.i = icmp slt i64 %i.dj, %i.dk
  br i1 %.not.i.i, label %bb.u, label %_ZN2v88internal4wasm14FastZoneVectorINS1_9ValueBaseINS1_7Decoder15NoValidationTagEEEE18EnsureMoreCapacityEiPNS0_4ZoneE.exit.i, !prof !7

bb.u:                                             ; preds = %bb.t
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.dm = load ptr, ptr %i.dl, align 8
  call preserve_mostcc void @_ZN2v88internal4wasm14FastZoneVectorINS1_9ValueBaseINS1_7Decoder15NoValidationTagEEEE4GrowEiPNS0_4ZoneE(ptr noundef nonnull align 8 dereferenceable(24) %i.cu, i32 noundef %i.cz, ptr noundef %i.dm)
  %.pre.i = load i32, ptr %i.cs, align 8
  br label %_ZN2v88internal4wasm14FastZoneVectorINS1_9ValueBaseINS1_7Decoder15NoValidationTagEEEE18EnsureMoreCapacityEiPNS0_4ZoneE.exit.i

_ZN2v88internal4wasm14FastZoneVectorINS1_9ValueBaseINS1_7Decoder15NoValidationTagEEEE18EnsureMoreCapacityEiPNS0_4ZoneE.exit.i: ; preds = %bb.u, %bb.t
  %i.dn = phi i32 [ %i.cz, %bb.t ], [ %.pre.i, %bb.u ]
  %.not.i = icmp eq i32 %i.dn, 0
  br i1 %.not.i, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE15PushMergeValuesEPNS6_7ControlEPNS1_5MergeINS1_9ValueBaseIS4_EEEE.exit, label %.lr.ph.i7

.lr.ph.i7:                                        ; preds = %_ZN2v88internal4wasm14FastZoneVectorINS1_9ValueBaseINS1_7Decoder15NoValidationTagEEEE18EnsureMoreCapacityEiPNS0_4ZoneE.exit.i
  %i.do = getelementptr inbounds i8, ptr %.val3, i64 -424
  %.pre3.i = load ptr, ptr %i.cy, align 8
  br label %bb.v

bb.v:                                             ; preds = %bb.v, %.lr.ph.i7
  %i.dp = phi ptr [ %.pre3.i, %.lr.ph.i7 ], [ %i.dt, %bb.v ]
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i7 ], [ %indvars.iv.next.i, %bb.v ] ; 2 uses
  %i.dq = load ptr, ptr %i.do, align 8
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.dq, i64 %indvars.iv.i
  %.sroa.0.0.copyload.i = load i32, ptr %i.dr, align 4
  store i32 %.sroa.0.0.copyload.i, ptr %i.dp, align 4
  %i.ds = load ptr, ptr %i.cy, align 8
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 4 ; 2 uses
  store ptr %i.dt, ptr %i.cy, align 8
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.du = load i32, ptr %i.cs, align 8
  %i.dv = zext i32 %i.du to i64
  %i.dw = icmp samesign ult i64 %indvars.iv.next.i, %i.dv
  br i1 %i.dw, label %bb.v, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE15PushMergeValuesEPNS6_7ControlEPNS1_5MergeINS1_9ValueBaseIS4_EEEE.exit, !llvm.loop !218

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE15PushMergeValuesEPNS6_7ControlEPNS1_5MergeINS1_9ValueBaseIS4_EEEE.exit: ; preds = %bb.v, %bb.s, %_ZN2v88internal4wasm14FastZoneVectorINS1_9ValueBaseINS1_7Decoder15NoValidationTagEEEE18EnsureMoreCapacityEiPNS0_4ZoneE.exit.i
  %.val4 = load ptr, ptr %i.b, align 8
  %i.dx = getelementptr inbounds i8, ptr %.val4, i64 -943
  %i.dy = load i8, ptr %i.dx, align 1
  %i.dz = icmp ne i8 %i.dy, 0                     ; 2 uses
  %i.ea = zext i1 %i.dz to i8
  store i8 %i.ea, ptr %i.bm, align 1
  %i.eb = xor i1 %i.dz, true
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 1528
  %i.ed = zext i1 %i.eb to i8
  store i8 %i.ed, ptr %i.ec, align 8
  ret i32 1
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef i32 @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE9DecodeTryEPS8_NS1_10WasmOpcodeE(ptr noundef %0, i32 %1) #0 align 2 {
bb.a:
  %2 = alloca %"struct.v8::internal::wasm::BlockTypeImmediate", align 8 ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = load i64, ptr %i.b, align 8
  %i.d = or i64 %i.c, 8192
  store i64 %i.d, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.sroa.0.0.copyload.i = load i32, ptr %i.e, align 8
  %i.f = load ptr, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1 ; 3 uses
  store i32 1, ptr %2, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 3 uses
  store i32 -1, ptr %i.j, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  %.ptr10.i = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, i8 0, i64 16, i1 false)
  store ptr %.ptr10.i, ptr %i.m, align 8
  store i32 2, ptr %.ptr10.i, align 8
  %i.n = load i8, ptr %i.i, align 1               ; 2 uses
  %.not.i.i.i = icmp sgt i8 %i.n, -1
  br i1 %.not.i.i.i, label %bb.b, label %bb.c, !prof !16

bb.b:                                             ; preds = %bb.a
  %i.o = zext nneg i8 %i.n to i64
  %i.p = shl nuw i64 %i.o, 57
  %i.q = ashr exact i64 %i.p, 57
  br label %_ZN2v88internal4wasm7Decoder9read_i33vINS2_15NoValidationTagEEESt4pairIljEPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit.i

bb.c:                                             ; preds = %bb.a
  %i.r = call preserve_mostcc { i64, i32 } @_ZN2v88internal4wasm7Decoder17read_leb_slowpathIlNS2_15NoValidationTagELNS2_9TraceFlagE0ELm33EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeE(ptr noundef nonnull align 8 dereferenceable(1536) %0, ptr noundef nonnull %i.i) ; 2 uses
  %.fca.1.extract.i.i.i = extractvalue { i64, i32 } %i.r, 1 ; 3 uses
  %i.s = icmp ult i32 %.fca.1.extract.i.i.i, 6
  call void @llvm.assume(i1 %i.s)
  %i.t = icmp ne i32 %.fca.1.extract.i.i.i, 0
  call void @llvm.assume(i1 %i.t)
  %i.u = extractvalue { i64, i32 } %i.r, 0
  br label %_ZN2v88internal4wasm7Decoder9read_i33vINS2_15NoValidationTagEEESt4pairIljEPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit.i

_ZN2v88internal4wasm7Decoder9read_i33vINS2_15NoValidationTagEEESt4pairIljEPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit.i: ; preds = %bb.c, %bb.b
  %.fca.1.extract.pre-phi.i = phi i32 [ 1, %bb.b ], [ %.fca.1.extract.i.i.i, %bb.c ]
  %.fca.1.insert.i.merged.i.i = phi i64 [ %i.q, %bb.b ], [ %i.u, %bb.c ] ; 3 uses
  store i32 %.fca.1.extract.pre-phi.i, ptr %2, align 8
  %i.v = icmp slt i64 %.fca.1.insert.i.merged.i.i, 0
  br i1 %i.v, label %bb.d, label %.critedge

bb.d:                                             ; preds = %_ZN2v88internal4wasm7Decoder9read_i33vINS2_15NoValidationTagEEESt4pairIljEPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit.i
  %i.w = and i64 %.fca.1.insert.i.merged.i.i, 127
  %.not.i = icmp eq i64 %i.w, 64
  br i1 %.not.i, label %_ZN2v88internal4wasm18BlockTypeImmediateC2INS1_7Decoder15NoValidationTagEEENS1_19WasmEnabledFeaturesEPNS1_20WasmDetectedFeaturesEPS4_PKhT_.exitthread-pre-split, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i64 1, ptr %i.k, align 8
  store i64 0, ptr %i.l, align 8
  store ptr %.ptr10.i, ptr %i.m, align 8
  %i.x = call i64 @_ZN2v88internal4wasm17value_type_reader15read_value_typeINS1_7Decoder15NoValidationTagEEESt4pairINS1_9ValueTypeEjEPS4_PKhNS1_19WasmEnabledFeaturesEPNS1_20WasmDetectedFeaturesE(ptr noundef nonnull align 8 dereferenceable(1536) %0, ptr noundef nonnull %i.i, i32 %.sroa.0.0.copyload.i, ptr noundef %i.f) ; 2 uses
  %.sroa.013.0.extract.trunc.i = trunc i64 %i.x to i32
  %.sroa.414.0.extract.shift.i = lshr i64 %i.x, 32
  %.sroa.414.0.extract.trunc.i = trunc nuw i64 %.sroa.414.0.extract.shift.i to i32
  store i32 %.sroa.013.0.extract.trunc.i, ptr %.ptr10.i, align 8
  store i32 %.sroa.414.0.extract.trunc.i, ptr %2, align 8
  br label %_ZN2v88internal4wasm18BlockTypeImmediateC2INS1_7Decoder15NoValidationTagEEENS1_19WasmEnabledFeaturesEPNS1_20WasmDetectedFeaturesEPS4_PKhT_.exitthread-pre-split

.critedge:                                        ; preds = %_ZN2v88internal4wasm7Decoder9read_i33vINS2_15NoValidationTagEEESt4pairIljEPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit.i
  %i.y = trunc i64 %.fca.1.insert.i.merged.i.i to i32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, i8 0, i64 24, i1 false)
  store i32 %i.y, ptr %i.j, align 4
  br label %bb.f

_ZN2v88internal4wasm18BlockTypeImmediateC2INS1_7Decoder15NoValidationTagEEENS1_19WasmEnabledFeaturesEPNS1_20WasmDetectedFeaturesEPS4_PKhT_.exitthread-pre-split: ; preds = %bb.e, %bb.d
  %.pr = load ptr, ptr %i.m, align 8
  %i.z = icmp eq ptr %.pr, null
  br i1 %i.z, label %_ZN2v88internal4wasm18BlockTypeImmediateC2INS1_7Decoder15NoValidationTagEEENS1_19WasmEnabledFeaturesEPNS1_20WasmDetectedFeaturesEPS4_PKhT_.exitthread-pre-split._crit_edge, label %bb.h

_ZN2v88internal4wasm18BlockTypeImmediateC2INS1_7Decoder15NoValidationTagEEENS1_19WasmEnabledFeaturesEPNS1_20WasmDetectedFeaturesEPS4_PKhT_.exitthread-pre-split._crit_edge: ; preds = %_ZN2v88internal4wasm18BlockTypeImmediateC2INS1_7Decoder15NoValidationTagEEENS1_19WasmEnabledFeaturesEPNS1_20WasmDetectedFeaturesEPS4_PKhT_.exitthread-pre-split
  %.sroa.01.0.copyload.i.pre = load i32, ptr %i.j, align 4
  br label %bb.f

bb.f:                                             ; preds = %_ZN2v88internal4wasm18BlockTypeImmediateC2INS1_7Decoder15NoValidationTagEEENS1_19WasmEnabledFeaturesEPNS1_20WasmDetectedFeaturesEPS4_PKhT_.exitthread-pre-split._crit_edge, %.critedge
  %.sroa.01.0.copyload.i = phi i32 [ %.sroa.01.0.copyload.i.pre, %_ZN2v88internal4wasm18BlockTypeImmediateC2INS1_7Decoder15NoValidationTagEEENS1_19WasmEnabledFeaturesEPNS1_20WasmDetectedFeaturesEPS4_PKhT_.exitthread-pre-split._crit_edge ], [ %i.y, %.critedge ]
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ab = load ptr, ptr %i.aa, align 8            ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 152
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 160
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = load ptr, ptr %i.ac, align 8            ; 2 uses
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = sub i64 %i.ag, %i.ah
  %i.aj = sdiv exact i64 %i.ai, 24
  %i.ak = zext i32 %.sroa.01.0.copyload.i to i64  ; 2 uses
  %i.al = icmp ugt i64 %i.aj, %i.ak
  call void @llvm.assume(i1 %i.al)
  %i.am = getelementptr inbounds nuw [24 x i8], ptr %i.af, i64 %i.ak
  %i.an = load ptr, ptr %i.am, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.an, i64 24, i1 false)
  %i.ao = load i64, ptr %i.l, align 8
  %.not11.i = icmp eq i64 %i.ao, 0
  br i1 %.not11.i, label %_ZN2v88internal4wasm11WasmDecoderINS1_7Decoder15NoValidationTagELNS1_12DecodingModeE0EE8ValidateEPKhRNS1_18BlockTypeImmediateE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ap = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8
  %i.ar = or i64 %i.aq, 268435456
  store i64 %i.ar, ptr %i.ap, align 8
  br label %_ZN2v88internal4wasm11WasmDecoderINS1_7Decoder15NoValidationTagELNS1_12DecodingModeE0EE8ValidateEPKhRNS1_18BlockTypeImmediateE.exit

bb.h:                                             ; preds = %_ZN2v88internal4wasm18BlockTypeImmediateC2INS1_7Decoder15NoValidationTagEEENS1_19WasmEnabledFeaturesEPNS1_20WasmDetectedFeaturesEPS4_PKhT_.exitthread-pre-split
  %i.as = load i64, ptr %i.k, align 8
  %.not.i3 = icmp eq i64 %i.as, 0
  br i1 %.not.i3, label %_ZN2v88internal4wasm11WasmDecoderINS1_7Decoder15NoValidationTagELNS1_12DecodingModeE0EE8ValidateEPKhRNS1_18BlockTypeImmediateE.exit, label %_ZNK2v88internal9SignatureINS0_4wasm9ValueTypeEE9GetReturnEm.exit.i

_ZNK2v88internal9SignatureINS0_4wasm9ValueTypeEE9GetReturnEm.exit.i: ; preds = %bb.h
  %i.at = load i32, ptr %.ptr10.i, align 8        ; 3 uses
  %i.au = and i32 %i.at, 3
  %i.av = icmp eq i32 %i.au, 3
  br i1 %i.av, label %bb.i, label %_ZN2v88internal4wasm11WasmDecoderINS1_7Decoder15NoValidationTagELNS1_12DecodingModeE0EE8ValidateEPKhRNS1_18BlockTypeImmediateE.exit

bb.i:                                             ; preds = %_ZNK2v88internal9SignatureINS0_4wasm9ValueTypeEE9GetReturnEm.exit.i
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ax = load ptr, ptr %i.aw, align 8            ; 2 uses
  %i.ay = lshr i32 %i.at, 8
  %i.az = and i32 %i.ay, 1048575
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 152
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 160
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = load ptr, ptr %i.ba, align 8            ; 2 uses
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = sub i64 %i.be, %i.bf
  %i.bh = sdiv exact i64 %i.bg, 24
  %i.bi = zext nneg i32 %i.az to i64              ; 2 uses
  %i.bj = icmp ugt i64 %i.bh, %i.bi
  call void @llvm.assume(i1 %i.bj)
  %i.bk = getelementptr inbounds nuw [24 x i8], ptr %i.bd, i64 %i.bi ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 22
  %i.bm = load i8, ptr %i.bl, align 2, !range !5, !noundef !6
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 20
  %i.bo = load i8, ptr %i.bn, align 4
  %i.bp = and i32 %i.at, -241
  %i.bq = shl nuw nsw i8 %i.bm, 4
  %i.br = zext nneg i8 %i.bq to i32
  %i.bs = zext i8 %i.bo to i32
  %i.bt = shl nuw nsw i32 %i.bs, 5
  %i.bu = or disjoint i32 %i.bp, %i.br
  %i.bv = or i32 %i.bu, %i.bt
  store i32 %i.bv, ptr %.ptr10.i, align 8
  br label %_ZN2v88internal4wasm11WasmDecoderINS1_7Decoder15NoValidationTagELNS1_12DecodingModeE0EE8ValidateEPKhRNS1_18BlockTypeImmediateE.exit

_ZN2v88internal4wasm11WasmDecoderINS1_7Decoder15NoValidationTagELNS1_12DecodingModeE0EE8ValidateEPKhRNS1_18BlockTypeImmediateE.exit: ; preds = %bb.i, %_ZNK2v88internal9SignatureINS0_4wasm9ValueTypeEE9GetReturnEm.exit.i, %bb.h, %bb.g, %bb.f
  %i.bw = call fastcc noundef ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE11PushControlENS1_11ControlKindERKNS1_18BlockTypeImmediateE(ptr noundef nonnull align 8 dereferenceable(1536) %0, i8 noundef zeroext 4, ptr noundef nonnull align 8 dereferenceable(36) %2) ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 1532 ; 2 uses
  %i.by = load i32, ptr %i.bx, align 4
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 32
  store i32 %i.by, ptr %i.bz, align 8
  %i.ca = getelementptr i8, ptr %0, i64 1504
  %.val = load ptr, ptr %i.ca, align 8
  %i.cb = getelementptr i8, ptr %0, i64 1512
  %.val2 = load ptr, ptr %i.cb, align 8
  %i.cc = ptrtoint ptr %.val2 to i64
  %i.cd = ptrtoint ptr %.val to i64
  %i.ce = sub i64 %i.cc, %i.cd
  %i.cf = sdiv exact i64 %i.ce, 472
  %i.cg = trunc i64 %i.cf to i32
  %i.ch = add i32 %i.cg, -1
  store i32 %i.ch, ptr %i.bx, align 4
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 1528
  %i.cj = load i8, ptr %i.ci, align 8, !range !5, !noundef !6
  %i.ck = trunc nuw i8 %i.cj to i1
  br i1 %i.ck, label %bb.j, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE13DecodeTryImplEPNS8_9TraceLineENS1_10WasmOpcodeE.exit, !prof !16

bb.j:                                             ; preds = %_ZN2v88internal4wasm11WasmDecoderINS1_7Decoder15NoValidationTagELNS1_12DecodingModeE0EE8ValidateEPKhRNS1_18BlockTypeImmediateE.exit
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 1176 ; 2 uses
  %i.cm = load ptr, ptr %i.cl, align 8            ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 24
  %i.co = load i64, ptr %i.cn, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cm, i64 16 ; 3 uses
  %i.cq = load i64, ptr %i.cp, align 8            ; 2 uses
  %i.cr = sub i64 %i.co, %i.cq
  %i.cs = icmp ult i64 %i.cr, 360
  br i1 %i.cs, label %bb.k, label %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler3TryEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEEPNS3_7ControlE.exit, !prof !7

bb.k:                                             ; preds = %bb.j
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.cm, i64 noundef 360) #24
  %.pre.i.i.i = load i64, ptr %i.cp, align 8
  br label %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler3TryEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEEPNS3_7ControlE.exit

_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler3TryEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEEPNS3_7ControlE.exit: ; preds = %bb.j, %bb.k
  %i.ct = phi i64 [ %.pre.i.i.i, %bb.k ], [ %i.cq, %bb.j ] ; 2 uses
  %i.cu = inttoptr i64 %i.ct to ptr               ; 11 uses
  %i.cv = add i64 %i.ct, 360
  store i64 %i.cv, ptr %i.cp, align 8
  %i.cw = load ptr, ptr %i.cl, align 8
  %i.cx = ptrtoint ptr %i.cw to i64
  store i64 %i.cx, ptr %i.cu, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cu, i64 32 ; 2 uses
  store ptr %i.cz, ptr %i.cy, align 8
  %i.da = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  store ptr %i.cz, ptr %i.da, align 8
  %i.db = getelementptr inbounds nuw i8, ptr %i.cu, i64 24
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cu, i64 224 ; 2 uses
  store ptr %i.dc, ptr %i.db, align 8
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cu, i64 328
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.dc, i8 0, i64 104, i1 false)
  store i8 -1, ptr %i.dd, align 8
  %i.de = getelementptr inbounds nuw i8, ptr %i.cu, i64 332
  store i32 -1, ptr %i.de, align 4
  %i.df = getelementptr inbounds nuw i8, ptr %i.cu, i64 336
  store i8 -1, ptr %i.df, align 8
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cu, i64 344
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.dg, i8 0, i64 10, i1 false)
  %i.dh = getelementptr inbounds nuw i8, ptr %i.bw, i64 456
  store ptr %i.cu, ptr %i.dh, align 8
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 1372
  %.val.i = load i32, ptr %i.di, align 4
  %i.dj = getelementptr inbounds nuw i8, ptr %i.bw, i64 464
  store i32 %.val.i, ptr %i.dj, align 8
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE13DecodeTryImplEPNS8_9TraceLineENS1_10WasmOpcodeE.exit

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE13DecodeTryImplEPNS8_9TraceLineENS1_10WasmOpcodeE.exit: ; preds = %_ZN2v88internal4wasm11WasmDecoderINS1_7Decoder15NoValidationTagELNS1_12DecodingModeE0EE8ValidateEPKhRNS1_18BlockTypeImmediateE.exit, %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler3TryEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEEPNS3_7ControlE.exit
  %i.dk = load i32, ptr %2, align 8
  %i.dl = add i32 %i.dk, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  ret i32 %i.dl
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef range(i32 2, 7) i32 @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE11DecodeCatchEPS8_NS1_10WasmOpcodeE(ptr noundef %0, i32 %1) #0 align 2 {
bb.a:
  %2 = alloca %"class.v8::internal::Operand", align 8 ; 8 uses
  %3 = alloca %"class.v8::internal::Operand", align 8 ; 7 uses
  %4 = alloca %"class.v8::internal::Operand", align 8 ; 8 uses
  %5 = alloca %"class.v8::internal::Operand", align 8 ; 8 uses
  %6 = alloca %"struct.v8::internal::wasm::LiftoffAssembler::CacheState", align 8 ; 15 uses
  %7 = alloca %"struct.v8::internal::wasm::LiftoffAssembler::CacheState", align 8 ; 15 uses
  %8 = alloca %"class.v8::internal::Label", align 4 ; 6 uses
  %9 = alloca %"class.v8::internal::Label", align 4 ; 7 uses
  %10 = alloca %"class.v8::internal::Label", align 4 ; 7 uses
  %11 = alloca %"class.v8::internal::Label", align 4 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = load i64, ptr %i.b, align 8
  %i.d = or i64 %i.c, 8192
  store i64 %i.d, ptr %i.b, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 1 ; 2 uses
  %i.h = load i8, ptr %i.g, align 1               ; 2 uses
  %.not.i.i.i.i = icmp sgt i8 %i.h, -1
  br i1 %.not.i.i.i.i, label %bb.b, label %bb.c, !prof !16

bb.b:                                             ; preds = %bb.a
  %i.i = zext nneg i8 %i.h to i64
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.j = tail call preserve_mostcc i64 @_ZN2v88internal4wasm7Decoder17read_leb_slowpathIjNS2_15NoValidationTagELNS2_9TraceFlagE0ELm32EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeE(ptr noundef nonnull align 8 dereferenceable(1536) %0, ptr noundef nonnull %i.g) ; 4 uses
  %i.k = icmp ult i64 %i.j, 25769803776
  tail call void @llvm.assume(i1 %i.k)
  %i.l = icmp samesign ugt i64 %i.j, 4294967295
  tail call void @llvm.assume(i1 %i.l)
  %i.m = lshr i64 %i.j, 32
  %i.n = trunc nuw nsw i64 %i.m to i32
  %i.o = add nuw nsw i32 %i.n, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.04.0.i.i.i = phi i64 [ %i.i, %bb.b ], [ %i.j, %bb.c ] ; 2 uses
  %.sroa.5.0.i.i.i = phi i32 [ 2, %bb.b ], [ %i.o, %bb.c ]
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 368
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 376
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = load ptr, ptr %i.r, align 8              ; 2 uses
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = ashr exact i64 %i.x, 4
  %i.z = and i64 %.sroa.04.0.i.i.i, 4294967295    ; 2 uses
  %i.aa = icmp ugt i64 %i.y, %i.z
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.u, i64 %i.z ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 1504
  %i.ad = getelementptr i8, ptr %0, i64 1512      ; 4 uses
  %.val3 = load ptr, ptr %i.ad, align 8           ; 8 uses
  %i.ae = getelementptr inbounds i8, ptr %.val3, i64 -472
  tail call fastcc void @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE11FallThroughEv(ptr noundef nonnull align 8 dereferenceable(1536) %0)
  store i8 6, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 1448 ; 2 uses
  %i.ag = getelementptr inbounds i8, ptr %.val3, i64 -448
  %i.ah = load i32, ptr %i.ag, align 8
  %i.ai = load ptr, ptr %i.af, align 8
  %i.aj = zext i32 %i.ah to i64
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 1456 ; 13 uses
  store ptr %i.ak, ptr %i.al, align 8
  %.val5 = load ptr, ptr %i.ad, align 8
  %i.am = getelementptr inbounds i8, ptr %.val5, i64 -943
  %i.an = load i8, ptr %i.am, align 1
  %i.ao = icmp ne i8 %i.an, 0                     ; 2 uses
  %i.ap = zext i1 %i.ao to i8
  %i.aq = getelementptr inbounds i8, ptr %.val3, i64 -471
  store i8 %i.ap, ptr %i.aq, align 1
  %i.ar = xor i1 %i.ao, true
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 1528 ; 2 uses
  %i.at = zext i1 %i.ar to i8
  store i8 %i.at, ptr %i.as, align 8
  %12 = getelementptr i8, ptr %.val3, i64 -444
  %.val6 = load i32, ptr %12, align 4             ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 1529
  %i.av = load i8, ptr %i.au, align 1, !range !5, !noundef !6
  %i.aw = trunc nuw i8 %i.av to i1
  br i1 %i.aw, label %bb.e, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE28RollbackLocalsInitializationEPNS6_7ControlE.exit

bb.e:                                             ; preds = %bb.d
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 1480 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 1488 ; 3 uses
  %i.az = load ptr, ptr %i.ay, align 8            ; 2 uses
  %i.ba = load ptr, ptr %i.ax, align 8
  %i.bb = ptrtoint ptr %i.az to i64
  %i.bc = ptrtoint ptr %i.ba to i64
  %i.bd = sub i64 %i.bb, %i.bc
  %i.be = lshr exact i64 %i.bd, 2
  %i.bf = trunc i64 %i.be to i32
  %i.bg = icmp ult i32 %.val6, %i.bf
  br i1 %i.bg, label %.lr.ph.i, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE28RollbackLocalsInitializationEPNS6_7ControlE.exit

.lr.ph.i:                                         ; preds = %bb.e
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 1472
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph.i
  %i.bi = phi ptr [ %i.az, %.lr.ph.i ], [ %i.bo, %bb.f ]
  %i.bj = getelementptr inbounds i8, ptr %i.bi, i64 -4 ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 4
  store ptr %i.bj, ptr %i.ay, align 8
  %i.bl = load ptr, ptr %i.bh, align 8
  %i.bm = zext i32 %i.bk to i64
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bm
  store i8 0, ptr %i.bn, align 1
  %i.bo = load ptr, ptr %i.ay, align 8            ; 2 uses
  %i.bp = load ptr, ptr %i.ax, align 8
  %i.bq = ptrtoint ptr %i.bo to i64
  %i.br = ptrtoint ptr %i.bp to i64
  %i.bs = sub i64 %i.bq, %i.br
  %i.bt = lshr exact i64 %i.bs, 2
  %i.bu = trunc i64 %i.bt to i32
  %i.bv = icmp ult i32 %.val6, %i.bu
  br i1 %i.bv, label %bb.f, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE28RollbackLocalsInitializationEPNS6_7ControlE.exit, !llvm.loop !219

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE28RollbackLocalsInitializationEPNS6_7ControlE.exit: ; preds = %bb.f, %bb.d, %bb.e
  %i.bw = load ptr, ptr %i.ab, align 8            ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8 ; 2 uses
  %i.by = load i64, ptr %i.bx, align 8            ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 1464
  %i.ca = load ptr, ptr %i.bz, align 8
  %i.cb = load ptr, ptr %i.al, align 8
  %i.cc = ptrtoint ptr %i.ca to i64
  %i.cd = ptrtoint ptr %i.cb to i64
  %i.ce = sub i64 %i.cc, %i.cd
  %i.cf = ashr exact i64 %i.ce, 2
  %sext = shl i64 %i.by, 32
  %i.cg = ashr exact i64 %sext, 32
  %.not.i.i = icmp slt i64 %i.cf, %i.cg
  br i1 %.not.i.i, label %bb.g, label %_ZN2v88internal4wasm14FastZoneVectorINS1_9ValueBaseINS1_7Decoder15NoValidationTagEEEE18EnsureMoreCapacityEiPNS0_4ZoneE.exit.i, !prof !7

bb.g:                                             ; preds = %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE28RollbackLocalsInitializationEPNS6_7ControlE.exit
  %i.ch = trunc i64 %i.by to i32
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.cj = load ptr, ptr %i.ci, align 8
  tail call preserve_mostcc void @_ZN2v88internal4wasm14FastZoneVectorINS1_9ValueBaseINS1_7Decoder15NoValidationTagEEEE4GrowEiPNS0_4ZoneE(ptr noundef nonnull align 8 dereferenceable(24) %i.af, i32 noundef %i.ch, ptr noundef %i.cj)
  %.pre = load i64, ptr %i.bw, align 8
  %.pre20 = load i64, ptr %i.bx, align 8
  br label %_ZN2v88internal4wasm14FastZoneVectorINS1_9ValueBaseINS1_7Decoder15NoValidationTagEEEE18EnsureMoreCapacityEiPNS0_4ZoneE.exit.i

_ZN2v88internal4wasm14FastZoneVectorINS1_9ValueBaseINS1_7Decoder15NoValidationTagEEEE18EnsureMoreCapacityEiPNS0_4ZoneE.exit.i: ; preds = %bb.g, %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE28RollbackLocalsInitializationEPNS6_7ControlE.exit
  %i.ck = phi i64 [ %.pre20, %bb.g ], [ %i.by, %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE28RollbackLocalsInitializationEPNS6_7ControlE.exit ] ; 2 uses
  %i.cl = phi i64 [ %.pre, %bb.g ], [ 0, %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE28RollbackLocalsInitializationEPNS6_7ControlE.exit ]
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.cn = load ptr, ptr %i.cm, align 8
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %i.cl ; 3 uses
  %.idx = shl i64 %i.ck, 2                        ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 %.idx
  %.not23.i18 = icmp eq i64 %i.ck, 0
  br i1 %.not23.i18, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN2v88internal4wasm14FastZoneVectorINS1_9ValueBaseINS1_7Decoder15NoValidationTagEEEE18EnsureMoreCapacityEiPNS0_4ZoneE.exit.i
  %.pre21 = load ptr, ptr %i.al, align 8          ; 2 uses
  %i.cq = add i64 %.idx, -4                       ; 2 uses
  %i.cr = lshr exact i64 %i.cq, 2
  %i.cs = add nuw nsw i64 %i.cr, 1
  %xtraiter = and i64 %i.cs, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %i.ct = phi ptr [ %i.cv, %.lr.ph.prol ], [ %.pre21, %.lr.ph.preheader ]
  %.022.i19.prol = phi ptr [ %i.cw, %.lr.ph.prol ], [ %i.co, %.lr.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %.sroa.02.0.copyload.i.prol = load i32, ptr %.022.i19.prol, align 4
  store i32 %.sroa.02.0.copyload.i.prol, ptr %i.ct, align 4
  %i.cu = load ptr, ptr %i.al, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 4 ; 3 uses
  store ptr %i.cv, ptr %i.al, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %.022.i19.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !220

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.unr = phi ptr [ %.pre21, %.lr.ph.preheader ], [ %i.cv, %.lr.ph.prol ]
  %.022.i19.unr = phi ptr [ %i.co, %.lr.ph.preheader ], [ %i.cw, %.lr.ph.prol ]
  %i.cx = icmp ult i64 %i.cq, 12
  br i1 %i.cx, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %_ZN2v88internal4wasm14FastZoneVectorINS1_9ValueBaseINS1_7Decoder15NoValidationTagEEEE18EnsureMoreCapacityEiPNS0_4ZoneE.exit.i
  %i.cy = getelementptr inbounds i8, ptr %.val3, i64 -440
  %i.cz = load i32, ptr %i.cy, align 8
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 1532
  store i32 %i.cz, ptr %i.da, align 4
  %i.db = getelementptr inbounds i8, ptr %.val3, i64 -384
  %i.dc = load i8, ptr %i.db, align 8, !range !5, !noundef !6
  %i.dd = trunc nuw i8 %i.dc to i1
  br i1 %i.dd, label %bb.h, label %bb.af

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %i.de = phi ptr [ %i.dp, %.lr.ph ], [ %.unr, %.lr.ph.prol.loopexit ]
  %.022.i19 = phi ptr [ %i.dq, %.lr.ph ], [ %.022.i19.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %.sroa.02.0.copyload.i = load i32, ptr %.022.i19, align 4
  store i32 %.sroa.02.0.copyload.i, ptr %i.de, align 4
  %i.df = load ptr, ptr %i.al, align 8
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 4 ; 2 uses
  store ptr %i.dg, ptr %i.al, align 8
  %i.dh = getelementptr inbounds nuw i8, ptr %.022.i19, i64 4
  %.sroa.02.0.copyload.i.1 = load i32, ptr %i.dh, align 4
  store i32 %.sroa.02.0.copyload.i.1, ptr %i.dg, align 4
  %i.di = load ptr, ptr %i.al, align 8
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 4 ; 2 uses
  store ptr %i.dj, ptr %i.al, align 8
  %i.dk = getelementptr inbounds nuw i8, ptr %.022.i19, i64 8
  %.sroa.02.0.copyload.i.2 = load i32, ptr %i.dk, align 4
  store i32 %.sroa.02.0.copyload.i.2, ptr %i.dj, align 4
  %i.dl = load ptr, ptr %i.al, align 8
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 4 ; 2 uses
  store ptr %i.dm, ptr %i.al, align 8
  %i.dn = getelementptr inbounds nuw i8, ptr %.022.i19, i64 12
  %.sroa.02.0.copyload.i.3 = load i32, ptr %i.dn, align 4
  store i32 %.sroa.02.0.copyload.i.3, ptr %i.dm, align 4
  %i.do = load ptr, ptr %i.al, align 8
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 4 ; 2 uses
  store ptr %i.dp, ptr %i.al, align 8
  %i.dq = getelementptr inbounds nuw i8, ptr %.022.i19, i64 16 ; 2 uses
  %.not23.i.3 = icmp eq ptr %i.dq, %i.cp
  br i1 %.not23.i.3, label %._crit_edge, label %.lr.ph

bb.h:                                             ; preds = %._crit_edge
  %.val = load ptr, ptr %i.ac, align 8
  %.val2 = load ptr, ptr %i.ad, align 8           ; 2 uses
  %i.dr = ptrtoint ptr %.val2 to i64
  %i.ds = ptrtoint ptr %.val to i64
  %i.dt = sub i64 %i.dr, %i.ds
  %i.du = sdiv exact i64 %i.dt, 472
  %i.dv = and i64 %i.du, 4294967295
  %i.dw = icmp eq i64 %i.dv, 1
  br i1 %i.dw, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.dx = getelementptr inbounds i8, ptr %.val2, i64 -943
  %i.dy = load i8, ptr %i.dx, align 1
  %i.dz = icmp eq i8 %i.dy, 0
  br i1 %i.dz, label %bb.j, label %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler14CatchExceptionEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEERKNS1_17TagIndexImmediateEPNS3_7ControlENS_4base6VectorINS1_9ValueBaseIS6_EEEE.exit

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 37 uses
  %i.eb = getelementptr inbounds i8, ptr %.val3, i64 -24
  tail call void @_ZN2v88internal9Assembler3jmpEPNS0_5LabelENS2_8DistanceE(ptr noundef nonnull align 8 dereferenceable(1284) %i.ea, ptr noundef nonnull %i.eb, i32 noundef 1) #24
  %i.ec = getelementptr inbounds i8, ptr %.val3, i64 -16 ; 9 uses
  %i.ed = load ptr, ptr %i.ec, align 8
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 344
  tail call void @_ZN2v88internal9Assembler4bindEPNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(1284) %i.ea, ptr noundef nonnull %i.ee) #24
  %i.ef = load ptr, ptr %i.ec, align 8
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 344
  store i32 0, ptr %i.eg, align 4
  %i.eh = load ptr, ptr %i.ec, align 8
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 348
  store i32 0, ptr %i.ei, align 4
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 616 ; 7 uses
  %i.ek = load ptr, ptr %i.ec, align 8
  tail call void @_ZN2v88internal4wasm16LiftoffAssembler10CacheState5SplitERKS3_(ptr noundef nonnull align 8 dereferenceable(337) %i.ej, ptr noundef nonnull align 8 dereferenceable(337) %i.ek) #24
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 632 ; 7 uses
  %i.em = load ptr, ptr %i.el, align 8
  %i.en = getelementptr inbounds i8, ptr %i.em, i64 -12
  %i.eo = tail call fastcc i8 @_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler20GetExceptionPropertyERKNS1_15LiftoffVarStateENS0_9RootIndexE(ptr noundef nonnull align 8 dereferenceable(1284) %i.ea, ptr noundef nonnull align 4 dereferenceable(12) %i.en, i16 noundef zeroext 934) ; 6 uses
  %i.ep = zext nneg i8 %i.eo to i32
  %i.eq = shl nuw i32 1, %i.ep                    ; 2 uses
  %i.er = and i32 %i.eq, 37839
  %i.es = xor i32 %i.er, 37839                    ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 840 ; 7 uses
  %.sroa.0.0.copyload.i.i.i.i = load i32, ptr %i.et, align 8
  %i.eu = xor i32 %.sroa.0.0.copyload.i.i.i.i, -1
  %i.ev = and i32 %i.es, %i.eu                    ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.ev, 0
  br i1 %.not.i.i.i, label %bb.l, label %bb.k, !prof !7

bb.k:                                             ; preds = %bb.j
  %i.ew = tail call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.ev, i1 true)
  %i.ex = trunc nuw nsw i32 %i.ew to i8
  br label %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassENS1_14LiftoffRegListE.exit.i

bb.l:                                             ; preds = %bb.j
  %i.ey = tail call preserve_mostcc i8 @_ZN2v88internal4wasm16LiftoffAssembler16SpillOneRegisterENS1_14LiftoffRegListE(ptr noundef nonnull align 8 dereferenceable(1284) %i.ea, i32 %i.es) #24
  br label %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassENS1_14LiftoffRegListE.exit.i

_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassENS1_14LiftoffRegListE.exit.i: ; preds = %bb.l, %bb.k
  %.sroa.06.0.i.i.i = phi i8 [ %i.ex, %bb.k ], [ %i.ey, %bb.l ] ; 9 uses
  %i.ez = zext nneg i8 %.sroa.06.0.i.i.i to i32
  %i.fa = shl nuw nsw i32 1, %i.ez
  %i.fb = or i32 %i.fa, %i.eq                     ; 3 uses
  %i.fc = icmp samesign ult i8 %.sroa.06.0.i.i.i, 16
  tail call void @llvm.assume(i1 %i.fc)
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 944 ; 2 uses
  %i.fe = load i8, ptr %i.fd, align 8             ; 2 uses
  %i.ff = icmp eq i8 %i.fe, -1
  br i1 %i.ff, label %bb.m, label %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler24LoadInstanceIntoRegisterENS1_14LiftoffRegListENS0_8RegisterE.exit65.i, !prof !7

bb.m:                                             ; preds = %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassENS1_14LiftoffRegListE.exit.i
  %i.fg = tail call preserve_mostcc i8 @_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler29LoadInstanceIntoRegister_SlowENS1_14LiftoffRegListENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(1284) %i.ea, i32 %i.fb, i8 %.sroa.06.0.i.i.i)
  br label %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler24LoadInstanceIntoRegisterENS1_14LiftoffRegListENS0_8RegisterE.exit65.i

_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler24LoadInstanceIntoRegisterENS1_14LiftoffRegListENS0_8RegisterE.exit65.i: ; preds = %bb.m, %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassENS1_14LiftoffRegListE.exit.i
  %.sroa.029.0.i = phi i8 [ %i.fg, %bb.m ], [ %i.fe, %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassENS1_14LiftoffRegListE.exit.i ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.fh = getelementptr inbounds nuw i8, ptr %5, i64 1
  %i.fi = getelementptr inbounds nuw i8, ptr %5, i64 2 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  store i64 0, ptr %5, align 8
  store i64 1, ptr %i.fj, align 8
  switch i8 %.sroa.029.0.i, label %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler24LoadInstanceIntoRegisterENS1_14LiftoffRegListENS0_8RegisterE.exit65._ZN2v88internal4wasm16LiftoffAssembler29LoadTaggedPointerFromInstanceENS0_8RegisterES3_i.exit_crit_edge.i [
    i8 4, label %bb.n
    i8 12, label %bb.n
  ]

_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler24LoadInstanceIntoRegisterENS1_14LiftoffRegListENS0_8RegisterE.exit65._ZN2v88internal4wasm16LiftoffAssembler29LoadTaggedPointerFromInstanceENS0_8RegisterES3_i.exit_crit_edge.i: ; preds = %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler24LoadInstanceIntoRegisterENS1_14LiftoffRegListENS0_8RegisterE.exit65.i
  %.pre37.i = and i8 %.sroa.029.0.i, 7
  br label %_ZN2v88internal4wasm16LiftoffAssembler29LoadTaggedPointerFromInstanceENS0_8RegisterES3_i.exit.i

bb.n:                                             ; preds = %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler24LoadInstanceIntoRegisterENS1_14LiftoffRegListENS0_8RegisterE.exit65.i, %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler24LoadInstanceIntoRegisterENS1_14LiftoffRegListENS0_8RegisterE.exit65.i
  %scevgep.i.i = getelementptr inbounds nuw i8, ptr %5, i64 3
end_hunk_0
begin_hunk_1_@_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE14DecodeDelegateEPS8_NS1_10WasmOpcodeE:bb.a
  store i64 1, ptr %i.br, align 8, !alias.scope !259
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.bq, ptr %i.bs, align 8, !alias.scope !259
  store i8 9, ptr %i.bq, align 8, !alias.scope !259
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %3, ptr noundef nonnull readonly align 4 dereferenceable(12) %i.bo, i64 12, i1 false)
  %i.bt = ptrtoint ptr %.val18.i to i64
  %i.bu = ptrtoint ptr %.val17.i to i64
  %i.bv = sub i64 %i.bt, %i.bu
  %i.bw = trunc i64 %i.bv to i32
  call fastcc void @_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler11CallBuiltinENS0_7BuiltinERKNS0_9SignatureINS1_9ValueKindEEESt16initializer_listINS1_15LiftoffVarStateEEi(ptr noundef nonnull align 8 dereferenceable(1284) %i.as, i32 noundef 1339, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr nonnull %3, i64 1, i32 noundef %i.bw)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 1048
  %i.by = load i8, ptr %i.bx, align 8
  %.not.i.i = icmp eq i8 %i.by, 0
  br i1 %.not.i.i, label %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler8DelegateEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEEjPNS3_7ControlE.exit, label %bb.j, !prof !16

bb.j:                                             ; preds = %bb.i
  call void @_ZN2v88internal4wasm16LiftoffAssembler8MaybeOSREv(ptr noundef nonnull align 8 dereferenceable(1284) %i.as)
  br label %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler8DelegateEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEEjPNS3_7ControlE.exit

bb.k:                                             ; preds = %bb.h
  %i.bz = getelementptr inbounds nuw i8, ptr %i.aw, i64 456 ; 4 uses
  %i.ca = load ptr, ptr %i.bz, align 8            ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 352
  %i.cc = load i8, ptr %i.cb, align 8, !range !5, !noundef !6
  %i.cd = trunc nuw i8 %i.cc to i1
  br i1 %i.cd, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  tail call void @_ZN2v88internal4wasm16LiftoffAssembler14MergeStackWithERNS2_10CacheStateEjNS2_13JumpDirectionE(ptr noundef nonnull align 8 dereferenceable(1284) %i.as, ptr noundef nonnull align 8 dereferenceable(337) %i.ca, i32 noundef 1, i32 noundef 0) #24
  br label %bb.u

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 596
  %i.cf = load i32, ptr %i.ce, align 4
  %i.cg = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %i.ch = load i32, ptr %i.cg, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.aw, i64 464
  %i.cj = load i32, ptr %i.ci, align 8
  %i.ck = add i32 %i.cj, %i.ch
  call void @_ZN2v88internal4wasm16LiftoffAssembler17MergeIntoNewStateEjjj(ptr dead_on_unwind nonnull writable sret(%"struct.v8::internal::wasm::LiftoffAssembler::CacheState") align 8 %4, ptr noundef nonnull align 8 dereferenceable(1284) %i.as, i32 noundef %i.cf, i32 noundef 1, i32 noundef %i.ck) #24
  %i.cl = load ptr, ptr %i.bz, align 8            ; 7 uses
  %i.cm = icmp eq ptr %i.cl, %4
  br i1 %i.cm, label %_ZN2v88internal4wasm16LiftoffAssembler10CacheStateaSEOS3_.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cn = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.co = load ptr, ptr %i.cn, align 8            ; 4 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.co, %i.cp
  br i1 %.not.i.i.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal4wasm15LiftoffVarStateELm16ENS2_13ZoneAllocatorIS4_EEE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(337) %i.cl)
  %i.cq = load ptr, ptr %i.cn, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  store ptr %i.cq, ptr %i.cr, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ct = load ptr, ptr %i.cs, align 8
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  store ptr %i.ct, ptr %i.cu, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.cw = load ptr, ptr %i.cv, align 8
  br label %bb.t

bb.p:                                             ; preds = %bb.n
  %i.cx = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.cy = load ptr, ptr %i.cx, align 8
  %i.cz = ptrtoint ptr %i.cy to i64
  %i.da = ptrtoint ptr %i.co to i64
  %i.db = sub i64 %i.cz, %i.da                    ; 4 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cl, i64 8 ; 2 uses
  %i.dd = load ptr, ptr %i.dc, align 8            ; 2 uses
  %i.de = icmp sgt i64 %i.db, 12
  br i1 %i.de, label %bb.q, label %bb.r, !prof !16

bb.q:                                             ; preds = %bb.p
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.dd, ptr align 4 %i.co, i64 %i.db, i1 false)
  br label %_ZSt4moveIPN2v88internal4wasm15LiftoffVarStateES4_ET0_T_S6_S5_.exit.i.i.i.i

bb.r:                                             ; preds = %bb.p
  %i.df = icmp eq i64 %i.db, 12
  br i1 %i.df, label %bb.s, label %_ZSt4moveIPN2v88internal4wasm15LiftoffVarStateES4_ET0_T_S6_S5_.exit.i.i.i.i

bb.s:                                             ; preds = %bb.r
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.dd, ptr noundef nonnull align 4 dereferenceable(12) %i.co, i64 12, i1 false)
  br label %_ZSt4moveIPN2v88internal4wasm15LiftoffVarStateES4_ET0_T_S6_S5_.exit.i.i.i.i

_ZSt4moveIPN2v88internal4wasm15LiftoffVarStateES4_ET0_T_S6_S5_.exit.i.i.i.i: ; preds = %bb.s, %bb.r, %bb.q
  %i.dg = load ptr, ptr %i.dc, align 8
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 %i.db
  br label %bb.t

bb.t:                                             ; preds = %_ZSt4moveIPN2v88internal4wasm15LiftoffVarStateES4_ET0_T_S6_S5_.exit.i.i.i.i, %bb.o
  %.sink16.i.i.i.i = phi i64 [ 16, %_ZSt4moveIPN2v88internal4wasm15LiftoffVarStateES4_ET0_T_S6_S5_.exit.i.i.i.i ], [ 24, %bb.o ]
  %.sink.i.i.i.i = phi ptr [ %i.dh, %_ZSt4moveIPN2v88internal4wasm15LiftoffVarStateES4_ET0_T_S6_S5_.exit.i.i.i.i ], [ %i.cw, %bb.o ]
  %i.di = getelementptr inbounds nuw i8, ptr %i.cl, i64 %.sink16.i.i.i.i
  store ptr %.sink.i.i.i.i, ptr %i.di, align 8
  store ptr %i.cp, ptr %i.cn, align 8
  %i.dj = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.cp, ptr %i.dj, align 8
  %i.dk = getelementptr inbounds nuw i8, ptr %4, i64 224
  %i.dl = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %i.dk, ptr %i.dl, align 8
  br label %_ZN2v88internal4wasm16LiftoffAssembler10CacheStateaSEOS3_.exit.i

_ZN2v88internal4wasm16LiftoffAssembler10CacheStateaSEOS3_.exit.i: ; preds = %bb.t, %bb.m
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cl, i64 224
  %i.dn = getelementptr inbounds nuw i8, ptr %4, i64 224
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(113) %i.dm, ptr noundef nonnull align 8 dereferenceable(113) %i.dn, i64 113, i1 false)
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal4wasm15LiftoffVarStateELm16ENS2_13ZoneAllocatorIS4_EEE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(337) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  %i.do = load ptr, ptr %i.bz, align 8
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 352
  store i8 1, ptr %i.dp, align 8
  br label %bb.u

bb.u:                                             ; preds = %_ZN2v88internal4wasm16LiftoffAssembler10CacheStateaSEOS3_.exit.i, %bb.l
  %i.dq = load ptr, ptr %i.bz, align 8
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 344
  call void @_ZN2v88internal9Assembler3jmpEPNS0_5LabelENS2_8DistanceE(ptr noundef nonnull align 8 dereferenceable(1284) %i.as, ptr noundef nonnull %i.dr, i32 noundef 1) #24
  br label %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler8DelegateEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEEjPNS3_7ControlE.exit

_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler8DelegateEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEEjPNS3_7ControlE.exit: ; preds = %bb.u, %bb.j, %bb.i, %bb.g, %bb.f
  %.val14 = load ptr, ptr %i.q, align 8           ; 5 uses
  %i.ds = getelementptr inbounds i8, ptr %.val14, i64 -943
  %i.dt = load i8, ptr %i.ds, align 1
  %i.du = icmp eq i8 %i.dt, 0
  br i1 %i.du, label %bb.v, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE18DecodeDelegateImplEPNS8_9TraceLineENS1_10WasmOpcodeE.exit

bb.v:                                             ; preds = %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler8DelegateEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEEjPNS3_7ControlE.exit
  %.val4 = load ptr, ptr %i.p, align 8
  %i.dv = ptrtoint ptr %.val14 to i64
  %i.dw = ptrtoint ptr %.val4 to i64
  %i.dx = sub i64 %i.dv, %i.dw
  %i.dy = sdiv exact i64 %i.dx, 472
  %i.dz = trunc i64 %i.dy to i32
  %i.ea = add i32 %i.dz, -2
  %.not.i = icmp eq i32 %.0.in.i.lcssa, %i.ea
  br i1 %.not.i, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE18DecodeDelegateImplEPNS8_9TraceLineENS1_10WasmOpcodeE.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.eb = zext i32 %.0.i.lcssa to i64
  %i.ec = sub nsw i64 0, %i.eb
  %i.ed = getelementptr [472 x i8], ptr %.val14, i64 %i.ec
  %i.ee = getelementptr i8, ptr %i.ed, i64 -384
  store i8 1, ptr %i.ee, align 8
  %.val.i16.pre = load ptr, ptr %i.q, align 8
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE18DecodeDelegateImplEPNS8_9TraceLineENS1_10WasmOpcodeE.exit

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE18DecodeDelegateImplEPNS8_9TraceLineENS1_10WasmOpcodeE.exit: ; preds = %.critedge.i, %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler8DelegateEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEEjPNS3_7ControlE.exit, %bb.v, %bb.w
  %.val.i16 = phi ptr [ %.val.i16.pre18, %.critedge.i ], [ %.val14, %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler8DelegateEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEEjPNS3_7ControlE.exit ], [ %.val14, %bb.v ], [ %.val.i16.pre, %bb.w ] ; 2 uses
  %i.ef = getelementptr inbounds i8, ptr %.val9, i64 -440
  %i.eg = load i32, ptr %i.ef, align 8
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 1532
  store i32 %i.eg, ptr %i.eh, align 4
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 1448
  %i.ej = getelementptr inbounds i8, ptr %.val.i16, i64 -448
  %i.ek = load i32, ptr %i.ej, align 8
  %i.el = load ptr, ptr %i.ei, align 8
  %i.em = zext i32 %i.ek to i64
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.el, i64 %i.em
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 1456
  store ptr %i.en, ptr %i.eo, align 8
  %i.ep = getelementptr inbounds i8, ptr %.val.i16, i64 -471
  store i8 2, ptr %i.ep, align 1
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 1528
  store i8 0, ptr %i.eq, align 8
  call fastcc void @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE10PopControlEv(ptr noundef nonnull align 8 dereferenceable(1536) %0)
  ret i32 %.sroa.5.0.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef i32 @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE14DecodeCatchAllEPS8_NS1_10WasmOpcodeE(ptr noundef nonnull %0, i32 %1) #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = load i64, ptr %i.b, align 8
  %i.d = or i64 %i.c, 8192
  store i64 %i.d, ptr %i.b, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1504
  %i.f = getelementptr i8, ptr %0, i64 1512       ; 4 uses
  %.val3 = load ptr, ptr %i.f, align 8            ; 7 uses
  %i.g = getelementptr inbounds i8, ptr %.val3, i64 -472
  tail call fastcc void @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE11FallThroughEv(ptr noundef nonnull align 8 dereferenceable(1536) %0)
  store i8 7, ptr %i.g, align 8
  %.val5 = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds i8, ptr %.val5, i64 -943
  %i.i = load i8, ptr %i.h, align 1
  %i.j = icmp ne i8 %i.i, 0                       ; 2 uses
  %i.k = zext i1 %i.j to i8
  %i.l = getelementptr inbounds i8, ptr %.val3, i64 -471
  store i8 %i.k, ptr %i.l, align 1
  %i.m = xor i1 %i.j, true
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1528 ; 2 uses
  %i.o = zext i1 %i.m to i8
  store i8 %i.o, ptr %i.n, align 8
  %2 = getelementptr i8, ptr %.val3, i64 -444
  %.val6 = load i32, ptr %2, align 4              ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1529
  %i.q = load i8, ptr %i.p, align 1, !range !5, !noundef !6
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.b, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE28RollbackLocalsInitializationEPNS6_7ControlE.exit

bb.b:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1480 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1488 ; 3 uses
  %i.u = load ptr, ptr %i.t, align 8              ; 2 uses
  %i.v = load ptr, ptr %i.s, align 8
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = lshr exact i64 %i.y, 2
  %i.aa = trunc i64 %i.z to i32
  %i.ab = icmp ult i32 %.val6, %i.aa
  br i1 %i.ab, label %.lr.ph.i, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE28RollbackLocalsInitializationEPNS6_7ControlE.exit

.lr.ph.i:                                         ; preds = %bb.b
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 1472
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i
  %i.ad = phi ptr [ %i.u, %.lr.ph.i ], [ %i.aj, %bb.c ]
  %i.ae = getelementptr inbounds i8, ptr %i.ad, i64 -4 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4
  store ptr %i.ae, ptr %i.t, align 8
  %i.ag = load ptr, ptr %i.ac, align 8
  %i.ah = zext i32 %i.af to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ah
  store i8 0, ptr %i.ai, align 1
  %i.aj = load ptr, ptr %i.t, align 8             ; 2 uses
  %i.ak = load ptr, ptr %i.s, align 8
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = sub i64 %i.al, %i.am
  %i.ao = lshr exact i64 %i.an, 2
  %i.ap = trunc i64 %i.ao to i32
  %i.aq = icmp ult i32 %.val6, %i.ap
  br i1 %i.aq, label %bb.c, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE28RollbackLocalsInitializationEPNS6_7ControlE.exit, !llvm.loop !219

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE28RollbackLocalsInitializationEPNS6_7ControlE.exit: ; preds = %bb.c, %bb.a, %bb.b
  %i.ar = getelementptr inbounds i8, ptr %.val3, i64 -440
  %i.as = load i32, ptr %i.ar, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 1532
  store i32 %i.as, ptr %i.at, align 4
  %i.au = getelementptr inbounds i8, ptr %.val3, i64 -384
  %i.av = load i8, ptr %i.au, align 8, !range !5, !noundef !6
  %i.aw = trunc nuw i8 %i.av to i1
  br i1 %i.aw, label %bb.d, label %bb.h

bb.d:                                             ; preds = %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE28RollbackLocalsInitializationEPNS6_7ControlE.exit
  %.val = load ptr, ptr %i.e, align 8
  %.val2 = load ptr, ptr %i.f, align 8            ; 2 uses
  %i.ax = ptrtoint ptr %.val2 to i64
  %i.ay = ptrtoint ptr %.val to i64
  %i.az = sub i64 %i.ax, %i.ay
  %i.ba = sdiv exact i64 %i.az, 472
  %i.bb = and i64 %i.ba, 4294967295
  %i.bc = icmp eq i64 %i.bb, 1
  br i1 %i.bc, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bd = getelementptr inbounds i8, ptr %.val2, i64 -943
  %i.be = load i8, ptr %i.bd, align 1
  %i.bf = icmp eq i8 %i.be, 0
  br i1 %i.bf, label %bb.f, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE18DecodeCatchAllImplEPNS8_9TraceLineENS1_10WasmOpcodeE.exit

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.bh = getelementptr inbounds i8, ptr %.val3, i64 -16 ; 3 uses
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 344
  tail call void @_ZN2v88internal9Assembler4bindEPNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(1284) %i.bg, ptr noundef nonnull %i.bj) #24
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.bl = load ptr, ptr %i.bh, align 8
  tail call void @_ZN2v88internal4wasm16LiftoffAssembler10CacheState5SplitERKS3_(ptr noundef nonnull align 8 dereferenceable(337) %i.bk, ptr noundef nonnull align 8 dereferenceable(337) %i.bl) #24
  %i.bm = load ptr, ptr %i.bh, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 353 ; 2 uses
  %i.bo = load i8, ptr %i.bn, align 1, !range !5, !noundef !6
  %i.bp = trunc nuw i8 %i.bo to i1
  br i1 %i.bp, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE18DecodeCatchAllImplEPNS8_9TraceLineENS1_10WasmOpcodeE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i8 1, ptr %i.bn, align 1
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 1372 ; 2 uses
  %i.br = load i32, ptr %i.bq, align 4
  %i.bs = add nsw i32 %i.br, 1
  store i32 %i.bs, ptr %i.bq, align 4
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE18DecodeCatchAllImplEPNS8_9TraceLineENS1_10WasmOpcodeE.exit

bb.h:                                             ; preds = %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE28RollbackLocalsInitializationEPNS6_7ControlE.exit
  %.val.i = load ptr, ptr %i.f, align 8
  %i.bt = getelementptr inbounds i8, ptr %.val.i, i64 -471 ; 2 uses
  %i.bu = load i8, ptr %i.bt, align 1
  %i.bv = icmp eq i8 %i.bu, 0
  br i1 %i.bv, label %bb.i, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE18DecodeCatchAllImplEPNS8_9TraceLineENS1_10WasmOpcodeE.exit

bb.i:                                             ; preds = %bb.h
  store i8 1, ptr %i.bt, align 1
  store i8 0, ptr %i.n, align 8
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE18DecodeCatchAllImplEPNS8_9TraceLineENS1_10WasmOpcodeE.exit

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE18DecodeCatchAllImplEPNS8_9TraceLineENS1_10WasmOpcodeE.exit: ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %bb.e
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 1448
  %i.bx = getelementptr inbounds i8, ptr %.val3, i64 -448
  %i.by = load i32, ptr %i.bx, align 8
  %i.bz = load ptr, ptr %i.bw, align 8
  %i.ca = zext i32 %i.by to i64
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %i.ca
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 1456
  store ptr %i.cb, ptr %i.cc, align 8
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE10DecodeDropEPS8_NS1_10WasmOpcodeE(ptr nofree noundef captures(none) %0, i32 %1) #20 align 2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 1512
  %.val = load ptr, ptr %i.a, align 8
  %i.b = getelementptr inbounds i8, ptr %.val, i64 -448
  %i.c = load i32, ptr %i.b, align 8
  %i.d = getelementptr i8, ptr %0, i64 1448
  %.val2 = load ptr, ptr %i.d, align 8
  %i.e = getelementptr i8, ptr %0, i64 1456       ; 2 uses
  %.val3 = load ptr, ptr %i.e, align 8            ; 2 uses
  %i.f = ptrtoint ptr %.val3 to i64
  %i.g = ptrtoint ptr %.val2 to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = lshr exact i64 %i.h, 2
  %i.j = trunc i64 %i.i to i32
  %.not.i = icmp ult i32 %i.c, %i.j
  br i1 %.not.i, label %bb.b, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE3PopEv.exit, !prof !16

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds i8, ptr %.val3, i64 -4
  store ptr %i.k, ptr %i.e, align 8
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE3PopEv.exit

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE3PopEv.exit: ; preds = %bb.a, %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1528
  %i.m = load i8, ptr %i.l, align 8, !range !5, !noundef !6
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.c, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE14DecodeDropImplEPNS8_9TraceLineENS1_10WasmOpcodeE.exit, !prof !16

bb.c:                                             ; preds = %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE3PopEv.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 632 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8              ; 2 uses
  %i.q = getelementptr inbounds i8, ptr %i.p, i64 -12 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 840 ; 2 uses
  %.promoted.i.i = load i32, ptr %i.r, align 8
  %i.s = load i8, ptr %i.q, align 4
  %i.t = icmp eq i8 %i.s, 1
  br i1 %i.t, label %bb.d, label %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler4DropEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEE.exit

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 844
  %i.v = getelementptr inbounds i8, ptr %i.p, i64 -8
  %.sroa.0.0.copyload.i.i.i = load i8, ptr %i.v, align 4 ; 2 uses
  %i.w = zext i8 %.sroa.0.0.copyload.i.i.i to i64
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.w ; 2 uses
  %i.y = load i32, ptr %i.x, align 4
  %i.z = add i32 %i.y, -1                         ; 2 uses
  store i32 %i.z, ptr %i.x, align 4
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %bb.e, label %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler4DropEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEE.exit

bb.e:                                             ; preds = %bb.d
  %i.ab = zext nneg i8 %.sroa.0.0.copyload.i.i.i to i32
  %i.ac = shl nuw i32 1, %i.ab
  %i.ad = xor i32 %i.ac, -1
  %i.ae = and i32 %.promoted.i.i, %i.ad
  store i32 %i.ae, ptr %i.r, align 8
  br label %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler4DropEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEE.exit

_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler4DropEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEE.exit: ; preds = %bb.c, %bb.d, %bb.e
  store ptr %i.q, ptr %i.o, align 8
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE14DecodeDropImplEPNS8_9TraceLineENS1_10WasmOpcodeE.exit

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE14DecodeDropImplEPNS8_9TraceLineENS1_10WasmOpcodeE.exit: ; preds = %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE3PopEv.exit, %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler4DropEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEE.exit
  ret i32 1
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef i32 @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE12DecodeSelectEPS8_NS1_10WasmOpcodeE(ptr noundef %0, i32 %1) #0 align 2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 1512
  %.val = load ptr, ptr %i.a, align 8
  %i.b = getelementptr inbounds i8, ptr %.val, i64 -448
  %i.c = load i32, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1448
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1456 ; 5 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = load ptr, ptr %i.d, align 8
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = lshr exact i64 %i.j, 2
  %i.l = trunc i64 %i.k to i32
  %i.m = add i32 %i.c, 3
  %.not.i.i = icmp ugt i32 %i.m, %i.l
  br i1 %.not.i.i, label %bb.b, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE3PopIJNS1_19IndependentHeapTypeESA_NS1_20IndependentValueTypeEEQfraaoosr3stdE9is_same_vINS1_9ValueTypeETL0__Esr3stdE12is_base_of_vISB_SD_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISG_XsZT_EEE4typeEDpT_.exit, !prof !7

bb.b:                                             ; preds = %bb.a
  tail call preserve_mostcc void @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE25EnsureStackArguments_SlowEi(ptr noundef nonnull align 8 dereferenceable(1536) %0, i32 noundef 3)
  %.pre = load ptr, ptr %i.e, align 8
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE3PopIJNS1_19IndependentHeapTypeESA_NS1_20IndependentValueTypeEEQfraaoosr3stdE9is_same_vINS1_9ValueTypeETL0__Esr3stdE12is_base_of_vISB_SD_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISG_XsZT_EEE4typeEDpT_.exit

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE3PopIJNS1_19IndependentHeapTypeESA_NS1_20IndependentValueTypeEEQfraaoosr3stdE9is_same_vINS1_9ValueTypeETL0__Esr3stdE12is_base_of_vISB_SD_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISG_XsZT_EEE4typeEDpT_.exit: ; preds = %bb.a, %bb.b
  %i.n = phi ptr [ %i.f, %bb.a ], [ %.pre, %bb.b ] ; 2 uses
  %i.o = getelementptr i8, ptr %i.n, i64 -12      ; 3 uses
  store ptr %i.o, ptr %i.e, align 8
  %.sroa.03.0.copyload.i = load i32, ptr %i.o, align 4 ; 2 uses
  %i.p = getelementptr i8, ptr %i.n, i64 -8
  %.sroa.03.0.copyload.i3 = load i32, ptr %i.p, align 4
  %i.q = icmp eq i32 %.sroa.03.0.copyload.i, 514
  %spec.select = select i1 %i.q, i32 %.sroa.03.0.copyload.i3, i32 %.sroa.03.0.copyload.i
  store i32 %spec.select, ptr %i.o, align 4
  %i.r = load ptr, ptr %i.e, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  store ptr %i.s, ptr %i.e, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1528
  %i.u = load i8, ptr %i.t, align 8, !range !5, !noundef !6
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %bb.c, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE16DecodeSelectImplEPNS8_9TraceLineENS1_10WasmOpcodeE.exit, !prof !16

bb.c:                                             ; preds = %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE3PopIJNS1_19IndependentHeapTypeESA_NS1_20IndependentValueTypeEEQfraaoosr3stdE9is_same_vINS1_9ValueTypeETL0__Esr3stdE12is_base_of_vISB_SD_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISG_XsZT_EEE4typeEDpT_.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 160
  tail call fastcc void @_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler6SelectEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEERKNS1_9ValueBaseIS6_EESD_SD_PSB_(ptr noundef nonnull align 8 dereferenceable(1284) %i.w)
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE16DecodeSelectImplEPNS8_9TraceLineENS1_10WasmOpcodeE.exit

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE16DecodeSelectImplEPNS8_9TraceLineENS1_10WasmOpcodeE.exit: ; preds = %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE3PopIJNS1_19IndependentHeapTypeESA_NS1_20IndependentValueTypeEEQfraaoosr3stdE9is_same_vINS1_9ValueTypeETL0__Esr3stdE12is_base_of_vISB_SD_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISG_XsZT_EEE4typeEDpT_.exit, %bb.c
  ret i32 1
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef i32 @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE20DecodeSelectWithTypeEPS8_NS1_10WasmOpcodeE(ptr noundef %0, i32 %1) #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE10PopControlEv:bb.a
  %i.bp = getelementptr inbounds i8, ptr %.val12, i64 -376 ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8
  call void @_ZN2v88internal9Assembler4bindEPNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(1284) %i.m, ptr noundef nonnull %i.bq) #24
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 616 ; 2 uses
  %i.bs = load ptr, ptr %i.bp, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  call void @_ZN2v88internal4wasm16LiftoffAssembler10CacheState5StealERS3_(ptr noundef nonnull align 8 dereferenceable(337) %i.br, ptr noundef nonnull align 8 dereferenceable(337) %i.bt) #24
  call void @_ZN2v88internal4wasm16LiftoffAssembler18MergeFullStackWithERNS2_10CacheStateE(ptr noundef nonnull align 8 dereferenceable(1284) %i.m, ptr noundef nonnull align 8 dereferenceable(337) %i.al) #24
  call void @_ZN2v88internal4wasm16LiftoffAssembler10CacheState5StealERS3_(ptr noundef nonnull align 8 dereferenceable(337) %i.br, ptr noundef nonnull align 8 dereferenceable(337) %i.al) #24
  br label %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler16FinishOneArmedIfEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEEPNS3_7ControlE.exit.i

bb.q:                                             ; preds = %bb.h
  %i.bu = getelementptr inbounds i8, ptr %.val12, i64 -376 ; 2 uses
  %i.bv = load ptr, ptr %i.bu, align 8
  tail call void @_ZN2v88internal9Assembler4bindEPNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(1284) %i.m, ptr noundef nonnull %i.bv) #24
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.bx = load ptr, ptr %i.bu, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  tail call void @_ZN2v88internal4wasm16LiftoffAssembler10CacheState5StealERS3_(ptr noundef nonnull align 8 dereferenceable(337) %i.bw, ptr noundef nonnull align 8 dereferenceable(337) %i.by) #24
  br label %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler16FinishOneArmedIfEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEEPNS3_7ControlE.exit.i

bb.r:                                             ; preds = %bb.c, %bb.c, %bb.c
  %i.bz = getelementptr inbounds i8, ptr %.val12, i64 -392
  %i.ca = load i8, ptr %i.bz, align 8, !range !5, !noundef !6
  %i.cb = trunc nuw i8 %i.ca to i1
  br i1 %i.cb, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cc = getelementptr inbounds i8, ptr %.val12, i64 -16
  %i.cd = load ptr, ptr %i.cc, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 352
  %i.cf = load i8, ptr %i.ce, align 8, !range !5, !noundef !6
  %i.cg = trunc nuw i8 %i.cf to i1
  %i.ch = icmp ne i8 %i.n, 5
  %or.cond.not.i = and i1 %i.ch, %i.cg
  br i1 %or.cond.not.i, label %bb.t, label %bb.x

bb.t:                                             ; preds = %bb.s
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 596
  %i.cj = load i32, ptr %i.ci, align 4
  %i.ck = getelementptr inbounds i8, ptr %.val12, i64 -448
  %i.cl = load i32, ptr %i.ck, align 8
  %i.cm = add i32 %i.cl, %i.cj
  %i.cn = getelementptr inbounds i8, ptr %.val12, i64 -8
  %i.co = load i32, ptr %i.cn, align 8
  %i.cp = add i32 %i.cm, %i.co
  tail call void @_ZN2v88internal4wasm16LiftoffAssembler26DropExceptionValueAtOffsetEi(ptr noundef nonnull align 8 dereferenceable(1284) %i.m, i32 noundef %i.cp) #24
  br label %bb.x

bb.u:                                             ; preds = %bb.r
  %i.cq = getelementptr inbounds i8, ptr %.val12, i64 -471
  %i.cr = load i8, ptr %i.cq, align 1
  %i.cs = icmp eq i8 %i.cr, 0
  br i1 %i.cs, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ct = getelementptr inbounds i8, ptr %.val12, i64 -368
  %i.cu = getelementptr inbounds i8, ptr %.val12, i64 -408
  %i.cv = load i32, ptr %i.cu, align 8
  tail call void @_ZN2v88internal4wasm16LiftoffAssembler14MergeStackWithERNS2_10CacheStateEjNS2_13JumpDirectionE(ptr noundef nonnull align 8 dereferenceable(1284) %i.m, ptr noundef nonnull align 8 dereferenceable(337) %i.ct, i32 noundef %i.cv, i32 noundef 0) #24
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.cx = getelementptr inbounds i8, ptr %.val12, i64 -368
  tail call void @_ZN2v88internal4wasm16LiftoffAssembler10CacheState5StealERS3_(ptr noundef nonnull align 8 dereferenceable(337) %i.cw, ptr noundef nonnull align 8 dereferenceable(337) %i.cx) #24
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.t, %bb.s
  %i.cy = getelementptr inbounds i8, ptr %.val12, i64 -16
  %i.cz = load ptr, ptr %i.cy, align 8
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 352
  %i.db = load i8, ptr %i.da, align 8, !range !5, !noundef !6
  %i.dc = trunc nuw i8 %i.db to i1
  br i1 %i.dc, label %bb.y, label %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler16FinishOneArmedIfEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEEPNS3_7ControlE.exit.i

bb.y:                                             ; preds = %bb.x
  %i.dd = load i8, ptr %i.c, align 8
  %i.de = icmp eq i8 %i.dd, 5
  br i1 %i.de, label %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler16FinishOneArmedIfEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEEPNS3_7ControlE.exit.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 1372 ; 2 uses
  %i.dg = load i32, ptr %i.df, align 4
  %i.dh = add nsw i32 %i.dg, -1
  store i32 %i.dh, ptr %i.df, align 4
  br label %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler16FinishOneArmedIfEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEEPNS3_7ControlE.exit.i

bb.aa:                                            ; preds = %bb.c
  %i.di = getelementptr inbounds i8, ptr %.val12, i64 -392
  %i.dj = load i8, ptr %i.di, align 8, !range !5, !noundef !6
  %i.dk = trunc nuw i8 %i.dj to i1
  br i1 %i.dk, label %bb.ab, label %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler16FinishOneArmedIfEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEEPNS3_7ControlE.exit.i

bb.ab:                                            ; preds = %bb.aa
  %i.dl = getelementptr inbounds i8, ptr %.val12, i64 -471
  %i.dm = load i8, ptr %i.dl, align 1
  %i.dn = icmp eq i8 %i.dm, 0
  br i1 %i.dn, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.do = getelementptr inbounds i8, ptr %.val12, i64 -368
  tail call void @_ZN2v88internal4wasm16LiftoffAssembler18MergeFullStackWithERNS2_10CacheStateE(ptr noundef nonnull align 8 dereferenceable(1284) %i.m, ptr noundef nonnull align 8 dereferenceable(337) %i.do) #24
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.dq = getelementptr inbounds i8, ptr %.val12, i64 -368
  tail call void @_ZN2v88internal4wasm16LiftoffAssembler10CacheState5StealERS3_(ptr noundef nonnull align 8 dereferenceable(337) %i.dp, ptr noundef nonnull align 8 dereferenceable(337) %i.dq) #24
  br label %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler16FinishOneArmedIfEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEEPNS3_7ControlE.exit.i

_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler16FinishOneArmedIfEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEEPNS3_7ControlE.exit.i: ; preds = %bb.ad, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.q, %_ZN2v88internal4wasm16LiftoffAssembler10CacheStateaSEOS3_.exit.i.i, %bb.g
  %i.dr = getelementptr inbounds i8, ptr %.val12, i64 -24 ; 2 uses
  %i.ds = load i32, ptr %i.dr, align 8
  %i.dt = icmp slt i32 %i.ds, 0
  br i1 %i.dt, label %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler10PopControlEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEEPNS3_7ControlE.exit, label %bb.ae

bb.ae:                                            ; preds = %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler16FinishOneArmedIfEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEEPNS3_7ControlE.exit.i
  call void @_ZN2v88internal9Assembler4bindEPNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(1284) %i.m, ptr noundef nonnull %i.dr) #24
  br label %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler10PopControlEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEEPNS3_7ControlE.exit

_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler10PopControlEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEEPNS3_7ControlE.exit: ; preds = %bb.ae, %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler16FinishOneArmedIfEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEEPNS3_7ControlE.exit.i, %bb.b
  %.pr = load i8, ptr %i.c, align 8
  %i.du = icmp eq i8 %.pr, 3
  br i1 %i.du, label %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler10PopControlEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEEPNS3_7ControlE.exit.thread, label %bb.af

_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler10PopControlEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEEPNS3_7ControlE.exit.thread: ; preds = %bb.c, %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler10PopControlEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEEPNS3_7ControlE.exit
  %i.dv = getelementptr inbounds i8, ptr %.val12, i64 -471
  %i.dw = load i8, ptr %i.dv, align 1
  %i.dx = icmp eq i8 %i.dw, 2
  br i1 %i.dx, label %bb.af, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE15PushMergeValuesEPNS6_7ControlEPNS1_5MergeINS1_9ValueBaseIS4_EEEE.exit

bb.af:                                            ; preds = %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler10PopControlEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEEPNS3_7ControlE.exit.thread, %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler10PopControlEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEEPNS3_7ControlE.exit
  %i.dy = getelementptr inbounds i8, ptr %.val12, i64 -408 ; 3 uses
  %i.dz = getelementptr i8, ptr %.val12, i64 -448
  %.val14.a = load i32, ptr %i.dz, align 8
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 1448 ; 2 uses
  %i.eb = load ptr, ptr %i.ea, align 8
  %i.ec = zext i32 %.val14.a to i64
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.eb, i64 %i.ec ; 3 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 1456 ; 6 uses
  store ptr %i.ed, ptr %i.ee, align 8
  %i.ef = load i32, ptr %i.dy, align 8            ; 4 uses
  %i.eg = icmp eq i32 %i.ef, 1
  br i1 %i.eg, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.eh = getelementptr inbounds i8, ptr %.val12, i64 -400
  %.sroa.03.0.copyload.i = load i32, ptr %i.eh, align 8
  store i32 %.sroa.03.0.copyload.i, ptr %i.ed, align 4
  %i.ei = load ptr, ptr %i.ee, align 8
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 4
  store ptr %i.ej, ptr %i.ee, align 8
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE15PushMergeValuesEPNS6_7ControlEPNS1_5MergeINS1_9ValueBaseIS4_EEEE.exit

bb.ah:                                            ; preds = %bb.af
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 1464
  %i.el = load ptr, ptr %i.ek, align 8
  %i.em = ptrtoint ptr %i.el to i64
  %i.en = ptrtoint ptr %i.ed to i64
  %i.eo = sub i64 %i.em, %i.en
  %i.ep = ashr exact i64 %i.eo, 2
  %i.eq = sext i32 %i.ef to i64
  %.not.i.i = icmp slt i64 %i.ep, %i.eq
  br i1 %.not.i.i, label %bb.ai, label %_ZN2v88internal4wasm14FastZoneVectorINS1_9ValueBaseINS1_7Decoder15NoValidationTagEEEE18EnsureMoreCapacityEiPNS0_4ZoneE.exit.i, !prof !7

bb.ai:                                            ; preds = %bb.ah
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.es = load ptr, ptr %i.er, align 8
  call preserve_mostcc void @_ZN2v88internal4wasm14FastZoneVectorINS1_9ValueBaseINS1_7Decoder15NoValidationTagEEEE4GrowEiPNS0_4ZoneE(ptr noundef nonnull align 8 dereferenceable(24) %i.ea, i32 noundef %i.ef, ptr noundef %i.es)
  %.pre.i = load i32, ptr %i.dy, align 8
  br label %_ZN2v88internal4wasm14FastZoneVectorINS1_9ValueBaseINS1_7Decoder15NoValidationTagEEEE18EnsureMoreCapacityEiPNS0_4ZoneE.exit.i

_ZN2v88internal4wasm14FastZoneVectorINS1_9ValueBaseINS1_7Decoder15NoValidationTagEEEE18EnsureMoreCapacityEiPNS0_4ZoneE.exit.i: ; preds = %bb.ai, %bb.ah
  %i.et = phi i32 [ %i.ef, %bb.ah ], [ %.pre.i, %bb.ai ]
  %.not.i = icmp eq i32 %i.et, 0
  br i1 %.not.i, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE15PushMergeValuesEPNS6_7ControlEPNS1_5MergeINS1_9ValueBaseIS4_EEEE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN2v88internal4wasm14FastZoneVectorINS1_9ValueBaseINS1_7Decoder15NoValidationTagEEEE18EnsureMoreCapacityEiPNS0_4ZoneE.exit.i
  %i.eu = getelementptr inbounds i8, ptr %.val12, i64 -400
  %.pre3.i = load ptr, ptr %i.ee, align 8
  br label %bb.aj

bb.aj:                                            ; preds = %bb.aj, %.lr.ph.i
  %i.ev = phi ptr [ %.pre3.i, %.lr.ph.i ], [ %i.ez, %bb.aj ]
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.aj ] ; 2 uses
  %i.ew = load ptr, ptr %i.eu, align 8
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.ew, i64 %indvars.iv.i
  %.sroa.0.0.copyload.i = load i32, ptr %i.ex, align 4
  store i32 %.sroa.0.0.copyload.i, ptr %i.ev, align 4
  %i.ey = load ptr, ptr %i.ee, align 8
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 4 ; 2 uses
  store ptr %i.ez, ptr %i.ee, align 8
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.fa = load i32, ptr %i.dy, align 8
  %i.fb = zext i32 %i.fa to i64
  %i.fc = icmp samesign ult i64 %indvars.iv.next.i, %i.fb
  br i1 %i.fc, label %bb.aj, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE15PushMergeValuesEPNS6_7ControlEPNS1_5MergeINS1_9ValueBaseIS4_EEEE.exit, !llvm.loop !218

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE15PushMergeValuesEPNS6_7ControlEPNS1_5MergeINS1_9ValueBaseIS4_EEEE.exit: ; preds = %bb.aj, %_ZN2v88internal4wasm14FastZoneVectorINS1_9ValueBaseINS1_7Decoder15NoValidationTagEEEE18EnsureMoreCapacityEiPNS0_4ZoneE.exit.i, %bb.ag, %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler10PopControlEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEEPNS3_7ControlE.exit.thread
  %2 = getelementptr i8, ptr %.val12, i64 -444
  %.val14 = load i32, ptr %2, align 4             ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 1529
  %i.fe = load i8, ptr %i.fd, align 1, !range !5, !noundef !6
  %i.ff = trunc nuw i8 %i.fe to i1
  br i1 %i.ff, label %bb.ak, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE28RollbackLocalsInitializationEPNS6_7ControlE.exit

bb.ak:                                            ; preds = %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE15PushMergeValuesEPNS6_7ControlEPNS1_5MergeINS1_9ValueBaseIS4_EEEE.exit
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 1480 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 1488 ; 3 uses
  %i.fi = load ptr, ptr %i.fh, align 8            ; 2 uses
  %i.fj = load ptr, ptr %i.fg, align 8
  %i.fk = ptrtoint ptr %i.fi to i64
  %i.fl = ptrtoint ptr %i.fj to i64
  %i.fm = sub i64 %i.fk, %i.fl
  %i.fn = lshr exact i64 %i.fm, 2
  %i.fo = trunc i64 %i.fn to i32
  %i.fp = icmp ult i32 %.val14, %i.fo
  br i1 %i.fp, label %.lr.ph.i15, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE28RollbackLocalsInitializationEPNS6_7ControlE.exit

.lr.ph.i15:                                       ; preds = %bb.ak
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 1472
  br label %bb.al

bb.al:                                            ; preds = %bb.al, %.lr.ph.i15
  %i.fr = phi ptr [ %i.fi, %.lr.ph.i15 ], [ %i.fx, %bb.al ]
  %i.fs = getelementptr inbounds i8, ptr %i.fr, i64 -4 ; 2 uses
  %i.ft = load i32, ptr %i.fs, align 4
  store ptr %i.fs, ptr %i.fh, align 8
  %i.fu = load ptr, ptr %i.fq, align 8
  %i.fv = zext i32 %i.ft to i64
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fu, i64 %i.fv
  store i8 0, ptr %i.fw, align 1
  %i.fx = load ptr, ptr %i.fh, align 8            ; 2 uses
  %i.fy = load ptr, ptr %i.fg, align 8
  %i.fz = ptrtoint ptr %i.fx to i64
  %i.ga = ptrtoint ptr %i.fy to i64
  %i.gb = sub i64 %i.fz, %i.ga
  %i.gc = lshr exact i64 %i.gb, 2
  %i.gd = trunc i64 %i.gc to i32
  %i.ge = icmp ult i32 %.val14, %i.gd
  br i1 %i.ge, label %bb.al, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE28RollbackLocalsInitializationEPNS6_7ControlE.exit, !llvm.loop !219

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE28RollbackLocalsInitializationEPNS6_7ControlE.exit: ; preds = %bb.al, %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE15PushMergeValuesEPNS6_7ControlEPNS1_5MergeINS1_9ValueBaseIS4_EEEE.exit, %bb.ak
  %i.gf = getelementptr inbounds i8, ptr %.val12, i64 -471
  %i.gg = load i8, ptr %i.gf, align 1
  %i.gh = icmp eq i8 %i.gg, 0
  br i1 %i.gh, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE28RollbackLocalsInitializationEPNS6_7ControlE.exit..critedge_crit_edge, label %bb.am

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE28RollbackLocalsInitializationEPNS6_7ControlE.exit..critedge_crit_edge: ; preds = %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE28RollbackLocalsInitializationEPNS6_7ControlE.exit
  %.pre = load ptr, ptr %i.b, align 8
  br label %.critedge

bb.am:                                            ; preds = %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE28RollbackLocalsInitializationEPNS6_7ControlE.exit
  %i.gi = getelementptr inbounds i8, ptr %.val12, i64 -392
  %i.gj = load i8, ptr %i.gi, align 8, !range !5, !noundef !6
  %i.gk = trunc nuw i8 %i.gj to i1
  %.pre21 = load ptr, ptr %i.b, align 8           ; 3 uses
  br i1 %i.gk, label %.critedge, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.gl = load i8, ptr %i.c, align 8
  %i.gm = getelementptr inbounds i8, ptr %.pre21, i64 -472
  br label %.lr.ph.i16

.lr.ph.i16:                                       ; preds = %.lr.ph.i16, %bb.an
  %i.gn = phi ptr [ %i.gq, %.lr.ph.i16 ], [ %.pre21, %bb.an ] ; 2 uses
  %i.go = getelementptr inbounds i8, ptr %i.gn, i64 -472
  store ptr %i.go, ptr %i.b, align 8
  %i.gp = getelementptr inbounds i8, ptr %i.gn, i64 -368
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal4wasm15LiftoffVarStateELm16ENS2_13ZoneAllocatorIS4_EEE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(337) %i.gp)
  %i.gq = load ptr, ptr %i.b, align 8             ; 5 uses
  %.not.i17 = icmp eq ptr %i.gq, %i.gm
  br i1 %.not.i17, label %_ZN2v88internal4wasm14FastZoneVectorINS1_12_GLOBAL__N_115LiftoffCompiler7ControlEE3popEj.exit, label %.lr.ph.i16, !llvm.loop !251

_ZN2v88internal4wasm14FastZoneVectorINS1_12_GLOBAL__N_115LiftoffCompiler7ControlEE3popEj.exit: ; preds = %.lr.ph.i16
  %i.gr = icmp eq i8 %i.gl, 0
  br i1 %i.gr, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE39SetSucceedingCodeDynamicallyUnreachableEv.exit, label %bb.ao

bb.ao:                                            ; preds = %_ZN2v88internal4wasm14FastZoneVectorINS1_12_GLOBAL__N_115LiftoffCompiler7ControlEE3popEj.exit
  %i.gs = getelementptr inbounds i8, ptr %i.gq, i64 -471 ; 2 uses
  %i.gt = load i8, ptr %i.gs, align 1
  %i.gu = icmp eq i8 %i.gt, 0
  br i1 %i.gu, label %bb.ap, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE39SetSucceedingCodeDynamicallyUnreachableEv.exit

bb.ap:                                            ; preds = %bb.ao
  store i8 1, ptr %i.gs, align 1
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 1528
  store i8 0, ptr %i.gv, align 8
  %.val11.pre = load ptr, ptr %i.b, align 8
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE39SetSucceedingCodeDynamicallyUnreachableEv.exit

.critedge:                                        ; preds = %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE28RollbackLocalsInitializationEPNS6_7ControlE.exit..critedge_crit_edge, %bb.am
  %i.gw = phi ptr [ %.pre, %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE28RollbackLocalsInitializationEPNS6_7ControlE.exit..critedge_crit_edge ], [ %.pre21, %bb.am ] ; 2 uses
  %i.gx = getelementptr inbounds i8, ptr %i.gw, i64 -472
  br label %.lr.ph.i18

.lr.ph.i18:                                       ; preds = %.lr.ph.i18, %.critedge
  %i.gy = phi ptr [ %i.hb, %.lr.ph.i18 ], [ %i.gw, %.critedge ] ; 2 uses
  %i.gz = getelementptr inbounds i8, ptr %i.gy, i64 -472
  store ptr %i.gz, ptr %i.b, align 8
  %i.ha = getelementptr inbounds i8, ptr %i.gy, i64 -368
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal4wasm15LiftoffVarStateELm16ENS2_13ZoneAllocatorIS4_EEE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(337) %i.ha)
  %i.hb = load ptr, ptr %i.b, align 8             ; 3 uses
  %.not.i19 = icmp eq ptr %i.hb, %i.gx
  br i1 %.not.i19, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE39SetSucceedingCodeDynamicallyUnreachableEv.exit, label %.lr.ph.i18, !llvm.loop !251

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE39SetSucceedingCodeDynamicallyUnreachableEv.exit: ; preds = %.lr.ph.i18, %bb.ap, %bb.ao, %_ZN2v88internal4wasm14FastZoneVectorINS1_12_GLOBAL__N_115LiftoffCompiler7ControlEE3popEj.exit
  %.val11 = phi ptr [ %i.gq, %_ZN2v88internal4wasm14FastZoneVectorINS1_12_GLOBAL__N_115LiftoffCompiler7ControlEE3popEj.exit ], [ %.val11.pre, %bb.ap ], [ %i.gq, %bb.ao ], [ %i.hb, %.lr.ph.i18 ]
  %i.hc = getelementptr inbounds i8, ptr %.val11, i64 -471
  %i.hd = load i8, ptr %i.hc, align 1
  %i.he = icmp eq i8 %i.hd, 0
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 1528
  %i.hg = zext i1 %i.he to i8
  store i8 %i.hg, ptr %i.hf, align 8
  ret void
}

declare void @_ZN2v88internal4wasm16LiftoffAssembler26DropExceptionValueAtOffsetEi(ptr noundef nonnull align 8 dereferenceable(824), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler7BrOrRetEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEEj(ptr noundef nonnull align 8 dereferenceable(1284) %0, ptr nofree noundef nonnull readonly captures(none) %1, i32 noundef %2) unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"struct.v8::internal::wasm::LiftoffAssembler::CacheState", align 8 ; 14 uses
  %i.a = getelementptr i8, ptr %1, i64 1504
  %.val = load ptr, ptr %i.a, align 8
  %i.b = getelementptr i8, ptr %1, i64 1512
  %.val6 = load ptr, ptr %i.b, align 8            ; 2 uses
  %i.c = ptrtoint ptr %.val6 to i64
  %i.d = ptrtoint ptr %.val to i64
  %i.e = sub i64 %i.c, %i.d
  %i.f = sdiv exact i64 %i.e, 472
  %i.g = trunc i64 %i.f to i32
  %i.h = add i32 %i.g, -1
  %i.i = icmp eq i32 %2, %i.h
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler10ReturnImplEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEE(ptr noundef nonnull align 8 dereferenceable(1284) %0, ptr noundef %1)
  br label %bb.s

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds i8, ptr %.val6, i64 -472
  %i.k = zext i32 %2 to i64
  %i.l = sub nsw i64 0, %i.k
  %i.m = getelementptr inbounds [472 x i8], ptr %i.j, i64 %i.l ; 13 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 888
  %.val15.i = load i8, ptr %i.n, align 8
  %i.o = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 737), align 1, !range !5, !noundef !6
  %i.p = trunc nuw i8 %i.o to i1
  %i.q = icmp eq i8 %.val15.i, 0
  %or.cond.i.i = select i1 %i.p, i1 %i.q, i1 false
  br i1 %or.cond.i.i, label %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler15dynamic_tieringEv.exit.i, label %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler15dynamic_tieringEv.exit.thread.i

_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler15dynamic_tieringEv.exit.i: ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 892
  %.val16.i = load i32, ptr %i.r, align 4
  %i.s = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 768), align 256 ; 2 uses
  %i.t = icmp eq i32 %i.s, -1
  %i.u = icmp eq i32 %i.s, %.val16.i
  %spec.select.i.i = select i1 %i.t, i1 true, i1 %i.u
  br i1 %spec.select.i.i, label %bb.d, label %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler15dynamic_tieringEv.exit.thread.i

bb.d:                                             ; preds = %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler15dynamic_tieringEv.exit.i
  %i.v = load i8, ptr %i.m, align 8
  %i.w = icmp eq i8 %i.v, 3
  br i1 %i.w, label %bb.e, label %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler15dynamic_tieringEv.exit.thread.i

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = ptrtoint ptr %i.y to i64
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = trunc i64 %i.ad to i32
  %i.af = getelementptr inbounds nuw i8, ptr %i.m, i64 448
  %i.ag = load i32, ptr %i.af, align 8            ; 4 uses
  %i.ah = icmp slt i32 %i.ag, 0
  br i1 %i.ah, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ai = xor i32 %i.ag, -1
  br label %_ZNK2v88internal5Label3posEv.exit.i

bb.g:                                             ; preds = %bb.e
  %.not.i.i = icmp eq i32 %i.ag, 0
  br i1 %.not.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aj = add nsw i32 %i.ag, -1
  br label %_ZNK2v88internal5Label3posEv.exit.i

bb.i:                                             ; preds = %bb.g
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.27) #27
  unreachable

_ZNK2v88internal5Label3posEv.exit.i:              ; preds = %bb.h, %bb.f
  %.0.i.i = phi i32 [ %i.ai, %bb.f ], [ %i.aj, %bb.h ]
  %i.ak = sub nsw i32 %i.ae, %.0.i.i
  %i.al = getelementptr i8, ptr %1, i64 8
  %.val.i = load ptr, ptr %i.al, align 8
  %i.am = getelementptr i8, ptr %1, i64 16
  %.val14.i = load ptr, ptr %i.am, align 8
  %i.an = ptrtoint ptr %.val14.i to i64
  %i.ao = ptrtoint ptr %.val.i to i64
  %i.ap = sub i64 %i.an, %i.ao
  %i.aq = trunc i64 %i.ap to i32
  tail call fastcc void @_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler11TierupCheckEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEEii(ptr noundef nonnull align 8 dereferenceable(1284) %0, ptr noundef nonnull readonly %1, i32 noundef %i.aq, i32 noundef %i.ak)
  br label %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler15dynamic_tieringEv.exit.thread.i

_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler15dynamic_tieringEv.exit.thread.i: ; preds = %_ZNK2v88internal5Label3posEv.exit.i, %bb.d, %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler15dynamic_tieringEv.exit.i, %bb.c
  %i.ar = load i8, ptr %i.m, align 8
  %i.as = icmp eq i8 %i.ar, 3                     ; 2 uses
  %.v.i.i = select i1 %i.as, i64 40, i64 64
  %i.at = getelementptr inbounds nuw i8, ptr %i.m, i64 %.v.i.i ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.av = load i8, ptr %i.au, align 8, !range !5, !noundef !6
  %i.aw = trunc nuw i8 %i.av to i1
  br i1 %i.aw, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler15dynamic_tieringEv.exit.thread.i
  %i.ax = getelementptr inbounds nuw i8, ptr %i.m, i64 104
  %i.ay = load i32, ptr %i.at, align 8
  %i.az = zext i1 %i.as to i32
  tail call void @_ZN2v88internal4wasm16LiftoffAssembler14MergeStackWithERNS2_10CacheStateEjNS2_13JumpDirectionE(ptr noundef nonnull align 8 dereferenceable(1284) %0, ptr noundef nonnull align 8 dereferenceable(337) %i.ax, i32 noundef %i.ay, i32 noundef %i.az) #24
  br label %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler6BrImplEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEEPNS3_7ControlE.exit

bb.k:                                             ; preds = %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler15dynamic_tieringEv.exit.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 436
  %i.bb = load i32, ptr %i.ba, align 4
  %i.bc = load i32, ptr %i.at, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.be = load i32, ptr %i.bd, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.m, i64 464
  %i.bg = load i32, ptr %i.bf, align 8
  %i.bh = add i32 %i.bg, %i.be
  call void @_ZN2v88internal4wasm16LiftoffAssembler17MergeIntoNewStateEjjj(ptr dead_on_unwind nonnull writable sret(%"struct.v8::internal::wasm::LiftoffAssembler::CacheState") align 8 %3, ptr noundef nonnull align 8 dereferenceable(1284) %0, i32 noundef %i.bb, i32 noundef %i.bc, i32 noundef %i.bh) #24
  %i.bi = getelementptr inbounds nuw i8, ptr %i.m, i64 104 ; 3 uses
end_hunk_2
