inline.NumInlined: 7022
inline.NumDeleted: 3467
begin_hunk_0_@_ZNSt6vectorISt10unique_ptrIN2v813EmbedderGraph4NodeESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_:bb.a
  %i.at = and i64 %i.as, -8                       ; 2 uses
  %i.au = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 %i.at
  %scevgep40 = getelementptr i8, ptr %i.au, i64 16
  %i.av = getelementptr i8, ptr %1, i64 %i.at
  %scevgep41 = getelementptr i8, ptr %i.av, i64 8
  %bound042 = icmp ult ptr %i.am, %scevgep41
  %bound143 = icmp ult ptr %1, %scevgep40
  %found.conflict44 = and i1 %bound042, %bound143
  br i1 %found.conflict44, label %.lr.ph.i.i.i17.preheader61, label %vector.ph47

vector.ph47:                                      ; preds = %vector.memcheck39
  %n.vec49 = and i64 %i.aq, 4611686018427387900   ; 3 uses
  %i.aw = shl i64 %n.vec49, 3                     ; 2 uses
  %i.ax = getelementptr i8, ptr %i.am, i64 %i.aw  ; 2 uses
  %i.ay = getelementptr i8, ptr %1, i64 %i.aw
  br label %vector.body50

vector.body50:                                    ; preds = %vector.body50, %vector.ph47
  %index51 = phi i64 [ 0, %vector.ph47 ], [ %index.next56, %vector.body50 ] ; 2 uses
  %i.az = shl i64 %index51, 3                     ; 2 uses
  %next.gep52 = getelementptr i8, ptr %i.am, i64 %i.az ; 2 uses
  %next.gep53 = getelementptr i8, ptr %1, i64 %i.az ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !276)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !279)
  %i.ba = getelementptr i8, ptr %next.gep53, i64 16
  %wide.load54 = load <2 x i64>, ptr %next.gep53, align 8, !alias.scope !281, !noalias !276
  %wide.load55 = load <2 x i64>, ptr %i.ba, align 8, !alias.scope !281, !noalias !276
  %i.bb = getelementptr i8, ptr %next.gep52, i64 16
  store <2 x i64> %wide.load54, ptr %next.gep52, align 8, !alias.scope !284, !noalias !281
  store <2 x i64> %wide.load55, ptr %i.bb, align 8, !alias.scope !284, !noalias !281
  %i.bc = getelementptr i8, ptr %next.gep53, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep53, align 8, !alias.scope !281, !noalias !276
  store <2 x ptr> splat (ptr null), ptr %i.bc, align 8, !alias.scope !281, !noalias !276
  %index.next56 = add nuw i64 %index51, 4         ; 2 uses
  %i.bd = icmp eq i64 %index.next56, %n.vec49
  br i1 %i.bd, label %middle.block57, label %vector.body50, !llvm.loop !286

middle.block57:                                   ; preds = %vector.body50
  %cmp.n58 = icmp eq i64 %i.aq, %n.vec49
  br i1 %cmp.n58, label %_ZNSt6vectorISt10unique_ptrIN2v813EmbedderGraph4NodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22, label %.lr.ph.i.i.i17.preheader61

.lr.ph.i.i.i17.preheader61:                       ; preds = %vector.memcheck39, %.lr.ph.i.i.i17.preheader, %middle.block57
  %.012.i.i.i18.ph = phi ptr [ %i.am, %vector.memcheck39 ], [ %i.am, %.lr.ph.i.i.i17.preheader ], [ %i.ax, %middle.block57 ]
  %.0911.i.i.i19.ph = phi ptr [ %1, %vector.memcheck39 ], [ %1, %.lr.ph.i.i.i17.preheader ], [ %i.ay, %middle.block57 ]
  br label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %.lr.ph.i.i.i17.preheader61, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.bg, %.lr.ph.i.i.i17 ], [ %.012.i.i.i18.ph, %.lr.ph.i.i.i17.preheader61 ] ; 2 uses
  %.0911.i.i.i19 = phi ptr [ %i.bf, %.lr.ph.i.i.i17 ], [ %.0911.i.i.i19.ph, %.lr.ph.i.i.i17.preheader61 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !276)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !279)
  %i.be = load i64, ptr %.0911.i.i.i19, align 8, !alias.scope !279, !noalias !276
  store i64 %i.be, ptr %.012.i.i.i18, align 8, !alias.scope !276, !noalias !279
  store ptr null, ptr %.0911.i.i.i19, align 8, !alias.scope !279, !noalias !276
  %i.bf = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 8 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.bf, %i.c
  br i1 %.not.i.i.i20, label %_ZNSt6vectorISt10unique_ptrIN2v813EmbedderGraph4NodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !287

_ZNSt6vectorISt10unique_ptrIN2v813EmbedderGraph4NodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22: ; preds = %.lr.ph.i.i.i17, %middle.block57, %_ZNSt6vectorISt10unique_ptrIN2v813EmbedderGraph4NodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.am, %_ZNSt6vectorISt10unique_ptrIN2v813EmbedderGraph4NodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit ], [ %i.ax, %middle.block57 ], [ %i.bg, %.lr.ph.i.i.i17 ]
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.d, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseISt10unique_ptrIN2v813EmbedderGraph4NodeESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN2v813EmbedderGraph4NodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = ptrtoint ptr %i.bi to i64
  %i.bk = sub i64 %i.bj, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.bk) #32
  br label %_ZNSt12_Vector_baseISt10unique_ptrIN2v813EmbedderGraph4NodeESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit

