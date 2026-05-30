inline.NumInlined: 1999
inline.NumDeleted: 790
begin_hunk_0_@_ZN6hermes12RegisterFile23tailAllocateConsecutiveEj:bb.a
  %i.u = and i32 %i.p, 63
  %i.v = zext nneg i32 %i.u to i64
  %i.w = shl nuw i64 1, %i.v
  %i.x = and i32 %.0.in.lcssa, 63
  %i.y = zext nneg i32 %i.x to i64
  %.neg.i = shl nsw i64 -1, %i.y
  %i.z = add i64 %i.w, %.neg.i
  %i.aa = xor i64 %i.z, -1
  %i.ab = zext nneg i32 %i.r to i64
  %i.ac = load ptr, ptr %0, align 8, !tbaa !28
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.ab ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !26
  %i.af = and i64 %i.ae, %i.aa
  store i64 %i.af, ptr %i.ad, align 8, !tbaa !26
  br label %_ZN4llvh9BitVector5resetEjj.exit

bb.e:                                             ; preds = %bb.c
  %i.ag = and i32 %.0.in.lcssa, 63
  %i.ah = zext nneg i32 %i.ag to i64
  %i.ai = shl nsw i64 -1, %i.ah
  %i.aj = xor i64 %i.ai, -1
  %i.ak = zext nneg i32 %i.r to i64
  %i.al = load ptr, ptr %0, align 8, !tbaa !28    ; 3 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.ak ; 2 uses
  %i.an = load i64, ptr %i.am, align 8, !tbaa !26
  %i.ao = and i64 %i.an, %i.aj
  store i64 %i.ao, ptr %i.am, align 8, !tbaa !26
  %i.ap = add i32 %.0.in.lcssa, 63
  %i.aq = and i32 %i.ap, -64                      ; 3 uses
  %i.ar = add i32 %i.aq, 64                       ; 2 uses
  %.not28.i = icmp ugt i32 %i.ar, %i.p
  br i1 %.not28.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e, %.lr.ph.i
  %i.as = phi i32 [ %i.aw, %.lr.ph.i ], [ %i.ar, %bb.e ] ; 3 uses
  %.02429.i = phi i32 [ %i.as, %.lr.ph.i ], [ %i.aq, %bb.e ]
  %i.at = lshr exact i32 %.02429.i, 6
  %i.au = zext nneg i32 %i.at to i64
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.au
  store i64 0, ptr %i.av, align 8, !tbaa !26
  %i.aw = add i32 %i.as, 64                       ; 2 uses
  %.not.i = icmp ugt i32 %i.aw, %i.p
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !41

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.e
  %.024.lcssa.i = phi i32 [ %i.aq, %bb.e ], [ %i.as, %.lr.ph.i ] ; 2 uses
  %i.ax = icmp ult i32 %.024.lcssa.i, %i.p
  br i1 %i.ax, label %bb.f, label %_ZN4llvh9BitVector5resetEjj.exit

bb.f:                                             ; preds = %._crit_edge.i
  %i.ay = and i32 %i.p, 63
  %i.az = zext nneg i32 %i.ay to i64
  %notmask.i = shl nsw i64 -1, %i.az
  %i.ba = lshr exact i32 %.024.lcssa.i, 6
  %i.bb = zext nneg i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.bb ; 2 uses
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !26
  %i.be = and i64 %i.bd, %notmask.i
  store i64 %i.be, ptr %i.bc, align 8, !tbaa !26
  br label %_ZN4llvh9BitVector5resetEjj.exit

_ZN4llvh9BitVector5resetEjj.exit:                 ; preds = %._crit_edge20, %bb.d, %._crit_edge.i, %bb.f
  ret i32 %.0.in.lcssa
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes17RegisterAllocator9lowerPhisEN4llvh8ArrayRefIPNS_10BasicBlockEEE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(1952) %0, ptr readonly captures(address) %1, i64 %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.llvh::SmallVector.1", align 8 ; 11 uses
  %4 = alloca %"class.hermes::IRBuilder", align 8 ; 8 uses
  %5 = alloca %"class.llvh::SmallVector.27", align 8 ; 11 uses
  %6 = alloca %"class.llvh::DenseMap.38", align 8 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store ptr %i.a, ptr %3, align 8, !tbaa !22
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  store i32 0, ptr %i.b, align 8, !tbaa !24
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  store i32 8, ptr %i.c, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1944
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !42
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !62
  store ptr %i.g, ptr %4, align 8, !tbaa !104
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.h, i8 0, i64 32, i1 false)
  %.idx = shl nuw nsw i64 %2, 3
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 %.idx ; 2 uses
  %.not129 = icmp eq i64 %2, 0                    ; 2 uses
  br i1 %.not129, label %._crit_edge142.thread, label %.lr.ph132

