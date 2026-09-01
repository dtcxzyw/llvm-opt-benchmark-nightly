Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abseil-cpp/original/raw_hash_set?download=true
inline.NumInlined: 959
inline.NumDeleted: 317
begin_hunk_0_@_ZN4absl12lts_2026052618container_internal34ResizeAllocatedTableWithSeedChangeERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEm:_ZN4absl12lts_2026052618container_internal12CommonFields5infozEv.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ao, i8 -128, i64 %i.bg, i1 false), !noalias !77
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ba
  store i8 -1, ptr %i.bh, align 1, !tbaa !34, !noalias !77
  %.sroa.0.0.copyload.i.i.i40.pre.i = load ptr, ptr %i.e, align 8, !tbaa !10, !noalias !86
  br label %_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_19ResetCtrlERNS1_12CommonFieldsEm.exit.i

_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_19ResetCtrlERNS1_12CommonFieldsEm.exit.i: ; preds = %bb.h, %bb.d
  %.sroa.0.0.copyload.i.i.i40.i = phi ptr [ %i.ap, %bb.d ], [ %.sroa.0.0.copyload.i.i.i40.pre.i, %bb.h ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !89)
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !31, !alias.scope !86
  %i.bk = tail call noundef ptr %i.bj(ptr noundef nonnull align 8 dereferenceable(24) %0), !noalias !86, !inline_history !90 ; 2 uses
  %i.bl = load i64, ptr %0, align 8, !noalias !86 ; 2 uses
  %i.bm = lshr i64 %i.bl, 8
  %i.bn = and i64 %i.bm, 255                      ; 2 uses
  br i1 %i.d, label %bb.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_19ResetCtrlERNS1_12CommonFieldsEm.exit.i
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bq = load ptr, ptr %i.bo, align 8, !alias.scope !77
  %i.br = load ptr, ptr %i.bp, align 8, !alias.scope !77
  br label %bb.m

bb.i:                                             ; preds = %_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_19ResetCtrlERNS1_12CommonFieldsEm.exit.i
  %.mask.i.i = and i64 %i.bl, -131072
  %i.bs = icmp eq i64 %.mask.i.i, 131072
  br i1 %i.bs, label %bb.j, label %_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_132FindNewPositionsAndTransferSlotsERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEPNS1_6ctrl_tEPvm.exit.i

bb.j:                                             ; preds = %bb.i
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !30, !alias.scope !86
  %i.bv = tail call noundef i64 %i.bu(ptr noundef %i.bk, ptr noundef %.sroa.0.0.copyload.i.i38.i, i64 noundef %i.bn), !noalias !86, !inline_history !91 ; 2 uses
  %i.bw = load i64, ptr %0, align 8, !noalias !86 ; 2 uses
  %i.bx = and i64 %i.bw, 254
  %i.by = icmp eq i64 %i.bx, 0
  br i1 %i.by, label %"_ZZN4absl12lts_2026052618container_internal12_GLOBAL__N_132FindNewPositionsAndTransferSlotsERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEPNS1_6ctrl_tEPvmENK3$_0clESA_.exit.i.i", label %bb.k

bb.k:                                             ; preds = %bb.j
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.c, align 8, !tbaa !10, !noalias !86 ; 4 uses
  %i.bz = and i64 %i.bw, 255
  %notmask.i.i.i.i.i.i.i = shl nsw i64 -1, %i.bz
  %i.ca = xor i64 %notmask.i.i.i.i.i.i.i, -1      ; 3 uses
  %i.cb = and i64 %i.bv, %i.ca                    ; 4 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 %i.cb ; 2 uses
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !34, !noalias !86
  %i.ce = icmp slt i8 %i.cd, -1
  br i1 %i.ce, label %_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_119find_first_non_fullERKNS1_12CommonFieldsEm.exit.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cf = load <16 x i8>, ptr %i.cc, align 1, !tbaa !10, !noalias !86
  %i.cg = icmp slt <16 x i8> %i.cf, splat (i8 -1)
  %i.ch = bitcast <16 x i1> %i.cg to i16
  %i.ci = zext i16 %i.ch to i32
  %i.cj = tail call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.ci) #25, !srcloc !11 ; 2 uses
  %.not5.i.i.i.i.i.i = icmp eq i32 %i.cj, 0
  br i1 %.not5.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, label %_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_131probe_till_first_non_full_groupEPKNS1_6ctrl_tERNS1_9probe_seqILm16EEEm.exit.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.l, %.lr.ph.i.i.i.i.i.i
  %i.ck = phi i64 [ %i.cm, %.lr.ph.i.i.i.i.i.i ], [ 0, %bb.l ]
  %i.cl = phi i64 [ %i.co, %.lr.ph.i.i.i.i.i.i ], [ %i.cb, %bb.l ]
  %i.cm = add i64 %i.ck, 16                       ; 2 uses
  %i.cn = add i64 %i.cm, %i.cl
  %i.co = and i64 %i.cn, %i.ca                    ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 %i.co
  %i.cq = load <16 x i8>, ptr %i.cp, align 1, !tbaa !10, !noalias !86
  %i.cr = icmp slt <16 x i8> %i.cq, splat (i8 -1)
  %i.cs = bitcast <16 x i1> %i.cr to i16
  %i.ct = zext i16 %i.cs to i32
  %i.cu = tail call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.ct) #25, !srcloc !11 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.cu, 0
  br i1 %.not.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, label %_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_131probe_till_first_non_full_groupEPKNS1_6ctrl_tERNS1_9probe_seqILm16EEEm.exit.i.i.i.i.i

_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_131probe_till_first_non_full_groupEPKNS1_6ctrl_tERNS1_9probe_seqILm16EEEm.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %bb.l
  %.sroa.56.0.i.i.i.i.i = phi i64 [ %i.cb, %bb.l ], [ %i.co, %.lr.ph.i.i.i.i.i.i ]
  %.lcssa.i.i.i.i.i.i = phi i32 [ %i.cj, %bb.l ], [ %i.cu, %.lr.ph.i.i.i.i.i.i ]
  %i.cv = tail call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.lcssa.i.i.i.i.i.i, i1 true)
  %i.cw = zext nneg i32 %i.cv to i64
  %i.cx = add nuw i64 %.sroa.56.0.i.i.i.i.i, %i.cw
  %i.cy = and i64 %i.cx, %i.ca
  br label %_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_119find_first_non_fullERKNS1_12CommonFieldsEm.exit.i.i.i

