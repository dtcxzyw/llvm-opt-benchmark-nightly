Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/X86InstrInfo?download=true
inline.NumInlined: 6257
inline.NumDeleted: 2374
loop-unroll.NumCompletelyUnrolled: 25
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 38
begin_hunk_0_@_ZNK4llvm12X86InstrInfo24setExecutionDomainCustomERNS_12MachineInstrEj:bb.a
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 32
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gj, i64 36
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !219
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gj, i64 64
  %i.go = getelementptr inbounds nuw i8, ptr %i.gj, i64 68
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !219
  %i.gq = icmp eq i32 %i.gm, %i.gp
  br i1 %i.gq, label %bb.p, label %.critedge

bb.p:                                             ; preds = %bb.o
  %i.gr = load i32, ptr %i.gj, align 8
  %i.gs = and i32 %i.gr, 1048320
  %i.gt = icmp eq i32 %i.gs, 0
  br i1 %i.gt, label %bb.q, label %.critedge

bb.q:                                             ; preds = %bb.p
  %i.gu = load i32, ptr %i.gk, align 8
  %i.gv = and i32 %i.gu, 1048320
  %i.gw = icmp eq i32 %i.gv, 0
  br i1 %i.gw, label %bb.r, label %.critedge

bb.r:                                             ; preds = %bb.q
  %i.gx = load i32, ptr %i.gn, align 8
  %i.gy = and i32 %i.gx, 1048320
  %i.gz = icmp eq i32 %i.gy, 0
  br i1 %i.gz, label %bb.s, label %.critedge

bb.s:                                             ; preds = %bb.r
  %i.ha = call noundef ptr @_ZNK4llvm15TargetInstrInfo18commuteInstructionERNS_12MachineInstrEbjj(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, i1 noundef zeroext false, i32 noundef -1, i32 noundef -1) #29 ; 0 uses
  br label %bb.w

.critedge:                                        ; preds = %bb.q, %bb.p, %bb.o, %bb.n, %bb.r
  %i.hb = icmp eq i32 %i.m, 2676
  br i1 %i.hb, label %bb.w, label %bb.v

bb.t:                                             ; preds = %bb.a
  %i.hc = icmp eq i32 %2, 1
  br i1 %i.hc, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  %i.hd = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !218
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 112 ; 2 uses
  %i.hg = load i64, ptr %i.hf, align 8, !tbaa !219
  %i.hh = trunc i64 %i.hg to i32                  ; 2 uses
  %i.hi = and i32 %i.hh, 1
  %.not = icmp eq i32 %i.hi, 0
  %spec.select = select i1 %.not, i64 68, i64 78  ; 2 uses
  %i.hj = and i32 %i.hh, 2
  %.not26 = icmp eq i32 %i.hj, 0
  %i.hk = or disjoint i64 %spec.select, 160
  %.1 = select i1 %.not26, i64 %spec.select, i64 %i.hk
  store i64 %.1, ptr %i.hf, align 8, !tbaa !219
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !46
  %i.hn = getelementptr inbounds i8, ptr %i.hm, i64 -149472
  call void @_ZN4llvm12MachineInstr7setDescERKNS_11MCInstrDescE(ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.hn) #29
  br label %bb.w

bb.v:                                             ; preds = %.critedge, %bb.a
  br label %bb.w

bb.w:                                             ; preds = %bb.t, %bb.u, %.critedge, %bb.h, %bb.v, %bb.s, %bb.m, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.025 = phi i1 [ false, %bb.v ], [ true, %bb.b ], [ true, %bb.c ], [ true, %bb.d ], [ true, %bb.e ], [ true, %bb.f ], [ true, %bb.g ], [ true, %.critedge ], [ true, %bb.m ], [ true, %bb.s ], [ false, %bb.h ], [ true, %bb.u ], [ true, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  ret i1 %.025
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc void @"_ZZNK4llvm12X86InstrInfo24setExecutionDomainCustomERNS_12MachineInstrEjENK3$_0clEjb"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, i32 noundef range(i32 2, 17) %1, i1 noundef zeroext %2) unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !824  ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !1721, !nonnull !59, !align !197 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1722, !nonnull !59, !align !786
  %i.f = load i32, ptr %i.e, align 4, !tbaa !220
  %i.g = add i32 %i.f, -1
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !218
  %i.j = zext i32 %i.g to i64
  %i.k = getelementptr inbounds nuw [32 x i8], ptr %i.i, i64 %i.j ; 2 uses
  %i.l = load i32, ptr %i.k, align 8
  %i.m = and i32 %i.l, 255
  %i.n = icmp eq i32 %i.m, 1
  br i1 %i.n, label %.lr.ph.i, label %bb.af

