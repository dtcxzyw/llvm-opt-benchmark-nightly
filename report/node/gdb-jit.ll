inline.NumInlined: 1377
inline.NumDeleted: 615
begin_hunk_0_@_ZN2v88internal15GDBJITInterface16DebugLineSection17WriteBodyInternalEPNS1_6WriterE:bb.a
  br label %_ZN2v88internal15GDBJITInterface6Writer5WriteIhEEvRKT_.exit.i200

.lr.ph.i.i.i201:                                  ; preds = %_ZN2v88internal15GDBJITInterface6Writer5WriteIhEEvRKT_.exit.i, %.lr.ph.i.i.i201
  %i.jy = phi i64 [ %i.jz, %.lr.ph.i.i.i201 ], [ %i.jw, %_ZN2v88internal15GDBJITInterface6Writer5WriteIhEEvRKT_.exit.i ]
  %i.jz = shl i64 %i.jy, 1                        ; 4 uses
  %i.ka = icmp ult i64 %i.jz, %i.jv
  br i1 %i.ka, label %.lr.ph.i.i.i201, label %_ZN2v84base7ReallocEPvm.exit.i.i.i202, !llvm.loop !5

_ZN2v84base7ReallocEPvm.exit.i.i.i202:            ; preds = %.lr.ph.i.i.i201
  store i64 %i.jz, ptr %i.d, align 8
  %i.kb = load ptr, ptr %.phi.trans.insert.i.i, align 8
  %i.kc = call noundef ptr @realloc(ptr noundef %i.kb, i64 noundef %i.jz) #24 ; 2 uses
  store ptr %i.kc, ptr %.phi.trans.insert.i.i, align 8
  %.pre.i.i203 = load i64, ptr %i.a, align 8
  br label %_ZN2v88internal15GDBJITInterface6Writer5WriteIhEEvRKT_.exit.i200

_ZN2v88internal15GDBJITInterface6Writer5WriteIhEEvRKT_.exit.i200: ; preds = %_ZN2v84base7ReallocEPvm.exit.i.i.i202, %._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i.i198
  %i.kd = phi ptr [ %.pre2.i.i199, %._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i.i198 ], [ %i.kc, %_ZN2v84base7ReallocEPvm.exit.i.i.i202 ]
  %i.ke = phi i64 [ %i.ju, %._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i.i198 ], [ %.pre.i.i203, %_ZN2v84base7ReallocEPvm.exit.i.i.i202 ]
  %i.kf = getelementptr inbounds nuw i8, ptr %i.kd, i64 %i.ke
  store i8 0, ptr %i.kf, align 1
  %i.kg = load i64, ptr %i.a, align 8             ; 2 uses
  %i.kh = add i64 %i.kg, 1                        ; 2 uses
  store i64 %i.kh, ptr %i.a, align 8
  %i.ki = add i64 %i.kg, 2                        ; 2 uses
  %i.kj = load i64, ptr %i.d, align 8             ; 2 uses
  %i.kk = icmp ult i64 %i.kj, %i.ki
  br i1 %i.kk, label %.lr.ph.i.i.i214, label %._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i.i211

._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i.i211: ; preds = %_ZN2v88internal15GDBJITInterface6Writer5WriteIhEEvRKT_.exit.i200
  %.pre2.i.i212 = load ptr, ptr %.phi.trans.insert.i.i, align 8
  br label %_ZN2v88internal15GDBJITInterface6Writer5WriteIhEEvRKT_.exit.i213

.lr.ph.i.i.i214:                                  ; preds = %_ZN2v88internal15GDBJITInterface6Writer5WriteIhEEvRKT_.exit.i200, %.lr.ph.i.i.i214
  %i.kl = phi i64 [ %i.km, %.lr.ph.i.i.i214 ], [ %i.kj, %_ZN2v88internal15GDBJITInterface6Writer5WriteIhEEvRKT_.exit.i200 ]
  %i.km = shl i64 %i.kl, 1                        ; 4 uses
  %i.kn = icmp ult i64 %i.km, %i.ki
  br i1 %i.kn, label %.lr.ph.i.i.i214, label %_ZN2v84base7ReallocEPvm.exit.i.i.i215, !llvm.loop !5

_ZN2v84base7ReallocEPvm.exit.i.i.i215:            ; preds = %.lr.ph.i.i.i214
  store i64 %i.km, ptr %i.d, align 8
  %i.ko = load ptr, ptr %.phi.trans.insert.i.i, align 8
  %i.kp = call noundef ptr @realloc(ptr noundef %i.ko, i64 noundef %i.km) #24 ; 2 uses
  store ptr %i.kp, ptr %.phi.trans.insert.i.i, align 8
  %.pre.i.i216 = load i64, ptr %i.a, align 8
  br label %_ZN2v88internal15GDBJITInterface6Writer5WriteIhEEvRKT_.exit.i213

_ZN2v88internal15GDBJITInterface6Writer5WriteIhEEvRKT_.exit.i213: ; preds = %_ZN2v84base7ReallocEPvm.exit.i.i.i215, %._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i.i211
  %i.kq = phi ptr [ %.pre2.i.i212, %._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i.i211 ], [ %i.kp, %_ZN2v84base7ReallocEPvm.exit.i.i.i215 ]
  %i.kr = phi i64 [ %i.kh, %._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i.i211 ], [ %.pre.i.i216, %_ZN2v84base7ReallocEPvm.exit.i.i.i215 ]
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kq, i64 %i.kr
  store i8 0, ptr %i.ks, align 1
  %i.kt = load i64, ptr %i.a, align 8             ; 2 uses
  %i.ku = add i64 %i.kt, 1                        ; 2 uses
  store i64 %i.ku, ptr %i.a, align 8
  %i.kv = add i64 %i.kt, 2                        ; 2 uses
  %i.kw = load i64, ptr %i.d, align 8             ; 2 uses
  %i.kx = icmp ult i64 %i.kw, %i.kv
  br i1 %i.kx, label %.lr.ph.i.i221, label %._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i218

._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i218: ; preds = %_ZN2v88internal15GDBJITInterface6Writer5WriteIhEEvRKT_.exit.i213
  %.pre2.i220 = load ptr, ptr %.phi.trans.insert.i.i, align 8
  br label %_ZN2v88internal15GDBJITInterface6Writer5WriteIhEEvRKT_.exit224

.lr.ph.i.i221:                                    ; preds = %_ZN2v88internal15GDBJITInterface6Writer5WriteIhEEvRKT_.exit.i213, %.lr.ph.i.i221
  %i.ky = phi i64 [ %i.kz, %.lr.ph.i.i221 ], [ %i.kw, %_ZN2v88internal15GDBJITInterface6Writer5WriteIhEEvRKT_.exit.i213 ]
  %i.kz = shl i64 %i.ky, 1                        ; 4 uses
  %i.la = icmp ult i64 %i.kz, %i.kv
  br i1 %i.la, label %.lr.ph.i.i221, label %_ZN2v84base7ReallocEPvm.exit.i.i222, !llvm.loop !5

_ZN2v84base7ReallocEPvm.exit.i.i222:              ; preds = %.lr.ph.i.i221
  store i64 %i.kz, ptr %i.d, align 8
  %i.lb = load ptr, ptr %.phi.trans.insert.i.i, align 8
  %i.lc = call noundef ptr @realloc(ptr noundef %i.lb, i64 noundef %i.kz) #24 ; 2 uses
  store ptr %i.lc, ptr %.phi.trans.insert.i.i, align 8
  %.pre.i223 = load i64, ptr %i.a, align 8
  br label %_ZN2v88internal15GDBJITInterface6Writer5WriteIhEEvRKT_.exit224

_ZN2v88internal15GDBJITInterface6Writer5WriteIhEEvRKT_.exit224: ; preds = %._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i218, %_ZN2v84base7ReallocEPvm.exit.i.i222
  %i.ld = phi ptr [ %.pre2.i220, %._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i218 ], [ %i.lc, %_ZN2v84base7ReallocEPvm.exit.i.i222 ]
  %i.le = phi i64 [ %i.ku, %._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i218 ], [ %.pre.i223, %_ZN2v84base7ReallocEPvm.exit.i.i222 ]
  %i.lf = getelementptr inbounds nuw i8, ptr %i.ld, i64 %i.le
  store i8 0, ptr %i.lf, align 1
  %i.lg = load i64, ptr %i.a, align 8
  %i.lh = add i64 %i.lg, 1                        ; 2 uses
  store i64 %i.lh, ptr %i.a, align 8
  %i.li = sub i64 %i.lh, %i.ba
  %i.lj = trunc i64 %i.li to i32
  %i.lk = load ptr, ptr %.phi.trans.insert.i.i, align 8
  %i.ll = getelementptr i8, ptr %i.lk, i64 %i.ah
  %i.lm = getelementptr i8, ptr %i.ll, i64 2
  store i32 %i.lj, ptr %i.lm, align 1
  call void @_ZN2v88internal15GDBJITInterface16DebugLineSection19WriteExtendedOpcodeEPNS1_6WriterENS2_20DWARF2ExtendedOpcodeEm(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %1, i32 noundef 2, i64 noundef 8)
  %i.ln = load ptr, ptr %i.hm, align 8
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 32
  %i.lp = load i64, ptr %i.lo, align 8
  %i.lq = load i64, ptr %i.a, align 8             ; 2 uses
  %i.lr = add i64 %i.lq, 8                        ; 2 uses
  %i.ls = load i64, ptr %i.d, align 8             ; 2 uses
  %i.lt = icmp ult i64 %i.ls, %i.lr
  br i1 %i.lt, label %.lr.ph.i.i228, label %._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i225