_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_119find_first_non_fullERKNS1_12CommonFieldsEm.exit.i.i.i: ; preds = %_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_131probe_till_first_non_full_groupEPKNS1_6ctrl_tERNS1_9probe_seqILm16EEEm.exit.i.i.i.i.i, %bb.k
  %.sroa.02.0.i.i.i.i.i = phi i64 [ %i.cy, %_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_131probe_till_first_non_full_groupEPKNS1_6ctrl_tERNS1_9probe_seqILm16EEEm.exit.i.i.i.i.i ], [ %i.cb, %bb.k ] ; 3 uses
  %i.cz = lshr i64 %i.bv, 57
  %i.da = trunc nuw nsw i64 %i.cz to i8           ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 %.sroa.02.0.i.i.i.i.i
  store i8 %i.da, ptr %i.db, align 1, !tbaa !34, !noalias !86
  %i.dc = add nuw i64 %.sroa.02.0.i.i.i.i.i, 9223372036854775793
  %i.dd = load i64, ptr %0, align 8, !noalias !86
  %i.de = and i64 %i.dd, 255
  %notmask.i.i.i.i8.i.i.i = shl nsw i64 -1, %i.de
  %i.df = xor i64 %notmask.i.i.i.i8.i.i.i, -1     ; 2 uses
  %i.dg = and i64 %i.dc, %i.df
  %i.dh = and i64 %i.df, 15
  %i.di = getelementptr i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 %i.dg
  %i.dj = getelementptr i8, ptr %i.di, i64 %i.dh
  store i8 %i.da, ptr %i.dj, align 1, !tbaa !34, !noalias !86
  %i.dk = mul i64 %.sroa.02.0.i.i.i.i.i, %i.h
  br label %"_ZZN4absl12lts_2026052618container_internal12_GLOBAL__N_132FindNewPositionsAndTransferSlotsERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEPNS1_6ctrl_tEPvmENK3$_0clESA_.exit.i.i"

"_ZZN4absl12lts_2026052618container_internal12_GLOBAL__N_132FindNewPositionsAndTransferSlotsERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEPNS1_6ctrl_tEPvmENK3$_0clESA_.exit.i.i": ; preds = %_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_119find_first_non_fullERKNS1_12CommonFieldsEm.exit.i.i.i, %bb.j
  %.sroa.03.0.i.i.i = phi i64 [ %i.dk, %_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_119find_first_non_fullERKNS1_12CommonFieldsEm.exit.i.i.i ], [ 0, %bb.j ]
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !33, !alias.scope !86
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i40.i, i64 %.sroa.03.0.i.i.i
  tail call void %i.dm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %i.dn, ptr noundef %.sroa.0.0.copyload.i.i38.i, i64 noundef 1), !noalias !86, !inline_history !91
  br label %_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_132FindNewPositionsAndTransferSlotsERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEPNS1_6ctrl_tEPvm.exit.i

bb.m:                                             ; preds = %bb.q, %.preheader.i.i
  %.060.i.i = phi i64 [ 0, %.preheader.i.i ], [ %i.fl, %bb.q ] ; 2 uses
  %.02158.i.i = phi ptr [ %.sroa.0.0.copyload.i.i38.i, %.preheader.i.i ], [ %i.fk, %bb.q ] ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.pre, i64 %.060.i.i
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !34, !noalias !86
  %i.dq = icmp sgt i8 %i.dp, -1
  br i1 %i.dq, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.dr = tail call noundef i64 %i.bq(ptr noundef %i.bk, ptr noundef %.02158.i.i, i64 noundef %i.bn), !noalias !86, !inline_history !91 ; 2 uses
  %i.ds = load i64, ptr %0, align 8, !noalias !86 ; 2 uses
  %i.dt = and i64 %i.ds, 254
  %i.du = icmp eq i64 %i.dt, 0
  br i1 %i.du, label %"_ZZN4absl12lts_2026052618container_internal12_GLOBAL__N_132FindNewPositionsAndTransferSlotsERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEPNS1_6ctrl_tEPvmENK3$_0clESA_.exit37.i.i", label %bb.o

bb.o:                                             ; preds = %bb.n
  %.sroa.0.0.copyload.i.i.i.i22.i.i = load ptr, ptr %i.c, align 8, !tbaa !10, !noalias !86 ; 4 uses
  %i.dv = and i64 %i.ds, 255
  %notmask.i.i.i.i.i23.i.i = shl nsw i64 -1, %i.dv
  %i.dw = xor i64 %notmask.i.i.i.i.i23.i.i, -1    ; 3 uses
  %i.dx = and i64 %i.dr, %i.dw                    ; 4 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i22.i.i, i64 %i.dx ; 2 uses
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !34, !noalias !86
  %i.ea = icmp slt i8 %i.dz, -1
  br i1 %i.ea, label %_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_119find_first_non_fullERKNS1_12CommonFieldsEm.exit.i29.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.eb = load <16 x i8>, ptr %i.dy, align 1, !tbaa !10, !noalias !86
  %i.ec = icmp slt <16 x i8> %i.eb, splat (i8 -1)
  %i.ed = bitcast <16 x i1> %i.ec to i16
  %i.ee = zext i16 %i.ed to i32
  %i.ef = tail call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.ee) #25, !srcloc !11 ; 2 uses
  %.not5.i.i.i.i24.i.i = icmp eq i32 %i.ef, 0
  br i1 %.not5.i.i.i.i24.i.i, label %.lr.ph.i.i.i.i35.i.i, label %_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_131probe_till_first_non_full_groupEPKNS1_6ctrl_tERNS1_9probe_seqILm16EEEm.exit.i.i.i25.i.i

.lr.ph.i.i.i.i35.i.i:                             ; preds = %bb.p, %.lr.ph.i.i.i.i35.i.i
  %i.eg = phi i64 [ %i.ei, %.lr.ph.i.i.i.i35.i.i ], [ 0, %bb.p ]
  %i.eh = phi i64 [ %i.ek, %.lr.ph.i.i.i.i35.i.i ], [ %i.dx, %bb.p ]
  %i.ei = add i64 %i.eg, 16                       ; 2 uses
  %i.ej = add i64 %i.ei, %i.eh
  %i.ek = and i64 %i.ej, %i.dw                    ; 3 uses
  %i.el = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i22.i.i, i64 %i.ek
  %i.em = load <16 x i8>, ptr %i.el, align 1, !tbaa !10, !noalias !86
  %i.en = icmp slt <16 x i8> %i.em, splat (i8 -1)
  %i.eo = bitcast <16 x i1> %i.en to i16
  %i.ep = zext i16 %i.eo to i32
  %i.eq = tail call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.ep) #25, !srcloc !11 ; 2 uses
  %.not.i.i.i.i36.i.i = icmp eq i32 %i.eq, 0
  br i1 %.not.i.i.i.i36.i.i, label %.lr.ph.i.i.i.i35.i.i, label %_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_131probe_till_first_non_full_groupEPKNS1_6ctrl_tERNS1_9probe_seqILm16EEEm.exit.i.i.i25.i.i

