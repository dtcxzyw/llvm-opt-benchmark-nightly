Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/maglev-ir?download=true
inline.NumInlined: 20439
inline.NumDeleted: 7868
loop-unroll.NumCompletelyUnrolled: 37
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 40
begin_hunk_0_@_ZN2v88internal6maglev28ExtendPropertiesBackingStore12GenerateCodeEPNS1_15MaglevAssemblerERKNS1_15ProcessingStateE:bb.a
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %_ZN2v88internal6maglev15MaglevAssembler22TemporaryRegisterScopeC2EPS2_.exit, %_ZN2v88internal6maglev15MaglevAssembler26TemporaryRegisterScopeBaseINS2_22TemporaryRegisterScopeEE7AcquireEv.exit
  %i.an = phi i16 [ %i.am, %_ZN2v88internal6maglev15MaglevAssembler26TemporaryRegisterScopeBaseINS2_22TemporaryRegisterScopeEE7AcquireEv.exit ], [ %i.aa, %_ZN2v88internal6maglev15MaglevAssembler22TemporaryRegisterScopeC2EPS2_.exit ] ; 3 uses
  %storemerge = phi i8 [ %i.aj, %_ZN2v88internal6maglev15MaglevAssembler26TemporaryRegisterScopeBaseINS2_22TemporaryRegisterScopeEE7AcquireEv.exit ], [ %i.m, %_ZN2v88internal6maglev15MaglevAssembler22TemporaryRegisterScopeC2EPS2_.exit ] ; 15 uses
  %i.ao = icmp eq i16 %i.an, 0
  br i1 %i.ao, label %bb.e, label %_ZN2v88internal11RegListBaseINS0_8RegisterEE3setES2_.exit118, !prof !14

bb.e:                                             ; preds = %thread-pre-split
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.343, ptr noundef nonnull @.str.544) #29
  unreachable

_ZN2v88internal11RegListBaseINS0_8RegisterEE3setES2_.exit118: ; preds = %thread-pre-split
  %i.ap = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.an, i1 true) ; 2 uses
  %i.aq = trunc nuw nsw i16 %i.ap to i8           ; 27 uses
  %i.ar = shl nuw i16 1, %i.ap
  %i.as = xor i16 %i.ar, -1
  %i.at = and i16 %i.an, %i.as
  store i16 %i.at, ptr %i.r, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 10 uses
  %i.av = load i32, ptr %i.au, align 4
  %i.aw = add nsw i32 %i.av, 3                    ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.ay = load i64, ptr %i.ax, align 8            ; 3 uses
  %i.az = lshr i64 %i.ay, 32
  %i.ba = trunc i64 %i.az to i16                  ; 2 uses
  %i.bb = lshr i64 %i.ay, 41
  %i.bc = and i64 %i.bb, 8
  %i.bd = and i16 %i.ba, 2
  %.not.i.i.i.i = icmp eq i16 %i.bd, 0
  %.neg.i.i.i = select i1 %.not.i.i.i.i, i64 0, i64 -48
  %i.be = and i16 %i.ba, 6
  %i.bf = icmp eq i16 %i.be, 4
  %.neg2.i.i.i = select i1 %i.bf, i64 -56, i64 0
  %i.bg = trunc i64 %i.ay to i32
  %i.bh = lshr i32 %i.bg, 16
  %i.bi = getelementptr inbounds i8, ptr %0, i64 -8 ; 3 uses
  %narrow.i.i.i.i = sub nsw i32 1, %i.bh
  %i.bj = sext i32 %narrow.i.i.i.i to i64
  %i.bk = getelementptr inbounds [8 x i8], ptr %i.bi, i64 %i.bj
  %i.bl = ptrtoint ptr %i.bk to i64
  %.neg3.i.i.i = sub nsw i64 %.neg2.i.i.i, %i.bc
  %i.bm = add nsw i64 %.neg3.i.i.i, %.neg.i.i.i
  %i.bn = add i64 %i.bm, %i.bl
  %i.bo = inttoptr i64 %i.bn to ptr               ; 3 uses
  %.sroa.0173.0.copyload = load i16, ptr %i.bo, align 8
  %.sroa.8175.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bo, i64 2
  %.sroa.8175.0.copyload = load i16, ptr %.sroa.8175.0..sroa_idx, align 2
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bo, i64 4
  %.sroa.12.0.copyload = load i16, ptr %.sroa.12.0..sroa_idx, align 4
  %i.bp = trunc i64 %i.e to i16
  %i.bq = and i16 %i.bp, 15
  %i.br = shl nuw i16 1, %i.bq
  %i.bs = trunc i64 %i.h to i16
  %i.bt = and i16 %i.bs, 15
  %i.bu = shl nuw i16 1, %i.bt
  %i.bv = or i16 %i.bu, %i.br                     ; 3 uses
  %i.bw = or i16 %i.bv, %.sroa.0173.0.copyload
  %i.bx = or i16 %i.bv, %.sroa.8175.0.copyload
  %i.by = shl nsw i32 %i.aw, 3
  %i.bz = add nsw i32 %i.by, 16                   ; 2 uses
  %i.ca = icmp eq i32 %i.bz, 0
  br i1 %i.ca, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN2v88internal11RegListBaseINS0_8RegisterEE3setES2_.exit118
  call void @_ZN2v88internal9Assembler13arithmetic_opEhNS0_8RegisterES2_i(ptr noundef nonnull align 8 dereferenceable(456) %1, i8 noundef zeroext 51, i8 %i.aq, i8 %i.aq, i32 noundef 4) #28
  br label %_ZN2v88internal6maglev15MaglevAssembler4MoveENS0_8RegisterEi.exit

bb.g:                                             ; preds = %_ZN2v88internal11RegListBaseINS0_8RegisterEE3setES2_.exit118
  %i.cb = zext i32 %i.bz to i64
  call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterENS0_9ImmediateEi(ptr noundef nonnull align 8 dereferenceable(456) %1, i8 %i.aq, i64 %i.cb, i32 noundef 4) #28
  br label %_ZN2v88internal6maglev15MaglevAssembler4MoveENS0_8RegisterEi.exit