._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i225: ; preds = %_ZN2v88internal15GDBJITInterface6Writer5WriteIhEEvRKT_.exit224
  %.pre2.i227 = load ptr, ptr %.phi.trans.insert.i.i, align 8
  br label %_ZN2v88internal15GDBJITInterface6Writer5WriteIlEEvRKT_.exit

.lr.ph.i.i228:                                    ; preds = %_ZN2v88internal15GDBJITInterface6Writer5WriteIhEEvRKT_.exit224, %.lr.ph.i.i228
  %i.lu = phi i64 [ %i.lv, %.lr.ph.i.i228 ], [ %i.ls, %_ZN2v88internal15GDBJITInterface6Writer5WriteIhEEvRKT_.exit224 ]
  %i.lv = shl i64 %i.lu, 1                        ; 4 uses
  %i.lw = icmp ult i64 %i.lv, %i.lr
  br i1 %i.lw, label %.lr.ph.i.i228, label %_ZN2v84base7ReallocEPvm.exit.i.i229, !llvm.loop !5

_ZN2v84base7ReallocEPvm.exit.i.i229:              ; preds = %.lr.ph.i.i228
  store i64 %i.lv, ptr %i.d, align 8
  %i.lx = load ptr, ptr %.phi.trans.insert.i.i, align 8
  %i.ly = call noundef ptr @realloc(ptr noundef %i.lx, i64 noundef %i.lv) #24 ; 2 uses
  store ptr %i.ly, ptr %.phi.trans.insert.i.i, align 8
  %.pre.i230 = load i64, ptr %i.a, align 8
  br label %_ZN2v88internal15GDBJITInterface6Writer5WriteIlEEvRKT_.exit

_ZN2v88internal15GDBJITInterface6Writer5WriteIlEEvRKT_.exit: ; preds = %._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i225, %_ZN2v84base7ReallocEPvm.exit.i.i229
  %i.lz = phi ptr [ %.pre2.i227, %._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i225 ], [ %i.ly, %_ZN2v84base7ReallocEPvm.exit.i.i229 ]
  %i.ma = phi i64 [ %i.lq, %._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i225 ], [ %.pre.i230, %_ZN2v84base7ReallocEPvm.exit.i.i229 ]
  %i.mb = getelementptr inbounds nuw i8, ptr %i.lz, i64 %i.ma
  store i64 %i.lp, ptr %i.mb, align 1
  %i.mc = load i64, ptr %i.a, align 8             ; 2 uses
  %i.md = add i64 %i.mc, 8                        ; 2 uses
  store i64 %i.md, ptr %i.a, align 8
  %i.me = add i64 %i.mc, 9                        ; 2 uses
  %i.mf = load i64, ptr %i.d, align 8             ; 2 uses
  %i.mg = icmp ult i64 %i.mf, %i.me
  br i1 %i.mg, label %.lr.ph.i.i234, label %._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i231

._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i231: ; preds = %_ZN2v88internal15GDBJITInterface6Writer5WriteIlEEvRKT_.exit
  %.pre2.i233 = load ptr, ptr %.phi.trans.insert.i.i, align 8
  br label %_ZN2v88internal15GDBJITInterface6Writer5WriteIhEEvRKT_.exit237

.lr.ph.i.i234:                                    ; preds = %_ZN2v88internal15GDBJITInterface6Writer5WriteIlEEvRKT_.exit, %.lr.ph.i.i234
  %i.mh = phi i64 [ %i.mi, %.lr.ph.i.i234 ], [ %i.mf, %_ZN2v88internal15GDBJITInterface6Writer5WriteIlEEvRKT_.exit ]
  %i.mi = shl i64 %i.mh, 1                        ; 4 uses
  %i.mj = icmp ult i64 %i.mi, %i.me
  br i1 %i.mj, label %.lr.ph.i.i234, label %_ZN2v84base7ReallocEPvm.exit.i.i235, !llvm.loop !5

_ZN2v84base7ReallocEPvm.exit.i.i235:              ; preds = %.lr.ph.i.i234
  store i64 %i.mi, ptr %i.d, align 8
  %i.mk = load ptr, ptr %.phi.trans.insert.i.i, align 8
  %i.ml = call noundef ptr @realloc(ptr noundef %i.mk, i64 noundef %i.mi) #24 ; 2 uses
  store ptr %i.ml, ptr %.phi.trans.insert.i.i, align 8
  %.pre.i236 = load i64, ptr %i.a, align 8
  br label %_ZN2v88internal15GDBJITInterface6Writer5WriteIhEEvRKT_.exit237

_ZN2v88internal15GDBJITInterface6Writer5WriteIhEEvRKT_.exit237: ; preds = %._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i231, %_ZN2v84base7ReallocEPvm.exit.i.i235
  %i.mm = phi ptr [ %.pre2.i233, %._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i231 ], [ %i.ml, %_ZN2v84base7ReallocEPvm.exit.i.i235 ]
  %i.mn = phi i64 [ %i.md, %._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i231 ], [ %.pre.i236, %_ZN2v84base7ReallocEPvm.exit.i.i235 ]
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mm, i64 %i.mn
  store i8 1, ptr %i.mo, align 1
  %i.mp = load i64, ptr %i.a, align 8
  %i.mq = add i64 %i.mp, 1
  store i64 %i.mq, ptr %i.a, align 8
  %i.mr = load ptr, ptr %i.hm, align 8
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 16
  %i.mt = load ptr, ptr %i.ms, align 8            ; 5 uses
  %i.mu = load ptr, ptr %i.mt, align 8            ; 18 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mt, i64 8 ; 4 uses
  %i.mw = load ptr, ptr %i.mv, align 8            ; 7 uses
  %i.mx = icmp eq ptr %i.mu, %i.mw
  br i1 %i.mx, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN2v88internal15GDBJITInterface8LineInfo6PCInfoESt6vectorIS6_SaIS6_EEEEPFbRKS6_SD_EEvT_SG_T0_.exit, label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal15GDBJITInterface6Writer5WriteIhEEvRKT_.exit237
  %i.my = ptrtoint ptr %i.mw to i64
  %i.mz = ptrtoint ptr %i.mu to i64               ; 2 uses
  %i.na = sub i64 %i.my, %i.mz                    ; 2 uses
  %i.nb = ashr exact i64 %i.na, 4
  %i.nc = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.nb, i1 true)
  %i.nd = shl nuw nsw i64 %i.nc, 1
  %i.ne = xor i64 %i.nd, 126
  call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN2v88internal15GDBJITInterface8LineInfo6PCInfoESt6vectorIS6_SaIS6_EEEElNS0_5__ops15_Iter_comp_iterIPFbRKS6_SF_EEEEvT_SJ_T0_T1_(ptr %i.mu, ptr %i.mw, i64 noundef %i.ne, ptr nonnull @_ZN2v88internal15GDBJITInterface16DebugLineSection13ComparePCInfoERKNS1_8LineInfo6PCInfoES6_)
  %i.nf = icmp sgt i64 %i.na, 256
  %scevgep.i = getelementptr i8, ptr %i.mu, i64 16 ; 3 uses
  br i1 %i.nf, label %.lr.ph.i.i329, label %bb.p

.lr.ph.i.i329:                                    ; preds = %bb.e
  %i.ng = getelementptr inbounds nuw i8, ptr %i.mu, i64 12
  br label %bb.f

bb.f:                                             ; preds = %bb.m, %.lr.ph.i.i329
  %.sroa.0.020.i.idx.i = phi i64 [ 16, %.lr.ph.i.i329 ], [ %.sroa.0.020.i.add.i, %bb.m ] ; 4 uses
  %.pn19.i.i = phi ptr [ %i.mu, %.lr.ph.i.i329 ], [ %.sroa.0.020.i.ptr.i, %bb.m ] ; 4 uses
  %.sroa.0.020.i.ptr.i = getelementptr inbounds nuw i8, ptr %i.mu, i64 %.sroa.0.020.i.idx.i ; 9 uses
  %i.nh = load i64, ptr %.sroa.0.020.i.ptr.i, align 8 ; 7 uses
  %i.ni = load i64, ptr %i.mu, align 8            ; 2 uses
  %i.nj = icmp eq i64 %i.nh, %i.ni
  br i1 %i.nj, label %bb.g, label %_ZN2v88internal15GDBJITInterface16DebugLineSection13ComparePCInfoERKNS1_8LineInfo6PCInfoES6_.exit353