._crit_edge133:                                   ; preds = %._crit_edge
  %.pre = load ptr, ptr %3, align 8, !tbaa !22    ; 2 uses
  %i.j = zext i32 %i.s to i64
  %.idx159 = shl nuw nsw i64 %i.j, 3
  %i.k = getelementptr inbounds nuw i8, ptr %.pre, i64 %.idx159
  %.not72138 = icmp eq i32 %i.s, 0
  br i1 %.not72138, label %._crit_edge142.thread, label %.lr.ph141

.lr.ph141:                                        ; preds = %._crit_edge133
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 12
  br label %bb.e

.lr.ph132:                                        ; preds = %bb.a, %._crit_edge
  %i.o = phi i32 [ %i.s, %._crit_edge ], [ 0, %bb.a ] ; 2 uses
  %.0130 = phi ptr [ %i.t, %._crit_edge ], [ %1, %bb.a ] ; 2 uses
  %i.p = load ptr, ptr %.0130, align 8, !tbaa !109 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 64
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 56 ; 2 uses
  %.sroa.0102.0126 = load ptr, ptr %i.q, align 8, !tbaa !110 ; 2 uses
  %.not112127 = icmp eq ptr %.sroa.0102.0126, %i.r
  br i1 %.not112127, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.d, %.lr.ph132
  %i.s = phi i32 [ %i.o, %.lr.ph132 ], [ %i.ag, %bb.d ] ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.0130, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.t, %i.i
  br i1 %.not, label %._crit_edge133, label %.lr.ph132

.lr.ph:                                           ; preds = %.lr.ph132, %bb.d
  %i.u = phi i32 [ %i.ag, %bb.d ], [ %i.o, %.lr.ph132 ] ; 3 uses
  %.sroa.0102.0128 = phi ptr [ %.sroa.0102.0, %bb.d ], [ %.sroa.0102.0126, %.lr.ph132 ] ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0102.0128, i64 16
  %i.w = load i8, ptr %i.v, align 8, !tbaa !111
  %i.x = icmp ne i8 %i.w, 33
  %.not76113 = icmp eq ptr %.sroa.0102.0128, null
  %.not76 = or i1 %.not76113, %i.x
  br i1 %.not76, label %bb.d, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.y = load i32, ptr %i.c, align 4, !tbaa !25
  %.not.i = icmp ult i32 %i.u, %i.y
  br i1 %.not.i, label %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes7PhiInstELb1EE9push_backERKS3_.exit, label %bb.c, !prof !27

bb.c:                                             ; preds = %bb.b
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull %i.a, i64 noundef 0, i64 noundef 8) #18
  %.pre.i = load i32, ptr %i.b, align 8, !tbaa !24
  br label %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes7PhiInstELb1EE9push_backERKS3_.exit

_ZN4llvh23SmallVectorTemplateBaseIPN6hermes7PhiInstELb1EE9push_backERKS3_.exit: ; preds = %bb.b, %bb.c
  %i.z = phi i32 [ %.pre.i, %bb.c ], [ %i.u, %bb.b ]
  %i.aa = load ptr, ptr %3, align 8, !tbaa !22
  %i.ab = zext i32 %i.z to i64
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.ab
  %i.ad = ptrtoint ptr %.sroa.0102.0128 to i64
  store i64 %i.ad, ptr %i.ac, align 1
  %i.ae = load i32, ptr %i.b, align 8, !tbaa !24
  %i.af = add i32 %i.ae, 1                        ; 2 uses
  store i32 %i.af, ptr %i.b, align 8, !tbaa !24
  br label %bb.d