_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_131probe_till_first_non_full_groupEPKNS1_6ctrl_tERNS1_9probe_seqILm16EEEm.exit.i.i.i25.i.i: ; preds = %.lr.ph.i.i.i.i35.i.i, %bb.p
  %.sroa.56.0.i.i.i26.i.i = phi i64 [ %i.dx, %bb.p ], [ %i.ek, %.lr.ph.i.i.i.i35.i.i ]
  %.lcssa.i.i.i.i28.i.i = phi i32 [ %i.ef, %bb.p ], [ %i.eq, %.lr.ph.i.i.i.i35.i.i ]
  %i.er = tail call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.lcssa.i.i.i.i28.i.i, i1 true)
  %i.es = zext nneg i32 %i.er to i64
  %i.et = add nuw i64 %.sroa.56.0.i.i.i26.i.i, %i.es
  %i.eu = and i64 %i.et, %i.dw
  br label %_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_119find_first_non_fullERKNS1_12CommonFieldsEm.exit.i29.i.i

_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_119find_first_non_fullERKNS1_12CommonFieldsEm.exit.i29.i.i: ; preds = %_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_131probe_till_first_non_full_groupEPKNS1_6ctrl_tERNS1_9probe_seqILm16EEEm.exit.i.i.i25.i.i, %bb.o
  %.sroa.02.0.i.i.i30.i.i = phi i64 [ %i.eu, %_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_131probe_till_first_non_full_groupEPKNS1_6ctrl_tERNS1_9probe_seqILm16EEEm.exit.i.i.i25.i.i ], [ %i.dx, %bb.o ] ; 3 uses
  %i.ev = lshr i64 %i.dr, 57
  %i.ew = trunc nuw nsw i64 %i.ev to i8           ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i22.i.i, i64 %.sroa.02.0.i.i.i30.i.i
  store i8 %i.ew, ptr %i.ex, align 1, !tbaa !34, !noalias !86
  %i.ey = add nuw i64 %.sroa.02.0.i.i.i30.i.i, 9223372036854775793
  %i.ez = load i64, ptr %0, align 8, !noalias !86
  %i.fa = and i64 %i.ez, 255
  %notmask.i.i.i.i8.i32.i.i = shl nsw i64 -1, %i.fa
  %i.fb = xor i64 %notmask.i.i.i.i8.i32.i.i, -1   ; 2 uses
  %i.fc = and i64 %i.ey, %i.fb
  %i.fd = and i64 %i.fb, 15
  %i.fe = getelementptr i8, ptr %.sroa.0.0.copyload.i.i.i.i22.i.i, i64 %i.fc
  %i.ff = getelementptr i8, ptr %i.fe, i64 %i.fd
  store i8 %i.ew, ptr %i.ff, align 1, !tbaa !34, !noalias !86
  %i.fg = mul i64 %.sroa.02.0.i.i.i30.i.i, %i.h
  br label %"_ZZN4absl12lts_2026052618container_internal12_GLOBAL__N_132FindNewPositionsAndTransferSlotsERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEPNS1_6ctrl_tEPvmENK3$_0clESA_.exit37.i.i"

"_ZZN4absl12lts_2026052618container_internal12_GLOBAL__N_132FindNewPositionsAndTransferSlotsERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEPNS1_6ctrl_tEPvmENK3$_0clESA_.exit37.i.i": ; preds = %_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_119find_first_non_fullERKNS1_12CommonFieldsEm.exit.i29.i.i, %bb.n
  %.sroa.03.0.i33.i.i = phi i64 [ %i.fg, %_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_119find_first_non_fullERKNS1_12CommonFieldsEm.exit.i29.i.i ], [ 0, %bb.n ]
  %i.fh = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i40.i, i64 %.sroa.03.0.i33.i.i
  tail call void %i.br(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %i.fh, ptr noundef %.02158.i.i, i64 noundef 1), !noalias !86, !inline_history !91
  br label %bb.q

bb.q:                                             ; preds = %"_ZZN4absl12lts_2026052618container_internal12_GLOBAL__N_132FindNewPositionsAndTransferSlotsERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEPNS1_6ctrl_tEPvmENK3$_0clESA_.exit37.i.i", %bb.m
  %i.fi = ptrtoint ptr %.02158.i.i to i64
  %i.fj = add i64 %i.fi, %i.h
  %i.fk = inttoptr i64 %i.fj to ptr
  %i.fl = add nuw i64 %.060.i.i, 1                ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.fl, %i.b
  br i1 %exitcond.not.i.i, label %_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_132FindNewPositionsAndTransferSlotsERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEPNS1_6ctrl_tEPvm.exit.i, label %bb.m, !llvm.loop !92

_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_132FindNewPositionsAndTransferSlotsERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEPNS1_6ctrl_tEPvm.exit.i: ; preds = %bb.q, %"_ZZN4absl12lts_2026052618container_internal12_GLOBAL__N_132FindNewPositionsAndTransferSlotsERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEPNS1_6ctrl_tEPvmENK3$_0clESA_.exit.i.i", %bb.i
  %i.fm = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !62, !alias.scope !77
  tail call void %i.fn(ptr noundef %i.n, i64 noundef %i.b, ptr noundef %.sroa.0.0.copyload.i.i.i.pre, i64 noundef %i.h, i64 noundef %i.k, i1 noundef zeroext false), !noalias !77, !inline_history !80
  br i1 %i.u, label %bb.r, label %_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_116ResizeNonSooImplILNS2_16ResizeNonSooModeE1EEEvRNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_20HashtablezInfoHandleE.exit

bb.r:                                             ; preds = %_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_132FindNewPositionsAndTransferSlotsERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEPNS1_6ctrl_tEPvm.exit.i
  %i.fo = getelementptr inbounds i8, ptr %i.ao, i64 -8
  %i.fp = load i64, ptr %0, align 8, !noalias !77
  %i.fq = lshr i64 %i.fp, 17
  %i.fr = lshr i64 %2, 3
  %i.fs = add nuw nsw i64 %i.fr, %i.fq
  %i.ft = sub i64 %2, %i.fs
  store i64 %i.ft, ptr %i.fo, align 8, !tbaa !25, !noalias !77
  br label %_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_116ResizeNonSooImplILNS2_16ResizeNonSooModeE1EEEvRNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_20HashtablezInfoHandleE.exit

_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_116ResizeNonSooImplILNS2_16ResizeNonSooModeE1EEEvRNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_20HashtablezInfoHandleE.exit: ; preds = %_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_132FindNewPositionsAndTransferSlotsERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEPNS1_6ctrl_tEPvm.exit.i, %bb.r
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4absl12lts_2026052618container_internal45ReserveEmptyNonAllocatedTableToFitBucketCountERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %1, i64 noundef %2) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not.i = icmp eq i64 %2, 0
  %i.a = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %2, i1 true)
  %i.b = lshr i64 -1, %i.a
  %i.c = select i1 %.not.i, i64 1, i64 %i.b
  tail call fastcc void @_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_132ResizeEmptyNonAllocatedTableImplERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmb(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i64 noundef %i.c, i1 noundef zeroext false)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_132ResizeEmptyNonAllocatedTableImplERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmb(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %1, i64 noundef %2, i1 noundef zeroext %3) unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !13
  %i.c = zext i32 %i.b to i64                     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 15
  %i.e = load i8, ptr %i.d, align 1, !tbaa !93, !range !60, !noundef !61
  %i.f = trunc nuw i8 %i.e to i1
  %brmerge10.demorgan = and i1 %3, %i.f
  br i1 %brmerge10.demorgan, label %bb.b, label %.thread, !prof !94

