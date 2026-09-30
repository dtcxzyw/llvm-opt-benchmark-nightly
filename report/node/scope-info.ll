Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/scope-info?download=true
inline.NumInlined: 2263
inline.NumDeleted: 671
begin_hunk_0_@_ZN2v88internal9ScopeInfo6CreateINS0_7IsolateEEENS0_6HandleIS1_EEPT_PNS0_4ZoneEPNS0_5ScopeENS0_17MaybeDirectHandleIS1_EE:bb.a
  %.not.i.i.i = icmp eq i64 %i.ea, 0
  %i.eb = and i64 %i.dz, 24
  %.not7.i.i.i = icmp ne i64 %i.eb, 0
  %i.ec = and i1 %.not.i.i.i, %.not7.i.i.i
  %.1.i.i.i = select i1 %i.ec, i32 1, i32 4
  call void @_ZN2v88internal21WriteBarrierModeScopeC1ENS0_6TaggedINS0_10HeapObjectEEENS0_16WriteBarrierModeE(ptr noundef nonnull align 4 dereferenceable(4) %4, i64 %i.dw, i32 noundef %.1.i.i.i) #17
  %i.ed = load i8, ptr %i.al, align 8             ; 2 uses
  %i.ee = icmp eq i8 %i.ed, 4
  br i1 %i.ee, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.ef = call noundef ptr @_ZN2v88internal5Scope18AsDeclarationScopeEv(ptr noundef nonnull align 8 dereferenceable(124) %2) #17
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 124
  %i.eh = load i16, ptr %i.eg, align 4
  %.fr465 = freeze i16 %i.eh                      ; 2 uses
  %i.ei = trunc i16 %.fr465 to i1
  %.pr447 = load i8, ptr %i.al, align 8
  %i.ej = shl i16 %.fr465, 14
  %i.ek = and i16 %i.ej, -32768
  %i.el = zext i16 %i.ek to i32
  %i.em = select i1 %i.ei, i32 65536, i32 0
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.en = phi i8 [ %.pr447, %bb.af ], [ %i.ed, %bb.ae ] ; 3 uses
  %.0208 = phi i32 [ %i.el, %bb.af ], [ 0, %bb.ae ]
  %.0207 = phi i32 [ %i.em, %bb.af ], [ 0, %bb.ae ]
  %i.eo = zext i8 %i.en to i32
  %i.ep = select i1 %.0203, i32 16, i32 0
  %i.eq = load i16, ptr %i.e, align 1
  %.fr467 = freeze i16 %i.eq                      ; 6 uses
  %i.er = trunc i16 %.fr467 to i1                 ; 2 uses
  %i.es = select i1 %i.er, i32 32, i32 0
  %i.et = lshr i16 %.fr467, 2
  %i.eu = and i16 %i.et, 64
  %i.ev = zext nneg i16 %i.eu to i32
  %i.ew = select i1 %i.br, i32 512, i32 0
  %i.ex = select i1 %i.cd, i32 1024, i32 0
  %i.ey = shl nuw nsw i32 %.1200445, 12
  %i.ez = select i1 %i.an, i32 16384, i32 0
  %i.fa = select i1 %.not482, i32 0, i32 4194304
  %i.fb = or disjoint i32 %.1198, %i.fa
  %i.fc = or disjoint i32 %i.fb, %i.ak
  %i.fd = or disjoint i32 %i.fc, %i.ez
  %i.fe = or i32 %i.fd, %i.ey
  %i.ff = or i32 %i.fe, %i.ew
  %i.fg = or i32 %i.ff, %i.ex
  %i.fh = or i32 %i.fg, %i.ep
  %i.fi = or i32 %i.fh, %.0202
  %i.fj = or i32 %i.fi, %i.eo
  %i.fk = or i32 %i.fj, %.0208
  %i.fl = or i32 %i.fk, %.0207
  %i.fm = or i32 %i.fl, %i.es
  %i.fn = or i32 %i.fm, %i.ev                     ; 4 uses
  switch i8 %i.en, label %_ZNK2v88internal5Scope27ForceContextForLanguageModeEv.exit [
    i8 4, label %_ZNK2v88internal5Scope27ForceContextForLanguageModeEv.exit.thread
    i8 1, label %_ZNK2v88internal5Scope27ForceContextForLanguageModeEv.exit.thread
    i8 0, label %_ZNK2v88internal5Scope27ForceContextForLanguageModeEv.exit.thread
  ]

_ZNK2v88internal5Scope27ForceContextForLanguageModeEv.exit: ; preds = %bb.ag
  %i.fo = load ptr, ptr %2, align 8
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 121
  %i.fq = load i16, ptr %i.fp, align 1
  %.fr = freeze i16 %i.fq
  %i.fr = trunc i16 %.fr to i1
  %i.fs = xor i1 %i.fr, true
  %i.ft = and i1 %i.er, %i.fs
  %spec.select455 = select i1 %i.ft, i32 16777216, i32 0
  %i.fu = or i32 %spec.select455, %i.fn
  br label %_ZNK2v88internal5Scope27ForceContextForLanguageModeEv.exit.thread

_ZNK2v88internal5Scope27ForceContextForLanguageModeEv.exit.thread: ; preds = %_ZNK2v88internal5Scope27ForceContextForLanguageModeEv.exit, %bb.ag, %bb.ag, %bb.ag
  %i.fv = phi i32 [ %i.fn, %bb.ag ], [ %i.fu, %_ZNK2v88internal5Scope27ForceContextForLanguageModeEv.exit ], [ %i.fn, %bb.ag ], [ %i.fn, %bb.ag ]
  %i.fw = and i16 %.fr467, 512
  %i.fx = zext nneg i16 %i.fw to i32
  %i.fy = shl nuw nsw i32 %i.fx, 16
  %i.fz = or i32 %i.fv, %i.fy                     ; 2 uses
  switch i8 %i.en, label %_ZNK2v88internal5Scope23HasContextExtensionSlotEv.exit [
    i8 5, label %_ZNK2v88internal5Scope23HasContextExtensionSlotEv.exit.thread
    i8 8, label %_ZNK2v88internal5Scope23HasContextExtensionSlotEv.exit.thread
  ]

_ZNK2v88internal5Scope23HasContextExtensionSlotEv.exit: ; preds = %_ZNK2v88internal5Scope27ForceContextForLanguageModeEv.exit.thread
  %i.ga = and i16 %.fr467, 4
  %.not468 = icmp eq i16 %i.ga, 0
  br i1 %.not468, label %bb.ah, label %_ZNK2v88internal5Scope23HasContextExtensionSlotEv.exit.thread

_ZNK2v88internal5Scope23HasContextExtensionSlotEv.exit.thread: ; preds = %_ZNK2v88internal5Scope27ForceContextForLanguageModeEv.exit.thread, %_ZNK2v88internal5Scope27ForceContextForLanguageModeEv.exit.thread, %_ZNK2v88internal5Scope23HasContextExtensionSlotEv.exit
  %i.gb = or i32 %i.fz, 67108864
  br label %bb.ah

bb.ah:                                            ; preds = %_ZNK2v88internal5Scope23HasContextExtensionSlotEv.exit, %_ZNK2v88internal5Scope23HasContextExtensionSlotEv.exit.thread
  %i.gc = phi i32 [ %i.gb, %_ZNK2v88internal5Scope23HasContextExtensionSlotEv.exit.thread ], [ %i.fz, %_ZNK2v88internal5Scope23HasContextExtensionSlotEv.exit ]
  %i.gd = and i16 %.fr467, 16
  %i.ge = zext nneg i16 %i.gd to i32
  %i.gf = shl nuw nsw i32 %i.ge, 24
  %i.gg = icmp slt i16 %.fr467, 0
  %i.gh = select i1 %i.gg, i32 1073741824, i32 0
  %i.gi = getelementptr inbounds nuw i8, ptr %2, i64 123
  %i.gj = load i8, ptr %i.gi, align 1
  %i.gk = trunc i8 %i.gj to i1
  %i.gl = select i1 %i.gk, i32 -2147483648, i32 0
  %i.gm = or disjoint i32 %i.gf, %i.gh
  %i.gn = or i32 %i.gm, %i.gc
  %i.go = or i32 %i.gn, %i.gl
  %i.gp = add i64 %i.dw, 7
  %i.gq = inttoptr i64 %i.gp to ptr               ; 10 uses
  store atomic volatile i32 %i.go, ptr %i.gq monotonic, align 4
  %i.gr = sext i32 %i.cj to i64
  %i.gs = shl nsw i64 %i.gr, 32
  %i.gt = add i64 %i.dw, 15
  %i.gu = inttoptr i64 %i.gt to ptr
  store atomic volatile i64 %i.gs, ptr %i.gu monotonic, align 8
  %i.gv = sext i32 %.0.lcssa to i64
  %i.gw = shl nsw i64 %i.gv, 32
  %i.gx = add i64 %i.dw, 23
  %i.gy = inttoptr i64 %i.gx to ptr               ; 3 uses
  store atomic volatile i64 %i.gw, ptr %i.gy monotonic, align 8
  %i.gz = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.ha = load i32, ptr %i.gz, align 8
  %i.hb = sext i32 %i.ha to i64
  %i.hc = shl nsw i64 %i.hb, 32
  %i.hd = add i64 %i.dw, 31
  %i.he = inttoptr i64 %i.hd to ptr
  store atomic volatile i64 %i.hc, ptr %i.he monotonic, align 8
  %i.hf = getelementptr inbounds nuw i8, ptr %2, i64 108
  %i.hg = load i32, ptr %i.hf, align 4
  %i.hh = sext i32 %i.hg to i64
  %i.hi = shl nsw i64 %i.hh, 32
  %i.hj = add i64 %i.dw, 39
  %i.hk = inttoptr i64 %i.hj to ptr
  store atomic volatile i64 %i.hi, ptr %i.hk monotonic, align 8
  %i.hl = load i8, ptr %i.al, align 8
  %i.hm = icmp eq i8 %i.hl, 5
  br i1 %i.hm, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.hn = sext i32 %.0195.lcssa to i64
  %i.ho = shl nsw i64 %i.hn, 32
  %i.hp = add i64 %i.dw, 47
  %i.hq = inttoptr i64 %i.hp to ptr
  store atomic volatile i64 %i.ho, ptr %i.hq monotonic, align 8
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.0205 = phi i32 [ 6, %bb.ai ], [ 5, %bb.ah ]   ; 3 uses
  br i1 %i.ad, label %_ZN2v88internal24TorqueGeneratedScopeInfoINS0_9ScopeInfoENS0_10HeapObjectEE33set_context_local_names_hashtableENS0_6TaggedINS0_20NameToIndexHashTableEEENS0_16WriteBarrierModeE.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.hr = load i64, ptr %.sroa.0367.0, align 8    ; 5 uses
  %i.hs = load atomic volatile i32, ptr %i.gq monotonic, align 4, !noalias !44
  %i.ht = and i32 %i.hs, 15
  %i.hu = icmp eq i32 %i.ht, 5
  %i.hv = select i1 %i.hu, i64 56, i64 48
  %i.hw = load i64, ptr %i.gy, align 8, !noalias !45 ; 2 uses
  %i.hx = icmp slt i64 %i.hw, 322122547200
  %i.hy = lshr i64 %i.hw, 29
  %i.hz = and i64 %i.hy, 4294967288
  %i.ia = select i1 %i.hx, i64 %i.hz, i64 322122547200
  %i.ib = add nuw nsw i64 %i.ia, %i.hv
  %sext.i = shl i64 %i.ib, 32
  %i.ic = ashr exact i64 %sext.i, 32
  %i.id = add i64 %i.dw, -1
  %i.ie = add i64 %i.id, %i.ic                    ; 3 uses
  %i.if = inttoptr i64 %i.ie to ptr
  store atomic volatile i64 %i.hr, ptr %i.if monotonic, align 8
  %i.ig = trunc i64 %i.hr to i1
  br i1 %i.ig, label %bb.al, label %_ZN2v88internal24TorqueGeneratedScopeInfoINS0_9ScopeInfoENS0_10HeapObjectEE33set_context_local_names_hashtableENS0_6TaggedINS0_20NameToIndexHashTableEEENS0_16WriteBarrierModeE.exit

bb.al:                                            ; preds = %bb.ak
  %i.ih = load i64, ptr %i.dy, align 262144       ; 2 uses
  %i.ii = and i64 %i.ih, 32
  %.not.i.i.i223 = icmp eq i64 %i.ii, 0
  %i.ij = and i64 %i.ih, 25
  %.not37.i.i.i = icmp eq i64 %i.ij, 0
  br i1 %.not37.i.i.i, label %bb.am, label %bb.ao

bb.am:                                            ; preds = %bb.al
  %i.ik = and i64 %i.hr, -262144
  %i.il = inttoptr i64 %i.ik to ptr
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.il, align 262144
  %i.im = and i64 %.sroa.0.0.copyload.i.i.i.i.i, 25
  %.not38.i.i.i = icmp eq i64 %i.im, 0
  br i1 %.not38.i.i.i, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.dw, i64 noundef %i.ie, i64 %i.hr) #17
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am, %bb.al
  br i1 %.not.i.i.i223, label %_ZN2v88internal24TorqueGeneratedScopeInfoINS0_9ScopeInfoENS0_10HeapObjectEE33set_context_local_names_hashtableENS0_6TaggedINS0_20NameToIndexHashTableEEENS0_16WriteBarrierModeE.exit, label %bb.ap, !prof !6

bb.ap:                                            ; preds = %bb.ao
  call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.dw, i64 %i.ie, i64 %i.hr) #17
  br label %_ZN2v88internal24TorqueGeneratedScopeInfoINS0_9ScopeInfoENS0_10HeapObjectEE33set_context_local_names_hashtableENS0_6TaggedINS0_20NameToIndexHashTableEEENS0_16WriteBarrierModeE.exit

_ZN2v88internal24TorqueGeneratedScopeInfoINS0_9ScopeInfoENS0_10HeapObjectEE33set_context_local_names_hashtableENS0_6TaggedINS0_20NameToIndexHashTableEEENS0_16WriteBarrierModeE.exit: ; preds = %bb.ap, %bb.ao, %bb.ak, %bb.aj
  %i.in = add nsw i32 %.0205, %i.dc               ; 2 uses
  %i.io = load atomic volatile i32, ptr %i.gq monotonic, align 4, !noalias !46
  %i.ip = load i64, ptr %i.gy, align 8, !noalias !47 ; 3 uses
  %i.iq = load atomic volatile i32, ptr %i.gq monotonic, align 4, !noalias !48
  %i.ir = load atomic volatile i32, ptr %i.gq monotonic, align 4, !noalias !49
  %i.is = load atomic volatile i32, ptr %i.gq monotonic, align 4, !noalias !50
  %i.it = load atomic volatile i32, ptr %i.gq monotonic, align 4, !noalias !51
  %i.iu = load atomic volatile i32, ptr %i.gq monotonic, align 4, !noalias !52
  %i.iv = load atomic volatile i32, ptr %i.gq monotonic, align 4, !noalias !53
  %i.iw = and i32 %i.iv, 15
  %i.ix = icmp eq i32 %i.iw, 5
  br i1 %i.ix, label %bb.aq, label %_ZNK2v88internal9ScopeInfo20ModuleVariablesIndexEv.exit

bb.aq:                                            ; preds = %_ZN2v88internal24TorqueGeneratedScopeInfoINS0_9ScopeInfoENS0_10HeapObjectEE33set_context_local_names_hashtableENS0_6TaggedINS0_20NameToIndexHashTableEEENS0_16WriteBarrierModeE.exit
  %i.iy = load atomic volatile i32, ptr %i.gq monotonic, align 4, !noalias !54
  %i.iz = and i32 %i.iy, 15
  %i.ja = icmp eq i32 %i.iz, 5
  br i1 %i.ja, label %_ZNK2v88internal9ScopeInfo20ModuleVariablesIndexEv.exit, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #18, !noalias !53
  unreachable

_ZNK2v88internal9ScopeInfo20ModuleVariablesIndexEv.exit: ; preds = %_ZN2v88internal24TorqueGeneratedScopeInfoINS0_9ScopeInfoENS0_10HeapObjectEE33set_context_local_names_hashtableENS0_6TaggedINS0_20NameToIndexHashTableEEENS0_16WriteBarrierModeE.exit, %bb.aq
  %i.jb = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.jc = icmp eq ptr %i.a, %i.jb
  br i1 %i.jc, label %._crit_edge479, label %.lr.ph478.preheader

.lr.ph478.preheader:                              ; preds = %_ZNK2v88internal9ScopeInfo20ModuleVariablesIndexEv.exit
  %6 = icmp sgt i64 %i.ip, 322122547199
  %7 = select i1 %6, i64 8, i64 0
  %i.jd = and i32 %i.io, 15
  %i.je = icmp eq i32 %i.jd, 5
  %i.jf = select i1 %i.je, i64 56, i64 48
  %8 = add nuw nsw i64 %7, %i.jf
  %9 = ashr i64 %i.ip, 29
  %10 = and i64 %9, -8                            ; 2 uses
  %i.jg = add nsw i64 %8, %10
  %11 = icmp slt i64 %i.ip, 322122547200
  %i.jh = select i1 %11, i64 %10, i64 0
  %i.ji = add nsw i64 %i.jg, %i.jh
  %i.jj = lshr i32 %i.iq, 7
  %i.jk = and i32 %i.jj, 8
  %i.jl = zext nneg i32 %i.jk to i64
  %i.jm = add nsw i64 %i.ji, %i.jl
  %i.jn = and i32 %i.ir, 12288
  %.not.i.not.i.i.i.i.i.i = icmp eq i32 %i.jn, 0
  %i.jo = select i1 %.not.i.not.i.i.i.i.i.i, i64 0, i64 16
  %i.jp = add nsw i64 %i.jm, %i.jo
  %i.jq = lshr i32 %i.is, 11
  %i.jr = and i32 %i.jq, 8
  %i.js = zext nneg i32 %i.jr to i64
  %i.jt = add nsw i64 %i.jp, %i.js
  %i.ju = lshr i32 %i.it, 19
  %i.jv = and i32 %i.ju, 8
  %i.jw = zext nneg i32 %i.jv to i64
  %i.jx = add nsw i64 %i.jt, %i.jw
  %i.jy = and i32 %i.iu, 15
  %i.jz = icmp eq i32 %i.jy, 5
  %i.ka = select i1 %i.jz, i64 8, i64 0
  %i.kb = add nsw i64 %i.jx, %i.ka
  %i.kc = trunc i64 %i.kb to i32
  %i.kd = add nsw i32 %i.kc, -8
  %i.ke = sdiv i32 %i.kd, 8
  br label %.lr.ph478

._crit_edge479:                                   ; preds = %bb.bg, %_ZNK2v88internal9ScopeInfo20ModuleVariablesIndexEv.exit
  %i.kf = load i16, ptr %i.e, align 1
  %i.kg = and i16 %i.kf, 256
  %.not470 = icmp ne i16 %i.kg, 0
  %i.kh = icmp sgt i32 %i.cj, 0
  %or.cond = select i1 %.not470, i1 %i.kh, i1 false
  br i1 %or.cond, label %.lr.ph481.preheader, label %.loopexit

.lr.ph481.preheader:                              ; preds = %._crit_edge479
  %wide.trip.count = zext nneg i32 %i.cj to i64
  br label %.lr.ph481

.lr.ph478:                                        ; preds = %.lr.ph478.preheader, %bb.bg
  %.0209477 = phi i32 [ %.1210, %bb.bg ], [ %i.ke, %.lr.ph478.preheader ] ; 4 uses
  %.sroa.0330.0476 = phi ptr [ %i.nz, %bb.bg ], [ %i.a, %.lr.ph478.preheader ] ; 2 uses
  %i.ki = load ptr, ptr %.sroa.0330.0476, align 8 ; 6 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 40 ; 2 uses
  %i.kk = load i16, ptr %i.kj, align 8            ; 4 uses
  %i.kl = lshr i16 %i.kk, 7
  %i.km = trunc i16 %i.kl to i8
  %i.kn = and i8 %i.km, 7
  switch i8 %i.kn, label %bb.bg [
    i8 3, label %bb.as
    i8 6, label %bb.as
    i8 5, label %bb.ba
  ]

bb.as:                                            ; preds = %.lr.ph478, %.lr.ph478
  %i.ko = getelementptr inbounds nuw i8, ptr %i.ki, i64 32
  %i.kp = load i32, ptr %i.ko, align 8
  %i.kq = load i8, ptr %i.al, align 8
  switch i8 %i.kq, label %_ZNK2v88internal5Scope23HasContextExtensionSlotEv.exit.i [
    i8 5, label %_ZNK2v88internal5Scope23HasContextExtensionSlotEv.exit.thread.i
    i8 8, label %_ZNK2v88internal5Scope23HasContextExtensionSlotEv.exit.thread.i
  ]

_ZNK2v88internal5Scope23HasContextExtensionSlotEv.exit.i: ; preds = %bb.as
  %i.kr = load i16, ptr %i.e, align 1
  %.fr3.i = freeze i16 %i.kr
  %i.ks = and i16 %.fr3.i, 4
  %.not.i = icmp eq i16 %i.ks, 0
  br i1 %.not.i, label %_ZNK2v88internal5Scope19ContextHeaderLengthEv.exit, label %_ZNK2v88internal5Scope23HasContextExtensionSlotEv.exit.thread.i

_ZNK2v88internal5Scope23HasContextExtensionSlotEv.exit.thread.i: ; preds = %_ZNK2v88internal5Scope23HasContextExtensionSlotEv.exit.i, %bb.as, %bb.as
  br label %_ZNK2v88internal5Scope19ContextHeaderLengthEv.exit

_ZNK2v88internal5Scope19ContextHeaderLengthEv.exit: ; preds = %_ZNK2v88internal5Scope23HasContextExtensionSlotEv.exit.i, %_ZNK2v88internal5Scope23HasContextExtensionSlotEv.exit.thread.i
  %.neg = phi i32 [ -3, %_ZNK2v88internal5Scope23HasContextExtensionSlotEv.exit.thread.i ], [ -2, %_ZNK2v88internal5Scope23HasContextExtensionSlotEv.exit.i ]
  %i.kt = add i32 %.neg, %i.kp                    ; 3 uses
  %i.ku = and i16 %i.kk, 15
  %i.kv = lshr i16 %i.kk, 8
  %i.kw = and i16 %i.kv, 48
  %i.kx = or disjoint i16 %i.kw, %i.ku
  %i.ky = zext nneg i16 %i.kx to i64
  %i.kz = lshr i16 %i.kk, 14
  %i.la = and i16 %i.kz, 1
  %i.lb = zext nneg i16 %i.la to i64
  br i1 %i.ad, label %bb.at, label %bb.az

bb.at:                                            ; preds = %_ZNK2v88internal5Scope19ContextHeaderLengthEv.exit
  %i.lc = add nsw i32 %i.kt, %.0205
  %i.ld = getelementptr inbounds nuw i8, ptr %i.ki, i64 8
  %i.le = load ptr, ptr %i.ld, align 8
  %.sroa.0.0.copyload.i.i225 = load ptr, ptr %i.le, align 8
  %i.lf = load i64, ptr %.sroa.0.0.copyload.i.i225, align 8 ; 5 uses
  %i.lg = load i32, ptr %4, align 4
  %i.lh = shl nsw i32 %i.lc, 3
  %i.li = or disjoint i32 %i.lh, 7
  %i.lj = sext i32 %i.li to i64
  %i.lk = add i64 %i.dw, %i.lj                    ; 3 uses
  %i.ll = inttoptr i64 %i.lk to ptr
  store atomic volatile i64 %i.lf, ptr %i.ll monotonic, align 8
  %i.lm = icmp sgt i32 %i.lg, 1
  %i.ln = trunc i64 %i.lf to i1
  %or.cond.i.i = select i1 %i.lm, i1 %i.ln, i1 false
  br i1 %or.cond.i.i, label %bb.au, label %_ZN2v88internal9ScopeInfo3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit

bb.au:                                            ; preds = %bb.at
  %i.lo = load i64, ptr %i.dy, align 262144       ; 2 uses
  %i.lp = and i64 %i.lo, 32
  %.not.i.i.i227 = icmp eq i64 %i.lp, 0
  %i.lq = and i64 %i.lo, 25
  %.not37.i.i.i228 = icmp eq i64 %i.lq, 0
  br i1 %.not37.i.i.i228, label %bb.av, label %bb.ax

bb.av:                                            ; preds = %bb.au
  %i.lr = and i64 %i.lf, -262144
  %i.ls = inttoptr i64 %i.lr to ptr
  %.sroa.0.0.copyload.i.i.i.i.i229 = load i64, ptr %i.ls, align 262144
  %i.lt = and i64 %.sroa.0.0.copyload.i.i.i.i.i229, 25
  %.not38.i.i.i230 = icmp eq i64 %i.lt, 0
  br i1 %.not38.i.i.i230, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.dw, i64 noundef %i.lk, i64 %i.lf) #17
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av, %bb.au
  br i1 %.not.i.i.i227, label %_ZN2v88internal9ScopeInfo3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit, label %bb.ay, !prof !6

bb.ay:                                            ; preds = %bb.ax
  call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.dw, i64 %i.lk, i64 %i.lf) #17
  br label %_ZN2v88internal9ScopeInfo3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit

bb.az:                                            ; preds = %_ZNK2v88internal5Scope19ContextHeaderLengthEv.exit
  %i.lu = getelementptr inbounds nuw i8, ptr %i.ki, i64 8
  %i.lv = load ptr, ptr %i.lu, align 8
  %.sroa.0.0.copyload.i.i231 = load ptr, ptr %i.lv, align 8
  %i.lw = call ptr @_ZN2v88internal20NameToIndexHashTable3AddINS0_7IsolateEEENS0_6HandleIS1_EEPT_S5_NS0_12DirectHandleINS0_4NameEEEi(ptr noundef nonnull %0, ptr %.sroa.0367.0, ptr %.sroa.0.0.copyload.i.i231, i32 noundef %i.kt) ; 0 uses
  br label %_ZN2v88internal9ScopeInfo3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit

_ZN2v88internal9ScopeInfo3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit: ; preds = %bb.ay, %bb.ax, %bb.at, %bb.az
  %i.lx = add nsw i32 %i.kt, %i.in
  %i.ly = shl nuw nsw i64 %i.lb, 54
  %i.lz = shl nuw nsw i64 %i.ky, 32
  %i.ma = or disjoint i64 %i.lz, %i.ly
  %i.mb = or disjoint i64 %i.ma, 18014123631575040
  %i.mc = shl nsw i32 %i.lx, 3
  %i.md = or disjoint i32 %i.mc, 7
  %i.me = sext i32 %i.md to i64
  %i.mf = add i64 %i.dw, %i.me
  %i.mg = inttoptr i64 %i.mf to ptr
  store atomic volatile i64 %i.mb, ptr %i.mg monotonic, align 8
  br label %bb.bg

bb.ba:                                            ; preds = %.lr.ph478
  %i.mh = getelementptr inbounds nuw i8, ptr %i.ki, i64 8
  %i.mi = load ptr, ptr %i.mh, align 8
  %.sroa.0.0.copyload.i.i232 = load ptr, ptr %i.mi, align 8
  %i.mj = load i64, ptr %.sroa.0.0.copyload.i.i232, align 8 ; 5 uses
  %i.mk = load i32, ptr %4, align 4
  %i.ml = shl i32 %.0209477, 3                    ; 3 uses
  %i.mm = or disjoint i32 %i.ml, 7
  %i.mn = sext i32 %i.mm to i64
  %i.mo = add i64 %i.dw, %i.mn                    ; 3 uses
  %i.mp = inttoptr i64 %i.mo to ptr
  store atomic volatile i64 %i.mj, ptr %i.mp monotonic, align 8
  %i.mq = icmp sgt i32 %i.mk, 1
  %i.mr = trunc i64 %i.mj to i1
  %or.cond.i.i235 = select i1 %i.mq, i1 %i.mr, i1 false
  br i1 %or.cond.i.i235, label %bb.bb, label %_ZN2v88internal9ScopeInfo3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit240

bb.bb:                                            ; preds = %bb.ba
  %i.ms = load i64, ptr %i.dy, align 262144       ; 2 uses
  %i.mt = and i64 %i.ms, 32
  %.not.i.i.i236 = icmp eq i64 %i.mt, 0
  %i.mu = and i64 %i.ms, 25
  %.not37.i.i.i237 = icmp eq i64 %i.mu, 0
  br i1 %.not37.i.i.i237, label %bb.bc, label %bb.be

bb.bc:                                            ; preds = %bb.bb
  %i.mv = and i64 %i.mj, -262144
  %i.mw = inttoptr i64 %i.mv to ptr
  %.sroa.0.0.copyload.i.i.i.i.i238 = load i64, ptr %i.mw, align 262144
  %i.mx = and i64 %.sroa.0.0.copyload.i.i.i.i.i238, 25
  %.not38.i.i.i239 = icmp eq i64 %i.mx, 0
  br i1 %.not38.i.i.i239, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.dw, i64 noundef %i.mo, i64 %i.mj) #17
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc, %bb.bb
  br i1 %.not.i.i.i236, label %_ZN2v88internal9ScopeInfo3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit240, label %bb.bf, !prof !6

bb.bf:                                            ; preds = %bb.be
  call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.dw, i64 %i.mo, i64 %i.mj) #17
  br label %_ZN2v88internal9ScopeInfo3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit240

_ZN2v88internal9ScopeInfo3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit240: ; preds = %bb.ba, %bb.be, %bb.bf
  %i.my = getelementptr inbounds nuw i8, ptr %i.ki, i64 32
  %i.mz = load i32, ptr %i.my, align 8
  %i.na = sext i32 %i.mz to i64
  %i.nb = shl nsw i64 %i.na, 32
end_hunk_0
begin_hunk_1_@_ZN2v88internal20SourceTextModuleInfo3NewINS0_7IsolateEEENS0_12DirectHandleIS1_EEPT_PNS0_4ZoneEPNS0_26SourceTextModuleDescriptorE:bb.a

bb.z:                                             ; preds = %bb.y
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.ea, i64 %i.eb, i64 %i.dx) #17
  br label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit97

_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit97: ; preds = %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit92, %bb.y, %bb.z
  %i.ek = load i64, ptr %i.dd, align 8
  %i.el = add i64 %i.ek, -1                       ; 3 uses
  %i.em = inttoptr i64 %i.el to ptr
  %i.en = load i64, ptr %i.ca, align 8            ; 5 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.em, i64 32 ; 2 uses
  store atomic volatile i64 %i.en, ptr %i.eo monotonic, align 8
  %i.ep = trunc i64 %i.en to i1
  br i1 %i.ep, label %bb.aa, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit102

bb.aa:                                            ; preds = %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit97
  %i.eq = or disjoint i64 %i.el, 1                ; 2 uses
  %i.er = ptrtoint ptr %i.eo to i64               ; 2 uses
  %i.es = and i64 %i.el, -262144
  %i.et = inttoptr i64 %i.es to ptr
  %i.eu = load i64, ptr %i.et, align 262144       ; 2 uses
  %i.ev = and i64 %i.eu, 32
  %.not.i.i.i.i.i98 = icmp eq i64 %i.ev, 0
  %i.ew = and i64 %i.eu, 25
  %.not37.i.i.i.i.i99 = icmp eq i64 %i.ew, 0
  br i1 %.not37.i.i.i.i.i99, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  %i.ex = and i64 %i.en, -262144
  %i.ey = inttoptr i64 %i.ex to ptr
  %.sroa.0.0.copyload.i.i.i.i.i.i.i100 = load i64, ptr %i.ey, align 262144
  %i.ez = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i100, 25
  %.not38.i.i.i.i.i101 = icmp eq i64 %i.ez, 0
  br i1 %.not38.i.i.i.i.i101, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.eq, i64 noundef %i.er, i64 %i.en) #17
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab, %bb.aa
  br i1 %.not.i.i.i.i.i98, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit102, label %bb.ae, !prof !6

bb.ae:                                            ; preds = %bb.ad
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.eq, i64 %i.er, i64 %i.en) #17
  br label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit102

_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit102: ; preds = %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit97, %bb.ad, %bb.ae
  %i.fa = load i64, ptr %i.dd, align 8
  %i.fb = add i64 %i.fa, -1                       ; 3 uses
  %i.fc = inttoptr i64 %i.fb to ptr
  %i.fd = load i64, ptr %i.bd, align 8            ; 5 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fc, i64 40 ; 2 uses
  store atomic volatile i64 %i.fd, ptr %i.fe monotonic, align 8
  %i.ff = trunc i64 %i.fd to i1
  br i1 %i.ff, label %bb.af, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit107

bb.af:                                            ; preds = %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit102
  %i.fg = or disjoint i64 %i.fb, 1                ; 2 uses
  %i.fh = ptrtoint ptr %i.fe to i64               ; 2 uses
  %i.fi = and i64 %i.fb, -262144
  %i.fj = inttoptr i64 %i.fi to ptr
  %i.fk = load i64, ptr %i.fj, align 262144       ; 2 uses
  %i.fl = and i64 %i.fk, 32
  %.not.i.i.i.i.i103 = icmp eq i64 %i.fl, 0
  %i.fm = and i64 %i.fk, 25
  %.not37.i.i.i.i.i104 = icmp eq i64 %i.fm, 0
  br i1 %.not37.i.i.i.i.i104, label %bb.ag, label %bb.ai