.lr.ph.i:                                         ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !219
  %i.q = trunc i64 %i.p to i32                    ; 2 uses
  %i.r = and i32 %i.q, 255                        ; 2 uses
  %i.s = icmp eq i32 %1, 16
  %i.t = shl nuw nsw i32 %i.r, 8
  %i.u = select i1 %i.s, i32 %i.t, i32 0
  %i.v = or disjoint i32 %i.u, %i.r               ; 41 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !1723, !nonnull !59, !align !786
  %i.y = load i32, ptr %i.x, align 4, !tbaa !220  ; 14 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !1724, !nonnull !59, !align !1725
  %i.ab = load i16, ptr %i.aa, align 2, !tbaa !479
  %i.ac = zext i16 %i.ab to i64
  %i.ad = add nuw nsw i64 %i.ac, 4294967295
  %i.ae = and i64 %i.ad, 4294967295               ; 14 uses
  %i.af = getelementptr inbounds nuw [2 x i8], ptr @_ZL22ReplaceableBlendInstrs, i64 %i.ae
  %i.ag = load i16, ptr %i.af, align 2, !tbaa !479
  %i.ah = zext i16 %i.ag to i32
  %.not15.i = icmp eq i32 %i.y, %i.ah
  br i1 %.not15.i, label %_ZL6lookupjjN4llvm8ArrayRefIA3_tEE.exit, label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %.lr.ph.i
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZL22ReplaceableBlendInstrs, i64 6), i64 %i.ae
  %i.aj = load i16, ptr %i.ai, align 2, !tbaa !479
  %i.ak = zext i16 %i.aj to i32
  %.not15.i.1 = icmp eq i32 %i.y, %i.ak
  br i1 %.not15.i.1, label %_ZL6lookupjjN4llvm8ArrayRefIA3_tEE.exit, label %.lr.ph.i.2

.lr.ph.i.2:                                       ; preds = %.lr.ph.i.1
  %i.al = getelementptr inbounds nuw [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZL22ReplaceableBlendInstrs, i64 12), i64 %i.ae
  %i.am = load i16, ptr %i.al, align 2, !tbaa !479
  %i.an = zext i16 %i.am to i32
  %.not15.i.2 = icmp eq i32 %i.y, %i.an
  br i1 %.not15.i.2, label %_ZL6lookupjjN4llvm8ArrayRefIA3_tEE.exit, label %.lr.ph.i.3

.lr.ph.i.3:                                       ; preds = %.lr.ph.i.2
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZL22ReplaceableBlendInstrs, i64 18), i64 %i.ae
  %i.ap = load i16, ptr %i.ao, align 2, !tbaa !479
  %i.aq = zext i16 %i.ap to i32
  %.not15.i.3 = icmp eq i32 %i.y, %i.aq
  br i1 %.not15.i.3, label %_ZL6lookupjjN4llvm8ArrayRefIA3_tEE.exit, label %.lr.ph.i.4

.lr.ph.i.4:                                       ; preds = %.lr.ph.i.3
  %i.ar = getelementptr inbounds nuw [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZL22ReplaceableBlendInstrs, i64 24), i64 %i.ae
  %i.as = load i16, ptr %i.ar, align 2, !tbaa !479
  %i.at = zext i16 %i.as to i32
  %.not15.i.4 = icmp eq i32 %i.y, %i.at
  br i1 %.not15.i.4, label %_ZL6lookupjjN4llvm8ArrayRefIA3_tEE.exit, label %.lr.ph.i.5

.lr.ph.i.5:                                       ; preds = %.lr.ph.i.4
  %i.au = getelementptr inbounds nuw [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZL22ReplaceableBlendInstrs, i64 30), i64 %i.ae
  %i.av = load i16, ptr %i.au, align 2, !tbaa !479
  %i.aw = zext i16 %i.av to i32
  %.not15.i.5 = icmp eq i32 %i.y, %i.aw
  br i1 %.not15.i.5, label %_ZL6lookupjjN4llvm8ArrayRefIA3_tEE.exit, label %.lr.ph.i23.preheader

.lr.ph.i23.preheader:                             ; preds = %.lr.ph.i.5
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr @_ZL26ReplaceableBlendAVX2Instrs, i64 %i.ae
  %i.ay = load i16, ptr %i.ax, align 2, !tbaa !479
  %i.az = zext i16 %i.ay to i32
  %.not15.i25 = icmp eq i32 %i.y, %i.az
  br i1 %.not15.i25, label %_ZL6lookupjjN4llvm8ArrayRefIA3_tEE.exit, label %.lr.ph.i23.1

.lr.ph.i23.1:                                     ; preds = %.lr.ph.i23.preheader
  %i.ba = getelementptr inbounds nuw [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZL26ReplaceableBlendAVX2Instrs, i64 6), i64 %i.ae
  %i.bb = load i16, ptr %i.ba, align 2, !tbaa !479
  %i.bc = zext i16 %i.bb to i32
  %.not15.i25.1 = icmp eq i32 %i.y, %i.bc
  br i1 %.not15.i25.1, label %_ZL6lookupjjN4llvm8ArrayRefIA3_tEE.exit, label %.lr.ph.i23.2

.lr.ph.i23.2:                                     ; preds = %.lr.ph.i23.1
  %i.bd = getelementptr inbounds nuw [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZL26ReplaceableBlendAVX2Instrs, i64 12), i64 %i.ae
  %i.be = load i16, ptr %i.bd, align 2, !tbaa !479
  %i.bf = zext i16 %i.be to i32
  %.not15.i25.2 = icmp eq i32 %i.y, %i.bf
  br i1 %.not15.i25.2, label %_ZL6lookupjjN4llvm8ArrayRefIA3_tEE.exit, label %.lr.ph.i23.3

.lr.ph.i23.3:                                     ; preds = %.lr.ph.i23.2
  %i.bg = getelementptr inbounds nuw [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZL26ReplaceableBlendAVX2Instrs, i64 18), i64 %i.ae
  %i.bh = load i16, ptr %i.bg, align 2, !tbaa !479
  %i.bi = zext i16 %i.bh to i32
  %.not15.i25.3 = icmp eq i32 %i.y, %i.bi
  %spec.select = select i1 %.not15.i25.3, ptr getelementptr inbounds nuw (i8, ptr @_ZL26ReplaceableBlendAVX2Instrs, i64 18), ptr null
  br label %_ZL6lookupjjN4llvm8ArrayRefIA3_tEE.exit