_ZN2v88internal6maglev15MaglevAssembler4MoveENS0_8RegisterEi.exit: ; preds = %bb.f, %bb.g
  %.sroa.12.0.insert.ext = zext i16 %.sroa.12.0.copyload to i48
  %.sroa.12.0.insert.shift = shl nuw i48 %.sroa.12.0.insert.ext, 32
  %.sroa.8175.0.insert.ext = zext i16 %i.bx to i48
  %.sroa.8175.0.insert.shift = shl nuw nsw i48 %.sroa.8175.0.insert.ext, 16
  %.sroa.8175.0.insert.insert = or disjoint i48 %.sroa.8175.0.insert.shift, %.sroa.12.0.insert.shift
  %.sroa.0173.0.insert.ext = zext i16 %i.bw to i48
  %.sroa.0173.0.insert.insert = or disjoint i48 %.sroa.8175.0.insert.insert, %.sroa.0173.0.insert.ext
  call void @_ZN2v88internal6maglev15MaglevAssembler8AllocateENS1_16RegisterSnapshotENS0_8RegisterES4_NS0_14AllocationTypeENS0_19AllocationAlignmentE(ptr noundef nonnull align 8 dereferenceable(456) %1, i48 %.sroa.0173.0.insert.insert, i8 %storemerge, i8 %i.aq, i8 noundef zeroext 0, i8 noundef zeroext 0) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  store ptr %1, ptr %7, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.cd = load ptr, ptr %i.p, align 8             ; 5 uses
  store ptr %i.cd, ptr %i.cc, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.cd, null
  br i1 %.not.i.i.i, label %_ZN2v88internal6maglev15MaglevAssembler22TemporaryRegisterScopeC2EPS2_.exit.thread.i, label %_ZN2v88internal6maglev15MaglevAssembler22TemporaryRegisterScopeC2EPS2_.exit.i

_ZN2v88internal6maglev15MaglevAssembler22TemporaryRegisterScopeC2EPS2_.exit.thread.i: ; preds = %_ZN2v88internal6maglev15MaglevAssembler4MoveENS0_8RegisterEi.exit
  store i16 0, ptr %i.ce, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %7, i64 18
  store i16 0, ptr %i.cf, align 2
  store ptr %7, ptr %i.p, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %7, i64 20
  %i.ch = getelementptr inbounds nuw i8, ptr %7, i64 21
  store i8 1, ptr %i.ch, align 1
  br label %_ZN2v88internal6maglev15MaglevAssembler22TemporaryRegisterScope14AcquireScratchEv.exit.i

_ZN2v88internal6maglev15MaglevAssembler22TemporaryRegisterScopeC2EPS2_.exit.i: ; preds = %_ZN2v88internal6maglev15MaglevAssembler4MoveENS0_8RegisterEi.exit
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.cj = load <2 x i16>, ptr %i.ci, align 8
  store <2 x i16> %i.cj, ptr %i.ce, align 8
  store ptr %7, ptr %i.p, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %7, i64 20 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cd, i64 20
  %i.cm = load i8, ptr %i.cl, align 4, !range !18, !noundef !16 ; 2 uses
  store i8 %i.cm, ptr %i.ck, align 4
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cd, i64 21
  %i.co = load i8, ptr %i.cn, align 1, !range !18, !noundef !16
  %i.cp = trunc nuw i8 %i.cm to i1
  %i.cq = getelementptr inbounds nuw i8, ptr %7, i64 21
  store i8 %i.co, ptr %i.cq, align 1
  br i1 %i.cp, label %_ZN2v88internal6maglev15MaglevAssembler22TemporaryRegisterScope14AcquireScratchEv.exit.i, label %bb.h, !prof !21

bb.h:                                             ; preds = %_ZN2v88internal6maglev15MaglevAssembler22TemporaryRegisterScopeC2EPS2_.exit.i
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.343, ptr noundef nonnull @.str.462) #29
  unreachable

_ZN2v88internal6maglev15MaglevAssembler22TemporaryRegisterScope14AcquireScratchEv.exit.i: ; preds = %_ZN2v88internal6maglev15MaglevAssembler22TemporaryRegisterScopeC2EPS2_.exit.i, %_ZN2v88internal6maglev15MaglevAssembler22TemporaryRegisterScopeC2EPS2_.exit.thread.i
  %i.cr = phi ptr [ %i.cg, %_ZN2v88internal6maglev15MaglevAssembler22TemporaryRegisterScopeC2EPS2_.exit.thread.i ], [ %i.ck, %_ZN2v88internal6maglev15MaglevAssembler22TemporaryRegisterScopeC2EPS2_.exit.i ]
  store i8 0, ptr %i.cr, align 4
  call void @_ZN2v88internal14MacroAssembler14LoadTaggedRootENS0_8RegisterENS0_9RootIndexE(ptr noundef nonnull align 8 dereferenceable(456) %1, i8 10, i16 noundef zeroext 22) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store i64 0, ptr %6, align 8
  switch i8 %storemerge, label %_ZN2v88internal6maglev15MaglevAssembler22TemporaryRegisterScope14AcquireScratchEv.exit._ZN2v88internal6maglev15MaglevAssembler30StoreTaggedFieldNoWriteBarrierENS0_8RegisterEiS3_.exit_crit_edge.i [
    i8 4, label %bb.i
    i8 12, label %bb.i
  ]

_ZN2v88internal6maglev15MaglevAssembler22TemporaryRegisterScope14AcquireScratchEv.exit._ZN2v88internal6maglev15MaglevAssembler30StoreTaggedFieldNoWriteBarrierENS0_8RegisterEiS3_.exit_crit_edge.i: ; preds = %_ZN2v88internal6maglev15MaglevAssembler22TemporaryRegisterScope14AcquireScratchEv.exit.i
  %.pre.i = and i8 %storemerge, 7
  br label %_ZN2v88internal11RegListBaseINS0_8RegisterEE3setES2_.exit135

bb.i:                                             ; preds = %_ZN2v88internal6maglev15MaglevAssembler22TemporaryRegisterScope14AcquireScratchEv.exit.i, %_ZN2v88internal6maglev15MaglevAssembler22TemporaryRegisterScope14AcquireScratchEv.exit.i
  %scevgep.i.i.i = getelementptr inbounds nuw i8, ptr %6, i64 3
  %i.cs = and i8 %storemerge, 7                   ; 2 uses
  %i.ct = or disjoint i8 %i.cs, 32
  store i8 %i.ct, ptr %scevgep.i.i.i, align 1
  br label %_ZN2v88internal11RegListBaseINS0_8RegisterEE3setES2_.exit135