bb.g:                                             ; preds = %bb.f
  %i.nk = getelementptr inbounds nuw i8, ptr %.sroa.0.020.i.ptr.i, i64 12
  %i.nl = load i8, ptr %i.nk, align 4, !range !11, !noundef !12 ; 2 uses
  %i.nm = load i8, ptr %i.ng, align 4, !range !11, !noundef !12 ; 2 uses
  %.not.i352 = icmp eq i8 %i.nl, %i.nm
  %i.nn = trunc nuw i8 %i.nm to i1
  %or.cond414.not = select i1 %.not.i352, i1 true, i1 %i.nn
  br i1 %or.cond414.not, label %_ZN2v88internal15GDBJITInterface16DebugLineSection13ComparePCInfoERKNS1_8LineInfo6PCInfoES6_.exit353.thread, label %bb.h

_ZN2v88internal15GDBJITInterface16DebugLineSection13ComparePCInfoERKNS1_8LineInfo6PCInfoES6_.exit353: ; preds = %bb.f
  %i.no = icmp slt i64 %i.nh, %i.ni
  br i1 %i.no, label %bb.h, label %_ZN2v88internal15GDBJITInterface16DebugLineSection13ComparePCInfoERKNS1_8LineInfo6PCInfoES6_.exit353._ZN2v88internal15GDBJITInterface16DebugLineSection13ComparePCInfoERKNS1_8LineInfo6PCInfoES6_.exit353.thread_crit_edge

_ZN2v88internal15GDBJITInterface16DebugLineSection13ComparePCInfoERKNS1_8LineInfo6PCInfoES6_.exit353._ZN2v88internal15GDBJITInterface16DebugLineSection13ComparePCInfoERKNS1_8LineInfo6PCInfoES6_.exit353.thread_crit_edge: ; preds = %_ZN2v88internal15GDBJITInterface16DebugLineSection13ComparePCInfoERKNS1_8LineInfo6PCInfoES6_.exit353
  %.sroa.6384.0..sroa.0.020.i.ptr.i.sroa_idx.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.sroa.0.020.i.ptr.i, i64 12
  %.sroa.6384.0.copyload.pre = load i8, ptr %.sroa.6384.0..sroa.0.020.i.ptr.i.sroa_idx.phi.trans.insert, align 4
  br label %_ZN2v88internal15GDBJITInterface16DebugLineSection13ComparePCInfoERKNS1_8LineInfo6PCInfoES6_.exit353.thread

bb.h:                                             ; preds = %bb.g, %_ZN2v88internal15GDBJITInterface16DebugLineSection13ComparePCInfoERKNS1_8LineInfo6PCInfoES6_.exit353
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.020.i.ptr.i, i64 16, i1 false)
  %i.np = icmp samesign ugt i64 %.sroa.0.020.i.idx.i, 16
  br i1 %i.np, label %bb.i, label %bb.j, !prof !58

bb.i:                                             ; preds = %bb.h
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i, ptr noundef nonnull align 8 dereferenceable(1) %i.mu, i64 %.sroa.0.020.i.idx.i, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN2v88internal15GDBJITInterface8LineInfo6PCInfoESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i

bb.j:                                             ; preds = %bb.h
  %i.nq = getelementptr inbounds nuw i8, ptr %.pn19.i.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.nq, ptr noundef nonnull align 8 dereferenceable(13) %i.mu, i64 13, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN2v88internal15GDBJITInterface8LineInfo6PCInfoESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN2v88internal15GDBJITInterface8LineInfo6PCInfoESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i: ; preds = %bb.j, %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.mu, ptr noundef nonnull align 8 dereferenceable(13) %3, i64 13, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %bb.m

_ZN2v88internal15GDBJITInterface16DebugLineSection13ComparePCInfoERKNS1_8LineInfo6PCInfoES6_.exit353.thread: ; preds = %_ZN2v88internal15GDBJITInterface16DebugLineSection13ComparePCInfoERKNS1_8LineInfo6PCInfoES6_.exit353._ZN2v88internal15GDBJITInterface16DebugLineSection13ComparePCInfoERKNS1_8LineInfo6PCInfoES6_.exit353.thread_crit_edge, %bb.g
  %.sroa.6384.0.copyload = phi i8 [ %.sroa.6384.0.copyload.pre, %_ZN2v88internal15GDBJITInterface16DebugLineSection13ComparePCInfoERKNS1_8LineInfo6PCInfoES6_.exit353._ZN2v88internal15GDBJITInterface16DebugLineSection13ComparePCInfoERKNS1_8LineInfo6PCInfoES6_.exit353.thread_crit_edge ], [ %i.nl, %bb.g ] ; 3 uses
  %.sroa.6.0..sroa.0.020.i.ptr.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.020.i.ptr.i, i64 8
  %.sroa.6.0.copyload = load i32, ptr %.sroa.6.0..sroa.0.020.i.ptr.i.sroa_idx, align 8
  %i.nr = load i64, ptr %.pn19.i.i, align 8       ; 2 uses
  %i.ns = icmp eq i64 %i.nh, %i.nr
  br i1 %i.ns, label %bb.k, label %_ZN2v88internal15GDBJITInterface16DebugLineSection13ComparePCInfoERKNS1_8LineInfo6PCInfoES6_.exit350

bb.k:                                             ; preds = %_ZN2v88internal15GDBJITInterface16DebugLineSection13ComparePCInfoERKNS1_8LineInfo6PCInfoES6_.exit353.thread
  %i.nt = getelementptr inbounds nuw i8, ptr %.pn19.i.i, i64 12
  %i.nu = load i8, ptr %i.nt, align 4, !range !11, !noundef !12 ; 2 uses
  %.not.i349 = icmp eq i8 %.sroa.6384.0.copyload, %i.nu
  %i.nv = trunc nuw i8 %i.nu to i1
  %or.cond416.not = select i1 %.not.i349, i1 true, i1 %i.nv
  br i1 %or.cond416.not, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN2v88internal15GDBJITInterface8LineInfo6PCInfoESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIPFbRKS6_SF_EEEEvT_T0_.exit.i.i, label %.lr.ph.i.i.i330.preheader

_ZN2v88internal15GDBJITInterface16DebugLineSection13ComparePCInfoERKNS1_8LineInfo6PCInfoES6_.exit350: ; preds = %_ZN2v88internal15GDBJITInterface16DebugLineSection13ComparePCInfoERKNS1_8LineInfo6PCInfoES6_.exit353.thread
  %i.nw = icmp slt i64 %i.nh, %i.nr
  br i1 %i.nw, label %.lr.ph.i.i.i330.preheader, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN2v88internal15GDBJITInterface8LineInfo6PCInfoESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIPFbRKS6_SF_EEEEvT_T0_.exit.i.i

.lr.ph.i.i.i330.preheader:                        ; preds = %_ZN2v88internal15GDBJITInterface16DebugLineSection13ComparePCInfoERKNS1_8LineInfo6PCInfoES6_.exit350, %bb.k
  br label %.lr.ph.i.i.i330

.lr.ph.i.i.i330:                                  ; preds = %.lr.ph.i.i.i330.backedge, %.lr.ph.i.i.i330.preheader
  %.sroa.0.09.i.i.i = phi ptr [ %.pn19.i.i, %.lr.ph.i.i.i330.preheader ], [ %.sroa.0.0.i.i.i, %.lr.ph.i.i.i330.backedge ] ; 6 uses
  %.sroa.04.08.i.i.i = phi ptr [ %.sroa.0.020.i.ptr.i, %.lr.ph.i.i.i330.preheader ], [ %.sroa.0.09.i.i.i, %.lr.ph.i.i.i330.backedge ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %.sroa.04.08.i.i.i, ptr noundef nonnull align 8 dereferenceable(13) %.sroa.0.09.i.i.i, i64 13, i1 false)
  %.sroa.0.0.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.09.i.i.i, i64 -16 ; 2 uses
  %i.nx = load i64, ptr %.sroa.0.0.i.i.i, align 8 ; 2 uses
  %i.ny = icmp eq i64 %i.nh, %i.nx
  br i1 %i.ny, label %bb.l, label %_ZN2v88internal15GDBJITInterface16DebugLineSection13ComparePCInfoERKNS1_8LineInfo6PCInfoES6_.exit347

bb.l:                                             ; preds = %.lr.ph.i.i.i330
  %i.nz = getelementptr inbounds i8, ptr %.sroa.0.09.i.i.i, i64 -4
  %i.oa = load i8, ptr %i.nz, align 4, !range !11, !noundef !12 ; 2 uses
  %.not.i346 = icmp eq i8 %.sroa.6384.0.copyload, %i.oa
  %i.ob = trunc nuw i8 %i.oa to i1
  %or.cond418.not = select i1 %.not.i346, i1 true, i1 %i.ob
  br i1 %or.cond418.not, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN2v88internal15GDBJITInterface8LineInfo6PCInfoESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIPFbRKS6_SF_EEEEvT_T0_.exit.i.i, label %.lr.ph.i.i.i330.backedge

