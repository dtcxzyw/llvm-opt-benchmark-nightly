Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/libfsst?download=true
inline.NumInlined: 716
inline.NumDeleted: 392
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 24
begin_hunk_0_@duckdb_fsst_duplicate:bb.a
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
  %.sroa.8.0.extract.shift = lshr i64 %i.f, 8
  %.sroa.9.0.extract.shift = lshr i64 %i.f, 16
  %.sroa.10.0.extract.shift = lshr i64 %i.f, 24
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
  %i.k = trunc i64 %.sroa.8.0.extract.shift to i32
  %i.l = and i32 %i.k, 255
  %i.m = and i64 %i.f, 65280
  %.not61 = icmp eq i64 %i.m, 0
  br i1 %.not61, label %._crit_edge52, label %.lr.ph51

.lr.ph51:                                         ; preds = %.preheader
  %i.n = and i8 %i.b, 1
  %i.o = zext nneg i8 %i.n to i64
  br label %.lr.ph.preheader

._crit_edge52.loopexit:                           ; preds = %.lr.ph.preheader
  %i.p = trunc nuw nsw i64 %indvars.iv.next87 to i32
  br label %._crit_edge52

._crit_edge52:                                    ; preds = %._crit_edge52.loopexit, %.preheader
  %.141.lcssa = phi i32 [ %i.i, %.preheader ], [ %i.p, %._crit_edge52.loopexit ] ; 2 uses
  %.1.lcssa = phi i32 [ 17, %.preheader ], [ %i.if, %._crit_edge52.loopexit ] ; 2 uses
  %i.q = trunc i64 %.sroa.9.0.extract.shift to i32
  %i.r = and i32 %i.q, 255
  %i.s = and i64 %i.f, 16711680
  %.not61.1 = icmp eq i64 %i.s, 0
  br i1 %.not61.1, label %._crit_edge52.1, label %.lr.ph51.1

.lr.ph51.1:                                       ; preds = %._crit_edge52
  %i.t = zext nneg i32 %.141.lcssa to i64
  br label %.lr.ph.preheader.1

.lr.ph.preheader.1:                               ; preds = %.lr.ph51.1, %.lr.ph.preheader.1
  %indvars.iv83 = phi i64 [ %indvars.iv.next84, %.lr.ph.preheader.1 ], [ %i.t, %.lr.ph51.1 ] ; 3 uses
  %.03750.1 = phi i32 [ %i.ak, %.lr.ph.preheader.1 ], [ 0, %.lr.ph51.1 ]
  %.149.1 = phi i32 [ %i.af, %.lr.ph.preheader.1 ], [ %.1.lcssa, %.lr.ph51.1 ] ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv83
  store i8 3, ptr %i.u, align 1, !tbaa !12
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv83 ; 4 uses
  store i64 0, ptr %i.v, align 8, !tbaa !137
  %i.w = add i32 %.149.1, 1
  %i.x = zext i32 %.149.1 to i64
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 %i.x
  %i.z = load i8, ptr %i.y, align 1, !tbaa !12
  store i8 %i.z, ptr %i.v, align 8, !tbaa !12
  %i.aa = add i32 %.149.1, 2
  %i.ab = zext i32 %i.w to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 %i.ab
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !12
  %i.ae = getelementptr inbounds nuw i8, ptr %i.v, i64 1
  store i8 %i.ad, ptr %i.ae, align 1, !tbaa !12
  %i.af = add i32 %.149.1, 3                      ; 2 uses
  %i.ag = zext i32 %i.aa to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 %i.ag
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !12
  %i.aj = getelementptr inbounds nuw i8, ptr %i.v, i64 2
  store i8 %i.ai, ptr %i.aj, align 2, !tbaa !12
  %i.ak = add nuw nsw i32 %.03750.1, 1            ; 2 uses
  %indvars.iv.next84 = add nuw nsw i64 %indvars.iv83, 1 ; 2 uses
  %exitcond.1.not = icmp eq i32 %i.ak, %i.r
  br i1 %exitcond.1.not, label %._crit_edge52.loopexit.1, label %.lr.ph.preheader.1, !llvm.loop !131