_ZL6lookupjjN4llvm8ArrayRefIA3_tEE.exit:          ; preds = %.lr.ph.i23.3, %.lr.ph.i, %.lr.ph.i.1, %.lr.ph.i.2, %.lr.ph.i.3, %.lr.ph.i.4, %.lr.ph.i.5, %.lr.ph.i23.preheader, %.lr.ph.i23.1, %.lr.ph.i23.2
  %.0 = phi ptr [ getelementptr inbounds nuw (i8, ptr @_ZL26ReplaceableBlendAVX2Instrs, i64 12), %.lr.ph.i23.2 ], [ getelementptr inbounds nuw (i8, ptr @_ZL22ReplaceableBlendInstrs, i64 30), %.lr.ph.i.5 ], [ @_ZL26ReplaceableBlendAVX2Instrs, %.lr.ph.i23.preheader ], [ getelementptr inbounds nuw (i8, ptr @_ZL26ReplaceableBlendAVX2Instrs, i64 6), %.lr.ph.i23.1 ], [ %spec.select, %.lr.ph.i23.3 ], [ @_ZL22ReplaceableBlendInstrs, %.lr.ph.i ], [ getelementptr inbounds nuw (i8, ptr @_ZL22ReplaceableBlendInstrs, i64 6), %.lr.ph.i.1 ], [ getelementptr inbounds nuw (i8, ptr @_ZL22ReplaceableBlendInstrs, i64 12), %.lr.ph.i.2 ], [ getelementptr inbounds nuw (i8, ptr @_ZL22ReplaceableBlendInstrs, i64 18), %.lr.ph.i.3 ], [ getelementptr inbounds nuw (i8, ptr @_ZL22ReplaceableBlendInstrs, i64 24), %.lr.ph.i.4 ] ; 23 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !1726, !nonnull !59, !align !786
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !220 ; 2 uses
  switch i32 %i.bl, label %_ZL15AdjustBlendMaskjjjPj.exit [
    i32 1, label %bb.b
    i32 2, label %bb.h
    i32 3, label %bb.n
  ]

bb.b:                                             ; preds = %_ZL6lookupjjN4llvm8ArrayRefIA3_tEE.exit
  %i.bm = select i1 %2, i32 8, i32 4              ; 2 uses
  %.lhs.trunc.i = trunc nuw nsw i32 %1 to i8      ; 3 uses
  %.rhs.trunc.i = trunc nuw nsw i32 %i.bm to i8   ; 2 uses
  %i.bn = add nuw nsw i8 %.rhs.trunc.i, 31
  %i.bo = and i8 %i.bn, %.lhs.trunc.i
  %i.bp = icmp eq i8 %i.bo, 0
  br i1 %i.bp, label %bb.c, label %.new35

bb.c:                                             ; preds = %bb.b
  %i.bq = select i1 %2, i8 3, i8 2
  %i.br = lshr i8 %.lhs.trunc.i, %i.bq
  %.zext55.i = zext nneg i8 %i.br to i32          ; 3 uses
  %notmask48.i = shl nsw i32 -1, %.zext55.i
  %i.bs = xor i32 %notmask48.i, -1                ; 4 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %bb.c
  %.03864.i = phi i32 [ 0, %bb.c ], [ %i.cg, %bb.f ] ; 5 uses
  %.03963.i = phi i32 [ 0, %bb.c ], [ %.2.i.1, %bb.f ]
  %i.bt = mul nuw nsw i32 %.03864.i, %.zext55.i
  %i.bu = lshr i32 %i.v, %i.bt
  %i.bv = and i32 %i.bu, %i.bs                    ; 2 uses
  %i.bw = icmp eq i32 %i.bv, %i.bs                ; 2 uses
  %.not50.i = icmp eq i32 %i.bv, 0
  %cond2.i = or i1 %i.bw, %.not50.i
  br i1 %cond2.i, label %bb.e, label %_ZL15AdjustBlendMaskjjjPj.exit

bb.e:                                             ; preds = %bb.d
  %i.bx = or disjoint i32 %.03864.i, 1
  %i.by = mul nuw nsw i32 %i.bx, %.zext55.i
  %i.bz = lshr i32 %i.v, %i.by
  %i.ca = and i32 %i.bz, %i.bs                    ; 2 uses
  %i.cb = icmp eq i32 %i.ca, %i.bs                ; 2 uses
  %.not50.i.1 = icmp eq i32 %i.ca, 0
  %cond2.i.1 = or i1 %i.cb, %.not50.i.1
  br i1 %cond2.i.1, label %bb.f, label %_ZL15AdjustBlendMaskjjjPj.exit

bb.f:                                             ; preds = %bb.e
  %i.cc = shl nuw i32 1, %.03864.i
  %i.cd = select i1 %i.bw, i32 %i.cc, i32 0
  %.2.i = or i32 %i.cd, %.03963.i
  %i.ce = shl nuw i32 2, %.03864.i
  %i.cf = select i1 %i.cb, i32 %i.ce, i32 0
  %.2.i.1 = or i32 %i.cf, %.2.i                   ; 2 uses
  %i.cg = add nuw nsw i32 %.03864.i, 2            ; 2 uses
  %.not49.i.1 = icmp eq i32 %i.cg, %i.bm
  br i1 %.not49.i.1, label %_ZL15AdjustBlendMaskjjjPj.exit, label %bb.d, !llvm.loop !1719