_ZN2v88internal15GDBJITInterface16DebugLineSection13ComparePCInfoERKNS1_8LineInfo6PCInfoES6_.exit347: ; preds = %.lr.ph.i.i.i330
  %i.oc = icmp slt i64 %i.nh, %i.nx
  br i1 %i.oc, label %.lr.ph.i.i.i330.backedge, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN2v88internal15GDBJITInterface8LineInfo6PCInfoESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIPFbRKS6_SF_EEEEvT_T0_.exit.i.i

.lr.ph.i.i.i330.backedge:                         ; preds = %_ZN2v88internal15GDBJITInterface16DebugLineSection13ComparePCInfoERKNS1_8LineInfo6PCInfoES6_.exit347, %bb.l
  br label %.lr.ph.i.i.i330, !llvm.loop !59

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN2v88internal15GDBJITInterface8LineInfo6PCInfoESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIPFbRKS6_SF_EEEEvT_T0_.exit.i.i: ; preds = %bb.l, %_ZN2v88internal15GDBJITInterface16DebugLineSection13ComparePCInfoERKNS1_8LineInfo6PCInfoES6_.exit347, %bb.k, %_ZN2v88internal15GDBJITInterface16DebugLineSection13ComparePCInfoERKNS1_8LineInfo6PCInfoES6_.exit350
  %.sroa.04.0.lcssa.i.i.i = phi ptr [ %.sroa.0.020.i.ptr.i, %_ZN2v88internal15GDBJITInterface16DebugLineSection13ComparePCInfoERKNS1_8LineInfo6PCInfoES6_.exit350 ], [ %.sroa.0.020.i.ptr.i, %bb.k ], [ %.sroa.0.09.i.i.i, %_ZN2v88internal15GDBJITInterface16DebugLineSection13ComparePCInfoERKNS1_8LineInfo6PCInfoES6_.exit347 ], [ %.sroa.0.09.i.i.i, %bb.l ] ; 3 uses
  store i64 %i.nh, ptr %.sroa.04.0.lcssa.i.i.i, align 8
  %.sroa.6.0..sroa.04.0.lcssa.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.04.0.lcssa.i.i.i, i64 8
  store i32 %.sroa.6.0.copyload, ptr %.sroa.6.0..sroa.04.0.lcssa.i.i.i.sroa_idx, align 8
  %.sroa.6384.0..sroa.04.0.lcssa.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.04.0.lcssa.i.i.i, i64 12
  store i8 %.sroa.6384.0.copyload, ptr %.sroa.6384.0..sroa.04.0.lcssa.i.i.i.sroa_idx, align 4
  br label %bb.m

bb.m:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN2v88internal15GDBJITInterface8LineInfo6PCInfoESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIPFbRKS6_SF_EEEEvT_T0_.exit.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN2v88internal15GDBJITInterface8LineInfo6PCInfoESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i
  %.sroa.0.020.i.add.i = add nuw nsw i64 %.sroa.0.020.i.idx.i, 16 ; 2 uses
  %i.od = icmp eq i64 %.sroa.0.020.i.add.i, 256
  br i1 %i.od, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN2v88internal15GDBJITInterface8LineInfo6PCInfoESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS6_SF_EEEEvT_SJ_T0_.exit.i, label %bb.f, !llvm.loop !60

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN2v88internal15GDBJITInterface8LineInfo6PCInfoESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS6_SF_EEEEvT_SJ_T0_.exit.i: ; preds = %bb.m
  %i.oe = getelementptr inbounds nuw i8, ptr %i.mu, i64 256 ; 2 uses
  %i.of = icmp eq ptr %i.oe, %i.mw
  br i1 %i.of, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN2v88internal15GDBJITInterface8LineInfo6PCInfoESt6vectorIS6_SaIS6_EEEEPFbRKS6_SD_EEvT_SG_T0_.exit, label %.lr.ph.i10.i

.lr.ph.i10.i:                                     ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN2v88internal15GDBJITInterface8LineInfo6PCInfoESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS6_SF_EEEEvT_SJ_T0_.exit.i, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN2v88internal15GDBJITInterface8LineInfo6PCInfoESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIPFbRKS6_SF_EEEEvT_T0_.exit.i11.i
  %.sroa.0.07.i.i = phi ptr [ %i.os, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN2v88internal15GDBJITInterface8LineInfo6PCInfoESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIPFbRKS6_SF_EEEEvT_T0_.exit.i11.i ], [ %i.oe, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN2v88internal15GDBJITInterface8LineInfo6PCInfoESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS6_SF_EEEEvT_SJ_T0_.exit.i ] ; 9 uses
  %.sroa.0387.0.copyload = load i64, ptr %.sroa.0.07.i.i, align 8 ; 5 uses
  %.sroa.6390.0..sroa.0.07.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i, i64 8
  %.sroa.6390.0.copyload = load i32, ptr %.sroa.6390.0..sroa.0.07.i.i.sroa_idx, align 8
  %.sroa.6392.0..sroa.0.07.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i, i64 12
  %.sroa.6392.0.copyload = load i8, ptr %.sroa.6392.0..sroa.0.07.i.i.sroa_idx, align 4 ; 3 uses
  %.sroa.0.07.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.07.i.i, i64 -16 ; 2 uses
  %i.og = load i64, ptr %.sroa.0.07.i.i.i, align 8 ; 2 uses
  %i.oh = icmp eq i64 %.sroa.0387.0.copyload, %i.og
  br i1 %i.oh, label %bb.n, label %_ZN2v88internal15GDBJITInterface16DebugLineSection13ComparePCInfoERKNS1_8LineInfo6PCInfoES6_.exit344

bb.n:                                             ; preds = %.lr.ph.i10.i
  %i.oi = getelementptr inbounds i8, ptr %.sroa.0.07.i.i, i64 -4
  %i.oj = load i8, ptr %i.oi, align 4, !range !11, !noundef !12 ; 2 uses
  %.not.i343 = icmp eq i8 %.sroa.6392.0.copyload, %i.oj
  %i.ok = trunc nuw i8 %i.oj to i1
  %or.cond420.not = select i1 %.not.i343, i1 true, i1 %i.ok
  br i1 %or.cond420.not, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN2v88internal15GDBJITInterface8LineInfo6PCInfoESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIPFbRKS6_SF_EEEEvT_T0_.exit.i11.i, label %.lr.ph.i.i13.i.preheader

_ZN2v88internal15GDBJITInterface16DebugLineSection13ComparePCInfoERKNS1_8LineInfo6PCInfoES6_.exit344: ; preds = %.lr.ph.i10.i
  %i.ol = icmp slt i64 %.sroa.0387.0.copyload, %i.og
  br i1 %i.ol, label %.lr.ph.i.i13.i.preheader, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN2v88internal15GDBJITInterface8LineInfo6PCInfoESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIPFbRKS6_SF_EEEEvT_T0_.exit.i11.i

.lr.ph.i.i13.i.preheader:                         ; preds = %_ZN2v88internal15GDBJITInterface16DebugLineSection13ComparePCInfoERKNS1_8LineInfo6PCInfoES6_.exit344, %bb.n
  br label %.lr.ph.i.i13.i

.lr.ph.i.i13.i:                                   ; preds = %.lr.ph.i.i13.i.backedge, %.lr.ph.i.i13.i.preheader
  %.sroa.0.09.i.i14.i = phi ptr [ %.sroa.0.07.i.i.i, %.lr.ph.i.i13.i.preheader ], [ %.sroa.0.0.i.i16.i, %.lr.ph.i.i13.i.backedge ] ; 6 uses
  %.sroa.04.08.i.i15.i = phi ptr [ %.sroa.0.07.i.i, %.lr.ph.i.i13.i.preheader ], [ %.sroa.0.09.i.i14.i, %.lr.ph.i.i13.i.backedge ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %.sroa.04.08.i.i15.i, ptr noundef nonnull align 8 dereferenceable(13) %.sroa.0.09.i.i14.i, i64 13, i1 false)
  %.sroa.0.0.i.i16.i = getelementptr inbounds i8, ptr %.sroa.0.09.i.i14.i, i64 -16 ; 2 uses
  %i.om = load i64, ptr %.sroa.0.0.i.i16.i, align 8 ; 2 uses
  %i.on = icmp eq i64 %.sroa.0387.0.copyload, %i.om
  br i1 %i.on, label %bb.o, label %_ZN2v88internal15GDBJITInterface16DebugLineSection13ComparePCInfoERKNS1_8LineInfo6PCInfoES6_.exit341