bb.d:                                             ; preds = %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes7PhiInstELb1EE9push_backERKS3_.exit, %.lr.ph
  %i.ag = phi i32 [ %i.af, %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes7PhiInstELb1EE9push_backERKS3_.exit ], [ %i.u, %.lr.ph ] ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0102.0128, i64 8
  %.sroa.0102.0 = load ptr, ptr %i.ah, align 8, !tbaa !110 ; 2 uses
  %.not112 = icmp eq ptr %.sroa.0102.0, %i.r
  br i1 %.not112, label %._crit_edge, label %.lr.ph

._crit_edge142.thread:                            ; preds = %._crit_edge133, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %6, i8 0, i64 20, i1 false)
  br label %.preheader

._crit_edge142:                                   ; preds = %_ZL12phiReadWritePN6hermes7PhiInstE.exit.thread
  %.pre178 = load ptr, ptr %3, align 8, !tbaa !22 ; 2 uses
  %.pre179 = load i32, ptr %i.b, align 8, !tbaa !24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %6, i8 0, i64 20, i1 false)
  %i.ai = zext i32 %.pre179 to i64
  %.idx161 = shl nuw nsw i64 %i.ai, 3
  %i.aj = getelementptr inbounds nuw i8, ptr %.pre178, i64 %.idx161
  %.not73147 = icmp eq i32 %.pre179, 0
  br i1 %.not73147, label %.preheader, label %.lr.ph150

.lr.ph150:                                        ; preds = %._crit_edge142
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 3 uses
  br label %bb.p

bb.e:                                             ; preds = %.lr.ph141, %_ZL12phiReadWritePN6hermes7PhiInstE.exit.thread
  %.067139 = phi ptr [ %.pre, %.lr.ph141 ], [ %i.cs, %_ZL12phiReadWritePN6hermes7PhiInstE.exit.thread ] ; 2 uses
  %i.an = load ptr, ptr %.067139, align 8, !tbaa !112 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 56 ; 3 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !114 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 16 ; 4 uses
  %i.ar = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK6hermes5Value8getUsersEv(ptr noundef nonnull align 8 dereferenceable(40) %i.aq) #18 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !22 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.au = load i32, ptr %i.at, align 8, !tbaa !24 ; 2 uses
  %i.av = zext i32 %i.au to i64
  %.idx.i = shl nuw nsw i64 %i.av, 3
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 %.idx.i
  %.not24.i = icmp eq i32 %i.au, 0
  br i1 %.not24.i, label %_ZL12phiReadWritePN6hermes7PhiInstE.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e, %bb.h
  %.028.i = phi i1 [ %8, %bb.h ], [ false, %bb.e ] ; 3 uses
  %.01727.i = phi ptr [ %i.bl, %bb.h ], [ %i.as, %bb.e ] ; 2 uses
  %.01826.i = phi i1 [ %i.bk, %bb.h ], [ false, %bb.e ] ; 2 uses
  %.01925.i = phi i1 [ %i.bc, %bb.h ], [ false, %bb.e ]
  %i.ax = load ptr, ptr %.01727.i, align 8, !tbaa !124 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.az = load i8, ptr %i.ay, align 8, !tbaa !111 ; 2 uses
  %i.ba = add i8 %i.az, -75
  %i.bb = icmp ult i8 %i.ba, 15
  %i.bc = or i1 %.01925.i, %i.bb                  ; 2 uses
  %i.bd = icmp eq i8 %i.az, 33
  %i.be = getelementptr inbounds nuw i8, ptr %i.ax, i64 56
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !114 ; 2 uses
  br i1 %i.bd, label %bb.f, label %.lr.ph._crit_edge.i

.lr.ph._crit_edge.i:                              ; preds = %.lr.ph.i
  %i.bg = icmp ne ptr %i.bf, %i.ap
  %i.bh = or i1 %.01826.i, %i.bg
  br label %bb.h

bb.f:                                             ; preds = %.lr.ph.i
  %i.bi = icmp eq ptr %i.bf, %i.ap
  br i1 %i.bi, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bj = icmp ne ptr %i.an, %i.ax
  %7 = or i1 %.028.i, %i.bj
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %.lr.ph._crit_edge.i
  %i.bk = phi i1 [ true, %bb.f ], [ %i.bh, %.lr.ph._crit_edge.i ], [ %.01826.i, %bb.g ] ; 2 uses
  %8 = phi i1 [ %.028.i, %bb.f ], [ %.028.i, %.lr.ph._crit_edge.i ], [ %7, %bb.g ] ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.01727.i, i64 8 ; 2 uses
  %.not.i77 = icmp eq ptr %i.bl, %i.aw
  br i1 %.not.i77, label %_ZL12phiReadWritePN6hermes7PhiInstE.exit, label %.lr.ph.i

