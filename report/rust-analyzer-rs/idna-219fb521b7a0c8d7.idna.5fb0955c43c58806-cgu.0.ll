inline.NumInlined: 308
inline.NumDeleted: 136
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvMs2_NtCs8dlYv19QFjS_4idna5uts46NtB5_5Uts4617process_innermost:bb.a

.lr.ph.i.i203.preheader.lr.ph:                    ; preds = %bb.j
  %i.dm = load ptr, ptr %i.s, align 8, !alias.scope !523, !noalias !526, !nonnull !12
  %.sink10.i201 = select i1 %i.dj, ptr %i.dm, ptr %i.s ; 2 uses
  %.idx.i1817 = shl nuw nsw i64 %i.dk, 2
  %i.dn = getelementptr inbounds nuw i8, ptr %.sink10.i201, i64 %.idx.i1817
  br label %.lr.ph.i.i203.preheader

.lr.ph.i.i203.preheader:                          ; preds = %.lr.ph.i.i203.preheader.lr.ph, %.backedge1272
  %i.do = phi ptr [ %i.dn, %.lr.ph.i.i203.preheader.lr.ph ], [ %i.eb, %.backedge1272 ]
  %.lcssa8118218281820 = phi i8 [ %.promoted817, %.lr.ph.i.i203.preheader.lr.ph ], [ %.lcssa811821828.be, %.backedge1272 ] ; 5 uses
  %.sroa.0347.08291819 = phi ptr [ %.sink10.i201, %.lr.ph.i.i203.preheader.lr.ph ], [ %.sroa.0347.1, %.backedge1272 ] ; 7 uses
  %.sroa.6348.08301818 = phi i64 [ %i.dk, %.lr.ph.i.i203.preheader.lr.ph ], [ %.sroa.6348.1, %.backedge1272 ] ; 3 uses
  br label %.lr.ph.i.i203

.lr.ph.i.i203:                                    ; preds = %.lr.ph.i.i203.preheader, %bb.k
  %.sroa.02.07.i.i204 = phi i64 [ %i.dr, %bb.k ], [ 0, %.lr.ph.i.i203.preheader ] ; 4 uses
  %i.dp = phi ptr [ %i.dq, %bb.k ], [ %.sroa.0347.08291819, %.lr.ph.i.i203.preheader ] ; 2 uses
  %.val.i.i205 = load i32, ptr %i.dp, align 4, !range !19, !noalias !528, !noundef !12
  %.not1150.not.not = icmp eq i32 %.val.i.i205, 46 ; 5 uses
  br i1 %.not1150.not.not, label %_RNvMNtCshzWfHUSfYae_4core5sliceSc12split_at_mutCs8dlYv19QFjS_4idna.exit.i, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.i203
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 4 ; 2 uses
  %i.dr = add nuw nsw i64 %.sroa.02.07.i.i204, 1
  %i.ds = icmp eq ptr %i.dq, %i.do
  br i1 %i.ds, label %.loopexit, label %.lr.ph.i.i203

_RNvMNtCshzWfHUSfYae_4core5sliceSc12split_at_mutCs8dlYv19QFjS_4idna.exit.i: ; preds = %.lr.ph.i.i203
  %i.dt = icmp ult i64 %.sroa.02.07.i.i204, %.sroa.6348.08301818
  call void @llvm.assume(i1 %i.dt)
  %i.du = add nuw i64 %.sroa.02.07.i.i204, 1      ; 2 uses
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0347.08291819, i64 %i.du
  %i.dw = sub nuw nsw i64 %.sroa.6348.08301818, %i.du
  br label %.loopexit

.loopexit:                                        ; preds = %bb.k, %_RNvMNtCshzWfHUSfYae_4core5sliceSc12split_at_mutCs8dlYv19QFjS_4idna.exit.i
  %.sroa.0347.1 = phi ptr [ %i.dv, %_RNvMNtCshzWfHUSfYae_4core5sliceSc12split_at_mutCs8dlYv19QFjS_4idna.exit.i ], [ inttoptr (i64 4 to ptr), %bb.k ] ; 2 uses
  %.sroa.6348.1 = phi i64 [ %i.dw, %_RNvMNtCshzWfHUSfYae_4core5sliceSc12split_at_mutCs8dlYv19QFjS_4idna.exit.i ], [ 0, %bb.k ] ; 3 uses
  %.sroa.5.1.i208 = phi i64 [ %.sroa.02.07.i.i204, %_RNvMNtCshzWfHUSfYae_4core5sliceSc12split_at_mutCs8dlYv19QFjS_4idna.exit.i ], [ %.sroa.6348.08301818, %bb.k ] ; 2 uses
  %.not160 = icmp eq i64 %.sroa.5.1.i208, 0
  br i1 %.not160, label %.backedge, label %bb.m

bb.l:                                             ; preds = %bb.ac, %bb.bn, %bb.as, %bb.az, %bb.bb, %bb.bd, %bb.s, %bb.ce, %bb.ct, %_RNvNtCs8dlYv19QFjS_4idna5uts4613check_hyphens.exit.thread458, %bb.gy, %bb.di, %_RNvMs2_NtCs8dlYv19QFjS_4idna5uts46NtB5_5Uts467is_bidi.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  ret void

bb.m:                                             ; preds = %.loopexit
  %i.dx = getelementptr inbounds nuw i8, ptr %.sroa.0347.08291819, i64 4 ; 2 uses
  %i.dy = load i32, ptr %.sroa.0347.08291819, align 4, !range !19, !noundef !12 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !533)
  %i.dz = load i8, ptr %i.bw, align 8, !range !13, !alias.scope !533, !noundef !12
  %i.ea = trunc nuw i8 %i.dz to i1
  %..i193 = select i1 %i.ea, i32 4095, i32 65535
  %.not.i194.not = icmp samesign ugt i32 %i.dy, %..i193
  br i1 %.not.i194.not, label %bb.o, label %bb.n

