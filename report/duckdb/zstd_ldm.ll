inline.NumInlined: 58
inline.NumDeleted: 29
begin_hunk_0_@_ZN11duckdb_zstd22ZSTD_ldm_skipSequencesEPNS_13rawSeqStore_tEmj:bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i64, ptr %i.b, align 8, !tbaa !37   ; 3 uses
  %.promoted = load i64, ptr %i.a, align 8, !tbaa !70 ; 3 uses
  %umax = tail call i64 @llvm.umax.i64(i64 %.promoted, i64 %i.c)
  %i.d = icmp ult i64 %.promoted, %i.c
  br i1 %i.d, label %.lr.ph103.preheader, label %.critedge

end_hunk_0
begin_hunk_1_@_ZN11duckdb_zstd22ZSTD_ldm_skipSequencesEPNS_13rawSeqStore_tEmj:bb.a
bb.h:                                             ; preds = %bb.c
  %i.z = sub nuw i64 %i.m, %i.p                   ; 2 uses
  store i32 0, ptr %i.n, align 4, !tbaa !65
  %i.aa = add i64 %i.f, 1                         ; 3 uses
  store i64 %i.aa, ptr %i.a, align 8, !tbaa !70
  %.not = icmp eq i64 %i.z, 0
  %exitcond.not = icmp eq i64 %i.aa, %umax
  %or.cond = or i1 %.not, %exitcond.not
  br i1 %or.cond, label %.critedge, label %.lr.ph103

.critedge:                                        ; preds = %bb.h, %.lr.ph, %bb.a, %bb.d, %bb.g, %bb.b
  ret void
end_hunk_1
begin_hunk_2_@_ZN11duckdb_zstd29ZSTD_ldm_skipRawSeqStoreBytesEPNS_13rawSeqStore_tEm:bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load i64, ptr %i.f, align 8, !tbaa !37   ; 3 uses
  %.promoted = load i64, ptr %i.e, align 8, !tbaa !70 ; 4 uses
  %umax = tail call i64 @llvm.umax.i64(i64 %.promoted, i64 %i.g)
  %i.h = icmp ult i64 %.promoted, %i.g
  br i1 %i.h, label %.lr.ph43.preheader, label %.loopexit

end_hunk_2
begin_hunk_3_@_ZN11duckdb_zstd29ZSTD_ldm_skipRawSeqStoreBytesEPNS_13rawSeqStore_tEm:bb.a
  br label %.lr.ph43

bb.b:                                             ; preds = %bb.c
  %exitcond.not = icmp eq i64 %i.o, %umax
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph43

.lr.ph43:                                         ; preds = %.lr.ph43.preheader, %bb.b
  %.0182842 = phi i32 [ %i.n, %bb.b ], [ %i.d, %.lr.ph43.preheader ] ; 3 uses
end_hunk_3
begin_hunk_4_@_ZN11duckdb_zstd29ZSTD_ldm_skipRawSeqStoreBytesEPNS_13rawSeqStore_tEm:bb.a

bb.c:                                             ; preds = %.lr.ph43
  %i.n = sub nuw i32 %.0182842, %i.l              ; 2 uses
  %i.o = add i64 %i.j, 1                          ; 4 uses
  store i64 %i.o, ptr %i.e, align 8, !tbaa !70
  %.not = icmp eq i32 %i.n, 0
  br i1 %.not, label %.critedge, label %bb.b
end_hunk_4
begin_hunk_5_@_ZN11duckdb_zstd22ZSTD_ldm_blockCompressEPNS_13rawSeqStore_tEPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjNS_18ZSTD_paramSwitch_eEPKvm:bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.am = load i64, ptr %i.al, align 8, !tbaa !37 ; 3 uses
  %.promoted.i = load i64, ptr %i.ak, align 8, !tbaa !70 ; 3 uses
  %umax.i = tail call i64 @llvm.umax.i64(i64 %.promoted.i, i64 %i.am) ; 3 uses
  %i.an = icmp ult i64 %.promoted.i, %i.am
  br i1 %i.an, label %.lr.ph204.preheader, label %.loopexit.i

end_hunk_5
begin_hunk_6_@_ZN11duckdb_zstd22ZSTD_ldm_blockCompressEPNS_13rawSeqStore_tEPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjNS_18ZSTD_paramSwitch_eEPKvm:bb.a
  br label %.lr.ph204