bb.o:                                             ; preds = %.lr.ph.i.i13.i
  %i.oo = getelementptr inbounds i8, ptr %.sroa.0.09.i.i14.i, i64 -4
  %i.op = load i8, ptr %i.oo, align 4, !range !11, !noundef !12 ; 2 uses
  %.not.i340 = icmp eq i8 %.sroa.6392.0.copyload, %i.op
  %i.oq = trunc nuw i8 %i.op to i1
  %or.cond422.not = select i1 %.not.i340, i1 true, i1 %i.oq
  br i1 %or.cond422.not, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN2v88internal15GDBJITInterface8LineInfo6PCInfoESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIPFbRKS6_SF_EEEEvT_T0_.exit.i11.i, label %.lr.ph.i.i13.i.backedge

_ZN2v88internal15GDBJITInterface16DebugLineSection13ComparePCInfoERKNS1_8LineInfo6PCInfoES6_.exit341: ; preds = %.lr.ph.i.i13.i
  %i.or = icmp slt i64 %.sroa.0387.0.copyload, %i.om
  br i1 %i.or, label %.lr.ph.i.i13.i.backedge, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN2v88internal15GDBJITInterface8LineInfo6PCInfoESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIPFbRKS6_SF_EEEEvT_T0_.exit.i11.i

.lr.ph.i.i13.i.backedge:                          ; preds = %_ZN2v88internal15GDBJITInterface16DebugLineSection13ComparePCInfoERKNS1_8LineInfo6PCInfoES6_.exit341, %bb.o
  br label %.lr.ph.i.i13.i, !llvm.loop !59

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN2v88internal15GDBJITInterface8LineInfo6PCInfoESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIPFbRKS6_SF_EEEEvT_T0_.exit.i11.i: ; preds = %bb.o, %_ZN2v88internal15GDBJITInterface16DebugLineSection13ComparePCInfoERKNS1_8LineInfo6PCInfoES6_.exit341, %bb.n, %_ZN2v88internal15GDBJITInterface16DebugLineSection13ComparePCInfoERKNS1_8LineInfo6PCInfoES6_.exit344
  %.sroa.04.0.lcssa.i.i12.i = phi ptr [ %.sroa.0.07.i.i, %_ZN2v88internal15GDBJITInterface16DebugLineSection13ComparePCInfoERKNS1_8LineInfo6PCInfoES6_.exit344 ], [ %.sroa.0.07.i.i, %bb.n ], [ %.sroa.0.09.i.i14.i, %_ZN2v88internal15GDBJITInterface16DebugLineSection13ComparePCInfoERKNS1_8LineInfo6PCInfoES6_.exit341 ], [ %.sroa.0.09.i.i14.i, %bb.o ] ; 3 uses
  store i64 %.sroa.0387.0.copyload, ptr %.sroa.04.0.lcssa.i.i12.i, align 8
  %.sroa.6390.0..sroa.04.0.lcssa.i.i12.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.04.0.lcssa.i.i12.i, i64 8
  store i32 %.sroa.6390.0.copyload, ptr %.sroa.6390.0..sroa.04.0.lcssa.i.i12.i.sroa_idx, align 8
  %.sroa.6392.0..sroa.04.0.lcssa.i.i12.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.04.0.lcssa.i.i12.i, i64 12
  store i8 %.sroa.6392.0.copyload, ptr %.sroa.6392.0..sroa.04.0.lcssa.i.i12.i.sroa_idx, align 4
  %i.os = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i, i64 16 ; 2 uses
  %i.ot = icmp eq ptr %i.os, %i.mw
  br i1 %i.ot, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN2v88internal15GDBJITInterface8LineInfo6PCInfoESt6vectorIS6_SaIS6_EEEEPFbRKS6_SD_EEvT_SG_T0_.exit, label %.lr.ph.i10.i, !llvm.loop !61

bb.p:                                             ; preds = %bb.e
  %i.ou = icmp eq ptr %scevgep.i, %i.mw
  br i1 %i.ou, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN2v88internal15GDBJITInterface8LineInfo6PCInfoESt6vectorIS6_SaIS6_EEEEPFbRKS6_SD_EEvT_SG_T0_.exit, label %.lr.ph.i19.i.preheader

.lr.ph.i19.i.preheader:                           ; preds = %bb.p
  %i.ov = getelementptr inbounds nuw i8, ptr %i.mu, i64 12
  br label %.lr.ph.i19.i

.lr.ph.i19.i:                                     ; preds = %.lr.ph.i19.i.preheader, %bb.x
  %.sroa.0.020.i20.i = phi ptr [ %.sroa.0.0.i24.i, %bb.x ], [ %scevgep.i, %.lr.ph.i19.i.preheader ] ; 11 uses
  %.pn19.i21.i = phi ptr [ %.sroa.0.020.i20.i, %bb.x ], [ %i.mu, %.lr.ph.i19.i.preheader ] ; 5 uses
  %i.ow = load i64, ptr %.sroa.0.020.i20.i, align 8 ; 7 uses
  %i.ox = load i64, ptr %i.mu, align 8            ; 2 uses
  %i.oy = icmp eq i64 %i.ow, %i.ox
  br i1 %i.oy, label %bb.q, label %_ZN2v88internal15GDBJITInterface16DebugLineSection13ComparePCInfoERKNS1_8LineInfo6PCInfoES6_.exit338

bb.q:                                             ; preds = %.lr.ph.i19.i
  %i.oz = getelementptr inbounds nuw i8, ptr %.sroa.0.020.i20.i, i64 12
  %i.pa = load i8, ptr %i.oz, align 4, !range !11, !noundef !12 ; 2 uses
  %i.pb = load i8, ptr %i.ov, align 4, !range !11, !noundef !12 ; 2 uses
  %.not.i337 = icmp eq i8 %i.pa, %i.pb
  %i.pc = trunc nuw i8 %i.pb to i1
  %or.cond424.not = select i1 %.not.i337, i1 true, i1 %i.pc
  br i1 %or.cond424.not, label %_ZN2v88internal15GDBJITInterface16DebugLineSection13ComparePCInfoERKNS1_8LineInfo6PCInfoES6_.exit338.thread, label %bb.r

_ZN2v88internal15GDBJITInterface16DebugLineSection13ComparePCInfoERKNS1_8LineInfo6PCInfoES6_.exit338: ; preds = %.lr.ph.i19.i
  %i.pd = icmp slt i64 %i.ow, %i.ox
  br i1 %i.pd, label %bb.r, label %_ZN2v88internal15GDBJITInterface16DebugLineSection13ComparePCInfoERKNS1_8LineInfo6PCInfoES6_.exit338._ZN2v88internal15GDBJITInterface16DebugLineSection13ComparePCInfoERKNS1_8LineInfo6PCInfoES6_.exit338.thread_crit_edge

_ZN2v88internal15GDBJITInterface16DebugLineSection13ComparePCInfoERKNS1_8LineInfo6PCInfoES6_.exit338._ZN2v88internal15GDBJITInterface16DebugLineSection13ComparePCInfoERKNS1_8LineInfo6PCInfoES6_.exit338.thread_crit_edge: ; preds = %_ZN2v88internal15GDBJITInterface16DebugLineSection13ComparePCInfoERKNS1_8LineInfo6PCInfoES6_.exit338
  %.sroa.6401.0..sroa.0.020.i20.i.sroa_idx.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.sroa.0.020.i20.i, i64 12
  %.sroa.6401.0.copyload.pre = load i8, ptr %.sroa.6401.0..sroa.0.020.i20.i.sroa_idx.phi.trans.insert, align 4
  br label %_ZN2v88internal15GDBJITInterface16DebugLineSection13ComparePCInfoERKNS1_8LineInfo6PCInfoES6_.exit338.thread

bb.r:                                             ; preds = %bb.q, %_ZN2v88internal15GDBJITInterface16DebugLineSection13ComparePCInfoERKNS1_8LineInfo6PCInfoES6_.exit338
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.020.i20.i, i64 16, i1 false)
  %i.pe = ptrtoint ptr %.sroa.0.020.i20.i to i64
  %i.pf = sub i64 %i.pe, %i.mz                    ; 3 uses
  %i.pg = ashr exact i64 %i.pf, 4                 ; 2 uses
  %i.ph = icmp sgt i64 %i.pg, 1
  br i1 %i.ph, label %bb.s, label %bb.t, !prof !58

bb.s:                                             ; preds = %bb.r
  %i.pi = getelementptr inbounds nuw i8, ptr %.pn19.i21.i, i64 32
  %i.pj = sub nsw i64 0, %i.pg
  %i.pk = getelementptr inbounds [16 x i8], ptr %i.pi, i64 %i.pj
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.pk, ptr noundef nonnull align 8 dereferenceable(1) %i.mu, i64 %i.pf, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN2v88internal15GDBJITInterface8LineInfo6PCInfoESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i29.i

bb.t:                                             ; preds = %bb.r
  %i.pl = icmp eq i64 %i.pf, 16
  br i1 %i.pl, label %bb.u, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN2v88internal15GDBJITInterface8LineInfo6PCInfoESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i29.i