bb.ag:                                            ; preds = %bb.af
  %i.fn = and i64 %i.fd, -262144
  %i.fo = inttoptr i64 %i.fn to ptr
  %.sroa.0.0.copyload.i.i.i.i.i.i.i105 = load i64, ptr %i.fo, align 262144
  %i.fp = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i105, 25
  %.not38.i.i.i.i.i106 = icmp eq i64 %i.fp, 0
  br i1 %.not38.i.i.i.i.i106, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.fg, i64 noundef %i.fh, i64 %i.fd) #17
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag, %bb.af
  br i1 %.not.i.i.i.i.i103, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit107, label %bb.aj, !prof !6

bb.aj:                                            ; preds = %bb.ai
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.fg, i64 %i.fh, i64 %i.fd) #17
  br label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit107

_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit107: ; preds = %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit102, %bb.ai, %bb.aj
  %i.fq = load i64, ptr %i.dd, align 8
  %i.fr = add i64 %i.fq, -1                       ; 3 uses
  %i.fs = inttoptr i64 %i.fr to ptr
  %i.ft = load i64, ptr %i.ce, align 8            ; 5 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fs, i64 48 ; 2 uses
  store atomic volatile i64 %i.ft, ptr %i.fu monotonic, align 8
  %i.fv = trunc i64 %i.ft to i1
  br i1 %i.fv, label %bb.ak, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit112

bb.ak:                                            ; preds = %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit107
  %i.fw = or disjoint i64 %i.fr, 1                ; 2 uses
  %i.fx = ptrtoint ptr %i.fu to i64               ; 2 uses
  %i.fy = and i64 %i.fr, -262144
  %i.fz = inttoptr i64 %i.fy to ptr
  %i.ga = load i64, ptr %i.fz, align 262144       ; 2 uses
  %i.gb = and i64 %i.ga, 32
  %.not.i.i.i.i.i108 = icmp eq i64 %i.gb, 0
  %i.gc = and i64 %i.ga, 25
  %.not37.i.i.i.i.i109 = icmp eq i64 %i.gc, 0
  br i1 %.not37.i.i.i.i.i109, label %bb.al, label %bb.an

bb.al:                                            ; preds = %bb.ak
  %i.gd = and i64 %i.ft, -262144
  %i.ge = inttoptr i64 %i.gd to ptr
  %.sroa.0.0.copyload.i.i.i.i.i.i.i110 = load i64, ptr %i.ge, align 262144
  %i.gf = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i110, 25
  %.not38.i.i.i.i.i111 = icmp eq i64 %i.gf, 0
  br i1 %.not38.i.i.i.i.i111, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.fw, i64 noundef %i.fx, i64 %i.ft) #17
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al, %bb.ak
  br i1 %.not.i.i.i.i.i108, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit112, label %bb.ao, !prof !6

bb.ao:                                            ; preds = %bb.an
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.fw, i64 %i.fx, i64 %i.ft) #17
  br label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit112

_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit112: ; preds = %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit107, %bb.an, %bb.ao
  ret ptr %i.dd

.lr.ph209:                                        ; preds = %._crit_edge205, %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit117
  %indvars.iv215 = phi i64 [ %indvars.iv.next216, %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit117 ], [ 0, %._crit_edge205 ] ; 2 uses
  %.sroa.0137.0206 = phi ptr [ %i.ha, %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit117 ], [ %i.cg, %._crit_edge205 ] ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %.sroa.0137.0206, i64 40
  %i.gh = load ptr, ptr %i.gg, align 8
  %i.gi = tail call ptr @_ZNK2v88internal26SourceTextModuleDescriptor5Entry9SerializeINS0_7IsolateEEENS0_12DirectHandleINS0_25SourceTextModuleInfoEntryEEEPT_(ptr noundef nonnull align 8 dereferenceable(40) %i.gh, ptr noundef nonnull %0) #17
  %i.gj = load i64, ptr %i.ce, align 8
  %i.gk = add i64 %i.gj, -1                       ; 3 uses
  %i.gl = inttoptr i64 %i.gk to ptr
  %indvars.iv.next216 = add nuw nsw i64 %indvars.iv215, 1
  %i.gm = load i64, ptr %i.gi, align 8            ; 5 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gl, i64 16
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %i.gn, i64 %indvars.iv215 ; 2 uses
  store atomic volatile i64 %i.gm, ptr %i.go monotonic, align 8
  %i.gp = trunc i64 %i.gm to i1
  br i1 %i.gp, label %bb.ap, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit117

bb.ap:                                            ; preds = %.lr.ph209
  %i.gq = or disjoint i64 %i.gk, 1                ; 2 uses
  %i.gr = ptrtoint ptr %i.go to i64               ; 2 uses
  %i.gs = and i64 %i.gk, -262144
  %i.gt = inttoptr i64 %i.gs to ptr
  %i.gu = load i64, ptr %i.gt, align 262144       ; 2 uses
  %i.gv = and i64 %i.gu, 32
  %.not.i.i.i.i.i113 = icmp eq i64 %i.gv, 0
  %i.gw = and i64 %i.gu, 25
  %.not37.i.i.i.i.i114 = icmp eq i64 %i.gw, 0
  br i1 %.not37.i.i.i.i.i114, label %bb.aq, label %bb.as

bb.aq:                                            ; preds = %bb.ap
  %i.gx = and i64 %i.gm, -262144
  %i.gy = inttoptr i64 %i.gx to ptr
  %.sroa.0.0.copyload.i.i.i.i.i.i.i115 = load i64, ptr %i.gy, align 262144
  %i.gz = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i115, 25
  %.not38.i.i.i.i.i116 = icmp eq i64 %i.gz, 0
  br i1 %.not38.i.i.i.i.i116, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.gq, i64 noundef %i.gr, i64 %i.gm) #17
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq, %bb.ap
  br i1 %.not.i.i.i.i.i113, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit117, label %bb.at, !prof !6

bb.at:                                            ; preds = %bb.as
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.gq, i64 %i.gr, i64 %i.gm) #17
  br label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit117

_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit117: ; preds = %.lr.ph209, %bb.as, %bb.at
  %i.ha = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.0137.0206) #19 ; 2 uses
  %i.hb = icmp eq ptr %i.ha, %i.ch
  br i1 %i.hb, label %._crit_edge210, label %.lr.ph209
}

declare noundef ptr @_ZN2v88internal5Scope13AsModuleScopeEv(ptr noundef nonnull align 8 dereferenceable(124)) local_unnamed_addr #2

declare ptr @_ZN2v88internal9HashTableINS0_20NameToIndexHashTableENS0_16NameToIndexShapeEE3NewINS0_7IsolateEEENS0_6HandleIS2_EEPT_jNS0_14AllocationTypeENS0_15MinimumCapacityE(ptr noundef, i32 noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

declare ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE12NewScopeInfoEiNS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1), i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef range(i32 -268435456, 268435455) i32 @_ZNK2v88internal9ScopeInfo20ModuleVariablesIndexEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %.sroa.0.0.copyload.i = load i64, ptr %0, align 8 ; 2 uses
  %i.a = add i64 %.sroa.0.0.copyload.i, 7
  %i.b = inttoptr i64 %i.a to ptr                 ; 8 uses
  %i.c = load atomic volatile i32, ptr %i.b monotonic, align 4, !noalias !77
  %i.d = add i64 %.sroa.0.0.copyload.i, 23
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = load i64, ptr %i.e, align 8, !noalias !78 ; 3 uses
  %i.g = load atomic volatile i32, ptr %i.b monotonic, align 4, !noalias !79
  %i.h = load atomic volatile i32, ptr %i.b monotonic, align 4, !noalias !80
  %i.i = load atomic volatile i32, ptr %i.b monotonic, align 4, !noalias !81
  %i.j = load atomic volatile i32, ptr %i.b monotonic, align 4, !noalias !82
  %i.k = load atomic volatile i32, ptr %i.b monotonic, align 4, !noalias !83
  %i.l = load atomic volatile i32, ptr %i.b monotonic, align 4, !noalias !84
  %i.m = and i32 %i.l, 15
  %i.n = icmp eq i32 %i.m, 5
  br i1 %i.n, label %bb.b, label %_ZNK2v88internal24TorqueGeneratedScopeInfoINS0_9ScopeInfoENS0_10HeapObjectEE21ModuleVariablesOffsetEv.exit

bb.b:                                             ; preds = %bb.a
  %i.o = load atomic volatile i32, ptr %i.b monotonic, align 4, !noalias !85
  %i.p = and i32 %i.o, 15
  %i.q = icmp eq i32 %i.p, 5
  br i1 %i.q, label %_ZNK2v88internal24TorqueGeneratedScopeInfoINS0_9ScopeInfoENS0_10HeapObjectEE21ModuleVariablesOffsetEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #18, !noalias !84
  unreachable

_ZNK2v88internal24TorqueGeneratedScopeInfoINS0_9ScopeInfoENS0_10HeapObjectEE21ModuleVariablesOffsetEv.exit: ; preds = %bb.a, %bb.b
  %i.r = and i32 %i.k, 15
  %i.s = icmp eq i32 %i.r, 5
  %i.t = select i1 %i.s, i64 8, i64 0
  %1 = icmp sgt i64 %i.f, 322122547199
  %2 = select i1 %1, i64 8, i64 0
  %i.u = and i32 %i.c, 15
  %i.v = icmp eq i32 %i.u, 5
  %i.w = select i1 %i.v, i64 56, i64 48
  %3 = add nuw nsw i64 %2, %i.w
  %4 = ashr i64 %i.f, 29
  %5 = and i64 %4, -8                             ; 2 uses
  %i.x = add nsw i64 %3, %5
  %6 = icmp slt i64 %i.f, 322122547200
  %i.y = select i1 %6, i64 %5, i64 0
  %i.z = add nsw i64 %i.x, %i.y
  %i.aa = lshr i32 %i.g, 7
  %i.ab = and i32 %i.aa, 8
  %i.ac = zext nneg i32 %i.ab to i64
  %i.ad = add nsw i64 %i.z, %i.ac
  %i.ae = and i32 %i.h, 12288
  %.not.i.not.i.i.i.i.i = icmp eq i32 %i.ae, 0
  %i.af = select i1 %.not.i.not.i.i.i.i.i, i64 0, i64 16
  %i.ag = add nsw i64 %i.ad, %i.af
  %i.ah = lshr i32 %i.i, 11
  %i.ai = and i32 %i.ah, 8
  %i.aj = zext nneg i32 %i.ai to i64
  %i.ak = add nsw i64 %i.ag, %i.aj
  %i.al = lshr i32 %i.j, 19
  %i.am = and i32 %i.al, 8
  %i.an = zext nneg i32 %i.am to i64
  %i.ao = add nsw i64 %i.ak, %i.an
  %i.ap = add nsw i64 %i.ao, %i.t
  %i.aq = trunc i64 %i.ap to i32
  %i.ar = add nsw i32 %i.aq, -8
  %i.as = sdiv i32 %i.ar, 8
  ret i32 %i.as
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal9ScopeInfo3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, i32 noundef %1, i64 %2, i32 noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = shl nsw i32 %1, 3
  %.sroa.04.0.copyload = load i64, ptr %0, align 8
  %i.b = or disjoint i32 %i.a, 7
  %i.c = sext i32 %i.b to i64                     ; 2 uses
  %i.d = add i64 %.sroa.04.0.copyload, %i.c
  %i.e = inttoptr i64 %i.d to ptr
  store atomic volatile i64 %2, ptr %i.e monotonic, align 8
  %.sroa.02.0.copyload = load i64, ptr %0, align 8 ; 4 uses
  %i.f = add i64 %.sroa.02.0.copyload, %i.c       ; 2 uses
  %i.g = icmp sgt i32 %3, 1
  %i.h = trunc i64 %2 to i1
  %or.cond.i = select i1 %i.g, i1 %i.h, i1 false
  br i1 %or.cond.i, label %bb.b, label %_ZN2v88internal12WriteBarrier8ForValueINS0_6ObjectEEEvNS0_6TaggedINS0_10HeapObjectEEENS0_19FullMaybeObjectSlotENS4_IT_EENS0_16WriteBarrierModeE.exit

bb.b:                                             ; preds = %bb.a
  %i.i = and i64 %.sroa.02.0.copyload, -262144
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = load i64, ptr %i.j, align 262144         ; 2 uses
  %i.l = and i64 %i.k, 32
  %.not.i.i = icmp eq i64 %i.l, 0
  %i.m = and i64 %i.k, 25
  %.not37.i.i = icmp eq i64 %i.m, 0
  br i1 %.not37.i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.n = and i64 %2, -262144
  %i.o = inttoptr i64 %i.n to ptr
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.o, align 262144
  %i.p = and i64 %.sroa.0.0.copyload.i.i.i.i, 25
  %.not38.i.i = icmp eq i64 %i.p, 0
  br i1 %.not38.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %.sroa.02.0.copyload, i64 noundef %i.f, i64 %2) #17
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  br i1 %.not.i.i, label %_ZN2v88internal12WriteBarrier8ForValueINS0_6ObjectEEEvNS0_6TaggedINS0_10HeapObjectEEENS0_19FullMaybeObjectSlotENS4_IT_EENS0_16WriteBarrierModeE.exit, label %bb.f, !prof !6

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %.sroa.02.0.copyload, i64 %i.f, i64 %2) #17
  br label %_ZN2v88internal12WriteBarrier8ForValueINS0_6ObjectEEEvNS0_6TaggedINS0_10HeapObjectEEENS0_19FullMaybeObjectSlotENS4_IT_EENS0_16WriteBarrierModeE.exit

_ZN2v88internal12WriteBarrier8ForValueINS0_6ObjectEEEvNS0_6TaggedINS0_10HeapObjectEEENS0_19FullMaybeObjectSlotENS4_IT_EENS0_16WriteBarrierModeE.exit: ; preds = %bb.a, %bb.e, %bb.f
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden ptr @_ZN2v88internal20NameToIndexHashTable3AddINS0_7IsolateEEENS0_6HandleIS1_EEPT_S5_NS0_12DirectHandleINS0_4NameEEEi(ptr noundef %0, ptr %1, ptr %2, i32 noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call ptr @_ZN2v88internal9HashTableINS0_20NameToIndexHashTableENS0_16NameToIndexShapeEE14EnsureCapacityINS0_7IsolateENS0_6HandleEQsr3stdE16is_convertible_vITL0_0_IT_ENS0_12DirectHandleIS9_EEEEET0_IS2_EPS9_SE_iNS0_14AllocationTypeE(ptr noundef %0, ptr %1, i32 noundef 1, i8 noundef zeroext 0) #17 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8
  %i.c = add i64 %i.b, -1                         ; 3 uses
  %i.d = inttoptr i64 %i.c to ptr                 ; 2 uses
  %i.e = load i64, ptr %2, align 8
  %i.f = add i64 %i.e, -1
  %i.g = inttoptr i64 %i.f to ptr                 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load atomic i32, ptr %i.h acquire, align 4 ; 3 uses
  %i.j = and i32 %i.i, 1
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %_ZNK2v88internal4Name4hashEv.exit, label %bb.b, !prof !6

bb.b:                                             ; preds = %bb.a
  %i.l = tail call noundef i32 @_ZNK2v88internal4Name29GetRawHashFromForwardingTableEj(ptr noundef nonnull align 4 dereferenceable(12) %i.g, i32 noundef %i.i)
  br label %_ZNK2v88internal4Name4hashEv.exit

_ZNK2v88internal4Name4hashEv.exit:                ; preds = %bb.a, %bb.b
  %.0.in.i = phi i32 [ %i.l, %bb.b ], [ %i.i, %bb.a ]
  %.0.i = lshr i32 %.0.in.i, 2
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.n = tail call i64 @_ZN2v88internal9HashTableINS0_20NameToIndexHashTableENS0_16NameToIndexShapeEE18FindInsertionEntryENS0_16PtrComprCageBaseENS0_13ReadOnlyRootsEj(ptr noundef nonnull align 4 dereferenceable(16) %i.d, ptr nonnull %i.m, i32 noundef %.0.i) #17
  %i.o = trunc i64 %i.n to i32
  %i.p = shl nsw i32 %i.o, 1
  %i.q = load i64, ptr %2, align 8                ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 3 uses
  %i.s = sext i32 %i.p to i64
  %i.t = getelementptr [8 x i8], ptr %i.r, i64 %i.s ; 2 uses
  %i.u = getelementptr i8, ptr %i.t, i64 24       ; 2 uses
  store atomic volatile i64 %i.q, ptr %i.u monotonic, align 8
  %i.v = trunc i64 %i.q to i1
  br i1 %i.v, label %bb.c, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit

bb.c:                                             ; preds = %_ZNK2v88internal4Name4hashEv.exit
  %i.w = or disjoint i64 %i.c, 1                  ; 2 uses
  %i.x = ptrtoint ptr %i.u to i64                 ; 2 uses
  %i.y = and i64 %i.c, -262144
  %i.z = inttoptr i64 %i.y to ptr
  %i.aa = load i64, ptr %i.z, align 262144        ; 2 uses
  %i.ab = and i64 %i.aa, 32
  %.not.i.i.i.i.i = icmp eq i64 %i.ab, 0
  %i.ac = and i64 %i.aa, 25
  %.not37.i.i.i.i.i = icmp eq i64 %i.ac, 0
  br i1 %.not37.i.i.i.i.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.ad = and i64 %i.q, -262144
  %i.ae = inttoptr i64 %i.ad to ptr
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.ae, align 262144
  %i.af = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i, 25
  %.not38.i.i.i.i.i = icmp eq i64 %i.af, 0
  br i1 %.not38.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.w, i64 noundef %i.x, i64 %i.q) #17
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  br i1 %.not.i.i.i.i.i, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit, label %bb.g, !prof !6

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.w, i64 %i.x, i64 %i.q) #17
  br label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit

_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit: ; preds = %_ZNK2v88internal4Name4hashEv.exit, %bb.f, %bb.g
  %i.ag = sext i32 %3 to i64
  %i.ah = shl nsw i64 %i.ag, 32
  %i.ai = getelementptr i8, ptr %i.t, i64 32
  store atomic volatile i64 %i.ah, ptr %i.ai monotonic, align 8
  %i.aj = load atomic volatile i64, ptr %i.r monotonic, align 8
  %i.ak = and i64 %i.aj, -4294967296
  %i.al = add i64 %i.ak, 4294967296
  store atomic volatile i64 %i.al, ptr %i.r monotonic, align 8
  ret ptr %i.a
}

; Function Attrs: mustprogress norecurse nounwind memory(readwrite, target_mem: none) uwtable
define hidden void @_ZN2v88internal9ScopeInfo3setEiNS0_6TaggedINS0_3SmiEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, i32 noundef %1, i64 %2) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = shl nsw i32 %1, 3
  %.sroa.01.0.copyload = load i64, ptr %0, align 8
  %i.b = or disjoint i32 %i.a, 7
  %i.c = sext i32 %i.b to i64
  %i.d = add i64 %.sroa.01.0.copyload, %i.c
  %i.e = inttoptr i64 %i.d to ptr
  store atomic volatile i64 %2, ptr %i.e monotonic, align 8
  ret void
}

; Function Attrs: mustprogress norecurse nounwind memory(readwrite, target_mem: none) uwtable
define hidden i64 @_ZNK2v88internal9ScopeInfo3getEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, i32 noundef %1) local_unnamed_addr #3 align 2 {
bb.a:
  %.sroa.0.0.copyload.i = load i64, ptr %0, align 8
  %i.a = shl nsw i32 %1, 3
  %i.b = or disjoint i32 %i.a, 7
  %i.c = sext i32 %i.b to i64
  %i.d = add i64 %.sroa.0.0.copyload.i, %i.c
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = load atomic volatile i64, ptr %i.e monotonic, align 8
  ret i64 %i.f
}

declare i64 @_ZN2v88internal13DependentCode20empty_dependent_codeERKNS0_13ReadOnlyRootsE(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN2v88internal21WriteBarrierModeScopeD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4)) unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden ptr @_ZN2v88internal9ScopeInfo6CreateINS0_12LocalIsolateEEENS0_6HandleIS1_EEPT_PNS0_4ZoneEPNS0_5ScopeENS0_17MaybeDirectHandleIS1_EE(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %4 = alloca %"class.v8::internal::WriteBarrierModeScope", align 4 ; 8 uses
  %5 = alloca %"class.v8::internal::ReadOnlyRoots", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.d, %bb.a
  %.0195.lcssa = phi i32 [ 0, %bb.a ], [ %.1196, %bb.d ] ; 2 uses
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %.1, %bb.d ] ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 121 ; 8 uses
  %i.f = load i16, ptr %i.e, align 1
end_hunk_1
begin_hunk_2_@_ZN2v88internal9ScopeInfo6CreateINS0_12LocalIsolateEEENS0_6HandleIS1_EEPT_PNS0_4ZoneEPNS0_5ScopeENS0_17MaybeDirectHandleIS1_EE:bb.a
  %.not.i.i.i = icmp eq i64 %i.ea, 0
  %i.eb = and i64 %i.dz, 24
  %.not7.i.i.i = icmp ne i64 %i.eb, 0
  %i.ec = and i1 %.not.i.i.i, %.not7.i.i.i
  %.1.i.i.i = select i1 %i.ec, i32 1, i32 4
  call void @_ZN2v88internal21WriteBarrierModeScopeC1ENS0_6TaggedINS0_10HeapObjectEEENS0_16WriteBarrierModeE(ptr noundef nonnull align 4 dereferenceable(4) %4, i64 %i.dw, i32 noundef %.1.i.i.i) #17
  %i.ed = load i8, ptr %i.al, align 8             ; 2 uses
  %i.ee = icmp eq i8 %i.ed, 4
  br i1 %i.ee, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.ef = call noundef ptr @_ZN2v88internal5Scope18AsDeclarationScopeEv(ptr noundef nonnull align 8 dereferenceable(124) %2) #17
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 124
  %i.eh = load i16, ptr %i.eg, align 4
  %.fr465 = freeze i16 %i.eh                      ; 2 uses
  %i.ei = trunc i16 %.fr465 to i1
  %.pr447 = load i8, ptr %i.al, align 8
  %i.ej = shl i16 %.fr465, 14
  %i.ek = and i16 %i.ej, -32768
  %i.el = zext i16 %i.ek to i32
  %i.em = select i1 %i.ei, i32 65536, i32 0
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.en = phi i8 [ %.pr447, %bb.af ], [ %i.ed, %bb.ae ] ; 3 uses
  %.0208 = phi i32 [ %i.el, %bb.af ], [ 0, %bb.ae ]
  %.0207 = phi i32 [ %i.em, %bb.af ], [ 0, %bb.ae ]
  %i.eo = zext i8 %i.en to i32
  %i.ep = select i1 %.0203, i32 16, i32 0
  %i.eq = load i16, ptr %i.e, align 1
  %.fr467 = freeze i16 %i.eq                      ; 6 uses
  %i.er = trunc i16 %.fr467 to i1                 ; 2 uses
  %i.es = select i1 %i.er, i32 32, i32 0
  %i.et = lshr i16 %.fr467, 2
  %i.eu = and i16 %i.et, 64
  %i.ev = zext nneg i16 %i.eu to i32
  %i.ew = select i1 %i.br, i32 512, i32 0
  %i.ex = select i1 %i.cd, i32 1024, i32 0
  %i.ey = shl nuw nsw i32 %.1200445, 12
  %i.ez = select i1 %i.an, i32 16384, i32 0
  %i.fa = select i1 %.not482, i32 0, i32 4194304
  %i.fb = or disjoint i32 %.1198, %i.fa
  %i.fc = or disjoint i32 %i.fb, %i.ak
  %i.fd = or disjoint i32 %i.fc, %i.ez
  %i.fe = or i32 %i.fd, %i.ey
  %i.ff = or i32 %i.fe, %i.ew
  %i.fg = or i32 %i.ff, %i.ex
  %i.fh = or i32 %i.fg, %i.ep
  %i.fi = or i32 %i.fh, %.0202
  %i.fj = or i32 %i.fi, %i.eo
  %i.fk = or i32 %i.fj, %.0208
  %i.fl = or i32 %i.fk, %.0207
  %i.fm = or i32 %i.fl, %i.es
  %i.fn = or i32 %i.fm, %i.ev                     ; 4 uses
  switch i8 %i.en, label %_ZNK2v88internal5Scope27ForceContextForLanguageModeEv.exit [
    i8 4, label %_ZNK2v88internal5Scope27ForceContextForLanguageModeEv.exit.thread
    i8 1, label %_ZNK2v88internal5Scope27ForceContextForLanguageModeEv.exit.thread
    i8 0, label %_ZNK2v88internal5Scope27ForceContextForLanguageModeEv.exit.thread
  ]

_ZNK2v88internal5Scope27ForceContextForLanguageModeEv.exit: ; preds = %bb.ag
  %i.fo = load ptr, ptr %2, align 8
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 121
  %i.fq = load i16, ptr %i.fp, align 1
  %.fr = freeze i16 %i.fq
  %i.fr = trunc i16 %.fr to i1
  %i.fs = xor i1 %i.fr, true
  %i.ft = and i1 %i.er, %i.fs
  %spec.select455 = select i1 %i.ft, i32 16777216, i32 0
  %i.fu = or i32 %spec.select455, %i.fn
  br label %_ZNK2v88internal5Scope27ForceContextForLanguageModeEv.exit.thread

_ZNK2v88internal5Scope27ForceContextForLanguageModeEv.exit.thread: ; preds = %_ZNK2v88internal5Scope27ForceContextForLanguageModeEv.exit, %bb.ag, %bb.ag, %bb.ag
  %i.fv = phi i32 [ %i.fn, %bb.ag ], [ %i.fu, %_ZNK2v88internal5Scope27ForceContextForLanguageModeEv.exit ], [ %i.fn, %bb.ag ], [ %i.fn, %bb.ag ]
  %i.fw = and i16 %.fr467, 512
  %i.fx = zext nneg i16 %i.fw to i32
  %i.fy = shl nuw nsw i32 %i.fx, 16
  %i.fz = or i32 %i.fv, %i.fy                     ; 2 uses
  switch i8 %i.en, label %_ZNK2v88internal5Scope23HasContextExtensionSlotEv.exit [
    i8 5, label %_ZNK2v88internal5Scope23HasContextExtensionSlotEv.exit.thread
    i8 8, label %_ZNK2v88internal5Scope23HasContextExtensionSlotEv.exit.thread
  ]

_ZNK2v88internal5Scope23HasContextExtensionSlotEv.exit: ; preds = %_ZNK2v88internal5Scope27ForceContextForLanguageModeEv.exit.thread
  %i.ga = and i16 %.fr467, 4
  %.not468 = icmp eq i16 %i.ga, 0
  br i1 %.not468, label %bb.ah, label %_ZNK2v88internal5Scope23HasContextExtensionSlotEv.exit.thread

_ZNK2v88internal5Scope23HasContextExtensionSlotEv.exit.thread: ; preds = %_ZNK2v88internal5Scope27ForceContextForLanguageModeEv.exit.thread, %_ZNK2v88internal5Scope27ForceContextForLanguageModeEv.exit.thread, %_ZNK2v88internal5Scope23HasContextExtensionSlotEv.exit
  %i.gb = or i32 %i.fz, 67108864
  br label %bb.ah

bb.ah:                                            ; preds = %_ZNK2v88internal5Scope23HasContextExtensionSlotEv.exit, %_ZNK2v88internal5Scope23HasContextExtensionSlotEv.exit.thread
  %i.gc = phi i32 [ %i.gb, %_ZNK2v88internal5Scope23HasContextExtensionSlotEv.exit.thread ], [ %i.fz, %_ZNK2v88internal5Scope23HasContextExtensionSlotEv.exit ]
  %i.gd = and i16 %.fr467, 16
  %i.ge = zext nneg i16 %i.gd to i32
  %i.gf = shl nuw nsw i32 %i.ge, 24
  %i.gg = icmp slt i16 %.fr467, 0
  %i.gh = select i1 %i.gg, i32 1073741824, i32 0
  %i.gi = getelementptr inbounds nuw i8, ptr %2, i64 123
  %i.gj = load i8, ptr %i.gi, align 1
  %i.gk = trunc i8 %i.gj to i1
  %i.gl = select i1 %i.gk, i32 -2147483648, i32 0
  %i.gm = or disjoint i32 %i.gf, %i.gh
  %i.gn = or i32 %i.gm, %i.gc
  %i.go = or i32 %i.gn, %i.gl
  %i.gp = add i64 %i.dw, 7
  %i.gq = inttoptr i64 %i.gp to ptr               ; 10 uses
  store atomic volatile i32 %i.go, ptr %i.gq monotonic, align 4
  %i.gr = sext i32 %i.cj to i64
  %i.gs = shl nsw i64 %i.gr, 32
  %i.gt = add i64 %i.dw, 15
  %i.gu = inttoptr i64 %i.gt to ptr
  store atomic volatile i64 %i.gs, ptr %i.gu monotonic, align 8
  %i.gv = sext i32 %.0.lcssa to i64
  %i.gw = shl nsw i64 %i.gv, 32
  %i.gx = add i64 %i.dw, 23
  %i.gy = inttoptr i64 %i.gx to ptr               ; 3 uses
  store atomic volatile i64 %i.gw, ptr %i.gy monotonic, align 8
  %i.gz = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.ha = load i32, ptr %i.gz, align 8
  %i.hb = sext i32 %i.ha to i64
  %i.hc = shl nsw i64 %i.hb, 32
  %i.hd = add i64 %i.dw, 31
  %i.he = inttoptr i64 %i.hd to ptr
  store atomic volatile i64 %i.hc, ptr %i.he monotonic, align 8
  %i.hf = getelementptr inbounds nuw i8, ptr %2, i64 108
  %i.hg = load i32, ptr %i.hf, align 4
  %i.hh = sext i32 %i.hg to i64
  %i.hi = shl nsw i64 %i.hh, 32
  %i.hj = add i64 %i.dw, 39
  %i.hk = inttoptr i64 %i.hj to ptr
  store atomic volatile i64 %i.hi, ptr %i.hk monotonic, align 8
  %i.hl = load i8, ptr %i.al, align 8
  %i.hm = icmp eq i8 %i.hl, 5
  br i1 %i.hm, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.hn = sext i32 %.0195.lcssa to i64
  %i.ho = shl nsw i64 %i.hn, 32
  %i.hp = add i64 %i.dw, 47
  %i.hq = inttoptr i64 %i.hp to ptr
  store atomic volatile i64 %i.ho, ptr %i.hq monotonic, align 8
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.0205 = phi i32 [ 6, %bb.ai ], [ 5, %bb.ah ]   ; 3 uses
  br i1 %i.ad, label %_ZN2v88internal24TorqueGeneratedScopeInfoINS0_9ScopeInfoENS0_10HeapObjectEE33set_context_local_names_hashtableENS0_6TaggedINS0_20NameToIndexHashTableEEENS0_16WriteBarrierModeE.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.hr = load i64, ptr %.sroa.0368.0, align 8    ; 5 uses
  %i.hs = load atomic volatile i32, ptr %i.gq monotonic, align 4, !noalias !120
  %i.ht = and i32 %i.hs, 15
  %i.hu = icmp eq i32 %i.ht, 5
  %i.hv = select i1 %i.hu, i64 56, i64 48
  %i.hw = load i64, ptr %i.gy, align 8, !noalias !121 ; 2 uses
  %i.hx = icmp slt i64 %i.hw, 322122547200
  %i.hy = lshr i64 %i.hw, 29
  %i.hz = and i64 %i.hy, 4294967288
  %i.ia = select i1 %i.hx, i64 %i.hz, i64 322122547200
  %i.ib = add nuw nsw i64 %i.ia, %i.hv
  %sext.i = shl i64 %i.ib, 32
  %i.ic = ashr exact i64 %sext.i, 32
  %i.id = add i64 %i.dw, -1
  %i.ie = add i64 %i.id, %i.ic                    ; 3 uses
  %i.if = inttoptr i64 %i.ie to ptr
  store atomic volatile i64 %i.hr, ptr %i.if monotonic, align 8
  %i.ig = trunc i64 %i.hr to i1
  br i1 %i.ig, label %bb.al, label %_ZN2v88internal24TorqueGeneratedScopeInfoINS0_9ScopeInfoENS0_10HeapObjectEE33set_context_local_names_hashtableENS0_6TaggedINS0_20NameToIndexHashTableEEENS0_16WriteBarrierModeE.exit

bb.al:                                            ; preds = %bb.ak
  %i.ih = load i64, ptr %i.dy, align 262144       ; 2 uses
  %i.ii = and i64 %i.ih, 32
  %.not.i.i.i223 = icmp eq i64 %i.ii, 0
  %i.ij = and i64 %i.ih, 25
  %.not37.i.i.i = icmp eq i64 %i.ij, 0
  br i1 %.not37.i.i.i, label %bb.am, label %bb.ao

bb.am:                                            ; preds = %bb.al
  %i.ik = and i64 %i.hr, -262144
  %i.il = inttoptr i64 %i.ik to ptr
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.il, align 262144
  %i.im = and i64 %.sroa.0.0.copyload.i.i.i.i.i, 25
  %.not38.i.i.i = icmp eq i64 %i.im, 0
  br i1 %.not38.i.i.i, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.dw, i64 noundef %i.ie, i64 %i.hr) #17
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am, %bb.al
  br i1 %.not.i.i.i223, label %_ZN2v88internal24TorqueGeneratedScopeInfoINS0_9ScopeInfoENS0_10HeapObjectEE33set_context_local_names_hashtableENS0_6TaggedINS0_20NameToIndexHashTableEEENS0_16WriteBarrierModeE.exit, label %bb.ap, !prof !6