._crit_edge52.loopexit.1:                         ; preds = %.lr.ph.preheader.1
  %i.al = trunc nuw nsw i64 %indvars.iv.next84 to i32
  br label %._crit_edge52.1

._crit_edge52.1:                                  ; preds = %._crit_edge52.loopexit.1, %._crit_edge52
  %.141.lcssa.1 = phi i32 [ %.141.lcssa, %._crit_edge52 ], [ %i.al, %._crit_edge52.loopexit.1 ] ; 2 uses
  %.1.lcssa.1 = phi i32 [ %.1.lcssa, %._crit_edge52 ], [ %i.af, %._crit_edge52.loopexit.1 ] ; 2 uses
  %i.am = trunc i64 %.sroa.10.0.extract.shift to i32
  %2 = and i32 %i.am, 255
  %i.an = and i64 %i.f, 4278190080
  %.not61.2 = icmp eq i64 %i.an, 0
  br i1 %.not61.2, label %._crit_edge52.2, label %.lr.ph51.2

.lr.ph51.2:                                       ; preds = %._crit_edge52.1
  %i.ao = zext nneg i32 %.141.lcssa.1 to i64
  br label %.lr.ph.preheader.2

.lr.ph.preheader.2:                               ; preds = %.lr.ph51.2, %.lr.ph.preheader.2
  %indvars.iv80 = phi i64 [ %indvars.iv.next81, %.lr.ph.preheader.2 ], [ %i.ao, %.lr.ph51.2 ] ; 3 uses
  %.03750.2 = phi i32 [ %i.bk, %.lr.ph.preheader.2 ], [ 0, %.lr.ph51.2 ]
  %.149.2 = phi i32 [ %i.bf, %.lr.ph.preheader.2 ], [ %.1.lcssa.1, %.lr.ph51.2 ] ; 5 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv80
  store i8 4, ptr %i.ap, align 1, !tbaa !12
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv80 ; 5 uses
  store i64 0, ptr %i.aq, align 8, !tbaa !137
  %i.ar = add i32 %.149.2, 1
  %i.as = zext i32 %.149.2 to i64
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 %i.as
  %i.au = load i8, ptr %i.at, align 1, !tbaa !12
  store i8 %i.au, ptr %i.aq, align 8, !tbaa !12
  %i.av = add i32 %.149.2, 2
  %i.aw = zext i32 %i.ar to i64
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 %i.aw
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !12
  %i.az = getelementptr inbounds nuw i8, ptr %i.aq, i64 1
  store i8 %i.ay, ptr %i.az, align 1, !tbaa !12
  %i.ba = add i32 %.149.2, 3
  %i.bb = zext i32 %i.av to i64
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 %i.bb
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !12
  %i.be = getelementptr inbounds nuw i8, ptr %i.aq, i64 2
  store i8 %i.bd, ptr %i.be, align 2, !tbaa !12
  %i.bf = add i32 %.149.2, 4                      ; 2 uses
  %i.bg = zext i32 %i.ba to i64
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 %i.bg
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !12
  %i.bj = getelementptr inbounds nuw i8, ptr %i.aq, i64 3
  store i8 %i.bi, ptr %i.bj, align 1, !tbaa !12
  %i.bk = add nuw nsw i32 %.03750.2, 1            ; 2 uses
  %indvars.iv.next81 = add nuw nsw i64 %indvars.iv80, 1 ; 2 uses
  %exitcond.2.not = icmp eq i32 %i.bk, %2
  br i1 %exitcond.2.not, label %._crit_edge52.loopexit.2, label %.lr.ph.preheader.2, !llvm.loop !131

._crit_edge52.loopexit.2:                         ; preds = %.lr.ph.preheader.2
  %i.bl = trunc nuw nsw i64 %indvars.iv.next81 to i32
  br label %._crit_edge52.2

._crit_edge52.2:                                  ; preds = %._crit_edge52.loopexit.2, %._crit_edge52.1
  %.141.lcssa.2 = phi i32 [ %.141.lcssa.1, %._crit_edge52.1 ], [ %i.bl, %._crit_edge52.loopexit.2 ] ; 2 uses
  %.1.lcssa.2 = phi i32 [ %.1.lcssa.1, %._crit_edge52.1 ], [ %i.bf, %._crit_edge52.loopexit.2 ] ; 2 uses
  %i.bm = trunc nuw i64 %.sroa.11.0.extract.shift to i32
  %i.bn = and i32 %i.bm, 255
  %i.bo = and i64 %i.f, 1095216660480
  %.not61.3 = icmp eq i64 %i.bo, 0
  br i1 %.not61.3, label %._crit_edge52.3, label %.lr.ph51.3