bb.u:                                             ; preds = %bb.t
  %i.pm = getelementptr inbounds nuw i8, ptr %.pn19.i21.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.pm, ptr noundef nonnull align 8 dereferenceable(13) %i.mu, i64 13, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN2v88internal15GDBJITInterface8LineInfo6PCInfoESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i29.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN2v88internal15GDBJITInterface8LineInfo6PCInfoESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i29.i: ; preds = %bb.u, %bb.t, %bb.s
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.mu, ptr noundef nonnull align 8 dereferenceable(13) %2, i64 13, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %bb.x

_ZN2v88internal15GDBJITInterface16DebugLineSection13ComparePCInfoERKNS1_8LineInfo6PCInfoES6_.exit338.thread: ; preds = %_ZN2v88internal15GDBJITInterface16DebugLineSection13ComparePCInfoERKNS1_8LineInfo6PCInfoES6_.exit338._ZN2v88internal15GDBJITInterface16DebugLineSection13ComparePCInfoERKNS1_8LineInfo6PCInfoES6_.exit338.thread_crit_edge, %bb.q
  %.sroa.6401.0.copyload = phi i8 [ %.sroa.6401.0.copyload.pre, %_ZN2v88internal15GDBJITInterface16DebugLineSection13ComparePCInfoERKNS1_8LineInfo6PCInfoES6_.exit338._ZN2v88internal15GDBJITInterface16DebugLineSection13ComparePCInfoERKNS1_8LineInfo6PCInfoES6_.exit338.thread_crit_edge ], [ %i.pa, %bb.q ] ; 3 uses
  %.sroa.6399.0..sroa.0.020.i20.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.020.i20.i, i64 8
  %.sroa.6399.0.copyload = load i32, ptr %.sroa.6399.0..sroa.0.020.i20.i.sroa_idx, align 8
  %i.pn = load i64, ptr %.pn19.i21.i, align 8     ; 2 uses
  %i.po = icmp eq i64 %i.ow, %i.pn
  br i1 %i.po, label %bb.v, label %_ZN2v88internal15GDBJITInterface16DebugLineSection13ComparePCInfoERKNS1_8LineInfo6PCInfoES6_.exit335

bb.v:                                             ; preds = %_ZN2v88internal15GDBJITInterface16DebugLineSection13ComparePCInfoERKNS1_8LineInfo6PCInfoES6_.exit338.thread
  %i.pp = getelementptr inbounds nuw i8, ptr %.pn19.i21.i, i64 12
  %i.pq = load i8, ptr %i.pp, align 4, !range !11, !noundef !12 ; 2 uses
  %.not.i334 = icmp eq i8 %.sroa.6401.0.copyload, %i.pq
  %i.pr = trunc nuw i8 %i.pq to i1
  %or.cond426.not = select i1 %.not.i334, i1 true, i1 %i.pr
  br i1 %or.cond426.not, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN2v88internal15GDBJITInterface8LineInfo6PCInfoESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIPFbRKS6_SF_EEEEvT_T0_.exit.i22.i, label %.lr.ph.i.i25.i.preheader

_ZN2v88internal15GDBJITInterface16DebugLineSection13ComparePCInfoERKNS1_8LineInfo6PCInfoES6_.exit335: ; preds = %_ZN2v88internal15GDBJITInterface16DebugLineSection13ComparePCInfoERKNS1_8LineInfo6PCInfoES6_.exit338.thread
  %i.ps = icmp slt i64 %i.ow, %i.pn
  br i1 %i.ps, label %.lr.ph.i.i25.i.preheader, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN2v88internal15GDBJITInterface8LineInfo6PCInfoESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIPFbRKS6_SF_EEEEvT_T0_.exit.i22.i

.lr.ph.i.i25.i.preheader:                         ; preds = %_ZN2v88internal15GDBJITInterface16DebugLineSection13ComparePCInfoERKNS1_8LineInfo6PCInfoES6_.exit335, %bb.v
  br label %.lr.ph.i.i25.i

.lr.ph.i.i25.i:                                   ; preds = %.lr.ph.i.i25.i.backedge, %.lr.ph.i.i25.i.preheader
  %.sroa.0.09.i.i26.i = phi ptr [ %.pn19.i21.i, %.lr.ph.i.i25.i.preheader ], [ %.sroa.0.0.i.i28.i, %.lr.ph.i.i25.i.backedge ] ; 6 uses
  %.sroa.04.08.i.i27.i = phi ptr [ %.sroa.0.020.i20.i, %.lr.ph.i.i25.i.preheader ], [ %.sroa.0.09.i.i26.i, %.lr.ph.i.i25.i.backedge ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %.sroa.04.08.i.i27.i, ptr noundef nonnull align 8 dereferenceable(13) %.sroa.0.09.i.i26.i, i64 13, i1 false)
  %.sroa.0.0.i.i28.i = getelementptr inbounds i8, ptr %.sroa.0.09.i.i26.i, i64 -16 ; 2 uses
  %i.pt = load i64, ptr %.sroa.0.0.i.i28.i, align 8 ; 2 uses
  %i.pu = icmp eq i64 %i.ow, %i.pt
  br i1 %i.pu, label %bb.w, label %_ZN2v88internal15GDBJITInterface16DebugLineSection13ComparePCInfoERKNS1_8LineInfo6PCInfoES6_.exit

bb.w:                                             ; preds = %.lr.ph.i.i25.i
  %i.pv = getelementptr inbounds i8, ptr %.sroa.0.09.i.i26.i, i64 -4
  %i.pw = load i8, ptr %i.pv, align 4, !range !11, !noundef !12 ; 2 uses
  %.not.i332 = icmp eq i8 %.sroa.6401.0.copyload, %i.pw
  %i.px = trunc nuw i8 %i.pw to i1
  %or.cond428.not = select i1 %.not.i332, i1 true, i1 %i.px
  br i1 %or.cond428.not, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN2v88internal15GDBJITInterface8LineInfo6PCInfoESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIPFbRKS6_SF_EEEEvT_T0_.exit.i22.i, label %.lr.ph.i.i25.i.backedge

_ZN2v88internal15GDBJITInterface16DebugLineSection13ComparePCInfoERKNS1_8LineInfo6PCInfoES6_.exit: ; preds = %.lr.ph.i.i25.i
  %i.py = icmp slt i64 %i.ow, %i.pt
  br i1 %i.py, label %.lr.ph.i.i25.i.backedge, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN2v88internal15GDBJITInterface8LineInfo6PCInfoESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIPFbRKS6_SF_EEEEvT_T0_.exit.i22.i

.lr.ph.i.i25.i.backedge:                          ; preds = %_ZN2v88internal15GDBJITInterface16DebugLineSection13ComparePCInfoERKNS1_8LineInfo6PCInfoES6_.exit, %bb.w
  br label %.lr.ph.i.i25.i, !llvm.loop !59

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN2v88internal15GDBJITInterface8LineInfo6PCInfoESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIPFbRKS6_SF_EEEEvT_T0_.exit.i22.i: ; preds = %bb.w, %_ZN2v88internal15GDBJITInterface16DebugLineSection13ComparePCInfoERKNS1_8LineInfo6PCInfoES6_.exit, %bb.v, %_ZN2v88internal15GDBJITInterface16DebugLineSection13ComparePCInfoERKNS1_8LineInfo6PCInfoES6_.exit335
  %.sroa.04.0.lcssa.i.i23.i = phi ptr [ %.sroa.0.020.i20.i, %_ZN2v88internal15GDBJITInterface16DebugLineSection13ComparePCInfoERKNS1_8LineInfo6PCInfoES6_.exit335 ], [ %.sroa.0.020.i20.i, %bb.v ], [ %.sroa.0.09.i.i26.i, %_ZN2v88internal15GDBJITInterface16DebugLineSection13ComparePCInfoERKNS1_8LineInfo6PCInfoES6_.exit ], [ %.sroa.0.09.i.i26.i, %bb.w ] ; 3 uses
  store i64 %i.ow, ptr %.sroa.04.0.lcssa.i.i23.i, align 8
  %.sroa.6399.0..sroa.04.0.lcssa.i.i23.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.04.0.lcssa.i.i23.i, i64 8
  store i32 %.sroa.6399.0.copyload, ptr %.sroa.6399.0..sroa.04.0.lcssa.i.i23.i.sroa_idx, align 8
  %.sroa.6401.0..sroa.04.0.lcssa.i.i23.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.04.0.lcssa.i.i23.i, i64 12
  store i8 %.sroa.6401.0.copyload, ptr %.sroa.6401.0..sroa.04.0.lcssa.i.i23.i.sroa_idx, align 4
  br label %bb.x

