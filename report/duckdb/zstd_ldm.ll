Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/zstd_ldm?download=true
inline.NumInlined: 58
inline.NumDeleted: 29
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN11duckdb_zstd26ZSTD_ldm_generateSequencesEPNS_10ldmState_tEPNS_13rawSeqStore_tEPKNS_11ldmParams_tEPKvm:bb.a
  %.0913.i.i = phi ptr [ %i.jp, %bb.bg ], [ %i.ec, %bb.bf ]
  %.01012.i.i = phi ptr [ %i.jr, %bb.bg ], [ %i.ip, %bb.bf ]
  %i.jp = getelementptr inbounds i8, ptr %.0913.i.i, i64 -1 ; 3 uses
  %i.jq = load i8, ptr %i.jp, align 1, !tbaa !30
  %i.jr = getelementptr inbounds i8, ptr %.01012.i.i, i64 -1 ; 3 uses
  %i.js = load i8, ptr %i.jr, align 1, !tbaa !30
  %i.jt = icmp eq i8 %i.jq, %i.js
  br i1 %i.jt, label %bb.bg, label %_ZN11duckdb_zstdL28ZSTD_ldm_countBackwardsMatchEPKhS1_S1_S1_.exit.thread303.i

bb.bg:                                            ; preds = %.lr.ph.i270.i
  %i.ju = add i64 %.014.i.i, 1                    ; 2 uses
  %i.jv = icmp ugt ptr %i.jp, %.1237342.i
  %i.jw = icmp ugt ptr %i.jr, %i.cm
  %or.cond.i271.i = and i1 %i.jv, %i.jw
  br i1 %or.cond.i271.i, label %.lr.ph.i270.i, label %_ZN11duckdb_zstdL28ZSTD_ldm_countBackwardsMatchEPKhS1_S1_S1_.exit.thread303.i, !llvm.loop !60

_ZN11duckdb_zstdL28ZSTD_ldm_countBackwardsMatchEPKhS1_S1_S1_.exit.thread303.i: ; preds = %bb.bg, %.lr.ph.i270.i, %bb.bf
  %.2209.i = phi i64 [ 0, %bb.bf ], [ %.014.i.i, %.lr.ph.i270.i ], [ %i.ju, %bb.bg ] ; 2 uses
  %i.jx = add i64 %.2209.i, %.3.i.i               ; 2 uses
  %i.jy = icmp ugt i64 %i.jx, %.0215333.i
  br i1 %i.jy, label %bb.bh, label %_ZN11duckdb_zstdL38ZSTD_ldm_countBackwardsMatch_2segmentsEPKhS1_S1_S1_S1_S1_.exit.thread.i

bb.bh:                                            ; preds = %_ZN11duckdb_zstdL28ZSTD_ldm_countBackwardsMatchEPKhS1_S1_S1_.exit.thread303.i
  br label %_ZN11duckdb_zstdL38ZSTD_ldm_countBackwardsMatch_2segmentsEPKhS1_S1_S1_S1_S1_.exit.thread.i

_ZN11duckdb_zstdL38ZSTD_ldm_countBackwardsMatch_2segmentsEPKhS1_S1_S1_S1_S1_.exit.thread.i: ; preds = %bb.bh, %_ZN11duckdb_zstdL28ZSTD_ldm_countBackwardsMatchEPKhS1_S1_S1_.exit.thread303.i, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.i, %bb.as, %.lr.ph336.split.i
  %.2223.i = phi i64 [ %.0221331.i, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.i ], [ %.0221331.i, %.lr.ph336.split.i ], [ %.0221331.i, %_ZN11duckdb_zstdL28ZSTD_ldm_countBackwardsMatchEPKhS1_S1_S1_.exit.thread303.i ], [ %.0221331.i, %bb.as ], [ %.3.i.i, %bb.bh ] ; 2 uses
  %.2220.i = phi i64 [ %.0218332.i, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.i ], [ %.0218332.i, %.lr.ph336.split.i ], [ %.0218332.i, %_ZN11duckdb_zstdL28ZSTD_ldm_countBackwardsMatchEPKhS1_S1_S1_.exit.thread303.i ], [ %.0218332.i, %bb.as ], [ %.2209.i, %bb.bh ] ; 2 uses
  %.2217.i = phi i64 [ %.0215333.i, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.i ], [ %.0215333.i, %.lr.ph336.split.i ], [ %.0215333.i, %_ZN11duckdb_zstdL28ZSTD_ldm_countBackwardsMatchEPKhS1_S1_S1_.exit.thread303.i ], [ %.0215333.i, %bb.as ], [ %i.jx, %bb.bh ]
  %.2213.i = phi ptr [ %.0211335.i, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.i ], [ %.0211335.i, %.lr.ph336.split.i ], [ %.0211335.i, %_ZN11duckdb_zstdL28ZSTD_ldm_countBackwardsMatchEPKhS1_S1_S1_.exit.thread303.i ], [ %.0211335.i, %bb.as ], [ %.0214334.i, %bb.bh ] ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %.0214334.i, i64 8 ; 2 uses
  %i.ka = icmp ult ptr %i.jz, %i.en
  br i1 %i.ka, label %.lr.ph336.split.i, label %._crit_edge.i, !llvm.loop !61

