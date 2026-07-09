inline.NumInlined: 20439
inline.NumDeleted: 7868
loop-unroll.NumCompletelyUnrolled: 37
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 40
begin_hunk_0_@_ZN2v88internal6maglev28ExtendPropertiesBackingStore12GenerateCodeEPNS1_15MaglevAssemblerERKNS1_15ProcessingStateE:bb.a
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
  %i.cm = load i8, ptr %i.cl, align 4, !range !21, !noundef !16 ; 2 uses
  store i8 %i.cm, ptr %i.ck, align 4
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cd, i64 21
  %i.co = load i8, ptr %i.cn, align 1, !range !21, !noundef !16
  %i.cp = trunc nuw i8 %i.cm to i1
  %i.cq = getelementptr inbounds nuw i8, ptr %7, i64 21
  store i8 %i.co, ptr %i.cq, align 1
  br i1 %i.cp, label %_ZN2v88internal6maglev15MaglevAssembler22TemporaryRegisterScope14AcquireScratchEv.exit.i, label %bb.h, !prof !48

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
  %i.ec = and i8 %i.i, 7                          ; 3 uses
  %i.ed = or disjoint i8 %i.ec, -128              ; 2 uses
  %i.ee = lshr i8 %i.i, 3                         ; 4 uses
  %i.ef = or disjoint i8 %i.ec, 64                ; 2 uses
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
  %i.eg = or disjoint i8 %i.ec, 32
  %.sroa.0.3.insert.ext249 = zext nneg i8 %i.eg to i64
  %.sroa.0.3.insert.shift250 = shl nuw nsw i64 %.sroa.0.3.insert.ext249, 24
  %.sroa.0.2.insert.ext239 = zext i8 %i.ed to i64
  %.sroa.0.2.insert.shift240 = shl nuw nsw i64 %.sroa.0.2.insert.ext239, 16
  %.sroa.0.1.insert.ext224 = zext nneg i8 %i.ee to i64
  %.sroa.0.1.insert.shift225 = shl nuw nsw i64 %.sroa.0.1.insert.ext224, 8
  %i.eh = or disjoint i64 %.sroa.0.2.insert.shift240, %.sroa.0.1.insert.shift225
  %.sroa.0.2.insert.ext244 = zext nneg i8 %i.ef to i64
  %.sroa.0.2.insert.shift245 = shl nuw nsw i64 %.sroa.0.2.insert.ext244, 16
  %.sroa.0.1.insert.ext229 = zext nneg i8 %i.ee to i64
  %.sroa.0.1.insert.shift230 = shl nuw nsw i64 %.sroa.0.1.insert.ext229, 8
  %i.ei = or disjoint i64 %.sroa.0.2.insert.shift245, %.sroa.0.1.insert.shift230
  br label %_ZN2v88internal6maglev15MaglevAssembler35LoadTaggedFieldWithoutDecompressingENS0_8RegisterES3_i.exit.us

_ZN2v88internal6maglev15MaglevAssembler35LoadTaggedFieldWithoutDecompressingENS0_8RegisterES3_i.exit.us: ; preds = %_ZN2v88internal6maglev15MaglevAssembler35LoadTaggedFieldWithoutDecompressingENS0_8RegisterES3_i.exit.us, %.lr.ph.split.us
  %.0211.us = phi i32 [ 0, %.lr.ph.split.us ], [ %i.eo, %_ZN2v88internal6maglev15MaglevAssembler35LoadTaggedFieldWithoutDecompressingENS0_8RegisterES3_i.exit.us ] ; 3 uses
  %i.ej = shl nuw nsw i32 %.0211.us, 3            ; 2 uses
  %i.ek = add nuw nsw i32 %i.ej, 16
  %i.el = add nuw nsw i32 %i.ej, 15
  %i.em = icmp samesign ult i32 %.0211.us, 15     ; 2 uses
  %.sroa.0.4.insert.ext259 = zext nneg i32 %i.el to i64
  %.sroa.0.4.insert.shift260 = shl nuw nsw i64 %.sroa.0.4.insert.ext259, 32
  %. = select i1 %i.em, i64 %i.ei, i64 %i.eh
  %i.en = or disjoint i64 %., %.sroa.0.4.insert.shift260
  %.sroa.0.0 = or disjoint i64 %i.en, %.sroa.0.3.insert.shift250
  %.fca.1.load.i.i.us = select i1 %i.em, ptr inttoptr (i64 3 to ptr), ptr inttoptr (i64 6 to ptr)
  call void @_ZN2v88internal14MacroAssembler35LoadTaggedFieldWithoutDecompressingENS0_8RegisterENS0_7OperandE(ptr noundef nonnull align 8 dereferenceable(456) %1, i8 %i.aq, i64 %.sroa.0.0, ptr nonnull %.fca.1.load.i.i.us) #28
  call void @_ZN2v88internal6maglev15MaglevAssembler32StoreTaggedFieldWithWriteBarrierENS0_8RegisterEiS3_NS1_16RegisterSnapshotENS2_17ValueIsCompressedENS2_13ValueCanBeSmiE(ptr noundef nonnull align 8 dereferenceable(456) %1, i8 %storemerge, i32 noundef %i.ek, i8 %i.aq, i48 %.sroa.0168.0.insert.insert, i32 noundef 1, i32 noundef 1) #28
  %i.eo = add nuw nsw i32 %.0211.us, 1            ; 2 uses
  %i.ep = load i32, ptr %i.au, align 4
  %i.eq = icmp slt i32 %i.eo, %i.ep
  br i1 %i.eq, label %_ZN2v88internal6maglev15MaglevAssembler35LoadTaggedFieldWithoutDecompressingENS0_8RegisterES3_i.exit.us, label %._crit_edge, !llvm.loop !126

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
  %i.er = and i8 %storemerge, 7                   ; 3 uses
  %i.es = or disjoint i8 %i.er, 32                ; 2 uses
  %i.et = or disjoint i8 %i.er, -128              ; 6 uses
  %i.eu = or disjoint i8 %i.er, 64                ; 7 uses
  %i.ev = load i32, ptr %i.au, align 4
  %i.ew = shl nsw i32 %i.ev, 3                    ; 3 uses
  %i.ex = add nsw i32 %i.ew, 15                   ; 4 uses
  switch i8 %storemerge, label %.split [
    i8 4, label %.split.us
    i8 12, label %.split.us
  ]