.backedge:                                        ; preds = %bb.t, %bb.bl, %bb.r, %.loopexit, %._crit_edge807.thread, %bb.bg
  %.lcssa811819 = phi i8 [ %.lcssa811818, %bb.bg ], [ %.lcssa8118218281820, %.loopexit ], [ %.lcssa8118218281820, %bb.r ], [ %.lcssa1169, %._crit_edge807.thread ], [ %i.ll, %bb.bl ], [ %.lcssa8118218281820, %bb.t ] ; 2 uses
  br i1 %.not1150.not.not, label %.backedge1272, label %_RNvMs2_NtCs8dlYv19QFjS_4idna5uts46NtB5_5Uts467is_bidi.exit.loopexit

.backedge1272:                                    ; preds = %.backedge, %.split, %.split1165, %._crit_edge807.thread.thread
  %.lcssa811821828.be = phi i8 [ %.lcssa811819, %.backedge ], [ 1, %.split ], [ 1, %.split1165 ], [ %.lcssa1169.ph, %._crit_edge807.thread.thread ] ; 2 uses
  %.idx.i = shl nuw nsw i64 %.sroa.6348.1, 2
  %i.eb = getelementptr inbounds nuw i8, ptr %.sroa.0347.1, i64 %.idx.i
  %i.ec = icmp eq i64 %.sroa.6348.1, 0
  br i1 %i.ec, label %_RNvMs2_NtCs8dlYv19QFjS_4idna5uts46NtB5_5Uts467is_bidi.exit.loopexit, label %.lr.ph.i.i203.preheader

bb.n:                                             ; preds = %bb.m
  %i.ed = lshr i32 %i.dy, 6
  %i.ee = zext nneg i32 %i.ed to i64              ; 2 uses
  %i.ef = load ptr, ptr %i.bv, align 8, !alias.scope !533, !nonnull !12, !noundef !12
  %i.eg = load i64, ptr %i.bx, align 8, !alias.scope !533, !noundef !12
  %i.eh = icmp ugt i64 %i.eg, %i.ee
  call void @llvm.assume(i1 %i.eh)
  %i.ei = getelementptr inbounds nuw [2 x i8], ptr %i.ef, i64 %i.ee
  %.sroa.02.0.copyload.i196 = load i16, ptr %i.ei, align 1, !noalias !533
  %i.ej = zext i16 %.sroa.02.0.copyload.i196 to i64
  %i.ek = and i32 %i.dy, 63
  %i.el = zext nneg i32 %i.ek to i64
  %i.em = add nuw nsw i64 %i.ej, %i.el            ; 2 uses
  %i.en = load ptr, ptr %i.by, align 8, !alias.scope !533, !nonnull !12, !noundef !12
  %i.eo = load i64, ptr %i.bz, align 8, !alias.scope !533, !noundef !12
  %i.ep = icmp ult i64 %i.em, %i.eo
  call void @llvm.assume(i1 %i.ep)
  %i.eq = getelementptr inbounds nuw i8, ptr %i.en, i64 %i.em
  %i.er = load i8, ptr %i.eq, align 1, !noalias !533, !noundef !12
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.es = call noundef i8 @_RNvMs_NtNtCs20C9KvGHlPa_15icu_collections13codepointtrie6cptrieINtB4_13CodePointTrieNtNtCskcAkE2pR8X1_14icu_properties5props9BidiClassE20get32_by_small_indexCs8dlYv19QFjS_4idna(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.bv, i32 noundef range(i32 0, 1114112) %i.dy) #13
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.sroa.0122.0 = phi i8 [ %i.er, %bb.n ], [ %i.es, %bb.o ] ; 2 uses
  %i.et = and i8 %.sroa.0122.0, 31
  %i.eu = zext nneg i8 %i.et to i32
  %i.ev = shl nuw i32 1, %i.eu
  %i.ew = and i32 %i.ev, 8195
  %.not161 = icmp eq i32 %i.ew, 0
  br i1 %.not161, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  br i1 %6, label %bb.s, label %.split

bb.r:                                             ; preds = %bb.p
  %i.ex = icmp eq i8 %.sroa.0122.0, 0
  %.sroa.9.01812 = add i64 %.sroa.5.1.i208, -1    ; 2 uses
  %.not1621813 = icmp eq i64 %.sroa.9.01812, 0
  br i1 %.not1621813, label %.backedge, label %.lr.ph1816

.split:                                           ; preds = %bb.q
  store i32 65533, ptr %.sroa.0347.08291819, align 4
  br i1 %.not1150.not.not, label %.backedge1272, label %_RNvMs2_NtCs8dlYv19QFjS_4idna5uts46NtB5_5Uts467is_bidi.exit.loopexit

bb.s:                                             ; preds = %bb.q
  store i128 4722366482869645213696, ptr %0, align 8
  br label %bb.l

bb.t:                                             ; preds = %bb.w
  %.sroa.9.0 = add i64 %.sroa.9.01814, -1         ; 2 uses
  %.not162 = icmp eq i64 %.sroa.9.0, 0
  br i1 %.not162, label %.backedge, label %.lr.ph1816