bb.ap:                                            ; preds = %bb.ao
  call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.dw, i64 %i.ie, i64 %i.hr) #17
  br label %_ZN2v88internal24TorqueGeneratedScopeInfoINS0_9ScopeInfoENS0_10HeapObjectEE33set_context_local_names_hashtableENS0_6TaggedINS0_20NameToIndexHashTableEEENS0_16WriteBarrierModeE.exit

_ZN2v88internal24TorqueGeneratedScopeInfoINS0_9ScopeInfoENS0_10HeapObjectEE33set_context_local_names_hashtableENS0_6TaggedINS0_20NameToIndexHashTableEEENS0_16WriteBarrierModeE.exit: ; preds = %bb.ap, %bb.ao, %bb.ak, %bb.aj
  %i.in = add nsw i32 %.0205, %i.dc               ; 2 uses
  %i.io = load atomic volatile i32, ptr %i.gq monotonic, align 4, !noalias !122
  %i.ip = load i64, ptr %i.gy, align 8, !noalias !123 ; 3 uses
  %i.iq = load atomic volatile i32, ptr %i.gq monotonic, align 4, !noalias !124
  %i.ir = load atomic volatile i32, ptr %i.gq monotonic, align 4, !noalias !125
  %i.is = load atomic volatile i32, ptr %i.gq monotonic, align 4, !noalias !126
  %i.it = load atomic volatile i32, ptr %i.gq monotonic, align 4, !noalias !127
  %i.iu = load atomic volatile i32, ptr %i.gq monotonic, align 4, !noalias !128
  %i.iv = load atomic volatile i32, ptr %i.gq monotonic, align 4, !noalias !129
  %i.iw = and i32 %i.iv, 15
  %i.ix = icmp eq i32 %i.iw, 5
  br i1 %i.ix, label %bb.aq, label %_ZNK2v88internal9ScopeInfo20ModuleVariablesIndexEv.exit

bb.aq:                                            ; preds = %_ZN2v88internal24TorqueGeneratedScopeInfoINS0_9ScopeInfoENS0_10HeapObjectEE33set_context_local_names_hashtableENS0_6TaggedINS0_20NameToIndexHashTableEEENS0_16WriteBarrierModeE.exit
  %i.iy = load atomic volatile i32, ptr %i.gq monotonic, align 4, !noalias !130
  %i.iz = and i32 %i.iy, 15
  %i.ja = icmp eq i32 %i.iz, 5
  br i1 %i.ja, label %_ZNK2v88internal9ScopeInfo20ModuleVariablesIndexEv.exit, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #18, !noalias !129
  unreachable

_ZNK2v88internal9ScopeInfo20ModuleVariablesIndexEv.exit: ; preds = %_ZN2v88internal24TorqueGeneratedScopeInfoINS0_9ScopeInfoENS0_10HeapObjectEE33set_context_local_names_hashtableENS0_6TaggedINS0_20NameToIndexHashTableEEENS0_16WriteBarrierModeE.exit, %bb.aq
  %i.jb = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.jc = icmp eq ptr %i.a, %i.jb
  br i1 %i.jc, label %._crit_edge479, label %.lr.ph478.preheader

.lr.ph478.preheader:                              ; preds = %_ZNK2v88internal9ScopeInfo20ModuleVariablesIndexEv.exit
  %6 = icmp sgt i64 %i.ip, 322122547199
  %7 = select i1 %6, i64 8, i64 0
  %i.jd = and i32 %i.io, 15
  %i.je = icmp eq i32 %i.jd, 5
  %i.jf = select i1 %i.je, i64 56, i64 48
  %8 = add nuw nsw i64 %7, %i.jf
  %9 = ashr i64 %i.ip, 29
  %10 = and i64 %9, -8                            ; 2 uses
  %i.jg = add nsw i64 %8, %10
  %11 = icmp slt i64 %i.ip, 322122547200
  %i.jh = select i1 %11, i64 %10, i64 0
  %i.ji = add nsw i64 %i.jg, %i.jh
  %i.jj = lshr i32 %i.iq, 7
  %i.jk = and i32 %i.jj, 8
  %i.jl = zext nneg i32 %i.jk to i64
  %i.jm = add nsw i64 %i.ji, %i.jl
  %i.jn = and i32 %i.ir, 12288
  %.not.i.not.i.i.i.i.i.i = icmp eq i32 %i.jn, 0
  %i.jo = select i1 %.not.i.not.i.i.i.i.i.i, i64 0, i64 16
  %i.jp = add nsw i64 %i.jm, %i.jo
  %i.jq = lshr i32 %i.is, 11
  %i.jr = and i32 %i.jq, 8
  %i.js = zext nneg i32 %i.jr to i64
  %i.jt = add nsw i64 %i.jp, %i.js
  %i.ju = lshr i32 %i.it, 19
  %i.jv = and i32 %i.ju, 8
  %i.jw = zext nneg i32 %i.jv to i64
  %i.jx = add nsw i64 %i.jt, %i.jw
  %i.jy = and i32 %i.iu, 15
  %i.jz = icmp eq i32 %i.jy, 5
  %i.ka = select i1 %i.jz, i64 8, i64 0
  %i.kb = add nsw i64 %i.jx, %i.ka
  %i.kc = trunc i64 %i.kb to i32
  %i.kd = add nsw i32 %i.kc, -8
  %i.ke = sdiv i32 %i.kd, 8
  br label %.lr.ph478

._crit_edge479:                                   ; preds = %bb.bg, %_ZNK2v88internal9ScopeInfo20ModuleVariablesIndexEv.exit
  %i.kf = load i16, ptr %i.e, align 1
  %i.kg = and i16 %i.kf, 256
  %.not470 = icmp ne i16 %i.kg, 0
  %i.kh = icmp sgt i32 %i.cj, 0
  %or.cond = select i1 %.not470, i1 %i.kh, i1 false
  br i1 %or.cond, label %.lr.ph481.preheader, label %.loopexit

.lr.ph481.preheader:                              ; preds = %._crit_edge479
  %wide.trip.count = zext nneg i32 %i.cj to i64
  br label %.lr.ph481

.lr.ph478:                                        ; preds = %.lr.ph478.preheader, %bb.bg
  %.0209477 = phi i32 [ %.1210, %bb.bg ], [ %i.ke, %.lr.ph478.preheader ] ; 4 uses
  %.sroa.0331.0476 = phi ptr [ %i.nz, %bb.bg ], [ %i.a, %.lr.ph478.preheader ] ; 2 uses
  %i.ki = load ptr, ptr %.sroa.0331.0476, align 8 ; 6 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 40 ; 2 uses
  %i.kk = load i16, ptr %i.kj, align 8            ; 4 uses
  %i.kl = lshr i16 %i.kk, 7
  %i.km = trunc i16 %i.kl to i8
  %i.kn = and i8 %i.km, 7
  switch i8 %i.kn, label %bb.bg [
    i8 3, label %bb.as
    i8 6, label %bb.as
    i8 5, label %bb.ba
  ]

bb.as:                                            ; preds = %.lr.ph478, %.lr.ph478
  %i.ko = getelementptr inbounds nuw i8, ptr %i.ki, i64 32
  %i.kp = load i32, ptr %i.ko, align 8
  %i.kq = load i8, ptr %i.al, align 8
  switch i8 %i.kq, label %_ZNK2v88internal5Scope23HasContextExtensionSlotEv.exit.i [
    i8 5, label %_ZNK2v88internal5Scope23HasContextExtensionSlotEv.exit.thread.i
    i8 8, label %_ZNK2v88internal5Scope23HasContextExtensionSlotEv.exit.thread.i
  ]

_ZNK2v88internal5Scope23HasContextExtensionSlotEv.exit.i: ; preds = %bb.as
  %i.kr = load i16, ptr %i.e, align 1
  %.fr3.i = freeze i16 %i.kr
  %i.ks = and i16 %.fr3.i, 4
  %.not.i = icmp eq i16 %i.ks, 0
  br i1 %.not.i, label %_ZNK2v88internal5Scope19ContextHeaderLengthEv.exit, label %_ZNK2v88internal5Scope23HasContextExtensionSlotEv.exit.thread.i

_ZNK2v88internal5Scope23HasContextExtensionSlotEv.exit.thread.i: ; preds = %_ZNK2v88internal5Scope23HasContextExtensionSlotEv.exit.i, %bb.as, %bb.as
  br label %_ZNK2v88internal5Scope19ContextHeaderLengthEv.exit

_ZNK2v88internal5Scope19ContextHeaderLengthEv.exit: ; preds = %_ZNK2v88internal5Scope23HasContextExtensionSlotEv.exit.i, %_ZNK2v88internal5Scope23HasContextExtensionSlotEv.exit.thread.i
  %.neg = phi i32 [ -3, %_ZNK2v88internal5Scope23HasContextExtensionSlotEv.exit.thread.i ], [ -2, %_ZNK2v88internal5Scope23HasContextExtensionSlotEv.exit.i ]
  %i.kt = add i32 %.neg, %i.kp                    ; 3 uses
  %i.ku = and i16 %i.kk, 15
  %i.kv = lshr i16 %i.kk, 8
  %i.kw = and i16 %i.kv, 48
  %i.kx = or disjoint i16 %i.kw, %i.ku
  %i.ky = zext nneg i16 %i.kx to i64
  %i.kz = lshr i16 %i.kk, 14
  %i.la = and i16 %i.kz, 1
  %i.lb = zext nneg i16 %i.la to i64
  br i1 %i.ad, label %bb.at, label %bb.az

bb.at:                                            ; preds = %_ZNK2v88internal5Scope19ContextHeaderLengthEv.exit
  %i.lc = add nsw i32 %i.kt, %.0205
  %i.ld = getelementptr inbounds nuw i8, ptr %i.ki, i64 8
  %i.le = load ptr, ptr %i.ld, align 8
  %.sroa.0.0.copyload.i.i225 = load ptr, ptr %i.le, align 8
  %i.lf = load i64, ptr %.sroa.0.0.copyload.i.i225, align 8 ; 5 uses
  %i.lg = load i32, ptr %4, align 4
  %i.lh = shl nsw i32 %i.lc, 3
  %i.li = or disjoint i32 %i.lh, 7
  %i.lj = sext i32 %i.li to i64
  %i.lk = add i64 %i.dw, %i.lj                    ; 3 uses
  %i.ll = inttoptr i64 %i.lk to ptr
  store atomic volatile i64 %i.lf, ptr %i.ll monotonic, align 8
  %i.lm = icmp sgt i32 %i.lg, 1
  %i.ln = trunc i64 %i.lf to i1
  %or.cond.i.i = select i1 %i.lm, i1 %i.ln, i1 false
  br i1 %or.cond.i.i, label %bb.au, label %_ZN2v88internal9ScopeInfo3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit

bb.au:                                            ; preds = %bb.at
  %i.lo = load i64, ptr %i.dy, align 262144       ; 2 uses
  %i.lp = and i64 %i.lo, 32
  %.not.i.i.i227 = icmp eq i64 %i.lp, 0
  %i.lq = and i64 %i.lo, 25
  %.not37.i.i.i228 = icmp eq i64 %i.lq, 0
  br i1 %.not37.i.i.i228, label %bb.av, label %bb.ax

bb.av:                                            ; preds = %bb.au
  %i.lr = and i64 %i.lf, -262144
  %i.ls = inttoptr i64 %i.lr to ptr
  %.sroa.0.0.copyload.i.i.i.i.i229 = load i64, ptr %i.ls, align 262144
  %i.lt = and i64 %.sroa.0.0.copyload.i.i.i.i.i229, 25
  %.not38.i.i.i230 = icmp eq i64 %i.lt, 0
  br i1 %.not38.i.i.i230, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.dw, i64 noundef %i.lk, i64 %i.lf) #17
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av, %bb.au
  br i1 %.not.i.i.i227, label %_ZN2v88internal9ScopeInfo3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit, label %bb.ay, !prof !6

bb.ay:                                            ; preds = %bb.ax
  call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.dw, i64 %i.lk, i64 %i.lf) #17
  br label %_ZN2v88internal9ScopeInfo3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit

bb.az:                                            ; preds = %_ZNK2v88internal5Scope19ContextHeaderLengthEv.exit
  %i.lu = getelementptr inbounds nuw i8, ptr %i.ki, i64 8
  %i.lv = load ptr, ptr %i.lu, align 8
  %.sroa.0.0.copyload.i.i231 = load ptr, ptr %i.lv, align 8
  %i.lw = call ptr @_ZN2v88internal20NameToIndexHashTable3AddINS0_12LocalIsolateEEENS0_6HandleIS1_EEPT_S5_NS0_12DirectHandleINS0_4NameEEEi(ptr noundef nonnull %0, ptr %.sroa.0368.0, ptr %.sroa.0.0.copyload.i.i231, i32 noundef %i.kt) ; 0 uses
  br label %_ZN2v88internal9ScopeInfo3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit

_ZN2v88internal9ScopeInfo3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit: ; preds = %bb.ay, %bb.ax, %bb.at, %bb.az
  %i.lx = add nsw i32 %i.kt, %i.in
  %i.ly = shl nuw nsw i64 %i.lb, 54
  %i.lz = shl nuw nsw i64 %i.ky, 32
  %i.ma = or disjoint i64 %i.lz, %i.ly
  %i.mb = or disjoint i64 %i.ma, 18014123631575040
  %i.mc = shl nsw i32 %i.lx, 3
  %i.md = or disjoint i32 %i.mc, 7
  %i.me = sext i32 %i.md to i64
  %i.mf = add i64 %i.dw, %i.me
  %i.mg = inttoptr i64 %i.mf to ptr
  store atomic volatile i64 %i.mb, ptr %i.mg monotonic, align 8
  br label %bb.bg

bb.ba:                                            ; preds = %.lr.ph478
  %i.mh = getelementptr inbounds nuw i8, ptr %i.ki, i64 8
  %i.mi = load ptr, ptr %i.mh, align 8
  %.sroa.0.0.copyload.i.i232 = load ptr, ptr %i.mi, align 8
  %i.mj = load i64, ptr %.sroa.0.0.copyload.i.i232, align 8 ; 5 uses
  %i.mk = load i32, ptr %4, align 4
  %i.ml = shl i32 %.0209477, 3                    ; 3 uses
  %i.mm = or disjoint i32 %i.ml, 7
  %i.mn = sext i32 %i.mm to i64
  %i.mo = add i64 %i.dw, %i.mn                    ; 3 uses
  %i.mp = inttoptr i64 %i.mo to ptr
  store atomic volatile i64 %i.mj, ptr %i.mp monotonic, align 8
  %i.mq = icmp sgt i32 %i.mk, 1
  %i.mr = trunc i64 %i.mj to i1
  %or.cond.i.i235 = select i1 %i.mq, i1 %i.mr, i1 false
  br i1 %or.cond.i.i235, label %bb.bb, label %_ZN2v88internal9ScopeInfo3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit240

bb.bb:                                            ; preds = %bb.ba
  %i.ms = load i64, ptr %i.dy, align 262144       ; 2 uses
  %i.mt = and i64 %i.ms, 32
  %.not.i.i.i236 = icmp eq i64 %i.mt, 0
  %i.mu = and i64 %i.ms, 25
  %.not37.i.i.i237 = icmp eq i64 %i.mu, 0
  br i1 %.not37.i.i.i237, label %bb.bc, label %bb.be

bb.bc:                                            ; preds = %bb.bb
  %i.mv = and i64 %i.mj, -262144
  %i.mw = inttoptr i64 %i.mv to ptr
  %.sroa.0.0.copyload.i.i.i.i.i238 = load i64, ptr %i.mw, align 262144
  %i.mx = and i64 %.sroa.0.0.copyload.i.i.i.i.i238, 25
  %.not38.i.i.i239 = icmp eq i64 %i.mx, 0
  br i1 %.not38.i.i.i239, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.dw, i64 noundef %i.mo, i64 %i.mj) #17
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc, %bb.bb
  br i1 %.not.i.i.i236, label %_ZN2v88internal9ScopeInfo3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit240, label %bb.bf, !prof !6

bb.bf:                                            ; preds = %bb.be
  call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.dw, i64 %i.mo, i64 %i.mj) #17
  br label %_ZN2v88internal9ScopeInfo3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit240

_ZN2v88internal9ScopeInfo3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit240: ; preds = %bb.ba, %bb.be, %bb.bf
  %i.my = getelementptr inbounds nuw i8, ptr %i.ki, i64 32
  %i.mz = load i32, ptr %i.my, align 8
  %i.na = sext i32 %i.mz to i64
  %i.nb = shl nsw i64 %i.na, 32
end_hunk_2
begin_hunk_3_@_ZNK2v88internal9ScopeInfo6EqualsENS0_6TaggedIS1_EEbPi:bb.a
  br i1 %i.as, label %.critedge5, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.at = load atomic volatile i64, ptr %i.ab monotonic, align 8
  %i.au = add i64 %i.at, 11
  %i.av = inttoptr i64 %i.au to ptr
  %i.aw = load atomic volatile i16, ptr %i.av monotonic, align 2
  %i.ax = and i16 %i.aw, -96
  %i.ay = icmp eq i16 %i.ax, 0
  br i1 %i.ay, label %bb.k, label %_ZNK2v88internal6String6EqualsENS0_6TaggedIS1_EE.exit

bb.k:                                             ; preds = %bb.j
  %i.az = load atomic volatile i64, ptr %i.ah monotonic, align 8
  %i.ba = add i64 %i.az, 11
  %i.bb = inttoptr i64 %i.ba to ptr
  %i.bc = load atomic volatile i16, ptr %i.bb monotonic, align 2
  %i.bd = and i16 %i.bc, -96
  %i.be = icmp eq i16 %i.bd, 0
  br i1 %i.be, label %.critedge73, label %_ZNK2v88internal6String6EqualsENS0_6TaggedIS1_EE.exit

_ZNK2v88internal6String6EqualsENS0_6TaggedIS1_EE.exit: ; preds = %bb.j, %bb.k
  %i.bf = tail call noundef zeroext i1 @_ZNK2v88internal6String10SlowEqualsENS0_6TaggedIS1_EE(ptr noundef nonnull align 4 dereferenceable(16) %i.ab, i64 %i.x) #17
  br i1 %i.bf, label %.critedge5, label %.critedge73

_ZN2v88internal11IsScopeInfoENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit
  %i.bg = load atomic volatile i64, ptr %i.ab monotonic, align 8
  %i.bh = add i64 %i.bg, 11
  %i.bi = inttoptr i64 %i.bh to ptr
  %i.bj = load atomic volatile i16, ptr %i.bi monotonic, align 2
  %i.bk = icmp eq i16 %i.bj, 284
  br i1 %i.bk, label %bb.l, label %_ZN2v88internal22IsSourceTextModuleInfoENS0_6TaggedINS0_6ObjectEEE.exit

bb.l:                                             ; preds = %_ZN2v88internal11IsScopeInfoENS0_6TaggedINS0_6ObjectEEE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  br i1 %2, label %.critedge, label %bb.m

bb.m:                                             ; preds = %bb.l
  store i64 %i.u, ptr %5, align 8
  %i.bl = call noundef zeroext i1 @_ZNK2v88internal9ScopeInfo6EqualsENS0_6TaggedIS1_EEbPi(ptr noundef nonnull align 8 dereferenceable(8) %5, i64 %i.x, i1 noundef zeroext false, ptr noundef null)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  br i1 %i.bl, label %.critedge5, label %.critedge73

.critedge:                                        ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  br label %.critedge5

_ZN2v88internal22IsSourceTextModuleInfoENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %_ZN2v88internal11IsScopeInfoENS0_6TaggedINS0_6ObjectEEE.exit
  %i.bm = load atomic volatile i64, ptr %i.ab monotonic, align 8
  %i.bn = load ptr, ptr @_ZN2v88internal12IsolateGroup22default_isolate_group_E, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 10624
  %i.bp = load ptr, ptr %i.bo, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 616
  %i.br = load i64, ptr %i.bq, align 8
  %i.bs = icmp eq i64 %i.bm, %i.br
  br i1 %i.bs, label %bb.n, label %_ZN2v88internal9IsOddballENS0_6TaggedINS0_6ObjectEEE.exit

bb.n:                                             ; preds = %_ZN2v88internal22IsSourceTextModuleInfoENS0_6TaggedINS0_6ObjectEEE.exit
  br i1 %2, label %.critedge5, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.bu = load atomic volatile i64, ptr %i.bt monotonic, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %i.bw = load atomic volatile i64, ptr %i.bv monotonic, align 8
  %i.bx = icmp eq i64 %i.bu, %i.bw
  br i1 %i.bx, label %bb.p, label %.critedge73

bb.p:                                             ; preds = %bb.o
  %i.by = getelementptr inbounds nuw i8, ptr %i.ab, i64 48
  %i.bz = load atomic volatile i64, ptr %i.by monotonic, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.ah, i64 48
  %i.cb = load atomic volatile i64, ptr %i.ca monotonic, align 8
  %i.cc = icmp eq i64 %i.bz, %i.cb
  br i1 %i.cc, label %bb.q, label %.critedge73

bb.q:                                             ; preds = %bb.p
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ce = load atomic volatile i64, ptr %i.cd monotonic, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.cg = load atomic volatile i64, ptr %i.cf monotonic, align 8
  %i.ch = icmp eq i64 %i.ce, %i.cg
  br i1 %i.ch, label %bb.r, label %.critedge73

bb.r:                                             ; preds = %bb.q
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  %i.cj = load atomic volatile i64, ptr %i.ci monotonic, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ah, i64 40
  %i.cl = load atomic volatile i64, ptr %i.ck monotonic, align 8
  %i.cm = icmp eq i64 %i.cj, %i.cl
  br i1 %i.cm, label %_ZNK2v88internal20SourceTextModuleInfo6EqualsENS0_6TaggedIS1_EE.exit, label %.critedge73

_ZNK2v88internal20SourceTextModuleInfo6EqualsENS0_6TaggedIS1_EE.exit: ; preds = %bb.r
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.co = load atomic volatile i64, ptr %i.cn monotonic, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.cq = load atomic volatile i64, ptr %i.cp monotonic, align 8
  %i.cr = icmp eq i64 %i.co, %i.cq
  br i1 %i.cr, label %.critedge5, label %.critedge73

_ZN2v88internal9IsOddballENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %_ZN2v88internal22IsSourceTextModuleInfoENS0_6TaggedINS0_6ObjectEEE.exit
  %i.cs = load atomic volatile i64, ptr %i.ab monotonic, align 8
  %i.ct = add i64 %i.cs, 11
  %i.cu = inttoptr i64 %i.ct to ptr
  %i.cv = load atomic volatile i16, ptr %i.cu monotonic, align 2
  %i.cw = icmp eq i16 %i.cv, 131
  br i1 %i.cw, label %bb.s, label %_ZN2v88internal15IsDependentCodeENS0_6TaggedINS0_6ObjectEEE.exit

bb.s:                                             ; preds = %_ZN2v88internal9IsOddballENS0_6TaggedINS0_6ObjectEEE.exit
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  %i.cy = load i64, ptr %i.cx, align 8
  %i.cz = lshr i64 %i.cy, 32
  %i.da = trunc i64 %i.cz to i8
  %i.db = getelementptr inbounds nuw i8, ptr %i.ah, i64 40
  %i.dc = load i64, ptr %i.db, align 8
  %i.dd = lshr i64 %i.dc, 32
  %i.de = trunc i64 %i.dd to i8
  %.not71 = icmp eq i8 %i.da, %i.de
  br i1 %.not71, label %.critedge5, label %.critedge73

_ZN2v88internal15IsDependentCodeENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %_ZN2v88internal9IsOddballENS0_6TaggedINS0_6ObjectEEE.exit
  %i.df = load atomic volatile i64, ptr %i.ab monotonic, align 8
  %i.dg = add i64 %i.df, 11
  %i.dh = inttoptr i64 %i.dg to ptr
  %i.di = load atomic volatile i16, ptr %i.dh monotonic, align 2
  %i.dj = icmp eq i16 %i.di, 298
  br i1 %i.dj, label %.critedge5, label %_ZN2v88internal22IsNameToIndexHashTableENS0_6TaggedINS0_6ObjectEEE.exit

_ZN2v88internal22IsNameToIndexHashTableENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %_ZN2v88internal15IsDependentCodeENS0_6TaggedINS0_6ObjectEEE.exit
  %i.dk = load atomic volatile i64, ptr %i.ab monotonic, align 8
  %i.dl = add i64 %i.dk, 11
  %i.dm = inttoptr i64 %i.dl to ptr
  %i.dn = load atomic volatile i16, ptr %i.dm monotonic, align 2
  %i.do = icmp eq i16 %i.dn, 210
  br i1 %i.do, label %bb.t, label %_ZN2v88internal22IsNameToIndexHashTableENS0_6TaggedINS0_6ObjectEEE.exit.thread

bb.t:                                             ; preds = %_ZN2v88internal22IsNameToIndexHashTableENS0_6TaggedINS0_6ObjectEEE.exit
  %i.dp = getelementptr inbounds nuw i8, ptr %i.ab, i64 32 ; 2 uses
  %i.dq = load atomic volatile i64, ptr %i.dp monotonic, align 8
  %i.dr = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %i.ds = load atomic volatile i64, ptr %i.dr monotonic, align 8
  %.not.unshifted.i = xor i64 %i.ds, %i.dq
  %.not.i = icmp ult i64 %.not.unshifted.i, 4294967296
  br i1 %.not.i, label %bb.u, label %.critedge73

bb.u:                                             ; preds = %bb.t
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.du = load atomic volatile i64, ptr %i.dt monotonic, align 8
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.dw = load atomic volatile i64, ptr %i.dv monotonic, align 8
  %.not10.unshifted.i = xor i64 %i.dw, %i.du
  %.not10.i = icmp ult i64 %.not10.unshifted.i, 4294967296
  br i1 %.not10.i, label %bb.v, label %.critedge73

bb.v:                                             ; preds = %bb.u
  %i.dx = load atomic volatile i64, ptr %i.dp monotonic, align 8
  %.not27.i = icmp ult i64 %i.dx, 4294967296
  br i1 %.not27.i, label %.critedge5, label %.split.i.preheader

.split.i.preheader:                               ; preds = %bb.v
  %i.dy = getelementptr i8, ptr %i.ab, i64 40
  %i.dz = getelementptr i8, ptr %i.ah, i64 40
  br label %.split.i

.split.i:                                         ; preds = %.split.i.preheader, %bb.w
  %i.ea = load atomic volatile i64, ptr %i.dy monotonic, align 8
  %i.eb = load atomic volatile i64, ptr %i.dz monotonic, align 8
  %.not28.i = icmp eq i64 %i.ea, %i.eb
  br i1 %.not28.i, label %bb.w, label %.critedge73

bb.w:                                             ; preds = %.split.i
  %i.ec = tail call i64 @_ZN2v88internal20NameToIndexHashTable7ValueAtENS0_13InternalIndexE(ptr noundef nonnull align 4 dereferenceable(16) %i.ab, i64 0) #17
  %i.ed = tail call i64 @_ZN2v88internal20NameToIndexHashTable7ValueAtENS0_13InternalIndexE(ptr noundef nonnull align 4 dereferenceable(16) %i.ah, i64 0) #17
  %.not29.i = icmp eq i64 %i.ec, %i.ed
  br i1 %.not29.i, label %.split.i, label %.critedge73, !llvm.loop !131

_ZN2v88internal22IsNameToIndexHashTableENS0_6TaggedINS0_6ObjectEEE.exit.thread: ; preds = %_ZN2v88internal22IsNameToIndexHashTableENS0_6TaggedINS0_6ObjectEEE.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #18
  unreachable

.critedge5:                                       ; preds = %bb.i, %bb.g, %.critedge, %bb.m, %bb.s, %_ZN2v88internal15IsDependentCodeENS0_6TaggedINS0_6ObjectEEE.exit, %_ZNK2v88internal20SourceTextModuleInfo6EqualsENS0_6TaggedIS1_EE.exit, %_ZNK2v88internal6String6EqualsENS0_6TaggedIS1_EE.exit, %bb.n, %bb.v, %bb.e
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ee = tail call noundef i32 @_ZNK2v88internal9ScopeInfo6lengthEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %i.ef = sext i32 %i.ee to i64
  %.not225 = icmp slt i64 %indvars.iv.next, %i.ef
  br i1 %.not225, label %.peel.next, label %.critedge73, !llvm.loop !132

.critedge73:                                      ; preds = %bb.t, %bb.u, %bb.o, %bb.p, %bb.q, %bb.r, %bb.k, %bb.s, %bb.g, %bb.h, %_ZNK2v88internal6String6EqualsENS0_6TaggedIS1_EE.exit, %bb.m, %_ZNK2v88internal20SourceTextModuleInfo6EqualsENS0_6TaggedIS1_EE.exit, %.critedge5, %bb.w, %.split.i, %.critedge5.peel, %.preheader, %bb.b, %bb.a
  %.4 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ true, %.critedge5.peel ], [ true, %.preheader ], [ false, %bb.w ], [ false, %.split.i ], [ false, %bb.u ], [ false, %bb.o ], [ false, %bb.p ], [ false, %bb.q ], [ false, %bb.r ], [ false, %bb.k ], [ false, %bb.s ], [ false, %bb.g ], [ false, %bb.h ], [ false, %_ZNK2v88internal6String6EqualsENS0_6TaggedIS1_EE.exit ], [ true, %.critedge5 ], [ false, %bb.m ], [ false, %_ZNK2v88internal20SourceTextModuleInfo6EqualsENS0_6TaggedIS1_EE.exit ], [ false, %bb.t ]
  ret i1 %.4
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef range(i32 -268435456, 268435455) i32 @_ZNK2v88internal9ScopeInfo6lengthEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %.sroa.0.0.copyload.i = load i64, ptr %0, align 8 ; 3 uses
  %i.a = add i64 %.sroa.0.0.copyload.i, 7
  %i.b = inttoptr i64 %i.a to ptr                 ; 9 uses
  %i.c = load atomic volatile i32, ptr %i.b monotonic, align 4, !noalias !158
  %i.d = add i64 %.sroa.0.0.copyload.i, 23
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = load i64, ptr %i.e, align 8, !noalias !159 ; 3 uses
  %i.g = load atomic volatile i32, ptr %i.b monotonic, align 4, !noalias !160
  %i.h = load atomic volatile i32, ptr %i.b monotonic, align 4, !noalias !161
  %i.i = load atomic volatile i32, ptr %i.b monotonic, align 4, !noalias !162
  %i.j = load atomic volatile i32, ptr %i.b monotonic, align 4, !noalias !163
  %i.k = load atomic volatile i32, ptr %i.b monotonic, align 4, !noalias !164
  %i.l = load atomic volatile i32, ptr %i.b monotonic, align 4, !noalias !165
  %i.m = and i32 %i.l, 15
  %i.n = icmp eq i32 %i.m, 5
  br i1 %i.n, label %bb.b, label %_ZNK2v88internal24TorqueGeneratedScopeInfoINS0_9ScopeInfoENS0_10HeapObjectEE13AllocatedSizeEv.exit

bb.b:                                             ; preds = %bb.a
  %i.o = load atomic volatile i32, ptr %i.b monotonic, align 4, !noalias !166
  %i.p = and i32 %i.o, 15
  %i.q = icmp eq i32 %i.p, 5
  br i1 %i.q, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.r = add i64 %.sroa.0.0.copyload.i, 47
  %i.s = inttoptr i64 %i.r to ptr
  %i.t = load i64, ptr %i.s, align 8, !noalias !165
  %i.u = ashr i64 %i.t, 32
  %i.v = mul nsw i64 %i.u, 24
  br label %_ZNK2v88internal24TorqueGeneratedScopeInfoINS0_9ScopeInfoENS0_10HeapObjectEE13AllocatedSizeEv.exit

bb.d:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #18, !noalias !165
  unreachable

_ZNK2v88internal24TorqueGeneratedScopeInfoINS0_9ScopeInfoENS0_10HeapObjectEE13AllocatedSizeEv.exit: ; preds = %bb.a, %bb.c
  %storemerge.i.i.i = phi i64 [ %i.v, %bb.c ], [ 0, %bb.a ]
  %i.w = and i32 %i.k, 15
  %i.x = icmp eq i32 %i.w, 5
  %i.y = select i1 %i.x, i64 8, i64 0
  %1 = icmp sgt i64 %i.f, 322122547199
  %2 = select i1 %1, i64 8, i64 0
  %i.z = and i32 %i.c, 15
  %i.aa = icmp eq i32 %i.z, 5
  %i.ab = select i1 %i.aa, i64 56, i64 48
  %3 = add nuw nsw i64 %2, %i.ab
  %4 = ashr i64 %i.f, 29
  %5 = and i64 %4, -8                             ; 2 uses
  %i.ac = add nsw i64 %3, %5
  %6 = icmp slt i64 %i.f, 322122547200
  %i.ad = select i1 %6, i64 %5, i64 0
  %i.ae = add nsw i64 %i.ac, %i.ad
  %i.af = lshr i32 %i.g, 7
  %i.ag = and i32 %i.af, 8
  %i.ah = zext nneg i32 %i.ag to i64
  %i.ai = add nsw i64 %i.ae, %i.ah
  %i.aj = and i32 %i.h, 12288
  %.not.i.not.i.i.i.i.i.i = icmp eq i32 %i.aj, 0
  %i.ak = select i1 %.not.i.not.i.i.i.i.i.i, i64 0, i64 16
  %i.al = add nsw i64 %i.ai, %i.ak
  %i.am = lshr i32 %i.i, 11
  %i.an = and i32 %i.am, 8
  %i.ao = zext nneg i32 %i.an to i64
  %i.ap = add nsw i64 %i.al, %i.ao
  %i.aq = lshr i32 %i.j, 19
  %i.ar = and i32 %i.aq, 8
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = add nsw i64 %i.ap, %i.as
  %i.au = add nsw i64 %i.at, %i.y
  %i.av = add nsw i64 %i.au, %storemerge.i.i.i
  %i.aw = load atomic volatile i32, ptr %i.b monotonic, align 4, !noalias !167
  %i.ax = trunc i64 %i.av to i32
  %i.ay = lshr i32 %i.aw, 1
  %i.az = and i32 %i.ay, 8
  %i.ba = add i32 %i.ax, -8
  %i.bb = add i32 %i.ba, %i.az
  %i.bc = sdiv i32 %i.bb, 8
  ret i32 %i.bc
}