_ZN2v88internal11RegListBaseINS0_8RegisterEE3setES2_.exit135: ; preds = %_ZN2v88internal6maglev15MaglevAssembler22TemporaryRegisterScope14AcquireScratchEv.exit._ZN2v88internal6maglev15MaglevAssembler30StoreTaggedFieldNoWriteBarrierENS0_8RegisterEiS3_.exit_crit_edge.i, %bb.i
  %.pre-phi.i = phi i8 [ %.pre.i, %_ZN2v88internal6maglev15MaglevAssembler22TemporaryRegisterScope14AcquireScratchEv.exit._ZN2v88internal6maglev15MaglevAssembler30StoreTaggedFieldNoWriteBarrierENS0_8RegisterEiS3_.exit_crit_edge.i ], [ %i.cs, %bb.i ]
  %i.cu = phi i64 [ 1, %_ZN2v88internal6maglev15MaglevAssembler22TemporaryRegisterScope14AcquireScratchEv.exit._ZN2v88internal6maglev15MaglevAssembler30StoreTaggedFieldNoWriteBarrierENS0_8RegisterEiS3_.exit_crit_edge.i ], [ 2, %bb.i ] ; 2 uses
  %i.cv = lshr i8 %storemerge, 3                  ; 8 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %6, i64 2 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %6, i64 1
  %i.cy = or disjoint i8 %.pre-phi.i, 64
  store i8 %i.cy, ptr %i.cw, align 2
  store i8 %i.cv, ptr %i.cx, align 1
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cw, i64 %i.cu
  store i8 -1, ptr %i.cz, align 1
  %i.da = add nuw nsw i64 %i.cu, 1
  %i.db = inttoptr i64 %i.da to ptr
  %.fca.0.load.i.i.i = load i64, ptr %6, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @_ZN2v88internal14MacroAssembler16StoreTaggedFieldENS0_7OperandENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(456) %1, i64 %.fca.0.load.i.i.i, ptr nonnull %i.db, i8 10) #28
  %i.dc = load ptr, ptr %i.cc, align 8
  %i.dd = load ptr, ptr %7, align 8
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 448
  store ptr %i.dc, ptr %i.de, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  %i.df = load i32, ptr %i.au, align 4
  %i.dg = icmp sgt i32 %i.df, 0
  br i1 %i.dg, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN2v88internal11RegListBaseINS0_8RegisterEE3setES2_.exit135
  %i.dh = zext nneg i8 %storemerge to i16
  %i.di = shl nuw i16 1, %i.dh
  %i.dj = or i16 %i.bv, %i.di                     ; 2 uses
  %i.dk = load i64, ptr %i.ax, align 8            ; 3 uses
  %i.dl = lshr i64 %i.dk, 32
  %i.dm = trunc i64 %i.dl to i16                  ; 2 uses
  %i.dn = and i16 %i.dm, 6
  %i.do = icmp eq i16 %i.dn, 4
  %.neg2.i.i.i121 = select i1 %i.do, i64 -56, i64 0
  %i.dp = lshr i64 %i.dk, 41
  %i.dq = and i64 %i.dp, 8
  %.neg3.i.i.i123 = sub nsw i64 %.neg2.i.i.i121, %i.dq
  %i.dr = and i16 %i.dm, 2
  %.not.i.i.i.i119 = icmp eq i16 %i.dr, 0
  %.neg.i.i.i120 = select i1 %.not.i.i.i.i119, i64 0, i64 -48
  %i.ds = add nsw i64 %.neg3.i.i.i123, %.neg.i.i.i120
  %i.dt = trunc i64 %i.dk to i32
  %i.du = lshr i32 %i.dt, 16
  %narrow.i.i.i.i122 = sub nsw i32 1, %i.du
  %i.dv = sext i32 %narrow.i.i.i.i122 to i64
  %i.dw = getelementptr inbounds [8 x i8], ptr %i.bi, i64 %i.dv
  %i.dx = ptrtoint ptr %i.dw to i64
  %i.dy = add i64 %i.ds, %i.dx
  %i.dz = inttoptr i64 %i.dy to ptr               ; 3 uses
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dz, i64 2
  %.sroa.10.0.copyload = load i16, ptr %.sroa.10.0..sroa_idx, align 2
  %i.ea = or i16 %i.dj, %.sroa.10.0.copyload
  %.sroa.0168.0.copyload = load i16, ptr %i.dz, align 8
  %i.eb = or i16 %i.dj, %.sroa.0168.0.copyload
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dz, i64 4
  %.sroa.16.0.copyload = load i16, ptr %.sroa.16.0..sroa_idx, align 4
  %i.ec = and i8 %i.i, 7                          ; 2 uses
  %i.ed = or disjoint i8 %i.ec, -128
  %i.ee = lshr i8 %i.i, 3                         ; 4 uses
  %i.ef = or disjoint i8 %i.ec, 64
  %.sroa.16.0.insert.ext = zext i16 %.sroa.16.0.copyload to i48
  %.sroa.16.0.insert.shift = shl nuw i48 %.sroa.16.0.insert.ext, 32
  %.sroa.10.0.insert.ext = zext i16 %i.ea to i48
  %.sroa.10.0.insert.shift = shl nuw nsw i48 %.sroa.10.0.insert.ext, 16
  %.sroa.10.0.insert.insert = or disjoint i48 %.sroa.10.0.insert.shift, %.sroa.16.0.insert.shift
  %.sroa.0168.0.insert.ext = zext i16 %i.eb to i48
  %.sroa.0168.0.insert.insert = or disjoint i48 %.sroa.10.0.insert.insert, %.sroa.0168.0.insert.ext ; 2 uses
  switch i8 %i.i, label %.lr.ph.split [
    i8 4, label %.lr.ph.split.us
    i8 12, label %.lr.ph.split.us
  ]

.lr.ph.split.us:                                  ; preds = %.lr.ph, %.lr.ph
  %.sroa.0.1.insert.ext224 = zext nneg i8 %i.ee to i64
  %.sroa.0.1.insert.shift225 = shl nuw nsw i64 %.sroa.0.1.insert.ext224, 8
  %i.eg = or disjoint i64 8650752, %.sroa.0.1.insert.shift225
  %.sroa.0.1.insert.ext229 = zext nneg i8 %i.ee to i64
  %.sroa.0.1.insert.shift230 = shl nuw nsw i64 %.sroa.0.1.insert.ext229, 8
  %i.eh = or disjoint i64 4456448, %.sroa.0.1.insert.shift230
  br label %_ZN2v88internal6maglev15MaglevAssembler35LoadTaggedFieldWithoutDecompressingENS0_8RegisterES3_i.exit.us