bb.b:                                             ; preds = %bb.a
  %i.g = load i32, ptr %1, align 8, !tbaa !95
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !96
  %i.k = zext i32 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 14
  %i.m = load i8, ptr %i.l, align 2, !tbaa !59, !range !60, !noundef !61
  %i.n = zext nneg i8 %i.m to i16
  tail call void @_ZN4absl12lts_2026052618container_internal15ForcedTrySampleEmmmt(i64 noundef %i.c, i64 noundef %i.h, i64 noundef %i.k, i16 noundef zeroext %i.n)
  br label %.thread

.thread:                                          ; preds = %bb.a, %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !97)
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !18, !alias.scope !97
  %i.q = tail call noundef ptr %i.p(ptr noundef nonnull align 8 dereferenceable(24) %0), !noalias !97, !inline_history !100
  %i.r = add i64 %2, 1                            ; 2 uses
  %i.s = icmp ne i64 %i.r, 0
  tail call void @llvm.assume(i1 %i.s)
  %i.t = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.r, i1 true)
  %i.u = load i64, ptr %0, align 8, !noalias !97
  %i.v = and i64 %i.u, -256
  %i.w = or disjoint i64 %i.v, %i.t
  store i64 %i.w, ptr %0, align 8, !noalias !97
  tail call void @llvm.experimental.noalias.scope.decl(metadata !101)
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.y = load i16, ptr %i.x, align 4, !tbaa !22, !alias.scope !104
  %i.z = zext i16 %i.y to i64                     ; 2 uses
  %i.aa = icmp ugt i64 %2, 1                      ; 2 uses
  %i.ab = select i1 %i.aa, i64 8, i64 0           ; 2 uses
  %i.ac = icmp ult i64 %2, 2
  %i.ad = add i64 %2, 15
  %i.ae = select i1 %i.ac, i64 -1, i64 %i.ad
  %i.af = add i64 %i.ae, %i.ab
  %i.ag = add i64 %i.af, %i.z
  %i.ah = sub nsw i64 0, %i.z
  %i.ai = and i64 %i.ag, %i.ah                    ; 2 uses
  %i.aj = mul i64 %2, %i.c
  %i.ak = add i64 %i.ai, %i.aj                    ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !23, !alias.scope !104 ; 2 uses
  %i.an = icmp eq ptr %i.am, @_ZN4absl12lts_2026052618container_internal20AllocateBackingArrayILm8ESaIcEEEPvS4_m
  br i1 %i.an, label %bb.c, label %bb.d, !prof !9

bb.c:                                             ; preds = %.thread
  %i.ao = add i64 %i.ak, 7                        ; 2 uses
  %i.ap = icmp slt i64 %i.ao, 0
  br i1 %i.ap, label %.noexc.i.i.i.i, label %_ZN4absl12lts_2026052618container_internal20AllocateBackingArrayILm8ESaIcEEEPvS4_m.exit.i.i, !prof !12

.noexc.i.i.i.i:                                   ; preds = %bb.c
  tail call void @_ZSt17__throw_bad_allocv() #27, !noalias !104
  unreachable

_ZN4absl12lts_2026052618container_internal20AllocateBackingArrayILm8ESaIcEEEPvS4_m.exit.i.i: ; preds = %bb.c
  %i.aq = and i64 %i.ao, 9223372036854775800
  %i.ar = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aq) #26, !noalias !104
  br label %_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_117AllocBackingArrayERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmbPv.exit.i

bb.d:                                             ; preds = %.thread
  %i.as = tail call noundef ptr %i.am(ptr noundef %i.q, i64 noundef %i.ak), !noalias !104, !inline_history !105
  br label %_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_117AllocBackingArrayERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmbPv.exit.i

_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_117AllocBackingArrayERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmbPv.exit.i: ; preds = %bb.d, %_ZN4absl12lts_2026052618container_internal20AllocateBackingArrayILm8ESaIcEEEPvS4_m.exit.i.i
  %i.at = phi ptr [ %i.ar, %_ZN4absl12lts_2026052618container_internal20AllocateBackingArrayILm8ESaIcEEEPvS4_m.exit.i.i ], [ %i.as, %bb.d ] ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.ab ; 7 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.ai
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.au, ptr %i.aw, align 8, !tbaa !10, !noalias !97
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.av, ptr %i.ax, align 8, !tbaa !10, !noalias !97
  %.b.i.i.i.i = load i1, ptr @_ZGVZN4absl12lts_2026052618container_internal17NextHashTableSeedEvE4seed, align 1, !noalias !97
  %.pre.i.i.i.i = tail call align 2 ptr @llvm.threadlocal.address.p0(ptr align 2 @_ZZN4absl12lts_2026052618container_internal17NextHashTableSeedEvE4seed) ; 3 uses
  br i1 %.b.i.i.i.i, label %._ZN4absl12lts_2026052618container_internal17NextHashTableSeedEv.exit_crit_edge.i.i.i, label %bb.e, !prof !28

._ZN4absl12lts_2026052618container_internal17NextHashTableSeedEv.exit_crit_edge.i.i.i: ; preds = %_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_117AllocBackingArrayERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmbPv.exit.i
  %.pre.i.i.i = load i16, ptr %.pre.i.i.i.i, align 2, !tbaa !29, !noalias !97
  br label %_ZN4absl12lts_2026052618container_internal12CommonFields17generate_new_seedEb.exit.i

bb.e:                                             ; preds = %_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_117AllocBackingArrayERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmbPv.exit.i
  %i.ay = ptrtoint ptr %.pre.i.i.i.i to i64
  %i.az = trunc i64 %i.ay to i16
  store i1 true, ptr @_ZGVZN4absl12lts_2026052618container_internal17NextHashTableSeedEvE4seed, align 1, !noalias !97
  br label %_ZN4absl12lts_2026052618container_internal12CommonFields17generate_new_seedEb.exit.i

