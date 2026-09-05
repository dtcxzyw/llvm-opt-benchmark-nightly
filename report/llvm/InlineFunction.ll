Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/InlineFunction?download=true
inline.NumInlined: 8187
inline.NumDeleted: 4334
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN4llvm17CanInlineCallSiteERKNS_8CallBaseERNS_18InlineFunctionInfoE:bb.a

bb.p:                                             ; preds = %bb.o
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cs, i64 2
  %i.cx = load i16, ptr %i.cw, align 2, !tbaa !195
  %i.cy = and i16 %i.cx, 16384
  %.not177 = icmp eq i16 %i.cy, 0
  br i1 %.not177, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cz = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK4llvm8Function5getGCB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(140) %i.g) #20
  %i.da = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK4llvm8Function5getGCB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(140) %i.cs) #20
  %i.db = tail call noundef zeroext i1 @_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_(ptr noundef nonnull align 8 dereferenceable(32) %i.cz, ptr noundef nonnull align 8 dereferenceable(32) %i.da) #20
  br i1 %i.db, label %_ZNK4llvm8CallBase17getCalledFunctionEv.exit.thread, label %._crit_edge

._crit_edge:                                      ; preds = %bb.q
  %.pre = load i16, ptr %i.ct, align 2, !tbaa !195
  br label %bb.r

bb.r:                                             ; preds = %._crit_edge, %bb.p, %bb.o
  %i.dc = phi i16 [ %.pre, %._crit_edge ], [ %i.cu, %bb.p ], [ %i.cu, %bb.o ]
  %i.dd = and i16 %i.dc, 8
  %.not178 = icmp eq i16 %i.dd, 0
  br i1 %.not178, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.de = tail call noundef ptr @_ZNK4llvm8Function16getPersonalityFnEv(ptr noundef nonnull align 8 dereferenceable(140) %i.g) #20
  %i.df = tail call noundef ptr @_ZNK4llvm5Value17stripPointerCastsEv(ptr noundef nonnull align 8 dereferenceable(24) %i.de) #20
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s
  %i.dg = phi ptr [ %i.df, %bb.s ], [ null, %bb.r ] ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cs, i64 2
  %i.di = load i16, ptr %i.dh, align 2, !tbaa !195
  %i.dj = and i16 %i.di, 8
  %.not179 = icmp eq i16 %i.dj, 0
  br i1 %.not179, label %_ZNK4llvm8CallBase17getCalledFunctionEv.exit.thread, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dk = tail call noundef ptr @_ZNK4llvm8Function16getPersonalityFnEv(ptr noundef nonnull align 8 dereferenceable(140) %i.cs) #20
  %i.dl = tail call noundef ptr @_ZNK4llvm5Value17stripPointerCastsEv(ptr noundef nonnull align 8 dereferenceable(24) %i.dk) #20 ; 3 uses
  %i.dm = icmp eq ptr %i.dg, null
  %i.dn = icmp eq ptr %i.dl, null                 ; 2 uses
  %.not105 = icmp eq ptr %i.dg, %i.dl
  %i.do = or i1 %i.dm, %.not105                   ; 2 uses
  %or.cond107 = or i1 %i.dn, %i.do
  %i.dp = xor i1 %i.do, true
  %brmerge = or i1 %i.dn, %i.dp
  %.str.17.mux = select i1 %or.cond107, ptr null, ptr @.str.17
  br i1 %brmerge, label %_ZNK4llvm8CallBase17getCalledFunctionEv.exit.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dq = tail call noundef i32 @_ZN4llvm21classifyEHPersonalityEPKNS_5ValueE(ptr noundef nonnull %i.dl) #20 ; 3 uses
  switch i32 %i.dq, label %_ZNK4llvm8CallBase17getCalledFunctionEv.exit.thread [
    i32 9, label %bb.w
    i32 7, label %bb.w
    i32 8, label %bb.w
    i32 10, label %bb.w
    i32 12, label %bb.w
  ]