_ZN2v88internal6maglev15MaglevAssembler35LoadTaggedFieldWithoutDecompressingENS0_8RegisterES3_i.exit.us: ; preds = %_ZN2v88internal6maglev15MaglevAssembler35LoadTaggedFieldWithoutDecompressingENS0_8RegisterES3_i.exit.us, %.lr.ph.split.us
  %.0211.us = phi i32 [ 0, %.lr.ph.split.us ], [ %i.en, %_ZN2v88internal6maglev15MaglevAssembler35LoadTaggedFieldWithoutDecompressingENS0_8RegisterES3_i.exit.us ] ; 3 uses
  %i.ei = shl nuw nsw i32 %.0211.us, 3            ; 2 uses
  %i.ej = add nuw nsw i32 %i.ei, 16
  %i.ek = add nuw nsw i32 %i.ei, 15
  %i.el = icmp samesign ult i32 %.0211.us, 15     ; 2 uses
  %.sroa.0.4.insert.ext259 = zext nneg i32 %i.ek to i64
  %.sroa.0.4.insert.shift260 = shl nuw nsw i64 %.sroa.0.4.insert.ext259, 32
  %. = select i1 %i.el, i64 %i.eh, i64 %i.eg
  %i.em = or disjoint i64 %., %.sroa.0.4.insert.shift260
  %.sroa.0.0 = or disjoint i64 %i.em, 603979776
  %.fca.1.load.i.i.us = select i1 %i.el, ptr inttoptr (i64 3 to ptr), ptr inttoptr (i64 6 to ptr)
  call void @_ZN2v88internal14MacroAssembler35LoadTaggedFieldWithoutDecompressingENS0_8RegisterENS0_7OperandE(ptr noundef nonnull align 8 dereferenceable(456) %1, i8 %i.aq, i64 %.sroa.0.0, ptr nonnull %.fca.1.load.i.i.us) #28
  call void @_ZN2v88internal6maglev15MaglevAssembler32StoreTaggedFieldWithWriteBarrierENS0_8RegisterEiS3_NS1_16RegisterSnapshotENS2_17ValueIsCompressedENS2_13ValueCanBeSmiE(ptr noundef nonnull align 8 dereferenceable(456) %1, i8 %storemerge, i32 noundef %i.ej, i8 %i.aq, i48 %.sroa.0168.0.insert.insert, i32 noundef 1, i32 noundef 1) #28
  %i.en = add nuw nsw i32 %.0211.us, 1            ; 2 uses
  %i.eo = load i32, ptr %i.au, align 4
  %i.ep = icmp slt i32 %i.en, %i.eo
  br i1 %i.ep, label %_ZN2v88internal6maglev15MaglevAssembler35LoadTaggedFieldWithoutDecompressingENS0_8RegisterES3_i.exit.us, label %._crit_edge, !llvm.loop !131

.lr.ph.split:                                     ; preds = %.lr.ph
  %.sroa.0.2.insert.ext = zext i8 %i.ed to i64
  %.sroa.0.2.insert.shift = shl nuw nsw i64 %.sroa.0.2.insert.ext, 16
  %.sroa.0.1.insert.ext = zext nneg i8 %i.ee to i64
  %.sroa.0.1.insert.shift = shl nuw nsw i64 %.sroa.0.1.insert.ext, 8
  %.sroa.0.1.insert.insert = or disjoint i64 %.sroa.0.2.insert.shift, %.sroa.0.1.insert.shift
  %.sroa.0.2.insert.ext234 = zext nneg i8 %i.ef to i64
  %.sroa.0.2.insert.shift235 = shl nuw nsw i64 %.sroa.0.2.insert.ext234, 16
  %.sroa.0.1.insert.ext219 = zext nneg i8 %i.ee to i64
  %.sroa.0.1.insert.shift220 = shl nuw nsw i64 %.sroa.0.1.insert.ext219, 8
  %.sroa.0.1.insert.insert222 = or disjoint i64 %.sroa.0.2.insert.shift235, %.sroa.0.1.insert.shift220
  br label %_ZN2v88internal6maglev15MaglevAssembler35LoadTaggedFieldWithoutDecompressingENS0_8RegisterES3_i.exit

._crit_edge:                                      ; preds = %_ZN2v88internal6maglev15MaglevAssembler35LoadTaggedFieldWithoutDecompressingENS0_8RegisterES3_i.exit.us, %_ZN2v88internal6maglev15MaglevAssembler35LoadTaggedFieldWithoutDecompressingENS0_8RegisterES3_i.exit, %_ZN2v88internal11RegListBaseINS0_8RegisterEE3setES2_.exit135
  call void @_ZN2v88internal14MacroAssembler8LoadRootENS0_8RegisterENS0_9RootIndexE(ptr noundef nonnull align 8 dereferenceable(436) %1, i8 %i.aq, i16 noundef zeroext 0) #28
  %i.eq = and i8 %storemerge, 7                   ; 3 uses
  %i.er = or disjoint i8 %i.eq, 32
  %i.es = or disjoint i8 %i.eq, -128              ; 6 uses
  %i.et = or disjoint i8 %i.eq, 64                ; 7 uses
  %i.eu = load i32, ptr %i.au, align 4
  %i.ev = shl nsw i32 %i.eu, 3                    ; 3 uses
  %i.ew = add nsw i32 %i.ev, 15                   ; 4 uses
  switch i8 %storemerge, label %.split [
    i8 4, label %.split.us
    i8 12, label %.split.us
  ]