.lr.ph1816:                                       ; preds = %bb.r, %bb.t
  %.sroa.9.01814 = phi i64 [ %.sroa.9.0, %bb.t ], [ %.sroa.9.01812, %bb.r ] ; 3 uses
  %i.ey = getelementptr [4 x i8], ptr %.sroa.0347.08291819, i64 %.sroa.9.01814
  %i.ez = load i32, ptr %i.ey, align 4, !range !19, !noundef !12 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !536)
  %i.fa = load i8, ptr %i.bw, align 8, !range !13, !alias.scope !536, !noundef !12
  %i.fb = trunc nuw i8 %i.fa to i1
  %..i188 = select i1 %i.fb, i32 4095, i32 65535
  %.not.i189.not = icmp samesign ugt i32 %i.ez, %..i188
  br i1 %.not.i189.not, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.lr.ph1816
  %i.fc = lshr i32 %i.ez, 6
  %i.fd = zext nneg i32 %i.fc to i64              ; 2 uses
  %i.fe = load ptr, ptr %i.bv, align 8, !alias.scope !536, !nonnull !12, !noundef !12
  %i.ff = load i64, ptr %i.bx, align 8, !alias.scope !536, !noundef !12
  %i.fg = icmp ugt i64 %i.ff, %i.fd
  call void @llvm.assume(i1 %i.fg)
  %i.fh = getelementptr inbounds nuw [2 x i8], ptr %i.fe, i64 %i.fd
  %.sroa.02.0.copyload.i191 = load i16, ptr %i.fh, align 1, !noalias !536
  %i.fi = zext i16 %.sroa.02.0.copyload.i191 to i64
  %i.fj = and i32 %i.ez, 63
  %i.fk = zext nneg i32 %i.fj to i64
  %i.fl = add nuw nsw i64 %i.fi, %i.fk            ; 2 uses
  %i.fm = load ptr, ptr %i.by, align 8, !alias.scope !536, !nonnull !12, !noundef !12
  %i.fn = load i64, ptr %i.bz, align 8, !alias.scope !536, !noundef !12
  %i.fo = icmp ult i64 %i.fl, %i.fn
  call void @llvm.assume(i1 %i.fo)
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fm, i64 %i.fl
  %i.fq = load i8, ptr %i.fp, align 1, !noalias !536, !noundef !12
  br label %bb.w

bb.v:                                             ; preds = %.lr.ph1816
  %i.fr = call noundef i8 @_RNvMs_NtNtCs20C9KvGHlPa_15icu_collections13codepointtrie6cptrieINtB4_13CodePointTrieNtNtCskcAkE2pR8X1_14icu_properties5props9BidiClassE20get32_by_small_indexCs8dlYv19QFjS_4idna(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.bv, i32 noundef range(i32 0, 1114112) %i.ez) #13
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.sroa.0129.0 = phi i8 [ %i.fq, %bb.u ], [ %i.fr, %bb.v ] ; 4 uses
  %i.fs = icmp eq i8 %.sroa.0129.0, 17
  br i1 %i.fs, label %bb.t, label %bb.x

bb.x:                                             ; preds = %bb.w
  %.idx836 = shl i64 %.sroa.9.01814, 2            ; 3 uses
  %i.ft = getelementptr i8, ptr %.sroa.0347.08291819, i64 %.idx836 ; 8 uses
  %i.fu = and i8 %.sroa.0129.0, 31
  %i.fv = zext nneg i8 %i.fu to i32
  %i.fw = shl nuw i32 1, %i.fv                    ; 2 uses
  br i1 %i.ex, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.fx = and i32 %i.fw, 8230
  %.not163 = icmp eq i32 %i.fx, 0
  br i1 %.not163, label %bb.aa, label %bb.ad

bb.z:                                             ; preds = %bb.x
  %i.fy = and i32 %i.fw, 5
  %.not165 = icmp eq i32 %i.fy, 0
  br i1 %.not165, label %bb.be, label %bb.bg

bb.aa:                                            ; preds = %bb.y
  br i1 %6, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  store i32 65533, ptr %i.ft, align 4
  br label %bb.ad

bb.ac:                                            ; preds = %bb.be, %bb.aa
  store i128 4722366482869645213696, ptr %0, align 8
  br label %bb.l

bb.ad:                                            ; preds = %bb.y, %bb.ab
  %.lcssa811822 = phi i8 [ %.lcssa8118218281820, %bb.y ], [ 1, %bb.ab ] ; 2 uses
  %i.fz = icmp eq i64 %.idx836, 4
  br i1 %i.fz, label %._crit_edge807.thread.thread, label %.lr.ph806.jt0

.lr.ph806:                                        ; preds = %11
  %i.ga = getelementptr inbounds nuw i8, ptr %i.jv, i64 4 ; 6 uses
  %i.gb = load i32, ptr %i.jv, align 4, !range !19, !noundef !12 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !539)
  %i.gc = load i8, ptr %i.bw, align 8, !range !13, !alias.scope !539, !noundef !12
  %i.gd = trunc nuw i8 %i.gc to i1
  %..i183 = select i1 %i.gd, i32 4095, i32 65535
  %.not.i184.not = icmp samesign ugt i32 %i.gb, %..i183
  br i1 %.not.i184.not, label %bb.ai, label %bb.ae

.lr.ph806.jt0:                                    ; preds = %bb.ad, %switch.select461.si.unfold.false.jt0
  %.sroa.0100.0804.jt0 = phi ptr [ %i.kb, %switch.select461.si.unfold.false.jt0 ], [ %i.dx, %bb.ad ] ; 3 uses
  %i.ge = phi i8 [ %i.kc, %switch.select461.si.unfold.false.jt0 ], [ %.lcssa811822, %bb.ad ]
  %i.gf = getelementptr inbounds nuw i8, ptr %.sroa.0100.0804.jt0, i64 4 ; 2 uses
  %i.gg = load i32, ptr %.sroa.0100.0804.jt0, align 4, !range !19, !noundef !12 ; 4 uses
  %i.gh = load i8, ptr %i.bw, align 8, !range !13, !alias.scope !542, !noundef !12
  %i.gi = trunc nuw i8 %i.gh to i1
  %..i183.jt0 = select i1 %i.gi, i32 4095, i32 65535
  %.not.i184.not.jt0 = icmp samesign ugt i32 %i.gg, %..i183.jt0
  br i1 %.not.i184.not.jt0, label %bb.aj, label %bb.af

