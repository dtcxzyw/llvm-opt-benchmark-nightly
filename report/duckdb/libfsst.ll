Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/libfsst?download=true
inline.NumInlined: 716
inline.NumDeleted: 392
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 24
begin_hunk_0_@duckdb_fsst_duplicate:bb.a
  %i.i = load i32, ptr %i.g, align 4, !tbaa !8
  %i.j = add nsw i32 %i.i, 1
  store i32 %i.j, ptr %i.g, align 4, !tbaa !8
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i: ; preds = %bb.b
  %i.k = atomicrmw volatile add ptr %i.g, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i = load ptr, ptr %i.d, align 8, !tbaa !63 ; 8 uses
  %.not8.i.i.i = icmp eq ptr %.pr.pre.i.i.i, null
  br i1 %.not8.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.pr.pre.i.i.i, i64 8 ; 4 uses
  %i.m = load atomic i64, ptr %i.l acquire, align 8 ; 2 uses
  %i.n = icmp eq i64 %i.m, 4294967297
  %i.o = trunc i64 %i.m to i32                    ; 2 uses
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.l, align 8, !tbaa !56
  %i.p = getelementptr inbounds nuw i8, ptr %.pr.pre.i.i.i, i64 12
  store i32 0, ptr %i.p, align 4, !tbaa !57
  %i.q = load ptr, ptr %.pr.pre.i.i.i, align 8, !tbaa !14
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load ptr, ptr %i.r, align 8
  tail call void %i.s(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i.i.i) #22, !inline_history !128
  %i.t = load ptr, ptr %.pr.pre.i.i.i, align 8, !tbaa !14
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load ptr, ptr %i.u, align 8
  tail call void %i.v(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i.i.i) #22, !inline_history !128
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

bb.e:                                             ; preds = %bb.c
  %i.w = load i8, ptr @__libc_single_threaded, align 1, !tbaa !12
  %.not.i9.i.i.i = icmp eq i8 %i.w, 0
  br i1 %.not.i9.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = add nsw i32 %i.o, -1
  store i32 %i.x, ptr %i.l, align 8, !tbaa !8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.y = atomicrmw volatile add ptr %i.l, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i = phi i32 [ %i.o, %bb.f ], [ %i.y, %bb.g ]
  %i.z = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.z, label %bb.h, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, !prof !54

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i.i.i) #22
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i: ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.thread, %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.d, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  store ptr %i.f, ptr %i.d, align 8, !tbaa !63
  br label %_ZNSt10shared_ptrIN7libfsst11SymbolTableEEaSERKS2_.exit

_ZNSt10shared_ptrIN7libfsst11SymbolTableEEaSERKS2_.exit: ; preds = %bb.a, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden i32 @duckdb_fsst_export(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 17)) %1) local_unnamed_addr #8 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !65     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 156162
  %i.c = load i16, ptr %i.b, align 2, !tbaa !20
  %i.d = zext i16 %i.c to i64
  %i.e = shl nuw nsw i64 %i.d, 24
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 156164
  %i.g = load i16, ptr %i.f, align 4, !tbaa !21
  %i.h = zext i16 %i.g to i64
  %i.i = shl nuw nsw i64 %i.h, 16
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 156160
  %i.k = load i16, ptr %i.j, align 8, !tbaa !42
  %i.l = zext i16 %i.k to i64
  %i.m = shl nuw nsw i64 %i.l, 8
  %i.n = or i64 %i.e, %i.i
  %i.o = or i64 %i.n, %i.m
  %i.p = or i64 %i.o, 86716326009110529
  store i64 %i.p, ptr %1, align 1
  %i.q = load ptr, ptr %0, align 8, !tbaa !65
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 156166
  %i.s = load i8, ptr %i.r, align 2, !tbaa !22, !range !66, !noundef !67
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i8 %i.s, ptr %i.t, align 1, !tbaa !12
  %i.u = load ptr, ptr %0, align 8, !tbaa !65
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 156168
  %i.w = load i16, ptr %i.v, align 2, !tbaa !24
  %i.x = trunc i16 %i.w to i8
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 9
  store i8 %i.x, ptr %i.y, align 1, !tbaa !12
  %i.z = load ptr, ptr %0, align 8, !tbaa !65
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 156170
  %i.ab = load i16, ptr %i.aa, align 2, !tbaa !24
  %i.ac = trunc i16 %i.ab to i8
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 10
  store i8 %i.ac, ptr %i.ad, align 1, !tbaa !12
  %i.ae = load ptr, ptr %0, align 8, !tbaa !65
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 156172
  %i.ag = load i16, ptr %i.af, align 2, !tbaa !24
  %i.ah = trunc i16 %i.ag to i8
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 11
  store i8 %i.ah, ptr %i.ai, align 1, !tbaa !12
  %i.aj = load ptr, ptr %0, align 8, !tbaa !65
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 156174
  %i.al = load i16, ptr %i.ak, align 2, !tbaa !24
  %i.am = trunc i16 %i.al to i8
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i8 %i.am, ptr %i.an, align 1, !tbaa !12
  %i.ao = load ptr, ptr %0, align 8, !tbaa !65
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 156176
  %i.aq = load i16, ptr %i.ap, align 2, !tbaa !24
  %i.ar = trunc i16 %i.aq to i8
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 13
  store i8 %i.ar, ptr %i.as, align 1, !tbaa !12
  %i.at = load ptr, ptr %0, align 8, !tbaa !65
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 156178
  %i.av = load i16, ptr %i.au, align 2, !tbaa !24
  %i.aw = trunc i16 %i.av to i8
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 14
  store i8 %i.aw, ptr %i.ax, align 1, !tbaa !12
  %i.ay = load ptr, ptr %0, align 8, !tbaa !65
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 156180
  %i.ba = load i16, ptr %i.az, align 2, !tbaa !24
  %i.bb = trunc i16 %i.ba to i8
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 15
  store i8 %i.bb, ptr %i.bc, align 1, !tbaa !12
  %i.bd = load ptr, ptr %0, align 8, !tbaa !65
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 156182
  %i.bf = load i16, ptr %i.be, align 2, !tbaa !24
  %i.bg = trunc i16 %i.bf to i8
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i8 %i.bg, ptr %i.bh, align 1, !tbaa !12
  %i.bi = load ptr, ptr %0, align 8, !tbaa !65    ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 156166
  %i.bk = load i8, ptr %i.bj, align 2, !tbaa !22, !range !66, !noundef !67 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 156160
  %i.bm = load i16, ptr %i.bl, align 8, !tbaa !42
  %i.bn = zext nneg i8 %i.bk to i16
  %i.bo = icmp ugt i16 %i.bm, %i.bn
  br i1 %i.bo, label %.preheader.preheader, label %._crit_edge35