.new35:                                           ; preds = %bb.b
  %i.ch = udiv i8 %.rhs.trunc.i, %.lhs.trunc.i
  %.zext58.i = zext nneg i8 %i.ch to i32          ; 4 uses
  %notmask.i = shl nsw i32 -1, %.zext58.i
  %i.ci = xor i32 %notmask.i, -1                  ; 3 uses
  %xtraiter37 = and i32 %1, 1
  %unroll_iter41 = and i32 %1, 30
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.new35
  %.062.i = phi i32 [ 0, %.new35 ], [ %i.cu, %bb.g ] ; 5 uses
  %.461.i = phi i32 [ 0, %.new35 ], [ %.5.i.1, %bb.g ]
  %niter42 = phi i32 [ 0, %.new35 ], [ %niter42.next.1, %bb.g ]
  %i.cj = shl nuw i32 1, %.062.i
  %i.ck = and i32 %i.cj, %i.v
  %.not47.i = icmp eq i32 %i.ck, 0
  %i.cl = mul nuw nsw i32 %.062.i, %.zext58.i
  %i.cm = shl i32 %i.ci, %i.cl
  %i.cn = select i1 %.not47.i, i32 0, i32 %i.cm
  %.5.i = or i32 %i.cn, %.461.i
  %i.co = or disjoint i32 %.062.i, 1
  %i.cp = shl nuw i32 2, %.062.i
  %i.cq = and i32 %i.cp, %i.v
  %.not47.i.1 = icmp eq i32 %i.cq, 0
  %i.cr = mul nuw nsw i32 %i.co, %.zext58.i
  %i.cs = shl i32 %i.ci, %i.cr
  %i.ct = select i1 %.not47.i.1, i32 0, i32 %i.cs
  %.5.i.1 = or i32 %i.ct, %.5.i                   ; 3 uses
  %i.cu = add nuw nsw i32 %.062.i, 2              ; 3 uses
  %niter42.next.1 = add nuw nsw i32 %niter42, 2   ; 2 uses
  %niter42.ncmp.1 = icmp eq i32 %niter42.next.1, %unroll_iter41
  br i1 %niter42.ncmp.1, label %_ZL15AdjustBlendMaskjjjPj.exit.loopexit9.unr-lcssa, label %bb.g, !llvm.loop !1720

bb.h:                                             ; preds = %_ZL6lookupjjN4llvm8ArrayRefIA3_tEE.exit
  %i.cv = select i1 %2, i32 4, i32 2              ; 2 uses
  %.lhs.trunc.i29 = trunc nuw nsw i32 %1 to i8    ; 3 uses
  %.rhs.trunc.i30 = trunc nuw nsw i32 %i.cv to i8 ; 2 uses
  %i.cw = add nuw nsw i8 %.rhs.trunc.i30, 31
  %i.cx = and i8 %i.cw, %.lhs.trunc.i29
  %i.cy = icmp eq i8 %i.cx, 0
  br i1 %i.cy, label %bb.i, label %.new27

bb.i:                                             ; preds = %bb.h
  %i.cz = select i1 %2, i8 2, i8 1
  %i.da = lshr i8 %.lhs.trunc.i29, %i.cz
  %.zext55.i41 = zext nneg i8 %i.da to i32        ; 3 uses
  %notmask48.i42 = shl nsw i32 -1, %.zext55.i41
  %i.db = xor i32 %notmask48.i42, -1              ; 4 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.l, %bb.i
  %.03864.i43 = phi i32 [ 0, %bb.i ], [ %i.dp, %bb.l ] ; 5 uses
  %.03963.i44 = phi i32 [ 0, %bb.i ], [ %.2.i47.1, %bb.l ]
  %i.dc = mul nuw nsw i32 %.03864.i43, %.zext55.i41
  %i.dd = lshr i32 %i.v, %i.dc
  %i.de = and i32 %i.dd, %i.db                    ; 2 uses
  %i.df = icmp eq i32 %i.de, %i.db                ; 2 uses
  %.not50.i45 = icmp eq i32 %i.de, 0
  %cond2.i46 = or i1 %i.df, %.not50.i45
  br i1 %cond2.i46, label %bb.k, label %_ZL15AdjustBlendMaskjjjPj.exit

bb.k:                                             ; preds = %bb.j
  %i.dg = or disjoint i32 %.03864.i43, 1
  %i.dh = mul nuw nsw i32 %i.dg, %.zext55.i41
  %i.di = lshr i32 %i.v, %i.dh
  %i.dj = and i32 %i.di, %i.db                    ; 2 uses
  %i.dk = icmp eq i32 %i.dj, %i.db                ; 2 uses
  %.not50.i45.1 = icmp eq i32 %i.dj, 0
  %cond2.i46.1 = or i1 %i.dk, %.not50.i45.1
  br i1 %cond2.i46.1, label %bb.l, label %_ZL15AdjustBlendMaskjjjPj.exit