_ZN4absl12lts_2026052618container_internal12CommonFields17generate_new_seedEb.exit.i: ; preds = %bb.e, %._ZN4absl12lts_2026052618container_internal17NextHashTableSeedEv.exit_crit_edge.i.i.i
  %i.ba = phi i16 [ %.pre.i.i.i, %._ZN4absl12lts_2026052618container_internal17NextHashTableSeedEv.exit_crit_edge.i.i.i ], [ %i.az, %bb.e ]
  %i.bb = add i16 %i.ba, -21165                   ; 2 uses
  store i16 %i.bb, ptr %.pre.i.i.i.i, align 2, !tbaa !29, !noalias !97
  %i.bc = load i64, ptr %0, align 8, !noalias !97 ; 2 uses
  %i.bd = shl i16 %i.bb, 8
  %i.be = zext i16 %i.bd to i64
  %i.bf = and i64 %i.bc, -65281
  %i.bg = or disjoint i64 %i.bf, %i.be
  store i64 %i.bg, ptr %0, align 8, !noalias !97
  %i.bh = and i64 %i.bc, 255                      ; 2 uses
  %notmask.i.i.i.i = shl nsw i64 -1, %i.bh        ; 4 uses
  %i.bi = xor i64 %notmask.i.i.i.i, -1            ; 2 uses
  %i.bj = icmp samesign ugt i64 %notmask.i.i.i.i, -33
  br i1 %i.bj, label %bb.f, label %bb.i, !prof !9

bb.f:                                             ; preds = %_ZN4absl12lts_2026052618container_internal12CommonFields17generate_new_seedEb.exit.i
  %i.bk = icmp samesign ugt i64 %notmask.i.i.i.i, -3
  br i1 %i.bk, label %_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_19ResetCtrlERNS1_12CommonFieldsEm.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.au, i8 -128, i64 16, i1 false), !noalias !97
  %i.bl = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.bi
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.bl, i8 -128, i64 16, i1 false), !noalias !97
  %i.bm = icmp eq i64 %i.bh, 5
  br i1 %i.bm, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.bn = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.bn, i8 -128, i64 16, i1 false), !noalias !97
  br label %bb.j

bb.i:                                             ; preds = %_ZN4absl12lts_2026052618container_internal12CommonFields17generate_new_seedEb.exit.i
  %i.bo = sub i64 15, %notmask.i.i.i.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.au, i8 -128, i64 %i.bo, i1 false), !noalias !97
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %i.bp = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.bi
  store i8 -1, ptr %i.bp, align 1, !tbaa !34, !noalias !97
  br label %_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_19ResetCtrlERNS1_12CommonFieldsEm.exit.i

_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_19ResetCtrlERNS1_12CommonFieldsEm.exit.i: ; preds = %bb.j, %bb.f
  br i1 %i.aa, label %bb.k, label %_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_116ResizeNonSooImplILNS2_16ResizeNonSooModeE0EEEvRNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_20HashtablezInfoHandleE.exit

bb.k:                                             ; preds = %_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_19ResetCtrlERNS1_12CommonFieldsEm.exit.i
  %i.bq = getelementptr inbounds i8, ptr %i.au, i64 -8
  %i.br = lshr i64 %2, 3
  %i.bs = sub nuw i64 %2, %i.br
  store i64 %i.bs, ptr %i.bq, align 8, !tbaa !25, !noalias !97
  br label %_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_116ResizeNonSooImplILNS2_16ResizeNonSooModeE0EEEvRNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_20HashtablezInfoHandleE.exit

_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_116ResizeNonSooImplILNS2_16ResizeNonSooModeE0EEEvRNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_20HashtablezInfoHandleE.exit: ; preds = %_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_19ResetCtrlERNS1_12CommonFieldsEm.exit.i, %bb.k
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4absl12lts_2026052618container_internal6RehashERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %1, i64 noundef %2) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"union.absl::lts_20260526::container_internal::HeapOrSoo", align 8 ; 4 uses
  %i.a = load i64, ptr %0, align 8                ; 5 uses
  %i.b = and i64 %i.a, 255
  %notmask.i.i = shl nsw i64 -1, %i.b
  %i.c = xor i64 %notmask.i.i, -1                 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !13
  %i.f = zext i32 %i.e to i64                     ; 3 uses
  %i.g = icmp eq i64 %2, 0                        ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.g
end_hunk_0
begin_hunk_1_@_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_117ProbedItemEncoderINS1_14ProbedItemImplIjLm32EEELb0EE25ProcessEncodeWithOverflowES5_:bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 528
  %.val = load ptr, ptr %i.d, align 8, !tbaa !176
  %i.e = getelementptr inbounds i8, ptr %.val, i64 -8
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = add i64 %i.f, 3
  %i.h = and i64 %i.g, -4
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 512
  store ptr %i.i, ptr %i.j, align 8, !tbaa !173
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.k = lshr i32 %1, 7
  %i.l = and i32 %i.k, 4095
  %i.m = zext nneg i32 %i.l to i64                ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 536 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !177
  %.not = icmp eq i64 %i.o, -1
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !176
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.m ; 3 uses
  br i1 %.not, label %bb.e, label %bb.d, !prof !9

bb.d:                                             ; preds = %bb.c
  store i8 -1, ptr %i.r, align 1, !tbaa !34
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 -3 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 520
  store ptr %i.s, ptr %i.t, align 8, !tbaa !175
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !173  ; 2 uses
  %i.w = icmp ult ptr %i.v, %i.s
  br i1 %i.w, label %bb.f, label %bb.g, !prof !9

bb.f:                                             ; preds = %bb.e
  store i32 %1, ptr %i.v, align 4, !tbaa !10
  %i.x = load ptr, ptr %i.u, align 8, !tbaa !173
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  store ptr %i.y, ptr %i.u, align 8, !tbaa !173
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  store i8 -1, ptr %i.r, align 1, !tbaa !34
  store i64 %i.m, ptr %i.n, align 8, !tbaa !177
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.d
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define internal fastcc noundef i64 @_ZNK4absl12lts_2026052618container_internal12_GLOBAL__N_117ProbedItemEncoderINS1_14ProbedItemImplIjLm32EEELb0EE30DecodeAndInsertToTableOverflowERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEPv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(545) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %2, ptr noundef %3) unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 528 ; 2 uses
  %.val12 = load ptr, ptr %i.a, align 8, !tbaa !176
  %i.b = getelementptr inbounds i8, ptr %.val12, i64 -8
  %i.c = ptrtoint ptr %i.b to i64
  %i.d = add i64 %i.c, 3
  %i.e = and i64 %i.d, -4
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !173
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val = load i32, ptr %i.i, align 8, !tbaa !13
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.val11 = load ptr, ptr %i.j, align 8, !tbaa !33
  %i.k = tail call fastcc noundef i64 @_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_119DecodeAndInsertImplINS1_14ProbedItemImplIjLm32EEEEEmRNS1_12CommonFieldsERKNS1_15PolicyFunctionsEPKT_SD_Pv(ptr noundef nonnull align 8 dereferenceable(24) %1, i32 %.val, ptr %.val11, ptr noundef %i.f, ptr noundef %i.h, ptr noundef %3) ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.m = load i64, ptr %i.l, align 8, !tbaa !177  ; 2 uses
  %i.n = icmp eq i64 %i.m, -1
  br i1 %i.n, label %bb.c, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !176
  %i.p = tail call fastcc noundef i64 @_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_127ProcessProbedMarkedElementsERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEPNS1_6ctrl_tEPvm(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef %i.o, ptr noundef %3, i64 noundef %i.m)
  %i.q = add i64 %i.p, %i.k
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i64 [ %i.q, %bb.b ], [ %i.k, %bb.a ]
  ret i64 %.0
}