bb.x:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN2v88internal15GDBJITInterface8LineInfo6PCInfoESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIPFbRKS6_SF_EEEEvT_T0_.exit.i22.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN2v88internal15GDBJITInterface8LineInfo6PCInfoESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i29.i
  %.sroa.0.0.i24.i = getelementptr inbounds nuw i8, ptr %.sroa.0.020.i20.i, i64 16 ; 2 uses
  %i.pz = icmp eq ptr %.sroa.0.0.i24.i, %i.mw
  br i1 %i.pz, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN2v88internal15GDBJITInterface8LineInfo6PCInfoESt6vectorIS6_SaIS6_EEEEPFbRKS6_SD_EEvT_SG_T0_.exit, label %.lr.ph.i19.i, !llvm.loop !60

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN2v88internal15GDBJITInterface8LineInfo6PCInfoESt6vectorIS6_SaIS6_EEEEPFbRKS6_SD_EEvT_SG_T0_.exit: ; preds = %bb.x, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN2v88internal15GDBJITInterface8LineInfo6PCInfoESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIPFbRKS6_SF_EEEEvT_T0_.exit.i11.i, %bb.p, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN2v88internal15GDBJITInterface8LineInfo6PCInfoESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS6_SF_EEEEvT_SJ_T0_.exit.i, %_ZN2v88internal15GDBJITInterface6Writer5WriteIhEEvRKT_.exit237
  %i.qa = load ptr, ptr %i.mv, align 8
  %i.qb = load ptr, ptr %i.mt, align 8            ; 2 uses
  %.not471 = icmp eq ptr %i.qa, %i.qb
  br i1 %.not471, label %._crit_edge, label %_ZNSt6vectorIN2v88internal15GDBJITInterface8LineInfo6PCInfoESaIS4_EE2atEm.exit

._crit_edge:                                      ; preds = %_ZN2v88internal15GDBJITInterface15CodeDescription19GetScriptLineNumberEi.exit._crit_edge, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN2v88internal15GDBJITInterface8LineInfo6PCInfoESt6vectorIS6_SaIS6_EEEEPFbRKS6_SD_EEvT_SG_T0_.exit
  %.0.lcssa = phi i64 [ 0, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN2v88internal15GDBJITInterface8LineInfo6PCInfoESt6vectorIS6_SaIS6_EEEEPFbRKS6_SD_EEvT_SG_T0_.exit ], [ %.1, %_ZN2v88internal15GDBJITInterface15CodeDescription19GetScriptLineNumberEi.exit._crit_edge ]
  %i.qc = load i64, ptr %i.a, align 8             ; 2 uses
  %i.qd = add i64 %i.qc, 1                        ; 2 uses
  %i.qe = load i64, ptr %i.d, align 8             ; 2 uses
  %i.qf = icmp ult i64 %i.qe, %i.qd
  br i1 %i.qf, label %.lr.ph.i.i241, label %._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i238

._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i238: ; preds = %._crit_edge
  %.pre2.i240 = load ptr, ptr %.phi.trans.insert.i.i, align 8
  br label %_ZN2v88internal15GDBJITInterface6Writer5WriteIhEEvRKT_.exit244

.lr.ph.i.i241:                                    ; preds = %._crit_edge, %.lr.ph.i.i241
  %i.qg = phi i64 [ %i.qh, %.lr.ph.i.i241 ], [ %i.qe, %._crit_edge ]
  %i.qh = shl i64 %i.qg, 1                        ; 4 uses
  %i.qi = icmp ult i64 %i.qh, %i.qd
  br i1 %i.qi, label %.lr.ph.i.i241, label %_ZN2v84base7ReallocEPvm.exit.i.i242, !llvm.loop !5

_ZN2v84base7ReallocEPvm.exit.i.i242:              ; preds = %.lr.ph.i.i241
  store i64 %i.qh, ptr %i.d, align 8
  %i.qj = load ptr, ptr %.phi.trans.insert.i.i, align 8
  %i.qk = call noundef ptr @realloc(ptr noundef %i.qj, i64 noundef %i.qh) #24 ; 2 uses
  store ptr %i.qk, ptr %.phi.trans.insert.i.i, align 8
  %.pre.i243 = load i64, ptr %i.a, align 8
  br label %_ZN2v88internal15GDBJITInterface6Writer5WriteIhEEvRKT_.exit244

_ZN2v88internal15GDBJITInterface6Writer5WriteIhEEvRKT_.exit244: ; preds = %._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i238, %_ZN2v84base7ReallocEPvm.exit.i.i242
  %i.ql = phi ptr [ %.pre2.i240, %._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i238 ], [ %i.qk, %_ZN2v84base7ReallocEPvm.exit.i.i242 ]
  %i.qm = phi i64 [ %i.qc, %._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i238 ], [ %.pre.i243, %_ZN2v84base7ReallocEPvm.exit.i.i242 ]
  %i.qn = getelementptr inbounds nuw i8, ptr %i.ql, i64 %i.qm
  store i8 2, ptr %i.qn, align 1
  %i.qo = load i64, ptr %i.a, align 8
  %i.qp = add i64 %i.qo, 1                        ; 2 uses
  store i64 %i.qp, ptr %i.a, align 8
  %i.qq = load ptr, ptr %i.hm, align 8
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qq, i64 40
  %i.qs = load i64, ptr %i.qr, align 8
  %i.qt = sub i64 %i.qs, %.0.lcssa
  br label %bb.y

bb.y:                                             ; preds = %_ZN2v88internal15GDBJITInterface6Writer5WriteIaEEvRKT_.exit.i, %_ZN2v88internal15GDBJITInterface6Writer5WriteIhEEvRKT_.exit244
  %i.qu = phi i64 [ %i.qp, %_ZN2v88internal15GDBJITInterface6Writer5WriteIhEEvRKT_.exit244 ], [ %i.rn, %_ZN2v88internal15GDBJITInterface6Writer5WriteIaEEvRKT_.exit.i ] ; 2 uses
  %.014.i = phi i64 [ %i.qt, %_ZN2v88internal15GDBJITInterface6Writer5WriteIhEEvRKT_.exit244 ], [ %i.qy, %_ZN2v88internal15GDBJITInterface6Writer5WriteIaEEvRKT_.exit.i ] ; 2 uses
  %i.qv = trunc i64 %.014.i to i8
  %i.qw = and i8 %i.qv, 127                       ; 2 uses
  %i.qx = icmp samesign ugt i8 %i.qw, 63          ; 2 uses
  %i.qy = ashr i64 %.014.i, 7                     ; 3 uses
  %i.qz = icmp ne i64 %i.qy, 0
  %or.cond.i = select i1 %i.qz, i1 true, i1 %i.qx
  %or.cond.not.i = xor i1 %or.cond.i, true
  %i.ra = icmp eq i64 %i.qy, -1
  %or.cond3.i = select i1 %i.ra, i1 %i.qx, i1 false
  %or.cond11.i = select i1 %or.cond.not.i, i1 true, i1 %or.cond3.i ; 2 uses
  %masksel.i247 = select i1 %or.cond11.i, i8 0, i8 -128
  %spec.select.i = or disjoint i8 %masksel.i247, %i.qw
  %i.rb = add i64 %i.qu, 1                        ; 2 uses
  %i.rc = load i64, ptr %i.d, align 8             ; 2 uses
  %i.rd = icmp ult i64 %i.rc, %i.rb
  br i1 %i.rd, label %.lr.ph.i.i.i250, label %._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i.i248

._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i.i248: ; preds = %bb.y
  %.pre2.i.i249 = load ptr, ptr %.phi.trans.insert.i.i, align 8
  br label %_ZN2v88internal15GDBJITInterface6Writer5WriteIaEEvRKT_.exit.i

.lr.ph.i.i.i250:                                  ; preds = %bb.y, %.lr.ph.i.i.i250
  %i.re = phi i64 [ %i.rf, %.lr.ph.i.i.i250 ], [ %i.rc, %bb.y ]
  %i.rf = shl i64 %i.re, 1                        ; 4 uses
  %i.rg = icmp ult i64 %i.rf, %i.rb
  br i1 %i.rg, label %.lr.ph.i.i.i250, label %_ZN2v84base7ReallocEPvm.exit.i.i.i251, !llvm.loop !5

_ZN2v84base7ReallocEPvm.exit.i.i.i251:            ; preds = %.lr.ph.i.i.i250
  store i64 %i.rf, ptr %i.d, align 8
  %i.rh = load ptr, ptr %.phi.trans.insert.i.i, align 8
  %i.ri = call noundef ptr @realloc(ptr noundef %i.rh, i64 noundef %i.rf) #24 ; 2 uses
  store ptr %i.ri, ptr %.phi.trans.insert.i.i, align 8
  %.pre.i.i252 = load i64, ptr %i.a, align 8
  br label %_ZN2v88internal15GDBJITInterface6Writer5WriteIaEEvRKT_.exit.i