bb.w:                                             ; preds = %bb.v, %bb.v, %bb.v, %bb.v, %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  call void @_ZNK4llvm8CallBase16getOperandBundleEj(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.91") align 8 %2, ptr noundef nonnull align 8 dereferenceable(88) %0, i32 noundef 9)
  %i.dr = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ds = load i8, ptr %i.dr, align 8, !tbaa !197, !range !44, !noundef !45
  %i.dt = trunc nuw i8 %i.ds to i1
  br i1 %i.dt, label %bb.x, label %._crit_edge204

._crit_edge204:                                   ; preds = %bb.w
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 176
  %.pre205 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !198
  br label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.du = load ptr, ptr %2, align 8, !tbaa !200
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !72 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 176
  store ptr %i.dv, ptr %i.dw, align 8, !tbaa !198
  br label %bb.y

bb.y:                                             ; preds = %._crit_edge204, %bb.x
  %i.dx = phi ptr [ %.pre205, %._crit_edge204 ], [ %i.dv, %bb.x ] ; 2 uses
  %.not106 = icmp eq ptr %i.dx, null
  br i1 %.not106, label %_ZNK4llvm8CallBase17getCalledFunctionEv.exit.thread.sink.split, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dy = icmp eq i32 %i.dq, 9
  br i1 %i.dy, label %bb.aa, label %bb.ad

bb.aa:                                            ; preds = %bb.z
  %i.dz = load i8, ptr %i.dx, align 8, !tbaa !68
  %i.ea = icmp eq i8 %i.dz, 83
  br i1 %i.ea, label %bb.ab, label %_ZNK4llvm8CallBase17getCalledFunctionEv.exit.thread.sink.split

bb.ab:                                            ; preds = %bb.aa
  %i.eb = getelementptr inbounds nuw i8, ptr %i.g, i64 88
  %i.ec = getelementptr inbounds nuw i8, ptr %i.g, i64 80 ; 2 uses
  %.sroa.0118.0196 = load ptr, ptr %i.eb, align 8, !tbaa !75 ; 2 uses
  %.not183197 = icmp eq ptr %.sroa.0118.0196, %i.ec
  br i1 %.not183197, label %_ZNK4llvm8CallBase17getCalledFunctionEv.exit.thread.sink.split, label %.lr.ph199

bb.ac:                                            ; preds = %.lr.ph199
  %i.ed = getelementptr inbounds nuw i8, ptr %.sroa.0118.0198, i64 8
  %.sroa.0118.0 = load ptr, ptr %i.ed, align 8, !tbaa !75 ; 2 uses
  %.not183 = icmp eq ptr %.sroa.0118.0, %i.ec
  br i1 %.not183, label %_ZNK4llvm8CallBase17getCalledFunctionEv.exit.thread.sink.split, label %.lr.ph199

.lr.ph199:                                        ; preds = %bb.ab, %bb.ac
  %.sroa.0118.0198 = phi ptr [ %.sroa.0118.0, %bb.ac ], [ %.sroa.0118.0196, %bb.ab ] ; 2 uses
  %i.ee = getelementptr inbounds i8, ptr %.sroa.0118.0198, i64 -24
  %i.ef = call { ptr, i64 } @_ZNK4llvm10BasicBlock16getFirstNonPHIItEv(ptr noundef nonnull align 8 dereferenceable(80) %i.ee) #20
  %.fca.0.extract = extractvalue { ptr, i64 } %i.ef, 0
  %i.eg = getelementptr inbounds i8, ptr %.fca.0.extract, i64 -24
  %i.eh = load i8, ptr %i.eg, align 8, !tbaa !68
  %i.ei = icmp eq i8 %i.eh, 41
  br i1 %i.ei, label %_ZNK4llvm8CallBase17getCalledFunctionEv.exit.thread.sink.split, label %bb.ac

bb.ad:                                            ; preds = %bb.z
  %switch.i = icmp samesign ult i32 %i.dq, 9
  br i1 %switch.i, label %bb.ae, label %_ZNK4llvm8CallBase17getCalledFunctionEv.exit.thread.sink.split

bb.ae:                                            ; preds = %bb.ad
  %i.ej = getelementptr inbounds nuw i8, ptr %i.g, i64 88
  %i.ek = getelementptr inbounds nuw i8, ptr %i.g, i64 80 ; 2 uses
  %.sroa.0113.0192 = load ptr, ptr %i.ej, align 8, !tbaa !75 ; 2 uses
  %.not193 = icmp eq ptr %.sroa.0113.0192, %i.ek
  br i1 %.not193, label %_ZNK4llvm8CallBase17getCalledFunctionEv.exit.thread.sink.split, label %.lr.ph195

.lr.ph195:                                        ; preds = %bb.ae, %_ZNK4llvm10BasicBlock7isEHPadEv.exit
  %.sroa.0113.0194 = phi ptr [ %.sroa.0113.0, %_ZNK4llvm10BasicBlock7isEHPadEv.exit ], [ %.sroa.0113.0192, %bb.ae ] ; 2 uses
  %i.el = getelementptr inbounds i8, ptr %.sroa.0113.0194, i64 -24
  %i.em = call { ptr, i64 } @_ZNK4llvm10BasicBlock16getFirstNonPHIItEv(ptr noundef nonnull align 8 dereferenceable(80) %i.el) #20
  %.fca.0.extract.i = extractvalue { ptr, i64 } %i.em, 0
  %i.en = getelementptr inbounds i8, ptr %.fca.0.extract.i, i64 -24
  %i.eo = load i8, ptr %i.en, align 8, !tbaa !68
  switch i8 %i.eo, label %_ZNK4llvm10BasicBlock7isEHPadEv.exit [
    i8 41, label %_ZNK4llvm8CallBase17getCalledFunctionEv.exit.thread.sink.split
    i8 84, label %_ZNK4llvm8CallBase17getCalledFunctionEv.exit.thread.sink.split
    i8 83, label %_ZNK4llvm8CallBase17getCalledFunctionEv.exit.thread.sink.split
    i8 98, label %_ZNK4llvm8CallBase17getCalledFunctionEv.exit.thread.sink.split
  ]

_ZNK4llvm10BasicBlock7isEHPadEv.exit:             ; preds = %.lr.ph195
  %i.ep = getelementptr inbounds nuw i8, ptr %.sroa.0113.0194, i64 8
  %.sroa.0113.0 = load ptr, ptr %i.ep, align 8, !tbaa !75 ; 2 uses
  %.not = icmp eq ptr %.sroa.0113.0, %i.ek
  br i1 %.not, label %_ZNK4llvm8CallBase17getCalledFunctionEv.exit.thread.sink.split, label %.lr.ph195

_ZNK4llvm8CallBase17getCalledFunctionEv.exit.thread.sink.split: ; preds = %.lr.ph195, %.lr.ph195, %.lr.ph195, %.lr.ph195, %_ZNK4llvm10BasicBlock7isEHPadEv.exit, %.lr.ph199, %bb.ac, %bb.y, %bb.ad, %bb.aa, %bb.ab, %bb.ae
  %.sroa.088.22.ph = phi ptr [ null, %bb.y ], [ null, %bb.ad ], [ null, %bb.ac ], [ null, %bb.ae ], [ null, %bb.ab ], [ null, %bb.aa ], [ @.str.18, %.lr.ph199 ], [ @.str.19, %.lr.ph195 ], [ @.str.19, %.lr.ph195 ], [ @.str.19, %.lr.ph195 ], [ null, %_ZNK4llvm10BasicBlock7isEHPadEv.exit ], [ @.str.19, %.lr.ph195 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br label %_ZNK4llvm8CallBase17getCalledFunctionEv.exit.thread

_ZNK4llvm8CallBase17getCalledFunctionEv.exit.thread: ; preds = %_ZN4llvm16dyn_cast_or_nullINS_15ValueAsMetadataENS_9MDOperandEEEDaRKT0_.exit, %.lr.ph191, %_ZNK4llvm8CallBase17getCalledFunctionEv.exit.thread.sink.split, %bb.u, %bb.v, %bb.t, %bb.c, %bb.b, %_ZN4llvm16dyn_cast_or_nullINS_8FunctionENS_5ValueEEEDaPT0_.exit.i, %bb.q, %bb.n, %_ZNK4llvm8CallBase17getCalledFunctionEv.exit, %bb.a
  %.sroa.088.22 = phi ptr [ @.str.12, %_ZN4llvm16dyn_cast_or_nullINS_8FunctionENS_5ValueEEEDaPT0_.exit.i ], [ @.str.11, %bb.a ], [ @.str.12, %_ZNK4llvm8CallBase17getCalledFunctionEv.exit ], [ @.str.12, %bb.b ], [ %.sroa.088.22.ph, %_ZNK4llvm8CallBase17getCalledFunctionEv.exit.thread.sink.split ], [ @.str.15, %bb.n ], [ @.str.16, %bb.q ], [ %.str.17.mux, %bb.u ], [ null, %bb.v ], [ @.str.14, %.lr.ph191 ], [ null, %bb.t ], [ @.str.12, %bb.c ], [ @.str.13, %_ZN4llvm16dyn_cast_or_nullINS_15ValueAsMetadataENS_9MDOperandEEEDaRKT0_.exit ]
  ret ptr %.sroa.088.22
}

declare noundef zeroext i1 @_ZNK4llvm11GlobalValue13isDeclarationEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef ptr @_ZL19getConvergenceEntryRN4llvm10BasicBlockE(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #3 {
bb.a:
  %i.a = tail call { ptr, i64 } @_ZNK4llvm10BasicBlock16getFirstNonPHIItEv(ptr noundef nonnull align 8 dereferenceable(80) %0) #20
  %.fca.0.extract10 = extractvalue { ptr, i64 } %i.a, 0 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %.not32 = icmp eq ptr %.fca.0.extract10, %i.b
  br i1 %.not32, label %.split.loop.exit30, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZN4llvm8dyn_castINS_22ConvergenceControlInstENS_21ilist_iterator_w_bitsINS_12ilist_detail12node_optionsINS_11InstructionELb0ELb0EvLb1ENS_10BasicBlockEEELb0ELb0EEEEEDcRT0_.exit.thread
  %.sroa.021.033 = phi ptr [ %i.q, %_ZN4llvm8dyn_castINS_22ConvergenceControlInstENS_21ilist_iterator_w_bitsINS_12ilist_detail12node_optionsINS_11InstructionELb0ELb0EvLb1ENS_10BasicBlockEEELb0ELb0EEEEEDcRT0_.exit.thread ], [ %.fca.0.extract10, %bb.a ] ; 4 uses
  %i.c = getelementptr inbounds i8, ptr %.sroa.021.033, i64 -24
  %i.d = load i8, ptr %i.c, align 8, !tbaa !68
  %i.e = icmp eq i8 %i.d, 88
  br i1 %i.e, label %bb.b, label %_ZN4llvm8dyn_castINS_22ConvergenceControlInstENS_21ilist_iterator_w_bitsINS_12ilist_detail12node_optionsINS_11InstructionELb0ELb0EvLb1ENS_10BasicBlockEEELb0ELb0EEEEEDcRT0_.exit.thread

bb.b:                                             ; preds = %.lr.ph
  %i.f = getelementptr inbounds i8, ptr %.sroa.021.033, i64 -56
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !72   ; 4 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm8dyn_castINS_22ConvergenceControlInstENS_21ilist_iterator_w_bitsINS_12ilist_detail12node_optionsINS_11InstructionELb0ELb0EvLb1ENS_10BasicBlockEEELb0ELb0EEEEEDcRT0_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load i8, ptr %i.g, align 8, !tbaa !68
  %i.i = icmp eq i8 %i.h, 14
  br i1 %i.i, label %_ZN4llvm3isaIJNS_13IntrinsicInstEEPKNS_5ValueEEEbRKT0_.exit.i.i.i.i.i.i.i.i.i, label %_ZN4llvm8dyn_castINS_22ConvergenceControlInstENS_21ilist_iterator_w_bitsINS_12ilist_detail12node_optionsINS_11InstructionELb0ELb0EvLb1ENS_10BasicBlockEEELb0ELb0EEEEEDcRT0_.exit.thread

_ZN4llvm3isaIJNS_13IntrinsicInstEEPKNS_5ValueEEEbRKT0_.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.k = load i32, ptr %i.j, align 8
  %i.l = and i32 %i.k, 8192
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN4llvm8dyn_castINS_22ConvergenceControlInstENS_21ilist_iterator_w_bitsINS_12ilist_detail12node_optionsINS_11InstructionELb0ELb0EvLb1ENS_10BasicBlockEEELb0ELb0EEEEEDcRT0_.exit.thread, label %_ZN4llvm14CastIsPossibleINS_22ConvergenceControlInstEPNS_11InstructionEvE10isPossibleERKS3_.exit.i.i.i

_ZN4llvm14CastIsPossibleINS_22ConvergenceControlInstEPNS_11InstructionEvE10isPossibleERKS3_.exit.i.i.i: ; preds = %_ZN4llvm3isaIJNS_13IntrinsicInstEEPKNS_5ValueEEEbRKT0_.exit.i.i.i.i.i.i.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 36
  %i.n = load i32, ptr %i.m, align 4, !tbaa !140
  %i.o = icmp eq i32 %i.n, 152
  br i1 %i.o, label %.split.loop.exit30.loopexit.split.loop.exit, label %_ZN4llvm8dyn_castINS_22ConvergenceControlInstENS_21ilist_iterator_w_bitsINS_12ilist_detail12node_optionsINS_11InstructionELb0ELb0EvLb1ENS_10BasicBlockEEELb0ELb0EEEEEDcRT0_.exit.thread

_ZN4llvm8dyn_castINS_22ConvergenceControlInstENS_21ilist_iterator_w_bitsINS_12ilist_detail12node_optionsINS_11InstructionELb0ELb0EvLb1ENS_10BasicBlockEEELb0ELb0EEEEEDcRT0_.exit.thread: ; preds = %bb.c, %.lr.ph, %_ZN4llvm3isaIJNS_13IntrinsicInstEEPKNS_5ValueEEEbRKT0_.exit.i.i.i.i.i.i.i.i.i, %_ZN4llvm14CastIsPossibleINS_22ConvergenceControlInstEPNS_11InstructionEvE10isPossibleERKS3_.exit.i.i.i, %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.021.033, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !81   ; 2 uses
  %.not = icmp eq ptr %i.q, %i.b
  br i1 %.not, label %.split.loop.exit30, label %.lr.ph, !llvm.loop !2

.split.loop.exit30.loopexit.split.loop.exit:      ; preds = %_ZN4llvm14CastIsPossibleINS_22ConvergenceControlInstEPNS_11InstructionEvE10isPossibleERKS3_.exit.i.i.i
  %i.r = getelementptr inbounds i8, ptr %.sroa.021.033, i64 -24
  br label %.split.loop.exit30

.split.loop.exit30:                               ; preds = %_ZN4llvm8dyn_castINS_22ConvergenceControlInstENS_21ilist_iterator_w_bitsINS_12ilist_detail12node_optionsINS_11InstructionELb0ELb0EvLb1ENS_10BasicBlockEEELb0ELb0EEEEEDcRT0_.exit.thread, %.split.loop.exit30.loopexit.split.loop.exit, %bb.a
  %.2 = phi ptr [ null, %bb.a ], [ %i.r, %.split.loop.exit30.loopexit.split.loop.exit ], [ null, %_ZN4llvm8dyn_castINS_22ConvergenceControlInstENS_21ilist_iterator_w_bitsINS_12ilist_detail12node_optionsINS_11InstructionELb0ELb0EvLb1ENS_10BasicBlockEEELb0ELb0EEEEEDcRT0_.exit.thread ]
  ret ptr %.2
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !201  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !201
  %i.e = icmp eq i64 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

bb.b:                                             ; preds = %bb.a
  %i.f = icmp eq i64 %i.b, 0
  br i1 %i.f, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %1, align 8, !tbaa !202
  %i.h = load ptr, ptr %0, align 8, !tbaa !202
  %bcmp.i = tail call i32 @bcmp(ptr %i.h, ptr %i.g, i64 %i.b)
  %i.i = icmp ne i32 %bcmp.i, 0
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.j = phi i1 [ true, %bb.a ], [ %i.i, %bb.c ], [ false, %bb.b ]
  ret i1 %i.j
}

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNK4llvm8Function5getGCB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(140)) local_unnamed_addr #4