._crit_edge.i:                                    ; preds = %_ZN11duckdb_zstdL38ZSTD_ldm_countBackwardsMatch_2segmentsEPKhS1_S1_S1_S1_S1_.exit.thread.i, %_ZN11duckdb_zstdL38ZSTD_ldm_countBackwardsMatch_2segmentsEPKhS1_S1_S1_S1_S1_.exit.thread.us.i
  %.0221.lcssa.i = phi i64 [ %.2223.us.i, %_ZN11duckdb_zstdL38ZSTD_ldm_countBackwardsMatch_2segmentsEPKhS1_S1_S1_S1_S1_.exit.thread.us.i ], [ %.2223.i, %_ZN11duckdb_zstdL38ZSTD_ldm_countBackwardsMatch_2segmentsEPKhS1_S1_S1_S1_S1_.exit.thread.i ] ; 2 uses
  %.0218.lcssa.i = phi i64 [ %.2220.us.i, %_ZN11duckdb_zstdL38ZSTD_ldm_countBackwardsMatch_2segmentsEPKhS1_S1_S1_S1_S1_.exit.thread.us.i ], [ %.2220.i, %_ZN11duckdb_zstdL38ZSTD_ldm_countBackwardsMatch_2segmentsEPKhS1_S1_S1_S1_S1_.exit.thread.i ] ; 2 uses
  %.0211.lcssa.i = phi ptr [ %.2213.us.i, %_ZN11duckdb_zstdL38ZSTD_ldm_countBackwardsMatch_2segmentsEPKhS1_S1_S1_S1_S1_.exit.thread.us.i ], [ %.2213.i, %_ZN11duckdb_zstdL38ZSTD_ldm_countBackwardsMatch_2segmentsEPKhS1_S1_S1_S1_S1_.exit.thread.i ] ; 2 uses
  %i.kb = icmp eq ptr %.0211.lcssa.i, null
  br i1 %i.kb, label %.sink.split.i, label %bb.bi

bb.bi:                                            ; preds = %._crit_edge.i
  %i.kc = load i64, ptr %i.k, align 8, !tbaa !37  ; 3 uses
  %i.kd = load i64, ptr %i.l, align 8, !tbaa !39
  %.not248.i = icmp eq i64 %i.kc, %i.kd
  br i1 %.not248.i, label %_ZN11duckdb_zstdL35ZSTD_ldm_generateSequences_internalEPNS_10ldmState_tEPNS_13rawSeqStore_tEPKNS_11ldmParams_tEPKvm.exit.thread72, label %bb.bj

_ZN11duckdb_zstdL35ZSTD_ldm_generateSequences_internalEPNS_10ldmState_tEPNS_13rawSeqStore_tEPKNS_11ldmParams_tEPKvm.exit.thread72: ; preds = %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  br label %.critedge