_ZNSt12_Vector_baseISt10unique_ptrIN2v813EmbedderGraph4NodeESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN2v813EmbedderGraph4NodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22, %bb.c
  store ptr %i.q, ptr %0, align 8
  store ptr %.0.lcssa.i.i.i21, ptr %i.b, align 8
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.m
  store ptr %i.bl, ptr %i.bh, align 8
  ret void
}

declare void @_ZN2v811HandleScope16DeleteExtensionsEPNS_7IsolateE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) local_unnamed_addr #5

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN2v88internal12StringHasher20HashSequentialStringIcEEjPKT_jNS0_8HashSeedE(ptr noundef %0, i32 noundef %1, ptr %2) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %.not = icmp eq i32 %1, 0                       ; 2 uses
  br i1 %.not, label %.thread128, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = icmp ult i32 %1, 17
  br i1 %i.a, label %bb.c, label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.b = load i8, ptr %0, align 1
  %i.c = zext i8 %i.b to i64                      ; 2 uses
  %i.d = add nsw i64 %i.c, -48                    ; 5 uses
  %i.e = icmp ugt i64 %i.d, 9
  br i1 %i.e, label %.thread128, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %.not140 = icmp eq i32 %1, 1
  br i1 %.not140, label %._crit_edge.thread, label %.thread128

bb.f:                                             ; preds = %bb.d
  %i.g = icmp samesign ugt i32 %1, 10
  br i1 %i.g, label %.lr.ph155, label %.preheader141