; Function Attrs: mustprogress noinline uwtable
define internal fastcc noundef i64 @_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_127ProcessProbedMarkedElementsERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEPNS1_6ctrl_tEPvm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, i64 noundef range(i64 0, -1) %4) unnamed_addr #16 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = and i64 %i.a, 255
  %notmask.i.i = shl nsw i64 -1, %i.b
  %i.c = xor i64 %notmask.i.i, -1
  %i.d = lshr i64 %i.c, 1                         ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !13
  %i.g = zext i32 %i.f to i64                     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.h, align 8, !tbaa !10
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !31
  %i.k = tail call noundef ptr %i.j(ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !30
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !33
  %i.p = load i64, ptr %0, align 8
  %i.q = lshr i64 %i.p, 8
  %i.r = and i64 %i.q, 255
  %i.s = icmp ult i64 %4, %i.d
  br i1 %i.s, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

._crit_edge:                                      ; preds = %bb.e, %bb.a
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %.1, %bb.e ]
  ret i64 %.0.lcssa

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %.040 = phi i64 [ 0, %.lr.ph ], [ %.1, %bb.e ]  ; 2 uses
  %.03539 = phi i64 [ %4, %.lr.ph ], [ %i.bn, %bb.e ] ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 %.03539
  %i.v = load i8, ptr %i.u, align 1, !tbaa !34
  %.not = icmp eq i8 %i.v, -1
  br i1 %.not, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.w = mul i64 %.03539, %i.g
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 %i.w ; 2 uses
  %i.y = tail call noundef i64 %i.m(ptr noundef %i.k, ptr noundef %i.x, i64 noundef %i.r) ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.t, align 8, !tbaa !10 ; 4 uses
  %i.z = load i64, ptr %0, align 8
  %i.aa = and i64 %i.z, 255
  %notmask.i.i.i.i = shl nsw i64 -1, %i.aa
  %i.ab = xor i64 %notmask.i.i.i.i, -1            ; 3 uses
  %i.ac = and i64 %i.y, %i.ab                     ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i, i64 %i.ac ; 2 uses
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !34
  %i.af = icmp slt i8 %i.ae, -1
  br i1 %i.af, label %_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_119find_first_non_fullERKNS1_12CommonFieldsEm.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ag = load <16 x i8>, ptr %i.ad, align 1, !tbaa !10
  %i.ah = icmp slt <16 x i8> %i.ag, splat (i8 -1)
  %i.ai = bitcast <16 x i1> %i.ah to i16
  %i.aj = zext i16 %i.ai to i32
  %i.ak = tail call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.aj) #25, !srcloc !11 ; 2 uses
  %.not5.i.i.i = icmp eq i32 %i.ak, 0
  br i1 %.not5.i.i.i, label %.lr.ph.i.i.i, label %_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_131probe_till_first_non_full_groupEPKNS1_6ctrl_tERNS1_9probe_seqILm16EEEm.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.i
  %i.al = phi i64 [ %i.an, %.lr.ph.i.i.i ], [ 0, %bb.d ]
  %i.am = phi i64 [ %i.ap, %.lr.ph.i.i.i ], [ %i.ac, %bb.d ]
  %i.an = add i64 %i.al, 16                       ; 3 uses
  %i.ao = add i64 %i.an, %i.am
  %i.ap = and i64 %i.ao, %i.ab                    ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i, i64 %i.ap
  %i.ar = load <16 x i8>, ptr %i.aq, align 1, !tbaa !10
  %i.as = icmp slt <16 x i8> %i.ar, splat (i8 -1)
  %i.at = bitcast <16 x i1> %i.as to i16
  %i.au = zext i16 %i.at to i32
  %i.av = tail call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.au) #25, !srcloc !11 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.av, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_131probe_till_first_non_full_groupEPKNS1_6ctrl_tERNS1_9probe_seqILm16EEEm.exit.i.i

_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_131probe_till_first_non_full_groupEPKNS1_6ctrl_tERNS1_9probe_seqILm16EEEm.exit.i.i: ; preds = %.lr.ph.i.i.i, %bb.d
  %.sroa.56.0.i.i = phi i64 [ %i.ac, %bb.d ], [ %i.ap, %.lr.ph.i.i.i ]
  %.sroa.11.0.i.i = phi i64 [ 0, %bb.d ], [ %i.an, %.lr.ph.i.i.i ]
  %.lcssa.i.i.i = phi i32 [ %i.ak, %bb.d ], [ %i.av, %.lr.ph.i.i.i ]
  %i.aw = tail call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.lcssa.i.i.i, i1 true)
  %i.ax = zext nneg i32 %i.aw to i64
  %i.ay = add nuw i64 %.sroa.56.0.i.i, %i.ax
  %i.az = and i64 %i.ay, %i.ab
  br label %_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_119find_first_non_fullERKNS1_12CommonFieldsEm.exit