bb.bj:                                            ; preds = %bb.bi
  %i.ke = load ptr, ptr %1, align 8, !tbaa !62
  %i.kf = getelementptr inbounds nuw [12 x i8], ptr %i.ke, i64 %i.kc ; 3 uses
  %i.kg = add i64 %.0218.lcssa.i, %.0221.lcssa.i
  %i.kh = load i32, ptr %.0211.lcssa.i, align 4, !tbaa !46
  %i.ki = sub i32 %i.ej, %i.kh
  %i.kj = sub i64 0, %.0218.lcssa.i
  %i.kk = getelementptr inbounds i8, ptr %i.ec, i64 %i.kj
  %i.kl = ptrtoint ptr %i.kk to i64
  %i.km = ptrtoint ptr %.1237342.i to i64
  %i.kn = sub i64 %i.kl, %i.km
  %i.ko = trunc i64 %i.kn to i32
  %i.kp = getelementptr inbounds nuw i8, ptr %i.kf, i64 4
  store i32 %i.ko, ptr %i.kp, align 4, !tbaa !63
  %i.kq = trunc i64 %i.kg to i32
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kf, i64 8
  store i32 %i.kq, ptr %i.kr, align 4, !tbaa !65
  store i32 %i.ki, ptr %i.kf, align 4, !tbaa !66
  %i.ks = add i64 %i.kc, 1
  store i64 %i.ks, ptr %i.k, align 8, !tbaa !37
  %i.kt = zext i32 %i.eg to i64                   ; 2 uses
  %.sroa.6.0.insert.ext.i = zext i32 %i.ee to i64
  %.sroa.6.0.insert.shift.i = shl nuw i64 %.sroa.6.0.insert.ext.i, 32
  %.sroa.022.0.insert.ext.i = and i64 %i.ei, 4294967295
  %.sroa.022.0.insert.insert.i = or disjoint i64 %.sroa.6.0.insert.shift.i, %.sroa.022.0.insert.ext.i
  %.sroa.2299.0.copyload.i = load i32, ptr %i.t, align 4, !tbaa !3 ; 2 uses
  %.val256.i = load ptr, ptr %i.r, align 8, !tbaa !28
  %.val257.i = load ptr, ptr %i.y, align 8, !tbaa !29
  %i.ku = getelementptr inbounds nuw i8, ptr %.val257.i, i64 %i.kt ; 2 uses
  %i.kv = load i8, ptr %i.ku, align 1, !tbaa !30  ; 2 uses
  %i.kw = zext i8 %i.kv to i32
  %i.kx = zext nneg i32 %.sroa.2299.0.copyload.i to i64
  %i.ky = shl i64 %i.kt, %i.kx
  %i.kz = getelementptr inbounds nuw [8 x i8], ptr %.val256.i, i64 %i.ky
  %i.la = zext i8 %i.kv to i64
  %i.lb = getelementptr inbounds nuw [8 x i8], ptr %i.kz, i64 %i.la
  store i64 %.sroa.022.0.insert.insert.i, ptr %i.lb, align 4
  %i.lc = add nuw nsw i32 %i.kw, 1
  %notmask.i277.i = shl nsw i32 -1, %.sroa.2299.0.copyload.i
  %i.ld = xor i32 %notmask.i277.i, -1
  %i.le = and i32 %i.lc, %i.ld
  %i.lf = trunc i32 %i.le to i8
  store i8 %i.lf, ptr %i.ku, align 1, !tbaa !30
  %i.lg = getelementptr inbounds nuw i8, ptr %i.ec, i64 %.0221.lcssa.i ; 4 uses
  %i.lh = icmp ugt ptr %i.lg, %i.dl
  br i1 %i.lh, label %.critedge.i, label %bb.bk

.critedge.i:                                      ; preds = %bb.bj
  %i.li = sub i64 0, %i.dj
  %i.lj = getelementptr inbounds i8, ptr %i.lg, i64 %i.li
  br label %.loopexit.i

.sink.split.i:                                    ; preds = %._crit_edge.i, %bb.n
  %i.lk = zext i32 %i.eg to i64                   ; 2 uses
  %.sroa.6.0.insert.ext33.i = zext i32 %i.ee to i64
  %.sroa.6.0.insert.shift34.i = shl nuw i64 %.sroa.6.0.insert.ext33.i, 32
  %.sroa.022.0.insert.ext26.i = and i64 %i.ei, 4294967295
  %.sroa.022.0.insert.insert28.i = or disjoint i64 %.sroa.6.0.insert.shift34.i, %.sroa.022.0.insert.ext26.i
  %.sroa.2287.0.copyload.i = load i32, ptr %i.t, align 4, !tbaa !3 ; 2 uses
  %.val260.i = load ptr, ptr %i.r, align 8, !tbaa !28
  %.val261.i = load ptr, ptr %i.y, align 8, !tbaa !29
  %i.ll = getelementptr inbounds nuw i8, ptr %.val261.i, i64 %i.lk ; 2 uses
  %i.lm = load i8, ptr %i.ll, align 1, !tbaa !30  ; 2 uses
  %i.ln = zext i8 %i.lm to i32
  %i.lo = zext nneg i32 %.sroa.2287.0.copyload.i to i64
  %i.lp = shl i64 %i.lk, %i.lo
  %i.lq = getelementptr inbounds nuw [8 x i8], ptr %.val260.i, i64 %i.lp
  %i.lr = zext i8 %i.lm to i64
  %i.ls = getelementptr inbounds nuw [8 x i8], ptr %i.lq, i64 %i.lr
  store i64 %.sroa.022.0.insert.insert28.i, ptr %i.ls, align 4
  %i.lt = add nuw nsw i32 %i.ln, 1
  %notmask.i.i = shl nsw i32 -1, %.sroa.2287.0.copyload.i
  %i.lu = xor i32 %notmask.i.i, -1
  %i.lv = and i32 %i.lt, %i.lu
  %i.lw = trunc i32 %i.lv to i8
  store i8 %i.lw, ptr %i.ll, align 1, !tbaa !30
  br label %bb.bk