.preheader141:                                    ; preds = %bb.f
  %.not158 = icmp eq i32 %1, 1
  br i1 %.not158, label %._crit_edge.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader141
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.g
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.g ] ; 2 uses
  %.091150 = phi i64 [ %i.d, %.lr.ph.preheader ], [ %i.o, %bb.g ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.i = load i8, ptr %i.h, align 1
  %i.j = zext i8 %i.i to i32
  %i.k = add nsw i32 %i.j, -48                    ; 2 uses
  %i.l = icmp ugt i32 %i.k, 9
  br i1 %i.l, label %.thread128, label %bb.g

bb.g:                                             ; preds = %.lr.ph
  %i.m = mul i64 %.091150, 10
  %i.n = zext nneg i32 %i.k to i64
  %i.o = add i64 %i.m, %i.n                       ; 4 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !288

._crit_edge:                                      ; preds = %bb.g
  %i.p = icmp ugt i64 %i.o, 4294967294
  br i1 %i.p, label %._crit_edge156, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %.preheader141, %bb.e, %._crit_edge
  %.2.ph = phi i64 [ %i.o, %._crit_edge ], [ 0, %bb.e ], [ %i.d, %.preheader141 ]
  %i.q = trunc nuw i64 %.2.ph to i32              ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.s = load i32, ptr %i.r, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.u = load i32, ptr %i.t, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.w = load i32, ptr %i.v, align 8
  %i.x = lshr i32 %i.q, 12
  %i.y = xor i32 %i.x, %i.q
  %i.z = mul i32 %i.y, %i.s                       ; 2 uses
  %i.aa = lshr i32 %i.z, 12
  %i.ab = and i32 %i.aa, 4095
  %i.ac = xor i32 %i.ab, %i.z
  %i.ad = mul i32 %i.ac, %i.u                     ; 2 uses
  %i.ae = lshr i32 %i.ad, 12
  %i.af = and i32 %i.ae, 4095
  %i.ag = xor i32 %i.af, %i.ad
  %i.ah = mul i32 %i.ag, %i.w
  %i.ai = and i32 %i.ah, 16777215                 ; 2 uses
  %i.aj = lshr i32 %i.ai, 12
  %i.ak = xor i32 %i.aj, %i.ai
  %i.al = shl nuw nsw i32 %i.ak, 2
  %i.am = shl nuw nsw i32 %1, 26
  %i.an = or disjoint i32 %i.al, %i.am
  br label %bb.u

.lr.ph155:                                        ; preds = %bb.f, %bb.h
  %indvars.iv168 = phi i64 [ %indvars.iv.next169, %bb.h ], [ 1, %bb.f ] ; 2 uses
  %.013.i153 = phi i64 [ %i.av, %bb.h ], [ %i.d, %bb.f ]
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv168
  %i.ap = load i8, ptr %i.ao, align 1
  %i.aq = zext i8 %i.ap to i32
  %i.ar = add nsw i32 %i.aq, -48                  ; 2 uses
  %i.as = icmp ult i32 %i.ar, 10
  br i1 %i.as, label %bb.h, label %.thread128

bb.h:                                             ; preds = %.lr.ph155
  %i.at = mul i64 %.013.i153, 10
  %i.au = zext nneg i32 %i.ar to i64
  %i.av = add i64 %i.at, %i.au                    ; 2 uses
  %indvars.iv.next169 = add nuw nsw i64 %indvars.iv168, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next169 to i32
  %exitcond171.not = icmp eq i32 %1, %lftr.wideiv
  br i1 %exitcond171.not, label %._crit_edge156, label %.lr.ph155, !llvm.loop !289

._crit_edge156:                                   ; preds = %bb.h, %._crit_edge
  %.013.i.lcssa = phi i64 [ %i.o, %._crit_edge ], [ %i.av, %bb.h ]
  %i.aw = icmp ugt i64 %.013.i.lcssa, 9007199254740991
  br i1 %i.aw, label %.thread128, label %_ZN2v88internal6detail20TryParseIntegerIndexIhEENS1_16IndexParseResultEPKT_jjm.exit

_ZN2v88internal6detail20TryParseIntegerIndexIhEENS1_16IndexParseResultEPKT_jjm.exit: ; preds = %._crit_edge156
  %i.ax = load i64, ptr %2, align 8               ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.az = zext nneg i32 %1 to i64                 ; 7 uses
  %i.ba = load i64, ptr %i.ay, align 8            ; 2 uses
  %i.bb = xor i64 %i.ba, %i.ax
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bd = load i64, ptr %i.bc, align 8            ; 3 uses
  %i.be = zext i64 %i.bb to i128
  %i.bf = zext i64 %i.bd to i128
  %i.bg = mul nuw i128 %i.bf, %i.be               ; 2 uses
  %i.bh = lshr i128 %i.bg, 64
  %i.bi = xor i128 %i.bh, %i.bg
  %i.bj = trunc i128 %i.bi to i64
  %i.bk = xor i64 %i.az, %i.bj
  %i.bl = xor i64 %i.bk, %i.ax                    ; 2 uses
  %i.bm = icmp ugt i32 %1, 3
  br i1 %i.bm, label %bb.i, label %bb.j, !prof !74

bb.i:                                             ; preds = %_ZN2v88internal6detail20TryParseIntegerIndexIhEENS1_16IndexParseResultEPKT_jjm.exit
  %i.bn = getelementptr i8, ptr %0, i64 %i.az
  %i.bo = getelementptr i8, ptr %i.bn, i64 -4     ; 2 uses
  %.0.copyload.i = load i32, ptr %0, align 1
  %i.bp = zext i32 %.0.copyload.i to i64
  %i.bq = shl nuw i64 %i.bp, 32
  %.0.copyload.i37 = load i32, ptr %i.bo, align 1
  %i.br = zext i32 %.0.copyload.i37 to i64
  %i.bs = or disjoint i64 %i.bq, %i.br
  %i.bt = and i64 %i.az, 24
  %i.bu = lshr i64 %i.az, 3
  %i.bv = lshr exact i64 %i.bt, %i.bu             ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 %i.bv
  %.0.copyload.i38 = load i32, ptr %i.bw, align 1
  %i.bx = zext i32 %.0.copyload.i38 to i64
  %i.by = shl nuw i64 %i.bx, 32
  %i.bz = sub nsw i64 0, %i.bv
  %i.ca = getelementptr inbounds i8, ptr %i.bo, i64 %i.bz
  %.0.copyload.i39 = load i32, ptr %i.ca, align 1
  %i.cb = zext i32 %.0.copyload.i39 to i64
  %i.cc = or disjoint i64 %i.by, %i.cb
  %i.cd = xor i64 %i.cc, %i.bl
  br label %_Z9rapidhashI15PlainHashReaderEmPKhmmPKm.exit36

bb.j:                                             ; preds = %_ZN2v88internal6detail20TryParseIntegerIndexIhEENS1_16IndexParseResultEPKT_jjm.exit
  %i.ce = shl nuw nsw i64 %i.c, 56
  %i.cf = lshr i64 %i.az, 1
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 %i.cf
  %i.ch = load i8, ptr %i.cg, align 1
  %i.ci = zext i8 %i.ch to i64
  %i.cj = shl nuw nsw i64 %i.ci, 32
  %i.ck = or disjoint i64 %i.cj, %i.ce
  %i.cl = getelementptr i8, ptr %0, i64 %i.az
  %i.cm = getelementptr i8, ptr %i.cl, i64 -1
  %i.cn = load i8, ptr %i.cm, align 1
  %i.co = zext i8 %i.cn to i64
  %i.cp = or disjoint i64 %i.ck, %i.co
  br label %_Z9rapidhashI15PlainHashReaderEmPKhmmPKm.exit36

_Z9rapidhashI15PlainHashReaderEmPKhmmPKm.exit36:  ; preds = %bb.i, %bb.j
  %.0101 = phi i64 [ %i.cd, %bb.i ], [ %i.bl, %bb.j ]
  %.0100 = phi i64 [ %i.bs, %bb.i ], [ %i.cp, %bb.j ]
  %i.cq = xor i64 %.0100, %i.bd
  %i.cr = zext i64 %i.cq to i128
  %i.cs = zext i64 %.0101 to i128
  %i.ct = mul nuw i128 %i.cr, %i.cs               ; 2 uses
  %i.cu = trunc i128 %i.ct to i64
  %i.cv = lshr i128 %i.ct, 64
  %3 = trunc nuw i128 %i.cv to i64
  %4 = xor i64 %i.az, %i.cu
  %i.cw = xor i64 %4, %i.ba
  %i.cx = xor i64 %i.bd, %3
  %i.cy = zext i64 %i.cw to i128
  %5 = zext i64 %i.cx to i128
  %i.cz = mul nuw i128 %5, %i.cy                  ; 2 uses
  %i.da = lshr i128 %i.cz, 64
  %i.db = xor i128 %i.da, %i.cz
  %i.dc = trunc i128 %i.db to i32
  %i.dd = and i32 %i.dc, 1073741823               ; 2 uses
  %i.de = icmp eq i32 %i.dd, 0
  %i.df = shl nuw i32 %i.dd, 2
  %i.dg = select i1 %i.de, i32 108, i32 %i.df     ; 3 uses
  %i.dh = icmp ult i32 %i.dg, 536870912
  %i.di = or i32 %i.dg, 536870912
  %spec.select = select i1 %i.dh, i32 %i.di, i32 %i.dg
  br label %bb.u

bb.k:                                             ; preds = %bb.b
  %i.dj = icmp ugt i32 %1, 16383
  br i1 %i.dj, label %bb.l, label %.thread128

bb.l:                                             ; preds = %bb.k
  %i.dk = shl i32 %1, 2
  %i.dl = or disjoint i32 %i.dk, 2
  br label %bb.u

.thread128:                                       ; preds = %.lr.ph, %.lr.ph155, %._crit_edge156, %bb.e, %bb.c, %bb.k, %bb.a
  %i.dm = load i64, ptr %2, align 8               ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.do = zext i32 %1 to i64                      ; 9 uses
  %i.dp = load i64, ptr %i.dn, align 8            ; 3 uses
  %i.dq = xor i64 %i.dp, %i.dm
  %i.dr = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ds = load i64, ptr %i.dr, align 8            ; 5 uses
  %i.dt = zext i64 %i.dq to i128
  %i.du = zext i64 %i.ds to i128
  %i.dv = mul nuw i128 %i.du, %i.dt               ; 2 uses
  %i.dw = lshr i128 %i.dv, 64
  %i.dx = xor i128 %i.dw, %i.dv
  %i.dy = trunc i128 %i.dx to i64
  %i.dz = xor i64 %i.do, %i.dy
  %i.ea = xor i64 %i.dz, %i.dm                    ; 7 uses
  %i.eb = icmp ult i32 %1, 17
  br i1 %i.eb, label %bb.m, label %bb.q, !prof !74

bb.m:                                             ; preds = %.thread128
  %i.ec = icmp samesign ugt i32 %1, 3
  br i1 %i.ec, label %bb.n, label %bb.o, !prof !74

bb.n:                                             ; preds = %bb.m
  %i.ed = getelementptr i8, ptr %0, i64 %i.do
  %i.ee = getelementptr i8, ptr %i.ed, i64 -4     ; 2 uses
  %.0.copyload.i52 = load i32, ptr %0, align 1
  %i.ef = zext i32 %.0.copyload.i52 to i64
  %i.eg = shl nuw i64 %i.ef, 32
  %.0.copyload.i53 = load i32, ptr %i.ee, align 1
  %i.eh = zext i32 %.0.copyload.i53 to i64
  %i.ei = or disjoint i64 %i.eg, %i.eh
  %i.ej = and i64 %i.do, 24
  %i.ek = lshr i64 %i.do, 3
  %i.el = lshr exact i64 %i.ej, %i.ek             ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 %i.el
  %.0.copyload.i54 = load i32, ptr %i.em, align 1
  %i.en = zext i32 %.0.copyload.i54 to i64
  %i.eo = shl nuw i64 %i.en, 32
  %i.ep = sub nsw i64 0, %i.el
  %i.eq = getelementptr inbounds i8, ptr %i.ee, i64 %i.ep
  %.0.copyload.i55 = load i32, ptr %i.eq, align 1
  %i.er = zext i32 %.0.copyload.i55 to i64
  %i.es = or disjoint i64 %i.eo, %i.er
  br label %_Z9rapidhashI15PlainHashReaderEmPKhmmPKm.exit

bb.o:                                             ; preds = %bb.m
  br i1 %.not, label %_Z9rapidhashI15PlainHashReaderEmPKhmmPKm.exit, label %bb.p, !prof !38

bb.p:                                             ; preds = %bb.o
  %i.et = load i8, ptr %0, align 1
  %i.eu = zext i8 %i.et to i64
  %i.ev = shl nuw i64 %i.eu, 56
  %i.ew = lshr i64 %i.do, 1
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 %i.ew
  %i.ey = load i8, ptr %i.ex, align 1
  %i.ez = zext i8 %i.ey to i64
  %i.fa = shl nuw nsw i64 %i.ez, 32
  %i.fb = or disjoint i64 %i.fa, %i.ev
  %i.fc = getelementptr i8, ptr %0, i64 %i.do
  %i.fd = getelementptr i8, ptr %i.fc, i64 -1
  %i.fe = load i8, ptr %i.fd, align 1
  %i.ff = zext i8 %i.fe to i64
  %i.fg = or disjoint i64 %i.fb, %i.ff
  br label %_Z9rapidhashI15PlainHashReaderEmPKhmmPKm.exit

bb.q:                                             ; preds = %.thread128
  %i.fh = icmp ugt i32 %1, 48
  %i.fi = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.fj = load i64, ptr %i.fi, align 8            ; 3 uses
  br i1 %i.fh, label %.preheader, label %.thread131, !prof !38

.preheader:                                       ; preds = %bb.q, %.preheader
  %.065.i = phi i64 [ %i.fs, %.preheader ], [ %i.ea, %bb.q ]
  %.063.i = phi ptr [ %i.gn, %.preheader ], [ %0, %bb.q ] ; 7 uses
  %.062.i = phi i64 [ %i.go, %.preheader ], [ %i.do, %bb.q ]
  %.061.i = phi i64 [ %i.gc, %.preheader ], [ %i.ea, %bb.q ]
  %.0.i = phi i64 [ %i.gm, %.preheader ], [ %i.ea, %bb.q ]
  %.0.copyload.i56 = load i64, ptr %.063.i, align 1
  %i.fk = xor i64 %.0.copyload.i56, %i.dp
  %i.fl = getelementptr inbounds nuw i8, ptr %.063.i, i64 8
  %.0.copyload.i57 = load i64, ptr %i.fl, align 1
  %i.fm = xor i64 %.0.copyload.i57, %.065.i
  %i.fn = zext i64 %i.fk to i128
  %i.fo = zext i64 %i.fm to i128
  %i.fp = mul nuw i128 %i.fo, %i.fn               ; 2 uses
  %i.fq = lshr i128 %i.fp, 64
  %i.fr = xor i128 %i.fq, %i.fp
  %i.fs = trunc i128 %i.fr to i64                 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %.063.i, i64 16
  %.0.copyload.i58 = load i64, ptr %i.ft, align 1
  %i.fu = xor i64 %.0.copyload.i58, %i.ds
  %i.fv = getelementptr inbounds nuw i8, ptr %.063.i, i64 24
  %.0.copyload.i59 = load i64, ptr %i.fv, align 1
  %i.fw = xor i64 %.0.copyload.i59, %.061.i
  %i.fx = zext i64 %i.fu to i128
  %i.fy = zext i64 %i.fw to i128
  %i.fz = mul nuw i128 %i.fy, %i.fx               ; 2 uses
  %i.ga = lshr i128 %i.fz, 64
  %i.gb = xor i128 %i.ga, %i.fz
  %i.gc = trunc i128 %i.gb to i64                 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %.063.i, i64 32
  %.0.copyload.i60 = load i64, ptr %i.gd, align 1
  %i.ge = xor i64 %i.fj, %.0.copyload.i60
  %i.gf = getelementptr inbounds nuw i8, ptr %.063.i, i64 40
  %.0.copyload.i61 = load i64, ptr %i.gf, align 1
  %i.gg = xor i64 %.0.copyload.i61, %.0.i
  %i.gh = zext i64 %i.ge to i128
  %i.gi = zext i64 %i.gg to i128
  %i.gj = mul nuw i128 %i.gi, %i.gh               ; 2 uses
  %i.gk = lshr i128 %i.gj, 64
  %i.gl = xor i128 %i.gk, %i.gj
  %i.gm = trunc i128 %i.gl to i64                 ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %.063.i, i64 48 ; 3 uses
  %i.go = add i64 %.062.i, -48                    ; 5 uses
  %i.gp = icmp ugt i64 %i.go, 47
  br i1 %i.gp, label %.preheader, label %bb.r, !prof !74, !llvm.loop !290

bb.r:                                             ; preds = %.preheader
  %i.gq = xor i64 %i.gc, %i.fs
  %i.gr = xor i64 %i.gq, %i.gm                    ; 2 uses
  %i.gs = icmp samesign ugt i64 %i.go, 16
  br i1 %i.gs, label %.thread131, label %bb.t

.thread131:                                       ; preds = %bb.q, %bb.r
  %.1.i139 = phi i64 [ %i.go, %bb.r ], [ %i.do, %bb.q ] ; 3 uses
  %.164.i137 = phi ptr [ %i.gn, %bb.r ], [ %0, %bb.q ] ; 6 uses
  %.166.i135 = phi i64 [ %i.gr, %bb.r ], [ %i.ea, %bb.q ]
  %.0.copyload.i62 = load i64, ptr %.164.i137, align 1
  %i.gt = xor i64 %i.fj, %.0.copyload.i62
  %i.gu = getelementptr inbounds nuw i8, ptr %.164.i137, i64 8
  %.0.copyload.i63 = load i64, ptr %i.gu, align 1
  %i.gv = xor i64 %.166.i135, %.0.copyload.i63
  %i.gw = xor i64 %i.gv, %i.ds
  %i.gx = zext i64 %i.gt to i128
  %i.gy = zext i64 %i.gw to i128
  %i.gz = mul nuw i128 %i.gy, %i.gx               ; 2 uses
  %i.ha = lshr i128 %i.gz, 64
  %i.hb = xor i128 %i.ha, %i.gz
  %i.hc = trunc i128 %i.hb to i64                 ; 2 uses
  %i.hd = icmp samesign ugt i64 %.1.i139, 32
  br i1 %i.hd, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.thread131
  %i.he = getelementptr inbounds nuw i8, ptr %.164.i137, i64 16
  %.0.copyload.i64 = load i64, ptr %i.he, align 1
  %i.hf = xor i64 %.0.copyload.i64, %i.fj
  %i.hg = getelementptr inbounds nuw i8, ptr %.164.i137, i64 24
  %.0.copyload.i65 = load i64, ptr %i.hg, align 1
  %i.hh = xor i64 %.0.copyload.i65, %i.hc
  %i.hi = zext i64 %i.hf to i128
  %i.hj = zext i64 %i.hh to i128
  %i.hk = mul nuw i128 %i.hj, %i.hi               ; 2 uses
  %i.hl = lshr i128 %i.hk, 64
  %i.hm = xor i128 %i.hl, %i.hk
  %i.hn = trunc i128 %i.hm to i64
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.thread131, %bb.r
  %.1.i138 = phi i64 [ %.1.i139, %bb.s ], [ %.1.i139, %.thread131 ], [ %i.go, %bb.r ]
  %.164.i136 = phi ptr [ %.164.i137, %bb.s ], [ %.164.i137, %.thread131 ], [ %i.gn, %bb.r ]
  %.2.i24 = phi i64 [ %i.hn, %bb.s ], [ %i.hc, %.thread131 ], [ %i.gr, %bb.r ]
  %i.ho = getelementptr i8, ptr %.164.i136, i64 %.1.i138 ; 2 uses
  %i.hp = getelementptr i8, ptr %i.ho, i64 -16
  %.0.copyload.i66 = load i64, ptr %i.hp, align 1
  %i.hq = getelementptr i8, ptr %i.ho, i64 -8
  %.0.copyload.i67 = load i64, ptr %i.hq, align 1
  br label %_Z9rapidhashI15PlainHashReaderEmPKhmmPKm.exit

_Z9rapidhashI15PlainHashReaderEmPKhmmPKm.exit:    ; preds = %bb.o, %bb.n, %bb.p, %bb.t
  %.0103 = phi i64 [ %i.es, %bb.n ], [ %.0.copyload.i67, %bb.t ], [ 0, %bb.p ], [ 0, %bb.o ]
  %.0102 = phi i64 [ %i.ei, %bb.n ], [ %.0.copyload.i66, %bb.t ], [ %i.fg, %bb.p ], [ 0, %bb.o ]
  %.3.i = phi i64 [ %i.ea, %bb.n ], [ %.2.i24, %bb.t ], [ %i.ea, %bb.p ], [ %i.ea, %bb.o ]
  %i.hr = xor i64 %.0102, %i.ds
  %i.hs = xor i64 %.3.i, %.0103
  %i.ht = zext i64 %i.hr to i128
  %i.hu = zext i64 %i.hs to i128
  %i.hv = mul nuw i128 %i.hu, %i.ht               ; 2 uses
  %i.hw = trunc i128 %i.hv to i64
  %i.hx = lshr i128 %i.hv, 64
  %6 = trunc nuw i128 %i.hx to i64
  %7 = xor i64 %i.do, %i.hw
  %i.hy = xor i64 %7, %i.dp
  %i.hz = xor i64 %i.ds, %6
  %i.ia = zext i64 %i.hy to i128
  %8 = zext i64 %i.hz to i128
  %i.ib = mul nuw i128 %8, %i.ia                  ; 2 uses
  %i.ic = lshr i128 %i.ib, 64
  %i.id = xor i128 %i.ic, %i.ib
  %i.ie = trunc i128 %i.id to i32
  %i.if = and i32 %i.ie, 1073741823               ; 2 uses
  %i.ig = icmp eq i32 %i.if, 0
  %i.ih = shl nuw i32 %i.if, 2
  %i.ii = or disjoint i32 %i.ih, 2
  %i.ij = select i1 %i.ig, i32 110, i32 %i.ii
  br label %bb.u

bb.u:                                             ; preds = %._crit_edge.thread, %_Z9rapidhashI15PlainHashReaderEmPKhmmPKm.exit36, %_Z9rapidhashI15PlainHashReaderEmPKhmmPKm.exit, %bb.l
  %.1 = phi i32 [ %i.ij, %_Z9rapidhashI15PlainHashReaderEmPKhmmPKm.exit ], [ %i.dl, %bb.l ], [ %spec.select, %_Z9rapidhashI15PlainHashReaderEmPKhmmPKm.exit36 ], [ %i.an, %._crit_edge.thread ]
  ret i32 %.1
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #23

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v84base19TemplateHashMapImplIPvS2_NS0_18KeyEqualityMatcherIS2_EENS0_23DefaultAllocationPolicyEE6ResizeEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = load i32, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 4 uses
  %i.e = load i32, ptr %i.d, align 4              ; 2 uses
  %i.f = shl i32 %i.c, 1                          ; 3 uses
  %i.g = zext i32 %i.f to i64
  %i.h = mul nuw nsw i64 %i.g, 24
  %calloc.i = tail call ptr @calloc(i64 1, i64 %i.h) ; 2 uses
  store ptr %calloc.i, ptr %0, align 8
  %i.i = icmp eq ptr %calloc.i, null
  br i1 %i.i, label %bb.b, label %_ZN2v84base19TemplateHashMapImplIPvS2_NS0_18KeyEqualityMatcherIS2_EENS0_23DefaultAllocationPolicyEE10InitializeEj.exit

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.879) #31
  unreachable