_ZL12phiReadWritePN6hermes7PhiInstE.exit:         ; preds = %bb.h
  %i.bm = select i1 %i.bc, i1 true, i1 %8
  %i.bn = select i1 %i.bm, i1 true, i1 %i.bk
  br i1 %i.bn, label %bb.i, label %_ZL12phiReadWritePN6hermes7PhiInstE.exit.thread

bb.i:                                             ; preds = %_ZL12phiReadWritePN6hermes7PhiInstE.exit
  %i.bo = load ptr, ptr %i.ao, align 8, !tbaa !114
  %i.bp = call noundef ptr @_ZN6hermes10BasicBlock13getTerminatorEv(ptr noundef nonnull align 8 dereferenceable(80) %i.bo) #18
  call void @_ZN6hermes9IRBuilder17setInsertionPointEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef %i.bp) #18
  %i.bq = call noundef ptr @_ZN6hermes9IRBuilder13createMovInstEPNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull %i.aq) #18 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %i.br = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK6hermes5Value8getUsersEv(ptr noundef nonnull align 8 dereferenceable(40) %i.aq) #18 ; 3 uses
  store ptr %i.l, ptr %5, align 8, !tbaa !22
  store i32 0, ptr %i.m, align 8, !tbaa !24
  store i32 2, ptr %i.n, align 4, !tbaa !25
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8 ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !24 ; 6 uses
  %.not.i.i = icmp eq i32 %i.bt, 0
  %i.bu = icmp eq ptr %5, %i.br
  %or.cond.i = or i1 %i.bu, %.not.i.i
  br i1 %or.cond.i, label %_ZN4llvh11SmallVectorIPN6hermes11InstructionELj2EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bv = icmp ugt i32 %i.bt, 2
  br i1 %i.bv, label %_ZSt4copyIPKPN6hermes11InstructionEPS2_ET0_T_S7_S6_.exit30.i.i, label %_ZSt4copyIPKPN6hermes11InstructionEPS2_ET0_T_S7_S6_.exit30.i.thread.i

_ZSt4copyIPKPN6hermes11InstructionEPS2_ET0_T_S7_S6_.exit30.i.i: ; preds = %bb.j
  %i.bw = zext i32 %i.bt to i64
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull %i.l, i64 noundef %i.bw, i64 noundef 8) #18
  %.pre.i78 = load i32, ptr %i.bs, align 8, !tbaa !24 ; 2 uses
  %.not.i.i.i = icmp eq i32 %.pre.i78, 0
  br i1 %.not.i.i.i, label %.lr.ph136, label %_ZSt4copyIPKPN6hermes11InstructionEPS2_ET0_T_S7_S6_.exit30.i.i._ZSt4copyIPKPN6hermes11InstructionEPS2_ET0_T_S7_S6_.exit30.i.thread.i_crit_edge

_ZSt4copyIPKPN6hermes11InstructionEPS2_ET0_T_S7_S6_.exit30.i.i._ZSt4copyIPKPN6hermes11InstructionEPS2_ET0_T_S7_S6_.exit30.i.thread.i_crit_edge: ; preds = %_ZSt4copyIPKPN6hermes11InstructionEPS2_ET0_T_S7_S6_.exit30.i.i
  %.pre175 = load ptr, ptr %5, align 8, !tbaa !22
  br label %_ZSt4copyIPKPN6hermes11InstructionEPS2_ET0_T_S7_S6_.exit30.i.thread.i