.split.us:                                        ; preds = %._crit_edge, %._crit_edge
  %.sroa.0264.3.insert.ext391 = zext nneg i8 %i.es to i64
  %.sroa.0264.3.insert.shift392 = shl nuw nsw i64 %.sroa.0264.3.insert.ext391, 24 ; 3 uses
  %i.ey = sext i32 %i.ew to i64
  %i.ez = add nsw i64 %i.ey, 136
  %i.fa = icmp ult i64 %i.ez, 256                 ; 3 uses
  %.sroa.0264.1.insert.ext281 = zext nneg i8 %i.cv to i64
  %.sroa.0264.1.insert.shift282 = shl nuw nsw i64 %.sroa.0264.1.insert.ext281, 8
  %i.fb = and i32 %i.ex, 255
  %.sink471 = select i1 %i.fa, i32 %i.fb, i32 %i.ex
  %.sroa.0264.2.insert.shift337.pn.in.in = select i1 %i.fa, i8 %i.eu, i8 %i.et
  %.fca.1.load.i.i138.in.us = select i1 %i.fa, i64 3, i64 6
  %.sroa.0264.2.insert.shift337.pn.in = zext i8 %.sroa.0264.2.insert.shift337.pn.in.in to i64
  %.sroa.0264.2.insert.shift337.pn = shl nuw nsw i64 %.sroa.0264.2.insert.shift337.pn.in, 16
  %.sink470 = or disjoint i64 %.sroa.0264.2.insert.shift337.pn, %.sroa.0264.1.insert.shift282
  %.sroa.0264.4.insert.ext431 = zext i32 %.sink471 to i64
  %.sroa.0264.4.insert.shift432 = shl nuw i64 %.sroa.0264.4.insert.ext431, 32
  %i.fc = or disjoint i64 %.sink470, %.sroa.0264.4.insert.shift432
  %.sroa.0264.0 = or disjoint i64 %i.fc, %.sroa.0264.3.insert.shift392
  %.fca.1.load.i.i138.us = inttoptr i64 %.fca.1.load.i.i138.in.us to ptr
  call void @_ZN2v88internal14MacroAssembler16StoreTaggedFieldENS0_7OperandENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(456) %1, i64 %.sroa.0264.0, ptr nonnull %.fca.1.load.i.i138.us, i8 %i.aq) #28
  %i.fd = load i32, ptr %i.au, align 4
  %i.fe = shl i32 %i.fd, 3                        ; 2 uses
  %i.ff = add i32 %i.fe, 8
  %i.fg = add i32 %i.fe, 23                       ; 2 uses
  %i.fh = sext i32 %i.ff to i64
  %i.fi = add nsw i64 %i.fh, 136
  %i.fj = icmp ult i64 %i.fi, 256                 ; 3 uses
  %.sroa.0264.1.insert.ext291 = zext nneg i8 %i.cv to i64
  %.sroa.0264.1.insert.shift292 = shl nuw nsw i64 %.sroa.0264.1.insert.ext291, 8
  %i.fk = and i32 %i.fg, 255
  %.sink473 = select i1 %i.fj, i32 %i.fk, i32 %i.fg
  %.sroa.0264.2.insert.shift347.pn.in.in = select i1 %i.fj, i8 %i.eu, i8 %i.et
  %.fca.1.load.i.i138.in.us.1 = select i1 %i.fj, i64 3, i64 6
  %.sroa.0264.2.insert.shift347.pn.in = zext i8 %.sroa.0264.2.insert.shift347.pn.in.in to i64
  %.sroa.0264.2.insert.shift347.pn = shl nuw nsw i64 %.sroa.0264.2.insert.shift347.pn.in, 16
  %.sink472 = or disjoint i64 %.sroa.0264.2.insert.shift347.pn, %.sroa.0264.1.insert.shift292
  %.sroa.0264.4.insert.ext436 = zext i32 %.sink473 to i64
  %.sroa.0264.4.insert.shift437 = shl nuw i64 %.sroa.0264.4.insert.ext436, 32
  %i.fl = or disjoint i64 %.sink472, %.sroa.0264.4.insert.shift437
  %.sroa.0264.2 = or disjoint i64 %i.fl, %.sroa.0264.3.insert.shift392
  %.fca.1.load.i.i138.us.1 = inttoptr i64 %.fca.1.load.i.i138.in.us.1 to ptr
  call void @_ZN2v88internal14MacroAssembler16StoreTaggedFieldENS0_7OperandENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(456) %1, i64 %.sroa.0264.2, ptr nonnull %.fca.1.load.i.i138.us.1, i8 %i.aq) #28
  %i.fm = load i32, ptr %i.au, align 4
  %i.fn = shl i32 %i.fm, 3                        ; 2 uses
  %i.fo = add i32 %i.fn, 16
  %i.fp = add i32 %i.fn, 31                       ; 2 uses
  %i.fq = sext i32 %i.fo to i64
  %i.fr = add nsw i64 %i.fq, 136
  %i.fs = icmp ult i64 %i.fr, 256                 ; 3 uses
  %.sroa.0264.1.insert.ext301 = zext nneg i8 %i.cv to i64
  %.sroa.0264.1.insert.shift302 = shl nuw nsw i64 %.sroa.0264.1.insert.ext301, 8
  %i.ft = and i32 %i.fp, 255
  %.sink475 = select i1 %i.fs, i32 %i.ft, i32 %i.fp
  %.sroa.0264.2.insert.shift357.pn.in.in = select i1 %i.fs, i8 %i.eu, i8 %i.et
  %.fca.1.load.i.i138.in.us.2 = select i1 %i.fs, i64 3, i64 6
  %.sroa.0264.2.insert.shift357.pn.in = zext i8 %.sroa.0264.2.insert.shift357.pn.in.in to i64
  %.sroa.0264.2.insert.shift357.pn = shl nuw nsw i64 %.sroa.0264.2.insert.shift357.pn.in, 16
  %.sink474 = or disjoint i64 %.sroa.0264.2.insert.shift357.pn, %.sroa.0264.1.insert.shift302
  %.sroa.0264.4.insert.ext441 = zext i32 %.sink475 to i64
  %.sroa.0264.4.insert.shift442 = shl nuw i64 %.sroa.0264.4.insert.ext441, 32
  %i.fu = or disjoint i64 %.sink474, %.sroa.0264.4.insert.shift442
  %.sroa.0264.3 = or disjoint i64 %i.fu, %.sroa.0264.3.insert.shift392
  br label %.split214.us

.split:                                           ; preds = %._crit_edge
  %i.fv = sext i32 %i.ew to i64
  %i.fw = add nsw i64 %i.fv, 136
  %i.fx = icmp ult i64 %i.fw, 256
  %.sroa.0264.1.insert.ext271 = zext nneg i8 %i.cv to i64
  %.sroa.0264.1.insert.shift272 = shl nuw nsw i64 %.sroa.0264.1.insert.ext271, 8
  br i1 %i.fx, label %.thread.i.i140, label %bb.j