bb.l:                                             ; preds = %bb.k
  %i.dl = shl nuw i32 1, %.03864.i43
  %i.dm = select i1 %i.df, i32 %i.dl, i32 0
  %.2.i47 = or i32 %i.dm, %.03963.i44
  %i.dn = shl nuw i32 2, %.03864.i43
  %i.do = select i1 %i.dk, i32 %i.dn, i32 0
  %.2.i47.1 = or i32 %i.do, %.2.i47               ; 2 uses
  %i.dp = add nuw nsw i32 %.03864.i43, 2          ; 2 uses
  %.not49.i48.1 = icmp eq i32 %i.dp, %i.cv
  br i1 %.not49.i48.1, label %_ZL15AdjustBlendMaskjjjPj.exit, label %bb.j, !llvm.loop !1719

.new27:                                           ; preds = %bb.h
  %i.dq = udiv i8 %.rhs.trunc.i30, %.lhs.trunc.i29
  %.zext58.i31 = zext nneg i8 %i.dq to i32        ; 4 uses
  %notmask.i32 = shl nsw i32 -1, %.zext58.i31
  %i.dr = xor i32 %notmask.i32, -1                ; 3 uses
  %xtraiter29 = and i32 %1, 1
  %unroll_iter33 = and i32 %1, 30
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.new27
  %.062.i33 = phi i32 [ 0, %.new27 ], [ %i.ed, %bb.m ] ; 5 uses
  %.461.i34 = phi i32 [ 0, %.new27 ], [ %.5.i36.1, %bb.m ]
  %niter34 = phi i32 [ 0, %.new27 ], [ %niter34.next.1, %bb.m ]
  %i.ds = shl nuw i32 1, %.062.i33
  %i.dt = and i32 %i.ds, %i.v
  %.not47.i35 = icmp eq i32 %i.dt, 0
  %i.du = mul nuw nsw i32 %.062.i33, %.zext58.i31
  %i.dv = shl i32 %i.dr, %i.du
  %i.dw = select i1 %.not47.i35, i32 0, i32 %i.dv
  %.5.i36 = or i32 %i.dw, %.461.i34
  %i.dx = or disjoint i32 %.062.i33, 1
  %i.dy = shl nuw i32 2, %.062.i33
  %i.dz = and i32 %i.dy, %i.v
  %.not47.i35.1 = icmp eq i32 %i.dz, 0
  %i.ea = mul nuw nsw i32 %i.dx, %.zext58.i31
  %i.eb = shl i32 %i.dr, %i.ea
  %i.ec = select i1 %.not47.i35.1, i32 0, i32 %i.eb
  %.5.i36.1 = or i32 %i.ec, %.5.i36               ; 3 uses
  %i.ed = add nuw nsw i32 %.062.i33, 2            ; 3 uses
  %niter34.next.1 = add nuw nsw i32 %niter34, 2   ; 2 uses
  %niter34.ncmp.1 = icmp eq i32 %niter34.next.1, %unroll_iter33
  br i1 %niter34.ncmp.1, label %_ZL15AdjustBlendMaskjjjPj.exit.loopexit12.unr-lcssa, label %bb.m, !llvm.loop !1720

bb.n:                                             ; preds = %_ZL6lookupjjN4llvm8ArrayRefIA3_tEE.exit
  %i.ee = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !196, !nonnull !59, !align !197
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 360
  %i.eh = load i32, ptr %i.eg, align 8, !tbaa !480
  %i.ei = icmp sgt i32 %i.eh, 7
  br i1 %i.ei, label %bb.o, label %bb.u

bb.o:                                             ; preds = %bb.n
  %i.ej = zext i1 %2 to i32
  %i.ek = lshr i32 %1, %i.ej
  %.not22 = icmp eq i32 %i.ek, 8
  br i1 %.not22, label %_ZL15AdjustBlendMaskjjjPj.exit, label %.lr.ph.i50.preheader

.lr.ph.i50.preheader:                             ; preds = %bb.o
  %i.el = getelementptr inbounds nuw [2 x i8], ptr @_ZL26ReplaceableBlendAVX2Instrs, i64 %i.ae
  %i.em = load i16, ptr %i.el, align 2, !tbaa !479
  %i.en = zext i16 %i.em to i32
  %.not15.i52 = icmp eq i32 %i.y, %i.en
  br i1 %.not15.i52, label %_ZL6lookupjjN4llvm8ArrayRefIA3_tEE.exit54, label %.lr.ph.i50.1

.lr.ph.i50.1:                                     ; preds = %.lr.ph.i50.preheader
  %i.eo = getelementptr inbounds nuw [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZL26ReplaceableBlendAVX2Instrs, i64 6), i64 %i.ae
  %i.ep = load i16, ptr %i.eo, align 2, !tbaa !479
  %i.eq = zext i16 %i.ep to i32
  %.not15.i52.1 = icmp eq i32 %i.y, %i.eq
  br i1 %.not15.i52.1, label %_ZL6lookupjjN4llvm8ArrayRefIA3_tEE.exit54, label %.lr.ph.i50.2

.lr.ph.i50.2:                                     ; preds = %.lr.ph.i50.1
  %i.er = getelementptr inbounds nuw [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZL26ReplaceableBlendAVX2Instrs, i64 12), i64 %i.ae
  %i.es = load i16, ptr %i.er, align 2, !tbaa !479
  %i.et = zext i16 %i.es to i32
  %.not15.i52.2 = icmp eq i32 %i.y, %i.et
  br i1 %.not15.i52.2, label %_ZL6lookupjjN4llvm8ArrayRefIA3_tEE.exit54, label %.lr.ph.i50.3