_ZSt4copyIPKPN6hermes11InstructionEPS2_ET0_T_S7_S6_.exit30.i.thread.i: ; preds = %_ZSt4copyIPKPN6hermes11InstructionEPS2_ET0_T_S7_S6_.exit30.i.i._ZSt4copyIPKPN6hermes11InstructionEPS2_ET0_T_S7_S6_.exit30.i.thread.i_crit_edge, %bb.j
  %i.bx = phi ptr [ %.pre175, %_ZSt4copyIPKPN6hermes11InstructionEPS2_ET0_T_S7_S6_.exit30.i.i._ZSt4copyIPKPN6hermes11InstructionEPS2_ET0_T_S7_S6_.exit30.i.thread.i_crit_edge ], [ %i.l, %bb.j ]
  %i.by = phi i32 [ %.pre.i78, %_ZSt4copyIPKPN6hermes11InstructionEPS2_ET0_T_S7_S6_.exit30.i.i._ZSt4copyIPKPN6hermes11InstructionEPS2_ET0_T_S7_S6_.exit30.i.thread.i_crit_edge ], [ %i.bt, %bb.j ]
  %i.bz = zext i32 %i.by to i64
  %i.ca = load ptr, ptr %i.br, align 8, !tbaa !22
  %gepdiff.i.i = shl nuw nsw i64 %i.bz, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bx, ptr align 8 %i.ca, i64 %gepdiff.i.i, i1 false)
  br label %.lr.ph136

.lr.ph136:                                        ; preds = %_ZSt4copyIPKPN6hermes11InstructionEPS2_ET0_T_S7_S6_.exit30.i.thread.i, %_ZSt4copyIPKPN6hermes11InstructionEPS2_ET0_T_S7_S6_.exit30.i.i
  store i32 %i.bt, ptr %i.m, align 8, !tbaa !24
  %.pre176 = load ptr, ptr %5, align 8, !tbaa !22 ; 2 uses
  %i.cb = zext i32 %i.bt to i64
  %.idx160 = shl nuw nsw i64 %i.cb, 3
  %i.cc = getelementptr inbounds nuw i8, ptr %.pre176, i64 %.idx160
  %i.cd = icmp eq ptr %i.bq, null
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.cf = select i1 %i.cd, ptr null, ptr %i.ce
  br label %bb.l

._crit_edge137:                                   ; preds = %bb.o
  %.pre177 = load ptr, ptr %5, align 8, !tbaa !22 ; 2 uses
  %i.cg = icmp eq ptr %.pre177, %i.l
  br i1 %i.cg, label %_ZN4llvh11SmallVectorIPN6hermes11InstructionELj2EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %._crit_edge137
  call void @free(ptr noundef %.pre177) #18
  br label %_ZN4llvh11SmallVectorIPN6hermes11InstructionELj2EED2Ev.exit

_ZN4llvh11SmallVectorIPN6hermes11InstructionELj2EED2Ev.exit: ; preds = %bb.i, %._crit_edge137, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br label %_ZL12phiReadWritePN6hermes7PhiInstE.exit.thread

bb.l:                                             ; preds = %.lr.ph136, %bb.o
  %.068135 = phi ptr [ %.pre176, %.lr.ph136 ], [ %i.cr, %bb.o ] ; 2 uses
  %i.ch = load ptr, ptr %.068135, align 8, !tbaa !124 ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %i.cj = load i8, ptr %i.ci, align 8, !tbaa !111 ; 2 uses
  %i.ck = icmp eq i8 %i.cj, 33
  %i.cl = add i8 %i.cj, -75
  %i.cm = icmp ult i8 %i.cl, 15
  %or.cond = or i1 %i.ck, %i.cm
  br i1 %or.cond, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ch, i64 56
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !114
  %i.cp = load ptr, ptr %i.ao, align 8, !tbaa !114
  %i.cq = icmp eq ptr %i.co, %i.cp
  br i1 %i.cq, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  call void @_ZN6hermes11Instruction23replaceFirstOperandWithEPNS_5ValueES2_(ptr noundef nonnull align 8 dereferenceable(132) %i.ch, ptr noundef nonnull %i.aq, ptr noundef %i.cf) #18
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n
  %i.cr = getelementptr inbounds nuw i8, ptr %.068135, i64 8 ; 2 uses
  %.not75 = icmp eq ptr %i.cr, %i.cc
  br i1 %.not75, label %._crit_edge137, label %bb.l

_ZL12phiReadWritePN6hermes7PhiInstE.exit.thread:  ; preds = %bb.e, %_ZL12phiReadWritePN6hermes7PhiInstE.exit, %_ZN4llvh11SmallVectorIPN6hermes11InstructionELj2EED2Ev.exit
  %i.cs = getelementptr inbounds nuw i8, ptr %.067139, i64 8 ; 2 uses
  %.not72 = icmp eq ptr %i.cs, %i.k
  br i1 %.not72, label %._crit_edge142, label %bb.e