.split.us:                                        ; preds = %._crit_edge, %._crit_edge
  %i.ex = sext i32 %i.ev to i64
  %i.ey = add nsw i64 %i.ex, 136
  %i.ez = icmp ult i64 %i.ey, 256                 ; 3 uses
  %.sroa.0264.1.insert.ext281 = zext nneg i8 %i.cv to i64
  %.sroa.0264.1.insert.shift282 = shl nuw nsw i64 %.sroa.0264.1.insert.ext281, 8
  %i.fa = and i32 %i.ew, 255
  %.sink471 = select i1 %i.ez, i32 %i.fa, i32 %i.ew
  %.sroa.0264.2.insert.shift337.pn.in.in = select i1 %i.ez, i8 %i.et, i8 %i.es
  %.fca.1.load.i.i138.in.us = select i1 %i.ez, i64 3, i64 6
  %.sroa.0264.2.insert.shift337.pn.in = zext i8 %.sroa.0264.2.insert.shift337.pn.in.in to i64
  %.sroa.0264.2.insert.shift337.pn = shl nuw nsw i64 %.sroa.0264.2.insert.shift337.pn.in, 16
  %.sink470 = or disjoint i64 %.sroa.0264.2.insert.shift337.pn, %.sroa.0264.1.insert.shift282
  %.sroa.0264.4.insert.ext431 = zext i32 %.sink471 to i64
  %.sroa.0264.4.insert.shift432 = shl nuw i64 %.sroa.0264.4.insert.ext431, 32
  %i.fb = or disjoint i64 %.sink470, %.sroa.0264.4.insert.shift432
  %.sroa.0264.0 = or disjoint i64 %i.fb, 603979776
  %.fca.1.load.i.i138.us = inttoptr i64 %.fca.1.load.i.i138.in.us to ptr
  call void @_ZN2v88internal14MacroAssembler16StoreTaggedFieldENS0_7OperandENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(456) %1, i64 %.sroa.0264.0, ptr nonnull %.fca.1.load.i.i138.us, i8 %i.aq) #28
  %i.fc = load i32, ptr %i.au, align 4
  %i.fd = shl i32 %i.fc, 3                        ; 2 uses
  %i.fe = add i32 %i.fd, 8
  %i.ff = add i32 %i.fd, 23                       ; 2 uses
  %i.fg = sext i32 %i.fe to i64
  %i.fh = add nsw i64 %i.fg, 136
  %i.fi = icmp ult i64 %i.fh, 256                 ; 3 uses
  %.sroa.0264.1.insert.ext291 = zext nneg i8 %i.cv to i64
  %.sroa.0264.1.insert.shift292 = shl nuw nsw i64 %.sroa.0264.1.insert.ext291, 8
  %i.fj = and i32 %i.ff, 255
  %.sink473 = select i1 %i.fi, i32 %i.fj, i32 %i.ff
  %.sroa.0264.2.insert.shift347.pn.in.in = select i1 %i.fi, i8 %i.et, i8 %i.es
  %.fca.1.load.i.i138.in.us.1 = select i1 %i.fi, i64 3, i64 6
  %.sroa.0264.2.insert.shift347.pn.in = zext i8 %.sroa.0264.2.insert.shift347.pn.in.in to i64
  %.sroa.0264.2.insert.shift347.pn = shl nuw nsw i64 %.sroa.0264.2.insert.shift347.pn.in, 16
  %.sink472 = or disjoint i64 %.sroa.0264.2.insert.shift347.pn, %.sroa.0264.1.insert.shift292
  %.sroa.0264.4.insert.ext436 = zext i32 %.sink473 to i64
  %.sroa.0264.4.insert.shift437 = shl nuw i64 %.sroa.0264.4.insert.ext436, 32
  %i.fk = or disjoint i64 %.sink472, %.sroa.0264.4.insert.shift437
  %.sroa.0264.2 = or disjoint i64 %i.fk, 603979776
  %.fca.1.load.i.i138.us.1 = inttoptr i64 %.fca.1.load.i.i138.in.us.1 to ptr
  call void @_ZN2v88internal14MacroAssembler16StoreTaggedFieldENS0_7OperandENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(456) %1, i64 %.sroa.0264.2, ptr nonnull %.fca.1.load.i.i138.us.1, i8 %i.aq) #28
  %i.fl = load i32, ptr %i.au, align 4
  %i.fm = shl i32 %i.fl, 3                        ; 2 uses
  %i.fn = add i32 %i.fm, 16
  %i.fo = add i32 %i.fm, 31                       ; 2 uses
  %i.fp = sext i32 %i.fn to i64
  %i.fq = add nsw i64 %i.fp, 136
  %i.fr = icmp ult i64 %i.fq, 256                 ; 3 uses
  %.sroa.0264.1.insert.ext301 = zext nneg i8 %i.cv to i64
  %.sroa.0264.1.insert.shift302 = shl nuw nsw i64 %.sroa.0264.1.insert.ext301, 8
  %i.fs = and i32 %i.fo, 255
  %.sink475 = select i1 %i.fr, i32 %i.fs, i32 %i.fo
  %.sroa.0264.2.insert.shift357.pn.in.in = select i1 %i.fr, i8 %i.et, i8 %i.es
  %.fca.1.load.i.i138.in.us.2 = select i1 %i.fr, i64 3, i64 6
  %.sroa.0264.2.insert.shift357.pn.in = zext i8 %.sroa.0264.2.insert.shift357.pn.in.in to i64
  %.sroa.0264.2.insert.shift357.pn = shl nuw nsw i64 %.sroa.0264.2.insert.shift357.pn.in, 16
  %.sink474 = or disjoint i64 %.sroa.0264.2.insert.shift357.pn, %.sroa.0264.1.insert.shift302
  %.sroa.0264.4.insert.ext441 = zext i32 %.sink475 to i64
  %.sroa.0264.4.insert.shift442 = shl nuw i64 %.sroa.0264.4.insert.ext441, 32
  %i.ft = or disjoint i64 %.sink474, %.sroa.0264.4.insert.shift442
  %.sroa.0264.3 = or disjoint i64 %i.ft, 603979776
  br label %.split214.us

.split:                                           ; preds = %._crit_edge
  %i.fu = sext i32 %i.ev to i64
  %i.fv = add nsw i64 %i.fu, 136
  %i.fw = icmp ult i64 %i.fv, 256
  %.sroa.0264.1.insert.ext271 = zext nneg i8 %i.cv to i64
  %.sroa.0264.1.insert.shift272 = shl nuw nsw i64 %.sroa.0264.1.insert.ext271, 8
  br i1 %i.fw, label %.thread.i.i140, label %bb.j