; Function Attrs: noreturn
declare void @_Z8V8_FatalPKcz(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN2v88internal9ScopeInfo18CreateForWithScopeEPNS0_7IsolateENS0_17MaybeDirectHandleIS1_EE(ptr noundef nonnull %0, ptr nofree readonly captures(address_is_null) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %.not = icmp eq ptr %1, null                    ; 3 uses
  %i.a = select i1 %.not, i32 5, i32 6
  %i.b = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE12NewScopeInfoEiNS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.a, i8 noundef zeroext 1) #17 ; 7 uses
  %i.c = select i1 %.not, i32 67174408, i32 71368712
  %i.d = load i64, ptr %i.b, align 8
  %i.e = add i64 %i.d, 7
  %i.f = inttoptr i64 %i.e to ptr
  store atomic volatile i32 %i.c, ptr %i.f monotonic, align 4
  %i.g = load i64, ptr %i.b, align 8
  %i.h = add i64 %i.g, 15
  %i.i = inttoptr i64 %i.h to ptr
  store atomic volatile i64 0, ptr %i.i monotonic, align 8
  %i.j = load i64, ptr %i.b, align 8
  %i.k = add i64 %i.j, 23
  %i.l = inttoptr i64 %i.k to ptr
  store atomic volatile i64 0, ptr %i.l monotonic, align 8
  %i.m = load i64, ptr %i.b, align 8
  %i.n = add i64 %i.m, 31
  %i.o = inttoptr i64 %i.n to ptr
  store atomic volatile i64 0, ptr %i.o monotonic, align 8
  %i.p = load i64, ptr %i.b, align 8
  %i.q = add i64 %i.p, 39
  %i.r = inttoptr i64 %i.q to ptr
  store atomic volatile i64 0, ptr %i.r monotonic, align 8
  br i1 %.not, label %_ZN2v88internal9ScopeInfo3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit, label %_ZNK2v88internal11MaybeHandleINS0_9ScopeInfoEE5CheckEv.exit

_ZNK2v88internal11MaybeHandleINS0_9ScopeInfoEE5CheckEv.exit: ; preds = %bb.a
  %i.s = load i64, ptr %1, align 8                ; 5 uses
  %i.t = load i64, ptr %i.b, align 8              ; 4 uses
  %i.u = add i64 %i.t, 47                         ; 3 uses
  %i.v = inttoptr i64 %i.u to ptr
  store atomic volatile i64 %i.s, ptr %i.v monotonic, align 8
  %i.w = trunc i64 %i.s to i1
  br i1 %i.w, label %bb.b, label %_ZN2v88internal9ScopeInfo3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit

bb.b:                                             ; preds = %_ZNK2v88internal11MaybeHandleINS0_9ScopeInfoEE5CheckEv.exit
  %i.x = and i64 %i.t, -262144
  %i.y = inttoptr i64 %i.x to ptr
  %i.z = load i64, ptr %i.y, align 262144         ; 2 uses
  %i.aa = and i64 %i.z, 32
  %.not.i.i.i = icmp eq i64 %i.aa, 0
  %i.ab = and i64 %i.z, 25
  %.not37.i.i.i = icmp eq i64 %i.ab, 0
  br i1 %.not37.i.i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.ac = and i64 %i.s, -262144
  %i.ad = inttoptr i64 %i.ac to ptr
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.ad, align 262144
  %i.ae = and i64 %.sroa.0.0.copyload.i.i.i.i.i, 25
  %.not38.i.i.i = icmp eq i64 %i.ae, 0
  br i1 %.not38.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.t, i64 noundef %i.u, i64 %i.s) #17
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  br i1 %.not.i.i.i, label %_ZN2v88internal9ScopeInfo3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit, label %bb.f, !prof !6

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.t, i64 %i.u, i64 %i.s) #17
  br label %_ZN2v88internal9ScopeInfo3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit

_ZN2v88internal9ScopeInfo3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit: ; preds = %bb.f, %bb.e, %_ZNK2v88internal11MaybeHandleINS0_9ScopeInfoEE5CheckEv.exit, %bb.a
  ret ptr %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN2v88internal9ScopeInfo23CreateGlobalThisBindingEPNS0_7IsolateE(ptr noundef nonnull %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = tail call ptr @_ZN2v88internal9ScopeInfo22CreateForBootstrappingEPNS0_7IsolateENS1_17BootstrappingTypeE(ptr noundef %0, i32 noundef 0)
  ret ptr %1
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN2v88internal9ScopeInfo22CreateForBootstrappingEPNS0_7IsolateENS1_17BootstrappingTypeE(ptr noundef nonnull %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp eq i32 %1, 1                        ; 5 uses
  %i.b = icmp eq i32 %1, 3
  %i.c = and i32 %1, -2
  %i.d = icmp eq i32 %i.c, 2
  %i.e = icmp eq i32 %1, 0
  %i.f = add i32 %1, -4
  %i.g = icmp ult i32 %i.f, -3                    ; 3 uses
  %i.h = select i1 %i.g, i32 7, i32 5
  %i.i = select i1 %i.a, i32 3, i32 0
  %i.j = add nuw nsw i32 %i.i, %i.h
  %i.k = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE12NewScopeInfoEiNS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.j, i8 noundef zeroext 4) #17 ; 2 uses
  %2 = select i1 %i.b, i32 73, i32 64
  %3 = select i1 %i.a, i32 68, i32 %2
  %i.l = select i1 %i.a, i32 12288, i32 0
  %i.m = select i1 %i.a, i32 16384, i32 0
  %i.n = select i1 %i.d, i32 67108864, i32 0
  %i.o = select i1 %i.e, i32 65792, i32 65920
  %4 = or disjoint i32 %i.o, %i.l
  %5 = or disjoint i32 %4, %i.m
  %6 = or disjoint i32 %5, %3
  %i.p = or disjoint i32 %6, %i.n
  %i.q = load i64, ptr %i.k, align 8              ; 19 uses
  %i.r = add i64 %i.q, 7
  %i.s = inttoptr i64 %i.r to ptr
  store atomic volatile i32 %i.p, ptr %i.s monotonic, align 4
  %i.t = add i64 %i.q, 15
  %i.u = inttoptr i64 %i.t to ptr
  store atomic volatile i64 0, ptr %i.u monotonic, align 8
  %i.v = select i1 %i.g, i64 4294967296, i64 0
  %i.w = add i64 %i.q, 23
  %i.x = inttoptr i64 %i.w to ptr
  store atomic volatile i64 %i.v, ptr %i.x monotonic, align 8
  %i.y = add i64 %i.q, 31
  %i.z = inttoptr i64 %i.y to ptr
  store atomic volatile i64 0, ptr %i.z monotonic, align 8
  %i.aa = add i64 %i.q, 39
  %i.ab = inttoptr i64 %i.aa to ptr
  store atomic volatile i64 0, ptr %i.ab monotonic, align 8
  br i1 %i.g, label %bb.b, label %_ZN2v88internal9ScopeInfo3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit

bb.b:                                             ; preds = %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 7568
  %i.ad = load i64, ptr %i.ac, align 8            ; 5 uses
  %i.ae = add i64 %i.q, 47                        ; 3 uses
  %i.af = inttoptr i64 %i.ae to ptr
  store atomic volatile i64 %i.ad, ptr %i.af monotonic, align 8
  %i.ag = trunc i64 %i.ad to i1
  br i1 %i.ag, label %bb.c, label %_ZN2v88internal9ScopeInfo3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.thread122

bb.c:                                             ; preds = %bb.b
  %i.ah = and i64 %i.q, -262144
  %i.ai = inttoptr i64 %i.ah to ptr
  %i.aj = load i64, ptr %i.ai, align 262144       ; 2 uses
  %i.ak = and i64 %i.aj, 32
  %.not.i.i.i = icmp eq i64 %i.ak, 0
  %i.al = and i64 %i.aj, 25
  %.not37.i.i.i = icmp eq i64 %i.al, 0
  br i1 %.not37.i.i.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.am = and i64 %i.ad, -262144
  %i.an = inttoptr i64 %i.am to ptr
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.an, align 262144
  %i.ao = and i64 %.sroa.0.0.copyload.i.i.i.i.i, 25
  %.not38.i.i.i = icmp eq i64 %i.ao, 0
  br i1 %.not38.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.q, i64 noundef %i.ae, i64 %i.ad) #17
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  br i1 %.not.i.i.i, label %_ZN2v88internal9ScopeInfo3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.thread122, label %bb.g, !prof !6

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.q, i64 %i.ae, i64 %i.ad) #17
  br label %_ZN2v88internal9ScopeInfo3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.thread122

_ZN2v88internal9ScopeInfo3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.thread122: ; preds = %bb.b, %bb.f, %bb.g
  %i.ap = add i64 %i.q, 55
  %i.aq = inttoptr i64 %i.ap to ptr
  store atomic volatile i64 18014196646019072, ptr %i.aq monotonic, align 8
  br label %.critedge

_ZN2v88internal9ScopeInfo3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit: ; preds = %bb.a
  br i1 %i.a, label %bb.h, label %.critedge

bb.h:                                             ; preds = %_ZN2v88internal9ScopeInfo3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 688 ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8            ; 5 uses
  %i.at = add i64 %i.q, 47                        ; 3 uses
  %i.au = inttoptr i64 %i.at to ptr
  store atomic volatile i64 %i.as, ptr %i.au monotonic, align 8
  %i.av = trunc i64 %i.as to i1
  br i1 %i.av, label %bb.i, label %_ZN2v88internal9ScopeInfo3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit52

bb.i:                                             ; preds = %bb.h
  %i.aw = and i64 %i.q, -262144
  %i.ax = inttoptr i64 %i.aw to ptr
  %i.ay = load i64, ptr %i.ax, align 262144       ; 2 uses
  %i.az = and i64 %i.ay, 32
  %.not.i.i.i48 = icmp eq i64 %i.az, 0
  %i.ba = and i64 %i.ay, 25
  %.not37.i.i.i49 = icmp eq i64 %i.ba, 0
  br i1 %.not37.i.i.i49, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.bb = and i64 %i.as, -262144
  %i.bc = inttoptr i64 %i.bb to ptr
  %.sroa.0.0.copyload.i.i.i.i.i50 = load i64, ptr %i.bc, align 262144
  %i.bd = and i64 %.sroa.0.0.copyload.i.i.i.i.i50, 25
  %.not38.i.i.i51 = icmp eq i64 %i.bd, 0
  br i1 %.not38.i.i.i51, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.q, i64 noundef %i.at, i64 %i.as) #17
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i
  br i1 %.not.i.i.i48, label %_ZN2v88internal9ScopeInfo3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit52, label %bb.m, !prof !6

bb.m:                                             ; preds = %bb.l
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.q, i64 %i.at, i64 %i.as) #17
  br label %_ZN2v88internal9ScopeInfo3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit52

_ZN2v88internal9ScopeInfo3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit52: ; preds = %bb.h, %bb.l, %bb.m
  %i.be = add i64 %i.q, 55
  %i.bf = inttoptr i64 %i.be to ptr
  store atomic volatile i64 0, ptr %i.bf monotonic, align 8
  %i.bg = load i64, ptr %i.ar, align 8            ; 5 uses
  %i.bh = add i64 %i.q, 63                        ; 3 uses
  %i.bi = inttoptr i64 %i.bh to ptr
  store atomic volatile i64 %i.bg, ptr %i.bi monotonic, align 8
  %i.bj = trunc i64 %i.bg to i1
  br i1 %i.bj, label %bb.n, label %.critedge

bb.n:                                             ; preds = %_ZN2v88internal9ScopeInfo3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit52
  %i.bk = and i64 %i.q, -262144
  %i.bl = inttoptr i64 %i.bk to ptr
  %i.bm = load i64, ptr %i.bl, align 262144       ; 2 uses
  %i.bn = and i64 %i.bm, 32
  %.not.i.i.i56 = icmp eq i64 %i.bn, 0
  %i.bo = and i64 %i.bm, 25
  %.not37.i.i.i57 = icmp eq i64 %i.bo, 0
  br i1 %.not37.i.i.i57, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.bp = and i64 %i.bg, -262144
  %i.bq = inttoptr i64 %i.bp to ptr
  %.sroa.0.0.copyload.i.i.i.i.i58 = load i64, ptr %i.bq, align 262144
  %i.br = and i64 %.sroa.0.0.copyload.i.i.i.i.i58, 25
  %.not38.i.i.i59 = icmp eq i64 %i.br, 0
  br i1 %.not38.i.i.i59, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.q, i64 noundef %i.bh, i64 %i.bg) #17
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n
  br i1 %.not.i.i.i56, label %.critedge, label %bb.r, !prof !6

bb.r:                                             ; preds = %bb.q
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.q, i64 %i.bh, i64 %i.bg) #17
  br label %.critedge

.critedge:                                        ; preds = %bb.r, %bb.q, %_ZN2v88internal9ScopeInfo3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit52, %_ZN2v88internal9ScopeInfo3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.thread122, %_ZN2v88internal9ScopeInfo3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit
  ret ptr %i.k
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN2v88internal9ScopeInfo22CreateForEmptyFunctionEPNS0_7IsolateE(ptr noundef nonnull %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call ptr @_ZN2v88internal9ScopeInfo22CreateForBootstrappingEPNS0_7IsolateENS1_17BootstrappingTypeE(ptr noundef %0, i32 noundef 1) ; 2 uses
  %i.b = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 168), align 8, !range !8, !noundef !9
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %i.a, align 8
  %i.e = add i64 %i.d, 7
  %i.f = inttoptr i64 %i.e to ptr                 ; 2 uses
  %i.g = load atomic volatile i32, ptr %i.f monotonic, align 4
  %i.h = or i32 %i.g, -2147483648
  store atomic volatile i32 %i.h, ptr %i.f monotonic, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN2v88internal9ScopeInfo22CreateForNativeContextEPNS0_7IsolateE(ptr noundef nonnull %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE12NewScopeInfoEiNS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef 5, i8 noundef zeroext 4) #17 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8              ; 5 uses
  %i.c = add i64 %i.b, 7
  %i.d = inttoptr i64 %i.c to ptr
  store atomic volatile i32 67174848, ptr %i.d monotonic, align 4
  %i.e = add i64 %i.b, 15
  %i.f = inttoptr i64 %i.e to ptr
  store atomic volatile i64 0, ptr %i.f monotonic, align 8
  %i.g = add i64 %i.b, 23
  %i.h = inttoptr i64 %i.g to ptr
  store atomic volatile i64 0, ptr %i.h monotonic, align 8
  %i.i = add i64 %i.b, 31
  %i.j = inttoptr i64 %i.i to ptr
  store atomic volatile i64 0, ptr %i.j monotonic, align 8
  %i.k = add i64 %i.b, 39
  %i.l = inttoptr i64 %i.k to ptr
  store atomic volatile i64 0, ptr %i.l monotonic, align 8
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN2v88internal9ScopeInfo33CreateForShadowRealmNativeContextEPNS0_7IsolateE(ptr noundef nonnull %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE12NewScopeInfoEiNS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef 5, i8 noundef zeroext 4) #17 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8              ; 5 uses
  %i.c = add i64 %i.b, 7
  %i.d = inttoptr i64 %i.c to ptr
  store atomic volatile i32 67174857, ptr %i.d monotonic, align 4
end_hunk_3
begin_hunk_4_@_ZNK2v88internal9ScopeInfo22IsWrappedFunctionScopeEv:bb.a
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load atomic volatile i32, ptr %i.c monotonic, align 4
  %i.e = and i32 %i.d, 1073741824
  %i.f = icmp ne i32 %i.e, 0
  ret i1 %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef i32 @_ZNK2v88internal9ScopeInfo13StartPositionEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #8 align 2 {
bb.a:
  %.sroa.0.0.copyload.i = load i64, ptr %0, align 8
  %i.a = add i64 %.sroa.0.0.copyload.i, 31
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = load i64, ptr %i.b, align 8
  %i.d = lshr i64 %i.c, 32
  %i.e = trunc nuw i64 %i.d to i32
  ret i32 %i.e
}

; Function Attrs: mustprogress norecurse nounwind memory(readwrite, target_mem: none) uwtable
define hidden noundef zeroext range(i8 0, 32) i8 @_ZNK2v88internal9ScopeInfo13function_kindEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = add i64 %i.a, 7
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load atomic volatile i32, ptr %i.c monotonic, align 4
  %i.e = lshr i32 %i.d, 17
  %i.f = trunc i32 %i.e to i8
  %i.g = and i8 %i.f, 31
  ret i8 %i.g
}

; Function Attrs: mustprogress norecurse nounwind memory(readwrite, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZNK2v88internal9ScopeInfo23HasContextExtensionSlotEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = add i64 %i.a, 7
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load atomic volatile i32, ptr %i.c monotonic, align 4
  %i.e = and i32 %i.d, 67108864
  %i.f = icmp ne i32 %i.e, 0
  ret i1 %i.f
}

; Function Attrs: mustprogress norecurse nounwind memory(readwrite, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZNK2v88internal9ScopeInfo23SomeContextHasExtensionEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = add i64 %i.a, 7
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load atomic volatile i32, ptr %i.c monotonic, align 4
  %i.e = and i32 %i.d, 134217728
  %i.f = icmp ne i32 %i.e, 0
  ret i1 %i.f
}

; Function Attrs: mustprogress norecurse nounwind memory(readwrite, target_mem: none) uwtable
define hidden void @_ZN2v88internal9ScopeInfo31mark_some_context_has_extensionEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = add i64 %i.a, 7
  %i.c = inttoptr i64 %i.b to ptr                 ; 2 uses
  %i.d = load atomic volatile i32, ptr %i.c monotonic, align 4
  %i.e = or i32 %i.d, 134217728
  store atomic volatile i32 %i.e, ptr %i.c monotonic, align 4
  ret void
}

; Function Attrs: mustprogress norecurse nounwind memory(readwrite, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZNK2v88internal9ScopeInfo11HasReceiverEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = add i64 %i.a, 7
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load atomic volatile i32, ptr %i.c monotonic, align 4
  %i.e = and i32 %i.d, 384
  %i.f = icmp ne i32 %i.e, 0
  ret i1 %i.f
}

; Function Attrs: mustprogress norecurse nounwind memory(readwrite, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZNK2v88internal9ScopeInfo20HasAllocatedReceiverEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = add i64 %i.a, 7
  %i.c = inttoptr i64 %i.b to ptr                 ; 2 uses
  %i.d = load atomic volatile i32, ptr %i.c monotonic, align 4
  %i.e = lshr i32 %i.d, 7
  %i.f = and i32 %i.e, 3
  %i.g = add nsw i32 %i.f, -1
  %or.cond = icmp ult i32 %i.g, 2
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load atomic volatile i32, ptr %i.c monotonic, align 4
  %i.i = and i32 %i.h, 8388608
  %i.j = icmp ne i32 %i.i, 0
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.k = phi i1 [ %i.j, %bb.b ], [ true, %bb.a ]
  ret i1 %i.k
}

; Function Attrs: mustprogress norecurse nounwind memory(readwrite, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZNK2v88internal9ScopeInfo20IsDebugEvaluateScopeEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = add i64 %i.a, 7
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load atomic volatile i32, ptr %i.c monotonic, align 4
  %i.e = and i32 %i.d, 8388608
  %i.f = icmp ne i32 %i.e, 0
  ret i1 %i.f
}

; Function Attrs: mustprogress norecurse nounwind memory(readwrite, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZNK2v88internal9ScopeInfo25ClassScopeHasPrivateBrandEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = add i64 %i.a, 7
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load atomic volatile i32, ptr %i.c monotonic, align 4
  %i.e = and i32 %i.d, 512
  %i.f = icmp ne i32 %i.e, 0
  ret i1 %i.f
}

; Function Attrs: mustprogress norecurse nounwind memory(readwrite, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZNK2v88internal9ScopeInfo21HasSavedClassVariableEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = add i64 %i.a, 7
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load atomic volatile i32, ptr %i.c monotonic, align 4
  %i.e = and i32 %i.d, 1024
  %i.f = icmp ne i32 %i.e, 0
  ret i1 %i.f
}

; Function Attrs: mustprogress norecurse nounwind memory(readwrite, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZNK2v88internal9ScopeInfo12HasNewTargetEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = add i64 %i.a, 7
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load atomic volatile i32, ptr %i.c monotonic, align 4
  %i.e = and i32 %i.d, 2048
  %i.f = icmp ne i32 %i.e, 0
  ret i1 %i.f
}

; Function Attrs: mustprogress norecurse nounwind memory(readwrite, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZNK2v88internal9ScopeInfo15HasFunctionNameEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = add i64 %i.a, 7
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load atomic volatile i32, ptr %i.c monotonic, align 4
  %i.e = and i32 %i.d, 12288
  %i.f = icmp ne i32 %i.e, 0
  ret i1 %i.f
}

; Function Attrs: mustprogress norecurse nounwind memory(readwrite, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZNK2v88internal9ScopeInfo23HasInferredFunctionNameEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = add i64 %i.a, 7
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load atomic volatile i32, ptr %i.c monotonic, align 4
  %i.e = and i32 %i.d, 16384
  %i.f = icmp ne i32 %i.e, 0
  ret i1 %i.f
}

; Function Attrs: mustprogress norecurse nounwind memory(readwrite, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZNK2v88internal9ScopeInfo15HasPositionInfoEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = add i64 %i.a, 7
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load atomic volatile i32, ptr %i.c monotonic, align 4
  %i.e = and i32 %i.d, 536870912
  %.not = icmp eq i32 %i.e, 0
  ret i1 %.not
}

; Function Attrs: mustprogress norecurse nounwind memory(readwrite, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZNK2v88internal9ScopeInfo21HasSharedFunctionNameEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %0, align 8 ; 3 uses
  %i.a = add i64 %.sroa.0.0.copyload.i.i.i.i, 7
  %i.b = inttoptr i64 %i.a to ptr                 ; 3 uses
  %i.c = load atomic volatile i32, ptr %i.b monotonic, align 4, !noalias !180
  %i.d = and i32 %i.c, 15
  %i.e = icmp eq i32 %i.d, 5
  %i.f = select i1 %i.e, i64 56, i64 48
  %i.g = add i64 %.sroa.0.0.copyload.i.i.i.i, 23
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = load i64, ptr %i.h, align 8, !noalias !181 ; 3 uses
  %1 = icmp slt i64 %i.i, 322122547200
  %i.j = ashr i64 %i.i, 29
  %i.k = and i64 %i.j, -8                         ; 2 uses
  %2 = select i1 %1, i64 %i.k, i64 322122547200
  %i.l = icmp sgt i64 %i.i, 322122547199
  %i.m = select i1 %i.l, i64 8, i64 0
  %3 = add nuw nsw i64 %i.m, %i.f
  %i.n = add nsw i64 %3, %i.k
  %i.o = add nsw i64 %i.n, %2
  %i.p = load atomic volatile i32, ptr %i.b monotonic, align 4, !noalias !182
  %i.q = lshr i32 %i.p, 7
  %i.r = and i32 %i.q, 8
  %i.s = load atomic volatile i32, ptr %i.b monotonic, align 4, !noalias !183 ; 0 uses
  %i.t = trunc i64 %i.o to i32
  %i.u = add i32 %i.r, %i.t
  %i.v = add i64 %.sroa.0.0.copyload.i.i.i.i, -1
  %i.w = sext i32 %i.u to i64
  %i.x = add i64 %i.v, %i.w
  %i.y = inttoptr i64 %i.x to ptr
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = icmp ne i64 %i.z, 0
  ret i1 %i.aa
}

; Function Attrs: mustprogress norecurse nounwind memory(readwrite, target_mem: none) uwtable
define hidden i64 @_ZNK2v88internal9ScopeInfo12FunctionNameEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %0, align 8 ; 3 uses
  %i.a = add i64 %.sroa.0.0.copyload.i.i.i, 7
  %i.b = inttoptr i64 %i.a to ptr                 ; 3 uses
  %i.c = load atomic volatile i32, ptr %i.b monotonic, align 4, !noalias !196
  %i.d = and i32 %i.c, 15
  %i.e = icmp eq i32 %i.d, 5
  %i.f = select i1 %i.e, i64 56, i64 48
  %i.g = add i64 %.sroa.0.0.copyload.i.i.i, 23
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = load i64, ptr %i.h, align 8, !noalias !197 ; 3 uses
  %1 = icmp slt i64 %i.i, 322122547200
  %i.j = ashr i64 %i.i, 29
  %i.k = and i64 %i.j, -8                         ; 2 uses
  %2 = select i1 %1, i64 %i.k, i64 322122547200
  %i.l = icmp sgt i64 %i.i, 322122547199
  %i.m = select i1 %i.l, i64 8, i64 0
  %3 = add nuw nsw i64 %i.m, %i.f
  %i.n = add nsw i64 %3, %i.k
  %i.o = add nsw i64 %i.n, %2
  %i.p = load atomic volatile i32, ptr %i.b monotonic, align 4, !noalias !198
  %i.q = lshr i32 %i.p, 7
  %i.r = and i32 %i.q, 8
  %i.s = load atomic volatile i32, ptr %i.b monotonic, align 4, !noalias !199 ; 0 uses
  %i.t = trunc i64 %i.o to i32
  %i.u = add i32 %i.r, %i.t
  %i.v = add i64 %.sroa.0.0.copyload.i.i.i, -1
  %i.w = sext i32 %i.u to i64
  %i.x = add i64 %i.v, %i.w
  %i.y = inttoptr i64 %i.x to ptr
  %i.z = load i64, ptr %i.y, align 8
  ret i64 %i.z
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal9ScopeInfo15SetFunctionNameENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_6StringEEEEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, i64 %1) local_unnamed_addr #0 align 2 {
bb.a:
  %.sroa.0.0.copyload.i.i = load i64, ptr %0, align 8 ; 3 uses
  %i.a = add i64 %.sroa.0.0.copyload.i.i, 7
  %i.b = inttoptr i64 %i.a to ptr                 ; 3 uses
  %i.c = load atomic volatile i32, ptr %i.b monotonic, align 4, !noalias !212
  %i.d = and i32 %i.c, 15
  %i.e = icmp eq i32 %i.d, 5
  %i.f = select i1 %i.e, i64 56, i64 48
  %i.g = add i64 %.sroa.0.0.copyload.i.i, 23
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = load i64, ptr %i.h, align 8, !noalias !213 ; 3 uses
  %2 = icmp slt i64 %i.i, 322122547200
  %i.j = ashr i64 %i.i, 29
  %i.k = and i64 %i.j, -8                         ; 2 uses
  %3 = select i1 %2, i64 %i.k, i64 322122547200
  %i.l = icmp sgt i64 %i.i, 322122547199
  %i.m = select i1 %i.l, i64 8, i64 0
  %4 = add nuw nsw i64 %i.m, %i.f
  %i.n = add nsw i64 %4, %i.k
  %i.o = add nsw i64 %i.n, %3
  %i.p = load atomic volatile i32, ptr %i.b monotonic, align 4, !noalias !214
  %i.q = lshr i32 %i.p, 7
  %i.r = and i32 %i.q, 8
  %i.s = load atomic volatile i32, ptr %i.b monotonic, align 4, !noalias !215 ; 0 uses
  %i.t = trunc i64 %i.o to i32
  %i.u = add i32 %i.r, %i.t
  %i.v = sext i32 %i.u to i64
  %i.w = add nsw i64 %i.v, -1                     ; 2 uses
  %i.x = add i64 %i.w, %.sroa.0.0.copyload.i.i
  %i.y = inttoptr i64 %i.x to ptr
  store atomic volatile i64 %1, ptr %i.y monotonic, align 8
  %.sroa.02.0.copyload.i = load i64, ptr %0, align 8 ; 4 uses
  %i.z = add i64 %i.w, %.sroa.02.0.copyload.i     ; 2 uses
  %i.aa = trunc i64 %1 to i1
  br i1 %i.aa, label %bb.b, label %_ZN2v88internal24TorqueGeneratedScopeInfoINS0_9ScopeInfoENS0_10HeapObjectEE31set_function_variable_info_nameENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_6StringEEEEEENS0_16WriteBarrierModeE.exit

bb.b:                                             ; preds = %bb.a
  %i.ab = and i64 %.sroa.02.0.copyload.i, -262144
  %i.ac = inttoptr i64 %i.ab to ptr
  %i.ad = load i64, ptr %i.ac, align 262144       ; 2 uses
  %i.ae = and i64 %i.ad, 32
  %.not.i.i.i = icmp eq i64 %i.ae, 0
  %i.af = and i64 %i.ad, 25
  %.not37.i.i.i = icmp eq i64 %i.af, 0
  br i1 %.not37.i.i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.ag = and i64 %1, -262144
  %i.ah = inttoptr i64 %i.ag to ptr
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.ah, align 262144
  %i.ai = and i64 %.sroa.0.0.copyload.i.i.i.i.i, 25
  %.not38.i.i.i = icmp eq i64 %i.ai, 0
  br i1 %.not38.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %.sroa.02.0.copyload.i, i64 noundef %i.z, i64 %1) #17
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  br i1 %.not.i.i.i, label %_ZN2v88internal24TorqueGeneratedScopeInfoINS0_9ScopeInfoENS0_10HeapObjectEE31set_function_variable_info_nameENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_6StringEEEEEENS0_16WriteBarrierModeE.exit, label %bb.f, !prof !6

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %.sroa.02.0.copyload.i, i64 %i.z, i64 %1) #17
  br label %_ZN2v88internal24TorqueGeneratedScopeInfoINS0_9ScopeInfoENS0_10HeapObjectEE31set_function_variable_info_nameENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_6StringEEEEEENS0_16WriteBarrierModeE.exit

_ZN2v88internal24TorqueGeneratedScopeInfoINS0_9ScopeInfoENS0_10HeapObjectEE31set_function_variable_info_nameENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_6StringEEEEEENS0_16WriteBarrierModeE.exit: ; preds = %bb.a, %bb.e, %bb.f
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal9ScopeInfo23SetInferredFunctionNameENS0_6TaggedINS0_6StringEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, i64 %1) local_unnamed_addr #0 align 2 {
bb.a:
  %.sroa.0.0.copyload.i.i = load i64, ptr %0, align 8 ; 3 uses
  %i.a = add i64 %.sroa.0.0.copyload.i.i, 7
  %i.b = inttoptr i64 %i.a to ptr                 ; 4 uses
  %i.c = load atomic volatile i32, ptr %i.b monotonic, align 4, !noalias !230
  %i.d = and i32 %i.c, 15
  %i.e = icmp eq i32 %i.d, 5
  %i.f = select i1 %i.e, i64 56, i64 48
  %i.g = add i64 %.sroa.0.0.copyload.i.i, 23
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = load i64, ptr %i.h, align 8, !noalias !231 ; 3 uses
  %2 = icmp slt i64 %i.i, 322122547200
  %i.j = ashr i64 %i.i, 29
  %i.k = and i64 %i.j, -8                         ; 2 uses
  %3 = select i1 %2, i64 %i.k, i64 322122547200
  %i.l = icmp sgt i64 %i.i, 322122547199
  %i.m = select i1 %i.l, i64 8, i64 0
  %4 = add nuw nsw i64 %i.m, %i.f
  %i.n = add nsw i64 %4, %i.k
  %i.o = add nsw i64 %i.n, %3
  %i.p = load atomic volatile i32, ptr %i.b monotonic, align 4, !noalias !232
  %i.q = lshr i32 %i.p, 7
  %i.r = and i32 %i.q, 8
  %i.s = zext nneg i32 %i.r to i64
  %i.t = add nsw i64 %i.o, %i.s
  %i.u = load atomic volatile i32, ptr %i.b monotonic, align 4, !noalias !233
  %i.v = and i32 %i.u, 12288
  %.not.i.not.i.i.i = icmp eq i32 %i.v, 0
  %i.w = select i1 %.not.i.not.i.i.i, i64 0, i64 16
  %i.x = add nsw i64 %i.t, %i.w
  %i.y = load atomic volatile i32, ptr %i.b monotonic, align 4, !noalias !234 ; 0 uses
  %sext.i = shl i64 %i.x, 32
  %i.z = ashr exact i64 %sext.i, 32
  %i.aa = add nsw i64 %i.z, -1                    ; 2 uses
  %i.ab = add i64 %i.aa, %.sroa.0.0.copyload.i.i
  %i.ac = inttoptr i64 %i.ab to ptr
  store atomic volatile i64 %1, ptr %i.ac monotonic, align 8
  %.sroa.02.0.copyload.i = load i64, ptr %0, align 8 ; 4 uses
  %i.ad = add i64 %i.aa, %.sroa.02.0.copyload.i   ; 2 uses
  %i.ae = trunc i64 %1 to i1
  br i1 %i.ae, label %bb.b, label %_ZN2v88internal24TorqueGeneratedScopeInfoINS0_9ScopeInfoENS0_10HeapObjectEE26set_inferred_function_nameENS0_6TaggedINS0_5UnionIJNS0_6StringENS0_9UndefinedEEEEEENS0_16WriteBarrierModeE.exit