.lr.ph.i50.3:                                     ; preds = %.lr.ph.i50.2
  %i.eu = getelementptr inbounds nuw [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZL26ReplaceableBlendAVX2Instrs, i64 18), i64 %i.ae
  %i.ev = load i16, ptr %i.eu, align 2, !tbaa !479
  %i.ew = zext i16 %i.ev to i32
  %.not15.i52.3 = icmp eq i32 %i.y, %i.ew
  %spec.select139 = select i1 %.not15.i52.3, ptr getelementptr inbounds nuw (i8, ptr @_ZL26ReplaceableBlendAVX2Instrs, i64 18), ptr null
  br label %_ZL6lookupjjN4llvm8ArrayRefIA3_tEE.exit54

_ZL6lookupjjN4llvm8ArrayRefIA3_tEE.exit54:        ; preds = %.lr.ph.i50.3, %.lr.ph.i50.2, %.lr.ph.i50.1, %.lr.ph.i50.preheader
  %i.ex = phi ptr [ @_ZL26ReplaceableBlendAVX2Instrs, %.lr.ph.i50.preheader ], [ getelementptr inbounds nuw (i8, ptr @_ZL26ReplaceableBlendAVX2Instrs, i64 12), %.lr.ph.i50.2 ], [ getelementptr inbounds nuw (i8, ptr @_ZL26ReplaceableBlendAVX2Instrs, i64 6), %.lr.ph.i50.1 ], [ %spec.select139, %.lr.ph.i50.3 ] ; 5 uses
  %i.ey = select i1 %2, i32 8, i32 4              ; 2 uses
  %.lhs.trunc.i55 = trunc nuw nsw i32 %1 to i8    ; 3 uses
  %.rhs.trunc.i56 = trunc nuw nsw i32 %i.ey to i8 ; 2 uses
  %i.ez = add nuw nsw i8 %.rhs.trunc.i56, 31
  %i.fa = and i8 %i.ez, %.lhs.trunc.i55
  %i.fb = icmp eq i8 %i.fa, 0
  br i1 %i.fb, label %bb.p, label %.new19

bb.p:                                             ; preds = %_ZL6lookupjjN4llvm8ArrayRefIA3_tEE.exit54
  %i.fc = select i1 %2, i8 3, i8 2
  %i.fd = lshr i8 %.lhs.trunc.i55, %i.fc
  %.zext55.i67 = zext nneg i8 %i.fd to i32        ; 3 uses
  %notmask48.i68 = shl nsw i32 -1, %.zext55.i67
  %i.fe = xor i32 %notmask48.i68, -1              ; 4 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.s, %bb.p
  %.03864.i69 = phi i32 [ 0, %bb.p ], [ %i.fs, %bb.s ] ; 5 uses
  %.03963.i70 = phi i32 [ 0, %bb.p ], [ %.2.i73.1, %bb.s ]
  %i.ff = mul nuw nsw i32 %.03864.i69, %.zext55.i67
  %i.fg = lshr i32 %i.v, %i.ff
  %i.fh = and i32 %i.fg, %i.fe                    ; 2 uses
  %i.fi = icmp eq i32 %i.fh, %i.fe                ; 2 uses
  %.not50.i71 = icmp eq i32 %i.fh, 0
  %cond2.i72 = or i1 %i.fi, %.not50.i71
  br i1 %cond2.i72, label %bb.r, label %_ZL15AdjustBlendMaskjjjPj.exit

bb.r:                                             ; preds = %bb.q
  %i.fj = or disjoint i32 %.03864.i69, 1
  %i.fk = mul nuw nsw i32 %i.fj, %.zext55.i67
  %i.fl = lshr i32 %i.v, %i.fk
  %i.fm = and i32 %i.fl, %i.fe                    ; 2 uses
  %i.fn = icmp eq i32 %i.fm, %i.fe                ; 2 uses
  %.not50.i71.1 = icmp eq i32 %i.fm, 0
  %cond2.i72.1 = or i1 %i.fn, %.not50.i71.1
  br i1 %cond2.i72.1, label %bb.s, label %_ZL15AdjustBlendMaskjjjPj.exit

bb.s:                                             ; preds = %bb.r
  %i.fo = shl nuw i32 1, %.03864.i69
  %i.fp = select i1 %i.fi, i32 %i.fo, i32 0
  %.2.i73 = or i32 %i.fp, %.03963.i70
  %i.fq = shl nuw i32 2, %.03864.i69
  %i.fr = select i1 %i.fn, i32 %i.fq, i32 0
  %.2.i73.1 = or i32 %i.fr, %.2.i73               ; 2 uses
  %i.fs = add nuw nsw i32 %.03864.i69, 2          ; 2 uses
  %.not49.i74.1 = icmp eq i32 %i.fs, %i.ey
  br i1 %.not49.i74.1, label %_ZL15AdjustBlendMaskjjjPj.exit, label %bb.q, !llvm.loop !1719