.preheader.preheader:                             ; preds = %bb.a
  %i.bp = zext nneg i8 %i.bk to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %i.bq = phi ptr [ %i.bi, %.preheader.preheader ], [ %i.bv, %._crit_edge ] ; 3 uses
  %indvars.iv39 = phi i64 [ %i.bp, %.preheader.preheader ], [ %indvars.iv.next40, %._crit_edge ] ; 4 uses
  %.02833 = phi i32 [ 17, %.preheader.preheader ], [ %.1.lcssa, %._crit_edge ] ; 2 uses
  %i.br = getelementptr inbounds nuw [16 x i8], ptr %i.bq, i64 %indvars.iv39
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 131592
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !11
  %i.bu = and i64 %i.bt, 1152921504338411520
  %.not = icmp eq i64 %i.bu, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge35:                                    ; preds = %._crit_edge, %bb.a
  %.028.lcssa = phi i32 [ 17, %bb.a ], [ %.1.lcssa, %._crit_edge ]
  ret i32 %.028.lcssa

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  %i.bv = phi ptr [ %i.bq, %.preheader ], [ %i.ci, %.lr.ph ] ; 2 uses
  %.1.lcssa = phi i32 [ %.02833, %.preheader ], [ %i.cf, %.lr.ph ] ; 2 uses
  %indvars.iv.next40 = add nuw nsw i64 %indvars.iv39, 1 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 156160
  %i.bx = load i16, ptr %i.bw, align 8, !tbaa !42
  %i.by = zext i16 %i.bx to i64
  %i.bz = icmp samesign ult i64 %indvars.iv.next40, %i.by
  br i1 %i.bz, label %.preheader, label %._crit_edge35, !llvm.loop !129

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %.preheader ] ; 2 uses
  %i.ca = phi ptr [ %i.ci, %.lr.ph ], [ %i.bq, %.preheader ]
  %.131 = phi i32 [ %i.cf, %.lr.ph ], [ %.02833, %.preheader ] ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 131584
  %i.cc = getelementptr inbounds nuw [16 x i8], ptr %i.cb, i64 %indvars.iv39
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 %indvars.iv
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !12
  %i.cf = add i32 %.131, 1                        ; 2 uses
  %i.cg = zext i32 %.131 to i64
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 %i.cg
  store i8 %i.ce, ptr %i.ch, align 1, !tbaa !12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ci = load ptr, ptr %0, align 8, !tbaa !65    ; 3 uses
  %i.cj = getelementptr inbounds nuw [16 x i8], ptr %i.ci, i64 %indvars.iv39
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 131592
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !11
  %i.cm = lshr i64 %i.cl, 28
  %i.cn = and i64 %i.cm, 4294967295
  %i.co = icmp samesign ult i64 %indvars.iv.next, %i.cn
  br i1 %i.co, label %.lr.ph, label %._crit_edge, !llvm.loop !130
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden i32 @duckdb_fsst_import(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #9 {
bb.a:
  %.0.copyload = load i64, ptr %1, align 1
  %.mask = and i64 %.0.copyload, -4294967296
  %.not = icmp eq i64 %.mask, 86716326009110528
  br i1 %.not, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i8, ptr %i.a, align 1, !tbaa !12    ; 3 uses
  %i.c = and i8 %i.b, 1                           ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.c, ptr %i.d, align 8, !tbaa !136
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.f = load i64, ptr %i.e, align 1              ; 14 uses
  %.sroa.0.0.extract.trunc = trunc i64 %i.f to i8 ; 2 uses
  %.sroa.11.0.extract.shift = lshr i64 %i.f, 32
  %.sroa.12.0.extract.shift = lshr i64 %i.f, 40
  %.sroa.13.0.extract.shift = lshr i64 %i.f, 48
  %.sroa.14.0.extract.shift = lshr i64 %i.f, 56   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 9 ; 16 uses
  store i8 1, ptr %i.g, align 1, !tbaa !12
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 16 uses
  store i64 0, ptr %i.h, align 8, !tbaa !137
  %i.i = zext nneg i8 %i.c to i32
  %i.j = and i8 %i.b, 1                           ; 2 uses
  %spec.select = sub i8 %.sroa.0.0.extract.trunc, %i.j ; 3 uses
  %i.k = trunc i64 %i.f to i32
  %i.l = lshr i32 %i.k, 8
  %i.m = and i32 %i.l, 255
  %i.n = and i64 %i.f, 65280
  %.not61 = icmp eq i64 %i.n, 0
  br i1 %.not61, label %._crit_edge52, label %.lr.ph51

.lr.ph51:                                         ; preds = %.preheader
  %i.o = and i8 %i.b, 1
  %i.p = zext nneg i8 %i.o to i64
  br label %.lr.ph.preheader

._crit_edge52.loopexit:                           ; preds = %.lr.ph.preheader
  %i.q = trunc nuw nsw i64 %indvars.iv.next87 to i32
  br label %._crit_edge52

._crit_edge52:                                    ; preds = %._crit_edge52.loopexit, %.preheader
  %.141.lcssa = phi i32 [ %i.i, %.preheader ], [ %i.q, %._crit_edge52.loopexit ] ; 2 uses
  %.1.lcssa = phi i32 [ 17, %.preheader ], [ %i.ie, %._crit_edge52.loopexit ] ; 2 uses
  %i.r = trunc i64 %i.f to i32
  %i.s = lshr i32 %i.r, 16
  %i.t = and i32 %i.s, 255
  %i.u = and i64 %i.f, 16711680
  %.not61.1 = icmp eq i64 %i.u, 0
  br i1 %.not61.1, label %._crit_edge52.1, label %.lr.ph51.1

.lr.ph51.1:                                       ; preds = %._crit_edge52
  %i.v = zext nneg i32 %.141.lcssa to i64
  br label %.lr.ph.preheader.1

.lr.ph.preheader.1:                               ; preds = %.lr.ph51.1, %.lr.ph.preheader.1
  %indvars.iv83 = phi i64 [ %indvars.iv.next84, %.lr.ph.preheader.1 ], [ %i.v, %.lr.ph51.1 ] ; 3 uses
  %.03750.1 = phi i32 [ %i.am, %.lr.ph.preheader.1 ], [ 0, %.lr.ph51.1 ]
  %.149.1 = phi i32 [ %i.ah, %.lr.ph.preheader.1 ], [ %.1.lcssa, %.lr.ph51.1 ] ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv83
  store i8 3, ptr %i.w, align 1, !tbaa !12
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv83 ; 4 uses
  store i64 0, ptr %i.x, align 8, !tbaa !137
  %i.y = add i32 %.149.1, 1
  %i.z = zext i32 %.149.1 to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 %i.z
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !12
  store i8 %i.ab, ptr %i.x, align 8, !tbaa !12
  %i.ac = add i32 %.149.1, 2
  %i.ad = zext i32 %i.y to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 %i.ad
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !12
  %i.ag = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  store i8 %i.af, ptr %i.ag, align 1, !tbaa !12
  %i.ah = add i32 %.149.1, 3                      ; 2 uses
  %i.ai = zext i32 %i.ac to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !12
  %i.al = getelementptr inbounds nuw i8, ptr %i.x, i64 2
  store i8 %i.ak, ptr %i.al, align 2, !tbaa !12
  %i.am = add nuw nsw i32 %.03750.1, 1            ; 2 uses
  %indvars.iv.next84 = add nuw nsw i64 %indvars.iv83, 1 ; 2 uses
  %exitcond.1.not = icmp eq i32 %i.am, %i.t
  br i1 %exitcond.1.not, label %._crit_edge52.loopexit.1, label %.lr.ph.preheader.1, !llvm.loop !131

._crit_edge52.loopexit.1:                         ; preds = %.lr.ph.preheader.1
  %i.an = trunc nuw nsw i64 %indvars.iv.next84 to i32
  br label %._crit_edge52.1

._crit_edge52.1:                                  ; preds = %._crit_edge52.loopexit.1, %._crit_edge52
  %.141.lcssa.1 = phi i32 [ %.141.lcssa, %._crit_edge52 ], [ %i.an, %._crit_edge52.loopexit.1 ] ; 2 uses
  %.1.lcssa.1 = phi i32 [ %.1.lcssa, %._crit_edge52 ], [ %i.ah, %._crit_edge52.loopexit.1 ] ; 2 uses
  %i.ao = trunc i64 %i.f to i32
  %i.ap = lshr i32 %i.ao, 24
  %i.aq = and i64 %i.f, 4278190080
  %.not61.2 = icmp eq i64 %i.aq, 0
  br i1 %.not61.2, label %._crit_edge52.2, label %.lr.ph51.2

.lr.ph51.2:                                       ; preds = %._crit_edge52.1
  %i.ar = zext nneg i32 %.141.lcssa.1 to i64
  br label %.lr.ph.preheader.2

.lr.ph.preheader.2:                               ; preds = %.lr.ph51.2, %.lr.ph.preheader.2
  %indvars.iv80 = phi i64 [ %indvars.iv.next81, %.lr.ph.preheader.2 ], [ %i.ar, %.lr.ph51.2 ] ; 3 uses
  %.03750.2 = phi i32 [ %i.bn, %.lr.ph.preheader.2 ], [ 0, %.lr.ph51.2 ]
  %.149.2 = phi i32 [ %i.bi, %.lr.ph.preheader.2 ], [ %.1.lcssa.1, %.lr.ph51.2 ] ; 5 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv80
  store i8 4, ptr %i.as, align 1, !tbaa !12
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv80 ; 5 uses
  store i64 0, ptr %i.at, align 8, !tbaa !137
  %i.au = add i32 %.149.2, 1
  %i.av = zext i32 %.149.2 to i64
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 %i.av
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !12
  store i8 %i.ax, ptr %i.at, align 8, !tbaa !12
  %i.ay = add i32 %.149.2, 2
  %i.az = zext i32 %i.au to i64
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 %i.az
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !12
  %i.bc = getelementptr inbounds nuw i8, ptr %i.at, i64 1
  store i8 %i.bb, ptr %i.bc, align 1, !tbaa !12
  %i.bd = add i32 %.149.2, 3
  %i.be = zext i32 %i.ay to i64
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 %i.be
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !12
  %i.bh = getelementptr inbounds nuw i8, ptr %i.at, i64 2
  store i8 %i.bg, ptr %i.bh, align 2, !tbaa !12
  %i.bi = add i32 %.149.2, 4                      ; 2 uses
  %i.bj = zext i32 %i.bd to i64
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 %i.bj
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !12
  %i.bm = getelementptr inbounds nuw i8, ptr %i.at, i64 3
  store i8 %i.bl, ptr %i.bm, align 1, !tbaa !12
  %i.bn = add nuw nsw i32 %.03750.2, 1            ; 2 uses
  %indvars.iv.next81 = add nuw nsw i64 %indvars.iv80, 1 ; 2 uses
  %exitcond.2.not = icmp eq i32 %i.bn, %i.ap
  br i1 %exitcond.2.not, label %._crit_edge52.loopexit.2, label %.lr.ph.preheader.2, !llvm.loop !131

._crit_edge52.loopexit.2:                         ; preds = %.lr.ph.preheader.2
  %i.bo = trunc nuw nsw i64 %indvars.iv.next81 to i32
  br label %._crit_edge52.2

._crit_edge52.2:                                  ; preds = %._crit_edge52.loopexit.2, %._crit_edge52.1
  %.141.lcssa.2 = phi i32 [ %.141.lcssa.1, %._crit_edge52.1 ], [ %i.bo, %._crit_edge52.loopexit.2 ] ; 2 uses
  %.1.lcssa.2 = phi i32 [ %.1.lcssa.1, %._crit_edge52.1 ], [ %i.bi, %._crit_edge52.loopexit.2 ] ; 2 uses
  %i.bp = trunc nuw i64 %.sroa.11.0.extract.shift to i32
  %i.bq = and i32 %i.bp, 255
  %i.br = and i64 %i.f, 1095216660480
  %.not61.3 = icmp eq i64 %i.br, 0
  br i1 %.not61.3, label %._crit_edge52.3, label %.lr.ph51.3

.lr.ph51.3:                                       ; preds = %._crit_edge52.2
  %i.bs = zext nneg i32 %.141.lcssa.2 to i64
  br label %.lr.ph.preheader.3

.lr.ph.preheader.3:                               ; preds = %.lr.ph51.3, %.lr.ph.preheader.3
  %indvars.iv77 = phi i64 [ %indvars.iv.next78, %.lr.ph.preheader.3 ], [ %i.bs, %.lr.ph51.3 ] ; 3 uses
  %.03750.3 = phi i32 [ %i.ct, %.lr.ph.preheader.3 ], [ 0, %.lr.ph51.3 ]
  %.149.3 = phi i32 [ %i.co, %.lr.ph.preheader.3 ], [ %.1.lcssa.2, %.lr.ph51.3 ] ; 6 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv77
  store i8 5, ptr %i.bt, align 1, !tbaa !12
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv77 ; 6 uses
  store i64 0, ptr %i.bu, align 8, !tbaa !137
  %i.bv = add i32 %.149.3, 1
  %i.bw = zext i32 %.149.3 to i64
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 %i.bw
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !12
  store i8 %i.by, ptr %i.bu, align 8, !tbaa !12
  %i.bz = add i32 %.149.3, 2
  %i.ca = zext i32 %i.bv to i64
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 %i.ca
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !12
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bu, i64 1
  store i8 %i.cc, ptr %i.cd, align 1, !tbaa !12
  %i.ce = add i32 %.149.3, 3
  %i.cf = zext i32 %i.bz to i64
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 %i.cf
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !12
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bu, i64 2
  store i8 %i.ch, ptr %i.ci, align 2, !tbaa !12
  %i.cj = add i32 %.149.3, 4
  %i.ck = zext i32 %i.ce to i64
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 %i.ck
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !12
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bu, i64 3
  store i8 %i.cm, ptr %i.cn, align 1, !tbaa !12
  %i.co = add i32 %.149.3, 5                      ; 2 uses
  %i.cp = zext i32 %i.cj to i64
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 %i.cp
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !12
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bu, i64 4
  store i8 %i.cr, ptr %i.cs, align 4, !tbaa !12
  %i.ct = add nuw nsw i32 %.03750.3, 1            ; 2 uses
  %indvars.iv.next78 = add nuw nsw i64 %indvars.iv77, 1 ; 2 uses
  %exitcond.3.not = icmp eq i32 %i.ct, %i.bq
  br i1 %exitcond.3.not, label %._crit_edge52.loopexit.3, label %.lr.ph.preheader.3, !llvm.loop !131

._crit_edge52.loopexit.3:                         ; preds = %.lr.ph.preheader.3
  %i.cu = trunc nuw nsw i64 %indvars.iv.next78 to i32
  br label %._crit_edge52.3

._crit_edge52.3:                                  ; preds = %._crit_edge52.loopexit.3, %._crit_edge52.2
  %.141.lcssa.3 = phi i32 [ %.141.lcssa.2, %._crit_edge52.2 ], [ %i.cu, %._crit_edge52.loopexit.3 ] ; 2 uses
  %.1.lcssa.3 = phi i32 [ %.1.lcssa.2, %._crit_edge52.2 ], [ %i.co, %._crit_edge52.loopexit.3 ] ; 2 uses
  %i.cv = trunc nuw nsw i64 %.sroa.12.0.extract.shift to i32
  %i.cw = and i32 %i.cv, 255
  %i.cx = and i64 %i.f, 280375465082880
  %.not61.4 = icmp eq i64 %i.cx, 0
  br i1 %.not61.4, label %._crit_edge52.4, label %.lr.ph51.4

.lr.ph51.4:                                       ; preds = %._crit_edge52.3
  %i.cy = zext nneg i32 %.141.lcssa.3 to i64
  br label %.lr.ph.preheader.4

.lr.ph.preheader.4:                               ; preds = %.lr.ph51.4, %.lr.ph.preheader.4
  %indvars.iv74 = phi i64 [ %indvars.iv.next75, %.lr.ph.preheader.4 ], [ %i.cy, %.lr.ph51.4 ] ; 3 uses
  %.03750.4 = phi i32 [ %i.ee, %.lr.ph.preheader.4 ], [ 0, %.lr.ph51.4 ]
  %.149.4 = phi i32 [ %i.dz, %.lr.ph.preheader.4 ], [ %.1.lcssa.3, %.lr.ph51.4 ] ; 7 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv74
  store i8 6, ptr %i.cz, align 1, !tbaa !12
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv74 ; 7 uses
  store i64 0, ptr %i.da, align 8, !tbaa !137
  %i.db = add i32 %.149.4, 1
  %i.dc = zext i32 %.149.4 to i64
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 %i.dc
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !12
  store i8 %i.de, ptr %i.da, align 8, !tbaa !12
  %i.df = add i32 %.149.4, 2
  %i.dg = zext i32 %i.db to i64
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 %i.dg
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !12
  %i.dj = getelementptr inbounds nuw i8, ptr %i.da, i64 1
  store i8 %i.di, ptr %i.dj, align 1, !tbaa !12
  %i.dk = add i32 %.149.4, 3
  %i.dl = zext i32 %i.df to i64
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 %i.dl
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !12
  %i.do = getelementptr inbounds nuw i8, ptr %i.da, i64 2
  store i8 %i.dn, ptr %i.do, align 2, !tbaa !12
  %i.dp = add i32 %.149.4, 4
  %i.dq = zext i32 %i.dk to i64
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 %i.dq
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !12
  %i.dt = getelementptr inbounds nuw i8, ptr %i.da, i64 3
  store i8 %i.ds, ptr %i.dt, align 1, !tbaa !12
  %i.du = add i32 %.149.4, 5
  %i.dv = zext i32 %i.dp to i64
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 %i.dv
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !12
  %i.dy = getelementptr inbounds nuw i8, ptr %i.da, i64 4
  store i8 %i.dx, ptr %i.dy, align 4, !tbaa !12
  %i.dz = add i32 %.149.4, 6                      ; 2 uses
  %i.ea = zext i32 %i.du to i64
  %i.eb = getelementptr inbounds nuw i8, ptr %1, i64 %i.ea
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !12
  %i.ed = getelementptr inbounds nuw i8, ptr %i.da, i64 5
  store i8 %i.ec, ptr %i.ed, align 1, !tbaa !12
  %i.ee = add nuw nsw i32 %.03750.4, 1            ; 2 uses
  %indvars.iv.next75 = add nuw nsw i64 %indvars.iv74, 1 ; 2 uses
  %exitcond.4.not = icmp eq i32 %i.ee, %i.cw
  br i1 %exitcond.4.not, label %._crit_edge52.loopexit.4, label %.lr.ph.preheader.4, !llvm.loop !131

._crit_edge52.loopexit.4:                         ; preds = %.lr.ph.preheader.4
  %i.ef = trunc nuw nsw i64 %indvars.iv.next75 to i32
  br label %._crit_edge52.4

._crit_edge52.4:                                  ; preds = %._crit_edge52.loopexit.4, %._crit_edge52.3
  %.141.lcssa.4 = phi i32 [ %.141.lcssa.3, %._crit_edge52.3 ], [ %i.ef, %._crit_edge52.loopexit.4 ] ; 2 uses
  %.1.lcssa.4 = phi i32 [ %.1.lcssa.3, %._crit_edge52.3 ], [ %i.dz, %._crit_edge52.loopexit.4 ] ; 2 uses
  %i.eg = trunc nuw nsw i64 %.sroa.13.0.extract.shift to i32
  %i.eh = and i32 %i.eg, 255
  %i.ei = and i64 %i.f, 71776119061217280
  %.not61.5 = icmp eq i64 %i.ei, 0
  br i1 %.not61.5, label %._crit_edge52.5, label %.lr.ph51.5

.lr.ph51.5:                                       ; preds = %._crit_edge52.4
  %i.ej = zext nneg i32 %.141.lcssa.4 to i64
  br label %.lr.ph.preheader.5

.lr.ph.preheader.5:                               ; preds = %.lr.ph51.5, %.lr.ph.preheader.5
  %indvars.iv71 = phi i64 [ %indvars.iv.next72, %.lr.ph.preheader.5 ], [ %i.ej, %.lr.ph51.5 ] ; 3 uses
  %.03750.5 = phi i32 [ %i.fu, %.lr.ph.preheader.5 ], [ 0, %.lr.ph51.5 ]
  %.149.5 = phi i32 [ %i.fp, %.lr.ph.preheader.5 ], [ %.1.lcssa.4, %.lr.ph51.5 ] ; 8 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv71
  store i8 7, ptr %i.ek, align 1, !tbaa !12
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv71 ; 8 uses
  store i64 0, ptr %i.el, align 8, !tbaa !137
  %i.em = add i32 %.149.5, 1
  %i.en = zext i32 %.149.5 to i64
  %i.eo = getelementptr inbounds nuw i8, ptr %1, i64 %i.en
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !12
  store i8 %i.ep, ptr %i.el, align 8, !tbaa !12
  %i.eq = add i32 %.149.5, 2
  %i.er = zext i32 %i.em to i64
  %i.es = getelementptr inbounds nuw i8, ptr %1, i64 %i.er
  %i.et = load i8, ptr %i.es, align 1, !tbaa !12
  %i.eu = getelementptr inbounds nuw i8, ptr %i.el, i64 1
  store i8 %i.et, ptr %i.eu, align 1, !tbaa !12
  %i.ev = add i32 %.149.5, 3
  %i.ew = zext i32 %i.eq to i64
  %i.ex = getelementptr inbounds nuw i8, ptr %1, i64 %i.ew
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !12
  %i.ez = getelementptr inbounds nuw i8, ptr %i.el, i64 2
  store i8 %i.ey, ptr %i.ez, align 2, !tbaa !12
  %i.fa = add i32 %.149.5, 4
  %i.fb = zext i32 %i.ev to i64
  %i.fc = getelementptr inbounds nuw i8, ptr %1, i64 %i.fb
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !12
  %i.fe = getelementptr inbounds nuw i8, ptr %i.el, i64 3
  store i8 %i.fd, ptr %i.fe, align 1, !tbaa !12
  %i.ff = add i32 %.149.5, 5
  %i.fg = zext i32 %i.fa to i64
  %i.fh = getelementptr inbounds nuw i8, ptr %1, i64 %i.fg
  %i.fi = load i8, ptr %i.fh, align 1, !tbaa !12
  %i.fj = getelementptr inbounds nuw i8, ptr %i.el, i64 4
  store i8 %i.fi, ptr %i.fj, align 4, !tbaa !12
  %i.fk = add i32 %.149.5, 6
  %i.fl = zext i32 %i.ff to i64
  %i.fm = getelementptr inbounds nuw i8, ptr %1, i64 %i.fl
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !12
  %i.fo = getelementptr inbounds nuw i8, ptr %i.el, i64 5
  store i8 %i.fn, ptr %i.fo, align 1, !tbaa !12
  %i.fp = add i32 %.149.5, 7                      ; 2 uses
  %i.fq = zext i32 %i.fk to i64
  %i.fr = getelementptr inbounds nuw i8, ptr %1, i64 %i.fq
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !12
  %i.ft = getelementptr inbounds nuw i8, ptr %i.el, i64 6
  store i8 %i.fs, ptr %i.ft, align 2, !tbaa !12
  %i.fu = add nuw nsw i32 %.03750.5, 1            ; 2 uses
  %indvars.iv.next72 = add nuw nsw i64 %indvars.iv71, 1 ; 2 uses
  %exitcond.5.not = icmp eq i32 %i.fu, %i.eh
  br i1 %exitcond.5.not, label %._crit_edge52.loopexit.5, label %.lr.ph.preheader.5, !llvm.loop !131

._crit_edge52.loopexit.5:                         ; preds = %.lr.ph.preheader.5
  %i.fv = trunc nuw nsw i64 %indvars.iv.next72 to i32
  br label %._crit_edge52.5

._crit_edge52.5:                                  ; preds = %._crit_edge52.loopexit.5, %._crit_edge52.4
  %.141.lcssa.5 = phi i32 [ %.141.lcssa.4, %._crit_edge52.4 ], [ %i.fv, %._crit_edge52.loopexit.5 ] ; 2 uses
  %.1.lcssa.5 = phi i32 [ %.1.lcssa.4, %._crit_edge52.4 ], [ %i.fp, %._crit_edge52.loopexit.5 ] ; 2 uses
  %i.fw = trunc nuw nsw i64 %.sroa.14.0.extract.shift to i32
  %.not61.6 = icmp eq i64 %.sroa.14.0.extract.shift, 0
  br i1 %.not61.6, label %._crit_edge52.6, label %.lr.ph51.6.a

.lr.ph51.6.a:                                     ; preds = %._crit_edge52.5
  %i.fx = zext nneg i32 %.141.lcssa.5 to i64
  br label %.lr.ph.preheader.6.a

.lr.ph.preheader.6.a:                             ; preds = %.lr.ph51.6.a, %.lr.ph.preheader.6.a
  %indvars.iv68 = phi i64 [ %indvars.iv.next69, %.lr.ph.preheader.6.a ], [ %i.fx, %.lr.ph51.6.a ] ; 3 uses
  %.03750.6 = phi i32 [ %5, %.lr.ph.preheader.6.a ], [ 0, %.lr.ph51.6.a ]
  %.149.6 = phi i32 [ %4, %.lr.ph.preheader.6.a ], [ %.1.lcssa.5, %.lr.ph51.6.a ] ; 9 uses
  %2 = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv68
  store i8 8, ptr %2, align 1, !tbaa !12
  %3 = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv68 ; 9 uses
  store i64 0, ptr %3, align 8, !tbaa !137
  %i.fy = add i32 %.149.6, 1
  %i.fz = zext i32 %.149.6 to i64
  %i.ga = getelementptr inbounds nuw i8, ptr %1, i64 %i.fz
  %i.gb = load i8, ptr %i.ga, align 1, !tbaa !12
  store i8 %i.gb, ptr %3, align 8, !tbaa !12
  %i.gc = add i32 %.149.6, 2
  %i.gd = zext i32 %i.fy to i64
  %i.ge = getelementptr inbounds nuw i8, ptr %1, i64 %i.gd
  %i.gf = load i8, ptr %i.ge, align 1, !tbaa !12
  %i.gg = getelementptr inbounds nuw i8, ptr %3, i64 1
  store i8 %i.gf, ptr %i.gg, align 1, !tbaa !12
  %i.gh = add i32 %.149.6, 3
  %i.gi = zext i32 %i.gc to i64
  %i.gj = getelementptr inbounds nuw i8, ptr %1, i64 %i.gi
  %i.gk = load i8, ptr %i.gj, align 1, !tbaa !12
  %i.gl = getelementptr inbounds nuw i8, ptr %3, i64 2
  store i8 %i.gk, ptr %i.gl, align 2, !tbaa !12
  %i.gm = add i32 %.149.6, 4
  %i.gn = zext i32 %i.gh to i64
  %i.go = getelementptr inbounds nuw i8, ptr %1, i64 %i.gn
  %i.gp = load i8, ptr %i.go, align 1, !tbaa !12
  %i.gq = getelementptr inbounds nuw i8, ptr %3, i64 3
  store i8 %i.gp, ptr %i.gq, align 1, !tbaa !12
  %i.gr = add i32 %.149.6, 5
  %i.gs = zext i32 %i.gm to i64
  %i.gt = getelementptr inbounds nuw i8, ptr %1, i64 %i.gs
  %i.gu = load i8, ptr %i.gt, align 1, !tbaa !12
  %i.gv = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i8 %i.gu, ptr %i.gv, align 4, !tbaa !12
  %i.gw = add i32 %.149.6, 6
  %i.gx = zext i32 %i.gr to i64
  %i.gy = getelementptr inbounds nuw i8, ptr %1, i64 %i.gx
  %i.gz = load i8, ptr %i.gy, align 1, !tbaa !12
  %i.ha = getelementptr inbounds nuw i8, ptr %3, i64 5
  store i8 %i.gz, ptr %i.ha, align 1, !tbaa !12
  %i.hb = add i32 %.149.6, 7
  %i.hc = zext i32 %i.gw to i64
  %i.hd = getelementptr inbounds nuw i8, ptr %1, i64 %i.hc
  %i.he = load i8, ptr %i.hd, align 1, !tbaa !12
  %i.hf = getelementptr inbounds nuw i8, ptr %3, i64 6
  store i8 %i.he, ptr %i.hf, align 2, !tbaa !12
  %4 = add i32 %.149.6, 8                         ; 2 uses
  %i.hg = zext i32 %i.hb to i64
  %i.hh = getelementptr inbounds nuw i8, ptr %1, i64 %i.hg
  %i.hi = load i8, ptr %i.hh, align 1, !tbaa !12
  %i.hj = getelementptr inbounds nuw i8, ptr %3, i64 7
  store i8 %i.hi, ptr %i.hj, align 1, !tbaa !12
  %5 = add nuw nsw i32 %.03750.6, 1               ; 2 uses
  %indvars.iv.next69 = add nuw nsw i64 %indvars.iv68, 1 ; 2 uses
  %exitcond.6.not = icmp eq i32 %5, %i.fw
  br i1 %exitcond.6.not, label %._crit_edge52.loopexit.6, label %.lr.ph.preheader.6.a, !llvm.loop !131

._crit_edge52.loopexit.6:                         ; preds = %.lr.ph.preheader.6.a
  %i.hk = trunc nuw nsw i64 %indvars.iv.next69 to i32
  br label %._crit_edge52.6

._crit_edge52.6:                                  ; preds = %._crit_edge52.loopexit.6, %._crit_edge52.5
  %.141.lcssa.6 = phi i32 [ %.141.lcssa.5, %._crit_edge52.5 ], [ %i.hk, %._crit_edge52.loopexit.6 ] ; 2 uses
  %.1.lcssa.6 = phi i32 [ %.1.lcssa.5, %._crit_edge52.5 ], [ %4, %._crit_edge52.loopexit.6 ] ; 3 uses
  %i.hl = zext i8 %spec.select to i32             ; 2 uses
  %.not61.7 = icmp eq i8 %i.j, %.sroa.0.0.extract.trunc
  br i1 %.not61.7, label %._crit_edge52.7, label %.lr.ph51.7

.lr.ph51.7:                                       ; preds = %._crit_edge52.6
  %i.hm = zext nneg i32 %.141.lcssa.6 to i64      ; 2 uses
  %xtraiter = and i32 %i.hl, 1
  %i.hn = icmp eq i8 %spec.select, 1
  br i1 %i.hn, label %._crit_edge.7.epil.preheader, label %.lr.ph51.7.new

.lr.ph51.7.new:                                   ; preds = %.lr.ph51.7
  %unroll_iter = and i32 %i.hl, 254
  br label %._crit_edge.7

._crit_edge.7:                                    ; preds = %._crit_edge.7, %.lr.ph51.7.new
  %indvars.iv65 = phi i64 [ %i.hm, %.lr.ph51.7.new ], [ %indvars.iv.next66.1, %._crit_edge.7 ] ; 4 uses
  %.149.7 = phi i32 [ %.1.lcssa.6, %.lr.ph51.7.new ], [ %i.ht, %._crit_edge.7 ] ; 3 uses
  %niter = phi i32 [ 0, %.lr.ph51.7.new ], [ %niter.next.1, %._crit_edge.7 ]
  %i.ho = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv65
  store i8 1, ptr %i.ho, align 1, !tbaa !12
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv65 ; 2 uses
  store i64 0, ptr %i.hp, align 8, !tbaa !137
  %.phi.trans.insert = zext i32 %.149.7 to i64
  %.phi.trans.insert95 = getelementptr inbounds nuw i8, ptr %1, i64 %.phi.trans.insert
  %.pre = load i8, ptr %.phi.trans.insert95, align 1, !tbaa !12
  %i.hq = add i32 %.149.7, 1
  store i8 %.pre, ptr %i.hp, align 8, !tbaa !12
  %indvars.iv.next66 = add nuw nsw i64 %indvars.iv65, 1 ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv.next66
  store i8 1, ptr %i.hr, align 1, !tbaa !12
  %i.hs = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.next66 ; 2 uses
  store i64 0, ptr %i.hs, align 8, !tbaa !137
  %.phi.trans.insert.1 = zext i32 %i.hq to i64
  %.phi.trans.insert95.1 = getelementptr inbounds nuw i8, ptr %1, i64 %.phi.trans.insert.1
  %.pre.1 = load i8, ptr %.phi.trans.insert95.1, align 1, !tbaa !12
  %i.ht = add i32 %.149.7, 2                      ; 3 uses
  store i8 %.pre.1, ptr %i.hs, align 8, !tbaa !12
  %indvars.iv.next66.1 = add nuw nsw i64 %indvars.iv65, 2 ; 3 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge52.loopexit.7.unr-lcssa, label %._crit_edge.7, !llvm.loop !131

._crit_edge52.loopexit.7.unr-lcssa:               ; preds = %._crit_edge.7
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge52.loopexit.7, label %._crit_edge.7.epil.preheader

._crit_edge.7.epil.preheader:                     ; preds = %._crit_edge52.loopexit.7.unr-lcssa, %.lr.ph51.7
  %indvars.iv65.epil.init = phi i64 [ %i.hm, %.lr.ph51.7 ], [ %indvars.iv.next66.1, %._crit_edge52.loopexit.7.unr-lcssa ] ; 3 uses
  %.149.7.epil.init = phi i32 [ %.1.lcssa.6, %.lr.ph51.7 ], [ %i.ht, %._crit_edge52.loopexit.7.unr-lcssa ] ; 2 uses
  %lcmp.mod129 = trunc i8 %spec.select to i1
  tail call void @llvm.assume(i1 %lcmp.mod129)
  %i.hu = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv65.epil.init
  store i8 1, ptr %i.hu, align 1, !tbaa !12
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv65.epil.init ; 2 uses
  store i64 0, ptr %i.hv, align 8, !tbaa !137
  %.phi.trans.insert.epil = zext i32 %.149.7.epil.init to i64
  %.phi.trans.insert95.epil = getelementptr inbounds nuw i8, ptr %1, i64 %.phi.trans.insert.epil
  %.pre.epil = load i8, ptr %.phi.trans.insert95.epil, align 1, !tbaa !12
  %i.hw = add i32 %.149.7.epil.init, 1
  store i8 %.pre.epil, ptr %i.hv, align 8, !tbaa !12
  %indvars.iv.next66.epil = add nuw nsw i64 %indvars.iv65.epil.init, 1
  br label %._crit_edge52.loopexit.7

._crit_edge52.loopexit.7:                         ; preds = %._crit_edge52.loopexit.7.unr-lcssa, %._crit_edge.7.epil.preheader
  %.lcssa = phi i32 [ %i.ht, %._crit_edge52.loopexit.7.unr-lcssa ], [ %i.hw, %._crit_edge.7.epil.preheader ]
  %indvars.iv.next66.lcssa = phi i64 [ %indvars.iv.next66.1, %._crit_edge52.loopexit.7.unr-lcssa ], [ %indvars.iv.next66.epil, %._crit_edge.7.epil.preheader ]
  %i.hx = trunc nuw nsw i64 %indvars.iv.next66.lcssa to i32
  br label %._crit_edge52.7

.lr.ph.preheader:                                 ; preds = %.lr.ph.preheader, %.lr.ph51
  %indvars.iv86 = phi i64 [ %i.p, %.lr.ph51 ], [ %indvars.iv.next87, %.lr.ph.preheader ] ; 3 uses
  %.03750 = phi i32 [ 0, %.lr.ph51 ], [ %i.ij, %.lr.ph.preheader ]
  %.149 = phi i32 [ 17, %.lr.ph51 ], [ %i.ie, %.lr.ph.preheader ] ; 3 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv86
  store i8 2, ptr %i.hy, align 1, !tbaa !12
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv86 ; 3 uses
  store i64 0, ptr %i.hz, align 8, !tbaa !137
  %i.ia = add i32 %.149, 1
  %i.ib = zext i32 %.149 to i64
  %i.ic = getelementptr inbounds nuw i8, ptr %1, i64 %i.ib
  %i.id = load i8, ptr %i.ic, align 1, !tbaa !12
  store i8 %i.id, ptr %i.hz, align 8, !tbaa !12
  %i.ie = add i32 %.149, 2                        ; 2 uses
  %i.if = zext i32 %i.ia to i64
  %i.ig = getelementptr inbounds nuw i8, ptr %1, i64 %i.if
  %i.ih = load i8, ptr %i.ig, align 1, !tbaa !12
  %i.ii = getelementptr inbounds nuw i8, ptr %i.hz, i64 1
  store i8 %i.ih, ptr %i.ii, align 1, !tbaa !12
  %i.ij = add nuw nsw i32 %.03750, 1              ; 2 uses
  %indvars.iv.next87 = add nuw nsw i64 %indvars.iv86, 1 ; 2 uses
  %exitcond.not = icmp eq i32 %i.ij, %i.m
  br i1 %exitcond.not, label %._crit_edge52.loopexit, label %.lr.ph.preheader, !llvm.loop !131

._crit_edge52.7:                                  ; preds = %._crit_edge52.6, %._crit_edge52.loopexit.7
  %.141.lcssa.7 = phi i32 [ %.141.lcssa.6, %._crit_edge52.6 ], [ %i.hx, %._crit_edge52.loopexit.7 ] ; 3 uses
  %.1.lcssa.7 = phi i32 [ %.1.lcssa.6, %._crit_edge52.6 ], [ %.lcssa, %._crit_edge52.loopexit.7 ] ; 3 uses
  %i.ik = icmp ult i32 %.141.lcssa.7, 255
  br i1 %i.ik, label %.lr.ph60.preheader, label %.loopexit

.lr.ph60.preheader:                               ; preds = %._crit_edge52.7
  %i.il = zext nneg i32 %.141.lcssa.7 to i64      ; 3 uses
  %i.im = and i64 %i.il, 3                        ; 2 uses
  %lcmp.mod131.not = icmp eq i64 %i.im, 3
  br i1 %lcmp.mod131.not, label %.lr.ph60.prol.loopexit, label %.lr.ph60.prol

.lr.ph60.prol:                                    ; preds = %.lr.ph60.preheader, %.lr.ph60.prol
  %indvars.iv89.prol = phi i64 [ %indvars.iv.next90.prol, %.lr.ph60.prol ], [ %i.il, %.lr.ph60.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph60.prol ], [ 0, %.lr.ph60.preheader ]
  %i.in = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv89.prol
  store i64 32774747032022883, ptr %i.in, align 8, !tbaa !137
  %indvars.iv.next90.prol = add nuw nsw i64 %indvars.iv89.prol, 1 ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv89.prol
  store i8 8, ptr %i.io, align 1, !tbaa !12
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %i.ip = xor i64 %i.im, %prol.iter.next
  %prol.iter.cmp.not = icmp eq i64 %i.ip, 3
  br i1 %prol.iter.cmp.not, label %.lr.ph60.prol.loopexit, label %.lr.ph60.prol, !llvm.loop !132

.lr.ph60.prol.loopexit:                           ; preds = %.lr.ph60.prol, %.lr.ph60.preheader
  %indvars.iv89.unr = phi i64 [ %i.il, %.lr.ph60.preheader ], [ %indvars.iv.next90.prol, %.lr.ph60.prol ]
  %i.iq = add nsw i32 %.141.lcssa.7, -252
  %i.ir = icmp ult i32 %i.iq, 3
  br i1 %i.ir, label %.loopexit, label %.lr.ph60

.lr.ph60:                                         ; preds = %.lr.ph60.prol.loopexit, %.lr.ph60
  %indvars.iv89 = phi i64 [ %indvars.iv.next90.3, %.lr.ph60 ], [ %indvars.iv89.unr, %.lr.ph60.prol.loopexit ] ; 6 uses
  %i.is = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv89
  store i64 32774747032022883, ptr %i.is, align 8, !tbaa !137
  %indvars.iv.next90 = add nuw nsw i64 %indvars.iv89, 1 ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv89
  store i8 8, ptr %i.it, align 1, !tbaa !12
  %i.iu = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.next90
  store i64 32774747032022883, ptr %i.iu, align 8, !tbaa !137
  %indvars.iv.next90.1 = add nuw nsw i64 %indvars.iv89, 2 ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv.next90
  store i8 8, ptr %i.iv, align 1, !tbaa !12
  %i.iw = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.next90.1
  store i64 32774747032022883, ptr %i.iw, align 8, !tbaa !137
  %indvars.iv.next90.2 = add nuw nsw i64 %indvars.iv89, 3 ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv.next90.1
  store i8 8, ptr %i.ix, align 1, !tbaa !12
  %i.iy = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.next90.2
  store i64 32774747032022883, ptr %i.iy, align 8, !tbaa !137
  %indvars.iv.next90.3 = add nuw nsw i64 %indvars.iv89, 4 ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv.next90.2
  store i8 8, ptr %i.iz, align 1, !tbaa !12
  %exitcond92.not.3 = icmp eq i64 %indvars.iv.next90.3, 255
  br i1 %exitcond92.not.3, label %.loopexit, label %.lr.ph60, !llvm.loop !133

.loopexit:                                        ; preds = %.lr.ph60.prol.loopexit, %.lr.ph60, %._crit_edge52.7, %bb.a
  %.043 = phi i32 [ 0, %bb.a ], [ %.1.lcssa.7, %._crit_edge52.7 ], [ %.1.lcssa.7, %.lr.ph60 ], [ %.1.lcssa.7, %.lr.ph60.prol.loopexit ]
  ret i32 %.043
}