.lr.ph51.3:                                       ; preds = %._crit_edge52.2
  %i.bp = zext nneg i32 %.141.lcssa.2 to i64
  br label %.lr.ph.preheader.3

.lr.ph.preheader.3:                               ; preds = %.lr.ph51.3, %.lr.ph.preheader.3
  %indvars.iv77 = phi i64 [ %indvars.iv.next78, %.lr.ph.preheader.3 ], [ %i.bp, %.lr.ph51.3 ] ; 3 uses
  %.03750.3 = phi i32 [ %i.cq, %.lr.ph.preheader.3 ], [ 0, %.lr.ph51.3 ]
  %.149.3 = phi i32 [ %i.cl, %.lr.ph.preheader.3 ], [ %.1.lcssa.2, %.lr.ph51.3 ] ; 6 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv77
  store i8 5, ptr %i.bq, align 1, !tbaa !12
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv77 ; 6 uses
  store i64 0, ptr %i.br, align 8, !tbaa !137
  %i.bs = add i32 %.149.3, 1
  %i.bt = zext i32 %.149.3 to i64
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 %i.bt
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !12
  store i8 %i.bv, ptr %i.br, align 8, !tbaa !12
  %i.bw = add i32 %.149.3, 2
  %i.bx = zext i32 %i.bs to i64
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 %i.bx
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !12
  %i.ca = getelementptr inbounds nuw i8, ptr %i.br, i64 1
  store i8 %i.bz, ptr %i.ca, align 1, !tbaa !12
  %i.cb = add i32 %.149.3, 3
  %i.cc = zext i32 %i.bw to i64
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 %i.cc
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !12
  %i.cf = getelementptr inbounds nuw i8, ptr %i.br, i64 2
  store i8 %i.ce, ptr %i.cf, align 2, !tbaa !12
  %i.cg = add i32 %.149.3, 4
  %i.ch = zext i32 %i.cb to i64
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 %i.ch
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !12
  %i.ck = getelementptr inbounds nuw i8, ptr %i.br, i64 3
  store i8 %i.cj, ptr %i.ck, align 1, !tbaa !12
  %i.cl = add i32 %.149.3, 5                      ; 2 uses
  %i.cm = zext i32 %i.cg to i64
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 %i.cm
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !12
  %i.cp = getelementptr inbounds nuw i8, ptr %i.br, i64 4
  store i8 %i.co, ptr %i.cp, align 4, !tbaa !12
  %i.cq = add nuw nsw i32 %.03750.3, 1            ; 2 uses
  %indvars.iv.next78 = add nuw nsw i64 %indvars.iv77, 1 ; 2 uses
  %exitcond.3.not = icmp eq i32 %i.cq, %i.bn
  br i1 %exitcond.3.not, label %._crit_edge52.loopexit.3, label %.lr.ph.preheader.3, !llvm.loop !131

._crit_edge52.loopexit.3:                         ; preds = %.lr.ph.preheader.3
  %i.cr = trunc nuw nsw i64 %indvars.iv.next78 to i32
  br label %._crit_edge52.3

._crit_edge52.3:                                  ; preds = %._crit_edge52.loopexit.3, %._crit_edge52.2
  %.141.lcssa.3 = phi i32 [ %.141.lcssa.2, %._crit_edge52.2 ], [ %i.cr, %._crit_edge52.loopexit.3 ] ; 2 uses
  %.1.lcssa.3 = phi i32 [ %.1.lcssa.2, %._crit_edge52.2 ], [ %i.cl, %._crit_edge52.loopexit.3 ] ; 2 uses
  %i.cs = trunc nuw nsw i64 %.sroa.12.0.extract.shift to i32
  %i.ct = and i32 %i.cs, 255
  %i.cu = and i64 %i.f, 280375465082880
  %.not61.4 = icmp eq i64 %i.cu, 0
  br i1 %.not61.4, label %._crit_edge52.4, label %.lr.ph51.4