.lr.ph806.jt2:                                    ; preds = %bb.at
  %i.gj = getelementptr inbounds nuw i8, ptr %i.jx, i64 4 ; 3 uses
  %i.gk = load i32, ptr %i.jx, align 4, !range !19, !noundef !12 ; 4 uses
  %i.gl = load i8, ptr %i.bw, align 8, !range !13, !alias.scope !544, !noundef !12
  %i.gm = trunc nuw i8 %i.gl to i1
  %..i183.jt2 = select i1 %i.gm, i32 4095, i32 65535
  %.not.i184.not.jt2 = icmp samesign ugt i32 %i.gk, %..i183.jt2
  br i1 %.not.i184.not.jt2, label %bb.ak, label %bb.ag

.lr.ph806.jt1:                                    ; preds = %bb.au
  %i.gn = getelementptr inbounds nuw i8, ptr %i.jz, i64 4 ; 3 uses
  %i.go = load i32, ptr %i.jz, align 4, !range !19, !noundef !12 ; 4 uses
  %i.gp = load i8, ptr %i.bw, align 8, !range !13, !alias.scope !546, !noundef !12
  %i.gq = trunc nuw i8 %i.gp to i1
  %..i183.jt1 = select i1 %i.gq, i32 4095, i32 65535
  %.not.i184.not.jt1 = icmp samesign ugt i32 %i.go, %..i183.jt1
  br i1 %.not.i184.not.jt1, label %bb.al, label %bb.ah

._crit_edge807:                                   ; preds = %11, %bb.au
  %.lcssa = phi i8 [ %.ph1262, %bb.au ], [ 1, %11 ]
  %.sroa.097.0.lcssa = phi i8 [ 1, %bb.au ], [ %.sroa.097.08031156.ph, %11 ] ; 2 uses
  %i.gr = icmp eq i8 %.sroa.097.0.lcssa, 1
  %i.gs = icmp eq i8 %.sroa.0129.0, 5
  %or.cond = and i1 %i.gs, %i.gr
  br i1 %or.cond, label %bb.bc, label %._crit_edge807.thread

bb.ae:                                            ; preds = %.lr.ph806
  %i.gt = lshr i32 %i.gb, 6
  %i.gu = zext nneg i32 %i.gt to i64              ; 2 uses
  %i.gv = load ptr, ptr %i.bv, align 8, !alias.scope !539, !nonnull !12, !noundef !12
  %i.gw = load i64, ptr %i.bx, align 8, !alias.scope !539, !noundef !12
  %i.gx = icmp ugt i64 %i.gw, %i.gu
  call void @llvm.assume(i1 %i.gx)
  %i.gy = getelementptr inbounds nuw [2 x i8], ptr %i.gv, i64 %i.gu
  %.sroa.02.0.copyload.i186 = load i16, ptr %i.gy, align 1, !noalias !539
  %i.gz = zext i16 %.sroa.02.0.copyload.i186 to i64
  %i.ha = and i32 %i.gb, 63
  %i.hb = zext nneg i32 %i.ha to i64
  %i.hc = add nuw nsw i64 %i.gz, %i.hb            ; 2 uses
  %i.hd = load ptr, ptr %i.by, align 8, !alias.scope !539, !nonnull !12, !noundef !12
  %i.he = load i64, ptr %i.bz, align 8, !alias.scope !539, !noundef !12
  %i.hf = icmp ult i64 %i.hc, %i.he
  call void @llvm.assume(i1 %i.hf)
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hd, i64 %i.hc
  %i.hh = load i8, ptr %i.hg, align 1, !noalias !539, !noundef !12
  br label %bb.am

bb.af:                                            ; preds = %.lr.ph806.jt0
  %i.hi = lshr i32 %i.gg, 6
  %i.hj = zext nneg i32 %i.hi to i64              ; 2 uses
  %i.hk = load ptr, ptr %i.bv, align 8, !alias.scope !539, !nonnull !12, !noundef !12
  %i.hl = load i64, ptr %i.bx, align 8, !alias.scope !539, !noundef !12
  %i.hm = icmp ugt i64 %i.hl, %i.hj
  call void @llvm.assume(i1 %i.hm)
  %i.hn = getelementptr inbounds nuw [2 x i8], ptr %i.hk, i64 %i.hj
  %.sroa.02.0.copyload.i186.jt0 = load i16, ptr %i.hn, align 1, !noalias !539
  %i.ho = zext i16 %.sroa.02.0.copyload.i186.jt0 to i64
  %i.hp = and i32 %i.gg, 63
  %i.hq = zext nneg i32 %i.hp to i64
  %i.hr = add nuw nsw i64 %i.ho, %i.hq            ; 2 uses
  %i.hs = load ptr, ptr %i.by, align 8, !alias.scope !539, !nonnull !12, !noundef !12
  %i.ht = load i64, ptr %i.bz, align 8, !alias.scope !539, !noundef !12
  %i.hu = icmp ult i64 %i.hr, %i.ht
  call void @llvm.assume(i1 %i.hu)
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hs, i64 %i.hr
  %i.hw = load i8, ptr %i.hv, align 1, !noalias !539, !noundef !12
  br label %bb.an

bb.ag:                                            ; preds = %.lr.ph806.jt2
  %i.hx = lshr i32 %i.gk, 6
  %i.hy = zext nneg i32 %i.hx to i64              ; 2 uses
  %i.hz = load ptr, ptr %i.bv, align 8, !alias.scope !539, !nonnull !12, !noundef !12
  %i.ia = load i64, ptr %i.bx, align 8, !alias.scope !539, !noundef !12
  %i.ib = icmp ugt i64 %i.ia, %i.hy
  call void @llvm.assume(i1 %i.ib)
  %i.ic = getelementptr inbounds nuw [2 x i8], ptr %i.hz, i64 %i.hy
  %.sroa.02.0.copyload.i186.jt2 = load i16, ptr %i.ic, align 1, !noalias !539
  %i.id = zext i16 %.sroa.02.0.copyload.i186.jt2 to i64
  %i.ie = and i32 %i.gk, 63
  %i.if = zext nneg i32 %i.ie to i64
  %i.ig = add nuw nsw i64 %i.id, %i.if            ; 2 uses
  %i.ih = load ptr, ptr %i.by, align 8, !alias.scope !539, !nonnull !12, !noundef !12
  %i.ii = load i64, ptr %i.bz, align 8, !alias.scope !539, !noundef !12
  %i.ij = icmp ult i64 %i.ig, %i.ii
  call void @llvm.assume(i1 %i.ij)
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ih, i64 %i.ig
  %i.il = load i8, ptr %i.ik, align 1, !noalias !539, !noundef !12
  br label %bb.ao