bb.b:                                             ; preds = %bb.a
  %i.af = and i64 %.sroa.02.0.copyload.i, -262144
  %i.ag = inttoptr i64 %i.af to ptr
  %i.ah = load i64, ptr %i.ag, align 262144       ; 2 uses
  %i.ai = and i64 %i.ah, 32
  %.not.i.i.i = icmp eq i64 %i.ai, 0
  %i.aj = and i64 %i.ah, 25
  %.not37.i.i.i = icmp eq i64 %i.aj, 0
  br i1 %.not37.i.i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.ak = and i64 %1, -262144
  %i.al = inttoptr i64 %i.ak to ptr
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.al, align 262144
  %i.am = and i64 %.sroa.0.0.copyload.i.i.i.i.i, 25
  %.not38.i.i.i = icmp eq i64 %i.am, 0
  br i1 %.not38.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %.sroa.02.0.copyload.i, i64 noundef %i.ad, i64 %1) #17
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  br i1 %.not.i.i.i, label %_ZN2v88internal24TorqueGeneratedScopeInfoINS0_9ScopeInfoENS0_10HeapObjectEE26set_inferred_function_nameENS0_6TaggedINS0_5UnionIJNS0_6StringENS0_9UndefinedEEEEEENS0_16WriteBarrierModeE.exit, label %bb.f, !prof !6

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %.sroa.02.0.copyload.i, i64 %i.ad, i64 %1) #17
  br label %_ZN2v88internal24TorqueGeneratedScopeInfoINS0_9ScopeInfoENS0_10HeapObjectEE26set_inferred_function_nameENS0_6TaggedINS0_5UnionIJNS0_6StringENS0_9UndefinedEEEEEENS0_16WriteBarrierModeE.exit

_ZN2v88internal24TorqueGeneratedScopeInfoINS0_9ScopeInfoENS0_10HeapObjectEE26set_inferred_function_nameENS0_6TaggedINS0_5UnionIJNS0_6StringENS0_9UndefinedEEEEEENS0_16WriteBarrierModeE.exit: ; preds = %bb.a, %bb.e, %bb.f
  ret void
}

; Function Attrs: mustprogress norecurse nounwind memory(readwrite, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZNK2v88internal9ScopeInfo17HasOuterScopeInfoEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = add i64 %i.a, 7
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load atomic volatile i32, ptr %i.c monotonic, align 4
  %i.e = and i32 %i.d, 4194304
  %i.f = icmp ne i32 %i.e, 0
  ret i1 %i.f
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal9ScopeInfo23SetIsDebugEvaluateScopeEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = add i64 %i.a, 7
  %i.c = inttoptr i64 %i.b to ptr                 ; 3 uses
  %i.d = load atomic volatile i32, ptr %i.c monotonic, align 4
  %i.e = and i32 %i.d, 536870912
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.c, label %bb.b, !prof !6

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #18
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = load atomic volatile i32, ptr %i.c monotonic, align 4
  %i.g = or i32 %i.f, 8388608
  store atomic volatile i32 %i.g, ptr %i.c monotonic, align 4
  ret void
}

; Function Attrs: mustprogress norecurse nounwind memory(readwrite, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZNK2v88internal9ScopeInfo32PrivateNameLookupSkipsOuterClassEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = add i64 %i.a, 7
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load atomic volatile i32, ptr %i.c monotonic, align 4
  %i.e = and i32 %i.d, 33554432
  %i.f = icmp ne i32 %i.e, 0
  ret i1 %i.f
}

; Function Attrs: mustprogress norecurse nounwind memory(readwrite, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZNK2v88internal9ScopeInfo15IsReplModeScopeEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = add i64 %i.a, 7
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load atomic volatile i32, ptr %i.c monotonic, align 4
  %i.e = and i32 %i.d, 15
  %i.f = icmp eq i32 %i.e, 1
  ret i1 %i.f
}

; Function Attrs: mustprogress norecurse nounwind memory(readwrite, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZNK2v88internal9ScopeInfo10HasContextEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = tail call noundef i32 @_ZNK2v88internal9ScopeInfo13ContextLengthEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %i.b = icmp sgt i32 %i.a, 0
  ret i1 %i.b
}

; Function Attrs: mustprogress norecurse nounwind memory(readwrite, target_mem: none) uwtable
define hidden i64 @_ZNK2v88internal9ScopeInfo20InferredFunctionNameEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %0, align 8 ; 3 uses
  %i.a = add i64 %.sroa.0.0.copyload.i.i.i, 7
  %i.b = inttoptr i64 %i.a to ptr                 ; 4 uses
  %i.c = load atomic volatile i32, ptr %i.b monotonic, align 4, !noalias !249
  %i.d = and i32 %i.c, 15
  %i.e = icmp eq i32 %i.d, 5
  %i.f = select i1 %i.e, i64 56, i64 48
  %i.g = add i64 %.sroa.0.0.copyload.i.i.i, 23
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = load i64, ptr %i.h, align 8, !noalias !250 ; 3 uses
  %1 = icmp slt i64 %i.i, 322122547200
  %i.j = ashr i64 %i.i, 29
  %i.k = and i64 %i.j, -8                         ; 2 uses
  %2 = select i1 %1, i64 %i.k, i64 322122547200
  %i.l = icmp sgt i64 %i.i, 322122547199
  %i.m = select i1 %i.l, i64 8, i64 0
  %3 = add nuw nsw i64 %i.m, %i.f
  %i.n = add nsw i64 %3, %i.k
  %i.o = add nsw i64 %i.n, %2
  %i.p = load atomic volatile i32, ptr %i.b monotonic, align 4, !noalias !251
  %i.q = lshr i32 %i.p, 7
  %i.r = and i32 %i.q, 8
  %i.s = zext nneg i32 %i.r to i64
  %i.t = add nsw i64 %i.o, %i.s
  %i.u = load atomic volatile i32, ptr %i.b monotonic, align 4, !noalias !252
  %i.v = and i32 %i.u, 12288
  %.not.i.not.i.i.i.i = icmp eq i32 %i.v, 0
  %i.w = select i1 %.not.i.not.i.i.i.i, i64 0, i64 16
  %i.x = add nsw i64 %i.t, %i.w
  %i.y = load atomic volatile i32, ptr %i.b monotonic, align 4, !noalias !253 ; 0 uses
  %i.z = add i64 %.sroa.0.0.copyload.i.i.i, -1
  %sext.i.i = shl i64 %i.x, 32
  %i.aa = ashr exact i64 %sext.i.i, 32
  %i.ab = add i64 %i.z, %i.aa
  %i.ac = inttoptr i64 %i.ab to ptr
  %i.ad = load i64, ptr %i.ac, align 8
  ret i64 %i.ad
}

; Function Attrs: mustprogress norecurse nounwind memory(readwrite, target_mem: none) uwtable
define hidden i64 @_ZNK2v88internal9ScopeInfo17FunctionDebugNameEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8                ; 3 uses
  %i.b = add i64 %i.a, 7
  %i.c = inttoptr i64 %i.b to ptr                 ; 9 uses
  %i.d = load atomic volatile i32, ptr %i.c monotonic, align 4
  %i.e = and i32 %i.d, 12288
  %.not41 = icmp eq i32 %i.e, 0
  br i1 %.not41, label %.sink.split, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load atomic volatile i32, ptr %i.c monotonic, align 4, !noalias !280
  %i.g = and i32 %i.f, 15
  %i.h = icmp eq i32 %i.g, 5
  %i.i = select i1 %i.h, i64 56, i64 48
  %i.j = add i64 %i.a, 23
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = load i64, ptr %i.k, align 8, !noalias !281 ; 3 uses
  %1 = icmp slt i64 %i.l, 322122547200
  %i.m = ashr i64 %i.l, 29
  %i.n = and i64 %i.m, -8                         ; 2 uses
  %2 = select i1 %1, i64 %i.n, i64 322122547200   ; 2 uses
  %i.o = icmp sgt i64 %i.l, 322122547199
  %i.p = select i1 %i.o, i64 8, i64 0
  %3 = add nsw i64 %i.n, %i.p                     ; 2 uses
  %i.q = add nsw i64 %3, %i.i
  %i.r = add nsw i64 %i.q, %2
  %i.s = load atomic volatile i32, ptr %i.c monotonic, align 4, !noalias !282
  %i.t = lshr i32 %i.s, 7
  %i.u = and i32 %i.t, 8
  %i.v = load atomic volatile i32, ptr %i.c monotonic, align 4, !noalias !283 ; 0 uses
  %i.w = trunc i64 %i.r to i32
  %i.x = add i32 %i.u, %i.w
  %i.y = add i64 %i.a, -1                         ; 2 uses
  %i.z = sext i32 %i.x to i64
  %i.aa = add i64 %i.y, %i.z
  %i.ab = inttoptr i64 %i.aa to ptr
  %i.ac = load i64, ptr %i.ab, align 8            ; 3 uses
  %i.ad = trunc i64 %i.ac to i1
  br i1 %i.ad, label %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit16, label %.critedge

_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit16: ; preds = %bb.b
  %i.ae = add nsw i64 %i.ac, -1
  %i.af = inttoptr i64 %i.ae to ptr               ; 2 uses
  %i.ag = load atomic volatile i64, ptr %i.af monotonic, align 8
  %i.ah = add i64 %i.ag, 11
  %i.ai = inttoptr i64 %i.ah to ptr
  %i.aj = load atomic volatile i16, ptr %i.ai monotonic, align 2
  %i.ak = icmp ult i16 %i.aj, 128
  br i1 %i.ak, label %bb.c, label %.critedge

bb.c:                                             ; preds = %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit16
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 12
  %i.am = load i32, ptr %i.al, align 4
  %.not = icmp eq i32 %i.am, 0
  br i1 %.not, label %.critedge, label %bb.e

.critedge:                                        ; preds = %bb.b, %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit16, %bb.c
  %i.an = load atomic volatile i32, ptr %i.c monotonic, align 4
  %i.ao = and i32 %i.an, 16384
  %.not42 = icmp eq i32 %i.ao, 0
  br i1 %.not42, label %.sink.split, label %bb.d

bb.d:                                             ; preds = %.critedge
  %i.ap = load atomic volatile i32, ptr %i.c monotonic, align 4, !noalias !284
  %i.aq = and i32 %i.ap, 15
  %i.ar = icmp eq i32 %i.aq, 5
  %i.as = select i1 %i.ar, i64 56, i64 48
  %i.at = load atomic volatile i32, ptr %i.c monotonic, align 4, !noalias !285
  %i.au = lshr i32 %i.at, 7
  %i.av = and i32 %i.au, 8
  %i.aw = zext nneg i32 %i.av to i64
  %i.ax = load atomic volatile i32, ptr %i.c monotonic, align 4, !noalias !286
  %i.ay = and i32 %i.ax, 12288
  %.not.i.not.i.i.i.i.i = icmp eq i32 %i.ay, 0
  %i.az = select i1 %.not.i.not.i.i.i.i.i, i64 0, i64 16
  %4 = add nsw i64 %3, %2
  %i.ba = add nsw i64 %4, %i.as
  %i.bb = add nsw i64 %i.ba, %i.aw
  %i.bc = add nsw i64 %i.bb, %i.az
  %i.bd = load atomic volatile i32, ptr %i.c monotonic, align 4, !noalias !287 ; 0 uses
  %sext.i.i.i = shl i64 %i.bc, 32
  %i.be = ashr exact i64 %sext.i.i.i, 32
  %i.bf = add i64 %i.be, %i.y
  %i.bg = inttoptr i64 %i.bf to ptr
  %i.bh = load i64, ptr %i.bg, align 8            ; 3 uses
  %i.bi = trunc i64 %i.bh to i1
  br i1 %i.bi, label %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit, label %.sink.split

_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %bb.d
  %i.bj = add nsw i64 %i.bh, -1
  %i.bk = inttoptr i64 %i.bj to ptr
  %i.bl = load atomic volatile i64, ptr %i.bk monotonic, align 8
  %i.bm = add i64 %i.bl, 11
  %i.bn = inttoptr i64 %i.bm to ptr
  %i.bo = load atomic volatile i16, ptr %i.bn monotonic, align 2
  %i.bp = icmp ult i16 %i.bo, 128
  br i1 %i.bp, label %bb.e, label %.sink.split

.sink.split:                                      ; preds = %.critedge, %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit, %bb.d, %bb.a
  %i.bq = load ptr, ptr @_ZN2v88internal12IsolateGroup22default_isolate_group_E, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 10624
  %i.bs = load ptr, ptr %i.br, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 136
  %i.bu = load i64, ptr %i.bt, align 8
  br label %bb.e

bb.e:                                             ; preds = %.sink.split, %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit, %bb.c
  %.sroa.015.1 = phi i64 [ %i.ac, %bb.c ], [ %i.bh, %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit ], [ %i.bu, %.sink.split ]
  ret i64 %.sroa.015.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef i32 @_ZNK2v88internal9ScopeInfo11EndPositionEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #8 align 2 {
bb.a:
  %.sroa.0.0.copyload.i = load i64, ptr %0, align 8
  %i.a = add i64 %.sroa.0.0.copyload.i, 39
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = load i64, ptr %i.b, align 8
  %i.d = lshr i64 %i.c, 32
  %i.e = trunc nuw i64 %i.d to i32
  ret i32 %i.e
}

; Function Attrs: mustprogress norecurse nounwind memory(readwrite, target_mem: none) uwtable
define hidden void @_ZN2v88internal9ScopeInfo15SetPositionInfoEii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #3 align 2 {
bb.a:
  %.sroa.02.0.copyload.i = load i64, ptr %0, align 8
  %i.a = sext i32 %1 to i64
  %i.b = shl nsw i64 %i.a, 32
  %i.c = add i64 %.sroa.02.0.copyload.i, 31
  %i.d = inttoptr i64 %i.c to ptr
  store atomic volatile i64 %i.b, ptr %i.d monotonic, align 8
  %.sroa.02.0.copyload.i2 = load i64, ptr %0, align 8
  %i.e = sext i32 %2 to i64
  %i.f = shl nsw i64 %i.e, 32
  %i.g = add i64 %.sroa.02.0.copyload.i2, 39
  %i.h = inttoptr i64 %i.g to ptr
  store atomic volatile i64 %i.f, ptr %i.h monotonic, align 8
  ret void
}

; Function Attrs: mustprogress norecurse nounwind memory(readwrite, target_mem: none) uwtable
define hidden i64 @_ZNK2v88internal9ScopeInfo14OuterScopeInfoEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %0, align 8 ; 3 uses
  %i.a = add i64 %.sroa.0.0.copyload.i.i.i, 7
  %i.b = inttoptr i64 %i.a to ptr                 ; 5 uses
  %i.c = load atomic volatile i32, ptr %i.b monotonic, align 4, !noalias !304
  %i.d = and i32 %i.c, 15
  %i.e = icmp eq i32 %i.d, 5
  %i.f = select i1 %i.e, i64 56, i64 48
  %i.g = add i64 %.sroa.0.0.copyload.i.i.i, 23
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = load i64, ptr %i.h, align 8, !noalias !305 ; 3 uses
  %1 = icmp slt i64 %i.i, 322122547200
  %i.j = ashr i64 %i.i, 29
  %i.k = and i64 %i.j, -8                         ; 2 uses
  %2 = select i1 %1, i64 %i.k, i64 322122547200
  %i.l = icmp sgt i64 %i.i, 322122547199
  %i.m = select i1 %i.l, i64 8, i64 0
  %3 = add nuw nsw i64 %i.m, %i.f
  %i.n = add nsw i64 %3, %i.k
  %i.o = add nsw i64 %i.n, %2
  %i.p = load atomic volatile i32, ptr %i.b monotonic, align 4, !noalias !306
  %i.q = lshr i32 %i.p, 7
  %i.r = and i32 %i.q, 8
  %i.s = zext nneg i32 %i.r to i64
  %i.t = add nsw i64 %i.o, %i.s
  %i.u = load atomic volatile i32, ptr %i.b monotonic, align 4, !noalias !307
  %i.v = and i32 %i.u, 12288
  %.not.i.not.i.i.i.i.i = icmp eq i32 %i.v, 0
  %i.w = select i1 %.not.i.not.i.i.i.i.i, i64 0, i64 16
  %i.x = add nsw i64 %i.t, %i.w
  %i.y = load atomic volatile i32, ptr %i.b monotonic, align 4, !noalias !308
  %i.z = lshr i32 %i.y, 11
  %i.aa = and i32 %i.z, 8
  %i.ab = load atomic volatile i32, ptr %i.b monotonic, align 4, !noalias !309 ; 0 uses
  %i.ac = trunc i64 %i.x to i32
  %i.ad = add i32 %i.aa, %i.ac
  %i.ae = add i64 %.sroa.0.0.copyload.i.i.i, -1
  %i.af = sext i32 %i.ad to i64
  %i.ag = add i64 %i.ae, %i.af
  %i.ah = inttoptr i64 %i.ag to ptr
  %i.ai = load i64, ptr %i.ah, align 8
  ret i64 %i.ai
}

; Function Attrs: mustprogress norecurse nounwind memory(readwrite, target_mem: none) uwtable
define hidden i64 @_ZNK2v88internal9ScopeInfo20ModuleDescriptorInfoEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %0, align 8 ; 3 uses
  %i.a = add i64 %.sroa.0.0.copyload.i.i.i, 7
  %i.b = inttoptr i64 %i.a to ptr                 ; 6 uses
  %i.c = load atomic volatile i32, ptr %i.b monotonic, align 4, !noalias !328
  %i.d = and i32 %i.c, 15
  %i.e = icmp eq i32 %i.d, 5
  %i.f = select i1 %i.e, i64 56, i64 48
  %i.g = add i64 %.sroa.0.0.copyload.i.i.i, 23
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = load i64, ptr %i.h, align 8, !noalias !329 ; 3 uses
  %1 = icmp slt i64 %i.i, 322122547200
  %i.j = ashr i64 %i.i, 29
  %i.k = and i64 %i.j, -8                         ; 2 uses
  %2 = select i1 %1, i64 %i.k, i64 322122547200
  %i.l = icmp sgt i64 %i.i, 322122547199
  %i.m = select i1 %i.l, i64 8, i64 0
  %3 = add nuw nsw i64 %i.m, %i.f
  %i.n = add nsw i64 %3, %i.k
  %i.o = add nsw i64 %i.n, %2
  %i.p = load atomic volatile i32, ptr %i.b monotonic, align 4, !noalias !330
  %i.q = lshr i32 %i.p, 7
  %i.r = and i32 %i.q, 8
  %i.s = zext nneg i32 %i.r to i64
  %i.t = add nsw i64 %i.o, %i.s
  %i.u = load atomic volatile i32, ptr %i.b monotonic, align 4, !noalias !331
  %i.v = and i32 %i.u, 12288
  %.not.i.not.i.i.i.i.i.i = icmp eq i32 %i.v, 0
  %i.w = select i1 %.not.i.not.i.i.i.i.i.i, i64 0, i64 16
  %i.x = add nsw i64 %i.t, %i.w
  %i.y = load atomic volatile i32, ptr %i.b monotonic, align 4, !noalias !332
  %i.z = lshr i32 %i.y, 11
  %i.aa = and i32 %i.z, 8
  %i.ab = load atomic volatile i32, ptr %i.b monotonic, align 4, !noalias !333
  %i.ac = lshr i32 %i.ab, 19
  %i.ad = and i32 %i.ac, 8
  %i.ae = load atomic volatile i32, ptr %i.b monotonic, align 4, !noalias !334 ; 0 uses
  %i.af = trunc i64 %i.x to i32
  %i.ag = add nuw nsw i32 %i.ad, %i.aa
  %i.ah = add i32 %i.ag, %i.af
  %i.ai = add i64 %.sroa.0.0.copyload.i.i.i, -1
  %i.aj = sext i32 %i.ah to i64
  %i.ak = add i64 %i.ai, %i.aj
  %i.al = inttoptr i64 %i.ak to ptr
  %i.am = load i64, ptr %i.al, align 8
  ret i64 %i.am
}

; Function Attrs: mustprogress norecurse nounwind memory(readwrite, target_mem: none) uwtable
define hidden i64 @_ZNK2v88internal9ScopeInfo23ContextInlinedLocalNameEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, i32 noundef %1) local_unnamed_addr #3 align 2 {
bb.a:
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %0, align 8 ; 2 uses
  %i.a = add i64 %.sroa.0.0.copyload.i.i.i, 7
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = load atomic volatile i32, ptr %i.b monotonic, align 4, !noalias !339
  %i.d = and i32 %i.c, 15
  %i.e = icmp eq i32 %i.d, 5
  %i.f = select i1 %i.e, i32 56, i32 48
  %i.g = shl nsw i32 %1, 3
  %i.h = add nsw i32 %i.f, %i.g
  %i.i = add i64 %.sroa.0.0.copyload.i.i.i, -1
  %i.j = sext i32 %i.h to i64
  %i.k = add i64 %i.i, %i.j
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = load i64, ptr %i.l, align 8
  ret i64 %i.m
}

; Function Attrs: mustprogress norecurse nounwind memory(readwrite, target_mem: none) uwtable
define hidden i64 @_ZNK2v88internal9ScopeInfo23ContextInlinedLocalNameENS0_16PtrComprCageBaseEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, i32 noundef %1) local_unnamed_addr #3 align 2 {
bb.a:
  %.sroa.0.0.copyload.i.i = load i64, ptr %0, align 8 ; 2 uses
  %i.a = add i64 %.sroa.0.0.copyload.i.i, 7
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = load atomic volatile i32, ptr %i.b monotonic, align 4, !noalias !344
  %i.d = and i32 %i.c, 15
  %i.e = icmp eq i32 %i.d, 5
  %i.f = select i1 %i.e, i32 56, i32 48
  %i.g = shl nsw i32 %1, 3
  %i.h = add nsw i32 %i.f, %i.g
  %i.i = add i64 %.sroa.0.0.copyload.i.i, -1
  %i.j = sext i32 %i.h to i64
  %i.k = add i64 %i.i, %i.j
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = load i64, ptr %i.l, align 8
  ret i64 %i.m
}

; Function Attrs: mustprogress norecurse nounwind memory(readwrite, target_mem: none) uwtable
define hidden noundef zeroext range(i8 0, 16) i8 @_ZNK2v88internal9ScopeInfo16ContextLocalModeEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, i32 noundef %1) local_unnamed_addr #3 align 2 {
bb.a:
  %.sroa.0.0.copyload.i.i = load i64, ptr %0, align 8 ; 3 uses
  %i.a = add i64 %.sroa.0.0.copyload.i.i, 7
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = load atomic volatile i32, ptr %i.b monotonic, align 4, !noalias !353
  %i.d = and i32 %i.c, 15
  %i.e = icmp eq i32 %i.d, 5
  %i.f = select i1 %i.e, i64 56, i64 48
  %i.g = add i64 %.sroa.0.0.copyload.i.i, 23
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = load i64, ptr %i.h, align 8, !noalias !354 ; 3 uses
  %2 = icmp slt i64 %i.i, 322122547200
  %i.j = lshr i64 %i.i, 29
  %i.k = and i64 %i.j, 4294967288
  %3 = select i1 %2, i64 %i.k, i64 322122547200
  %i.l = icmp sgt i64 %i.i, 322122547199
  %i.m = select i1 %i.l, i64 8, i64 0
  %4 = add nuw nsw i64 %i.m, %i.f
  %i.n = add nuw nsw i64 %4, %3
  %i.o = trunc i64 %i.n to i32
  %i.p = shl nsw i32 %1, 3
  %i.q = add nsw i32 %i.p, %i.o
  %i.r = add i64 %.sroa.0.0.copyload.i.i, -1
  %i.s = sext i32 %i.q to i64
  %i.t = add i64 %i.r, %i.s
  %i.u = inttoptr i64 %i.t to ptr
  %i.v = load i64, ptr %i.u, align 8
  %i.w = lshr i64 %i.v, 32
  %i.x = trunc i64 %i.w to i8
  %i.y = and i8 %i.x, 15
  ret i8 %i.y
}

; Function Attrs: mustprogress norecurse nounwind memory(readwrite, target_mem: none) uwtable
define hidden noundef zeroext range(i8 0, 2) i8 @_ZNK2v88internal9ScopeInfo24ContextLocalIsStaticFlagEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, i32 noundef %1) local_unnamed_addr #3 align 2 {
bb.a:
  %.sroa.0.0.copyload.i.i = load i64, ptr %0, align 8 ; 3 uses
  %i.a = add i64 %.sroa.0.0.copyload.i.i, 7
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = load atomic volatile i32, ptr %i.b monotonic, align 4, !noalias !363
  %i.d = and i32 %i.c, 15
  %i.e = icmp eq i32 %i.d, 5
  %i.f = select i1 %i.e, i64 56, i64 48
  %i.g = add i64 %.sroa.0.0.copyload.i.i, 23
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = load i64, ptr %i.h, align 8, !noalias !364 ; 3 uses
  %2 = icmp slt i64 %i.i, 322122547200
  %i.j = lshr i64 %i.i, 29
  %i.k = and i64 %i.j, 4294967288
  %3 = select i1 %2, i64 %i.k, i64 322122547200
  %i.l = icmp sgt i64 %i.i, 322122547199
  %i.m = select i1 %i.l, i64 8, i64 0
  %4 = add nuw nsw i64 %i.m, %i.f
  %i.n = add nuw nsw i64 %4, %3
  %i.o = trunc i64 %i.n to i32
  %i.p = shl nsw i32 %1, 3
  %i.q = add nsw i32 %i.p, %i.o
  %i.r = add i64 %.sroa.0.0.copyload.i.i, -1
  %i.s = sext i32 %i.q to i64
  %i.t = add i64 %i.r, %i.s
  %i.u = inttoptr i64 %i.t to ptr
  %i.v = load i64, ptr %i.u, align 8
  %sum.shift = lshr i64 %i.v, 54
  %i.w = trunc i64 %sum.shift to i8
  %i.x = and i8 %i.w, 1
  ret i8 %i.x
}

; Function Attrs: mustprogress norecurse nounwind memory(readwrite, target_mem: none) uwtable
define hidden noundef zeroext range(i8 0, 2) i8 @_ZNK2v88internal9ScopeInfo20ContextLocalInitFlagEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, i32 noundef %1) local_unnamed_addr #3 align 2 {
bb.a:
  %.sroa.0.0.copyload.i.i = load i64, ptr %0, align 8 ; 3 uses
  %i.a = add i64 %.sroa.0.0.copyload.i.i, 7
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = load atomic volatile i32, ptr %i.b monotonic, align 4, !noalias !373
  %i.d = and i32 %i.c, 15
  %i.e = icmp eq i32 %i.d, 5
  %i.f = select i1 %i.e, i64 56, i64 48
  %i.g = add i64 %.sroa.0.0.copyload.i.i, 23
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = load i64, ptr %i.h, align 8, !noalias !374 ; 3 uses
  %2 = icmp slt i64 %i.i, 322122547200
  %i.j = lshr i64 %i.i, 29
  %i.k = and i64 %i.j, 4294967288
  %3 = select i1 %2, i64 %i.k, i64 322122547200
  %i.l = icmp sgt i64 %i.i, 322122547199
  %i.m = select i1 %i.l, i64 8, i64 0
  %4 = add nuw nsw i64 %i.m, %i.f
  %i.n = add nuw nsw i64 %4, %3
  %i.o = trunc i64 %i.n to i32
  %i.p = shl nsw i32 %1, 3
  %i.q = add nsw i32 %i.p, %i.o
  %i.r = add i64 %.sroa.0.0.copyload.i.i, -1
  %i.s = sext i32 %i.q to i64
  %i.t = add i64 %i.r, %i.s
  %i.u = inttoptr i64 %i.t to ptr
  %i.v = load i64, ptr %i.u, align 8
  %sum.shift = lshr i64 %i.v, 36
  %i.w = trunc i64 %sum.shift to i8
  %i.x = and i8 %i.w, 1
  ret i8 %i.x
}

; Function Attrs: mustprogress norecurse nounwind memory(readwrite, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZNK2v88internal9ScopeInfo23ContextLocalIsParameterEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, i32 noundef %1) local_unnamed_addr #3 align 2 {
bb.a:
  %.sroa.0.0.copyload.i.i = load i64, ptr %0, align 8 ; 3 uses
  %i.a = add i64 %.sroa.0.0.copyload.i.i, 7
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = load atomic volatile i32, ptr %i.b monotonic, align 4, !noalias !383
  %i.d = and i32 %i.c, 15
  %i.e = icmp eq i32 %i.d, 5
  %i.f = select i1 %i.e, i64 56, i64 48
  %i.g = add i64 %.sroa.0.0.copyload.i.i, 23
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = load i64, ptr %i.h, align 8, !noalias !384 ; 3 uses
  %2 = icmp slt i64 %i.i, 322122547200
  %i.j = lshr i64 %i.i, 29
  %i.k = and i64 %i.j, 4294967288
  %3 = select i1 %2, i64 %i.k, i64 322122547200
  %i.l = icmp sgt i64 %i.i, 322122547199
  %i.m = select i1 %i.l, i64 8, i64 0
  %4 = add nuw nsw i64 %i.m, %i.f
  %i.n = add nuw nsw i64 %4, %3
  %i.o = trunc i64 %i.n to i32
  %i.p = shl nsw i32 %1, 3
  %i.q = add nsw i32 %i.p, %i.o
  %i.r = add i64 %.sroa.0.0.copyload.i.i, -1
  %i.s = sext i32 %i.q to i64
  %i.t = add i64 %i.r, %i.s
  %i.u = inttoptr i64 %i.t to ptr
  %i.v = load i64, ptr %i.u, align 8
  %i.w = and i64 %i.v, 18014123631575040
  %i.x = icmp ne i64 %i.w, 18014123631575040
  ret i1 %i.x
}

; Function Attrs: mustprogress norecurse nounwind memory(readwrite, target_mem: none) uwtable
define hidden noundef range(i32 0, 65536) i32 @_ZNK2v88internal9ScopeInfo27ContextLocalParameterNumberEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, i32 noundef %1) local_unnamed_addr #3 align 2 {
bb.a:
  %.sroa.0.0.copyload.i.i = load i64, ptr %0, align 8 ; 3 uses
  %i.a = add i64 %.sroa.0.0.copyload.i.i, 7
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = load atomic volatile i32, ptr %i.b monotonic, align 4, !noalias !393
  %i.d = and i32 %i.c, 15
  %i.e = icmp eq i32 %i.d, 5
  %i.f = select i1 %i.e, i64 56, i64 48
  %i.g = add i64 %.sroa.0.0.copyload.i.i, 23
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = load i64, ptr %i.h, align 8, !noalias !394 ; 3 uses
  %2 = icmp slt i64 %i.i, 322122547200
  %i.j = lshr i64 %i.i, 29
  %i.k = and i64 %i.j, 4294967288
  %3 = select i1 %2, i64 %i.k, i64 322122547200
  %i.l = icmp sgt i64 %i.i, 322122547199
  %i.m = select i1 %i.l, i64 8, i64 0
  %4 = add nuw nsw i64 %i.m, %i.f
  %i.n = add nuw nsw i64 %4, %3
  %i.o = trunc i64 %i.n to i32
  %i.p = shl nsw i32 %1, 3
  %i.q = add nsw i32 %i.p, %i.o
  %i.r = add i64 %.sroa.0.0.copyload.i.i, -1
  %i.s = sext i32 %i.q to i64
  %i.t = add i64 %i.r, %i.s
  %i.u = inttoptr i64 %i.t to ptr
  %i.v = load i64, ptr %i.u, align 8
  %sum.shift = lshr i64 %i.v, 38
  %i.w = trunc nuw nsw i64 %sum.shift to i32
  %i.x = and i32 %i.w, 65535
  ret i32 %i.x
}

; Function Attrs: mustprogress norecurse nounwind memory(readwrite, target_mem: none) uwtable
define hidden noundef zeroext range(i8 0, 2) i8 @_ZNK2v88internal9ScopeInfo29ContextLocalMaybeAssignedFlagEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, i32 noundef %1) local_unnamed_addr #3 align 2 {
bb.a:
  %.sroa.0.0.copyload.i.i = load i64, ptr %0, align 8 ; 3 uses
  %i.a = add i64 %.sroa.0.0.copyload.i.i, 7
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = load atomic volatile i32, ptr %i.b monotonic, align 4, !noalias !403
  %i.d = and i32 %i.c, 15
  %i.e = icmp eq i32 %i.d, 5
  %i.f = select i1 %i.e, i64 56, i64 48
  %i.g = add i64 %.sroa.0.0.copyload.i.i, 23
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = load i64, ptr %i.h, align 8, !noalias !404 ; 3 uses
  %2 = icmp slt i64 %i.i, 322122547200
  %i.j = lshr i64 %i.i, 29
  %i.k = and i64 %i.j, 4294967288
  %3 = select i1 %2, i64 %i.k, i64 322122547200
  %i.l = icmp sgt i64 %i.i, 322122547199
  %i.m = select i1 %i.l, i64 8, i64 0
  %4 = add nuw nsw i64 %i.m, %i.f
  %i.n = add nuw nsw i64 %4, %3
  %i.o = trunc i64 %i.n to i32
  %i.p = shl nsw i32 %1, 3
  %i.q = add nsw i32 %i.p, %i.o
  %i.r = add i64 %.sroa.0.0.copyload.i.i, -1
  %i.s = sext i32 %i.q to i64
  %i.t = add i64 %i.r, %i.s
  %i.u = inttoptr i64 %i.t to ptr
  %i.v = load i64, ptr %i.u, align 8
  %sum.shift = lshr i64 %i.v, 37
  %i.w = trunc i64 %sum.shift to i8
  %i.x = and i8 %i.w, 1
  ret i8 %i.x
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN2v88internal9ScopeInfo19VariableIsSyntheticENS0_6TaggedINS0_6StringEEE(i64 %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.v8::internal::SharedStringAccessGuardIfNeeded", align 8 ; 8 uses
  %2 = alloca %"class.v8::internal::SharedStringAccessGuardIfNeeded", align 8 ; 8 uses
  %i.a = add i64 %0, -1                           ; 2 uses
  %i.b = inttoptr i64 %i.a to ptr                 ; 23 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.d = load i32, ptr %i.c, align 4
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %_ZNK2v88internal6String6EqualsENS0_6TaggedIS1_EE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false), !alias.scope !411
  %i.f = load atomic volatile i64, ptr %i.b acquire, align 8
  %i.g = add i64 %i.f, 11
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = load atomic volatile i16, ptr %i.h monotonic, align 2
  %i.j = and i16 %i.i, 15
  switch i16 %i.j, label %bb.p [
    i16 8, label %bb.c
    i16 0, label %bb.d
    i16 9, label %bb.e
    i16 1, label %bb.e
    i16 10, label %bb.f
    i16 2, label %bb.j
    i16 11, label %bb.n
    i16 3, label %bb.n
    i16 13, label %bb.o
    i16 5, label %bb.o
  ]

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.l = load i8, ptr %i.k, align 8
  %i.m = zext i8 %i.l to i16
  br label %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIZNKS0_6String7GetImplEjRKNS0_31SharedStringAccessGuardIfNeededEEUlT_E_EEDaNS0_6TaggedIS3_EEOS7_.exit