declare noundef ptr @_ZNK4llvm8Function16getPersonalityFnEv(ptr noundef nonnull align 8 dereferenceable(140)) local_unnamed_addr #4

declare noundef i32 @_ZN4llvm21classifyEHPersonalityEPKNS_5ValueE(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK4llvm8CallBase16getOperandBundleEj(ptr dead_on_unwind noalias writable sret(%"class.std::optional.91") align 8 %0, ptr noundef nonnull align 8 dereferenceable(88) %1, i32 noundef %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %_ZNK4llvm8CallBase20bundle_op_info_beginEv.exit.i, label %_ZNK4llvm8CallBase20getNumOperandBundlesEv.exit

_ZNK4llvm8CallBase20bundle_op_info_beginEv.exit.i: ; preds = %bb.a
  %i.d = tail call { ptr, i64 } @_ZN4llvm4User13getDescriptorEv(ptr noundef nonnull align 8 dereferenceable(88) %1) #20
  %i.e = extractvalue { ptr, i64 } %i.d, 0        ; 2 uses
  %.pr.i = load i32, ptr %i.a, align 4
  %i.f = icmp slt i32 %.pr.i, 0
  br i1 %i.f, label %bb.b, label %_ZNK4llvm8CallBase20getNumOperandBundlesEv.exit

bb.b:                                             ; preds = %_ZNK4llvm8CallBase20bundle_op_info_beginEv.exit.i
  %i.g = tail call { ptr, i64 } @_ZN4llvm4User13getDescriptorEv(ptr noundef nonnull align 8 dereferenceable(88) %1) #20 ; 2 uses
  %i.h = extractvalue { ptr, i64 } %i.g, 0
  %i.i = extractvalue { ptr, i64 } %i.g, 1
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.i
  %i.k = ptrtoint ptr %i.j to i64
  br label %_ZNK4llvm8CallBase20getNumOperandBundlesEv.exit

_ZNK4llvm8CallBase20getNumOperandBundlesEv.exit:  ; preds = %bb.a, %_ZNK4llvm8CallBase20bundle_op_info_beginEv.exit.i, %bb.b
  %.0.i.i3.i = phi ptr [ %i.e, %bb.b ], [ %i.e, %_ZNK4llvm8CallBase20bundle_op_info_beginEv.exit.i ], [ null, %bb.a ]
  %.0.i.i1.i = phi i64 [ %i.k, %bb.b ], [ 0, %_ZNK4llvm8CallBase20bundle_op_info_beginEv.exit.i ], [ 0, %bb.a ]
  %i.l = ptrtoint ptr %.0.i.i3.i to i64
  %i.m = sub i64 %.0.i.i1.i, %i.l                 ; 2 uses
  %i.n = and i64 %i.m, 68719476720
  %.not12 = icmp eq i64 %i.n, 0
  br i1 %.not12, label %._crit_edge, label %.critedge.preheader

.critedge.preheader:                              ; preds = %_ZNK4llvm8CallBase20getNumOperandBundlesEv.exit
  %i.o = lshr exact i64 %i.m, 4
  %i.p = and i64 %i.o, 4294967295
  br label %.critedge

bb.c:                                             ; preds = %.critedge
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not = icmp eq i64 %indvars.iv.next, %i.p
  br i1 %.not, label %._crit_edge, label %.critedge, !llvm.loop !3

.critedge:                                        ; preds = %.critedge.preheader, %bb.c
  %indvars.iv = phi i64 [ 0, %.critedge.preheader ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %i.q = tail call { ptr, i64 } @_ZN4llvm4User13getDescriptorEv(ptr noundef nonnull align 8 dereferenceable(88) %1) #20, !noalias !442
  %i.r = extractvalue { ptr, i64 } %i.q, 0
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %indvars.iv ; 3 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !166, !noalias !443 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load i32, ptr %i.u, align 4, !tbaa !56
  %.not8 = icmp eq i32 %i.v, %2
  br i1 %.not8, label %bb.d, label %bb.c

bb.d:                                             ; preds = %.critedge
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  %i.x = load i32, ptr %i.w, align 4, !tbaa !203, !noalias !443
  %i.y = zext i32 %i.x to i64
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !167, !noalias !443
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = sub nsw i64 %i.y, %i.ab
  %i.ad = load i32, ptr %i.a, align 4, !noalias !443
  %i.ae = and i32 %i.ad, 268435455
  %i.af = zext nneg i32 %i.ae to i64
  %i.ag = sub nsw i64 0, %i.af
  %i.ah = getelementptr inbounds [32 x i8], ptr %1, i64 %i.ag
  %.idx6.i.i = shl nuw nsw i64 %i.ab, 5
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %.idx6.i.i
  store ptr %i.ai, ptr %0, align 8, !tbaa !139
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ac, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !104
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.t, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !444
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.c, %_ZNK4llvm8CallBase20getNumOperandBundlesEv.exit, %bb.d
  %.sink = phi i8 [ 1, %bb.d ], [ 0, %_ZNK4llvm8CallBase20getNumOperandBundlesEv.exit ], [ 0, %bb.c ]
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 %.sink, ptr %i.aj, align 8, !tbaa !197
  ret void
}

declare { ptr, i64 } @_ZNK4llvm10BasicBlock16getFirstNonPHIItEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm18InlineFunctionImplERNS_8CallBaseERNS_18InlineFunctionInfoEbPNS_9AAResultsEbbPNS_8FunctionEPNS_25OptimizationRemarkEmitterE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(185) %1, i1 noundef zeroext %2, ptr noundef %3, i1 noundef zeroext %4, i1 noundef zeroext %5, ptr nofree noundef readnone captures(address) %6, ptr noundef %7) local_unnamed_addr #3 {
bb.a:
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %10 = alloca %"class.llvm::ilist_iterator_w_bits", align 8 ; 5 uses
  %11 = alloca %"class.llvm::ilist_iterator_w_bits", align 8 ; 5 uses
  %12 = alloca %"class.llvm::AttributeList", align 8 ; 4 uses
  %13 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %14 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %15 = alloca %"class.llvm::ArrayRef.177", align 8 ; 5 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %16 = alloca %"class.llvm::SmallVector.282", align 8 ; 12 uses
  %17 = alloca %"class.llvm::InsertPosition", align 8 ; 5 uses
  %18 = alloca %"class.llvm::SmallVector.685", align 8 ; 12 uses
  %19 = alloca %"class.llvm::DenseMap.102", align 8 ; 9 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %20 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %i.e = alloca ptr, align 8                      ; 4 uses
  %21 = alloca %"class.llvm::Twine", align 8      ; 8 uses
  %22 = alloca %"class.llvm::Twine", align 8      ; 8 uses
  %23 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %24 = alloca %"class.llvm::InsertPosition", align 8 ; 5 uses
  %25 = alloca %"class.(anonymous namespace)::LandingPadInliningInfo", align 8 ; 16 uses
  %26 = alloca %"class.llvm::SmallPtrSet.705", align 8 ; 12 uses
  %i.f = alloca [1 x ptr], align 8                ; 4 uses
  %i.g = alloca [1 x ptr], align 8                ; 4 uses
  %27 = alloca %"class.llvm::ArrayRef.177", align 8 ; 4 uses
  %i.h = alloca [1 x ptr], align 8                ; 4 uses
  %28 = alloca %"class.llvm::ArrayRef.177", align 8 ; 4 uses
  %29 = alloca %"class.llvm::ArrayRef.177", align 8 ; 4 uses
  %30 = alloca %"class.llvm::SmallVector.697", align 8 ; 18 uses
  %31 = alloca %"class.llvm::SmallVector.685", align 8 ; 16 uses
  %32 = alloca %"class.llvm::SmallPtrSet.688", align 8 ; 10 uses
  %33 = alloca %"class.llvm::SmallVector.683", align 8 ; 10 uses
  %34 = alloca %"class.llvm::WeakTrackingVH", align 8 ; 10 uses
  %35 = alloca %"class.llvm::memprof::CallStackTrie", align 8 ; 10 uses
  %36 = alloca %class.anon.659, align 8           ; 4 uses
  %37 = alloca %class.anon.659, align 8           ; 4 uses
  %38 = alloca %"struct.llvm::PatternMatchHelpers::match_combine_or", align 1 ; 4 uses
  %39 = alloca %"struct.llvm::PatternMatchHelpers::match_combine_or", align 1 ; 4 uses
  %40 = alloca %"class.llvm::AttributeList", align 8 ; 24 uses
  %41 = alloca %"class.llvm::SmallVector.650", align 8 ; 14 uses
  %42 = alloca %"class.llvm::SmallVector.650", align 8 ; 18 uses
  %43 = alloca %"class.llvm::AttrBuilder", align 8 ; 8 uses
  %44 = alloca %"class.llvm::AttrBuilder", align 8 ; 8 uses
  %45 = alloca %"class.llvm::WeakTrackingVH", align 8 ; 10 uses
  %46 = alloca %"class.llvm::AttributeList", align 8 ; 26 uses
  %47 = alloca %"class.llvm::AttrBuilder", align 8 ; 17 uses
  %48 = alloca %"class.std::optional.638", align 8 ; 9 uses
  %49 = alloca %"class.std::optional.638", align 8 ; 9 uses
  %50 = alloca %"class.llvm::ConstantRange", align 8 ; 8 uses
  %51 = alloca %"class.llvm::AttributeList", align 8 ; 4 uses
  %52 = alloca %"class.llvm::AttributeList", align 8 ; 4 uses
  %53 = alloca %"class.llvm::AttrBuilder", align 8 ; 6 uses
  %54 = alloca %"class.llvm::AttrBuilder", align 8 ; 6 uses
  %55 = alloca %"class.llvm::WeakTrackingVH", align 8 ; 10 uses
  %56 = alloca %"class.llvm::AttrBuilder", align 8 ; 10 uses
  %57 = alloca %"class.llvm::AttrBuilder", align 8 ; 13 uses
  %58 = alloca %"class.llvm::AttributeList", align 8 ; 10 uses
  %59 = alloca %"class.llvm::AttributeList", align 8 ; 6 uses
  %60 = alloca %"class.llvm::Attribute", align 8  ; 4 uses
  %61 = alloca %"class.llvm::Attribute", align 8  ; 4 uses
  %62 = alloca %"class.llvm::ConstantRange", align 8 ; 8 uses
  %63 = alloca %"class.llvm::Attribute", align 8  ; 4 uses
  %64 = alloca %"class.llvm::Attribute", align 8  ; 4 uses
  %i.i = alloca i64, align 8                      ; 6 uses
  %i.j = alloca [21 x i8], align 16               ; 4 uses
end_hunk_0