; Function Attrs: mustprogress uwtable
define hidden noundef i64 @_ZN7libfsst12compressImplEPNS_7EncoderEmPmPPhmS3_S2_S4_bbi(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, i1 noundef zeroext %8, i1 noundef zeroext %9, i32 noundef %10) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call noundef i64 @_ZN7libfsst13_compressImplEPNS_7EncoderEmPmPPhmS3_S2_S4_bbi(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, i1 noundef zeroext %8, i1 noundef zeroext %9, i32 noundef %10)
  ret i64 %i.a
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZN7libfsst13_compressImplEPNS_7EncoderEmPmPPhmS3_S2_S4_bbi(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, i1 noundef zeroext %8, i1 noundef zeroext %9, i32 noundef %10) local_unnamed_addr #6 comdat {
bb.a:
  %i.a = alloca [520 x i8], align 16              ; 12 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !65     ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 156162
  %i.d = load i16, ptr %i.c, align 2, !tbaa !20
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 156160
  %i.f = load i16, ptr %i.e, align 8, !tbaa !42
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 156166
  %i.h = load i8, ptr %i.g, align 2, !tbaa !22, !range !66, !noundef !67
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 156168
  %i.j = load i16, ptr %i.i, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(520) %i.a, i8 0, i64 520, i1 false)
  %.not145.i = icmp eq i64 %1, 0
  br i1 %.not145.i, label %_ZN7libfsstL12compressBulkERNS_11SymbolTableEmPmPPhmS3_S2_S4_bb.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.k = trunc i16 %i.f to i8
  %i.l = add i8 %i.h, %i.k
  %i.m = trunc i16 %i.j to i8
  %i.n = sub i8 %i.l, %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 %4
  %i.p = ptrtoint ptr %i.o to i64                 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 156164 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 139776 ; 3 uses
  %i.s = zext i8 %i.n to i16                      ; 2 uses
  br i1 %8, label %.split.us.us.i, label %.lr.ph.split.i

.split.us.us.i:                                   ; preds = %.lr.ph.i, %.split123.us.us.i
  %.038136.us.i = phi i64 [ %i.bu, %.split123.us.us.i ], [ 0, %.lr.ph.i ] ; 6 uses
  %.0135.us.i = phi ptr [ %.2108.us.us.i, %.split123.us.us.i ], [ %5, %.lr.ph.i ] ; 2 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %.038136.us.i ; 2 uses
  store ptr %.0135.us.i, ptr %i.t, align 8, !tbaa !33
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.038136.us.i ; 2 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.038136.us.i
  %.pre161.i = load i64, ptr %i.u, align 8, !tbaa !23
  br label %bb.b
end_hunk_0