_ZN2v84base19TemplateHashMapImplIPvS2_NS0_18KeyEqualityMatcherIS2_EENS0_23DefaultAllocationPolicyEE10InitializeEj.exit: ; preds = %bb.a
  store i32 %i.f, ptr %i.b, align 8
  store i32 0, ptr %i.d, align 4
  %.not14 = icmp eq i32 %i.e, 0
  br i1 %.not14, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.g, %_ZN2v84base19TemplateHashMapImplIPvS2_NS0_18KeyEqualityMatcherIS2_EENS0_23DefaultAllocationPolicyEE10InitializeEj.exit
  tail call void @free(ptr noundef %i.a) #29
  ret void

.lr.ph:                                           ; preds = %_ZN2v84base19TemplateHashMapImplIPvS2_NS0_18KeyEqualityMatcherIS2_EENS0_23DefaultAllocationPolicyEE10InitializeEj.exit, %bb.g
  %i.j = phi i32 [ %i.as, %bb.g ], [ %i.f, %_ZN2v84base19TemplateHashMapImplIPvS2_NS0_18KeyEqualityMatcherIS2_EENS0_23DefaultAllocationPolicyEE10InitializeEj.exit ] ; 2 uses
  %.017 = phi i32 [ %.1, %bb.g ], [ %i.e, %_ZN2v84base19TemplateHashMapImplIPvS2_NS0_18KeyEqualityMatcherIS2_EENS0_23DefaultAllocationPolicyEE10InitializeEj.exit ] ; 2 uses
  %.01315 = phi ptr [ %i.at, %bb.g ], [ %i.a, %_ZN2v84base19TemplateHashMapImplIPvS2_NS0_18KeyEqualityMatcherIS2_EENS0_23DefaultAllocationPolicyEE10InitializeEj.exit ] ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.01315, i64 16
  %i.l = load i32, ptr %i.k, align 8              ; 3 uses
  %i.m = icmp slt i32 %i.l, 0
  br i1 %i.m, label %bb.c, label %bb.g