_ZN2v88internal6maglev15MaglevAssembler35LoadTaggedFieldWithoutDecompressingENS0_8RegisterES3_i.exit: ; preds = %.lr.ph.split, %_ZN2v88internal6maglev15MaglevAssembler35LoadTaggedFieldWithoutDecompressingENS0_8RegisterES3_i.exit
  %.0211 = phi i32 [ 0, %.lr.ph.split ], [ %i.gd, %_ZN2v88internal6maglev15MaglevAssembler35LoadTaggedFieldWithoutDecompressingENS0_8RegisterES3_i.exit ] ; 3 uses
  %i.fy = shl nuw nsw i32 %.0211, 3               ; 2 uses
  %i.fz = add nuw nsw i32 %i.fy, 16
  %i.ga = add nuw nsw i32 %i.fy, 15               ; 2 uses
  %i.gb = icmp samesign ult i32 %.0211, 15        ; 2 uses
  %i.gc = shl nuw i32 %i.ga, 24
  %.sroa.0.3.insert.shift255 = zext i32 %i.gc to i64
  %.sroa.0.3.insert.insert257 = or disjoint i64 %.sroa.0.1.insert.insert222, %.sroa.0.3.insert.shift255
  %.sroa.0.3.insert.ext = zext nneg i32 %i.ga to i64
  %.sroa.0.3.insert.shift = shl nuw nsw i64 %.sroa.0.3.insert.ext, 24
  %.sroa.0.3.insert.insert = or disjoint i64 %.sroa.0.1.insert.insert, %.sroa.0.3.insert.shift
  %.sroa.0.1 = select i1 %i.gb, i64 %.sroa.0.3.insert.insert257, i64 %.sroa.0.3.insert.insert
  %.fca.1.load.i.i = select i1 %i.gb, ptr inttoptr (i64 2 to ptr), ptr inttoptr (i64 5 to ptr)
  call void @_ZN2v88internal14MacroAssembler35LoadTaggedFieldWithoutDecompressingENS0_8RegisterENS0_7OperandE(ptr noundef nonnull align 8 dereferenceable(456) %1, i8 %i.aq, i64 %.sroa.0.1, ptr nonnull %.fca.1.load.i.i) #28
  call void @_ZN2v88internal6maglev15MaglevAssembler32StoreTaggedFieldWithWriteBarrierENS0_8RegisterEiS3_NS1_16RegisterSnapshotENS2_17ValueIsCompressedENS2_13ValueCanBeSmiE(ptr noundef nonnull align 8 dereferenceable(456) %1, i8 %storemerge, i32 noundef %i.fz, i8 %i.aq, i48 %.sroa.0168.0.insert.insert, i32 noundef 1, i32 noundef 1) #28
  %i.gd = add nuw nsw i32 %.0211, 1               ; 2 uses
  %i.ge = load i32, ptr %i.au, align 4
  %i.gf = icmp slt i32 %i.gd, %i.ge
  br i1 %i.gf, label %_ZN2v88internal6maglev15MaglevAssembler35LoadTaggedFieldWithoutDecompressingENS0_8RegisterES3_i.exit, label %._crit_edge, !llvm.loop !126

.split214.us:                                     ; preds = %bb.l, %.thread.i.i140.2, %.split.us
  %.fca.1.load.i.i138.in.us.2.sink = phi i64 [ %.fca.1.load.i.i138.in.us.2, %.split.us ], [ 2, %.thread.i.i140.2 ], [ 5, %bb.l ]
  %.sroa.0264.3.sink = phi i64 [ %.sroa.0264.3, %.split.us ], [ %.sroa.0264.3.insert.insert419, %.thread.i.i140.2 ], [ %.sroa.0264.3.insert.insert389, %bb.l ]
  %.fca.1.load.i.i138.us.2 = inttoptr i64 %.fca.1.load.i.i138.in.us.2.sink to ptr
  call void @_ZN2v88internal14MacroAssembler16StoreTaggedFieldENS0_7OperandENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(456) %1, i64 %.sroa.0264.3.sink, ptr nonnull %.fca.1.load.i.i138.us.2, i8 %i.aq) #28
  %i.gg = load i32, ptr %i.au, align 4
  %i.gh = icmp eq i32 %i.gg, 0
  br i1 %i.gh, label %bb.m, label %bb.o

.thread.i.i140:                                   ; preds = %.split
  %.sroa.0264.2.insert.ext326 = zext nneg i8 %i.eu to i64
  %.sroa.0264.2.insert.shift327 = shl nuw nsw i64 %.sroa.0264.2.insert.ext326, 16
  %i.gi = shl i32 %i.ex, 24
  %.sroa.0264.3.insert.shift407 = zext i32 %i.gi to i64
  %i.gj = or disjoint i64 %.sroa.0264.2.insert.shift327, %.sroa.0264.3.insert.shift407
  br label %_ZN2v88internal6maglev15MaglevAssembler30StoreTaggedFieldNoWriteBarrierENS0_8RegisterEiS3_.exit

bb.j:                                             ; preds = %.split
  %.sroa.0264.2.insert.ext = zext i8 %i.et to i64
  %.sroa.0264.2.insert.shift = shl nuw nsw i64 %.sroa.0264.2.insert.ext, 16
  %.sroa.0264.3.insert.ext = zext i32 %i.ex to i64
  %.sroa.0264.3.insert.shift = shl nuw nsw i64 %.sroa.0264.3.insert.ext, 24
  %i.gk = or disjoint i64 %.sroa.0264.2.insert.shift, %.sroa.0264.3.insert.shift
  br label %_ZN2v88internal6maglev15MaglevAssembler30StoreTaggedFieldNoWriteBarrierENS0_8RegisterEiS3_.exit

_ZN2v88internal6maglev15MaglevAssembler30StoreTaggedFieldNoWriteBarrierENS0_8RegisterEiS3_.exit: ; preds = %.thread.i.i140, %bb.j
  %.pn = phi i64 [ %i.gj, %.thread.i.i140 ], [ %i.gk, %bb.j ]
  %.fca.1.load.i.i138.in = phi i64 [ 2, %.thread.i.i140 ], [ 5, %bb.j ]
  %.sroa.0264.1 = or disjoint i64 %.pn, %.sroa.0264.1.insert.shift272
  %.fca.1.load.i.i138 = inttoptr i64 %.fca.1.load.i.i138.in to ptr
  call void @_ZN2v88internal14MacroAssembler16StoreTaggedFieldENS0_7OperandENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(456) %1, i64 %.sroa.0264.1, ptr nonnull %.fca.1.load.i.i138, i8 %i.aq) #28
  %i.gl = load i32, ptr %i.au, align 4
  %i.gm = shl i32 %i.gl, 3                        ; 2 uses
  %i.gn = add i32 %i.gm, 8
  %i.go = add i32 %i.gm, 23                       ; 2 uses
  %i.gp = sext i32 %i.gn to i64
  %i.gq = add nsw i64 %i.gp, 136
  %i.gr = icmp ult i64 %i.gq, 256
  %.sroa.0264.1.insert.ext311 = zext nneg i8 %i.cv to i64
  %.sroa.0264.1.insert.shift312 = shl nuw nsw i64 %.sroa.0264.1.insert.ext311, 8
  br i1 %i.gr, label %.thread.i.i140.1, label %bb.k

bb.k:                                             ; preds = %_ZN2v88internal6maglev15MaglevAssembler30StoreTaggedFieldNoWriteBarrierENS0_8RegisterEiS3_.exit
  %.sroa.0264.2.insert.ext361 = zext i8 %i.et to i64
  %.sroa.0264.2.insert.shift362 = shl nuw nsw i64 %.sroa.0264.2.insert.ext361, 16
  %.sroa.0264.3.insert.ext381 = zext i32 %i.go to i64
  %.sroa.0264.3.insert.shift382 = shl nuw nsw i64 %.sroa.0264.3.insert.ext381, 24
  %i.gs = or disjoint i64 %.sroa.0264.2.insert.shift362, %.sroa.0264.3.insert.shift382
  br label %_ZN2v88internal6maglev15MaglevAssembler30StoreTaggedFieldNoWriteBarrierENS0_8RegisterEiS3_.exit.1