bb.e:                                             ; preds = %bb.f
  %exitcond.not.i = icmp eq i64 %i.au, %umax.i
  br i1 %exitcond.not.i, label %.loopexit.i, label %.lr.ph204

.lr.ph204:                                        ; preds = %.lr.ph204.preheader, %bb.e
  %.01828.i203 = phi i32 [ %i.at, %bb.e ], [ %i.aj, %.lr.ph204.preheader ] ; 3 uses
end_hunk_6
begin_hunk_7_@_ZN11duckdb_zstd22ZSTD_ldm_blockCompressEPNS_13rawSeqStore_tEPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjNS_18ZSTD_paramSwitch_eEPKvm:bb.a

bb.f:                                             ; preds = %.lr.ph204
  %i.at = sub nuw i32 %.01828.i203, %i.ar         ; 2 uses
  %i.au = add i64 %i.ap, 1                        ; 3 uses
  store i64 %i.au, ptr %i.ak, align 8, !tbaa !70
  %.not.i80 = icmp eq i32 %i.at, 0
  br i1 %.not.i80, label %.critedge.i, label %bb.e

.loopexit.i:                                      ; preds = %bb.e, %.lr.ph.i, %.thread.i
  %i.av = phi i64 [ %i.ap, %.thread.i ], [ %umax.i, %.lr.ph.i ], [ %umax.i, %bb.e ]
  %i.aw = icmp eq i64 %i.av, %i.am
  br i1 %i.aw, label %.critedge.i, label %_ZN11duckdb_zstd29ZSTD_ldm_skipRawSeqStoreBytesEPNS_13rawSeqStore_tEm.exit

end_hunk_7
begin_hunk_8_@_ZN11duckdb_zstd22ZSTD_ldm_blockCompressEPNS_13rawSeqStore_tEPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjNS_18ZSTD_paramSwitch_eEPKvm:bb.a
  %.sroa.8.0.i = select i1 %.not22.i, i32 %i.bg, i32 %.sroa.8.0.copyload.i ; 5 uses
  %i.bi = and i1 %.not22.i, %i.bh
  %.sroa.010.sroa.0.0.i = select i1 %i.bi, i64 %.sroa.010.0.copyload.i, i64 0 ; 5 uses
  %.not53.i.i = icmp eq i32 %i.bb, 0
  %exitcond.not.i.i199 = icmp eq i64 %i.ay, %i.ax
  %or.cond223 = or i1 %.not53.i.i, %exitcond.not.i.i199
  br i1 %or.cond223, label %_ZN11duckdb_zstdL18maybeSplitSequenceEPNS_13rawSeqStore_tEjj.exit, label %.lr.ph201

.lr.ph201:                                        ; preds = %bb.i
  %i.bj = and i64 %i.ba, 4294967295
end_hunk_8
begin_hunk_9_@_ZN11duckdb_zstd22ZSTD_ldm_blockCompressEPNS_13rawSeqStore_tEPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjNS_18ZSTD_paramSwitch_eEPKvm:bb.a
bb.q:                                             ; preds = %bb.l
  %i.ce = sub nuw nsw i64 %i.br, %i.bu            ; 2 uses
  store i32 0, ptr %i.bs, align 4, !tbaa !65
  %i.cf = add i64 %i.bk, 1                        ; 3 uses
  store i64 %i.cf, ptr %i.o, align 8, !tbaa !70
  %.not.i.i = icmp eq i64 %i.ce, 0
  %exitcond.not.i.i = icmp eq i64 %i.cf, %i.ax
  %or.cond224 = or i1 %.not.i.i, %exitcond.not.i.i
  br i1 %or.cond224, label %_ZN11duckdb_zstdL18maybeSplitSequenceEPNS_13rawSeqStore_tEjj.exit, label %bb.j

_ZN11duckdb_zstdL18maybeSplitSequenceEPNS_13rawSeqStore_tEjj.exit: ; preds = %bb.q, %bb.h, %bb.i, %bb.k, %bb.m, %bb.p
  %.sroa.8.1.i = phi i32 [ %.sroa.8.0.copyload.i, %bb.h ], [ %.sroa.8.0.i, %bb.i ], [ %.sroa.8.0.i, %bb.p ], [ %.sroa.8.0.i, %bb.k ], [ %.sroa.8.0.i, %bb.m ], [ %.sroa.8.0.i, %bb.q ]
end_hunk_9
begin_hunk_10_@llvm.umax.i32
; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

end_hunk_10