_ZN2v88internal6maglev15MaglevAssembler35LoadTaggedFieldWithoutDecompressingENS0_8RegisterES3_i.exit: ; preds = %.lr.ph.split, %_ZN2v88internal6maglev15MaglevAssembler35LoadTaggedFieldWithoutDecompressingENS0_8RegisterES3_i.exit
  %.0211 = phi i32 [ 0, %.lr.ph.split ], [ %i.gc, %_ZN2v88internal6maglev15MaglevAssembler35LoadTaggedFieldWithoutDecompressingENS0_8RegisterES3_i.exit ] ; 3 uses
  %i.fx = shl nuw nsw i32 %.0211, 3               ; 2 uses
  %i.fy = add nuw nsw i32 %i.fx, 16
  %i.fz = add nuw nsw i32 %i.fx, 15               ; 2 uses
  %i.ga = icmp samesign ult i32 %.0211, 15        ; 2 uses
  %i.gb = shl nuw i32 %i.fz, 24
  %.sroa.0.3.insert.shift255 = zext i32 %i.gb to i64
  %.sroa.0.3.insert.insert257 = or disjoint i64 %.sroa.0.1.insert.insert222, %.sroa.0.3.insert.shift255
  %.sroa.0.3.insert.ext = zext nneg i32 %i.fz to i64
  %.sroa.0.3.insert.shift = shl nuw nsw i64 %.sroa.0.3.insert.ext, 24
  %.sroa.0.3.insert.insert = or disjoint i64 %.sroa.0.1.insert.insert, %.sroa.0.3.insert.shift
  %.sroa.0.1 = select i1 %i.ga, i64 %.sroa.0.3.insert.insert257, i64 %.sroa.0.3.insert.insert
  %.fca.1.load.i.i = select i1 %i.ga, ptr inttoptr (i64 2 to ptr), ptr inttoptr (i64 5 to ptr)
  call void @_ZN2v88internal14MacroAssembler35LoadTaggedFieldWithoutDecompressingENS0_8RegisterENS0_7OperandE(ptr noundef nonnull align 8 dereferenceable(456) %1, i8 %i.aq, i64 %.sroa.0.1, ptr nonnull %.fca.1.load.i.i) #28
  call void @_ZN2v88internal6maglev15MaglevAssembler32StoreTaggedFieldWithWriteBarrierENS0_8RegisterEiS3_NS1_16RegisterSnapshotENS2_17ValueIsCompressedENS2_13ValueCanBeSmiE(ptr noundef nonnull align 8 dereferenceable(456) %1, i8 %storemerge, i32 noundef %i.fy, i8 %i.aq, i48 %.sroa.0168.0.insert.insert, i32 noundef 1, i32 noundef 1) #28
  %i.gc = add nuw nsw i32 %.0211, 1               ; 2 uses
  %i.gd = load i32, ptr %i.au, align 4
  %i.ge = icmp slt i32 %i.gc, %i.gd
  br i1 %i.ge, label %_ZN2v88internal6maglev15MaglevAssembler35LoadTaggedFieldWithoutDecompressingENS0_8RegisterES3_i.exit, label %._crit_edge, !llvm.loop !131

.split214.us:                                     ; preds = %bb.l, %.thread.i.i140.2, %.split.us
  %.fca.1.load.i.i138.in.us.2.sink = phi i64 [ %.fca.1.load.i.i138.in.us.2, %.split.us ], [ 2, %.thread.i.i140.2 ], [ 5, %bb.l ]
  %.sroa.0264.3.sink = phi i64 [ %.sroa.0264.3, %.split.us ], [ %.sroa.0264.3.insert.insert419, %.thread.i.i140.2 ], [ %.sroa.0264.3.insert.insert389, %bb.l ]
  %.fca.1.load.i.i138.us.2 = inttoptr i64 %.fca.1.load.i.i138.in.us.2.sink to ptr
  call void @_ZN2v88internal14MacroAssembler16StoreTaggedFieldENS0_7OperandENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(456) %1, i64 %.sroa.0264.3.sink, ptr nonnull %.fca.1.load.i.i138.us.2, i8 %i.aq) #28
  %i.gf = load i32, ptr %i.au, align 4
  %i.gg = icmp eq i32 %i.gf, 0
  br i1 %i.gg, label %bb.m, label %bb.o

.thread.i.i140:                                   ; preds = %.split
  %.sroa.0264.2.insert.ext326 = zext nneg i8 %i.et to i64
  %.sroa.0264.2.insert.shift327 = shl nuw nsw i64 %.sroa.0264.2.insert.ext326, 16
  %i.gh = shl i32 %i.ew, 24
  %.sroa.0264.3.insert.shift407 = zext i32 %i.gh to i64
  %i.gi = or disjoint i64 %.sroa.0264.2.insert.shift327, %.sroa.0264.3.insert.shift407
  br label %_ZN2v88internal6maglev15MaglevAssembler30StoreTaggedFieldNoWriteBarrierENS0_8RegisterEiS3_.exit

bb.j:                                             ; preds = %.split
  %.sroa.0264.2.insert.ext = zext i8 %i.es to i64
  %.sroa.0264.2.insert.shift = shl nuw nsw i64 %.sroa.0264.2.insert.ext, 16
  %.sroa.0264.3.insert.ext = zext i32 %i.ew to i64
  %.sroa.0264.3.insert.shift = shl nuw nsw i64 %.sroa.0264.3.insert.ext, 24
  %i.gj = or disjoint i64 %.sroa.0264.2.insert.shift, %.sroa.0264.3.insert.shift
  br label %_ZN2v88internal6maglev15MaglevAssembler30StoreTaggedFieldNoWriteBarrierENS0_8RegisterEiS3_.exit