bb.c:                                             ; preds = %.lr.ph
  %i.n = and i32 %i.l, 2147483647
  %i.o = add i32 %i.j, -1                         ; 2 uses
  %i.p = and i32 %i.o, %i.n
  %i.q = zext nneg i32 %i.p to i64                ; 2 uses
  %i.r = load ptr, ptr %0, align 8                ; 2 uses
  %i.s = getelementptr inbounds nuw [24 x i8], ptr %i.r, i64 %i.q ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load i32, ptr %i.t, align 8
  %i.v = icmp slt i32 %i.u, 0
  %.pre = load ptr, ptr %.01315, align 8          ; 2 uses
  br i1 %i.v, label %.lr.ph.i, label %_ZNK2v84base19TemplateHashMapImplIPvS2_NS0_18KeyEqualityMatcherIS2_EENS0_23DefaultAllocationPolicyEE5ProbeIS2_EEPNS0_20TemplateHashMapEntryIS2_S2_EERKT_j.exit

.lr.ph.i:                                         ; preds = %bb.c
  %i.w = zext i32 %i.o to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph.i
  %i.x = phi ptr [ %i.s, %.lr.ph.i ], [ %i.ac, %bb.e ] ; 2 uses
  %.013.i = phi i64 [ %i.q, %.lr.ph.i ], [ %i.ab, %bb.e ]
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = icmp eq ptr %.pre, %i.y
  br i1 %i.z, label %_ZNK2v84base19TemplateHashMapImplIPvS2_NS0_18KeyEqualityMatcherIS2_EENS0_23DefaultAllocationPolicyEE5ProbeIS2_EEPNS0_20TemplateHashMapEntryIS2_S2_EERKT_j.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = add nsw i64 %.013.i, 1
  %i.ab = and i64 %i.aa, %i.w                     ; 2 uses
  %i.ac = getelementptr inbounds nuw [24 x i8], ptr %i.r, i64 %i.ab ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load i32, ptr %i.ad, align 8
  %i.af = icmp slt i32 %i.ae, 0
  br i1 %i.af, label %bb.d, label %_ZNK2v84base19TemplateHashMapImplIPvS2_NS0_18KeyEqualityMatcherIS2_EENS0_23DefaultAllocationPolicyEE5ProbeIS2_EEPNS0_20TemplateHashMapEntryIS2_S2_EERKT_j.exit, !llvm.loop !47