.thread.i.i140.1:                                 ; preds = %_ZN2v88internal6maglev15MaglevAssembler30StoreTaggedFieldNoWriteBarrierENS0_8RegisterEiS3_.exit
  %.sroa.0264.2.insert.ext366 = zext nneg i8 %i.eu to i64
  %.sroa.0264.2.insert.shift367 = shl nuw nsw i64 %.sroa.0264.2.insert.ext366, 16
  %i.gt = shl i32 %i.go, 24
  %.sroa.0264.3.insert.shift412 = zext i32 %i.gt to i64
  %i.gu = or disjoint i64 %.sroa.0264.2.insert.shift367, %.sroa.0264.3.insert.shift412
  br label %_ZN2v88internal6maglev15MaglevAssembler30StoreTaggedFieldNoWriteBarrierENS0_8RegisterEiS3_.exit.1

_ZN2v88internal6maglev15MaglevAssembler30StoreTaggedFieldNoWriteBarrierENS0_8RegisterEiS3_.exit.1: ; preds = %.thread.i.i140.1, %bb.k
  %.pn477 = phi i64 [ %i.gu, %.thread.i.i140.1 ], [ %i.gs, %bb.k ]
  %.fca.1.load.i.i138.in.1 = phi i64 [ 2, %.thread.i.i140.1 ], [ 5, %bb.k ]
  %.sroa.0264.4 = or disjoint i64 %.pn477, %.sroa.0264.1.insert.shift312
  %.fca.1.load.i.i138.1 = inttoptr i64 %.fca.1.load.i.i138.in.1 to ptr
  call void @_ZN2v88internal14MacroAssembler16StoreTaggedFieldENS0_7OperandENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(456) %1, i64 %.sroa.0264.4, ptr nonnull %.fca.1.load.i.i138.1, i8 %i.aq) #28
  %i.gv = load i32, ptr %i.au, align 4
  %i.gw = shl i32 %i.gv, 3                        ; 2 uses
  %i.gx = add i32 %i.gw, 16
  %i.gy = add i32 %i.gw, 31                       ; 2 uses
  %i.gz = sext i32 %i.gx to i64
  %i.ha = add nsw i64 %i.gz, 136
  %i.hb = icmp ult i64 %i.ha, 256
  %.sroa.0264.1.insert.ext321 = zext nneg i8 %i.cv to i64
  %.sroa.0264.1.insert.shift322 = shl nuw nsw i64 %.sroa.0264.1.insert.ext321, 8 ; 2 uses
  br i1 %i.hb, label %.thread.i.i140.2, label %bb.l

bb.l:                                             ; preds = %_ZN2v88internal6maglev15MaglevAssembler30StoreTaggedFieldNoWriteBarrierENS0_8RegisterEiS3_.exit.1
  %.sroa.0264.2.insert.ext371 = zext i8 %i.et to i64
  %.sroa.0264.2.insert.shift372 = shl nuw nsw i64 %.sroa.0264.2.insert.ext371, 16
  %.sroa.0264.3.insert.ext386 = zext i32 %i.gy to i64
  %.sroa.0264.3.insert.shift387 = shl nuw nsw i64 %.sroa.0264.3.insert.ext386, 24
  %i.hc = or disjoint i64 %.sroa.0264.2.insert.shift372, %.sroa.0264.3.insert.shift387
  %.sroa.0264.3.insert.insert389 = or disjoint i64 %i.hc, %.sroa.0264.1.insert.shift322
  br label %.split214.us

.thread.i.i140.2:                                 ; preds = %_ZN2v88internal6maglev15MaglevAssembler30StoreTaggedFieldNoWriteBarrierENS0_8RegisterEiS3_.exit.1
  %.sroa.0264.2.insert.ext376 = zext nneg i8 %i.eu to i64
  %.sroa.0264.2.insert.shift377 = shl nuw nsw i64 %.sroa.0264.2.insert.ext376, 16
  %i.hd = shl i32 %i.gy, 24
  %.sroa.0264.3.insert.shift417 = zext i32 %i.hd to i64
  %i.he = or disjoint i64 %.sroa.0264.2.insert.shift377, %.sroa.0264.3.insert.shift417
  %.sroa.0264.3.insert.insert419 = or disjoint i64 %i.he, %.sroa.0264.1.insert.shift322
  br label %.split214.us

bb.m:                                             ; preds = %.split214.us
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.hf = getelementptr inbounds nuw i8, ptr %5, i64 1
  %i.hg = getelementptr inbounds nuw i8, ptr %5, i64 2 ; 2 uses
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
  %i.hh = and i8 %i.f, 7                          ; 2 uses
  %i.hi = or disjoint i8 %i.hh, 32
  store i8 %i.hi, ptr %scevgep.i.i141, align 1
  br label %_ZN2v88internal6maglev15MaglevAssembler15LoadTaggedFieldENS0_8RegisterES3_i.exit

