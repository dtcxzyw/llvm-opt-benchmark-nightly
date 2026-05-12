inline.NumInlined: 1999
inline.NumDeleted: 790
begin_hunk_0_@_ZN6hermes12RegisterFile16allocateRegisterEv
define hidden i32 @_ZN6hermes12RegisterFile16allocateRegisterEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !31   ; 5 uses
  %i.c = add i32 %i.b, 63
  %i.d = lshr i32 %i.c, 6                         ; 2 uses
  %.not11.i.i = icmp eq i32 %i.d, 0
end_hunk_0
begin_hunk_1_@_ZN6hermes12RegisterFile16allocateRegisterEv:bb.a
  br i1 %i.i, label %_ZNK4llvh9BitVector10find_firstEv.exit, label %bb.d

bb.d:                                             ; preds = %_ZNK4llvh9BitVector4noneEv.exit
  %i.j = add i32 %i.b, -1                         ; 2 uses
  %i.k = lshr i32 %i.j, 6                         ; 3 uses
  %1 = and i32 %i.j, 63
  %2 = xor i32 %1, 63
  %i.l = zext nneg i32 %2 to i64
  %i.m = lshr i64 -1, %i.l                        ; 2 uses
  %i.n = zext nneg i32 %i.k to i64
  %i.o = add nuw nsw i32 %i.k, 1
end_hunk_1
begin_hunk_2_@_ZN6hermes17RegisterAllocator16allocateFastPassEN4llvh8ArrayRefIPNS_10BasicBlockEEE:bb.a
  store i32 8, ptr %i.k, align 4, !tbaa !25
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1904 ; 16 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1920 ; 11 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !31   ; 5 uses
  %i.o = add i32 %i.n, 63
  %i.p = lshr i32 %i.o, 6                         ; 2 uses
  %.not11.i.i.i = icmp eq i32 %i.p, 0
end_hunk_2
begin_hunk_3_@_ZN6hermes17RegisterAllocator16allocateFastPassEN4llvh8ArrayRefIPNS_10BasicBlockEEE:bb.a
  br i1 %i.u, label %_ZNK4llvh9BitVector10find_firstEv.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZNK4llvh9BitVector4noneEv.exit.i
  %i.v = add i32 %i.n, -1                         ; 2 uses
  %i.w = lshr i32 %i.v, 6                         ; 3 uses
  %4 = and i32 %i.v, 63
  %5 = xor i32 %4, 63
  %i.x = zext nneg i32 %5 to i64
  %i.y = lshr i64 -1, %i.x                        ; 2 uses
  %i.z = zext nneg i32 %i.w to i64
  %i.aa = add nuw nsw i32 %i.w, 1
end_hunk_3
begin_hunk_4_@_ZN6hermes17RegisterAllocator16allocateFastPassEN4llvh8ArrayRefIPNS_10BasicBlockEEE:bb.a
  br i1 %.not496, label %bb.i, label %.loopexit508

bb.i:                                             ; preds = %.lr.ph577
  %i.bj = load i32, ptr %i.c, align 8, !tbaa !31  ; 10 uses
  %i.bk = add i32 %i.bj, 63
  %i.bl = lshr i32 %i.bk, 6                       ; 2 uses
  %.not11.i.i.i67 = icmp eq i32 %i.bl, 0
end_hunk_4
begin_hunk_5_@_ZN6hermes17RegisterAllocator16allocateFastPassEN4llvh8ArrayRefIPNS_10BasicBlockEEE:bb.a
  br i1 %i.ep, label %_ZNK4llvh9BitVector10find_firstEv.exit.i78, label %bb.w

bb.w:                                             ; preds = %_ZNK4llvh9BitVector4noneEv.exit.i72
  %i.eq = add i32 %i.bj, -1                       ; 2 uses
  %i.er = lshr i32 %i.eq, 6                       ; 3 uses
  %6 = and i32 %i.eq, 63
  %7 = xor i32 %6, 63
  %i.es = zext nneg i32 %7 to i64
  %i.et = lshr i64 -1, %i.es                      ; 2 uses
  %i.eu = zext nneg i32 %i.er to i64
  %i.ev = add nuw nsw i32 %i.er, 1
end_hunk_5
begin_hunk_6_@_ZN6hermes17RegisterAllocator16allocateFastPassEN4llvh8ArrayRefIPNS_10BasicBlockEEE:bb.a
  br i1 %.not64, label %bb.cx, label %bb.bw

bb.bw:                                            ; preds = %_ZN6hermes17RegisterAllocator11isAllocatedEPNS_5ValueE.exit104
  %i.sd = load i32, ptr %i.m, align 8, !tbaa !31  ; 10 uses
  %i.se = add i32 %i.sd, 63
  %i.sf = lshr i32 %i.se, 6                       ; 2 uses
  %.not11.i.i.i105 = icmp eq i32 %i.sf, 0