_ZNK2v84base19TemplateHashMapImplIPvS2_NS0_18KeyEqualityMatcherIS2_EENS0_23DefaultAllocationPolicyEE5ProbeIS2_EEPNS0_20TemplateHashMapEntryIS2_S2_EERKT_j.exit: ; preds = %bb.d, %bb.e, %bb.c
  %.lcssa.i = phi ptr [ %i.s, %bb.c ], [ %i.x, %bb.d ], [ %i.ac, %bb.e ] ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.01315, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8
  store ptr %.pre, ptr %.lcssa.i, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %.lcssa.i, i64 8
  store ptr %i.ah, ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %.lcssa.i, i64 16
  store i32 %i.l, ptr %i.aj, align 8
  %i.ak = load i32, ptr %i.d, align 4
  %i.al = add i32 %i.ak, 1                        ; 3 uses
  store i32 %i.al, ptr %i.d, align 4
  %i.am = lshr i32 %i.al, 2
  %i.an = add i32 %i.am, %i.al
  %i.ao = load i32, ptr %i.b, align 8             ; 2 uses
  %.not.i = icmp ult i32 %i.an, %i.ao
  br i1 %.not.i, label %_ZN2v84base19TemplateHashMapImplIPvS2_NS0_18KeyEqualityMatcherIS2_EENS0_23DefaultAllocationPolicyEE14FillEmptyEntryEPNS0_20TemplateHashMapEntryIS2_S2_EERKS2_SB_j.exit, label %bb.f