_ZN2v88internal6maglev15MaglevAssembler30StoreTaggedFieldNoWriteBarrierENS0_8RegisterEiS3_.exit: ; preds = %.thread.i.i140, %bb.j
  %.pn = phi i64 [ %i.gi, %.thread.i.i140 ], [ %i.gj, %bb.j ]
  %.fca.1.load.i.i138.in = phi i64 [ 2, %.thread.i.i140 ], [ 5, %bb.j ]
  %.sroa.0264.1 = or disjoint i64 %.pn, %.sroa.0264.1.insert.shift272
  %.fca.1.load.i.i138 = inttoptr i64 %.fca.1.load.i.i138.in to ptr
  call void @_ZN2v88internal14MacroAssembler16StoreTaggedFieldENS0_7OperandENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(456) %1, i64 %.sroa.0264.1, ptr nonnull %.fca.1.load.i.i138, i8 %i.aq) #28
  %i.gk = load i32, ptr %i.au, align 4
  %i.gl = shl i32 %i.gk, 3                        ; 2 uses
  %i.gm = add i32 %i.gl, 8
  %i.gn = add i32 %i.gl, 23                       ; 2 uses
  %i.go = sext i32 %i.gm to i64
  %i.gp = add nsw i64 %i.go, 136
  %i.gq = icmp ult i64 %i.gp, 256
  %.sroa.0264.1.insert.ext311 = zext nneg i8 %i.cv to i64
  %.sroa.0264.1.insert.shift312 = shl nuw nsw i64 %.sroa.0264.1.insert.ext311, 8
  br i1 %i.gq, label %.thread.i.i140.1, label %bb.k

bb.k:                                             ; preds = %_ZN2v88internal6maglev15MaglevAssembler30StoreTaggedFieldNoWriteBarrierENS0_8RegisterEiS3_.exit
  %.sroa.0264.2.insert.ext361 = zext i8 %i.es to i64
  %.sroa.0264.2.insert.shift362 = shl nuw nsw i64 %.sroa.0264.2.insert.ext361, 16
  %.sroa.0264.3.insert.ext381 = zext i32 %i.gn to i64
  %.sroa.0264.3.insert.shift382 = shl nuw nsw i64 %.sroa.0264.3.insert.ext381, 24
  %i.gr = or disjoint i64 %.sroa.0264.2.insert.shift362, %.sroa.0264.3.insert.shift382
  br label %_ZN2v88internal6maglev15MaglevAssembler30StoreTaggedFieldNoWriteBarrierENS0_8RegisterEiS3_.exit.1

.thread.i.i140.1:                                 ; preds = %_ZN2v88internal6maglev15MaglevAssembler30StoreTaggedFieldNoWriteBarrierENS0_8RegisterEiS3_.exit
  %.sroa.0264.2.insert.ext366 = zext nneg i8 %i.et to i64
  %.sroa.0264.2.insert.shift367 = shl nuw nsw i64 %.sroa.0264.2.insert.ext366, 16
  %i.gs = shl i32 %i.gn, 24
  %.sroa.0264.3.insert.shift412 = zext i32 %i.gs to i64
  %i.gt = or disjoint i64 %.sroa.0264.2.insert.shift367, %.sroa.0264.3.insert.shift412
  br label %_ZN2v88internal6maglev15MaglevAssembler30StoreTaggedFieldNoWriteBarrierENS0_8RegisterEiS3_.exit.1

_ZN2v88internal6maglev15MaglevAssembler30StoreTaggedFieldNoWriteBarrierENS0_8RegisterEiS3_.exit.1: ; preds = %.thread.i.i140.1, %bb.k
  %.pn477 = phi i64 [ %i.gt, %.thread.i.i140.1 ], [ %i.gr, %bb.k ]
  %.fca.1.load.i.i138.in.1 = phi i64 [ 2, %.thread.i.i140.1 ], [ 5, %bb.k ]
  %.sroa.0264.4 = or disjoint i64 %.pn477, %.sroa.0264.1.insert.shift312
  %.fca.1.load.i.i138.1 = inttoptr i64 %.fca.1.load.i.i138.in.1 to ptr
  call void @_ZN2v88internal14MacroAssembler16StoreTaggedFieldENS0_7OperandENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(456) %1, i64 %.sroa.0264.4, ptr nonnull %.fca.1.load.i.i138.1, i8 %i.aq) #28
  %i.gu = load i32, ptr %i.au, align 4
  %i.gv = shl i32 %i.gu, 3                        ; 2 uses
  %i.gw = add i32 %i.gv, 16
  %i.gx = add i32 %i.gv, 31                       ; 2 uses
  %i.gy = sext i32 %i.gw to i64
  %i.gz = add nsw i64 %i.gy, 136
  %i.ha = icmp ult i64 %i.gz, 256
  %.sroa.0264.1.insert.ext321 = zext nneg i8 %i.cv to i64
  %.sroa.0264.1.insert.shift322 = shl nuw nsw i64 %.sroa.0264.1.insert.ext321, 8 ; 2 uses
  br i1 %i.ha, label %.thread.i.i140.2, label %bb.l

bb.l:                                             ; preds = %_ZN2v88internal6maglev15MaglevAssembler30StoreTaggedFieldNoWriteBarrierENS0_8RegisterEiS3_.exit.1
  %.sroa.0264.2.insert.ext371 = zext i8 %i.es to i64
  %.sroa.0264.2.insert.shift372 = shl nuw nsw i64 %.sroa.0264.2.insert.ext371, 16
  %.sroa.0264.3.insert.ext386 = zext i32 %i.gx to i64
  %.sroa.0264.3.insert.shift387 = shl nuw nsw i64 %.sroa.0264.3.insert.ext386, 24
  %i.hb = or disjoint i64 %.sroa.0264.2.insert.shift372, %.sroa.0264.3.insert.shift387
  %.sroa.0264.3.insert.insert389 = or disjoint i64 %i.hb, %.sroa.0264.1.insert.shift322
  br label %.split214.us

.thread.i.i140.2:                                 ; preds = %_ZN2v88internal6maglev15MaglevAssembler30StoreTaggedFieldNoWriteBarrierENS0_8RegisterEiS3_.exit.1
  %.sroa.0264.2.insert.ext376 = zext nneg i8 %i.et to i64
  %.sroa.0264.2.insert.shift377 = shl nuw nsw i64 %.sroa.0264.2.insert.ext376, 16
  %i.hc = shl i32 %i.gx, 24
  %.sroa.0264.3.insert.shift417 = zext i32 %i.hc to i64
  %i.hd = or disjoint i64 %.sroa.0264.2.insert.shift377, %.sroa.0264.3.insert.shift417
  %.sroa.0264.3.insert.insert419 = or disjoint i64 %i.hd, %.sroa.0264.1.insert.shift322
  br label %.split214.us

bb.m:                                             ; preds = %.split214.us
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.he = getelementptr inbounds nuw i8, ptr %5, i64 1
  %i.hf = getelementptr inbounds nuw i8, ptr %5, i64 2 ; 2 uses
  store i64 0, ptr %5, align 8
  switch i8 %i.f, label %._ZN2v88internal6maglev15MaglevAssembler15LoadTaggedFieldENS0_8RegisterES3_i.exit_crit_edge [
    i8 4, label %bb.n
    i8 12, label %bb.n
  ]