bb.ah:                                            ; preds = %.lr.ph806.jt1
  %i.im = lshr i32 %i.go, 6
  %i.in = zext nneg i32 %i.im to i64              ; 2 uses
  %i.io = load ptr, ptr %i.bv, align 8, !alias.scope !539, !nonnull !12, !noundef !12
  %i.ip = load i64, ptr %i.bx, align 8, !alias.scope !539, !noundef !12
  %i.iq = icmp ugt i64 %i.ip, %i.in
  call void @llvm.assume(i1 %i.iq)
  %i.ir = getelementptr inbounds nuw [2 x i8], ptr %i.io, i64 %i.in
  %.sroa.02.0.copyload.i186.jt1 = load i16, ptr %i.ir, align 1, !noalias !539
  %i.is = zext i16 %.sroa.02.0.copyload.i186.jt1 to i64
  %i.it = and i32 %i.go, 63
  %i.iu = zext nneg i32 %i.it to i64
  %i.iv = add nuw nsw i64 %i.is, %i.iu            ; 2 uses
  %i.iw = load ptr, ptr %i.by, align 8, !alias.scope !539, !nonnull !12, !noundef !12
  %i.ix = load i64, ptr %i.bz, align 8, !alias.scope !539, !noundef !12
  %i.iy = icmp ult i64 %i.iv, %i.ix
  call void @llvm.assume(i1 %i.iy)
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iw, i64 %i.iv
  %i.ja = load i8, ptr %i.iz, align 1, !noalias !539, !noundef !12
  br label %bb.ap

bb.ai:                                            ; preds = %.lr.ph806
  %i.jb = call noundef i8 @_RNvMs_NtNtCs20C9KvGHlPa_15icu_collections13codepointtrie6cptrieINtB4_13CodePointTrieNtNtCskcAkE2pR8X1_14icu_properties5props9BidiClassE20get32_by_small_indexCs8dlYv19QFjS_4idna(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.bv, i32 noundef range(i32 0, 1114112) %i.gb) #13
  br label %bb.am

bb.aj:                                            ; preds = %.lr.ph806.jt0
  %i.jc = call noundef i8 @_RNvMs_NtNtCs20C9KvGHlPa_15icu_collections13codepointtrie6cptrieINtB4_13CodePointTrieNtNtCskcAkE2pR8X1_14icu_properties5props9BidiClassE20get32_by_small_indexCs8dlYv19QFjS_4idna(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.bv, i32 noundef range(i32 0, 1114112) %i.gg) #13
  br label %bb.an

bb.ak:                                            ; preds = %.lr.ph806.jt2
  %i.jd = call noundef i8 @_RNvMs_NtNtCs20C9KvGHlPa_15icu_collections13codepointtrie6cptrieINtB4_13CodePointTrieNtNtCskcAkE2pR8X1_14icu_properties5props9BidiClassE20get32_by_small_indexCs8dlYv19QFjS_4idna(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.bv, i32 noundef range(i32 0, 1114112) %i.gk) #13
  br label %bb.ao

bb.al:                                            ; preds = %.lr.ph806.jt1
  %i.je = call noundef i8 @_RNvMs_NtNtCs20C9KvGHlPa_15icu_collections13codepointtrie6cptrieINtB4_13CodePointTrieNtNtCskcAkE2pR8X1_14icu_properties5props9BidiClassE20get32_by_small_indexCs8dlYv19QFjS_4idna(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.bv, i32 noundef range(i32 0, 1114112) %i.go) #13
  br label %bb.ap

bb.am:                                            ; preds = %bb.ai, %bb.ae
  %.sroa.0141.0 = phi i8 [ %i.hh, %bb.ae ], [ %i.jb, %bb.ai ] ; 4 uses
  %i.jf = and i8 %.sroa.0141.0, 31
  %i.jg = zext nneg i8 %i.jf to i32
  %i.jh = shl nuw i32 1, %i.jg
  %i.ji = and i32 %i.jh, 402558
  %.not164 = icmp eq i32 %i.ji, 0
  br i1 %.not164, label %bb.aq, label %bb.ar

bb.an:                                            ; preds = %bb.af, %bb.aj
  %.sroa.0141.0.jt0 = phi i8 [ %i.jc, %bb.aj ], [ %i.hw, %bb.af ] ; 2 uses
  %i.jj = and i8 %.sroa.0141.0.jt0, 31
  %i.jk = zext nneg i8 %i.jj to i32
  %i.jl = shl nuw i32 1, %i.jk
  %i.jm = and i32 %i.jl, 402558
  %.not164.jt0 = icmp eq i32 %i.jm, 0
  br i1 %.not164.jt0, label %.preheader1268, label %bb.av

bb.ao:                                            ; preds = %bb.ag, %bb.ak
  %.sroa.0141.0.jt2 = phi i8 [ %i.jd, %bb.ak ], [ %i.il, %bb.ag ] ; 2 uses
  %i.jn = and i8 %.sroa.0141.0.jt2, 31
  %i.jo = zext nneg i8 %i.jn to i32
  %i.jp = shl nuw i32 1, %i.jo
  %i.jq = and i32 %i.jp, 402558
  %.not164.jt2 = icmp eq i32 %i.jq, 0
  br i1 %.not164.jt2, label %.preheader1268, label %bb.ax