.new19:                                           ; preds = %_ZL6lookupjjN4llvm8ArrayRefIA3_tEE.exit54
  %i.ft = udiv i8 %.rhs.trunc.i56, %.lhs.trunc.i55
  %.zext58.i57 = zext nneg i8 %i.ft to i32        ; 4 uses
  %notmask.i58 = shl nsw i32 -1, %.zext58.i57
  %i.fu = xor i32 %notmask.i58, -1                ; 3 uses
  %xtraiter21 = and i32 %1, 1
  %unroll_iter25 = and i32 %1, 30
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %.new19
  %.062.i59 = phi i32 [ 0, %.new19 ], [ %i.gg, %bb.t ] ; 5 uses
  %.461.i60 = phi i32 [ 0, %.new19 ], [ %.5.i62.1, %bb.t ]
  %niter26 = phi i32 [ 0, %.new19 ], [ %niter26.next.1, %bb.t ]
  %i.fv = shl nuw i32 1, %.062.i59
  %i.fw = and i32 %i.fv, %i.v
  %.not47.i61 = icmp eq i32 %i.fw, 0
  %i.fx = mul nuw nsw i32 %.062.i59, %.zext58.i57
  %i.fy = shl i32 %i.fu, %i.fx
  %i.fz = select i1 %.not47.i61, i32 0, i32 %i.fy
  %.5.i62 = or i32 %i.fz, %.461.i60
  %i.ga = or disjoint i32 %.062.i59, 1
  %i.gb = shl nuw i32 2, %.062.i59
  %i.gc = and i32 %i.gb, %i.v
  %.not47.i61.1 = icmp eq i32 %i.gc, 0
  %i.gd = mul nuw nsw i32 %i.ga, %.zext58.i57
  %i.ge = shl i32 %i.fu, %i.gd
  %i.gf = select i1 %.not47.i61.1, i32 0, i32 %i.ge
  %.5.i62.1 = or i32 %i.gf, %.5.i62               ; 3 uses
  %i.gg = add nuw nsw i32 %.062.i59, 2            ; 3 uses
  %niter26.next.1 = add nuw nsw i32 %niter26, 2   ; 2 uses
  %niter26.ncmp.1 = icmp eq i32 %niter26.next.1, %unroll_iter25
  br i1 %niter26.ncmp.1, label %_ZL15AdjustBlendMaskjjjPj.exit.loopexit15.unr-lcssa, label %bb.t, !llvm.loop !1720

bb.u:                                             ; preds = %bb.n
  %.lhs.trunc.i76 = trunc nuw nsw i32 %1 to i8    ; 2 uses
  %i.gh = and i8 %.lhs.trunc.i76, 7
  %i.gi = icmp eq i8 %i.gh, 0
  br i1 %i.gi, label %bb.v, label %.new

bb.v:                                             ; preds = %bb.u
  %.zext55.i87 = lshr exact i32 %1, 3             ; 6 uses
  %notmask48.i88 = shl nsw i32 -1, %.zext55.i87
  %i.gj = xor i32 %notmask48.i88, -1              ; 16 uses
  %i.gk = and i32 %i.q, %i.gj                     ; 2 uses
  %i.gl = icmp eq i32 %i.gk, %i.gj                ; 2 uses
  %.not50.i91 = icmp eq i32 %i.gk, 0
  %cond2.i92 = or i1 %i.gl, %.not50.i91
  br i1 %cond2.i92, label %bb.w, label %_ZL15AdjustBlendMaskjjjPj.exit

bb.w:                                             ; preds = %bb.v
  %i.gm = lshr i32 %i.v, %.zext55.i87
  %i.gn = and i32 %i.gm, %i.gj                    ; 2 uses
  %i.go = icmp eq i32 %i.gn, %i.gj                ; 2 uses
  %.not50.i91.1 = icmp eq i32 %i.gn, 0
  %cond2.i92.1 = or i1 %i.go, %.not50.i91.1
  br i1 %cond2.i92.1, label %bb.x, label %_ZL15AdjustBlendMaskjjjPj.exit

bb.x:                                             ; preds = %bb.w
  %i.gp = lshr exact i32 %1, 2
  %i.gq = lshr i32 %i.v, %i.gp
  %i.gr = and i32 %i.gq, %i.gj                    ; 2 uses
  %i.gs = icmp eq i32 %i.gr, %i.gj                ; 2 uses
  %.not50.i91.2 = icmp eq i32 %i.gr, 0
  %cond2.i92.2 = or i1 %i.gs, %.not50.i91.2
  br i1 %cond2.i92.2, label %bb.y, label %_ZL15AdjustBlendMaskjjjPj.exit

bb.y:                                             ; preds = %bb.x
  %i.gt = mul nuw nsw i32 %.zext55.i87, 3
  %i.gu = lshr i32 %i.v, %i.gt
  %i.gv = and i32 %i.gu, %i.gj                    ; 2 uses
  %i.gw = icmp eq i32 %i.gv, %i.gj                ; 2 uses
  %.not50.i91.3 = icmp eq i32 %i.gv, 0
  %cond2.i92.3 = or i1 %i.gw, %.not50.i91.3
  br i1 %cond2.i92.3, label %bb.z, label %_ZL15AdjustBlendMaskjjjPj.exit

bb.z:                                             ; preds = %bb.y
  %i.gx = lshr exact i32 %1, 1
  %i.gy = lshr i32 %i.v, %i.gx
  %i.gz = and i32 %i.gy, %i.gj                    ; 2 uses
  %i.ha = icmp eq i32 %i.gz, %i.gj                ; 2 uses
  %.not50.i91.4 = icmp eq i32 %i.gz, 0
  %cond2.i92.4 = or i1 %i.ha, %.not50.i91.4
  br i1 %cond2.i92.4, label %bb.aa, label %_ZL15AdjustBlendMaskjjjPj.exit