bb.f:                                             ; preds = %_ZNK2v84base19TemplateHashMapImplIPvS2_NS0_18KeyEqualityMatcherIS2_EENS0_23DefaultAllocationPolicyEE5ProbeIS2_EEPNS0_20TemplateHashMapEntryIS2_S2_EERKT_j.exit
  tail call void @_ZN2v84base19TemplateHashMapImplIPvS2_NS0_18KeyEqualityMatcherIS2_EENS0_23DefaultAllocationPolicyEE6ResizeEv(ptr noundef nonnull align 8 dereferenceable(16) %0), !inline_history !49
  %i.ap = load i32, ptr %i.b, align 8
  br label %_ZN2v84base19TemplateHashMapImplIPvS2_NS0_18KeyEqualityMatcherIS2_EENS0_23DefaultAllocationPolicyEE14FillEmptyEntryEPNS0_20TemplateHashMapEntryIS2_S2_EERKS2_SB_j.exit

_ZN2v84base19TemplateHashMapImplIPvS2_NS0_18KeyEqualityMatcherIS2_EENS0_23DefaultAllocationPolicyEE14FillEmptyEntryEPNS0_20TemplateHashMapEntryIS2_S2_EERKS2_SB_j.exit: ; preds = %bb.f, %_ZNK2v84base19TemplateHashMapImplIPvS2_NS0_18KeyEqualityMatcherIS2_EENS0_23DefaultAllocationPolicyEE5ProbeIS2_EEPNS0_20TemplateHashMapEntryIS2_S2_EERKT_j.exit
  %i.aq = phi i32 [ %i.ao, %_ZNK2v84base19TemplateHashMapImplIPvS2_NS0_18KeyEqualityMatcherIS2_EENS0_23DefaultAllocationPolicyEE5ProbeIS2_EEPNS0_20TemplateHashMapEntryIS2_S2_EERKT_j.exit ], [ %i.ap, %bb.f ]
  %i.ar = add i32 %.017, -1
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %_ZN2v84base19TemplateHashMapImplIPvS2_NS0_18KeyEqualityMatcherIS2_EENS0_23DefaultAllocationPolicyEE14FillEmptyEntryEPNS0_20TemplateHashMapEntryIS2_S2_EERKS2_SB_j.exit
  %i.as = phi i32 [ %i.aq, %_ZN2v84base19TemplateHashMapImplIPvS2_NS0_18KeyEqualityMatcherIS2_EENS0_23DefaultAllocationPolicyEE14FillEmptyEntryEPNS0_20TemplateHashMapEntryIS2_S2_EERKS2_SB_j.exit ], [ %i.j, %.lr.ph ]
  %.1 = phi i32 [ %i.ar, %_ZN2v84base19TemplateHashMapImplIPvS2_NS0_18KeyEqualityMatcherIS2_EENS0_23DefaultAllocationPolicyEE14FillEmptyEntryEPNS0_20TemplateHashMapEntryIS2_S2_EERKS2_SB_j.exit ], [ %.017, %.lr.ph ] ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.01315, i64 24
  %.not = icmp eq i32 %.1, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !291
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt5dequeIN2v88internal13HeapGraphEdgeESaIS2_EE16_M_push_back_auxIJRNS2_4TypeERPKcPNS1_9HeapEntryERSC_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 3
  %i.k = icmp ne ptr %i.d, null
  %.neg.i.i = sext i1 %i.k to i64
  %i.l = add nsw i64 %i.j, %.neg.i.i
  %i.m = mul nsw i64 %i.l, 21
  %i.n = load ptr, ptr %i.a, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = sdiv exact i64 %i.s, 24
  %i.u = add nsw i64 %i.m, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = load ptr, ptr %i.b, align 8
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = sdiv exact i64 %i.aa, 24
  %i.ac = add nsw i64 %i.u, %i.ab
  %i.ad = icmp eq i64 %i.ac, 768614336404564650
  br i1 %i.ad, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.880) #31
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = load i64, ptr %i.ae, align 8
  %i.ag = load ptr, ptr %0, align 8
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = sub i64 %i.g, %i.ah
  %i.aj = ashr exact i64 %i.ai, 3
  %i.ak = sub i64 %i.af, %i.aj
  %i.al = icmp ult i64 %i.ak, 2
  br i1 %i.al, label %bb.d, label %_ZNSt5dequeIN2v88internal13HeapGraphEdgeESaIS2_EE22_M_reserve_map_at_backEm.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZNSt5dequeIN2v88internal13HeapGraphEdgeESaIS2_EE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef 1, i1 noundef zeroext false)
  %.pre = load ptr, ptr %i.c, align 8
  br label %_ZNSt5dequeIN2v88internal13HeapGraphEdgeESaIS2_EE22_M_reserve_map_at_backEm.exit

_ZNSt5dequeIN2v88internal13HeapGraphEdgeESaIS2_EE22_M_reserve_map_at_backEm.exit: ; preds = %bb.c, %bb.d
  %i.am = phi ptr [ %i.d, %bb.c ], [ %.pre, %bb.d ]
  %i.an = tail call noalias noundef nonnull dereferenceable(504) ptr @_Znwm(i64 noundef 504) #30
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store ptr %i.an, ptr %i.ao, align 8
  %i.ap = load ptr, ptr %i.a, align 8             ; 3 uses
  %i.aq = load i32, ptr %1, align 4
  %i.ar = load ptr, ptr %2, align 8
  %i.as = load ptr, ptr %3, align 8
  %i.at = load ptr, ptr %4, align 8
  %i.au = load i32, ptr %i.as, align 8
  %i.av = lshr i32 %i.au, 1
  %i.aw = and i32 %i.av, 2147483640
  %i.ax = or i32 %i.aw, %i.aq
  store i32 %i.ax, ptr %i.ap, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store ptr %i.at, ptr %i.ay, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
end_hunk_0