bb.ap:                                            ; preds = %bb.ah, %bb.al
  %.sroa.0141.0.jt1 = phi i8 [ %i.je, %bb.al ], [ %i.ja, %bb.ah ] ; 2 uses
  %i.jr = and i8 %.sroa.0141.0.jt1, 31
  %i.js = zext nneg i8 %i.jr to i32
  %i.jt = shl nuw i32 1, %i.js
  %i.ju = and i32 %i.jt, 402558
  %.not164.jt1 = icmp eq i32 %i.ju, 0
  br i1 %.not164.jt1, label %.preheader1268, label %bb.aw

.preheader1268:                                   ; preds = %bb.ao, %bb.ap, %bb.an
  %.ph1269 = phi ptr [ %i.gn, %bb.ap ], [ %i.gf, %bb.an ], [ %i.gj, %bb.ao ]
  %.sroa.097.08031156.ph = phi i8 [ 1, %bb.ap ], [ 0, %bb.an ], [ 2, %bb.ao ] ; 2 uses
  %.sroa.0100.08041153.ph = phi ptr [ %i.jz, %bb.ap ], [ %.sroa.0100.0804.jt0, %bb.an ], [ %i.jx, %bb.ao ]
  br label %bb.aq

bb.aq:                                            ; preds = %.preheader1268, %bb.am
  %i.jv = phi ptr [ %i.ga, %bb.am ], [ %.ph1269, %.preheader1268 ] ; 6 uses
  %.sroa.0100.08041153 = phi ptr [ %i.jv, %bb.am ], [ %.sroa.0100.08041153.ph, %.preheader1268 ]
  br i1 %6, label %bb.as, label %11

bb.ar:                                            ; preds = %bb.am
  switch i8 %.sroa.097.08031156.ph, label %default.unreachable [
    i8 0, label %bb.av
    i8 1, label %.thread
    i8 2, label %.thread1178
  ]

11:                                               ; preds = %bb.aq
  store i32 65533, ptr %.sroa.0100.08041153, align 4
  %12 = icmp eq ptr %i.jv, %i.ft
  br i1 %12, label %._crit_edge807, label %.lr.ph806

bb.as:                                            ; preds = %bb.aq
  store i128 4722366482869645213696, ptr %0, align 8
  br label %bb.l

switch.select461.si.unfold.false.jt0:             ; preds = %bb.av
  %i.jw = icmp eq ptr %i.kb, %i.ft
  br i1 %i.jw, label %._crit_edge807.thread.thread, label %.lr.ph806.jt0

bb.at:                                            ; preds = %.preheader1264, %bb.ax
  %i.jx = phi ptr [ %i.gj, %bb.ax ], [ %.ph1265, %.preheader1264 ] ; 5 uses
  %i.jy = icmp eq ptr %i.jx, %i.ft
  br i1 %i.jy, label %._crit_edge807.thread, label %.lr.ph806.jt2

bb.au:                                            ; preds = %.preheader, %bb.aw
  %i.jz = phi ptr [ %i.gn, %bb.aw ], [ %.ph, %.preheader ] ; 5 uses
  %i.ka = icmp eq ptr %i.jz, %i.ft
  br i1 %i.ka, label %._crit_edge807, label %.lr.ph806.jt1

default.unreachable:                              ; preds = %bb.ar
  unreachable

bb.av:                                            ; preds = %bb.an, %bb.ar
  %.sroa.0141.01157 = phi i8 [ %.sroa.0141.0, %bb.ar ], [ %.sroa.0141.0.jt0, %bb.an ]
  %i.kb = phi ptr [ %i.ga, %bb.ar ], [ %i.gf, %bb.an ] ; 4 uses
  %i.kc = phi i8 [ 1, %bb.ar ], [ %i.ge, %bb.an ] ; 4 uses
  switch i8 %.sroa.0141.01157, label %switch.select461.si.unfold.false.jt0 [
    i8 2, label %.preheader
    i8 5, label %.preheader1264
  ]

.preheader:                                       ; preds = %bb.av, %.thread1175, %.thread
  %.ph = phi ptr [ %i.ga, %.thread ], [ %i.kb, %bb.av ], [ %i.kh, %.thread1175 ]
  %.ph1262 = phi i8 [ 1, %.thread ], [ %i.kc, %bb.av ], [ 1, %.thread1175 ]
  br label %bb.au

bb.aw:                                            ; preds = %bb.ap
  %i.kd = icmp eq i8 %.sroa.0141.0.jt1, 5
  br i1 %i.kd, label %bb.ay, label %bb.au

.thread:                                          ; preds = %bb.ar
  %i.ke = icmp eq i8 %.sroa.0141.0, 5
  br i1 %i.ke, label %.thread1175, label %.preheader

bb.ax:                                            ; preds = %bb.ao
  %i.kf = icmp eq i8 %.sroa.0141.0.jt2, 2
  br i1 %i.kf, label %bb.ba, label %bb.at

.thread1178:                                      ; preds = %bb.ar
  %i.kg = icmp eq i8 %.sroa.0141.0, 2
  br i1 %i.kg, label %.thread1182, label %.preheader1264

.preheader1264:                                   ; preds = %bb.av, %.thread1182, %.thread1178
  %.ph1265 = phi ptr [ %i.ga, %.thread1178 ], [ %i.ki, %.thread1182 ], [ %i.kb, %bb.av ]
  %.ph1266 = phi i8 [ 1, %.thread1178 ], [ 1, %.thread1182 ], [ %i.kc, %bb.av ]
  br label %bb.at

bb.ay:                                            ; preds = %bb.aw
  br i1 %6, label %bb.az, label %.thread1175

.thread1175:                                      ; preds = %.thread, %bb.ay
  %i.kh = phi ptr [ %i.gn, %bb.ay ], [ %i.ga, %.thread ]
  %.sroa.0100.0804115411741177 = phi ptr [ %i.jz, %bb.ay ], [ %i.jv, %.thread ]
  store i32 65533, ptr %.sroa.0100.0804115411741177, align 4
  br label %.preheader