.preheader:                                       ; preds = %._crit_edge146, %._crit_edge142.thread, %._crit_edge142
  br i1 %.not129, label %._crit_edge158, label %.lr.ph157

.lr.ph157:                                        ; preds = %.preheader
  %i.ct = getelementptr inbounds nuw i8, ptr %6, i64 16
  br label %bb.ab

bb.p:                                             ; preds = %.lr.ph150, %._crit_edge146
  %.070148 = phi ptr [ %.pre178, %.lr.ph150 ], [ %i.cw, %._crit_edge146 ] ; 2 uses
  %i.cu = load ptr, ptr %.070148, align 8, !tbaa !112 ; 3 uses
  %i.cv = call noundef i32 @_ZNK6hermes7PhiInst13getNumEntriesEv(ptr noundef nonnull align 8 dereferenceable(132) %i.cu) #18 ; 2 uses
  %.not162 = icmp eq i32 %i.cv, 0
  br i1 %.not162, label %._crit_edge146, label %.lr.ph145

._crit_edge146:                                   ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes5ValueEPNS2_7MovInstENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E16FindAndConstructERKS4_.exit, %bb.p
  %i.cw = getelementptr inbounds nuw i8, ptr %.070148, i64 8 ; 2 uses
  %.not73 = icmp eq ptr %i.cw, %i.aj
  br i1 %.not73, label %.preheader, label %bb.p

.lr.ph145:                                        ; preds = %bb.p, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes5ValueEPNS2_7MovInstENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E16FindAndConstructERKS4_.exit
  %.071143 = phi i32 [ %i.ft, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes5ValueEPNS2_7MovInstENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E16FindAndConstructERKS4_.exit ], [ 0, %bb.p ] ; 3 uses
  %i.cx = call { ptr, ptr } @_ZNK6hermes7PhiInst8getEntryEj(ptr noundef nonnull align 8 dereferenceable(132) %i.cu, i32 noundef %.071143) #18 ; 2 uses
  %i.cy = extractvalue { ptr, ptr } %i.cx, 0      ; 8 uses
  %i.cz = extractvalue { ptr, ptr } %i.cx, 1      ; 2 uses
  %i.da = call noundef ptr @_ZN6hermes10BasicBlock13getTerminatorEv(ptr noundef nonnull align 8 dereferenceable(80) %i.cz) #18
  call void @_ZN6hermes9IRBuilder17setInsertionPointEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef %i.da) #18
  %i.db = call noundef ptr @_ZN6hermes9IRBuilder13createMovInstEPNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef %i.cy) #18 ; 3 uses
  %i.dc = icmp eq ptr %i.db, null
  %i.dd = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  %spec.select2 = select i1 %i.dc, ptr null, ptr %i.dd
  call void @_ZN6hermes7PhiInst11updateEntryEjPNS_5ValueEPNS_10BasicBlockE(ptr noundef nonnull align 8 dereferenceable(132) %i.cu, i32 noundef %.071143, ptr noundef %spec.select2, ptr noundef nonnull %i.cz) #18
  %i.de = load ptr, ptr %6, align 8, !tbaa !126   ; 2 uses
  %i.df = load i32, ptr %i.ak, align 8, !tbaa !129 ; 7 uses
  %i.dg = icmp eq i32 %i.df, 0
  br i1 %i.dg, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes5ValueEPNS2_7MovInstENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIS4_EEbRKT_RPSB_.exit.i, label %bb.q

bb.q:                                             ; preds = %.lr.ph145
  %i.dh = ptrtoint ptr %i.cy to i64
  %i.di = trunc i64 %i.dh to i32                  ; 2 uses
  %i.dj = lshr i32 %i.di, 4
  %i.dk = lshr i32 %i.di, 9
  %i.dl = xor i32 %i.dj, %i.dk
  %i.dm = add i32 %i.df, -1                       ; 2 uses
  %.02944.i.i.i79 = and i32 %i.dm, %i.dl          ; 2 uses
  %i.dn = zext nneg i32 %.02944.i.i.i79 to i64
  %i.do = getelementptr inbounds nuw [16 x i8], ptr %i.de, i64 %i.dn ; 3 uses
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !130 ; 2 uses
  %i.dq = icmp eq ptr %i.cy, %i.dp
  br i1 %i.dq, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes5ValueEPNS2_7MovInstENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E16FindAndConstructERKS4_.exit, label %.lr.ph.i.i.i80, !prof !132