_ZN2v88internal6maglev15MaglevAssembler15LoadTaggedFieldENS0_8RegisterES3_i.exit: ; preds = %._ZN2v88internal6maglev15MaglevAssembler15LoadTaggedFieldENS0_8RegisterES3_i.exit_crit_edge, %bb.n
  %.pre-phi = phi i8 [ %.pre, %._ZN2v88internal6maglev15MaglevAssembler15LoadTaggedFieldENS0_8RegisterES3_i.exit_crit_edge ], [ %i.hh, %bb.n ]
  %i.hj = phi i64 [ 1, %._ZN2v88internal6maglev15MaglevAssembler15LoadTaggedFieldENS0_8RegisterES3_i.exit_crit_edge ], [ 2, %bb.n ] ; 2 uses
  %i.hk = lshr i8 %i.f, 3
  %i.hl = or disjoint i8 %.pre-phi, 64
  store i8 %i.hl, ptr %i.hg, align 2
  store i8 %i.hk, ptr %i.hf, align 1
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hg, i64 %i.hj
  store i8 7, ptr %i.hm, align 1
  %i.hn = add nuw nsw i64 %i.hj, 1
  %i.ho = inttoptr i64 %i.hn to ptr
  %.fca.0.load.i.i145 = load i64, ptr %5, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @_ZN2v88internal14MacroAssembler15LoadTaggedFieldENS0_8RegisterENS0_7OperandE(ptr noundef nonnull align 8 dereferenceable(456) %1, i8 %i.aq, i64 %.fca.0.load.i.i145, ptr nonnull %i.ho) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  store i32 0, ptr %9, align 4
  %i.hp = getelementptr inbounds nuw i8, ptr %9, i64 4
  store i32 0, ptr %i.hp, align 4
  call void @_ZN2v88internal14MacroAssembler9JumpIfSmiENS0_8RegisterEPNS0_5LabelENS3_8DistanceE(ptr noundef nonnull align 8 dereferenceable(456) %1, i8 %i.aq, ptr noundef nonnull %9, i32 noundef 1) #28
  call void @_ZN2v88internal9Assembler13arithmetic_opEhNS0_8RegisterES2_i(ptr noundef nonnull align 8 dereferenceable(456) %1, i8 noundef zeroext 51, i8 %i.aq, i8 %i.aq, i32 noundef 4) #28
  call void @_ZN2v88internal9Assembler4bindEPNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(408) %1, ptr noundef nonnull %9) #28
  call void @_ZN2v88internal14MacroAssembler8SmiUntagENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %1, i8 %i.aq) #28
  call void @_ZN2v88internal9Assembler5shiftENS0_8RegisterENS0_9ImmediateEii(ptr noundef nonnull align 8 dereferenceable(456) %1, i8 %i.aq, i64 10, i32 noundef 4, i32 noundef 4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  br label %bb.q

bb.o:                                             ; preds = %.split214.us
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.hq = getelementptr inbounds nuw i8, ptr %4, i64 1
  %i.hr = getelementptr inbounds nuw i8, ptr %4, i64 2 ; 2 uses
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
  %i.hs = and i8 %i.i, 7                          ; 2 uses
  %i.ht = or disjoint i8 %i.hs, 32
  store i8 %i.ht, ptr %scevgep.i.i146, align 1
  br label %_ZN2v88internal6maglev15MaglevAssembler15LoadTaggedFieldENS0_8RegisterES3_i.exit151

_ZN2v88internal6maglev15MaglevAssembler15LoadTaggedFieldENS0_8RegisterES3_i.exit151: ; preds = %._ZN2v88internal6maglev15MaglevAssembler15LoadTaggedFieldENS0_8RegisterES3_i.exit151_crit_edge, %bb.p
  %.pre-phi455 = phi i8 [ %.pre454, %._ZN2v88internal6maglev15MaglevAssembler15LoadTaggedFieldENS0_8RegisterES3_i.exit151_crit_edge ], [ %i.hs, %bb.p ]
  %i.hu = phi i64 [ 1, %._ZN2v88internal6maglev15MaglevAssembler15LoadTaggedFieldENS0_8RegisterES3_i.exit151_crit_edge ], [ 2, %bb.p ] ; 2 uses
  %i.hv = lshr i8 %i.i, 3
  %i.hw = or disjoint i8 %.pre-phi455, 64
  store i8 %i.hw, ptr %i.hr, align 2
  store i8 %i.hv, ptr %i.hq, align 1
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hr, i64 %i.hu
  store i8 7, ptr %i.hx, align 1
  %i.hy = add nuw nsw i64 %i.hu, 1
  %i.hz = inttoptr i64 %i.hy to ptr
  %.fca.0.load.i.i150 = load i64, ptr %4, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @_ZN2v88internal14MacroAssembler15LoadTaggedFieldENS0_8RegisterENS0_7OperandE(ptr noundef nonnull align 8 dereferenceable(456) %1, i8 %i.aq, i64 %.fca.0.load.i.i150, ptr nonnull %i.hz) #28
  call void @_ZN2v88internal14MacroAssembler8SmiUntagENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %1, i8 %i.aq) #28
  call void @_ZN2v88internal9Assembler23immediate_arithmetic_opEhNS0_8RegisterENS0_9ImmediateEi(ptr noundef nonnull align 8 dereferenceable(456) %1, i8 noundef zeroext 4, i8 %i.aq, i64 2147482624, i32 noundef 4) #28
  br label %bb.q

bb.q:                                             ; preds = %_ZN2v88internal6maglev15MaglevAssembler15LoadTaggedFieldENS0_8RegisterES3_i.exit151, %_ZN2v88internal6maglev15MaglevAssembler15LoadTaggedFieldENS0_8RegisterES3_i.exit
  %.sroa.0.0.insert.ext.i = zext i32 %i.aw to i64
  call void @_ZN2v88internal9Assembler23immediate_arithmetic_opEhNS0_8RegisterENS0_9ImmediateEi(ptr noundef nonnull align 8 dereferenceable(456) %1, i8 noundef zeroext 1, i8 %i.aq, i64 %.sroa.0.0.insert.ext.i, i32 noundef 4) #28
  call void @_ZN2v88internal14MacroAssembler6SmiTagENS0_8RegisterES2_(ptr noundef nonnull align 8 dereferenceable(456) %1, i8 %i.aq, i8 %i.aq) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.ia = getelementptr inbounds nuw i8, ptr %3, i64 1