bb.bk:                                            ; preds = %.sink.split.i, %bb.bj
  %.2238.ph.i = phi ptr [ %i.lg, %bb.bj ], [ %.1237342.i, %.sink.split.i ] ; 2 uses
  %indvars.iv.next362.i = add nuw nsw i64 %indvars.iv361.i, 1 ; 2 uses
  %exitcond365.not.i = icmp eq i64 %indvars.iv.next362.i, %wide.trip.count.i63
  br i1 %exitcond365.not.i, label %.loopexit.i, label %bb.n, !llvm.loop !67

.loopexit.i:                                      ; preds = %bb.bk, %.critedge.i, %bb.l
  %.3239.i = phi ptr [ %i.lg, %.critedge.i ], [ %.0236347.i, %bb.l ], [ %.2238.ph.i, %bb.bk ] ; 2 uses
  %.3234.i = phi ptr [ %i.lj, %.critedge.i ], [ %.0231348.i, %bb.l ], [ %.0231348.i, %bb.bk ]
  %i.lx = getelementptr inbounds nuw i8, ptr %.3234.i, i64 %i.dj ; 2 uses
  %i.ly = icmp ult ptr %i.lx, %i.co
  br i1 %i.ly, label %bb.l, label %_ZN11duckdb_zstdL35ZSTD_ldm_generateSequences_internalEPNS_10ldmState_tEPNS_13rawSeqStore_tEPKNS_11ldmParams_tEPKvm.exit.loopexit, !llvm.loop !68

_ZN11duckdb_zstdL35ZSTD_ldm_generateSequences_internalEPNS_10ldmState_tEPNS_13rawSeqStore_tEPKNS_11ldmParams_tEPKvm.exit.loopexit: ; preds = %.loopexit.i
  %.pre110 = ptrtoint ptr %.3239.i to i64
  %.pre112 = sub i64 %i.ai, %.pre110
  br label %_ZN11duckdb_zstdL35ZSTD_ldm_generateSequences_internalEPNS_10ldmState_tEPNS_13rawSeqStore_tEPKNS_11ldmParams_tEPKvm.exit