bb.aa:                                            ; preds = %bb.z
  %i.hb = mul nuw nsw i32 %.zext55.i87, 5
  %i.hc = lshr i32 %i.v, %i.hb
  %i.hd = and i32 %i.hc, %i.gj                    ; 2 uses
  %i.he = icmp eq i32 %i.hd, %i.gj                ; 2 uses
  %.not50.i91.5 = icmp eq i32 %i.hd, 0
  %cond2.i92.5 = or i1 %i.he, %.not50.i91.5
  br i1 %cond2.i92.5, label %bb.ab, label %_ZL15AdjustBlendMaskjjjPj.exit

bb.ab:                                            ; preds = %bb.aa
  %i.hf = mul nuw nsw i32 %.zext55.i87, 6
  %i.hg = lshr i32 %i.v, %i.hf
  %i.hh = and i32 %i.hg, %i.gj                    ; 2 uses
  %i.hi = icmp eq i32 %i.hh, %i.gj                ; 2 uses
  %.not50.i91.6 = icmp eq i32 %i.hh, 0
  %cond2.i92.6 = or i1 %i.hi, %.not50.i91.6
  br i1 %cond2.i92.6, label %bb.ac, label %_ZL15AdjustBlendMaskjjjPj.exit

bb.ac:                                            ; preds = %bb.ab
  %i.hj = mul nuw nsw i32 %.zext55.i87, 7
  %i.hk = lshr i32 %i.v, %i.hj
  %i.hl = and i32 %i.hk, %i.gj                    ; 2 uses
  %i.hm = icmp eq i32 %i.hl, %i.gj                ; 2 uses
  %.not50.i91.7 = icmp eq i32 %i.hl, 0
  %cond2.i92.7 = or i1 %i.hm, %.not50.i91.7
  br i1 %cond2.i92.7, label %bb.ad, label %_ZL15AdjustBlendMaskjjjPj.exit

bb.ad:                                            ; preds = %bb.ac
  %i.hn = select i1 %i.hi, i32 64, i32 0
  %i.ho = select i1 %i.he, i32 32, i32 0
  %i.hp = select i1 %i.ha, i32 16, i32 0
  %i.hq = select i1 %i.gw, i32 8, i32 0
  %i.hr = select i1 %i.gs, i32 4, i32 0
  %i.hs = select i1 %i.go, i32 2, i32 0
  %i.ht = zext i1 %i.gl to i32
  %.2.i93.1 = or disjoint i32 %i.hs, %i.ht
  %.2.i93.2 = or disjoint i32 %i.hr, %.2.i93.1
  %.2.i93.3 = or disjoint i32 %i.hq, %.2.i93.2
  %.2.i93.4 = or disjoint i32 %i.hp, %.2.i93.3
  %.2.i93.5 = or disjoint i32 %i.ho, %.2.i93.4
  %.2.i93.6 = or i32 %i.hn, %.2.i93.5
  %i.hu = select i1 %i.hm, i32 128, i32 0
  %.2.i93.7 = or i32 %i.hu, %.2.i93.6
  br label %_ZL15AdjustBlendMaskjjjPj.exit

.new:                                             ; preds = %bb.u
  %i.hv = udiv i8 8, %.lhs.trunc.i76
  %.zext58.i77 = zext nneg i8 %i.hv to i32        ; 4 uses
  %notmask.i78 = shl nsw i32 -1, %.zext58.i77
  %i.hw = xor i32 %notmask.i78, -1                ; 3 uses
  %xtraiter = and i32 %1, 1
  %unroll_iter = and i32 %1, 30
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ae, %.new
  %.062.i79 = phi i32 [ 0, %.new ], [ %i.ii, %bb.ae ] ; 5 uses
  %.461.i80 = phi i32 [ 0, %.new ], [ %.5.i82.1, %bb.ae ]
  %niter = phi i32 [ 0, %.new ], [ %niter.next.1, %bb.ae ]
  %i.hx = shl nuw i32 1, %.062.i79
  %i.hy = and i32 %i.hx, %i.v
  %.not47.i81 = icmp eq i32 %i.hy, 0
  %i.hz = mul nuw nsw i32 %.062.i79, %.zext58.i77
  %i.ia = shl i32 %i.hw, %i.hz
  %i.ib = select i1 %.not47.i81, i32 0, i32 %i.ia
  %.5.i82 = or i32 %i.ib, %.461.i80
  %i.ic = or disjoint i32 %.062.i79, 1
  %i.id = shl nuw i32 2, %.062.i79
  %i.ie = and i32 %i.id, %i.v
  %.not47.i81.1 = icmp eq i32 %i.ie, 0
  %i.if = mul nuw nsw i32 %i.ic, %.zext58.i77
  %i.ig = shl i32 %i.hw, %i.if
  %i.ih = select i1 %.not47.i81.1, i32 0, i32 %i.ig
  %.5.i82.1 = or i32 %i.ih, %.5.i82               ; 3 uses
  %i.ii = add nuw nsw i32 %.062.i79, 2            ; 3 uses
  %niter.next.1 = add nuw nsw i32 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZL15AdjustBlendMaskjjjPj.exit.loopexit16.unr-lcssa, label %bb.ae, !llvm.loop !1720

_ZL15AdjustBlendMaskjjjPj.exit.loopexit9.unr-lcssa: ; preds = %bb.g
end_hunk_0