.lr.ph51.4:                                       ; preds = %._crit_edge52.3
  %i.cv = zext nneg i32 %.141.lcssa.3 to i64
  br label %.lr.ph.preheader.4

.lr.ph.preheader.4:                               ; preds = %.lr.ph51.4, %.lr.ph.preheader.4
  %indvars.iv74 = phi i64 [ %indvars.iv.next75, %.lr.ph.preheader.4 ], [ %i.cv, %.lr.ph51.4 ] ; 3 uses
  %.03750.4 = phi i32 [ %i.eb, %.lr.ph.preheader.4 ], [ 0, %.lr.ph51.4 ]
  %.149.4 = phi i32 [ %i.dw, %.lr.ph.preheader.4 ], [ %.1.lcssa.3, %.lr.ph51.4 ] ; 7 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv74
  store i8 6, ptr %i.cw, align 1, !tbaa !12
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv74 ; 7 uses
  store i64 0, ptr %i.cx, align 8, !tbaa !137
  %i.cy = add i32 %.149.4, 1
  %i.cz = zext i32 %.149.4 to i64
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 %i.cz
  %i.db = load i8, ptr %i.da, align 1, !tbaa !12
  store i8 %i.db, ptr %i.cx, align 8, !tbaa !12
  %i.dc = add i32 %.149.4, 2
  %i.dd = zext i32 %i.cy to i64
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 %i.dd
  %i.df = load i8, ptr %i.de, align 1, !tbaa !12
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cx, i64 1
  store i8 %i.df, ptr %i.dg, align 1, !tbaa !12
  %i.dh = add i32 %.149.4, 3
  %i.di = zext i32 %i.dc to i64
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 %i.di
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !12
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cx, i64 2
  store i8 %i.dk, ptr %i.dl, align 2, !tbaa !12
  %i.dm = add i32 %.149.4, 4
  %i.dn = zext i32 %i.dh to i64
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 %i.dn
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !12
  %i.dq = getelementptr inbounds nuw i8, ptr %i.cx, i64 3
  store i8 %i.dp, ptr %i.dq, align 1, !tbaa !12
  %i.dr = add i32 %.149.4, 5
  %i.ds = zext i32 %i.dm to i64
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 %i.ds
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !12
  %i.dv = getelementptr inbounds nuw i8, ptr %i.cx, i64 4
  store i8 %i.du, ptr %i.dv, align 4, !tbaa !12
  %i.dw = add i32 %.149.4, 6                      ; 2 uses
  %i.dx = zext i32 %i.dr to i64
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 %i.dx
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !12
  %i.ea = getelementptr inbounds nuw i8, ptr %i.cx, i64 5
  store i8 %i.dz, ptr %i.ea, align 1, !tbaa !12
  %i.eb = add nuw nsw i32 %.03750.4, 1            ; 2 uses
  %indvars.iv.next75 = add nuw nsw i64 %indvars.iv74, 1 ; 2 uses
  %exitcond.4.not = icmp eq i32 %i.eb, %i.ct
  br i1 %exitcond.4.not, label %._crit_edge52.loopexit.4, label %.lr.ph.preheader.4, !llvm.loop !131

._crit_edge52.loopexit.4:                         ; preds = %.lr.ph.preheader.4
  %i.ec = trunc nuw nsw i64 %indvars.iv.next75 to i32
  br label %._crit_edge52.4

._crit_edge52.4:                                  ; preds = %._crit_edge52.loopexit.4, %._crit_edge52.3
  %.141.lcssa.4 = phi i32 [ %.141.lcssa.3, %._crit_edge52.3 ], [ %i.ec, %._crit_edge52.loopexit.4 ] ; 2 uses
  %.1.lcssa.4 = phi i32 [ %.1.lcssa.3, %._crit_edge52.3 ], [ %i.dw, %._crit_edge52.loopexit.4 ] ; 2 uses
  %i.ed = trunc nuw nsw i64 %.sroa.13.0.extract.shift to i32
  %i.ee = and i32 %i.ed, 255
  %i.ef = and i64 %i.f, 71776119061217280
  %.not61.5 = icmp eq i64 %i.ef, 0
  br i1 %.not61.5, label %._crit_edge52.5, label %.lr.ph51.5