._ZN2v88internal6maglev15MaglevAssembler15LoadTaggedFieldENS0_8RegisterES3_i.exit_crit_edge: ; preds = %bb.m
  %.pre = and i8 %i.f, 7
  br label %_ZN2v88internal6maglev15MaglevAssembler15LoadTaggedFieldENS0_8RegisterES3_i.exit

bb.n:                                             ; preds = %bb.m, %bb.m
  %scevgep.i.i141 = getelementptr inbounds nuw i8, ptr %5, i64 3
  %i.hg = and i8 %i.f, 7                          ; 2 uses
  %i.hh = or disjoint i8 %i.hg, 32
  store i8 %i.hh, ptr %scevgep.i.i141, align 1
  br label %_ZN2v88internal6maglev15MaglevAssembler15LoadTaggedFieldENS0_8RegisterES3_i.exit

_ZN2v88internal6maglev15MaglevAssembler15LoadTaggedFieldENS0_8RegisterES3_i.exit: ; preds = %._ZN2v88internal6maglev15MaglevAssembler15LoadTaggedFieldENS0_8RegisterES3_i.exit_crit_edge, %bb.n
  %.pre-phi = phi i8 [ %.pre, %._ZN2v88internal6maglev15MaglevAssembler15LoadTaggedFieldENS0_8RegisterES3_i.exit_crit_edge ], [ %i.hg, %bb.n ]
  %i.hi = phi i64 [ 1, %._ZN2v88internal6maglev15MaglevAssembler15LoadTaggedFieldENS0_8RegisterES3_i.exit_crit_edge ], [ 2, %bb.n ] ; 2 uses
  %i.hj = lshr i8 %i.f, 3
  %i.hk = or disjoint i8 %.pre-phi, 64
  store i8 %i.hk, ptr %i.hf, align 2
  store i8 %i.hj, ptr %i.he, align 1
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hf, i64 %i.hi
  store i8 7, ptr %i.hl, align 1
  %i.hm = add nuw nsw i64 %i.hi, 1
  %i.hn = inttoptr i64 %i.hm to ptr
  %.fca.0.load.i.i145 = load i64, ptr %5, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @_ZN2v88internal14MacroAssembler15LoadTaggedFieldENS0_8RegisterENS0_7OperandE(ptr noundef nonnull align 8 dereferenceable(456) %1, i8 %i.aq, i64 %.fca.0.load.i.i145, ptr nonnull %i.hn) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  store i32 0, ptr %9, align 4
  %i.ho = getelementptr inbounds nuw i8, ptr %9, i64 4
  store i32 0, ptr %i.ho, align 4
  call void @_ZN2v88internal14MacroAssembler9JumpIfSmiENS0_8RegisterEPNS0_5LabelENS3_8DistanceE(ptr noundef nonnull align 8 dereferenceable(456) %1, i8 %i.aq, ptr noundef nonnull %9, i32 noundef 1) #28
  call void @_ZN2v88internal9Assembler13arithmetic_opEhNS0_8RegisterES2_i(ptr noundef nonnull align 8 dereferenceable(456) %1, i8 noundef zeroext 51, i8 %i.aq, i8 %i.aq, i32 noundef 4) #28
  call void @_ZN2v88internal9Assembler4bindEPNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(408) %1, ptr noundef nonnull %9) #28
  call void @_ZN2v88internal14MacroAssembler8SmiUntagENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %1, i8 %i.aq) #28
  call void @_ZN2v88internal9Assembler5shiftENS0_8RegisterENS0_9ImmediateEii(ptr noundef nonnull align 8 dereferenceable(456) %1, i8 %i.aq, i64 10, i32 noundef 4, i32 noundef 4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  br label %bb.q

bb.o:                                             ; preds = %.split214.us
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.hp = getelementptr inbounds nuw i8, ptr %4, i64 1
  %i.hq = getelementptr inbounds nuw i8, ptr %4, i64 2 ; 2 uses
  store i64 0, ptr %4, align 8
  switch i8 %i.i, label %._ZN2v88internal6maglev15MaglevAssembler15LoadTaggedFieldENS0_8RegisterES3_i.exit151_crit_edge [
    i8 4, label %bb.p
    i8 12, label %bb.p
  ]

._ZN2v88internal6maglev15MaglevAssembler15LoadTaggedFieldENS0_8RegisterES3_i.exit151_crit_edge: ; preds = %bb.o
  %.pre454 = and i8 %i.i, 7
  br label %_ZN2v88internal6maglev15MaglevAssembler15LoadTaggedFieldENS0_8RegisterES3_i.exit151

bb.p:                                             ; preds = %bb.o, %bb.o
  %scevgep.i.i146 = getelementptr inbounds nuw i8, ptr %4, i64 3
  %i.hr = and i8 %i.i, 7                          ; 2 uses
  %i.hs = or disjoint i8 %i.hr, 32
  store i8 %i.hs, ptr %scevgep.i.i146, align 1
  br label %_ZN2v88internal6maglev15MaglevAssembler15LoadTaggedFieldENS0_8RegisterES3_i.exit151

_ZN2v88internal6maglev15MaglevAssembler15LoadTaggedFieldENS0_8RegisterES3_i.exit151: ; preds = %._ZN2v88internal6maglev15MaglevAssembler15LoadTaggedFieldENS0_8RegisterES3_i.exit151_crit_edge, %bb.p
  %.pre-phi455 = phi i8 [ %.pre454, %._ZN2v88internal6maglev15MaglevAssembler15LoadTaggedFieldENS0_8RegisterES3_i.exit151_crit_edge ], [ %i.hr, %bb.p ]
  %i.ht = phi i64 [ 1, %._ZN2v88internal6maglev15MaglevAssembler15LoadTaggedFieldENS0_8RegisterES3_i.exit151_crit_edge ], [ 2, %bb.p ] ; 2 uses
  %i.hu = lshr i8 %i.i, 3
  %i.hv = or disjoint i8 %.pre-phi455, 64
  store i8 %i.hv, ptr %i.hq, align 2
  store i8 %i.hu, ptr %i.hp, align 1
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hq, i64 %i.ht
end_hunk_0