bb.d:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.o = load i16, ptr %i.n, align 8
  br label %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIZNKS0_6String7GetImplEjRKNS0_31SharedStringAccessGuardIfNeededEEUlT_E_EEDaNS0_6TaggedIS3_EEOS7_.exit

bb.e:                                             ; preds = %bb.b, %bb.b
  %i.p = call noundef zeroext i16 @_ZNK2v88internal10ConsString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE(ptr noundef nonnull align 4 dereferenceable(32) %i.b, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(16) %1) #17
  br label %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIZNKS0_6String7GetImplEjRKNS0_31SharedStringAccessGuardIfNeededEEUlT_E_EEDaNS0_6TaggedIS3_EEOS7_.exit

bb.f:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.r = load i64, ptr %i.q, align 8
  %i.s = inttoptr i64 %i.r to ptr                 ; 6 uses
  %i.t = load atomic volatile i64, ptr %i.b monotonic, align 8
  %i.u = add i64 %i.t, 11
  %i.v = inttoptr i64 %i.u to ptr
  %i.w = load atomic volatile i16, ptr %i.v monotonic, align 2
  %i.x = and i16 %i.w, 16
  %.not.i.i = icmp eq i16 %i.x, 0
  br i1 %.not.i.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = load ptr, ptr %i.s, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = tail call noundef zeroext i1 %i.aa(ptr noundef nonnull align 8 dereferenceable(8) %i.s) #17, !inline_history !407
  br i1 %i.ab, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZNK2v86String29ExternalOneByteStringResource25CheckCachedDataInvariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #17
  %i.ac = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8
  br label %_ZNK2v88internal21ExternalOneByteString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE.exit

bb.i:                                             ; preds = %bb.g, %bb.f
  %i.ae = load ptr, ptr %i.s, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 72
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = tail call noundef ptr %i.ag(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #17, !inline_history !407
  br label %_ZNK2v88internal21ExternalOneByteString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE.exit

_ZNK2v88internal21ExternalOneByteString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE.exit: ; preds = %bb.h, %bb.i
  %.0.i.i = phi ptr [ %i.ad, %bb.h ], [ %i.ah, %bb.i ]
  %i.ai = load i8, ptr %.0.i.i, align 1
  %i.aj = zext i8 %i.ai to i16
  br label %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIZNKS0_6String7GetImplEjRKNS0_31SharedStringAccessGuardIfNeededEEUlT_E_EEDaNS0_6TaggedIS3_EEOS7_.exit

bb.j:                                             ; preds = %bb.b
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.al = load i64, ptr %i.ak, align 8
  %i.am = inttoptr i64 %i.al to ptr               ; 6 uses
  %i.an = load atomic volatile i64, ptr %i.b monotonic, align 8
  %i.ao = add i64 %i.an, 11
  %i.ap = inttoptr i64 %i.ao to ptr
  %i.aq = load atomic volatile i16, ptr %i.ap monotonic, align 2
  %i.ar = and i16 %i.aq, 16
  %.not.i.i3 = icmp eq i16 %i.ar, 0
  br i1 %.not.i.i3, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.as = load ptr, ptr %i.am, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = tail call noundef zeroext i1 %i.au(ptr noundef nonnull align 8 dereferenceable(8) %i.am) #17, !inline_history !408
  br i1 %i.av, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  tail call void @_ZNK2v86String22ExternalStringResource25CheckCachedDataInvariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %i.am) #17
  %i.aw = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8
  br label %_ZNK2v88internal21ExternalTwoByteString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE.exit

bb.m:                                             ; preds = %bb.k, %bb.j
  %i.ay = load ptr, ptr %i.am, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 72
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = tail call noundef ptr %i.ba(ptr noundef nonnull align 8 dereferenceable(16) %i.am) #17, !inline_history !408
  br label %_ZNK2v88internal21ExternalTwoByteString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE.exit

_ZNK2v88internal21ExternalTwoByteString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE.exit: ; preds = %bb.l, %bb.m
  %.0.i.i4 = phi ptr [ %i.ax, %bb.l ], [ %i.bb, %bb.m ]
  %i.bc = load i16, ptr %.0.i.i4, align 2
  br label %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIZNKS0_6String7GetImplEjRKNS0_31SharedStringAccessGuardIfNeededEEUlT_E_EEDaNS0_6TaggedIS3_EEOS7_.exit

bb.n:                                             ; preds = %bb.b, %bb.b
  %i.bd = call noundef zeroext i16 @_ZNK2v88internal12SlicedString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE(ptr noundef nonnull align 4 dereferenceable(32) %i.b, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(16) %1) #17
  br label %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIZNKS0_6String7GetImplEjRKNS0_31SharedStringAccessGuardIfNeededEEUlT_E_EEDaNS0_6TaggedIS3_EEOS7_.exit

bb.o:                                             ; preds = %bb.b, %bb.b
  %i.be = call noundef zeroext i16 @_ZNK2v88internal10ThinString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE(ptr noundef nonnull align 4 dereferenceable(24) %i.b, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(16) %1) #17
  br label %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIZNKS0_6String7GetImplEjRKNS0_31SharedStringAccessGuardIfNeededEEUlT_E_EEDaNS0_6TaggedIS3_EEOS7_.exit

bb.p:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #18
  unreachable

_ZNK2v88internal11StringShape22DispatchToSpecificTypeIZNKS0_6String7GetImplEjRKNS0_31SharedStringAccessGuardIfNeededEEUlT_E_EEDaNS0_6TaggedIS3_EEOS7_.exit: ; preds = %bb.c, %bb.d, %bb.e, %_ZNK2v88internal21ExternalOneByteString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE.exit, %_ZNK2v88internal21ExternalTwoByteString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE.exit, %bb.n, %bb.o
  %.0.i = phi i16 [ %i.m, %bb.c ], [ %i.o, %bb.d ], [ %i.p, %bb.e ], [ %i.aj, %_ZNK2v88internal21ExternalOneByteString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE.exit ], [ %i.bc, %_ZNK2v88internal21ExternalTwoByteString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE.exit ], [ %i.bd, %bb.n ], [ %i.be, %bb.o ]
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.bg = load i8, ptr %i.bf, align 8, !range !8, !noundef !9
  %i.bh = trunc nuw i8 %i.bg to i1
  store i8 0, ptr %i.bf, align 8
  br i1 %i.bh, label %bb.q, label %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit

bb.q:                                             ; preds = %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIZNKS0_6String7GetImplEjRKNS0_31SharedStringAccessGuardIfNeededEEUlT_E_EEDaNS0_6TaggedIS3_EEOS7_.exit
  %i.bi = load ptr, ptr %1, align 8               ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bi, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bi) #17
  br label %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit

_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit: ; preds = %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIZNKS0_6String7GetImplEjRKNS0_31SharedStringAccessGuardIfNeededEEUlT_E_EEDaNS0_6TaggedIS3_EEOS7_.exit, %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  %i.bj = icmp eq i16 %.0.i, 46
  br i1 %i.bj, label %_ZNK2v88internal6String6EqualsENS0_6TaggedIS1_EE.exit, label %bb.s

bb.s:                                             ; preds = %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false), !alias.scope !412
  %i.bk = load atomic volatile i64, ptr %i.b acquire, align 8
  %i.bl = add i64 %i.bk, 11
  %i.bm = inttoptr i64 %i.bl to ptr
  %i.bn = load atomic volatile i16, ptr %i.bm monotonic, align 2
  %i.bo = and i16 %i.bn, 15
  switch i16 %i.bo, label %bb.ag [
    i16 8, label %bb.t
    i16 0, label %bb.u
    i16 9, label %bb.v
    i16 1, label %bb.v
    i16 10, label %bb.w
    i16 2, label %bb.aa
    i16 11, label %bb.ae
    i16 3, label %bb.ae
    i16 13, label %bb.af
    i16 5, label %bb.af
  ]

bb.t:                                             ; preds = %bb.s
  %i.bp = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.bq = load i8, ptr %i.bp, align 8
  %i.br = zext i8 %i.bq to i16
  br label %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIZNKS0_6String7GetImplEjRKNS0_31SharedStringAccessGuardIfNeededEEUlT_E_EEDaNS0_6TaggedIS3_EEOS7_.exit2

bb.u:                                             ; preds = %bb.s
  %i.bs = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.bt = load i16, ptr %i.bs, align 8
  br label %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIZNKS0_6String7GetImplEjRKNS0_31SharedStringAccessGuardIfNeededEEUlT_E_EEDaNS0_6TaggedIS3_EEOS7_.exit2

bb.v:                                             ; preds = %bb.s, %bb.s
  %i.bu = call noundef zeroext i16 @_ZNK2v88internal10ConsString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE(ptr noundef nonnull align 4 dereferenceable(32) %i.b, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(16) %2) #17
  br label %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIZNKS0_6String7GetImplEjRKNS0_31SharedStringAccessGuardIfNeededEEUlT_E_EEDaNS0_6TaggedIS3_EEOS7_.exit2

bb.w:                                             ; preds = %bb.s
  %i.bv = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.bw = load i64, ptr %i.bv, align 8
  %i.bx = inttoptr i64 %i.bw to ptr               ; 6 uses
  %i.by = load atomic volatile i64, ptr %i.b monotonic, align 8
  %i.bz = add i64 %i.by, 11
  %i.ca = inttoptr i64 %i.bz to ptr
  %i.cb = load atomic volatile i16, ptr %i.ca monotonic, align 2
  %i.cc = and i16 %i.cb, 16
  %.not.i.i5 = icmp eq i16 %i.cc, 0
  br i1 %.not.i.i5, label %bb.z, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cd = load ptr, ptr %i.bx, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.cf = load ptr, ptr %i.ce, align 8
  %i.cg = call noundef zeroext i1 %i.cf(ptr noundef nonnull align 8 dereferenceable(8) %i.bx) #17, !inline_history !407
  br i1 %i.cg, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  call void @_ZNK2v86String29ExternalOneByteStringResource25CheckCachedDataInvariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bx) #17
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8
  br label %_ZNK2v88internal21ExternalOneByteString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE.exit7

bb.z:                                             ; preds = %bb.x, %bb.w
  %i.cj = load ptr, ptr %i.bx, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 72
  %i.cl = load ptr, ptr %i.ck, align 8
  %i.cm = call noundef ptr %i.cl(ptr noundef nonnull align 8 dereferenceable(16) %i.bx) #17, !inline_history !407
  br label %_ZNK2v88internal21ExternalOneByteString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE.exit7

_ZNK2v88internal21ExternalOneByteString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE.exit7: ; preds = %bb.y, %bb.z
  %.0.i.i6 = phi ptr [ %i.ci, %bb.y ], [ %i.cm, %bb.z ]
  %i.cn = load i8, ptr %.0.i.i6, align 1
  %i.co = zext i8 %i.cn to i16
  br label %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIZNKS0_6String7GetImplEjRKNS0_31SharedStringAccessGuardIfNeededEEUlT_E_EEDaNS0_6TaggedIS3_EEOS7_.exit2

bb.aa:                                            ; preds = %bb.s
  %i.cp = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.cq = load i64, ptr %i.cp, align 8
  %i.cr = inttoptr i64 %i.cq to ptr               ; 6 uses
  %i.cs = load atomic volatile i64, ptr %i.b monotonic, align 8
  %i.ct = add i64 %i.cs, 11
  %i.cu = inttoptr i64 %i.ct to ptr
  %i.cv = load atomic volatile i16, ptr %i.cu monotonic, align 2
  %i.cw = and i16 %i.cv, 16
  %.not.i.i8 = icmp eq i16 %i.cw, 0
  br i1 %.not.i.i8, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cx = load ptr, ptr %i.cr, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %i.cz = load ptr, ptr %i.cy, align 8
  %i.da = call noundef zeroext i1 %i.cz(ptr noundef nonnull align 8 dereferenceable(8) %i.cr) #17, !inline_history !408
  br i1 %i.da, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  call void @_ZNK2v86String22ExternalStringResource25CheckCachedDataInvariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cr) #17
  %i.db = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %i.dc = load ptr, ptr %i.db, align 8
  br label %_ZNK2v88internal21ExternalTwoByteString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE.exit10

bb.ad:                                            ; preds = %bb.ab, %bb.aa
  %i.dd = load ptr, ptr %i.cr, align 8
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 72
  %i.df = load ptr, ptr %i.de, align 8
  %i.dg = call noundef ptr %i.df(ptr noundef nonnull align 8 dereferenceable(16) %i.cr) #17, !inline_history !408
  br label %_ZNK2v88internal21ExternalTwoByteString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE.exit10

_ZNK2v88internal21ExternalTwoByteString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE.exit10: ; preds = %bb.ac, %bb.ad
  %.0.i.i9 = phi ptr [ %i.dc, %bb.ac ], [ %i.dg, %bb.ad ]
  %i.dh = load i16, ptr %.0.i.i9, align 2
  br label %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIZNKS0_6String7GetImplEjRKNS0_31SharedStringAccessGuardIfNeededEEUlT_E_EEDaNS0_6TaggedIS3_EEOS7_.exit2

bb.ae:                                            ; preds = %bb.s, %bb.s
  %i.di = call noundef zeroext i16 @_ZNK2v88internal12SlicedString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE(ptr noundef nonnull align 4 dereferenceable(32) %i.b, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(16) %2) #17
  br label %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIZNKS0_6String7GetImplEjRKNS0_31SharedStringAccessGuardIfNeededEEUlT_E_EEDaNS0_6TaggedIS3_EEOS7_.exit2

bb.af:                                            ; preds = %bb.s, %bb.s
  %i.dj = call noundef zeroext i16 @_ZNK2v88internal10ThinString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE(ptr noundef nonnull align 4 dereferenceable(24) %i.b, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(16) %2) #17
  br label %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIZNKS0_6String7GetImplEjRKNS0_31SharedStringAccessGuardIfNeededEEUlT_E_EEDaNS0_6TaggedIS3_EEOS7_.exit2

bb.ag:                                            ; preds = %bb.s
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #18
  unreachable

_ZNK2v88internal11StringShape22DispatchToSpecificTypeIZNKS0_6String7GetImplEjRKNS0_31SharedStringAccessGuardIfNeededEEUlT_E_EEDaNS0_6TaggedIS3_EEOS7_.exit2: ; preds = %bb.t, %bb.u, %bb.v, %_ZNK2v88internal21ExternalOneByteString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE.exit7, %_ZNK2v88internal21ExternalTwoByteString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE.exit10, %bb.ae, %bb.af
  %.0.i1 = phi i16 [ %i.br, %bb.t ], [ %i.bt, %bb.u ], [ %i.bu, %bb.v ], [ %i.co, %_ZNK2v88internal21ExternalOneByteString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE.exit7 ], [ %i.dh, %_ZNK2v88internal21ExternalTwoByteString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE.exit10 ], [ %i.di, %bb.ae ], [ %i.dj, %bb.af ]
  %i.dk = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.dl = load i8, ptr %i.dk, align 8, !range !8, !noundef !9
  %i.dm = trunc nuw i8 %i.dl to i1
  store i8 0, ptr %i.dk, align 8
  br i1 %i.dm, label %bb.ah, label %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit12

bb.ah:                                            ; preds = %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIZNKS0_6String7GetImplEjRKNS0_31SharedStringAccessGuardIfNeededEEUlT_E_EEDaNS0_6TaggedIS3_EEOS7_.exit2
  %i.dn = load ptr, ptr %2, align 8               ; 2 uses
  %.not.i.i.i.i.i.i11 = icmp eq ptr %i.dn, null
  br i1 %.not.i.i.i.i.i.i11, label %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit12, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dn) #17
  br label %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit12

_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit12: ; preds = %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIZNKS0_6String7GetImplEjRKNS0_31SharedStringAccessGuardIfNeededEEUlT_E_EEDaNS0_6TaggedIS3_EEOS7_.exit2, %bb.ah, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  %i.do = icmp eq i16 %.0.i1, 35
  br i1 %i.do, label %_ZNK2v88internal6String6EqualsENS0_6TaggedIS1_EE.exit, label %bb.aj

bb.aj:                                            ; preds = %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit12
  %i.dp = load ptr, ptr @_ZN2v88internal12IsolateGroup22default_isolate_group_E, align 8
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 10624
  %i.dr = load ptr, ptr %i.dq, align 8
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 7016
  %i.dt = load i64, ptr %i.ds, align 8            ; 3 uses
  %i.du = or disjoint i64 %i.a, 1
  %i.dv = icmp eq i64 %i.dt, %i.du
  br i1 %i.dv, label %_ZNK2v88internal6String6EqualsENS0_6TaggedIS1_EE.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.dw = load atomic volatile i64, ptr %i.b monotonic, align 8
  %i.dx = add i64 %i.dw, 11
  %i.dy = inttoptr i64 %i.dx to ptr
  %i.dz = load atomic volatile i16, ptr %i.dy monotonic, align 2
  %i.ea = and i16 %i.dz, -96
  %i.eb = icmp eq i16 %i.ea, 0
  br i1 %i.eb, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.ec = add i64 %i.dt, -1
  %i.ed = inttoptr i64 %i.ec to ptr
  %i.ee = load atomic volatile i64, ptr %i.ed monotonic, align 8
  %i.ef = add i64 %i.ee, 11
  %i.eg = inttoptr i64 %i.ef to ptr
  %i.eh = load atomic volatile i16, ptr %i.eg monotonic, align 2
  %i.ei = and i16 %i.eh, -96
  %i.ej = icmp eq i16 %i.ei, 0
  br i1 %i.ej, label %_ZNK2v88internal6String6EqualsENS0_6TaggedIS1_EE.exit, label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.ek = call noundef zeroext i1 @_ZNK2v88internal6String10SlowEqualsENS0_6TaggedIS1_EE(ptr noundef nonnull align 4 dereferenceable(16) %i.b, i64 %i.dt) #17
  br label %_ZNK2v88internal6String6EqualsENS0_6TaggedIS1_EE.exit

_ZNK2v88internal6String6EqualsENS0_6TaggedIS1_EE.exit: ; preds = %bb.am, %bb.al, %bb.aj, %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit12, %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit, %bb.a
  %i.el = phi i1 [ true, %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit12 ], [ true, %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit ], [ true, %bb.a ], [ %i.ek, %bb.am ], [ true, %bb.aj ], [ false, %bb.al ]
  ret i1 %i.el
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef i32 @_ZNK2v88internal9ScopeInfo19ModuleVariableCountEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #8 align 2 {
bb.a:
  %.sroa.0.0.copyload.i = load i64, ptr %0, align 8
  %i.a = add i64 %.sroa.0.0.copyload.i, 47
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = load i64, ptr %i.b, align 8
  %i.d = lshr i64 %i.c, 32
  %i.e = trunc nuw i64 %i.d to i32
  ret i32 %i.e
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i32 @_ZN2v88internal9ScopeInfo11ModuleIndexENS0_6TaggedINS0_6StringEEEPNS0_12VariableModeEPNS0_18InitializationFlagEPNS0_17MaybeAssignedFlagE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, i64 %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr nofree noundef writeonly captures(address_is_null) %3, ptr nofree noundef writeonly captures(address_is_null) %4) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %.sroa.0.0.copyload.i = load i64, ptr %0, align 8
  %i.b = add i64 %.sroa.0.0.copyload.i, 47
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load i64, ptr %i.c, align 8
  %i.e = lshr i64 %i.d, 32
  %i.f = trunc nuw i64 %i.e to i32                ; 2 uses
  %.not27 = icmp sgt i32 %i.f, 0
  br i1 %.not27, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.g = add i64 %1, -1                           ; 2 uses
  %i.h = inttoptr i64 %i.g to ptr                 ; 2 uses
  %i.i = or disjoint i64 %i.g, 1
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNK2v88internal6String6EqualsENS0_6TaggedIS1_EE.exit.thread20
  %.01528 = phi i32 [ 0, %.lr.ph ], [ %i.by, %_ZNK2v88internal6String6EqualsENS0_6TaggedIS1_EE.exit.thread20 ] ; 3 uses
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %0, align 8 ; 3 uses
  %i.j = add i64 %.sroa.0.0.copyload.i.i.i, 7
  %i.k = inttoptr i64 %i.j to ptr                 ; 8 uses
  %i.l = load atomic volatile i32, ptr %i.k monotonic, align 4, !noalias !436
  %i.m = add i64 %.sroa.0.0.copyload.i.i.i, 23
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = load i64, ptr %i.n, align 8, !noalias !437 ; 3 uses
  %i.p = load atomic volatile i32, ptr %i.k monotonic, align 4, !noalias !438
  %i.q = load atomic volatile i32, ptr %i.k monotonic, align 4, !noalias !439
  %i.r = load atomic volatile i32, ptr %i.k monotonic, align 4, !noalias !440
  %i.s = load atomic volatile i32, ptr %i.k monotonic, align 4, !noalias !441
  %i.t = load atomic volatile i32, ptr %i.k monotonic, align 4, !noalias !442
  %i.u = load atomic volatile i32, ptr %i.k monotonic, align 4, !noalias !443
  %i.v = and i32 %i.u, 15
  %i.w = icmp eq i32 %i.v, 5
  br i1 %i.w, label %bb.c, label %_ZNK2v88internal24TorqueGeneratedScopeInfoINS0_9ScopeInfoENS0_10HeapObjectEE21module_variables_nameEi.exit

bb.c:                                             ; preds = %bb.b
  %i.x = load atomic volatile i32, ptr %i.k monotonic, align 4, !noalias !444
  %i.y = and i32 %i.x, 15
  %i.z = icmp eq i32 %i.y, 5
  br i1 %i.z, label %_ZNK2v88internal24TorqueGeneratedScopeInfoINS0_9ScopeInfoENS0_10HeapObjectEE21module_variables_nameEi.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #18, !noalias !443
  unreachable

_ZNK2v88internal24TorqueGeneratedScopeInfoINS0_9ScopeInfoENS0_10HeapObjectEE21module_variables_nameEi.exit: ; preds = %bb.b, %bb.c
  %i.aa = and i32 %i.t, 15
  %i.ab = icmp eq i32 %i.aa, 5
  %i.ac = select i1 %i.ab, i64 8, i64 0
  %5 = icmp sgt i64 %i.o, 322122547199
  %6 = select i1 %5, i64 8, i64 0
  %i.ad = and i32 %i.l, 15
  %i.ae = icmp eq i32 %i.ad, 5
  %i.af = select i1 %i.ae, i64 56, i64 48
  %7 = add nuw nsw i64 %6, %i.af
  %8 = ashr i64 %i.o, 29
  %9 = and i64 %8, -8                             ; 2 uses
  %i.ag = add nsw i64 %7, %9
  %10 = icmp slt i64 %i.o, 322122547200
  %i.ah = select i1 %10, i64 %9, i64 0
  %i.ai = add nsw i64 %i.ag, %i.ah
  %i.aj = lshr i32 %i.p, 7
  %i.ak = and i32 %i.aj, 8
  %i.al = zext nneg i32 %i.ak to i64
  %i.am = add nsw i64 %i.ai, %i.al
  %i.an = and i32 %i.q, 12288
  %.not.i.not.i.i.i.i.i.i.i = icmp eq i32 %i.an, 0
  %i.ao = select i1 %.not.i.not.i.i.i.i.i.i.i, i64 0, i64 16
  %i.ap = add nsw i64 %i.am, %i.ao
  %i.aq = lshr i32 %i.r, 11
  %i.ar = and i32 %i.aq, 8
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = add nsw i64 %i.ap, %i.as
  %i.au = lshr i32 %i.s, 19
  %i.av = and i32 %i.au, 8
  %i.aw = zext nneg i32 %i.av to i64
  %i.ax = add nsw i64 %i.at, %i.aw
  %i.ay = add nsw i64 %i.ax, %i.ac
  %i.az = trunc i64 %i.ay to i32
  %i.ba = mul nuw nsw i32 %.01528, 24
  %i.bb = add nsw i32 %i.ba, %i.az
  %i.bc = add i64 %.sroa.0.0.copyload.i.i.i, -1
  %i.bd = sext i32 %i.bb to i64
  %i.be = add i64 %i.bc, %i.bd
  %i.bf = inttoptr i64 %i.be to ptr
  %i.bg = load i64, ptr %i.bf, align 8            ; 3 uses
  %i.bh = icmp eq i64 %i.bg, %i.i
  br i1 %i.bh, label %_ZNK2v88internal6String6EqualsENS0_6TaggedIS1_EE.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZNK2v88internal24TorqueGeneratedScopeInfoINS0_9ScopeInfoENS0_10HeapObjectEE21module_variables_nameEi.exit
  %i.bi = load atomic volatile i64, ptr %i.h monotonic, align 8
  %i.bj = add i64 %i.bi, 11
  %i.bk = inttoptr i64 %i.bj to ptr
  %i.bl = load atomic volatile i16, ptr %i.bk monotonic, align 2
  %i.bm = and i16 %i.bl, -96
  %i.bn = icmp eq i16 %i.bm, 0
  br i1 %i.bn, label %bb.f, label %_ZNK2v88internal6String6EqualsENS0_6TaggedIS1_EE.exit

bb.f:                                             ; preds = %bb.e
  %i.bo = add i64 %i.bg, -1
  %i.bp = inttoptr i64 %i.bo to ptr
  %i.bq = load atomic volatile i64, ptr %i.bp monotonic, align 8
  %i.br = add i64 %i.bq, 11
  %i.bs = inttoptr i64 %i.br to ptr
  %i.bt = load atomic volatile i16, ptr %i.bs monotonic, align 2
  %i.bu = and i16 %i.bt, -96
  %i.bv = icmp eq i16 %i.bu, 0
  br i1 %i.bv, label %_ZNK2v88internal6String6EqualsENS0_6TaggedIS1_EE.exit.thread20, label %_ZNK2v88internal6String6EqualsENS0_6TaggedIS1_EE.exit

_ZNK2v88internal6String6EqualsENS0_6TaggedIS1_EE.exit: ; preds = %bb.e, %bb.f
  %i.bw = tail call noundef zeroext i1 @_ZNK2v88internal6String10SlowEqualsENS0_6TaggedIS1_EE(ptr noundef nonnull align 4 dereferenceable(16) %i.h, i64 %i.bg) #17
  br i1 %i.bw, label %_ZNK2v88internal6String6EqualsENS0_6TaggedIS1_EE.exit.thread, label %_ZNK2v88internal6String6EqualsENS0_6TaggedIS1_EE.exit.thread20

_ZNK2v88internal6String6EqualsENS0_6TaggedIS1_EE.exit.thread: ; preds = %_ZNK2v88internal24TorqueGeneratedScopeInfoINS0_9ScopeInfoENS0_10HeapObjectEE21module_variables_nameEi.exit, %_ZNK2v88internal6String6EqualsENS0_6TaggedIS1_EE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  call void @_ZN2v88internal9ScopeInfo14ModuleVariableEiPNS0_6TaggedINS0_6StringEEEPiPNS0_12VariableModeEPNS0_18InitializationFlagEPNS0_17MaybeAssignedFlagE(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %.01528, ptr noundef null, ptr noundef nonnull %i.a, ptr noundef %2, ptr noundef %3, ptr noundef %4)
  %i.bx = load i32, ptr %i.a, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %.loopexit

_ZNK2v88internal6String6EqualsENS0_6TaggedIS1_EE.exit.thread20: ; preds = %bb.f, %_ZNK2v88internal6String6EqualsENS0_6TaggedIS1_EE.exit
  %i.by = add nuw nsw i32 %.01528, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.by, %i.f
  br i1 %exitcond.not, label %.loopexit, label %bb.b, !llvm.loop !435

.loopexit:                                        ; preds = %_ZNK2v88internal6String6EqualsENS0_6TaggedIS1_EE.exit.thread20, %bb.a, %_ZNK2v88internal6String6EqualsENS0_6TaggedIS1_EE.exit.thread
  %spec.select = phi i32 [ %i.bx, %_ZNK2v88internal6String6EqualsENS0_6TaggedIS1_EE.exit.thread ], [ 0, %bb.a ], [ 0, %_ZNK2v88internal6String6EqualsENS0_6TaggedIS1_EE.exit.thread20 ]
  ret i32 %spec.select
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal9ScopeInfo14ModuleVariableEiPNS0_6TaggedINS0_6StringEEEPiPNS0_12VariableModeEPNS0_18InitializationFlagEPNS0_17MaybeAssignedFlagE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, i32 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr nofree noundef writeonly captures(address_is_null) %3, ptr nofree noundef writeonly captures(address_is_null) %4, ptr nofree noundef writeonly captures(address_is_null) %5, ptr nofree noundef writeonly captures(address_is_null) %6) local_unnamed_addr #0 align 2 {
bb.a:
  %.sroa.0.0.copyload.i.i = load i64, ptr %0, align 8 ; 3 uses
  %i.a = add i64 %.sroa.0.0.copyload.i.i, 7
  %i.b = inttoptr i64 %i.a to ptr                 ; 16 uses
  %i.c = load atomic volatile i32, ptr %i.b monotonic, align 4, !noalias !511
  %i.d = add i64 %.sroa.0.0.copyload.i.i, 23
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = load i64, ptr %i.e, align 8, !noalias !512 ; 3 uses
  %i.g = load atomic volatile i32, ptr %i.b monotonic, align 4, !noalias !513
  %i.h = load atomic volatile i32, ptr %i.b monotonic, align 4, !noalias !514
  %i.i = load atomic volatile i32, ptr %i.b monotonic, align 4, !noalias !515
  %i.j = load atomic volatile i32, ptr %i.b monotonic, align 4, !noalias !516
  %i.k = load atomic volatile i32, ptr %i.b monotonic, align 4, !noalias !517
  %i.l = load atomic volatile i32, ptr %i.b monotonic, align 4, !noalias !518
  %i.m = and i32 %i.l, 15
  %i.n = icmp eq i32 %i.m, 5
  br i1 %i.n, label %bb.b, label %_ZNK2v88internal24TorqueGeneratedScopeInfoINS0_9ScopeInfoENS0_10HeapObjectEE27module_variables_propertiesEi.exit

bb.b:                                             ; preds = %bb.a
  %i.o = load atomic volatile i32, ptr %i.b monotonic, align 4, !noalias !519
  %i.p = and i32 %i.o, 15
  %i.q = icmp eq i32 %i.p, 5
  br i1 %i.q, label %_ZNK2v88internal24TorqueGeneratedScopeInfoINS0_9ScopeInfoENS0_10HeapObjectEE27module_variables_propertiesEi.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #18, !noalias !518
  unreachable

_ZNK2v88internal24TorqueGeneratedScopeInfoINS0_9ScopeInfoENS0_10HeapObjectEE27module_variables_propertiesEi.exit: ; preds = %bb.a, %bb.b
  %i.r = and i32 %i.k, 15
  %i.s = icmp eq i32 %i.r, 5
  %i.t = select i1 %i.s, i64 8, i64 0
  %7 = icmp sgt i64 %i.f, 322122547199
  %8 = select i1 %7, i64 8, i64 0
  %i.u = and i32 %i.c, 15
  %i.v = icmp eq i32 %i.u, 5
  %i.w = select i1 %i.v, i64 56, i64 48
  %9 = ashr i64 %i.f, 29
  %10 = and i64 %9, -8                            ; 2 uses
  %11 = icmp slt i64 %i.f, 322122547200
  %i.x = select i1 %11, i64 %10, i64 0            ; 2 uses
  %i.y = lshr i32 %i.g, 7
  %i.z = and i32 %i.y, 8
  %i.aa = zext nneg i32 %i.z to i64
  %i.ab = and i32 %i.h, 12288
  %.not.i.not.i.i.i.i.i.i = icmp eq i32 %i.ab, 0
  %i.ac = select i1 %.not.i.not.i.i.i.i.i.i, i64 0, i64 16
  %i.ad = lshr i32 %i.i, 11
  %i.ae = and i32 %i.ad, 8
  %i.af = zext nneg i32 %i.ae to i64
  %i.ag = lshr i32 %i.j, 19
  %i.ah = and i32 %i.ag, 8
  %i.ai = zext nneg i32 %i.ah to i64
  %12 = add nsw i64 %10, %8                       ; 2 uses
  %i.aj = add nsw i64 %12, %i.w
  %i.ak = add nsw i64 %i.aj, %i.x
  %i.al = add nsw i64 %i.ak, %i.aa
  %i.am = add nsw i64 %i.al, %i.ac
  %i.an = add nsw i64 %i.am, %i.af
  %i.ao = add nsw i64 %i.an, %i.ai
  %i.ap = add nsw i64 %i.ao, %i.t
  %i.aq = trunc i64 %i.ap to i32
  %i.ar = mul nsw i32 %1, 24                      ; 3 uses
  %i.as = add i32 %i.ar, 16
  %i.at = add i32 %i.as, %i.aq
  %i.au = add i64 %.sroa.0.0.copyload.i.i, -1     ; 2 uses
  %i.av = sext i32 %i.at to i64
  %i.aw = add i64 %i.au, %i.av
  %i.ax = inttoptr i64 %i.aw to ptr
  %i.ay = load i64, ptr %i.ax, align 8
  %i.az = lshr i64 %i.ay, 32                      ; 3 uses
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.g, label %bb.d