end_hunk_0
begin_hunk_1_@_ZN2v88internal6maglev14GeneratorStore27SetValueLocationConstraintsEv:bb.a
; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal6maglev14GeneratorStore12GenerateCodeEPNS1_15MaglevAssemblerERKNS1_15ProcessingStateE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(20) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.v8::internal::Operand", align 8 ; 7 uses
  %4 = alloca %"class.v8::internal::Operand", align 8 ; 7 uses
  %5 = alloca %"class.v8::internal::Operand", align 8 ; 7 uses
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.d, align 8
  %i.e = lshr i64 %.sroa.0.0.copyload.i.i.i, 32   ; 2 uses
  %i.f = trunc i64 %i.e to i8                     ; 8 uses
  %i.g = icmp samesign ult i8 %i.f, 16
  tail call void @llvm.assume(i1 %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 1
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 2 ; 2 uses
  store i64 0, ptr %5, align 8
  switch i8 %i.f, label %._ZN2v88internal11RegListBaseINS0_8RegisterEE3setES2_.exit63_crit_edge [
    i8 4, label %bb.b
    i8 12, label %bb.b
  ]

._ZN2v88internal11RegListBaseINS0_8RegisterEE3setES2_.exit63_crit_edge: ; preds = %bb.a
  %.pre = and i8 %i.f, 7
  br label %_ZN2v88internal11RegListBaseINS0_8RegisterEE3setES2_.exit63

bb.b:                                             ; preds = %bb.a, %bb.a
  %scevgep.i.i = getelementptr inbounds nuw i8, ptr %5, i64 3
  %i.j = and i8 %i.f, 7                           ; 2 uses
  %i.k = or disjoint i8 %i.j, 32
  store i8 %i.k, ptr %scevgep.i.i, align 1
  br label %_ZN2v88internal11RegListBaseINS0_8RegisterEE3setES2_.exit63

_ZN2v88internal11RegListBaseINS0_8RegisterEE3setES2_.exit63: ; preds = %._ZN2v88internal11RegListBaseINS0_8RegisterEE3setES2_.exit63_crit_edge, %bb.b
  %.pre-phi = phi i8 [ %.pre, %._ZN2v88internal11RegListBaseINS0_8RegisterEE3setES2_.exit63_crit_edge ], [ %i.j, %bb.b ] ; 3 uses
  %i.l = phi i64 [ 1, %._ZN2v88internal11RegListBaseINS0_8RegisterEE3setES2_.exit63_crit_edge ], [ 2, %bb.b ] ; 2 uses
  %.pre-phi107 = lshr i8 %i.f, 3                  ; 3 uses
  %i.m = or disjoint i8 %.pre-phi, 64             ; 3 uses
  store i8 %i.m, ptr %i.i, align 2
  store i8 %.pre-phi107, ptr %i.h, align 1
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.l
  store i8 71, ptr %i.n, align 1
  %i.o = add nuw nsw i64 %i.l, 1
  %i.p = inttoptr i64 %i.o to ptr
  %.fca.0.load.i.i = load i64, ptr %5, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  tail call void @_ZN2v88internal14MacroAssembler15LoadTaggedFieldENS0_8RegisterENS0_7OperandE(ptr noundef nonnull align 8 dereferenceable(456) %1, i8 7, i64 %.fca.0.load.i.i, ptr nonnull %i.p) #28
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.r = getelementptr inbounds i8, ptr %0, i64 -8 ; 2 uses
  %i.s = load i64, ptr %i.q, align 8              ; 3 uses
  %i.t = trunc i64 %i.s to i32                    ; 2 uses
  %i.u = icmp ugt i32 %i.t, 196607
  br i1 %i.u, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN2v88internal11RegListBaseINS0_8RegisterEE3setES2_.exit63
  %i.v = lshr i64 %i.s, 32
  %i.w = trunc i64 %i.v to i16                    ; 2 uses
  %i.x = and i16 %i.w, 6
  %i.y = icmp eq i16 %i.x, 4
  %.neg2.i.i.i = select i1 %i.y, i64 -56, i64 0
  %i.z = lshr i64 %i.s, 41
  %i.aa = and i64 %i.z, 8
  %.neg3.i.i.i = sub nsw i64 %.neg2.i.i.i, %i.aa
  %i.ab = and i16 %i.w, 2
  %.not.i.i.i.i = icmp eq i16 %i.ab, 0
  %.neg.i.i.i = select i1 %.not.i.i.i.i, i64 0, i64 -48
  %i.ac = add nsw i64 %.neg3.i.i.i, %.neg.i.i.i
  %i.ad = lshr i32 %i.t, 16
  %narrow.i.i.i.i = sub nsw i32 1, %i.ad
  %i.ae = sext i32 %narrow.i.i.i.i to i64
  %i.af = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.ae
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = add i64 %i.ac, %i.ag
  %i.ai = inttoptr i64 %i.ah to ptr               ; 3 uses
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 2
  %.sroa.10.0.copyload = load i16, ptr %.sroa.10.0..sroa_idx, align 2
  %i.aj = trunc i64 %i.e to i16
  %i.ak = and i16 %i.aj, 15
  %i.al = shl nuw i16 1, %i.ak                    ; 2 uses
  %i.am = or i16 %i.al, %.sroa.10.0.copyload
  %i.an = or i16 %i.am, 128
  %.sroa.095.0.copyload = load i16, ptr %i.ai, align 8
  %i.ao = or i16 %i.al, %.sroa.095.0.copyload
  %i.ap = or i16 %i.ao, 128
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  %.sroa.16.0.copyload = load i16, ptr %.sroa.16.0..sroa_idx, align 4
  %.sroa.16.0.insert.ext = zext i16 %.sroa.16.0.copyload to i48
  %.sroa.16.0.insert.shift = shl nuw i48 %.sroa.16.0.insert.ext, 32
  br label %bb.e

._crit_edge:                                      ; preds = %_ZN2v88internal11RegListBaseINS0_8RegisterEE3setES2_.exit85, %_ZN2v88internal11RegListBaseINS0_8RegisterEE3setES2_.exit63
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ar = load i32, ptr %i.aq, align 8
  %i.as = sext i32 %i.ar to i64
  %i.at = shl nsw i64 %i.as, 32
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 1
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 2 ; 2 uses
  store i64 0, ptr %4, align 8
  switch i8 %i.f, label %_ZN2v88internal6maglev15MaglevAssembler22StoreTaggedSignedFieldENS0_8RegisterEiNS0_6TaggedINS0_3SmiEEE.exit [
    i8 4, label %bb.c
    i8 12, label %bb.c
  ]

bb.c:                                             ; preds = %._crit_edge, %._crit_edge
  %scevgep.i.i64 = getelementptr inbounds nuw i8, ptr %4, i64 3
  %i.aw = or disjoint i8 %.pre-phi, 32
  store i8 %i.aw, ptr %scevgep.i.i64, align 1
  br label %_ZN2v88internal6maglev15MaglevAssembler22StoreTaggedSignedFieldENS0_8RegisterEiNS0_6TaggedINS0_3SmiEEE.exit

_ZN2v88internal6maglev15MaglevAssembler22StoreTaggedSignedFieldENS0_8RegisterEiNS0_6TaggedINS0_3SmiEEE.exit: ; preds = %._crit_edge, %bb.c
  %i.ax = phi i64 [ 1, %._crit_edge ], [ 2, %bb.c ] ; 2 uses
  store i8 %i.m, ptr %i.av, align 2
  store i8 %.pre-phi107, ptr %i.au, align 1
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.ax
  store i8 63, ptr %i.ay, align 1
  %i.az = add nuw nsw i64 %i.ax, 1
  %i.ba = inttoptr i64 %i.az to ptr
  %.fca.0.load.i.i66 = load i64, ptr %4, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  tail call void @_ZN2v88internal14MacroAssembler22StoreTaggedSignedFieldENS0_7OperandENS0_6TaggedINS0_3SmiEEE(ptr noundef nonnull align 8 dereferenceable(456) %1, i64 %.fca.0.load.i.i66, ptr nonnull %i.ba, i64 %i.at) #28
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.bc = load i32, ptr %i.bb, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store i64 0, ptr %3, align 8
  switch i8 %i.f, label %_ZN2v88internal6maglev15MaglevAssembler22StoreTaggedSignedFieldENS0_8RegisterEiNS0_6TaggedINS0_3SmiEEE.exit70 [
    i8 4, label %bb.d
    i8 12, label %bb.d
  ]

bb.d:                                             ; preds = %_ZN2v88internal6maglev15MaglevAssembler22StoreTaggedSignedFieldENS0_8RegisterEiNS0_6TaggedINS0_3SmiEEE.exit, %_ZN2v88internal6maglev15MaglevAssembler22StoreTaggedSignedFieldENS0_8RegisterEiNS0_6TaggedINS0_3SmiEEE.exit
  %scevgep.i.i67 = getelementptr inbounds nuw i8, ptr %3, i64 3
  %i.bd = or disjoint i8 %.pre-phi, 32
  store i8 %i.bd, ptr %scevgep.i.i67, align 1
  br label %_ZN2v88internal6maglev15MaglevAssembler22StoreTaggedSignedFieldENS0_8RegisterEiNS0_6TaggedINS0_3SmiEEE.exit70

_ZN2v88internal6maglev15MaglevAssembler22StoreTaggedSignedFieldENS0_8RegisterEiNS0_6TaggedINS0_3SmiEEE.exit70: ; preds = %_ZN2v88internal6maglev15MaglevAssembler22StoreTaggedSignedFieldENS0_8RegisterEiNS0_6TaggedINS0_3SmiEEE.exit, %bb.d
  %i.be = phi i64 [ 1, %_ZN2v88internal6maglev15MaglevAssembler22StoreTaggedSignedFieldENS0_8RegisterEiNS0_6TaggedINS0_3SmiEEE.exit ], [ 2, %bb.d ] ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 2 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.bh = sext i32 %i.bc to i64
  %i.bi = shl nsw i64 %i.bh, 32
  store i8 %i.m, ptr %i.bf, align 2
  store i8 %.pre-phi107, ptr %i.bg, align 1
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.be
  store i8 47, ptr %i.bj, align 1
  %i.bk = add nuw nsw i64 %i.be, 1
  %i.bl = inttoptr i64 %i.bk to ptr
  %.fca.0.load.i.i69 = load i64, ptr %3, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  tail call void @_ZN2v88internal14MacroAssembler22StoreTaggedSignedFieldENS0_7OperandENS0_6TaggedINS0_3SmiEEE(ptr noundef nonnull align 8 dereferenceable(456) %1, i64 %.fca.0.load.i.i69, ptr nonnull %i.bl, i64 %i.bi) #28
  %i.bm = tail call i8 @_ZN2v88internal6maglev15MaglevAssembler17FromAnyToRegisterENS1_10ConstInputENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(456) %1, ptr nonnull %0, i32 0, i8 3) #28
  %i.bn = load i64, ptr %i.q, align 8             ; 3 uses
  %i.bo = lshr i64 %i.bn, 32
  %i.bp = trunc i64 %i.bo to i16                  ; 2 uses
  %i.bq = lshr i64 %i.bn, 41
  %i.br = and i64 %i.bq, 8
  %i.bs = and i16 %i.bp, 2
  %.not.i.i.i.i73 = icmp eq i16 %i.bs, 0
  %.neg.i.i.i74 = select i1 %.not.i.i.i.i73, i64 0, i64 -48
  %i.bt = and i16 %i.bp, 6
  %i.bu = icmp eq i16 %i.bt, 4
  %.neg2.i.i.i75 = select i1 %i.bu, i64 -56, i64 0
  %i.bv = trunc i64 %i.bn to i32
  %i.bw = lshr i32 %i.bv, 16
  %narrow.i.i.i.i76 = sub nsw i32 1, %i.bw
  %i.bx = sext i32 %narrow.i.i.i.i76 to i64
  %i.by = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.bx
  %i.bz = ptrtoint ptr %i.by to i64
  %.neg3.i.i.i77 = sub nsw i64 %.neg2.i.i.i75, %i.br
  %i.ca = add nsw i64 %.neg3.i.i.i77, %.neg.i.i.i74
  %i.cb = add i64 %i.ca, %i.bz
  %i.cc = inttoptr i64 %i.cb to ptr
  %.sroa.01.0.copyload = load i48, ptr %i.cc, align 8
  tail call void @_ZN2v88internal6maglev15MaglevAssembler32StoreTaggedFieldWithWriteBarrierENS0_8RegisterEiS3_NS1_16RegisterSnapshotENS2_17ValueIsCompressedENS2_13ValueCanBeSmiE(ptr noundef nonnull align 8 dereferenceable(456) %1, i8 %i.f, i32 noundef 32, i8 %i.bm, i48 %.sroa.01.0.copyload, i32 noundef 1, i32 noundef 0) #28
  ret void