bb.az:                                            ; preds = %bb.ay
  store i128 4722366482869645213696, ptr %0, align 8
  br label %bb.l

bb.ba:                                            ; preds = %bb.ax
  br i1 %6, label %bb.bb, label %.thread1182

.thread1182:                                      ; preds = %.thread1178, %bb.ba
  %i.ki = phi ptr [ %i.gj, %bb.ba ], [ %i.ga, %.thread1178 ]
  %.sroa.0100.0804115511811184 = phi ptr [ %i.jx, %bb.ba ], [ %i.jv, %.thread1178 ]
  store i32 65533, ptr %.sroa.0100.0804115511811184, align 4
  br label %.preheader1264

bb.bb:                                            ; preds = %bb.ba
  store i128 4722366482869645213696, ptr %0, align 8
  br label %bb.l

._crit_edge807.thread.thread:                     ; preds = %switch.select461.si.unfold.false.jt0, %bb.ad
  %.lcssa1169.ph = phi i8 [ %.lcssa811822, %bb.ad ], [ %i.kc, %switch.select461.si.unfold.false.jt0 ] ; 2 uses
  br i1 %.not1150.not.not, label %.backedge1272, label %_RNvMs2_NtCs8dlYv19QFjS_4idna5uts46NtB5_5Uts467is_bidi.exit.loopexit

._crit_edge807.thread:                            ; preds = %bb.at, %._crit_edge807
  %.sroa.097.0.lcssa1171 = phi i8 [ %.sroa.097.0.lcssa, %._crit_edge807 ], [ 2, %bb.at ]
  %.lcssa1169 = phi i8 [ %.lcssa, %._crit_edge807 ], [ %.ph1266, %bb.at ]
  %i.kj = icmp eq i8 %.sroa.097.0.lcssa1171, 2
  %i.kk = icmp eq i8 %.sroa.0129.0, 2
  %or.cond1 = and i1 %i.kk, %i.kj
  br i1 %or.cond1, label %bb.bc, label %.backedge

bb.bc:                                            ; preds = %._crit_edge807.thread, %._crit_edge807
  br i1 %6, label %bb.bd, label %.split1165

.split1165:                                       ; preds = %bb.bc
  store i32 65533, ptr %i.ft, align 4
  br i1 %.not1150.not.not, label %.backedge1272, label %_RNvMs2_NtCs8dlYv19QFjS_4idna5uts46NtB5_5Uts467is_bidi.exit.loopexit

bb.bd:                                            ; preds = %bb.bc
  store i128 4722366482869645213696, ptr %0, align 8
  br label %bb.l

bb.be:                                            ; preds = %bb.z
  br i1 %6, label %bb.ac, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  store i32 65533, ptr %i.ft, align 4
  br label %bb.bg

bb.bg:                                            ; preds = %bb.z, %bb.bf
  %.lcssa811818 = phi i8 [ %.lcssa8118218281820, %bb.z ], [ 1, %bb.bf ] ; 2 uses
  %i.kl = icmp eq i64 %.idx836, 4
  br i1 %i.kl, label %.backedge, label %.lr.ph815

.lr.ph815:                                        ; preds = %bb.bg, %bb.bl
  %.sroa.094.0813 = phi ptr [ %i.kn, %bb.bl ], [ %i.dx, %bb.bg ] ; 3 uses
  %i.km = phi i8 [ %i.ll, %bb.bl ], [ %.lcssa811818, %bb.bg ]
  %i.kn = getelementptr inbounds nuw i8, ptr %.sroa.094.0813, i64 4 ; 2 uses
  %i.ko = load i32, ptr %.sroa.094.0813, align 4, !range !19, !noundef !12 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !548)
  %i.kp = load i8, ptr %i.bw, align 8, !range !13, !alias.scope !548, !noundef !12
  %i.kq = trunc nuw i8 %i.kp to i1
  %..i178 = select i1 %i.kq, i32 4095, i32 65535
  %.not.i179.not = icmp samesign ugt i32 %i.ko, %..i178
  br i1 %.not.i179.not, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %.lr.ph815
  %i.kr = lshr i32 %i.ko, 6
  %i.ks = zext nneg i32 %i.kr to i64              ; 2 uses
  %i.kt = load ptr, ptr %i.bv, align 8, !alias.scope !548, !nonnull !12, !noundef !12
  %i.ku = load i64, ptr %i.bx, align 8, !alias.scope !548, !noundef !12
  %i.kv = icmp ugt i64 %i.ku, %i.ks
  call void @llvm.assume(i1 %i.kv)
  %i.kw = getelementptr inbounds nuw [2 x i8], ptr %i.kt, i64 %i.ks
  %.sroa.02.0.copyload.i181 = load i16, ptr %i.kw, align 1, !noalias !548
  %i.kx = zext i16 %.sroa.02.0.copyload.i181 to i64
  %i.ky = and i32 %i.ko, 63
  %i.kz = zext nneg i32 %i.ky to i64
  %i.la = add nuw nsw i64 %i.kx, %i.kz            ; 2 uses
  %i.lb = load ptr, ptr %i.by, align 8, !alias.scope !548, !nonnull !12, !noundef !12
  %i.lc = load i64, ptr %i.bz, align 8, !alias.scope !548, !noundef !12
  %i.ld = icmp ult i64 %i.la, %i.lc
  call void @llvm.assume(i1 %i.ld)
  %i.le = getelementptr inbounds nuw i8, ptr %i.lb, i64 %i.la
  %i.lf = load i8, ptr %i.le, align 1, !noalias !548, !noundef !12
  br label %bb.bj