.lr.ph51.5:                                       ; preds = %._crit_edge52.4
  %i.eg = zext nneg i32 %.141.lcssa.4 to i64
  br label %.lr.ph.preheader.5

.lr.ph.preheader.5:                               ; preds = %.lr.ph51.5, %.lr.ph.preheader.5
  %indvars.iv71 = phi i64 [ %indvars.iv.next72, %.lr.ph.preheader.5 ], [ %i.eg, %.lr.ph51.5 ] ; 3 uses
  %.03750.5 = phi i32 [ %i.fr, %.lr.ph.preheader.5 ], [ 0, %.lr.ph51.5 ]
  %.149.5 = phi i32 [ %i.fm, %.lr.ph.preheader.5 ], [ %.1.lcssa.4, %.lr.ph51.5 ] ; 8 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv71
  store i8 7, ptr %i.eh, align 1, !tbaa !12
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv71 ; 8 uses
  store i64 0, ptr %i.ei, align 8, !tbaa !137
  %i.ej = add i32 %.149.5, 1
  %i.ek = zext i32 %.149.5 to i64
  %i.el = getelementptr inbounds nuw i8, ptr %1, i64 %i.ek
  %i.em = load i8, ptr %i.el, align 1, !tbaa !12
  store i8 %i.em, ptr %i.ei, align 8, !tbaa !12
  %i.en = add i32 %.149.5, 2
  %i.eo = zext i32 %i.ej to i64
  %i.ep = getelementptr inbounds nuw i8, ptr %1, i64 %i.eo
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !12
  %i.er = getelementptr inbounds nuw i8, ptr %i.ei, i64 1
  store i8 %i.eq, ptr %i.er, align 1, !tbaa !12
  %i.es = add i32 %.149.5, 3
  %i.et = zext i32 %i.en to i64
  %i.eu = getelementptr inbounds nuw i8, ptr %1, i64 %i.et
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !12
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ei, i64 2
  store i8 %i.ev, ptr %i.ew, align 2, !tbaa !12
  %i.ex = add i32 %.149.5, 4
  %i.ey = zext i32 %i.es to i64
  %i.ez = getelementptr inbounds nuw i8, ptr %1, i64 %i.ey
  %i.fa = load i8, ptr %i.ez, align 1, !tbaa !12
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ei, i64 3
  store i8 %i.fa, ptr %i.fb, align 1, !tbaa !12
  %i.fc = add i32 %.149.5, 5
  %i.fd = zext i32 %i.ex to i64
  %i.fe = getelementptr inbounds nuw i8, ptr %1, i64 %i.fd
  %i.ff = load i8, ptr %i.fe, align 1, !tbaa !12
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ei, i64 4
  store i8 %i.ff, ptr %i.fg, align 4, !tbaa !12
  %i.fh = add i32 %.149.5, 6
  %i.fi = zext i32 %i.fc to i64
  %i.fj = getelementptr inbounds nuw i8, ptr %1, i64 %i.fi
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !12
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ei, i64 5
  store i8 %i.fk, ptr %i.fl, align 1, !tbaa !12
  %i.fm = add i32 %.149.5, 7                      ; 2 uses
  %i.fn = zext i32 %i.fh to i64
  %i.fo = getelementptr inbounds nuw i8, ptr %1, i64 %i.fn
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !12
  %i.fq = getelementptr inbounds nuw i8, ptr %i.ei, i64 6
  store i8 %i.fp, ptr %i.fq, align 2, !tbaa !12
  %i.fr = add nuw nsw i32 %.03750.5, 1            ; 2 uses
  %indvars.iv.next72 = add nuw nsw i64 %indvars.iv71, 1 ; 2 uses
  %exitcond.5.not = icmp eq i32 %i.fr, %i.ee
  br i1 %exitcond.5.not, label %._crit_edge52.loopexit.5, label %.lr.ph.preheader.5, !llvm.loop !131

._crit_edge52.loopexit.5:                         ; preds = %.lr.ph.preheader.5
  %i.fs = trunc nuw nsw i64 %indvars.iv.next72 to i32
  br label %._crit_edge52.5
end_hunk_0