bb.e:                                             ; preds = %.lr.ph, %_ZN2v88internal11RegListBaseINS0_8RegisterEE3setES2_.exit85
  %.0105 = phi i32 [ 0, %.lr.ph ], [ %i.cm, %_ZN2v88internal11RegListBaseINS0_8RegisterEE3setES2_.exit85 ] ; 3 uses
  %.sroa.10.0104 = phi i16 [ %i.an, %.lr.ph ], [ %.sroa.10.2, %_ZN2v88internal11RegListBaseINS0_8RegisterEE3setES2_.exit85 ] ; 2 uses
  %.sroa.095.0103 = phi i16 [ %i.ap, %.lr.ph ], [ %.sroa.095.2101, %_ZN2v88internal11RegListBaseINS0_8RegisterEE3setES2_.exit85 ] ; 2 uses
  %i.cd = add nuw nsw i32 %.0105, 2
  %i.ce = tail call i8 @_ZN2v88internal6maglev15MaglevAssembler17FromAnyToRegisterENS1_10ConstInputENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(456) %1, ptr nonnull %0, i32 %i.cd, i8 3) #28 ; 4 uses
  %.not.i82 = icmp eq i8 %i.ce, -1
  br i1 %.not.i82, label %_ZN2v88internal11RegListBaseINS0_8RegisterEE3setES2_.exit85, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.cf = zext nneg i8 %i.ce to i16
  %i.cg = shl nuw i16 1, %i.cf                    ; 2 uses
  %i.ch = or i16 %i.cg, %.sroa.095.0103
  %i.ci = icmp samesign ult i8 %i.ce, 16
  tail call void @llvm.assume(i1 %i.ci)
  %i.cj = or i16 %i.cg, %.sroa.10.0104
  br label %_ZN2v88internal11RegListBaseINS0_8RegisterEE3setES2_.exit85

_ZN2v88internal11RegListBaseINS0_8RegisterEE3setES2_.exit85: ; preds = %bb.e, %bb.f
  %.sroa.095.2101 = phi i16 [ %i.ch, %bb.f ], [ %.sroa.095.0103, %bb.e ] ; 2 uses
  %.sroa.10.2 = phi i16 [ %i.cj, %bb.f ], [ %.sroa.10.0104, %bb.e ] ; 2 uses
  %i.ck = shl nuw nsw i32 %.0105, 3
  %i.cl = add nuw nsw i32 %i.ck, 16
  %.sroa.10.0.insert.ext = zext i16 %.sroa.10.2 to i48
  %.sroa.10.0.insert.shift = shl nuw nsw i48 %.sroa.10.0.insert.ext, 16
  %.sroa.10.0.insert.insert = or disjoint i48 %.sroa.10.0.insert.shift, %.sroa.16.0.insert.shift
  %.sroa.095.0.insert.ext = zext i16 %.sroa.095.2101 to i48
  %.sroa.095.0.insert.insert = or disjoint i48 %.sroa.10.0.insert.insert, %.sroa.095.0.insert.ext
  tail call void @_ZN2v88internal6maglev15MaglevAssembler32StoreTaggedFieldWithWriteBarrierENS0_8RegisterEiS3_NS1_16RegisterSnapshotENS2_17ValueIsCompressedENS2_13ValueCanBeSmiE(ptr noundef nonnull align 8 dereferenceable(456) %1, i8 7, i32 noundef %i.cl, i8 %i.ce, i48 %.sroa.095.0.insert.insert, i32 noundef 1, i32 noundef 1) #28
  %i.cm = add nuw nsw i32 %.0105, 1               ; 2 uses
  %i.cn = load i64, ptr %i.q, align 8
  %i.co = trunc i64 %i.cn to i32
  %i.cp = lshr i32 %i.co, 16
  %i.cq = add nsw i32 %i.cp, -2
  %i.cr = icmp slt i32 %i.cm, %i.cq
  br i1 %i.cr, label %bb.e, label %._crit_edge, !llvm.loop !138
}