.lr.ph.i.i.i80:                                   ; preds = %bb.q, %bb.s
  %i.dr = phi ptr [ %i.eb, %bb.s ], [ %i.dp, %bb.q ] ; 2 uses
  %i.ds = phi ptr [ %i.ea, %bb.s ], [ %i.do, %bb.q ] ; 2 uses
  %.02947.i.i.i81 = phi i32 [ %.029.i.i.i83, %bb.s ], [ %.02944.i.i.i79, %bb.q ]
  %.02746.i.i.i82 = phi i32 [ %i.dx, %bb.s ], [ 1, %bb.q ] ; 2 uses
  %.03245.i.i.i = phi ptr [ %spec.select.i.i.i, %bb.s ], [ null, %bb.q ] ; 4 uses
  %i.dt = icmp eq ptr %i.dr, inttoptr (i64 -8 to ptr)
  br i1 %i.dt, label %bb.r, label %bb.s, !prof !27

bb.r:                                             ; preds = %.lr.ph.i.i.i80
  %.not.i.i.i85 = icmp eq ptr %.03245.i.i.i, null
  %i.du = select i1 %.not.i.i.i85, ptr %i.ds, ptr %.03245.i.i.i
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes5ValueEPNS2_7MovInstENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIS4_EEbRKT_RPSB_.exit.i

bb.s:                                             ; preds = %.lr.ph.i.i.i80
  %i.dv = icmp eq ptr %i.dr, inttoptr (i64 -16 to ptr)
  %i.dw = icmp eq ptr %.03245.i.i.i, null
  %or.cond.not.i.i.i = select i1 %i.dv, i1 %i.dw, i1 false
  %spec.select.i.i.i = select i1 %or.cond.not.i.i.i, ptr %i.ds, ptr %.03245.i.i.i
  %i.dx = add i32 %.02746.i.i.i82, 1
  %i.dy = add i32 %.02746.i.i.i82, %.02947.i.i.i81
  %.029.i.i.i83 = and i32 %i.dy, %i.dm            ; 2 uses
  %i.dz = zext i32 %.029.i.i.i83 to i64
  %i.ea = getelementptr inbounds nuw [16 x i8], ptr %i.de, i64 %i.dz ; 3 uses
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !130 ; 2 uses
  %i.ec = icmp eq ptr %i.cy, %i.eb
  br i1 %i.ec, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes5ValueEPNS2_7MovInstENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E16FindAndConstructERKS4_.exit, label %.lr.ph.i.i.i80, !prof !133, !llvm.loop !134

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes5ValueEPNS2_7MovInstENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIS4_EEbRKT_RPSB_.exit.i: ; preds = %bb.r, %.lr.ph145
  %.sink.i.i.i = phi ptr [ %i.du, %bb.r ], [ null, %.lr.ph145 ]
  %i.ed = load i32, ptr %i.al, align 8, !tbaa !135 ; 3 uses
  %i.ee = shl i32 %i.ed, 2
  %i.ef = add i32 %i.ee, 4
  %i.eg = mul i32 %i.df, 3
  %.not.i.i4.i = icmp ult i32 %i.ef, %i.eg
  br i1 %.not.i.i4.i, label %bb.u, label %bb.t, !prof !27

bb.t:                                             ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes5ValueEPNS2_7MovInstENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIS4_EEbRKT_RPSB_.exit.i
  %i.eh = shl i32 %i.df, 1
  br label %.sink.split.i.i.i

bb.u:                                             ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes5ValueEPNS2_7MovInstENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIS4_EEbRKT_RPSB_.exit.i
  %i.ei = load i32, ptr %i.am, align 4, !tbaa !136
  %.neg.i.i.i = xor i32 %i.ed, -1
  %.neg12.i.i.i = add i32 %i.df, %.neg.i.i.i
  %i.ej = sub i32 %.neg12.i.i.i, %i.ei
  %i.ek = lshr i32 %i.df, 3
  %.not10.i.i.i = icmp ugt i32 %i.ej, %i.ek
  br i1 %.not10.i.i.i, label %bb.y, label %.sink.split.i.i.i, !prof !27

end_hunk_0