_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_119find_first_non_fullERKNS1_12CommonFieldsEm.exit: ; preds = %bb.c, %_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_131probe_till_first_non_full_groupEPKNS1_6ctrl_tERNS1_9probe_seqILm16EEEm.exit.i.i
  %.sroa.02.0.i.i = phi i64 [ %i.az, %_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_131probe_till_first_non_full_groupEPKNS1_6ctrl_tERNS1_9probe_seqILm16EEEm.exit.i.i ], [ %i.ac, %bb.c ] ; 3 uses
  %.sroa.3.0.i.i = phi i64 [ %.sroa.11.0.i.i, %_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_131probe_till_first_non_full_groupEPKNS1_6ctrl_tERNS1_9probe_seqILm16EEEm.exit.i.i ], [ 0, %bb.c ]
  %i.ba = add i64 %.sroa.3.0.i.i, %.040
  %i.bb = mul i64 %.sroa.02.0.i.i, %i.g
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 %i.bb
  %i.bd = lshr i64 %i.y, 57
  %i.be = trunc nuw nsw i64 %i.bd to i8           ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i, i64 %.sroa.02.0.i.i
  store i8 %i.be, ptr %i.bf, align 1, !tbaa !34
  %i.bg = add nuw i64 %.sroa.02.0.i.i, 9223372036854775793
  %i.bh = load i64, ptr %0, align 8
  %i.bi = and i64 %i.bh, 255
  %notmask.i.i.i.i36 = shl nsw i64 -1, %i.bi
  %i.bj = xor i64 %notmask.i.i.i.i36, -1
  %i.bk = and i64 %i.bg, %i.bj
  %i.bl = getelementptr i8, ptr %.sroa.0.0.copyload.i.i.i, i64 %i.bk
  %i.bm = getelementptr i8, ptr %i.bl, i64 15
  store i8 %i.be, ptr %i.bm, align 1, !tbaa !34
  tail call void %i.o(ptr noundef nonnull %0, ptr noundef %i.bc, ptr noundef %i.x, i64 noundef 1)
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_119find_first_non_fullERKNS1_12CommonFieldsEm.exit
  %.1 = phi i64 [ %.040, %bb.b ], [ %i.ba, %_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_119find_first_non_fullERKNS1_12CommonFieldsEm.exit ] ; 2 uses
  %i.bn = add nuw nsw i64 %.03539, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.bn, %i.d
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !215
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_ZZN4absl12lts_2026052618container_internal12_GLOBAL__N_118GrowToNextCapacityINS2_17ProbedItemEncoderINS1_14ProbedItemImplImLm64EEELb0EEEEEmRNS1_12CommonFieldsERKNS1_15PolicyFunctionsEPNS1_6ctrl_tEPvENUlSF_hmmE_8__invokeESF_hmm(ptr nofree noundef captures(none) %0, i8 noundef zeroext %1, i64 noundef %2, i64 noundef %3) #18 align 2 {
bb.a:
  %i.a = shl i64 %2, 7
  %i.b = and i8 %1, 127
  %.masked.i.i = zext nneg i8 %i.b to i64
  %i.c = shl i64 %3, 35
  %.masked3.i.i = and i64 %i.a, 34359738240
  %i.d = or disjoint i64 %.masked3.i.i, %.masked.i.i
  %i.e = or disjoint i64 %i.d, %i.c               ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !188  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !191
  %.not.i.i = icmp ult ptr %i.g, %i.i
  br i1 %.not.i.i, label %bb.c, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_117ProbedItemEncoderINS1_14ProbedItemImplImLm64EEELb0EE25ProcessEncodeWithOverflowES5_(ptr noundef nonnull align 8 dereferenceable(545) %0, i64 %i.e)
  br label %_ZZN4absl12lts_2026052618container_internal12_GLOBAL__N_118GrowToNextCapacityINS2_17ProbedItemEncoderINS1_14ProbedItemImplImLm64EEELb0EEEEEmRNS1_12CommonFieldsERKNS1_15PolicyFunctionsEPNS1_6ctrl_tEPvENKUlSF_hmmE_clESF_hmm.exit

bb.c:                                             ; preds = %bb.a
  store i64 %i.e, ptr %i.g, align 8, !tbaa !10
  %i.j = load ptr, ptr %i.f, align 8, !tbaa !188
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.k, ptr %i.f, align 8, !tbaa !188
  br label %_ZZN4absl12lts_2026052618container_internal12_GLOBAL__N_118GrowToNextCapacityINS2_17ProbedItemEncoderINS1_14ProbedItemImplImLm64EEELb0EEEEEmRNS1_12CommonFieldsERKNS1_15PolicyFunctionsEPNS1_6ctrl_tEPvENKUlSF_hmmE_clESF_hmm.exit

_ZZN4absl12lts_2026052618container_internal12_GLOBAL__N_118GrowToNextCapacityINS2_17ProbedItemEncoderINS1_14ProbedItemImplImLm64EEELb0EEEEEmRNS1_12CommonFieldsERKNS1_15PolicyFunctionsEPNS1_6ctrl_tEPvENKUlSF_hmmE_clESF_hmm.exit: ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_117ProbedItemEncoderINS1_14ProbedItemImplImLm64EEELb0EE25ProcessEncodeWithOverflowES5_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(545) %0, i64 %1) unnamed_addr #19 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 544 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !194, !range !60, !noundef !61
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr %i.a, align 8, !tbaa !194
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 528
  %.val = load ptr, ptr %i.d, align 8, !tbaa !192
  %i.e = getelementptr inbounds i8, ptr %.val, i64 -8
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = add i64 %i.f, 7
  %i.h = and i64 %i.g, -8
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 512
  store ptr %i.i, ptr %i.j, align 8, !tbaa !188
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.k = lshr i64 %1, 7
  %i.l = and i64 %i.k, 268435455                  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 536 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !193
  %.not = icmp eq i64 %i.n, -1
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !192
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.l ; 3 uses
  br i1 %.not, label %bb.e, label %bb.d, !prof !9

bb.d:                                             ; preds = %bb.c
  store i8 -1, ptr %i.q, align 1, !tbaa !34
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 -7 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 520
  store ptr %i.r, ptr %i.s, align 8, !tbaa !191
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 3 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !188  ; 2 uses
  %i.v = icmp ult ptr %i.u, %i.r
  br i1 %i.v, label %bb.f, label %bb.g, !prof !9