bb.bi:                                            ; preds = %.lr.ph815
  %i.lg = call noundef i8 @_RNvMs_NtNtCs20C9KvGHlPa_15icu_collections13codepointtrie6cptrieINtB4_13CodePointTrieNtNtCskcAkE2pR8X1_14icu_properties5props9BidiClassE20get32_by_small_indexCs8dlYv19QFjS_4idna(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.bv, i32 noundef range(i32 0, 1114112) %i.ko) #13
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %.sroa.0137.0 = phi i8 [ %i.lf, %bb.bh ], [ %i.lg, %bb.bi ]
  %i.lh = and i8 %.sroa.0137.0, 31
  %i.li = zext nneg i8 %i.lh to i32
  %i.lj = shl nuw i32 1, %i.li
  %i.lk = and i32 %i.lj, 394333
  %.not166 = icmp eq i32 %i.lk, 0
  br i1 %.not166, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  br i1 %6, label %bb.bn, label %bb.bm

bb.bl:                                            ; preds = %bb.bm, %bb.bj
  %i.ll = phi i8 [ 1, %bb.bm ], [ %i.km, %bb.bj ] ; 2 uses
  %i.lm = icmp eq ptr %i.kn, %i.ft
  br i1 %i.lm, label %.backedge, label %.lr.ph815

bb.bm:                                            ; preds = %bb.bk
  store i32 65533, ptr %.sroa.094.0813, align 4
  br label %bb.bl

bb.bn:                                            ; preds = %bb.bk
  store i128 4722366482869645213696, ptr %0, align 8
  br label %bb.l

_RNvNtCs8dlYv19QFjS_4idna5uts4626is_passthrough_ascii_label.exit.thread: ; preds = %bb.bu, %.thread426, %bb.br, %_RNvNtCs8dlYv19QFjS_4idna5uts4626is_passthrough_ascii_label.exit
  %i.ln = zext i1 %.sroa.07.0781 to i64
  %spec.select465 = add i64 %.sroa.0.0782, %i.ln
  br label %bb.bv

.thread431:                                       ; preds = %_RNvXsf_NtNtCshzWfHUSfYae_4core5slice4iterINtB5_5SplithNCNvMs2_NtCs8dlYv19QFjS_4idna5uts46NtBY_5Uts4617process_innermost0ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextB10_.exit.thread389.thread, %_RNvXsf_NtNtCshzWfHUSfYae_4core5slice4iterINtB5_5SplithNCNvMs2_NtCs8dlYv19QFjS_4idna5uts46NtBY_5Uts4617process_innermost0ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextB10_.exit.thread389
  %.sroa.9.13961202 = phi i1 [ true, %_RNvXsf_NtNtCshzWfHUSfYae_4core5slice4iterINtB5_5SplithNCNvMs2_NtCs8dlYv19QFjS_4idna5uts46NtBY_5Uts4617process_innermost0ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextB10_.exit.thread389.thread ], [ %.not.not.not.not, %_RNvXsf_NtNtCshzWfHUSfYae_4core5slice4iterINtB5_5SplithNCNvMs2_NtCs8dlYv19QFjS_4idna5uts46NtBY_5Uts4617process_innermost0ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextB10_.exit.thread389 ] ; 2 uses
  %.sroa.6.13971198 = phi i64 [ 0, %_RNvXsf_NtNtCshzWfHUSfYae_4core5slice4iterINtB5_5SplithNCNvMs2_NtCs8dlYv19QFjS_4idna5uts46NtBY_5Uts4617process_innermost0ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextB10_.exit.thread389.thread ], [ %.sroa.6.1397, %_RNvXsf_NtNtCshzWfHUSfYae_4core5slice4iterINtB5_5SplithNCNvMs2_NtCs8dlYv19QFjS_4idna5uts46NtBY_5Uts4617process_innermost0ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextB10_.exit.thread389 ] ; 2 uses
  %.sroa.0.13813981194 = phi ptr [ %.sroa.0.0380779, %_RNvXsf_NtNtCshzWfHUSfYae_4core5slice4iterINtB5_5SplithNCNvMs2_NtCs8dlYv19QFjS_4idna5uts46NtBY_5Uts4617process_innermost0ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextB10_.exit.thread389.thread ], [ %.sroa.0.1381398, %_RNvXsf_NtNtCshzWfHUSfYae_4core5slice4iterINtB5_5SplithNCNvMs2_NtCs8dlYv19QFjS_4idna5uts46NtBY_5Uts4617process_innermost0ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextB10_.exit.thread389 ] ; 2 uses
  %.sroa.5.1.i3991191 = phi i64 [ 0, %_RNvXsf_NtNtCshzWfHUSfYae_4core5slice4iterINtB5_5SplithNCNvMs2_NtCs8dlYv19QFjS_4idna5uts46NtBY_5Uts4617process_innermost0ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextB10_.exit.thread389.thread ], [ %.sroa.5.1.i399, %_RNvXsf_NtNtCshzWfHUSfYae_4core5slice4iterINtB5_5SplithNCNvMs2_NtCs8dlYv19QFjS_4idna5uts46NtBY_5Uts4617process_innermost0ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextB10_.exit.thread389 ] ; 2 uses
  br i1 %.sroa.07.0781, label %.thread432, label %bb.bv

bb.bo:                                            ; preds = %_RNvXsf_NtNtCshzWfHUSfYae_4core5slice4iterINtB5_5SplithNCNvMs2_NtCs8dlYv19QFjS_4idna5uts46NtBY_5Uts4617process_innermost0ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextB10_.exit.thread389
  %i.lo = icmp samesign ugt i64 %.sroa.5.1.i399, 3
  br i1 %i.lo, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %.not.i198 = icmp eq i64 %.sroa.5.1.i399, 0
  br i1 %.not.i198, label %_RNvNtCs8dlYv19QFjS_4idna5uts4626is_passthrough_ascii_label.exit.thread429, label %.thread426

bb.bq:                                            ; preds = %bb.bo
  %i.lp = getelementptr inbounds nuw i8, ptr %.sroa.0.0380779, i64 2
end_hunk_0