end_hunk_6
begin_hunk_7_@_ZN6hermes17RegisterAllocator16allocateFastPassEN4llvh8ArrayRefIPNS_10BasicBlockEEE:bb.a
  br i1 %i.vj, label %_ZNK4llvh9BitVector10find_firstEv.exit.i116, label %bb.ck

bb.ck:                                            ; preds = %_ZNK4llvh9BitVector4noneEv.exit.i110
  %i.vk = add i32 %i.sd, -1                       ; 2 uses
  %i.vl = lshr i32 %i.vk, 6                       ; 3 uses
  %8 = and i32 %i.vk, 63
  %9 = xor i32 %8, 63
  %i.vm = zext nneg i32 %9 to i64
  %i.vn = lshr i64 -1, %i.vm                      ; 2 uses
  %i.vo = zext nneg i32 %i.vl to i64
  %i.vp = add nuw nsw i32 %i.vl, 1
end_hunk_7
begin_hunk_8_@_ZN6hermes17RegisterAllocator16allocateFastPassEN4llvh8ArrayRefIPNS_10BasicBlockEEE:bb.a
  br i1 %i.abi, label %_ZN6hermes17RegisterAllocator11isAllocatedEPNS_5ValueE.exit104.thread.sink.split.sink.split, label %_ZN6hermes17RegisterAllocator11isAllocatedEPNS_5ValueE.exit104.thread.sink.split.sink.split.sink.split

bb.di:                                            ; preds = %bb.cx
  %i.abj = load i32, ptr %i.m, align 8, !tbaa !31 ; 10 uses
  %i.abk = add i32 %i.abj, 63
  %i.abl = lshr i32 %i.abk, 6                     ; 2 uses
  %.not11.i.i.i133 = icmp eq i32 %i.abl, 0
end_hunk_8
begin_hunk_9_@_ZN6hermes17RegisterAllocator16allocateFastPassEN4llvh8ArrayRefIPNS_10BasicBlockEEE:bb.a
  br i1 %i.aep, label %_ZNK4llvh9BitVector10find_firstEv.exit.i144, label %bb.dw

bb.dw:                                            ; preds = %_ZNK4llvh9BitVector4noneEv.exit.i138
  %i.aeq = add i32 %i.abj, -1                     ; 2 uses
  %i.aer = lshr i32 %i.aeq, 6                     ; 3 uses
  %10 = and i32 %i.aeq, 63
  %11 = xor i32 %10, 63
  %i.aes = zext nneg i32 %11 to i64
  %i.aet = lshr i64 -1, %i.aes                    ; 2 uses
  %i.aeu = zext nneg i32 %i.aer to i64
  %i.aev = add nuw nsw i32 %i.aer, 1
end_hunk_9
begin_hunk_10_@_ZN6hermes17RegisterAllocator8allocateEN4llvh8ArrayRefIPNS_10BasicBlockEEE:bb.a
  br i1 %i.se, label %_ZN6hermes17RegisterAllocator11isAllocatedEPNS_5ValueE.exit.thread, label %.lr.ph.i.i.i, !prof !133, !llvm.loop !244

_ZN6hermes17RegisterAllocator11isAllocatedEPNS_5ValueE.exit: ; preds = %.lr.ph.i.i.i, %.loopexit238
  %i.sf = load i32, ptr %i.hq, align 8, !tbaa !31 ; 5 uses
  %i.sg = add i32 %i.sf, 63
  %i.sh = lshr i32 %i.sg, 6                       ; 2 uses
  %.not11.i.i.i = icmp eq i32 %i.sh, 0
end_hunk_10
begin_hunk_11_@_ZN6hermes17RegisterAllocator8allocateEN4llvh8ArrayRefIPNS_10BasicBlockEEE:bb.a
  br i1 %i.sm, label %_ZNK4llvh9BitVector10find_firstEv.exit.i, label %bb.at

bb.at:                                            ; preds = %_ZNK4llvh9BitVector4noneEv.exit.i
  %i.sn = add i32 %i.sf, -1                       ; 2 uses
  %i.so = lshr i32 %i.sn, 6                       ; 3 uses
  %7 = and i32 %i.sn, 63
  %8 = xor i32 %7, 63
  %i.sp = zext nneg i32 %8 to i64
  %i.sq = lshr i64 -1, %i.sp                      ; 2 uses
  %i.sr = zext nneg i32 %i.so to i64
  %i.ss = add nuw nsw i32 %i.so, 1
end_hunk_11