_ZN11duckdb_zstdL35ZSTD_ldm_generateSequences_internalEPNS_10ldmState_tEPNS_13rawSeqStore_tEPKNS_11ldmParams_tEPKvm.exit: ; preds = %_ZN11duckdb_zstdL35ZSTD_ldm_generateSequences_internalEPNS_10ldmState_tEPNS_13rawSeqStore_tEPKNS_11ldmParams_tEPKvm.exit.loopexit, %_ZN11duckdb_zstdL19ZSTD_ldm_gear_resetEPNS_21ldmRollingHashState_tEPKhm.exit.i
  %.pre-phi113 = phi i64 [ %.pre112, %_ZN11duckdb_zstdL35ZSTD_ldm_generateSequences_internalEPNS_10ldmState_tEPNS_13rawSeqStore_tEPKNS_11ldmParams_tEPKvm.exit.loopexit ], [ %i.aj, %_ZN11duckdb_zstdL19ZSTD_ldm_gear_resetEPNS_21ldmRollingHashState_tEPKhm.exit.i ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  %i.lz = icmp ult i64 %.pre-phi113, -119
  br i1 %i.lz, label %_ZN11duckdb_zstdL35ZSTD_ldm_generateSequences_internalEPNS_10ldmState_tEPNS_13rawSeqStore_tEPKNS_11ldmParams_tEPKvm.exit._crit_edge, label %.critedge

_ZN11duckdb_zstdL35ZSTD_ldm_generateSequences_internalEPNS_10ldmState_tEPNS_13rawSeqStore_tEPKNS_11ldmParams_tEPKvm.exit._crit_edge: ; preds = %_ZN11duckdb_zstdL35ZSTD_ldm_generateSequences_internalEPNS_10ldmState_tEPNS_13rawSeqStore_tEPKNS_11ldmParams_tEPKvm.exit
  %.pre104 = load i64, ptr %i.k, align 8, !tbaa !37
  br label %bb.bl

bb.bl:                                            ; preds = %_ZN11duckdb_zstdL35ZSTD_ldm_generateSequences_internalEPNS_10ldmState_tEPNS_13rawSeqStore_tEPKNS_11ldmParams_tEPKvm.exit._crit_edge, %_ZN11duckdb_zstdL35ZSTD_ldm_generateSequences_internalEPNS_10ldmState_tEPNS_13rawSeqStore_tEPKNS_11ldmParams_tEPKvm.exit.thread
  %i.ma = phi i64 [ %i.z, %_ZN11duckdb_zstdL35ZSTD_ldm_generateSequences_internalEPNS_10ldmState_tEPNS_13rawSeqStore_tEPKNS_11ldmParams_tEPKvm.exit.thread ], [ %.pre104, %_ZN11duckdb_zstdL35ZSTD_ldm_generateSequences_internalEPNS_10ldmState_tEPNS_13rawSeqStore_tEPKNS_11ldmParams_tEPKvm.exit._crit_edge ] ; 2 uses
  %.6.i69 = phi i64 [ %i.aj, %_ZN11duckdb_zstdL35ZSTD_ldm_generateSequences_internalEPNS_10ldmState_tEPNS_13rawSeqStore_tEPKNS_11ldmParams_tEPKvm.exit.thread ], [ %.pre-phi113, %_ZN11duckdb_zstdL35ZSTD_ldm_generateSequences_internalEPNS_10ldmState_tEPNS_13rawSeqStore_tEPKNS_11ldmParams_tEPKvm.exit._crit_edge ]
  %i.mb = icmp ult i64 %i.z, %i.ma
  br i1 %i.mb, label %bb.bm, label %.split

.split:                                           ; preds = %bb.bl
  %i.mc = add i64 %i.aj, %.05588
  br label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.md = trunc i64 %.05588 to i32
  %i.me = load ptr, ptr %1, align 8, !tbaa !62
  %i.mf = getelementptr inbounds nuw [12 x i8], ptr %i.me, i64 %i.z
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 4 ; 2 uses
  %i.mh = load i32, ptr %i.mg, align 4, !tbaa !63
  %i.mi = add i32 %i.mh, %i.md
  store i32 %i.mi, ptr %i.mg, align 4, !tbaa !63
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %.split
  %.25778 = phi i64 [ %i.mc, %.split ], [ %.6.i69, %bb.bm ]
  %i.mj = add nuw nsw i64 %.05887, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.mj, %i.j
  br i1 %exitcond.not, label %.critedge, label %bb.b, !llvm.loop !69

.critedge:                                        ; preds = %bb.bn, %bb.b, %_ZN11duckdb_zstdL35ZSTD_ldm_generateSequences_internalEPNS_10ldmState_tEPNS_13rawSeqStore_tEPKNS_11ldmParams_tEPKvm.exit, %bb.a, %_ZN11duckdb_zstdL35ZSTD_ldm_generateSequences_internalEPNS_10ldmState_tEPNS_13rawSeqStore_tEPKNS_11ldmParams_tEPKvm.exit.thread72
  %.2 = phi i64 [ -70, %_ZN11duckdb_zstdL35ZSTD_ldm_generateSequences_internalEPNS_10ldmState_tEPNS_13rawSeqStore_tEPKNS_11ldmParams_tEPKvm.exit.thread72 ], [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %bb.bn ], [ %.pre-phi113, %_ZN11duckdb_zstdL35ZSTD_ldm_generateSequences_internalEPNS_10ldmState_tEPNS_13rawSeqStore_tEPKNS_11ldmParams_tEPKvm.exit ]
  ret i64 %.2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN11duckdb_zstd22ZSTD_ldm_skipSequencesEPNS_13rawSeqStore_tEmj(ptr nofree noundef captures(none) %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #6 {
bb.a:
  %.not53 = icmp eq i64 %1, 0
  br i1 %.not53, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i64, ptr %i.b, align 8, !tbaa !37   ; 3 uses
  %.promoted = load i64, ptr %i.a, align 8, !tbaa !70 ; 2 uses
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
  %i.z = add nuw i64 %i.e, 1                      ; 3 uses
  store i64 %i.z, ptr %i.a, align 8, !tbaa !70
  %.not = icmp ne i64 %i.y, 0
  %3 = icmp ult i64 %i.z, %i.c
  %or.cond = select i1 %.not, i1 %3, i1 false
  br i1 %or.cond, label %.lr.ph103, label %.critedge

.critedge:                                        ; preds = %bb.h, %.lr.ph, %bb.a, %bb.d, %bb.g, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN11duckdb_zstd29ZSTD_ldm_skipRawSeqStoreBytesEPNS_13rawSeqStore_tEm(ptr nofree noundef captures(none) %0, i64 noundef %1) local_unnamed_addr #7 {
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
  %i.m = load i32, ptr %i.c, align 8, !tbaa !73
  %i.n = icmp sgt i32 %i.m, 6
  br i1 %i.n, label %bb.d, label %.preheader

.preheader:                                       ; preds = %_ZN11duckdb_zstdL24ZSTD_matchState_dictModeEPKNS_17ZSTD_matchState_tE.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
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
  %exitcond.not.i202.not = icmp ult i64 %.promoted.i, %i.am
  br i1 %exitcond.not.i202.not, label %.lr.ph204.preheader, label %.loopexit.i

.lr.ph204.preheader:                              ; preds = %.lr.ph.i
  %i.an = load ptr, ptr %0, align 8, !tbaa !62
  br label %.lr.ph204

bb.e:                                             ; preds = %bb.f
  %exitcond.not.i = icmp eq i64 %i.at, %umax.i
  br i1 %exitcond.not.i, label %.loopexit.i, label %.lr.ph204

.lr.ph204:                                        ; preds = %.lr.ph204.preheader, %bb.e
  %.01828.i203 = phi i32 [ %i.as, %bb.e ], [ %i.aj, %.lr.ph204.preheader ] ; 3 uses
  %i.ao = phi i64 [ %i.at, %bb.e ], [ %.promoted.i, %.lr.ph204.preheader ] ; 3 uses
  %i.ap = getelementptr inbounds nuw [12 x i8], ptr %i.an, i64 %i.ao ; 2 uses
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  %.sroa.3.0.copyload.i = load i32, ptr %.sroa.3.0..sroa_idx.i, align 4, !tbaa !3
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %.sroa.5.0.copyload.i = load i32, ptr %.sroa.5.0..sroa_idx.i, align 4, !tbaa !3
  %i.aq = add i32 %.sroa.5.0.copyload.i, %.sroa.3.0.copyload.i ; 2 uses
  %.not21.i = icmp ult i32 %.01828.i203, %i.aq
  br i1 %.not21.i, label %.thread.i, label %bb.f

.thread.i:                                        ; preds = %.lr.ph204
  %i.ar = zext i32 %.01828.i203 to i64
  store i64 %i.ar, ptr %i.ag, align 8, !tbaa !71
  br label %.loopexit.i

bb.f:                                             ; preds = %.lr.ph204
  %i.as = sub nuw i32 %.01828.i203, %i.aq         ; 2 uses
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

bb.g:                                             ; preds = %.lr.ph, %bb.ag
  %i.aw = phi i64 [ %i.r, %.lr.ph ], [ %i.gm, %bb.ag ] ; 3 uses
  %i.ax = phi i64 [ %i.q, %.lr.ph ], [ %i.gl, %bb.ag ] ; 4 uses
  %.075112 = phi ptr [ %5, %.lr.ph ], [ %i.gk, %bb.ag ] ; 6 uses
  %i.ay = ptrtoint ptr %.075112 to i64            ; 5 uses
  %i.az = sub i64 %i.v, %i.ay                     ; 2 uses
  %i.ba = trunc i64 %i.az to i32                  ; 4 uses
  %i.bb = load ptr, ptr %0, align 8, !tbaa !62    ; 2 uses
  %i.bc = getelementptr inbounds nuw [12 x i8], ptr %i.bb, i64 %i.ax ; 2 uses
  %.sroa.010.0.copyload.i = load i64, ptr %i.bc, align 4 ; 3 uses
  %.sroa.010.sroa.4.0.extract.shift.i = lshr i64 %.sroa.010.0.copyload.i, 32 ; 6 uses
  %.sroa.010.sroa.4.0.extract.trunc.i = trunc nuw i64 %.sroa.010.sroa.4.0.extract.shift.i to i32 ; 3 uses
end_hunk_0