bb.d:                                             ; preds = %_ZNK2v88internal24TorqueGeneratedScopeInfoINS0_9ScopeInfoENS0_10HeapObjectEE27module_variables_propertiesEi.exit
  %i.ba = load atomic volatile i32, ptr %i.b monotonic, align 4, !noalias !520
  %i.bb = load atomic volatile i32, ptr %i.b monotonic, align 4, !noalias !521
  %i.bc = load atomic volatile i32, ptr %i.b monotonic, align 4, !noalias !522
  %i.bd = load atomic volatile i32, ptr %i.b monotonic, align 4, !noalias !523
  %i.be = load atomic volatile i32, ptr %i.b monotonic, align 4, !noalias !524
  %i.bf = load atomic volatile i32, ptr %i.b monotonic, align 4, !noalias !525
  %i.bg = load atomic volatile i32, ptr %i.b monotonic, align 4, !noalias !526
  %i.bh = and i32 %i.bg, 15
  %i.bi = icmp eq i32 %i.bh, 5
  br i1 %i.bi, label %bb.e, label %_ZNK2v88internal24TorqueGeneratedScopeInfoINS0_9ScopeInfoENS0_10HeapObjectEE21module_variables_nameEi.exit

bb.e:                                             ; preds = %bb.d
  %i.bj = load atomic volatile i32, ptr %i.b monotonic, align 4, !noalias !527
  %i.bk = and i32 %i.bj, 15
  %i.bl = icmp eq i32 %i.bk, 5
  br i1 %i.bl, label %_ZNK2v88internal24TorqueGeneratedScopeInfoINS0_9ScopeInfoENS0_10HeapObjectEE21module_variables_nameEi.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #18, !noalias !526
  unreachable

_ZNK2v88internal24TorqueGeneratedScopeInfoINS0_9ScopeInfoENS0_10HeapObjectEE21module_variables_nameEi.exit: ; preds = %bb.d, %bb.e
  %i.bm = and i32 %i.bf, 15
  %i.bn = icmp eq i32 %i.bm, 5
  %i.bo = select i1 %i.bn, i64 8, i64 0
  %i.bp = and i32 %i.ba, 15
  %i.bq = icmp eq i32 %i.bp, 5
  %i.br = select i1 %i.bq, i64 56, i64 48
  %i.bs = lshr i32 %i.bb, 7
  %i.bt = and i32 %i.bs, 8
  %i.bu = zext nneg i32 %i.bt to i64
  %i.bv = and i32 %i.bc, 12288
  %.not.i.not.i.i.i.i.i.i.i = icmp eq i32 %i.bv, 0
  %i.bw = select i1 %.not.i.not.i.i.i.i.i.i.i, i64 0, i64 16
  %i.bx = lshr i32 %i.bd, 11
  %i.by = and i32 %i.bx, 8
  %i.bz = zext nneg i32 %i.by to i64
  %i.ca = lshr i32 %i.be, 19
  %i.cb = and i32 %i.ca, 8
  %i.cc = zext nneg i32 %i.cb to i64
  %13 = add nsw i64 %12, %i.x
  %i.cd = add nsw i64 %13, %i.br
  %i.ce = add nsw i64 %i.cd, %i.bu
  %i.cf = add nsw i64 %i.ce, %i.bw
  %i.cg = add nsw i64 %i.cf, %i.bz
  %i.ch = add nsw i64 %i.cg, %i.cc
  %i.ci = add nsw i64 %i.ch, %i.bo
  %i.cj = trunc i64 %i.ci to i32
  %i.ck = add nsw i32 %i.ar, %i.cj
  %i.cl = sext i32 %i.ck to i64
  %i.cm = add i64 %i.au, %i.cl
  %i.cn = inttoptr i64 %i.cm to ptr
  %i.co = load i64, ptr %i.cn, align 8
  store i64 %i.co, ptr %2, align 8
  br label %bb.g

bb.g:                                             ; preds = %_ZNK2v88internal24TorqueGeneratedScopeInfoINS0_9ScopeInfoENS0_10HeapObjectEE21module_variables_nameEi.exit, %_ZNK2v88internal24TorqueGeneratedScopeInfoINS0_9ScopeInfoENS0_10HeapObjectEE27module_variables_propertiesEi.exit
  %.not20 = icmp eq ptr %3, null
  br i1 %.not20, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.sroa.0.0.copyload.i.i24 = load i64, ptr %0, align 8 ; 3 uses
  %i.cp = add i64 %.sroa.0.0.copyload.i.i24, 7
  %i.cq = inttoptr i64 %i.cp to ptr               ; 8 uses
  %i.cr = load atomic volatile i32, ptr %i.cq monotonic, align 4, !noalias !528
  %i.cs = add i64 %.sroa.0.0.copyload.i.i24, 23
  %i.ct = inttoptr i64 %i.cs to ptr
  %i.cu = load i64, ptr %i.ct, align 8, !noalias !529 ; 3 uses
  %i.cv = load atomic volatile i32, ptr %i.cq monotonic, align 4, !noalias !530
  %i.cw = load atomic volatile i32, ptr %i.cq monotonic, align 4, !noalias !531
  %i.cx = load atomic volatile i32, ptr %i.cq monotonic, align 4, !noalias !532
  %i.cy = load atomic volatile i32, ptr %i.cq monotonic, align 4, !noalias !533
  %i.cz = load atomic volatile i32, ptr %i.cq monotonic, align 4, !noalias !534
  %i.da = load atomic volatile i32, ptr %i.cq monotonic, align 4, !noalias !535
  %i.db = and i32 %i.da, 15
  %i.dc = icmp eq i32 %i.db, 5
  br i1 %i.dc, label %bb.i, label %_ZNK2v88internal24TorqueGeneratedScopeInfoINS0_9ScopeInfoENS0_10HeapObjectEE22module_variables_indexEi.exit

bb.i:                                             ; preds = %bb.h
  %i.dd = load atomic volatile i32, ptr %i.cq monotonic, align 4, !noalias !536
  %i.de = and i32 %i.dd, 15
  %i.df = icmp eq i32 %i.de, 5
  br i1 %i.df, label %_ZNK2v88internal24TorqueGeneratedScopeInfoINS0_9ScopeInfoENS0_10HeapObjectEE22module_variables_indexEi.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #18, !noalias !535
  unreachable

_ZNK2v88internal24TorqueGeneratedScopeInfoINS0_9ScopeInfoENS0_10HeapObjectEE22module_variables_indexEi.exit: ; preds = %bb.h, %bb.i
  %i.dg = and i32 %i.cz, 15
  %i.dh = icmp eq i32 %i.dg, 5
  %i.di = select i1 %i.dh, i64 8, i64 0
  %14 = icmp sgt i64 %i.cu, 322122547199
  %15 = select i1 %14, i64 8, i64 0
  %i.dj = and i32 %i.cr, 15
  %i.dk = icmp eq i32 %i.dj, 5
  %i.dl = select i1 %i.dk, i64 56, i64 48
  %16 = add nuw nsw i64 %15, %i.dl
  %17 = ashr i64 %i.cu, 29
  %18 = and i64 %17, -8                           ; 2 uses
  %i.dm = add nsw i64 %16, %18
  %19 = icmp slt i64 %i.cu, 322122547200
  %i.dn = select i1 %19, i64 %18, i64 0
  %i.do = add nsw i64 %i.dm, %i.dn
  %i.dp = lshr i32 %i.cv, 7
  %i.dq = and i32 %i.dp, 8
  %i.dr = zext nneg i32 %i.dq to i64
  %i.ds = add nsw i64 %i.do, %i.dr
  %i.dt = and i32 %i.cw, 12288
  %.not.i.not.i.i.i.i.i.i25 = icmp eq i32 %i.dt, 0
  %i.du = select i1 %.not.i.not.i.i.i.i.i.i25, i64 0, i64 16
  %i.dv = add nsw i64 %i.ds, %i.du
  %i.dw = lshr i32 %i.cx, 11
  %i.dx = and i32 %i.dw, 8
  %i.dy = zext nneg i32 %i.dx to i64
  %i.dz = add nsw i64 %i.dv, %i.dy
  %i.ea = lshr i32 %i.cy, 19
  %i.eb = and i32 %i.ea, 8
  %i.ec = zext nneg i32 %i.eb to i64
  %i.ed = add nsw i64 %i.dz, %i.ec
  %i.ee = add nsw i64 %i.ed, %i.di
  %i.ef = trunc i64 %i.ee to i32
  %i.eg = add i32 %i.ar, 8
  %i.eh = add i32 %i.eg, %i.ef
  %i.ei = add i64 %.sroa.0.0.copyload.i.i24, -1
  %i.ej = sext i32 %i.eh to i64
  %i.ek = add i64 %i.ei, %i.ej
  %i.el = inttoptr i64 %i.ek to ptr
  %i.em = load i64, ptr %i.el, align 8
  %i.en = lshr i64 %i.em, 32
  %i.eo = trunc nuw i64 %i.en to i32
  store i32 %i.eo, ptr %3, align 4
  br label %bb.k

bb.k:                                             ; preds = %_ZNK2v88internal24TorqueGeneratedScopeInfoINS0_9ScopeInfoENS0_10HeapObjectEE22module_variables_indexEi.exit, %bb.g
  %.not21 = icmp eq ptr %4, null
  br i1 %.not21, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ep = trunc i64 %i.az to i8
  %i.eq = and i8 %i.ep, 15
  store i8 %i.eq, ptr %4, align 1
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.not22 = icmp eq ptr %5, null
  br i1 %.not22, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.er = trunc i64 %i.az to i8
  %i.es = lshr i8 %i.er, 4
  %i.et = and i8 %i.es, 1
  store i8 %i.et, ptr %5, align 1
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.not23 = icmp eq ptr %6, null
  br i1 %.not23, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.eu = trunc i64 %i.az to i8
  %i.ev = lshr i8 %i.eu, 5
  %i.ew = and i8 %i.ev, 1
  store i8 %i.ew, ptr %6, align 1
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  ret void
}

; Function Attrs: mustprogress norecurse nounwind memory(readwrite, target_mem: none) uwtable
define hidden noundef range(i32 -2147483648, 2147483647) i32 @_ZN2v88internal9ScopeInfo23InlinedLocalNamesLookupENS0_6TaggedINS0_6StringEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, i64 %1) local_unnamed_addr #3 align 2 {
bb.a:
  %.sroa.0.0.copyload.i = load i64, ptr %0, align 8 ; 3 uses
  %i.a = add i64 %.sroa.0.0.copyload.i, 23
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = load i64, ptr %i.b, align 8
  %i.d = lshr i64 %i.c, 32
  %i.e = trunc nuw i64 %i.d to i32                ; 2 uses
  %i.f = add i64 %.sroa.0.0.copyload.i, 7
  %i.g = inttoptr i64 %i.f to ptr
  %.not14 = icmp sgt i32 %i.e, 0
  br i1 %.not14, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.h = add i64 %.sroa.0.0.copyload.i, -1
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %.01015 = phi i32 [ 0, %.lr.ph ], [ %i.t, %bb.c ] ; 3 uses
  %i.i = load atomic volatile i32, ptr %i.g monotonic, align 4, !noalias !541
  %i.j = and i32 %i.i, 15
  %i.k = icmp eq i32 %i.j, 5
  %i.l = select i1 %i.k, i32 56, i32 48
  %i.m = shl nuw nsw i32 %.01015, 3
  %i.n = add nuw nsw i32 %i.l, %i.m
  %i.o = zext nneg i32 %i.n to i64
  %i.p = add i64 %i.h, %i.o
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = load i64, ptr %i.q, align 8
  %i.s = icmp eq i64 %1, %i.r
  br i1 %i.s, label %._crit_edge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = add nuw nsw i32 %.01015, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.t, %i.e
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !0

._crit_edge:                                      ; preds = %bb.c, %bb.b, %bb.a
  %spec.select = phi i32 [ -1, %bb.a ], [ %.01015, %bb.b ], [ -1, %bb.c ]
  ret i32 %spec.select
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef range(i32 -2147483646, -2147483648) i32 @_ZN2v88internal9ScopeInfo16ContextSlotIndexENS0_6TaggedINS0_6StringEEEPNS0_20VariableLookupResultE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, i64 %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8                ; 4 uses
  %i.b = add i64 %i.a, 7
  %i.c = inttoptr i64 %i.b to ptr                 ; 4 uses
  %i.d = load atomic volatile i32, ptr %i.c monotonic, align 4
  %i.e = and i32 %i.d, 536870912
  %.not29 = icmp eq i32 %i.e, 0
  br i1 %.not29, label %bb.b, label %_ZN2v88internal9ScopeInfo23InlinedLocalNamesLookupENS0_6TaggedINS0_6StringEEE.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.f = add i64 %i.a, 23
  %i.g = inttoptr i64 %i.f to ptr                 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8              ; 3 uses
  %i.i = lshr i64 %i.h, 32
  %i.j = trunc nuw i64 %i.i to i32                ; 3 uses
  %i.k = icmp slt i32 %i.j, 75
  br i1 %i.k, label %bb.c, label %_ZN2v88internal9ScopeInfo23InlinedLocalNamesLookupENS0_6TaggedINS0_6StringEEE.exit

bb.c:                                             ; preds = %bb.b
  %.not14.i = icmp sgt i32 %i.j, 0
  br i1 %.not14.i, label %.lr.ph.i, label %_ZN2v88internal9ScopeInfo23InlinedLocalNamesLookupENS0_6TaggedINS0_6StringEEE.exit.thread

.lr.ph.i:                                         ; preds = %bb.c
  %i.l = add i64 %i.a, -1                         ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph.i
  %.01015.i = phi i32 [ 0, %.lr.ph.i ], [ %i.x, %bb.e ] ; 3 uses
  %i.m = load atomic volatile i32, ptr %i.c monotonic, align 4, !noalias !584
  %i.n = and i32 %i.m, 15
  %i.o = icmp eq i32 %i.n, 5
  %i.p = select i1 %i.o, i32 56, i32 48
  %i.q = shl nsw i32 %.01015.i, 3                 ; 2 uses
  %i.r = add nuw nsw i32 %i.p, %i.q
  %i.s = zext nneg i32 %i.r to i64
  %i.t = add i64 %i.l, %i.s
  %i.u = inttoptr i64 %i.t to ptr
  %i.v = load i64, ptr %i.u, align 8
  %i.w = icmp eq i64 %1, %i.v
  br i1 %i.w, label %_ZN2v88internal9ScopeInfo23InlinedLocalNamesLookupENS0_6TaggedINS0_6StringEEE.exit.thread27, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = add nuw nsw i32 %.01015.i, 1             ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.x, %i.j
  br i1 %exitcond.not.i, label %_ZN2v88internal9ScopeInfo23InlinedLocalNamesLookupENS0_6TaggedINS0_6StringEEE.exit.thread, label %bb.d, !llvm.loop !0

_ZN2v88internal9ScopeInfo23InlinedLocalNamesLookupENS0_6TaggedINS0_6StringEEE.exit: ; preds = %bb.b
  %i.y = load atomic volatile i32, ptr %i.c monotonic, align 4, !noalias !585
  %i.z = and i32 %i.y, 15
  %i.aa = icmp eq i32 %i.z, 5
  %i.ab = select i1 %i.aa, i64 56, i64 48
  %i.ac = icmp slt i64 %i.h, 322122547200
  %i.ad = lshr i64 %i.h, 29
  %i.ae = and i64 %i.ad, 4294967288
  %i.af = select i1 %i.ac, i64 %i.ae, i64 322122547200
  %i.ag = add nuw nsw i64 %i.ab, %i.af
  %i.ah = add i64 %i.a, -1
  %sext.i.i = shl i64 %i.ag, 32
  %i.ai = ashr exact i64 %sext.i.i, 32
  %i.aj = add i64 %i.ah, %i.ai
  %i.ak = inttoptr i64 %i.aj to ptr
  %i.al = load i64, ptr %i.ak, align 8
  %i.am = add i64 %i.al, -1
  %i.an = inttoptr i64 %i.am to ptr
  %i.ao = tail call noundef i32 @_ZN2v88internal20NameToIndexHashTable6LookupENS0_6TaggedINS0_4NameEEE(ptr noundef nonnull align 4 dereferenceable(16) %i.an, i64 %1) #17 ; 3 uses
  %.not = icmp eq i32 %i.ao, -1
  br i1 %.not, label %_ZN2v88internal9ScopeInfo23InlinedLocalNamesLookupENS0_6TaggedINS0_6StringEEE.exit.thread, label %_ZN2v88internal9ScopeInfo23InlinedLocalNamesLookupENS0_6TaggedINS0_6StringEEE.exit._ZN2v88internal9ScopeInfo23InlinedLocalNamesLookupENS0_6TaggedINS0_6StringEEE.exit.thread27_crit_edge

_ZN2v88internal9ScopeInfo23InlinedLocalNamesLookupENS0_6TaggedINS0_6StringEEE.exit._ZN2v88internal9ScopeInfo23InlinedLocalNamesLookupENS0_6TaggedINS0_6StringEEE.exit.thread27_crit_edge: ; preds = %_ZN2v88internal9ScopeInfo23InlinedLocalNamesLookupENS0_6TaggedINS0_6StringEEE.exit
  %.sroa.0.0.copyload.i.i.i18.pre = load i64, ptr %0, align 8 ; 3 uses
  %.pre = add i64 %.sroa.0.0.copyload.i.i.i18.pre, 7
  %.pre33 = inttoptr i64 %.pre to ptr
  %.pre35 = add i64 %.sroa.0.0.copyload.i.i.i18.pre, 23
  %.pre37 = inttoptr i64 %.pre35 to ptr
  %.pre39 = shl nsw i32 %i.ao, 3
  %.pre41 = add i64 %.sroa.0.0.copyload.i.i.i18.pre, -1
  br label %_ZN2v88internal9ScopeInfo23InlinedLocalNamesLookupENS0_6TaggedINS0_6StringEEE.exit.thread27

_ZN2v88internal9ScopeInfo23InlinedLocalNamesLookupENS0_6TaggedINS0_6StringEEE.exit.thread27: ; preds = %bb.d, %_ZN2v88internal9ScopeInfo23InlinedLocalNamesLookupENS0_6TaggedINS0_6StringEEE.exit._ZN2v88internal9ScopeInfo23InlinedLocalNamesLookupENS0_6TaggedINS0_6StringEEE.exit.thread27_crit_edge
  %.pre-phi42 = phi i64 [ %.pre41, %_ZN2v88internal9ScopeInfo23InlinedLocalNamesLookupENS0_6TaggedINS0_6StringEEE.exit._ZN2v88internal9ScopeInfo23InlinedLocalNamesLookupENS0_6TaggedINS0_6StringEEE.exit.thread27_crit_edge ], [ %i.l, %bb.d ]
  %.pre-phi40 = phi i32 [ %.pre39, %_ZN2v88internal9ScopeInfo23InlinedLocalNamesLookupENS0_6TaggedINS0_6StringEEE.exit._ZN2v88internal9ScopeInfo23InlinedLocalNamesLookupENS0_6TaggedINS0_6StringEEE.exit.thread27_crit_edge ], [ %i.q, %bb.d ] ; 4 uses
  %.pre-phi38 = phi ptr [ %.pre37, %_ZN2v88internal9ScopeInfo23InlinedLocalNamesLookupENS0_6TaggedINS0_6StringEEE.exit._ZN2v88internal9ScopeInfo23InlinedLocalNamesLookupENS0_6TaggedINS0_6StringEEE.exit.thread27_crit_edge ], [ %i.g, %bb.d ]
  %.pre-phi34 = phi ptr [ %.pre33, %_ZN2v88internal9ScopeInfo23InlinedLocalNamesLookupENS0_6TaggedINS0_6StringEEE.exit._ZN2v88internal9ScopeInfo23InlinedLocalNamesLookupENS0_6TaggedINS0_6StringEEE.exit.thread27_crit_edge ], [ %i.c, %bb.d ]
  %i.ap = phi i32 [ %i.ao, %_ZN2v88internal9ScopeInfo23InlinedLocalNamesLookupENS0_6TaggedINS0_6StringEEE.exit._ZN2v88internal9ScopeInfo23InlinedLocalNamesLookupENS0_6TaggedINS0_6StringEEE.exit.thread27_crit_edge ], [ %.01015.i, %bb.d ]
  %i.aq = load atomic volatile i32, ptr %.pre-phi34 monotonic, align 4, !noalias !586
  %i.ar = and i32 %i.aq, 15
  %i.as = icmp eq i32 %i.ar, 5
  %i.at = select i1 %i.as, i64 56, i64 48
  %i.au = load i64, ptr %.pre-phi38, align 8, !noalias !587 ; 3 uses
  %3 = icmp slt i64 %i.au, 322122547200
  %i.av = lshr i64 %i.au, 29
  %i.aw = and i64 %i.av, 4294967288
  %4 = select i1 %3, i64 %i.aw, i64 322122547200
  %i.ax = icmp sgt i64 %i.au, 322122547199
  %i.ay = select i1 %i.ax, i64 8, i64 0
  %5 = add nuw nsw i64 %i.ay, %i.at
  %i.az = add nuw nsw i64 %5, %4
  %i.ba = trunc i64 %i.az to i32
  %i.bb = add nsw i32 %.pre-phi40, %i.ba
  %i.bc = sext i32 %i.bb to i64
  %i.bd = add i64 %.pre-phi42, %i.bc
  %i.be = inttoptr i64 %i.bd to ptr
  %i.bf = load i64, ptr %i.be, align 8
  %i.bg = lshr i64 %i.bf, 32
  %i.bh = trunc i64 %i.bg to i8
  %i.bi = and i8 %i.bh, 15
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 10
  store i8 %i.bi, ptr %i.bj, align 2
  %.sroa.0.0.copyload.i.i.i19 = load i64, ptr %0, align 8 ; 3 uses
  %i.bk = add i64 %.sroa.0.0.copyload.i.i.i19, 7
  %i.bl = inttoptr i64 %i.bk to ptr
  %i.bm = load atomic volatile i32, ptr %i.bl monotonic, align 4, !noalias !588
  %i.bn = and i32 %i.bm, 15
  %i.bo = icmp eq i32 %i.bn, 5
  %i.bp = select i1 %i.bo, i64 56, i64 48
  %i.bq = add i64 %.sroa.0.0.copyload.i.i.i19, 23
  %i.br = inttoptr i64 %i.bq to ptr
  %i.bs = load i64, ptr %i.br, align 8, !noalias !589 ; 3 uses
  %6 = icmp slt i64 %i.bs, 322122547200
  %i.bt = lshr i64 %i.bs, 29
  %i.bu = and i64 %i.bt, 4294967288
  %7 = select i1 %6, i64 %i.bu, i64 322122547200
  %i.bv = icmp sgt i64 %i.bs, 322122547199
  %i.bw = select i1 %i.bv, i64 8, i64 0
  %8 = add nuw nsw i64 %i.bw, %i.bp
  %i.bx = add nuw nsw i64 %8, %7
  %i.by = trunc i64 %i.bx to i32
  %i.bz = add nsw i32 %.pre-phi40, %i.by
  %i.ca = add i64 %.sroa.0.0.copyload.i.i.i19, -1
  %i.cb = sext i32 %i.bz to i64
  %i.cc = add i64 %i.ca, %i.cb
  %i.cd = inttoptr i64 %i.cc to ptr
  %i.ce = load i64, ptr %i.cd, align 8
  %sum.shift.i = lshr i64 %i.ce, 54
  %i.cf = trunc i64 %sum.shift.i to i8
  %i.cg = and i8 %i.cf, 1
  %i.ch = getelementptr inbounds nuw i8, ptr %2, i64 9
  store i8 %i.cg, ptr %i.ch, align 1
  %.sroa.0.0.copyload.i.i.i20 = load i64, ptr %0, align 8 ; 3 uses
  %i.ci = add i64 %.sroa.0.0.copyload.i.i.i20, 7
  %i.cj = inttoptr i64 %i.ci to ptr
  %i.ck = load atomic volatile i32, ptr %i.cj monotonic, align 4, !noalias !590
  %i.cl = and i32 %i.ck, 15
  %i.cm = icmp eq i32 %i.cl, 5
  %i.cn = select i1 %i.cm, i64 56, i64 48
  %i.co = add i64 %.sroa.0.0.copyload.i.i.i20, 23
  %i.cp = inttoptr i64 %i.co to ptr
  %i.cq = load i64, ptr %i.cp, align 8, !noalias !591 ; 3 uses
  %9 = icmp slt i64 %i.cq, 322122547200
  %i.cr = lshr i64 %i.cq, 29
  %i.cs = and i64 %i.cr, 4294967288
  %10 = select i1 %9, i64 %i.cs, i64 322122547200
  %i.ct = icmp sgt i64 %i.cq, 322122547199
  %i.cu = select i1 %i.ct, i64 8, i64 0
  %11 = add nuw nsw i64 %i.cu, %i.cn
  %i.cv = add nuw nsw i64 %11, %10
  %i.cw = trunc i64 %i.cv to i32
  %i.cx = add nsw i32 %.pre-phi40, %i.cw
  %i.cy = add i64 %.sroa.0.0.copyload.i.i.i20, -1
  %i.cz = sext i32 %i.cx to i64
  %i.da = add i64 %i.cy, %i.cz
  %i.db = inttoptr i64 %i.da to ptr
  %i.dc = load i64, ptr %i.db, align 8
  %sum.shift.i21 = lshr i64 %i.dc, 36
  %i.dd = trunc i64 %sum.shift.i21 to i8
  %i.de = and i8 %i.dd, 1
  %i.df = getelementptr inbounds nuw i8, ptr %2, i64 11
  store i8 %i.de, ptr %i.df, align 1
  %.sroa.0.0.copyload.i.i.i22 = load i64, ptr %0, align 8 ; 3 uses
  %i.dg = add i64 %.sroa.0.0.copyload.i.i.i22, 7
  %i.dh = inttoptr i64 %i.dg to ptr
  %i.di = load atomic volatile i32, ptr %i.dh monotonic, align 4, !noalias !592
  %i.dj = and i32 %i.di, 15
  %i.dk = icmp eq i32 %i.dj, 5
  %i.dl = select i1 %i.dk, i64 56, i64 48
  %i.dm = add i64 %.sroa.0.0.copyload.i.i.i22, 23
  %i.dn = inttoptr i64 %i.dm to ptr
  %i.do = load i64, ptr %i.dn, align 8, !noalias !593 ; 3 uses
  %12 = icmp slt i64 %i.do, 322122547200
  %i.dp = lshr i64 %i.do, 29
  %i.dq = and i64 %i.dp, 4294967288
  %13 = select i1 %12, i64 %i.dq, i64 322122547200
  %i.dr = icmp sgt i64 %i.do, 322122547199
  %i.ds = select i1 %i.dr, i64 8, i64 0
  %14 = add nuw nsw i64 %i.ds, %i.dl
  %i.dt = add nuw nsw i64 %14, %13
  %i.du = trunc i64 %i.dt to i32
  %i.dv = add nsw i32 %.pre-phi40, %i.du
  %i.dw = add i64 %.sroa.0.0.copyload.i.i.i22, -1
  %i.dx = sext i32 %i.dv to i64
  %i.dy = add i64 %i.dw, %i.dx
  %i.dz = inttoptr i64 %i.dy to ptr
  %i.ea = load i64, ptr %i.dz, align 8
  %sum.shift.i23 = lshr i64 %i.ea, 37
  %i.eb = trunc i64 %sum.shift.i23 to i8
  %i.ec = and i8 %i.eb, 1
  %i.ed = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i8 %i.ec, ptr %i.ed, align 4
  %i.ee = load i64, ptr %0, align 8
  %i.ef = add i64 %i.ee, 7
  %i.eg = inttoptr i64 %i.ef to ptr
  %i.eh = load atomic volatile i32, ptr %i.eg monotonic, align 4
  %i.ei = and i32 %i.eh, 15
  %i.ej = icmp eq i32 %i.ei, 1
  %i.ek = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.el = zext i1 %i.ej to i8
  store i8 %i.el, ptr %i.ek, align 4
  %i.em = load i64, ptr %0, align 8
  %i.en = add i64 %i.em, 7
  %i.eo = inttoptr i64 %i.en to ptr
  %i.ep = load atomic volatile i32, ptr %i.eo monotonic, align 4
  %i.eq = and i32 %i.ep, 67108864
  %.not.i = icmp eq i32 %i.eq, 0
  %i.er = select i1 %.not.i, i32 2, i32 3
  %i.es = add nsw i32 %i.er, %i.ap
  br label %_ZN2v88internal9ScopeInfo23InlinedLocalNamesLookupENS0_6TaggedINS0_6StringEEE.exit.thread

_ZN2v88internal9ScopeInfo23InlinedLocalNamesLookupENS0_6TaggedINS0_6StringEEE.exit.thread: ; preds = %bb.e, %bb.c, %_ZN2v88internal9ScopeInfo23InlinedLocalNamesLookupENS0_6TaggedINS0_6StringEEE.exit.thread27, %_ZN2v88internal9ScopeInfo23InlinedLocalNamesLookupENS0_6TaggedINS0_6StringEEE.exit, %bb.a
  %.1 = phi i32 [ -1, %bb.a ], [ %i.es, %_ZN2v88internal9ScopeInfo23InlinedLocalNamesLookupENS0_6TaggedINS0_6StringEEE.exit.thread27 ], [ -1, %_ZN2v88internal9ScopeInfo23InlinedLocalNamesLookupENS0_6TaggedINS0_6StringEEE.exit ], [ -1, %bb.c ], [ -1, %bb.e ]
  ret i32 %.1
}

declare noundef i32 @_ZN2v88internal20NameToIndexHashTable6LookupENS0_6TaggedINS0_4NameEEE(ptr noundef nonnull align 4 dereferenceable(16), i64) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef range(i32 -2147483646, -2147483648) i32 @_ZN2v88internal9ScopeInfo16ContextSlotIndexENS0_6TaggedINS0_6StringEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, i64 %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"struct.v8::internal::VariableLookupResult", align 4 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  %i.a = call noundef i32 @_ZN2v88internal9ScopeInfo16ContextSlotIndexENS0_6TaggedINS0_6StringEEEPNS0_20VariableLookupResultE(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 %1, ptr noundef nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  ret i32 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i64, i32 } @_ZNK2v88internal9ScopeInfo18SavedClassVariableEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %0, align 8 ; 3 uses
  %i.a = add i64 %.sroa.0.0.copyload.i.i.i, 7
  %i.b = inttoptr i64 %i.a to ptr                 ; 4 uses
  %i.c = load atomic volatile i32, ptr %i.b monotonic, align 4, !noalias !614
  %i.d = and i32 %i.c, 15
  %i.e = icmp eq i32 %i.d, 5
  %i.f = select i1 %i.e, i64 56, i64 48
  %i.g = add i64 %.sroa.0.0.copyload.i.i.i, 23
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = load i64, ptr %i.h, align 8, !noalias !615 ; 5 uses
  %1 = icmp slt i64 %i.i, 322122547200            ; 2 uses
  %i.j = ashr i64 %i.i, 29
  %i.k = and i64 %i.j, -8                         ; 2 uses
  %2 = select i1 %1, i64 %i.k, i64 322122547200
  %i.l = icmp sgt i64 %i.i, 322122547199
  %i.m = select i1 %i.l, i64 8, i64 0
  %3 = add nuw nsw i64 %i.m, %i.f
  %i.n = add nsw i64 %3, %i.k
  %i.o = add nsw i64 %i.n, %2
  %i.p = load atomic volatile i32, ptr %i.b monotonic, align 4, !noalias !616 ; 0 uses
  %i.q = add i64 %.sroa.0.0.copyload.i.i.i, -1    ; 3 uses
  %sext.i.i = shl i64 %i.o, 32
  %i.r = ashr exact i64 %sext.i.i, 32
  %i.s = add i64 %i.r, %i.q
  %i.t = inttoptr i64 %i.s to ptr
  %i.u = load i64, ptr %i.t, align 8              ; 4 uses
  %i.v = lshr i64 %i.i, 32
  %i.w = trunc nuw i64 %i.v to i32
  %i.x = icmp slt i32 %i.w, 75
  br i1 %i.x, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.y = and i64 %i.u, 1
  %i.z = icmp eq i64 %i.y, 0
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = lshr i64 %i.u, 32
  %i.ab = trunc nuw i64 %i.aa to i32
  %i.ac = add nsw i32 %i.ab, -2                   ; 2 uses
  %i.ad = load atomic volatile i32, ptr %i.b monotonic, align 4, !noalias !617
  %i.ae = and i32 %i.ad, 15
  %i.af = icmp eq i32 %i.ae, 5
  %i.ag = select i1 %i.af, i32 56, i32 48
  %i.ah = shl nsw i32 %i.ac, 3
  %i.ai = add nsw i32 %i.ag, %i.ah
  %i.aj = sext i32 %i.ai to i64
  %i.ak = add i64 %i.q, %i.aj
  %i.al = inttoptr i64 %i.ak to ptr
  %i.am = load i64, ptr %i.al, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.an = load atomic volatile i32, ptr %i.b monotonic, align 4, !noalias !618
  %i.ao = and i32 %i.an, 15
  %i.ap = icmp eq i32 %i.ao, 5
  %i.aq = select i1 %i.ap, i64 56, i64 48
  %i.ar = lshr i64 %i.i, 29
  %i.as = and i64 %i.ar, 4294967288
  %i.at = select i1 %1, i64 %i.as, i64 322122547200
  %i.au = add nuw nsw i64 %i.aq, %i.at
  %sext.i.i16 = shl i64 %i.au, 32
  %i.av = ashr exact i64 %sext.i.i16, 32
  %i.aw = add i64 %i.av, %i.q
  %i.ax = inttoptr i64 %i.aw to ptr
  %i.ay = load i64, ptr %i.ax, align 8
  %i.az = add i64 %i.ay, -1
  %i.ba = inttoptr i64 %i.az to ptr
  %i.bb = tail call noundef i32 @_ZN2v88internal20NameToIndexHashTable6LookupENS0_6TaggedINS0_4NameEEE(ptr noundef nonnull align 4 dereferenceable(16) %i.ba, i64 %i.u) #17
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pn27 = phi i64 [ %i.am, %bb.b ], [ %i.u, %bb.c ]
  %.pn25 = phi i32 [ %i.ac, %bb.b ], [ %i.bb, %bb.c ]
  %.fca.0.insert.i.pn = insertvalue { i64, i32 } poison, i64 %.pn27, 0
  %.pn = insertvalue { i64, i32 } %.fca.0.insert.i.pn, i32 %.pn25, 1
  ret { i64, i32 } %.pn
}