bb.f:                                             ; preds = %bb.e
  store i64 %1, ptr %i.u, align 8, !tbaa !10
  %i.w = load ptr, ptr %i.t, align 8, !tbaa !188
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr %i.x, ptr %i.t, align 8, !tbaa !188
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  store i8 -1, ptr %i.q, align 1, !tbaa !34
  store i64 %i.l, ptr %i.m, align 8, !tbaa !193
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.d
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define internal fastcc noundef i64 @_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_119DecodeAndInsertImplINS1_14ProbedItemImplImLm64EEEEEmRNS1_12CommonFieldsERKNS1_15PolicyFunctionsEPKT_SD_Pv(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 %.8.val, ptr nofree readonly captures(none) %.32.val, ptr nofree noundef readonly captures(address) %1, ptr nofree noundef readnone captures(address) %2, ptr noundef %3) unnamed_addr #16 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.a, align 8, !tbaa !10
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sroa.0.0.copyload.i.i31 = load ptr, ptr %i.b, align 8, !tbaa !10 ; 2 uses
  %i.c = zext i32 %.8.val to i64                  ; 2 uses
  %i.d = icmp ult ptr %1, %2
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.e = load i64, ptr %0, align 8
  %i.f = and i64 %i.e, 255
  %notmask.i.i.i = shl nsw i64 -1, %i.f
  %i.g = xor i64 %notmask.i.i.i, -1               ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_127find_first_non_full_from_h1EPKNS1_6ctrl_tEmNS1_21HashtableCapacityImplILNS1_28HashtableCapacityStorageModeE1EEE.exit
  %.04 = phi ptr [ %1, %.lr.ph ], [ %i.az, %_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_127find_first_non_full_from_h1EPKNS1_6ctrl_tEmNS1_21HashtableCapacityImplILNS1_28HashtableCapacityStorageModeE1EEE.exit ] ; 3 uses
  %.0303 = phi i64 [ 0, %.lr.ph ], [ %i.ah, %_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_127find_first_non_full_from_h1EPKNS1_6ctrl_tEmNS1_21HashtableCapacityImplILNS1_28HashtableCapacityStorageModeE1EEE.exit ]
  %i.h = load i64, ptr %.04, align 8              ; 2 uses
  %i.i = lshr i64 %i.h, 35
  %i.j = and i64 %i.i, %i.g                       ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i31, i64 %i.j ; 2 uses
  %i.l = load i8, ptr %i.k, align 1, !tbaa !34
  %i.m = icmp slt i8 %i.l, -1
  br i1 %i.m, label %_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_127find_first_non_full_from_h1EPKNS1_6ctrl_tEmNS1_21HashtableCapacityImplILNS1_28HashtableCapacityStorageModeE1EEE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load <16 x i8>, ptr %i.k, align 1, !tbaa !10
  %i.o = icmp slt <16 x i8> %i.n, splat (i8 -1)
  %i.p = bitcast <16 x i1> %i.o to i16
  %i.q = zext i16 %i.p to i32
  %i.r = tail call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.q) #25, !srcloc !11 ; 2 uses
  %.not5.i.i = icmp eq i32 %i.r, 0
  br i1 %.not5.i.i, label %.lr.ph.i.i, label %_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_131probe_till_first_non_full_groupEPKNS1_6ctrl_tERNS1_9probe_seqILm16EEEm.exit.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %i.s = phi i64 [ %i.u, %.lr.ph.i.i ], [ 0, %bb.c ]
  %i.t = phi i64 [ %i.w, %.lr.ph.i.i ], [ %i.j, %bb.c ]
  %i.u = add i64 %i.s, 16                         ; 3 uses
  %i.v = add i64 %i.u, %i.t
  %i.w = and i64 %i.v, %i.g                       ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i31, i64 %i.w
  %i.y = load <16 x i8>, ptr %i.x, align 1, !tbaa !10
  %i.z = icmp slt <16 x i8> %i.y, splat (i8 -1)
  %i.aa = bitcast <16 x i1> %i.z to i16
  %i.ab = zext i16 %i.aa to i32
  %i.ac = tail call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.ab) #25, !srcloc !11 ; 2 uses
  %.not.i.i = icmp eq i32 %i.ac, 0
  br i1 %.not.i.i, label %.lr.ph.i.i, label %_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_131probe_till_first_non_full_groupEPKNS1_6ctrl_tERNS1_9probe_seqILm16EEEm.exit.i

_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_131probe_till_first_non_full_groupEPKNS1_6ctrl_tERNS1_9probe_seqILm16EEEm.exit.i: ; preds = %.lr.ph.i.i, %bb.c
  %.sroa.56.0.i = phi i64 [ %i.j, %bb.c ], [ %i.w, %.lr.ph.i.i ]
  %.sroa.11.0.i = phi i64 [ 0, %bb.c ], [ %i.u, %.lr.ph.i.i ]
  %.lcssa.i.i = phi i32 [ %i.r, %bb.c ], [ %i.ac, %.lr.ph.i.i ]
  %i.ad = tail call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.lcssa.i.i, i1 true)
  %i.ae = zext nneg i32 %i.ad to i64
  %i.af = add nuw i64 %.sroa.56.0.i, %i.ae
  %i.ag = and i64 %i.af, %i.g
  br label %_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_127find_first_non_full_from_h1EPKNS1_6ctrl_tEmNS1_21HashtableCapacityImplILNS1_28HashtableCapacityStorageModeE1EEE.exit

_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_127find_first_non_full_from_h1EPKNS1_6ctrl_tEmNS1_21HashtableCapacityImplILNS1_28HashtableCapacityStorageModeE1EEE.exit: ; preds = %bb.b, %_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_131probe_till_first_non_full_groupEPKNS1_6ctrl_tERNS1_9probe_seqILm16EEEm.exit.i
  %.sroa.02.0.i = phi i64 [ %i.ag, %_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_131probe_till_first_non_full_groupEPKNS1_6ctrl_tERNS1_9probe_seqILm16EEEm.exit.i ], [ %i.j, %bb.b ] ; 3 uses
  %.sroa.3.0.i = phi i64 [ %.sroa.11.0.i, %_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_131probe_till_first_non_full_groupEPKNS1_6ctrl_tERNS1_9probe_seqILm16EEEm.exit.i ], [ 0, %bb.b ]
  %i.ah = add i64 %.sroa.3.0.i, %.0303            ; 2 uses
  %i.ai = lshr i64 %i.h, 7
  %i.aj = and i64 %i.ai, 268435455
  %i.ak = mul nuw nsw i64 %i.aj, %i.c
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 %i.ak
  %i.am = mul i64 %.sroa.02.0.i, %i.c
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 %i.am
  tail call void %.32.val(ptr noundef nonnull %0, ptr noundef %i.an, ptr noundef %i.al, i64 noundef 1)
  %i.ao = load i64, ptr %.04, align 8
  %i.ap = trunc i64 %i.ao to i8
  %i.aq = and i8 %i.ap, 127                       ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !10 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i, i64 %.sroa.02.0.i
  store i8 %i.aq, ptr %i.ar, align 1, !tbaa !34
  %i.as = add nuw i64 %.sroa.02.0.i, 9223372036854775793
  %i.at = load i64, ptr %0, align 8
  %i.au = and i64 %i.at, 255
  %notmask.i.i.i.i = shl nsw i64 -1, %i.au
  %i.av = xor i64 %notmask.i.i.i.i, -1
  %i.aw = and i64 %i.as, %i.av
  %i.ax = getelementptr i8, ptr %.sroa.0.0.copyload.i.i.i.i, i64 %i.aw
  %i.ay = getelementptr i8, ptr %i.ax, i64 15
  store i8 %i.aq, ptr %i.ay, align 1, !tbaa !34
  %i.az = getelementptr inbounds nuw i8, ptr %.04, i64 8 ; 2 uses
  %i.ba = icmp ult ptr %i.az, %2
  br i1 %i.ba, label %bb.b, label %._crit_edge, !llvm.loop !216

._crit_edge:                                      ; preds = %_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_127find_first_non_full_from_h1EPKNS1_6ctrl_tEmNS1_21HashtableCapacityImplILNS1_28HashtableCapacityStorageModeE1EEE.exit, %bb.a
  %.030.lcssa = phi i64 [ 0, %bb.a ], [ %i.ah, %_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_127find_first_non_full_from_h1EPKNS1_6ctrl_tEmNS1_21HashtableCapacityImplILNS1_28HashtableCapacityStorageModeE1EEE.exit ]
  ret i64 %.030.lcssa
}

; Function Attrs: mustprogress noinline uwtable
define internal fastcc noundef i64 @_ZNK4absl12lts_2026052618container_internal12_GLOBAL__N_117ProbedItemEncoderINS1_14ProbedItemImplImLm64EEELb0EE30DecodeAndInsertToTableOverflowERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEPv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(545) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %2, ptr noundef %3) unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 528 ; 2 uses
  %.val12 = load ptr, ptr %i.a, align 8, !tbaa !192
end_hunk_1