declare i8 @_ZN2v88internal6maglev15MaglevAssembler17FromAnyToRegisterENS1_10ConstInputENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(456), ptr, i32, i8) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef i32 @_ZNK2v88internal6maglev15GetKeyedGeneric16MaxCallStackArgsEv(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(40) %0) local_unnamed_addr #4 align 2 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN2v88internal6maglev15GetKeyedGeneric27SetValueLocationConstraintsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  store i64 14018773254137, ptr %i.c, align 8
  %i.d = getelementptr inbounds i8, ptr %0, i64 -8
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = load ptr, ptr %0, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  %.sroa.0.0.copyload.i = load i64, ptr %i.h, align 8
  tail call void @_ZN2v88internal6maglev9ValueNode7SetHintENS0_8compiler18InstructionOperandE(ptr noundef nonnull align 8 dereferenceable(20) %i.e, i64 %.sroa.0.0.copyload.i)
  %i.i = load ptr, ptr %0, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i64 5222680231929, ptr %i.l, align 8
  %i.m = getelementptr inbounds i8, ptr %0, i64 -16
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = load ptr, ptr %0, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %.sroa.0.0.copyload.i22 = load i64, ptr %i.r, align 8
  tail call void @_ZN2v88internal6maglev9ValueNode7SetHintENS0_8compiler18InstructionOperandE(ptr noundef nonnull align 8 dereferenceable(20) %i.n, i64 %.sroa.0.0.copyload.i22)
  %i.s = load ptr, ptr %0, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  store i64 824633720825, ptr %i.v, align 8
  %i.w = getelementptr inbounds i8, ptr %0, i64 -24
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = load ptr, ptr %0, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %.sroa.0.0.copyload.i26 = load i64, ptr %i.ab, align 8
  tail call void @_ZN2v88internal6maglev9ValueNode7SetHintENS0_8compiler18InstructionOperandE(ptr noundef nonnull align 8 dereferenceable(20) %i.x, i64 %.sroa.0.0.copyload.i26)
  %i.ac = load ptr, ptr %0, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  store i64 824633720825, ptr %i.ad, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal6maglev15GetKeyedGeneric12GenerateCodeEPNS1_15MaglevAssemblerERKNS1_15ProcessingStateE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(20) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.v8::internal::maglev::MaglevAssembler::TemporaryRegisterScope", align 8 ; 10 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %4 = alloca %"class.std::tuple.3328", align 8   ; 9 uses
  %5 = alloca %class.anon.3330, align 8           ; 4 uses
  %6 = alloca %"struct.v8::internal::compiler::FeedbackSource", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %i.b, align 8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.2.0.copyload.i = load i32, ptr %.sroa.2.0..sroa_idx.i, align 8
  store ptr %.sroa.0.0.copyload.i, ptr %6, align 8
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %.sroa.2.0.copyload.i, ptr %.sroa.24.0..sroa_idx, align 8
  %i.c = call noundef i32 @_ZNK2v88internal8compiler14FeedbackSource5indexEv(ptr noundef nonnull align 8 dereferenceable(12) %6) #28
  %i.d = sext i32 %i.c to i64
  %i.e = shl nsw i64 %i.d, 1
  %.sroa.0.0.copyload.i23 = load ptr, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %1, ptr %i.a, align 8
  %i.f = ptrtoint ptr %.sroa.0.0.copyload.i23 to i64
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  store ptr %0, ptr %i.g, align 8
  %.sroa.430.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 2, ptr %.sroa.430.0..sroa_idx, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 32
  store ptr %0, ptr %i.h, align 8
  %.sroa.433.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i32 1, ptr %.sroa.433.0..sroa_idx, align 8
  store i64 %i.f, ptr %4, align 8, !alias.scope !139
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.e, ptr %i.i, align 8, !alias.scope !139
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  store ptr %i.a, ptr %5, align 8
  call void @_ZN2v84base6detail30tuple_for_each_with_index_implISt5tupleIJNS_8internal6maglev5InputES6_NS4_6TaggedINS4_11TaggedIndexEEENS4_6HandleINS4_14FeedbackVectorEEEEERZNS5_6detail23MoveArgumentsForBuiltinILNS4_7BuiltinE426EJS6_S6_S6_S9_SC_EEEvPNS5_15MaglevAssemblerEDpOT0_EUlOT_T0_E_JLm0ELm1ELm2ELm3EEEEDaRKSM_OSO_St16integer_sequenceImJXspT1_EEE(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(8) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  store ptr %1, ptr %3, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 448 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8
  store ptr %i.l, ptr %i.j, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 18
  store ptr %3, ptr %i.k, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 21
  store i16 0, ptr %i.m, align 8
  store i16 0, ptr %i.n, align 2
  store i8 1, ptr %i.o, align 4
  store i8 1, ptr %i.p, align 1
  call void @_ZN2v88internal14MacroAssembler11CallBuiltinENS0_7BuiltinE(ptr noundef nonnull align 8 dereferenceable(456) %1, i32 noundef 426) #28
  %i.q = load ptr, ptr %i.j, align 8
  %i.r = load ptr, ptr %3, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 448
  store ptr %i.q, ptr %i.s, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  call void @_ZN2v88internal6maglev15MaglevAssembler27DefineExceptionHandlerPointEPNS1_8NodeBaseE(ptr noundef nonnull align 8 dereferenceable(456) %1, ptr noundef nonnull %0)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load i64, ptr %i.t, align 8              ; 2 uses
  %i.v = lshr i64 %i.u, 32
  %i.w = trunc i64 %i.v to i16                    ; 2 uses
  %i.x = and i16 %i.w, 2
  %.not.i.i.i.i = icmp eq i16 %i.x, 0
  %.neg.i.i.i = select i1 %.not.i.i.i.i, i64 0, i64 -48
  %i.y = and i16 %i.w, 6
  %i.z = icmp eq i16 %i.y, 4
  %.neg2.i.i.i = select i1 %i.z, i64 -56, i64 0
  %.neg3.i.i.i = add nsw i64 %.neg.i.i.i, %.neg2.i.i.i
  %i.aa = trunc i64 %i.u to i32
  %i.ab = lshr i32 %i.aa, 16
  %i.ac = getelementptr inbounds i8, ptr %0, i64 -8
  %narrow.i.i.i.i = sub nsw i32 1, %i.ab
  %i.ad = sext i32 %narrow.i.i.i.i to i64
  %i.ae = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.ad
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = add i64 %.neg3.i.i.i, %i.af
  %i.ah = inttoptr i64 %i.ag to ptr
  call void @_ZN2v88internal6maglev15MaglevAssembler20DefineLazyDeoptPointEPNS1_13LazyDeoptInfoE(ptr noundef nonnull align 8 dereferenceable(456) %1, ptr noundef %i.ah)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN2v88internal6maglev13Int32ToNumber27SetValueLocationConstraintsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(20) %0) local_unnamed_addr #13 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  store i64 962072674297, ptr %i.c, align 8
  %i.d = load ptr, ptr %0, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store i64 962072674297, ptr %i.e, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal6maglev13Int32ToNumber12GenerateCodeEPNS1_15MaglevAssemblerERKNS1_15ProcessingStateE(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr noundef %1, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(20) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.v8::internal::Register", align 1 ; 5 uses
  %4 = alloca %"class.v8::internal::Register", align 1 ; 5 uses
  %5 = alloca %"class.v8::internal::maglev::ZoneLabelRef", align 8 ; 5 uses
  %6 = alloca %"class.v8::internal::maglev::MaglevAssembler::TemporaryRegisterScope", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.b, align 8
  %i.c = lshr i64 %.sroa.0.0.copyload.i.i.i, 32
  %i.d = trunc i64 %i.c to i8                     ; 7 uses
  %i.e = icmp samesign ult i8 %i.d, 16
  tail call void @llvm.assume(i1 %i.e)
  store i8 %i.d, ptr %3, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  %.sroa.0.0.copyload.i.i.i22 = load i64, ptr %i.g, align 8
  %i.h = lshr i64 %.sroa.0.0.copyload.i.i.i22, 32
  %i.i = trunc i64 %i.h to i8                     ; 5 uses
  %i.j = icmp samesign ult i8 %i.i, 16
  tail call void @llvm.assume(i1 %i.j)
  store i8 %i.i, ptr %4, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 440
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = load ptr, ptr %i.l, align 8              ; 3 uses
end_hunk_1