; Function Attrs: mustprogress norecurse nounwind memory(readwrite, target_mem: none) uwtable
define hidden noundef range(i32 -1, 4) i32 @_ZNK2v88internal9ScopeInfo24ReceiverContextSlotIndexEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = add i64 %i.a, 7
  %i.c = inttoptr i64 %i.b to ptr                 ; 2 uses
  %i.d = load atomic volatile i32, ptr %i.c monotonic, align 4
  %i.e = and i32 %i.d, 384
  %i.f = icmp eq i32 %i.e, 256
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = load atomic volatile i32, ptr %i.c monotonic, align 4
  %i.h = and i32 %i.g, 67108864
  %.not.i = icmp eq i32 %i.h, 0
  %i.i = select i1 %.not.i, i32 2, i32 3
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.i, %bb.b ], [ -1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress norecurse nounwind memory(readwrite, target_mem: none) uwtable
define hidden noundef range(i32 2, 5) i32 @_ZNK2v88internal9ScopeInfo20ParametersStartIndexEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = add i64 %i.a, 7
  %i.c = inttoptr i64 %i.b to ptr                 ; 2 uses
  %i.d = load atomic volatile i32, ptr %i.c monotonic, align 4
  %i.e = and i32 %i.d, 384
  %i.f = icmp eq i32 %i.e, 256
  %i.g = load atomic volatile i32, ptr %i.c monotonic, align 4
  %i.h = and i32 %i.g, 67108864
  %.not.i = icmp eq i32 %i.h, 0                   ; 2 uses
  %i.i = select i1 %.not.i, i32 3, i32 4
  %i.j = select i1 %.not.i, i32 2, i32 3
  %.0 = select i1 %i.f, i32 %i.i, i32 %i.j
  ret i32 %.0
}

; Function Attrs: mustprogress norecurse nounwind memory(readwrite, target_mem: none) uwtable
define hidden noundef i32 @_ZNK2v88internal9ScopeInfo24FunctionContextSlotIndexENS0_6TaggedINS0_6StringEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, i64 %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8                ; 3 uses
  %i.b = add i64 %i.a, 7
  %i.c = inttoptr i64 %i.b to ptr                 ; 7 uses
  %i.d = load atomic volatile i32, ptr %i.c monotonic, align 4
  %i.e = and i32 %i.d, 12288
  %i.f = icmp eq i32 %i.e, 8192
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = load atomic volatile i32, ptr %i.c monotonic, align 4, !noalias !643
  %i.h = and i32 %i.g, 15
  %i.i = icmp eq i32 %i.h, 5
  %i.j = select i1 %i.i, i64 56, i64 48
  %i.k = add i64 %i.a, 23
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = load i64, ptr %i.l, align 8, !noalias !644 ; 3 uses
  %2 = icmp slt i64 %i.m, 322122547200
  %i.n = ashr i64 %i.m, 29
  %i.o = and i64 %i.n, -8                         ; 2 uses
  %3 = select i1 %2, i64 %i.o, i64 322122547200   ; 2 uses
  %i.p = icmp sgt i64 %i.m, 322122547199
  %i.q = select i1 %i.p, i64 8, i64 0
  %4 = add nsw i64 %i.o, %i.q                     ; 2 uses
  %i.r = add nsw i64 %4, %i.j
  %i.s = add nsw i64 %i.r, %3
  %i.t = load atomic volatile i32, ptr %i.c monotonic, align 4, !noalias !645
  %i.u = lshr i32 %i.t, 7
  %i.v = and i32 %i.u, 8
  %i.w = load atomic volatile i32, ptr %i.c monotonic, align 4, !noalias !646 ; 0 uses
  %i.x = trunc i64 %i.s to i32
  %i.y = add i32 %i.v, %i.x
  %i.z = add i64 %i.a, -1                         ; 2 uses
  %i.aa = sext i32 %i.y to i64
  %i.ab = add i64 %i.z, %i.aa
  %i.ac = inttoptr i64 %i.ab to ptr
  %i.ad = load i64, ptr %i.ac, align 8
  %i.ae = icmp eq i64 %i.ad, %1
  br i1 %i.ae, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.af = load atomic volatile i32, ptr %i.c monotonic, align 4, !noalias !647
  %i.ag = and i32 %i.af, 15
  %i.ah = icmp eq i32 %i.ag, 5
  %i.ai = select i1 %i.ah, i64 56, i64 48
  %5 = add nsw i64 %4, %3
  %i.aj = add nsw i64 %5, %i.ai
  %i.ak = load atomic volatile i32, ptr %i.c monotonic, align 4, !noalias !648
  %i.al = lshr i32 %i.ak, 7
  %i.am = and i32 %i.al, 8
  %i.an = load atomic volatile i32, ptr %i.c monotonic, align 4, !noalias !649 ; 0 uses
  %i.ao = trunc i64 %i.aj to i32
  %i.ap = add nuw nsw i32 %i.am, 8
  %i.aq = add i32 %i.ap, %i.ao
  %i.ar = sext i32 %i.aq to i64
  %i.as = add i64 %i.z, %i.ar
  %i.at = inttoptr i64 %i.as to ptr
  %i.au = load i64, ptr %i.at, align 8
  %i.av = lshr i64 %i.au, 32
  %i.aw = trunc nuw i64 %i.av to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi i32 [ %i.aw, %bb.c ], [ -1, %bb.b ], [ -1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress norecurse nounwind memory(readwrite, target_mem: none) uwtable
define hidden noundef range(i32 5, 7) i32 @_ZNK2v88internal9ScopeInfo22ContextLocalNamesIndexEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %.sroa.0.0.copyload.i = load i64, ptr %0, align 8
  %i.a = add i64 %.sroa.0.0.copyload.i, 7
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = load atomic volatile i32, ptr %i.b monotonic, align 4, !noalias !654
  %i.d = and i32 %i.c, 15
  %i.e = icmp eq i32 %i.d, 5
  %.zext = select i1 %i.e, i32 6, i32 5
  ret i32 %.zext
}

; Function Attrs: mustprogress norecurse nounwind memory(readwrite, target_mem: none) uwtable
define hidden noundef range(i32 -268435456, 268435455) i32 @_ZNK2v88internal9ScopeInfo22ContextLocalInfosIndexEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %.sroa.0.0.copyload.i = load i64, ptr %0, align 8 ; 2 uses
  %i.a = add i64 %.sroa.0.0.copyload.i, 7
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = load atomic volatile i32, ptr %i.b monotonic, align 4, !noalias !663
  %i.d = and i32 %i.c, 15
  %i.e = icmp eq i32 %i.d, 5
  %i.f = select i1 %i.e, i64 56, i64 48
  %i.g = add i64 %.sroa.0.0.copyload.i, 23
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = load i64, ptr %i.h, align 8, !noalias !664 ; 3 uses
  %1 = icmp slt i64 %i.i, 322122547200
  %i.j = lshr i64 %i.i, 29
  %2 = and i64 %i.j, 4294967288
  %3 = select i1 %1, i64 %2, i64 322122547200
  %i.k = icmp sgt i64 %i.i, 322122547199
  %i.l = select i1 %i.k, i64 8, i64 0
  %4 = add nuw nsw i64 %i.l, %i.f
  %i.m = add nuw nsw i64 %4, %3
  %i.n = trunc i64 %i.m to i32
  %i.o = add nsw i32 %i.n, -8
  %i.p = ashr exact i32 %i.o, 3
  ret i32 %i.p
}

; Function Attrs: mustprogress norecurse nounwind memory(readwrite, target_mem: none) uwtable
define hidden noundef range(i32 -268435456, 268435455) i32 @_ZNK2v88internal9ScopeInfo27SavedClassVariableInfoIndexEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %.sroa.0.0.copyload.i = load i64, ptr %0, align 8 ; 2 uses
  %i.a = add i64 %.sroa.0.0.copyload.i, 7
  %i.b = inttoptr i64 %i.a to ptr                 ; 2 uses
  %i.c = load atomic volatile i32, ptr %i.b monotonic, align 4, !noalias !675
  %i.d = and i32 %i.c, 15
  %i.e = icmp eq i32 %i.d, 5
  %i.f = select i1 %i.e, i64 56, i64 48
  %i.g = add i64 %.sroa.0.0.copyload.i, 23
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = load i64, ptr %i.h, align 8, !noalias !676 ; 3 uses
  %1 = icmp slt i64 %i.i, 322122547200
  %i.j = ashr i64 %i.i, 29
  %i.k = and i64 %i.j, -8                         ; 2 uses
  %2 = select i1 %1, i64 %i.k, i64 322122547200
  %i.l = icmp sgt i64 %i.i, 322122547199
  %i.m = select i1 %i.l, i64 8, i64 0
  %3 = add nuw nsw i64 %i.m, %i.f
  %i.n = add nsw i64 %3, %i.k
  %i.o = add nsw i64 %i.n, %2
  %i.p = load atomic volatile i32, ptr %i.b monotonic, align 4, !noalias !677 ; 0 uses
  %i.q = trunc i64 %i.o to i32
  %i.r = add nsw i32 %i.q, -8
  %i.s = ashr exact i32 %i.r, 3
  ret i32 %i.s
}

; Function Attrs: mustprogress norecurse nounwind memory(readwrite, target_mem: none) uwtable
define hidden noundef range(i32 -268435456, 268435455) i32 @_ZNK2v88internal9ScopeInfo25FunctionVariableInfoIndexEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %.sroa.0.0.copyload.i = load i64, ptr %0, align 8 ; 2 uses
  %i.a = add i64 %.sroa.0.0.copyload.i, 7
  %i.b = inttoptr i64 %i.a to ptr                 ; 3 uses
  %i.c = load atomic volatile i32, ptr %i.b monotonic, align 4, !noalias !690
  %i.d = and i32 %i.c, 15
  %i.e = icmp eq i32 %i.d, 5
  %i.f = select i1 %i.e, i64 56, i64 48
  %i.g = add i64 %.sroa.0.0.copyload.i, 23
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = load i64, ptr %i.h, align 8, !noalias !691 ; 3 uses
  %1 = icmp slt i64 %i.i, 322122547200
  %i.j = ashr i64 %i.i, 29
  %i.k = and i64 %i.j, -8                         ; 2 uses
  %2 = select i1 %1, i64 %i.k, i64 322122547200
  %i.l = icmp sgt i64 %i.i, 322122547199
  %i.m = select i1 %i.l, i64 8, i64 0
  %3 = add nuw nsw i64 %i.m, %i.f
  %i.n = add nsw i64 %3, %i.k
  %i.o = add nsw i64 %i.n, %2
  %i.p = load atomic volatile i32, ptr %i.b monotonic, align 4, !noalias !692
  %i.q = lshr i32 %i.p, 7
  %i.r = and i32 %i.q, 8
  %i.s = load atomic volatile i32, ptr %i.b monotonic, align 4, !noalias !693 ; 0 uses
  %i.t = trunc i64 %i.o to i32
  %i.u = add nsw i32 %i.r, -8
  %i.v = add i32 %i.u, %i.t
  %i.w = ashr exact i32 %i.v, 3
  ret i32 %i.w
}

; Function Attrs: mustprogress norecurse nounwind memory(readwrite, target_mem: none) uwtable
define hidden noundef range(i32 -268435456, 268435455) i32 @_ZNK2v88internal9ScopeInfo25InferredFunctionNameIndexEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %.sroa.0.0.copyload.i = load i64, ptr %0, align 8 ; 2 uses
  %i.a = add i64 %.sroa.0.0.copyload.i, 7
  %i.b = inttoptr i64 %i.a to ptr                 ; 4 uses
  %i.c = load atomic volatile i32, ptr %i.b monotonic, align 4, !noalias !708
  %i.d = and i32 %i.c, 15
  %i.e = icmp eq i32 %i.d, 5
  %i.f = select i1 %i.e, i64 56, i64 48
  %i.g = add i64 %.sroa.0.0.copyload.i, 23
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = load i64, ptr %i.h, align 8, !noalias !709 ; 3 uses
  %1 = icmp slt i64 %i.i, 322122547200
  %i.j = ashr i64 %i.i, 29
  %i.k = and i64 %i.j, -8                         ; 2 uses
  %2 = select i1 %1, i64 %i.k, i64 322122547200
  %i.l = icmp sgt i64 %i.i, 322122547199
  %i.m = select i1 %i.l, i64 8, i64 0
  %3 = add nuw nsw i64 %i.m, %i.f
  %i.n = add nsw i64 %3, %i.k
  %i.o = add nsw i64 %i.n, %2
  %i.p = load atomic volatile i32, ptr %i.b monotonic, align 4, !noalias !710
  %i.q = lshr i32 %i.p, 7
  %i.r = and i32 %i.q, 8
  %i.s = zext nneg i32 %i.r to i64
  %i.t = add nsw i64 %i.o, %i.s
  %i.u = load atomic volatile i32, ptr %i.b monotonic, align 4, !noalias !711
  %i.v = and i32 %i.u, 12288
  %.not.i.not.i.i = icmp eq i32 %i.v, 0
  %i.w = select i1 %.not.i.not.i.i, i64 0, i64 16
  %i.x = add nsw i64 %i.t, %i.w
  %i.y = load atomic volatile i32, ptr %i.b monotonic, align 4, !noalias !712 ; 0 uses
  %i.z = trunc i64 %i.x to i32
  %i.aa = add nsw i32 %i.z, -8
  %i.ab = sdiv i32 %i.aa, 8
  ret i32 %i.ab
}

; Function Attrs: mustprogress norecurse nounwind memory(readwrite, target_mem: none) uwtable
define hidden noundef range(i32 -268435456, 268435455) i32 @_ZNK2v88internal9ScopeInfo19OuterScopeInfoIndexEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %.sroa.0.0.copyload.i = load i64, ptr %0, align 8 ; 2 uses
  %i.a = add i64 %.sroa.0.0.copyload.i, 7
  %i.b = inttoptr i64 %i.a to ptr                 ; 5 uses
  %i.c = load atomic volatile i32, ptr %i.b monotonic, align 4, !noalias !729
  %i.d = and i32 %i.c, 15
  %i.e = icmp eq i32 %i.d, 5
  %i.f = select i1 %i.e, i64 56, i64 48
  %i.g = add i64 %.sroa.0.0.copyload.i, 23
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = load i64, ptr %i.h, align 8, !noalias !730 ; 3 uses
  %1 = icmp slt i64 %i.i, 322122547200
  %i.j = ashr i64 %i.i, 29
  %i.k = and i64 %i.j, -8                         ; 2 uses
  %2 = select i1 %1, i64 %i.k, i64 322122547200
  %i.l = icmp sgt i64 %i.i, 322122547199
  %i.m = select i1 %i.l, i64 8, i64 0
  %3 = add nuw nsw i64 %i.m, %i.f
  %i.n = add nsw i64 %3, %i.k
  %i.o = add nsw i64 %i.n, %2
  %i.p = load atomic volatile i32, ptr %i.b monotonic, align 4, !noalias !731
  %i.q = lshr i32 %i.p, 7
  %i.r = and i32 %i.q, 8
  %i.s = zext nneg i32 %i.r to i64
  %i.t = add nsw i64 %i.o, %i.s
  %i.u = load atomic volatile i32, ptr %i.b monotonic, align 4, !noalias !732
  %i.v = and i32 %i.u, 12288
  %.not.i.not.i.i.i = icmp eq i32 %i.v, 0
  %i.w = select i1 %.not.i.not.i.i.i, i64 0, i64 16
  %i.x = add nsw i64 %i.t, %i.w
  %i.y = load atomic volatile i32, ptr %i.b monotonic, align 4, !noalias !733
  %i.z = lshr i32 %i.y, 11
  %i.aa = and i32 %i.z, 8
  %i.ab = load atomic volatile i32, ptr %i.b monotonic, align 4, !noalias !734 ; 0 uses
  %i.ac = trunc i64 %i.x to i32
  %i.ad = add nsw i32 %i.aa, -8
  %i.ae = add i32 %i.ad, %i.ac
  %i.af = sdiv i32 %i.ae, 8
  ret i32 %i.af
}

; Function Attrs: mustprogress norecurse nounwind memory(readwrite, target_mem: none) uwtable
define hidden noundef range(i32 -268435456, 268435455) i32 @_ZNK2v88internal9ScopeInfo15ModuleInfoIndexEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %.sroa.0.0.copyload.i = load i64, ptr %0, align 8 ; 2 uses
  %i.a = add i64 %.sroa.0.0.copyload.i, 7
  %i.b = inttoptr i64 %i.a to ptr                 ; 6 uses
  %i.c = load atomic volatile i32, ptr %i.b monotonic, align 4, !noalias !753
  %i.d = and i32 %i.c, 15
  %i.e = icmp eq i32 %i.d, 5
  %i.f = select i1 %i.e, i64 56, i64 48
  %i.g = add i64 %.sroa.0.0.copyload.i, 23
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = load i64, ptr %i.h, align 8, !noalias !754 ; 3 uses
  %1 = icmp slt i64 %i.i, 322122547200
  %i.j = ashr i64 %i.i, 29
  %i.k = and i64 %i.j, -8                         ; 2 uses
  %2 = select i1 %1, i64 %i.k, i64 322122547200
  %i.l = icmp sgt i64 %i.i, 322122547199
  %i.m = select i1 %i.l, i64 8, i64 0
  %3 = add nuw nsw i64 %i.m, %i.f
  %i.n = add nsw i64 %3, %i.k
  %i.o = add nsw i64 %i.n, %2
  %i.p = load atomic volatile i32, ptr %i.b monotonic, align 4, !noalias !755
  %i.q = lshr i32 %i.p, 7
  %i.r = and i32 %i.q, 8
  %i.s = zext nneg i32 %i.r to i64
  %i.t = add nsw i64 %i.o, %i.s
  %i.u = load atomic volatile i32, ptr %i.b monotonic, align 4, !noalias !756
  %i.v = and i32 %i.u, 12288
  %.not.i.not.i.i.i.i = icmp eq i32 %i.v, 0
  %i.w = select i1 %.not.i.not.i.i.i.i, i64 0, i64 16
  %i.x = add nsw i64 %i.t, %i.w
  %i.y = load atomic volatile i32, ptr %i.b monotonic, align 4, !noalias !757
  %i.z = lshr i32 %i.y, 11
  %i.aa = and i32 %i.z, 8
  %i.ab = load atomic volatile i32, ptr %i.b monotonic, align 4, !noalias !758
  %i.ac = lshr i32 %i.ab, 19
  %i.ad = and i32 %i.ac, 8
  %i.ae = load atomic volatile i32, ptr %i.b monotonic, align 4, !noalias !759 ; 0 uses
  %i.af = trunc i64 %i.x to i32
  %i.ag = add nsw i32 %i.aa, -8
  %i.ah = add nsw i32 %i.ag, %i.ad
  %i.ai = add i32 %i.ah, %i.af
  %i.aj = sdiv i32 %i.ai, 8
  ret i32 %i.aj
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef i32 @_ZNK2v88internal9ScopeInfo24ModuleVariableCountIndexEv(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #9 align 2 {
bb.a:
  ret i32 5
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef range(i32 -268435456, 268435455) i32 @_ZNK2v88internal9ScopeInfo18DependentCodeIndexEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %.sroa.0.0.copyload.i = load i64, ptr %0, align 8 ; 3 uses
  %i.a = add i64 %.sroa.0.0.copyload.i, 7
  %i.b = inttoptr i64 %i.a to ptr                 ; 9 uses
  %i.c = load atomic volatile i32, ptr %i.b monotonic, align 4, !noalias !784
  %i.d = add i64 %.sroa.0.0.copyload.i, 23
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = load i64, ptr %i.e, align 8, !noalias !785 ; 3 uses
  %i.g = load atomic volatile i32, ptr %i.b monotonic, align 4, !noalias !786
  %i.h = load atomic volatile i32, ptr %i.b monotonic, align 4, !noalias !787
  %i.i = load atomic volatile i32, ptr %i.b monotonic, align 4, !noalias !788
  %i.j = load atomic volatile i32, ptr %i.b monotonic, align 4, !noalias !789
  %i.k = load atomic volatile i32, ptr %i.b monotonic, align 4, !noalias !790
  %i.l = load atomic volatile i32, ptr %i.b monotonic, align 4, !noalias !791
  %i.m = and i32 %i.l, 15
  %i.n = icmp eq i32 %i.m, 5
  br i1 %i.n, label %bb.b, label %_ZNK2v88internal24TorqueGeneratedScopeInfoINS0_9ScopeInfoENS0_10HeapObjectEE19DependentCodeOffsetEv.exit

bb.b:                                             ; preds = %bb.a
  %i.o = load atomic volatile i32, ptr %i.b monotonic, align 4, !noalias !792
  %i.p = and i32 %i.o, 15
  %i.q = icmp eq i32 %i.p, 5
  br i1 %i.q, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.r = add i64 %.sroa.0.0.copyload.i, 47
  %i.s = inttoptr i64 %i.r to ptr
  %i.t = load i64, ptr %i.s, align 8, !noalias !791
  %i.u = ashr i64 %i.t, 32
  %i.v = mul nsw i64 %i.u, 24
  br label %_ZNK2v88internal24TorqueGeneratedScopeInfoINS0_9ScopeInfoENS0_10HeapObjectEE19DependentCodeOffsetEv.exit

bb.d:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #18, !noalias !791
  unreachable

_ZNK2v88internal24TorqueGeneratedScopeInfoINS0_9ScopeInfoENS0_10HeapObjectEE19DependentCodeOffsetEv.exit: ; preds = %bb.a, %bb.c
  %storemerge.i.i.i = phi i64 [ %i.v, %bb.c ], [ 0, %bb.a ]
  %i.w = and i32 %i.k, 15
  %i.x = icmp eq i32 %i.w, 5
  %i.y = select i1 %i.x, i64 8, i64 0
  %1 = icmp sgt i64 %i.f, 322122547199
  %2 = select i1 %1, i64 8, i64 0
  %i.z = and i32 %i.c, 15
  %i.aa = icmp eq i32 %i.z, 5
  %i.ab = select i1 %i.aa, i64 56, i64 48
  %3 = add nuw nsw i64 %2, %i.ab
  %4 = ashr i64 %i.f, 29
  %5 = and i64 %4, -8                             ; 2 uses
  %i.ac = add nsw i64 %3, %5
  %6 = icmp slt i64 %i.f, 322122547200
  %i.ad = select i1 %6, i64 %5, i64 0
  %i.ae = add nsw i64 %i.ac, %i.ad
  %i.af = lshr i32 %i.g, 7
  %i.ag = and i32 %i.af, 8
  %i.ah = zext nneg i32 %i.ag to i64
  %i.ai = add nsw i64 %i.ae, %i.ah
  %i.aj = and i32 %i.h, 12288
  %.not.i.not.i.i.i.i.i.i = icmp eq i32 %i.aj, 0
  %i.ak = select i1 %.not.i.not.i.i.i.i.i.i, i64 0, i64 16
  %i.al = add nsw i64 %i.ai, %i.ak
  %i.am = lshr i32 %i.i, 11
  %i.an = and i32 %i.am, 8
  %i.ao = zext nneg i32 %i.an to i64
  %i.ap = add nsw i64 %i.al, %i.ao
  %i.aq = lshr i32 %i.j, 19
  %i.ar = and i32 %i.aq, 8
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = add nsw i64 %i.ap, %i.as
  %i.au = add nsw i64 %i.at, %i.y
  %i.av = add nsw i64 %i.au, %storemerge.i.i.i
  %i.aw = load atomic volatile i32, ptr %i.b monotonic, align 4, !noalias !793 ; 0 uses
  %i.ax = trunc i64 %i.av to i32
  %i.ay = add nsw i32 %i.ax, -8
  %i.az = sdiv i32 %i.ay, 8
  ret i32 %i.az
}

; Function Attrs: mustprogress norecurse nounwind memory(readwrite, target_mem: none) uwtable
define hidden noundef i32 @_ZN2v88internal9ScopeInfo4HashEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8                ; 4 uses
  %i.b = add i64 %i.a, 7
  %i.c = inttoptr i64 %i.b to ptr                 ; 2 uses
  %i.d = load atomic volatile i32, ptr %i.c monotonic, align 4
  %i.e = and i32 %i.d, 536870912
  %.not.i = icmp eq i32 %i.e, 0
  %i.f = load atomic volatile i32, ptr %i.c monotonic, align 4 ; 4 uses
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = add i64 %i.a, 31
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = load i64, ptr %i.h, align 8
  %i.j = lshr i64 %i.i, 32
  %i.k = trunc nuw i64 %i.j to i32                ; 2 uses
  %i.l = add i64 %i.a, 39
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = load i64, ptr %i.m, align 8
  %i.o = lshr i64 %i.n, 32
  %i.p = trunc nuw i64 %i.o to i32                ; 2 uses
  %i.q = xor i32 %i.f, -1
  %i.r = shl i32 %i.f, 15
  %i.s = add i32 %i.r, %i.q                       ; 2 uses
  %i.t = lshr i32 %i.s, 12
  %i.u = xor i32 %i.t, %i.s
  %i.v = mul i32 %i.u, 5                          ; 2 uses
  %i.w = lshr i32 %i.v, 4
  %i.x = xor i32 %i.w, %i.v
  %i.y = mul i32 %i.x, 2057                       ; 2 uses
  %i.z = lshr i32 %i.y, 16
  %i.aa = xor i32 %i.z, %i.y
  %i.ab = zext i32 %i.aa to i64
  %i.ac = mul i64 %i.ab, -4132994306676758123     ; 2 uses
  %i.ad = lshr i64 %i.ac, 47
  %i.ae = xor i64 %i.ad, %i.ac
  %i.af = mul i64 %i.ae, 3866779316627607737
  %i.ag = xor i32 %i.k, -1
  %i.ah = shl i32 %i.k, 15
  %i.ai = add i32 %i.ah, %i.ag                    ; 2 uses
  %i.aj = lshr i32 %i.ai, 12
  %i.ak = xor i32 %i.aj, %i.ai
  %i.al = mul i32 %i.ak, 5                        ; 2 uses
  %i.am = lshr i32 %i.al, 4
  %i.an = xor i32 %i.am, %i.al
  %i.ao = mul i32 %i.an, 2057                     ; 2 uses
  %i.ap = lshr i32 %i.ao, 16
  %i.aq = xor i32 %i.ap, %i.ao
  %i.ar = zext i32 %i.aq to i64
  %i.as = mul i64 %i.ar, -4132994306676758123     ; 2 uses
  %i.at = lshr i64 %i.as, 47
  %i.au = xor i64 %i.at, %i.as
  %i.av = mul i64 %i.au, -4132994306676758123
  %i.aw = xor i64 %i.av, %i.af
  %i.ax = mul i64 %i.aw, -4132994306676758123
  %i.ay = xor i32 %i.p, -1
  %i.az = shl i32 %i.p, 15
  %i.ba = add i32 %i.az, %i.ay                    ; 2 uses
  %i.bb = lshr i32 %i.ba, 12
  %i.bc = xor i32 %i.bb, %i.ba
  %i.bd = mul i32 %i.bc, 5                        ; 2 uses
  %i.be = lshr i32 %i.bd, 4
  %i.bf = xor i32 %i.be, %i.bd
  %i.bg = mul i32 %i.bf, 2057                     ; 2 uses
  %i.bh = lshr i32 %i.bg, 16
  %i.bi = xor i32 %i.bh, %i.bg
  %i.bj = zext i32 %i.bi to i64
  %i.bk = mul i64 %i.bj, -4132994306676758123     ; 2 uses
  %i.bl = lshr i64 %i.bk, 47
  %i.bm = xor i64 %i.bl, %i.bk
  %i.bn = mul i64 %i.bm, -4132994306676758123
  %i.bo = xor i64 %i.ax, %i.bn
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.bp = add i64 %i.a, 23
  %i.bq = inttoptr i64 %i.bp to ptr
  %i.br = load i64, ptr %i.bq, align 8
  %i.bs = lshr i64 %i.br, 32
  %i.bt = trunc nuw i64 %i.bs to i32              ; 2 uses
  %i.bu = xor i32 %i.f, -1
  %i.bv = shl i32 %i.f, 15
  %i.bw = add i32 %i.bv, %i.bu                    ; 2 uses
  %i.bx = lshr i32 %i.bw, 12
  %i.by = xor i32 %i.bx, %i.bw
  %i.bz = mul i32 %i.by, 5                        ; 2 uses
  %i.ca = lshr i32 %i.bz, 4
  %i.cb = xor i32 %i.ca, %i.bz
  %i.cc = mul i32 %i.cb, 2057                     ; 2 uses
  %i.cd = lshr i32 %i.cc, 16
  %i.ce = xor i32 %i.cd, %i.cc
  %i.cf = zext i32 %i.ce to i64
  %i.cg = mul i64 %i.cf, -4132994306676758123     ; 2 uses
  %i.ch = lshr i64 %i.cg, 47
  %i.ci = xor i64 %i.ch, %i.cg
  %i.cj = mul i64 %i.ci, 3866779316627607737
  %i.ck = xor i32 %i.bt, -1
  %i.cl = shl i32 %i.bt, 15
  %i.cm = add i32 %i.cl, %i.ck                    ; 2 uses
  %i.cn = lshr i32 %i.cm, 12
  %i.co = xor i32 %i.cn, %i.cm
  %i.cp = mul i32 %i.co, 5                        ; 2 uses
  %i.cq = lshr i32 %i.cp, 4
  %i.cr = xor i32 %i.cq, %i.cp
  %i.cs = mul i32 %i.cr, 2057                     ; 2 uses
  %i.ct = lshr i32 %i.cs, 16
  %i.cu = xor i32 %i.ct, %i.cs
  %i.cv = zext i32 %i.cu to i64
  %i.cw = mul i64 %i.cv, -4132994306676758123     ; 2 uses
  %i.cx = lshr i64 %i.cw, 47
  %i.cy = xor i64 %i.cx, %i.cw
  %i.cz = mul i64 %i.cy, -4132994306676758123
  %i.da = xor i64 %i.cz, %i.cj
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0.in.in = phi i64 [ %i.bo, %bb.b ], [ %i.da, %bb.c ]
  %i.db = trunc i64 %.0.in.in to i32
  %.0 = mul i32 %i.db, 1540483477
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZN2v88internallsERSoNS0_22VariableAllocationInfoE(ptr noundef nonnull returned align 8 dereferenceable(8) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  switch i32 %1, label %bb.f [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.3, i64 noundef 4) #17 ; 0 uses
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.4, i64 noundef 5) #17 ; 0 uses
  br label %bb.g

bb.d:                                             ; preds = %bb.a
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.5, i64 noundef 7) #17 ; 0 uses
  br label %bb.g

bb.e:                                             ; preds = %bb.a
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.6, i64 noundef 6) #17 ; 0 uses
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #18
  unreachable

bb.g:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  ret ptr %0
}

; Function Attrs: mustprogress norecurse nounwind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden noundef range(i32 -715827882, 715827883) i32 @_ZNK2v88internal20SourceTextModuleInfo18RegularExportCountEv(ptr nofree noundef nonnull align 4 captures(address) dereferenceable(16) %0) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load atomic volatile i64, ptr %i.a monotonic, align 8
  %i.c = add i64 %i.b, -1
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load i64, ptr %i.e, align 8
  %i.g = lshr i64 %i.f, 32
  %i.h = trunc nuw i64 %i.g to i32
  %i.i = sdiv i32 %i.h, 3
  ret i32 %i.i
}

; Function Attrs: mustprogress norecurse nounwind memory(readwrite, target_mem: none) uwtable
end_hunk_4
