inline.NumInlined: 58
inline.NumDeleted: 29
begin_hunk_0_@_ZN11duckdb_zstd26ZSTD_ldm_generateSequencesEPNS_10ldmState_tEPNS_13rawSeqStore_tEPKNS_11ldmParams_tEPKvm:bb.a
  %i.me = load ptr, ptr %1, align 8, !tbaa !62
  %i.mf = getelementptr inbounds nuw [12 x i8], ptr %i.me, i64 %i.z
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 4 ; 2 uses
  %i.mh = load i32, ptr %i.mg, align 4, !tbaa !63
  %i.mi = add i32 %i.mh, %i.md
  store i32 %i.mi, ptr %i.mg, align 4, !tbaa !63
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %.25878 = phi i64 [ %i.mc, %bb.bm ], [ %.6.i69, %bb.bn ]
  %i.mj = add nuw nsw i64 %.05588, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.mj, %i.j
  br i1 %exitcond.not, label %.critedge, label %bb.b, !llvm.loop !69

.critedge:                                        ; preds = %bb.bo, %bb.b, %_ZN11duckdb_zstdL35ZSTD_ldm_generateSequences_internalEPNS_10ldmState_tEPNS_13rawSeqStore_tEPKNS_11ldmParams_tEPKvm.exit, %bb.a, %_ZN11duckdb_zstdL35ZSTD_ldm_generateSequences_internalEPNS_10ldmState_tEPNS_13rawSeqStore_tEPKNS_11ldmParams_tEPKvm.exit.thread72
  %.2 = phi i64 [ -70, %_ZN11duckdb_zstdL35ZSTD_ldm_generateSequences_internalEPNS_10ldmState_tEPNS_13rawSeqStore_tEPKNS_11ldmParams_tEPKvm.exit.thread72 ], [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %bb.bo ], [ %.pre-phi113, %_ZN11duckdb_zstdL35ZSTD_ldm_generateSequences_internalEPNS_10ldmState_tEPNS_13rawSeqStore_tEPKNS_11ldmParams_tEPKvm.exit ]
  ret i64 %.2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN11duckdb_zstd22ZSTD_ldm_skipSequencesEPNS_13rawSeqStore_tEmj(ptr noundef captures(none) %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #6 {
bb.a:
  %.not53 = icmp eq i64 %1, 0
  br i1 %.not53, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i64, ptr %i.b, align 8, !tbaa !37   ; 3 uses
  %.promoted = load i64, ptr %i.a, align 8, !tbaa !70 ; 3 uses
  %umax = tail call i64 @llvm.umax.i64(i64 %.promoted, i64 %i.c)
  %exitcond.not101.not = icmp ult i64 %.promoted, %i.c
  br i1 %exitcond.not101.not, label %.lr.ph103.preheader, label %.critedge

.lr.ph103.preheader:                              ; preds = %.lr.ph
  %i.d = load ptr, ptr %0, align 8, !tbaa !62
  br label %.lr.ph103

.lr.ph103:                                        ; preds = %.lr.ph103.preheader, %bb.h
  %.02754102 = phi i64 [ %i.y, %bb.h ], [ %1, %.lr.ph103.preheader ] ; 3 uses
  %i.e = phi i64 [ %i.z, %bb.h ], [ %.promoted, %.lr.ph103.preheader ] ; 3 uses
  %i.f = getelementptr inbounds nuw [12 x i8], ptr %i.d, i64 %i.e ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 3 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !63   ; 2 uses
  %i.i = zext i32 %i.h to i64                     ; 2 uses
  %.not34 = icmp ugt i64 %.02754102, %i.i
  br i1 %.not34, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph103
  %i.j = trunc nuw i64 %.02754102 to i32
  %i.k = sub i32 %i.h, %i.j
  store i32 %i.k, ptr %i.g, align 4, !tbaa !63
  br label %.critedge

bb.c:                                             ; preds = %.lr.ph103
  %i.l = sub nuw i64 %.02754102, %i.i             ; 3 uses
  store i32 0, ptr %i.g, align 4, !tbaa !63
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !65   ; 2 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = icmp ult i64 %i.l, %i.o
  br i1 %i.p, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.q = trunc nuw i64 %i.l to i32
  %i.r = sub i32 %i.n, %i.q                       ; 3 uses
  store i32 %i.r, ptr %i.m, align 4, !tbaa !65
  %i.s = icmp ult i32 %i.r, %2
  br i1 %i.s, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.t = add nuw i64 %i.e, 1                      ; 2 uses
  %i.u = icmp ult i64 %i.t, %i.c
  br i1 %i.u, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !63
  %i.x = add i32 %i.w, %i.r
  store i32 %i.x, ptr %i.v, align 4, !tbaa !63
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  store i64 %i.t, ptr %i.a, align 8, !tbaa !70
  br label %.critedge

bb.h:                                             ; preds = %bb.c
  %i.y = sub nuw i64 %i.l, %i.o                   ; 2 uses
  store i32 0, ptr %i.m, align 4, !tbaa !65
  %i.z = add i64 %i.e, 1                          ; 3 uses
  store i64 %i.z, ptr %i.a, align 8, !tbaa !70
  %.not = icmp eq i64 %i.y, 0
  %exitcond.not = icmp eq i64 %i.z, %umax
  %or.cond = or i1 %.not, %exitcond.not
  br i1 %or.cond, label %.critedge, label %.lr.ph103

.critedge:                                        ; preds = %bb.h, %.lr.ph, %bb.a, %bb.d, %bb.g, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN11duckdb_zstd29ZSTD_ldm_skipRawSeqStoreBytesEPNS_13rawSeqStore_tEm(ptr noundef captures(none) %0, i64 noundef %1) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !71
  %i.c = add i64 %i.b, %1
  %i.d = trunc i64 %i.c to i32                    ; 2 uses
  %.not27 = icmp eq i32 %i.d, 0
  br i1 %.not27, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load i64, ptr %i.f, align 8, !tbaa !37   ; 3 uses
  %.promoted = load i64, ptr %i.e, align 8, !tbaa !70 ; 4 uses
  %umax = tail call i64 @llvm.umax.i64(i64 %.promoted, i64 %i.g)
  %exitcond.not42.not = icmp ult i64 %.promoted, %i.g
  br i1 %exitcond.not42.not, label %.lr.ph44.preheader, label %.loopexit

.lr.ph44.preheader:                               ; preds = %.lr.ph
  %i.h = load ptr, ptr %0, align 8, !tbaa !62
  br label %.lr.ph44

bb.b:                                             ; preds = %bb.c
  %exitcond.not = icmp eq i64 %i.n, %umax
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph44

.lr.ph44:                                         ; preds = %.lr.ph44.preheader, %bb.b
  %.0182843 = phi i32 [ %i.m, %bb.b ], [ %i.d, %.lr.ph44.preheader ] ; 3 uses
  %i.i = phi i64 [ %i.n, %bb.b ], [ %.promoted, %.lr.ph44.preheader ] ; 3 uses
  %i.j = getelementptr inbounds nuw [12 x i8], ptr %i.h, i64 %i.i ; 2 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %.sroa.3.0.copyload = load i32, ptr %.sroa.3.0..sroa_idx, align 4, !tbaa !3
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.5.0.copyload = load i32, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !3
  %i.k = add i32 %.sroa.5.0.copyload, %.sroa.3.0.copyload ; 2 uses
  %.not21 = icmp ult i32 %.0182843, %i.k
  br i1 %.not21, label %.thread, label %bb.c

.thread:                                          ; preds = %.lr.ph44
  %i.l = zext i32 %.0182843 to i64
  store i64 %i.l, ptr %i.a, align 8, !tbaa !71
  br label %.loopexit

bb.c:                                             ; preds = %.lr.ph44
  %i.m = sub nuw i32 %.0182843, %i.k              ; 2 uses
  %i.n = add i64 %i.i, 1                          ; 4 uses
  store i64 %i.n, ptr %i.e, align 8, !tbaa !70
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %.critedge, label %bb.b

.loopexit:                                        ; preds = %bb.b, %.lr.ph, %.thread
  %i.o = phi i64 [ %i.i, %.thread ], [ %.promoted, %.lr.ph ], [ %i.n, %bb.b ]
  %i.p = icmp eq i64 %i.o, %i.g
  br i1 %i.p, label %.critedge, label %bb.d

.critedge:                                        ; preds = %bb.c, %bb.a, %.loopexit
  store i64 0, ptr %i.a, align 8, !tbaa !71
  br label %bb.d

bb.d:                                             ; preds = %.critedge, %.loopexit
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZN11duckdb_zstd22ZSTD_ldm_blockCompressEPNS_13rawSeqStore_tEPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjNS_18ZSTD_paramSwitch_eEPKvm(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, i64 noundef %6) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 272
  %i.b = load i32, ptr %i.a, align 4, !tbaa !72   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 280 ; 4 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !73
  %.sroa.1.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.1.0.copyload.i = load i32, ptr %.sroa.1.0..sroa_idx.i, align 8, !tbaa !3
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 28
  %.sroa.2.0.copyload.i = load i32, ptr %.sroa.2.0..sroa_idx.i, align 4, !tbaa !3
  %.not.i79 = icmp ult i32 %.sroa.2.0.copyload.i, %.sroa.1.0.copyload.i
  br i1 %.not.i79, label %_ZN11duckdb_zstdL24ZSTD_matchState_dictModeEPKNS_17ZSTD_matchState_tE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !74   ; 2 uses
  %.not3.i = icmp eq ptr %i.f, null
  br i1 %.not3.i, label %_ZN11duckdb_zstdL24ZSTD_matchState_dictModeEPKNS_17ZSTD_matchState_tE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 140
  %i.h = load i32, ptr %i.g, align 4, !tbaa !80
  %.not4.i = icmp eq i32 %i.h, 0
  %i.i = select i1 %.not4.i, i32 2, i32 3
  br label %_ZN11duckdb_zstdL24ZSTD_matchState_dictModeEPKNS_17ZSTD_matchState_tE.exit

_ZN11duckdb_zstdL24ZSTD_matchState_dictModeEPKNS_17ZSTD_matchState_tE.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.j = phi i32 [ 1, %bb.a ], [ %i.i, %bb.c ], [ 0, %bb.b ]
  %i.k = tail call noundef ptr @_ZN11duckdb_zstd26ZSTD_selectBlockCompressorENS_13ZSTD_strategyENS_18ZSTD_paramSwitch_eENS_15ZSTD_dictMode_eE(i32 noundef %i.d, i32 noundef %4, i32 noundef %i.j) ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 %6 ; 4 uses
  %i.m = load i32, ptr %i.c, align 4, !tbaa !73
  %i.n = icmp sgt i32 %i.m, 6
  br i1 %i.n, label %bb.d, label %.preheader

.preheader:                                       ; preds = %_ZN11duckdb_zstdL24ZSTD_matchState_dictModeEPKNS_17ZSTD_matchState_tE.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.q = load i64, ptr %i.o, align 8, !tbaa !70   ; 2 uses
  %i.r = load i64, ptr %i.p, align 8, !tbaa !37   ; 2 uses
  %i.s = icmp ult i64 %i.q, %i.r
  %i.t = icmp ne i64 %6, 0
  %i.u = and i1 %i.s, %i.t
  br i1 %i.u, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %.preheader
  %i.v = ptrtoint ptr %i.l to i64
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 2 uses
  %i.y = getelementptr inbounds i8, ptr %i.l, i64 -32 ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 5 uses
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 76 ; 2 uses
  %scevgep = getelementptr i8, ptr %3, i64 4
  br label %bb.g

bb.d:                                             ; preds = %_ZN11duckdb_zstdL24ZSTD_matchState_dictModeEPKNS_17ZSTD_matchState_tE.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 288
  store ptr %0, ptr %i.ae, align 8, !tbaa !81
  %i.af = tail call noundef i64 %i.k(ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3, ptr noundef %5, i64 noundef %6) ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !71
  %i.ai = add i64 %i.ah, %6
  %i.aj = trunc i64 %i.ai to i32                  ; 2 uses
  %.not27.i = icmp eq i32 %i.aj, 0
  br i1 %.not27.i, label %.critedge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.am = load i64, ptr %i.al, align 8, !tbaa !37 ; 3 uses
  %.promoted.i = load i64, ptr %i.ak, align 8, !tbaa !70 ; 3 uses
  %umax.i = tail call i64 @llvm.umax.i64(i64 %.promoted.i, i64 %i.am) ; 3 uses
  %exitcond.not.i203.not = icmp ult i64 %.promoted.i, %i.am
  br i1 %exitcond.not.i203.not, label %.lr.ph205.preheader, label %.loopexit.i

.lr.ph205.preheader:                              ; preds = %.lr.ph.i
  %i.an = load ptr, ptr %0, align 8, !tbaa !62
  br label %.lr.ph205

bb.e:                                             ; preds = %bb.f
  %exitcond.not.i = icmp eq i64 %i.at, %umax.i
  br i1 %exitcond.not.i, label %.loopexit.i, label %.lr.ph205

.lr.ph205:                                        ; preds = %.lr.ph205.preheader, %bb.e
  %.01828.i204 = phi i32 [ %i.as, %bb.e ], [ %i.aj, %.lr.ph205.preheader ] ; 3 uses
  %i.ao = phi i64 [ %i.at, %bb.e ], [ %.promoted.i, %.lr.ph205.preheader ] ; 3 uses
  %i.ap = getelementptr inbounds nuw [12 x i8], ptr %i.an, i64 %i.ao ; 2 uses
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  %.sroa.3.0.copyload.i = load i32, ptr %.sroa.3.0..sroa_idx.i, align 4, !tbaa !3
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %.sroa.5.0.copyload.i = load i32, ptr %.sroa.5.0..sroa_idx.i, align 4, !tbaa !3
  %i.aq = add i32 %.sroa.5.0.copyload.i, %.sroa.3.0.copyload.i ; 2 uses
  %.not21.i = icmp ult i32 %.01828.i204, %i.aq
  br i1 %.not21.i, label %.thread.i, label %bb.f

.thread.i:                                        ; preds = %.lr.ph205
  %i.ar = zext i32 %.01828.i204 to i64
  store i64 %i.ar, ptr %i.ag, align 8, !tbaa !71
  br label %.loopexit.i

bb.f:                                             ; preds = %.lr.ph205
  %i.as = sub nuw i32 %.01828.i204, %i.aq         ; 2 uses
  %i.at = add i64 %i.ao, 1                        ; 3 uses
  store i64 %i.at, ptr %i.ak, align 8, !tbaa !70
  %.not.i80 = icmp eq i32 %i.as, 0
  br i1 %.not.i80, label %.critedge.i, label %bb.e

.loopexit.i:                                      ; preds = %bb.e, %.lr.ph.i, %.thread.i
  %i.au = phi i64 [ %i.ao, %.thread.i ], [ %umax.i, %.lr.ph.i ], [ %umax.i, %bb.e ]
  %i.av = icmp eq i64 %i.au, %i.am
  br i1 %i.av, label %.critedge.i, label %_ZN11duckdb_zstd29ZSTD_ldm_skipRawSeqStoreBytesEPNS_13rawSeqStore_tEm.exit

.critedge.i:                                      ; preds = %bb.f, %.loopexit.i, %bb.d
  store i64 0, ptr %i.ag, align 8, !tbaa !71
  br label %_ZN11duckdb_zstd29ZSTD_ldm_skipRawSeqStoreBytesEPNS_13rawSeqStore_tEm.exit

bb.g:                                             ; preds = %.lr.ph, %bb.af
  %i.aw = phi i64 [ %i.r, %.lr.ph ], [ %i.gl, %bb.af ] ; 3 uses
  %i.ax = phi i64 [ %i.q, %.lr.ph ], [ %i.gk, %bb.af ] ; 4 uses
  %.074112 = phi ptr [ %5, %.lr.ph ], [ %i.gj, %bb.af ] ; 6 uses
  %i.ay = ptrtoint ptr %.074112 to i64            ; 5 uses
  %i.az = sub i64 %i.v, %i.ay                     ; 2 uses
  %i.ba = trunc i64 %i.az to i32                  ; 4 uses
  %i.bb = load ptr, ptr %0, align 8, !tbaa !62    ; 2 uses
  %i.bc = getelementptr inbounds nuw [12 x i8], ptr %i.bb, i64 %i.ax ; 2 uses
  %.sroa.010.0.copyload.i = load i64, ptr %i.bc, align 4 ; 3 uses
  %.sroa.010.sroa.4.0.extract.shift.i = lshr i64 %.sroa.010.0.copyload.i, 32 ; 6 uses
  %.sroa.010.sroa.4.0.extract.trunc.i = trunc nuw i64 %.sroa.010.sroa.4.0.extract.shift.i to i32 ; 3 uses
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %.sroa.8.0.copyload.i = load i32, ptr %.sroa.8.0..sroa_idx.i, align 4, !tbaa !3 ; 3 uses
  %i.bd = add i32 %.sroa.8.0.copyload.i, %.sroa.010.sroa.4.0.extract.trunc.i
  %.not.i81 = icmp ugt i32 %i.bd, %i.ba
  br i1 %.not.i81, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.be = add nuw i64 %i.ax, 1
  br label %_ZN11duckdb_zstd22ZSTD_ldm_skipSequencesEPNS_13rawSeqStore_tEmj.exit.sink.split.i

bb.i:                                             ; preds = %bb.g
  %.not22.i = icmp ugt i32 %i.ba, %.sroa.010.sroa.4.0.extract.trunc.i ; 2 uses
  %i.bf = sub i32 %i.ba, %.sroa.010.sroa.4.0.extract.trunc.i ; 2 uses
  %i.bg = icmp uge i32 %i.bf, %i.b
  %.sroa.8.0.i = select i1 %.not22.i, i32 %i.bf, i32 %.sroa.8.0.copyload.i ; 6 uses
  %i.bh = and i1 %.not22.i, %i.bg
  %.sroa.010.sroa.0.0.i = select i1 %i.bh, i64 %.sroa.010.0.copyload.i, i64 0 ; 6 uses
  %.not53.i.i = icmp eq i32 %i.ba, 0
  %exitcond.not.i.i199 = icmp eq i64 %i.ax, %i.aw
  %or.cond223 = or i1 %.not53.i.i, %exitcond.not.i.i199
  br i1 %or.cond223, label %_ZN11duckdb_zstdL18maybeSplitSequenceEPNS_13rawSeqStore_tEjj.exit, label %.lr.ph201

.lr.ph201:                                        ; preds = %bb.i
  %i.bi = and i64 %i.az, 4294967295
  br label %bb.j

bb.j:                                             ; preds = %bb.p, %.lr.ph201
  %.02754.i.i200 = phi i64 [ %i.bi, %.lr.ph201 ], [ %i.cd, %bb.p ] ; 3 uses
  %i.bj = phi i64 [ %i.ax, %.lr.ph201 ], [ %i.ce, %bb.p ] ; 3 uses
  %i.bk = getelementptr inbounds nuw [12 x i8], ptr %i.bb, i64 %i.bj ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 4 ; 3 uses
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !63 ; 2 uses
  %i.bn = zext i32 %i.bm to i64                   ; 2 uses
  %.not34.i.i = icmp ugt i64 %.02754.i.i200, %i.bn
  br i1 %.not34.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bo = trunc nuw i64 %.02754.i.i200 to i32
  %i.bp = sub i32 %i.bm, %i.bo
  store i32 %i.bp, ptr %i.bl, align 4, !tbaa !63
  br label %_ZN11duckdb_zstdL18maybeSplitSequenceEPNS_13rawSeqStore_tEjj.exit

bb.l:                                             ; preds = %bb.j
  %i.bq = sub nuw nsw i64 %.02754.i.i200, %i.bn   ; 3 uses
  store i32 0, ptr %i.bl, align 4, !tbaa !63
  %i.br = getelementptr inbounds nuw i8, ptr %i.bk, i64 8 ; 3 uses
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !65 ; 2 uses
  %i.bt = zext i32 %i.bs to i64                   ; 2 uses
  %i.bu = icmp ult i64 %i.bq, %i.bt
  br i1 %i.bu, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.bv = trunc nuw i64 %i.bq to i32
  %i.bw = sub i32 %i.bs, %i.bv                    ; 3 uses
  store i32 %i.bw, ptr %i.br, align 4, !tbaa !65
  %i.bx = icmp ult i32 %i.bw, %i.b
  br i1 %i.bx, label %bb.n, label %_ZN11duckdb_zstdL18maybeSplitSequenceEPNS_13rawSeqStore_tEjj.exit

bb.n:                                             ; preds = %bb.m
  %i.by = add nuw i64 %i.bj, 1                    ; 3 uses
  %i.bz = icmp ult i64 %i.by, %i.aw
  br i1 %i.bz, label %bb.o, label %_ZN11duckdb_zstd22ZSTD_ldm_skipSequencesEPNS_13rawSeqStore_tEmj.exit.sink.split.i

bb.o:                                             ; preds = %bb.n
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bk, i64 16 ; 2 uses
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !63
  %i.cc = add i32 %i.cb, %i.bw
  store i32 %i.cc, ptr %i.ca, align 4, !tbaa !63
  br label %_ZN11duckdb_zstd22ZSTD_ldm_skipSequencesEPNS_13rawSeqStore_tEmj.exit.sink.split.i

bb.p:                                             ; preds = %bb.l
  %i.cd = sub nuw nsw i64 %i.bq, %i.bt            ; 2 uses
  store i32 0, ptr %i.br, align 4, !tbaa !65
  %i.ce = add i64 %i.bj, 1                        ; 3 uses
  store i64 %i.ce, ptr %i.o, align 8, !tbaa !70
  %.not.i.i = icmp eq i64 %i.cd, 0
  %exitcond.not.i.i = icmp eq i64 %i.ce, %i.aw
  %or.cond224 = or i1 %.not.i.i, %exitcond.not.i.i
  br i1 %or.cond224, label %_ZN11duckdb_zstdL18maybeSplitSequenceEPNS_13rawSeqStore_tEjj.exit, label %bb.j

_ZN11duckdb_zstd22ZSTD_ldm_skipSequencesEPNS_13rawSeqStore_tEmj.exit.sink.split.i: ; preds = %bb.o, %bb.n, %bb.h
  %.sink.i = phi i64 [ %i.be, %bb.h ], [ %i.by, %bb.o ], [ %i.by, %bb.n ]
  %.sroa.8.1.ph.i = phi i32 [ %.sroa.8.0.copyload.i, %bb.h ], [ %.sroa.8.0.i, %bb.o ], [ %.sroa.8.0.i, %bb.n ]
  %.sroa.010.sroa.0.1.ph.i = phi i64 [ %.sroa.010.0.copyload.i, %bb.h ], [ %.sroa.010.sroa.0.0.i, %bb.o ], [ %.sroa.010.sroa.0.0.i, %bb.n ]
  store i64 %.sink.i, ptr %i.o, align 8, !tbaa !70
  br label %_ZN11duckdb_zstdL18maybeSplitSequenceEPNS_13rawSeqStore_tEjj.exit

_ZN11duckdb_zstdL18maybeSplitSequenceEPNS_13rawSeqStore_tEjj.exit: ; preds = %bb.p, %bb.i, %bb.k, %bb.m, %_ZN11duckdb_zstd22ZSTD_ldm_skipSequencesEPNS_13rawSeqStore_tEmj.exit.sink.split.i
  %.sroa.8.1.i = phi i32 [ %.sroa.8.0.i, %bb.m ], [ %.sroa.8.0.i, %bb.i ], [ %.sroa.8.1.ph.i, %_ZN11duckdb_zstd22ZSTD_ldm_skipSequencesEPNS_13rawSeqStore_tEmj.exit.sink.split.i ], [ %.sroa.8.0.i, %bb.k ], [ %.sroa.8.0.i, %bb.p ]
  %.sroa.010.sroa.0.1.i = phi i64 [ %.sroa.010.sroa.0.0.i, %bb.m ], [ %.sroa.010.sroa.0.0.i, %bb.i ], [ %.sroa.010.sroa.0.1.ph.i, %_ZN11duckdb_zstd22ZSTD_ldm_skipSequencesEPNS_13rawSeqStore_tEmj.exit.sink.split.i ], [ %.sroa.010.sroa.0.0.i, %bb.k ], [ %.sroa.010.sroa.0.0.i, %bb.p ]
  %.sroa.06.0.extract.trunc = trunc i64 %.sroa.010.sroa.0.1.i to i32 ; 3 uses
  %i.cf = icmp eq i32 %.sroa.06.0.extract.trunc, 0
  br i1 %i.cf, label %.thread, label %bb.q

bb.q:                                             ; preds = %_ZN11duckdb_zstdL18maybeSplitSequenceEPNS_13rawSeqStore_tEjj.exit
  %i.cg = load ptr, ptr %i.w, align 8, !tbaa !82
  %i.ch = ptrtoint ptr %i.cg to i64
  %i.ci = sub i64 %i.ay, %i.ch
  %i.cj = trunc i64 %i.ci to i32                  ; 3 uses
  %i.ck = load i32, ptr %i.x, align 4, !tbaa !83  ; 2 uses
  %i.cl = add i32 %i.ck, 1024
  %i.cm = icmp ult i32 %i.cl, %i.cj
  br i1 %i.cm, label %bb.r, label %_ZN11duckdb_zstdL25ZSTD_ldm_limitTableUpdateEPNS_17ZSTD_matchState_tEPKh.exit

bb.r:                                             ; preds = %bb.q
  %reass.sub = sub i32 %i.cj, %i.ck
  %i.cn = add i32 %reass.sub, -1024
  %spec.select.i = tail call i32 @llvm.umin.i32(i32 %i.cn, i32 512)
  %i.co = sub i32 %i.cj, %spec.select.i
  store i32 %i.co, ptr %i.x, align 4, !tbaa !83
  br label %_ZN11duckdb_zstdL25ZSTD_ldm_limitTableUpdateEPNS_17ZSTD_matchState_tEPKh.exit

_ZN11duckdb_zstdL25ZSTD_ldm_limitTableUpdateEPNS_17ZSTD_matchState_tEPKh.exit: ; preds = %bb.q, %bb.r
  %i.cp = load i32, ptr %i.c, align 8, !tbaa !84
  switch i32 %i.cp, label %_ZN11duckdb_zstdL23ZSTD_ldm_fillFastTablesEPNS_17ZSTD_matchState_tEPKv.exit [
    i32 1, label %bb.s
    i32 2, label %bb.t
  ]

bb.s:                                             ; preds = %_ZN11duckdb_zstdL25ZSTD_ldm_limitTableUpdateEPNS_17ZSTD_matchState_tEPKh.exit
  tail call void @_ZN11duckdb_zstd18ZSTD_fillHashTableEPNS_17ZSTD_matchState_tEPKvNS_26ZSTD_dictTableLoadMethod_eENS_23ZSTD_tableFillPurpose_eE(ptr noundef nonnull %1, ptr noundef %.074112, i32 noundef 0, i32 noundef 0)
  br label %_ZN11duckdb_zstdL23ZSTD_ldm_fillFastTablesEPNS_17ZSTD_matchState_tEPKv.exit

bb.t:                                             ; preds = %_ZN11duckdb_zstdL25ZSTD_ldm_limitTableUpdateEPNS_17ZSTD_matchState_tEPKh.exit
  tail call void @_ZN11duckdb_zstd24ZSTD_fillDoubleHashTableEPNS_17ZSTD_matchState_tEPKvNS_26ZSTD_dictTableLoadMethod_eENS_23ZSTD_tableFillPurpose_eE(ptr noundef nonnull %1, ptr noundef %.074112, i32 noundef 0, i32 noundef 0)
  br label %_ZN11duckdb_zstdL23ZSTD_ldm_fillFastTablesEPNS_17ZSTD_matchState_tEPKv.exit

_ZN11duckdb_zstdL23ZSTD_ldm_fillFastTablesEPNS_17ZSTD_matchState_tEPKv.exit: ; preds = %_ZN11duckdb_zstdL25ZSTD_ldm_limitTableUpdateEPNS_17ZSTD_matchState_tEPKh.exit, %bb.s, %bb.t
  %i.cq = tail call noundef i64 %i.k(ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3, ptr noundef %.074112, i64 noundef %.sroa.010.sroa.4.0.extract.shift.i) ; 8 uses
  %i.cr = load i64, ptr %3, align 4, !tbaa !3
  store i64 %i.cr, ptr %scevgep, align 4, !tbaa !3
  %i.cs = getelementptr inbounds nuw i8, ptr %.074112, i64 %.sroa.010.sroa.4.0.extract.shift.i ; 5 uses
  store i32 %.sroa.06.0.extract.trunc, ptr %3, align 4, !tbaa !3
  %i.ct = sub i64 0, %i.cq
  %i.cu = getelementptr inbounds i8, ptr %i.cs, i64 %i.ct ; 7 uses
  %i.cv = add i32 %.sroa.06.0.extract.trunc, 3
  %i.cw = zext i32 %.sroa.8.1.i to i64            ; 2 uses
  %.not.i = icmp ugt ptr %i.cs, %i.y
  %i.cx = load ptr, ptr %i.z, align 8, !tbaa !85  ; 5 uses
  br i1 %.not.i, label %bb.y, label %bb.u

bb.u:                                             ; preds = %_ZN11duckdb_zstdL23ZSTD_ldm_fillFastTablesEPNS_17ZSTD_matchState_tEPKv.exit
  %.val78 = load <2 x i64>, ptr %i.cu, align 1, !tbaa !30
  store <2 x i64> %.val78, ptr %i.cx, align 1, !tbaa !30
  %i.cy = icmp ugt i64 %i.cq, 16
  %i.cz = load ptr, ptr %i.z, align 8, !tbaa !85  ; 4 uses
  br i1 %i.cy, label %bb.v, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.thread

_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.thread: ; preds = %bb.u
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 %i.cq
  store ptr %i.da, ptr %i.z, align 8, !tbaa !85
  %.pre = load ptr, ptr %i.ac, align 8, !tbaa !89
  br label %bb.ad

bb.v:                                             ; preds = %bb.u
  %i.db = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cu, i64 16 ; 2 uses
  %i.dd = getelementptr i8, ptr %i.cz, i64 %i.cq
  %.val77 = load <2 x i64>, ptr %i.dc, align 1, !tbaa !30
  store <2 x i64> %.val77, ptr %i.db, align 1, !tbaa !30
  %i.de = icmp slt i64 %i.cq, 33
  br i1 %i.de, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.df = getelementptr inbounds nuw i8, ptr %i.cz, i64 32
  br label %bb.x

bb.x:                                             ; preds = %bb.x, %bb.w
  %.130.i = phi ptr [ %i.df, %bb.w ], [ %i.di, %bb.x ] ; 3 uses
  %.pn.i = phi ptr [ %i.dc, %bb.w ], [ %i.dh, %bb.x ] ; 2 uses
  %.1.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 16
  %.1.i.val = load <2 x i64>, ptr %.1.i, align 1, !tbaa !30
  store <2 x i64> %.1.i.val, ptr %.130.i, align 1, !tbaa !30
  %i.dg = getelementptr inbounds nuw i8, ptr %.130.i, i64 16
  %i.dh = getelementptr inbounds nuw i8, ptr %.pn.i, i64 32 ; 2 uses
  %.val = load <2 x i64>, ptr %i.dh, align 1, !tbaa !30
  store <2 x i64> %.val, ptr %i.dg, align 1, !tbaa !30
  %i.di = getelementptr inbounds nuw i8, ptr %.130.i, i64 32 ; 2 uses
  %i.dj = icmp ult ptr %i.di, %i.dd
  br i1 %i.dj, label %bb.x, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit, !llvm.loop !90

bb.y:                                             ; preds = %_ZN11duckdb_zstdL23ZSTD_ldm_fillFastTablesEPNS_17ZSTD_matchState_tEPKv.exit
  %.not.i82 = icmp ugt ptr %i.cu, %i.y
  br i1 %.not.i82, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dk = ptrtoint ptr %i.cu to i64
  %i.dl = sub i64 %i.aa, %i.dk                    ; 2 uses
  %i.dm = getelementptr inbounds i8, ptr %i.cx, i64 %i.dl ; 3 uses
  %.val19.i = load <2 x i64>, ptr %i.cu, align 1, !tbaa !30
  store <2 x i64> %.val19.i, ptr %i.cx, align 1, !tbaa !30
  %i.dn = icmp slt i64 %i.dl, 17
  br i1 %i.dn, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.do = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ab, %bb.aa
  %.130.i.i = phi ptr [ %i.do, %bb.aa ], [ %i.dr, %bb.ab ] ; 3 uses
  %.pn.i.i = phi ptr [ %i.cu, %bb.aa ], [ %i.dq, %bb.ab ] ; 2 uses
  %.1.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 16
  %.1.i.val.i = load <2 x i64>, ptr %.1.i.i, align 1, !tbaa !30
  store <2 x i64> %.1.i.val.i, ptr %.130.i.i, align 1, !tbaa !30
  %i.dp = getelementptr inbounds nuw i8, ptr %.130.i.i, i64 16
  %i.dq = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 32 ; 2 uses
  %.val.i = load <2 x i64>, ptr %i.dq, align 1, !tbaa !30
  store <2 x i64> %.val.i, ptr %i.dp, align 1, !tbaa !30
  %i.dr = getelementptr inbounds nuw i8, ptr %.130.i.i, i64 32 ; 2 uses
  %i.ds = icmp ult ptr %i.dr, %i.dm
  br i1 %i.ds, label %bb.ab, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i, !llvm.loop !90

_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i: ; preds = %bb.ab, %bb.z, %bb.y
  %.014.i = phi ptr [ %i.cu, %bb.y ], [ %i.y, %bb.z ], [ %i.y, %bb.ab ] ; 8 uses
  %.0.i = phi ptr [ %i.cx, %bb.y ], [ %i.dm, %bb.z ], [ %i.dm, %bb.ab ] ; 6 uses
  %i.dt = icmp ult ptr %.014.i, %i.cs
  br i1 %i.dt, label %iter.check, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit

iter.check:                                       ; preds = %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i
  %.014.i207 = ptrtoaddr ptr %.014.i to i64
  %.0.i206 = ptrtoaddr ptr %.0.i to i64
  %.014.i208 = ptrtoint ptr %.014.i to i64
  %i.du = add i64 %.sroa.010.sroa.4.0.extract.shift.i, %i.ay
  %i.dv = sub i64 %i.du, %.014.i208               ; 7 uses
  %min.iters.check = icmp ult i64 %i.dv, 4
  %i.dw = sub i64 %.0.i206, %.014.i207
  %diff.check = icmp ult i64 %i.dw, 32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i83.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check209 = icmp ult i64 %i.dv, 32
  br i1 %min.iters.check209, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.dv, 28
  %n.vec = and i64 %i.dv, -32                     ; 5 uses
  %i.dx = getelementptr i8, ptr %.0.i, i64 %n.vec
  %i.dy = getelementptr i8, ptr %.014.i, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.0.i, i64 %index ; 2 uses
  %next.gep210 = getelementptr i8, ptr %.014.i, i64 %index ; 2 uses
  %i.dz = getelementptr i8, ptr %next.gep210, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep210, align 1, !tbaa !30
  %wide.load211 = load <16 x i8>, ptr %i.dz, align 1, !tbaa !30
  %i.ea = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !30
  store <16 x i8> %wide.load211, ptr %i.ea, align 1, !tbaa !30
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.eb = icmp eq i64 %index.next, %n.vec
  br i1 %i.eb, label %middle.block, label %vector.body, !llvm.loop !91

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dv, %n.vec
  br i1 %cmp.n, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i83.preheader, label %vec.epilog.ph, !prof !94

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec214 = and i64 %i.dv, -4                   ; 4 uses
  %i.ec = getelementptr i8, ptr %.0.i, i64 %n.vec214
  %i.ed = getelementptr i8, ptr %.014.i, i64 %n.vec214
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index215 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next219, %vec.epilog.vector.body ] ; 3 uses
  %next.gep216 = getelementptr i8, ptr %.0.i, i64 %index215
  %next.gep217 = getelementptr i8, ptr %.014.i, i64 %index215
  %wide.load218 = load <4 x i8>, ptr %next.gep217, align 1, !tbaa !30
  store <4 x i8> %wide.load218, ptr %next.gep216, align 1, !tbaa !30
  %index.next219 = add nuw i64 %index215, 4       ; 2 uses
  %i.ee = icmp eq i64 %index.next219, %n.vec214
  br i1 %i.ee, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !95

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n220 = icmp eq i64 %i.dv, %n.vec214
  br i1 %cmp.n220, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit, label %.lr.ph.i83.preheader

.lr.ph.i83.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.121.i.ph = phi ptr [ %.0.i, %iter.check ], [ %i.dx, %vec.epilog.iter.check ], [ %i.ec, %vec.epilog.middle.block ] ; 2 uses
  %.11520.i.ph = phi ptr [ %.014.i, %iter.check ], [ %i.dy, %vec.epilog.iter.check ], [ %i.ed, %vec.epilog.middle.block ] ; 3 uses
  %i.ef = add i64 %.sroa.010.sroa.4.0.extract.shift.i, %i.ay
  %.11520.i.ph250 = ptrtoint ptr %.11520.i.ph to i64 ; 2 uses
  %i.eg = sub i64 %i.ef, %.11520.i.ph250
end_hunk_0