_ZN2v88internal15GDBJITInterface6Writer5WriteIaEEvRKT_.exit.i: ; preds = %_ZN2v84base7ReallocEPvm.exit.i.i.i251, %._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i.i248
  %i.rj = phi ptr [ %.pre2.i.i249, %._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i.i248 ], [ %i.ri, %_ZN2v84base7ReallocEPvm.exit.i.i.i251 ]
  %i.rk = phi i64 [ %i.qu, %._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i.i248 ], [ %.pre.i.i252, %_ZN2v84base7ReallocEPvm.exit.i.i.i251 ]
  %i.rl = getelementptr inbounds nuw i8, ptr %i.rj, i64 %i.rk
  store i8 %spec.select.i, ptr %i.rl, align 1
  %i.rm = load i64, ptr %i.a, align 8
  %i.rn = add i64 %i.rm, 1                        ; 2 uses
  store i64 %i.rn, ptr %i.a, align 8
  br i1 %or.cond11.i, label %_ZN2v88internal15GDBJITInterface6Writer12WriteSLEB128El.exit, label %bb.y, !llvm.loop !47

_ZN2v88internal15GDBJITInterface6Writer12WriteSLEB128El.exit: ; preds = %_ZN2v88internal15GDBJITInterface6Writer5WriteIaEEvRKT_.exit.i
  call void @_ZN2v88internal15GDBJITInterface16DebugLineSection19WriteExtendedOpcodeEPNS1_6WriterENS2_20DWARF2ExtendedOpcodeEm(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %1, i32 noundef 1, i64 noundef 0)
  %i.ro = load i64, ptr %i.a, align 8
  %i.rp = sub i64 %i.ro, %i.v
  %i.rq = trunc i64 %i.rp to i32
  %i.rr = load ptr, ptr %.phi.trans.insert.i.i, align 8
  %i.rs = getelementptr inbounds nuw i8, ptr %i.rr, i64 %i.b
  store i32 %i.rq, ptr %i.rs, align 1
  ret i1 true

_ZNSt6vectorIN2v88internal15GDBJITInterface8LineInfo6PCInfoESaIS4_EE2atEm.exit: ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN2v88internal15GDBJITInterface8LineInfo6PCInfoESt6vectorIS6_SaIS6_EEEEPFbRKS6_SD_EEvT_SG_T0_.exit, %_ZN2v88internal15GDBJITInterface15CodeDescription19GetScriptLineNumberEi.exit._crit_edge
  %i.rt = phi ptr [ %i.xt, %_ZN2v88internal15GDBJITInterface15CodeDescription19GetScriptLineNumberEi.exit._crit_edge ], [ %i.qb, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN2v88internal15GDBJITInterface8LineInfo6PCInfoESt6vectorIS6_SaIS6_EEEEPFbRKS6_SD_EEvT_SG_T0_.exit ]
  %.0470 = phi i64 [ %.1, %_ZN2v88internal15GDBJITInterface15CodeDescription19GetScriptLineNumberEi.exit._crit_edge ], [ 0, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN2v88internal15GDBJITInterface8LineInfo6PCInfoESt6vectorIS6_SaIS6_EEEEPFbRKS6_SD_EEvT_SG_T0_.exit ] ; 2 uses
  %.080469 = phi i64 [ %.181, %_ZN2v88internal15GDBJITInterface15CodeDescription19GetScriptLineNumberEi.exit._crit_edge ], [ 1, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN2v88internal15GDBJITInterface8LineInfo6PCInfoESt6vectorIS6_SaIS6_EEEEPFbRKS6_SD_EEvT_SG_T0_.exit ] ; 3 uses
  %.082468 = phi i8 [ %.2, %_ZN2v88internal15GDBJITInterface15CodeDescription19GetScriptLineNumberEi.exit._crit_edge ], [ 1, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN2v88internal15GDBJITInterface8LineInfo6PCInfoESt6vectorIS6_SaIS6_EEEEPFbRKS6_SD_EEvT_SG_T0_.exit ] ; 5 uses
  %.084467 = phi i64 [ %.pre515, %_ZN2v88internal15GDBJITInterface15CodeDescription19GetScriptLineNumberEi.exit._crit_edge ], [ 0, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN2v88internal15GDBJITInterface8LineInfo6PCInfoESt6vectorIS6_SaIS6_EEEEPFbRKS6_SD_EEvT_SG_T0_.exit ] ; 2 uses
  %i.ru = getelementptr inbounds nuw [16 x i8], ptr %i.rt, i64 %.084467 ; 3 uses
  %i.rv = load ptr, ptr %i.hm, align 8
  %i.rw = getelementptr inbounds nuw i8, ptr %i.rv, i64 8
  %i.rx = load i64, ptr %i.rw, align 8            ; 2 uses
  %i.ry = icmp eq i64 %i.rx, 0
  br i1 %i.ry, label %_ZN2v88internal15GDBJITInterface15CodeDescription19GetScriptLineNumberEi.exit, label %bb.z

bb.z:                                             ; preds = %_ZNSt6vectorIN2v88internal15GDBJITInterface8LineInfo6PCInfoESaIS4_EE2atEm.exit
  %i.rz = getelementptr inbounds nuw i8, ptr %i.ru, i64 8
  %i.sa = load i32, ptr %i.rz, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.sb = add i64 %i.rx, 39
  %i.sc = inttoptr i64 %i.sb to ptr
  %i.sd = load atomic volatile i64, ptr %i.sc acquire, align 8
  store i64 %i.sd, ptr %4, align 8
  %i.se = call noundef i32 @_ZNK2v88internal6Script13GetLineNumberEi(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef %i.sa) #25
  %i.sf = add nsw i32 %i.se, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.sg = sext i32 %i.sf to i64
  br label %_ZN2v88internal15GDBJITInterface15CodeDescription19GetScriptLineNumberEi.exit

_ZN2v88internal15GDBJITInterface15CodeDescription19GetScriptLineNumberEi.exit: ; preds = %_ZNSt6vectorIN2v88internal15GDBJITInterface8LineInfo6PCInfoESaIS4_EE2atEm.exit, %bb.z
  %.0.i253 = phi i64 [ %i.sg, %bb.z ], [ 0, %_ZNSt6vectorIN2v88internal15GDBJITInterface8LineInfo6PCInfoESaIS4_EE2atEm.exit ] ; 3 uses
  %i.sh = icmp eq i64 %.080469, %.0.i253
  %.pre515 = add nuw i64 %.084467, 1              ; 3 uses
  br i1 %i.sh, label %_ZN2v88internal15GDBJITInterface15CodeDescription19GetScriptLineNumberEi.exit._crit_edge, label %bb.aa

bb.aa:                                            ; preds = %_ZN2v88internal15GDBJITInterface15CodeDescription19GetScriptLineNumberEi.exit
  %i.si = load ptr, ptr %i.mv, align 8
  %i.sj = load ptr, ptr %i.mt, align 8
  %i.sk = ptrtoint ptr %i.si to i64
  %i.sl = ptrtoint ptr %i.sj to i64
  %i.sm = sub i64 %i.sk, %i.sl
  %i.sn = ashr exact i64 %i.sm, 4
  %i.so = icmp eq i64 %.pre515, %i.sn
  br i1 %i.so, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  %i.sp = trunc nuw i8 %.082468 to i1
  br i1 %i.sp, label %bb.af, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.sq = load i64, ptr %i.a, align 8             ; 2 uses
  %i.sr = add i64 %i.sq, 1                        ; 2 uses
  %i.ss = load i64, ptr %i.d, align 8             ; 2 uses
  %i.st = icmp ult i64 %i.ss, %i.sr
  br i1 %i.st, label %.lr.ph.i.i257, label %._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i254

._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i254: ; preds = %bb.ac
  %.pre2.i256 = load ptr, ptr %.phi.trans.insert.i.i, align 8
  br label %_ZN2v88internal15GDBJITInterface6Writer5WriteIhEEvRKT_.exit260

.lr.ph.i.i257:                                    ; preds = %bb.ac, %.lr.ph.i.i257
  %i.su = phi i64 [ %i.sv, %.lr.ph.i.i257 ], [ %i.ss, %bb.ac ]
  %i.sv = shl i64 %i.su, 1                        ; 4 uses
  %i.sw = icmp ult i64 %i.sv, %i.sr
  br i1 %i.sw, label %.lr.ph.i.i257, label %_ZN2v84base7ReallocEPvm.exit.i.i258, !llvm.loop !5

_ZN2v84base7ReallocEPvm.exit.i.i258:              ; preds = %.lr.ph.i.i257
  store i64 %i.sv, ptr %i.d, align 8
  %i.sx = load ptr, ptr %.phi.trans.insert.i.i, align 8
  %i.sy = call noundef ptr @realloc(ptr noundef %i.sx, i64 noundef %i.sv) #24 ; 2 uses
  store ptr %i.sy, ptr %.phi.trans.insert.i.i, align 8
  %.pre.i259 = load i64, ptr %i.a, align 8
  br label %_ZN2v88internal15GDBJITInterface6Writer5WriteIhEEvRKT_.exit260

_ZN2v88internal15GDBJITInterface6Writer5WriteIhEEvRKT_.exit260: ; preds = %._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i254, %_ZN2v84base7ReallocEPvm.exit.i.i258
end_hunk_0
