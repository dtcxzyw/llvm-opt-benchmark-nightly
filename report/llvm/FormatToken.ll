Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/FormatToken?download=true
inline.NumInlined: 479
inline.NumDeleted: 212
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN5clang6format18CommaSeparatedList25precomputeFormattingInfosEPKNS0_11FormatTokenE:bb.a
  %i.ep = and i16 %i.eo, 64
  %.not92 = icmp eq i16 %i.ep, 0
  br i1 %.not92, label %_ZNK5clang6format11FormatToken17isTrailingCommentEv.exit114, label %.critedge2, !llvm.loop !214

_ZNK5clang6format11FormatToken17isTrailingCommentEv.exit114.thread: ; preds = %bb.v, %bb.w, %.split145, %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit
  %i.eq = load ptr, ptr %i.a, align 8, !tbaa !158
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 208
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !159
  br label %.critedge2

bb.y:                                             ; preds = %bb.o
  %i.et = load ptr, ptr %i.at, align 8, !tbaa !170
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.et, i64 %indvars.iv
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !171 ; 6 uses
  %i.ew = getelementptr i8, ptr %.281.lcssa, i64 84
  %.281.val102 = load i32, ptr %i.ew, align 4, !tbaa !168
  %i.ex = getelementptr i8, ptr %.281.lcssa, i64 108
  %.281.val103 = load i32, ptr %i.ex, align 4, !tbaa !243
  %i.ey = getelementptr i8, ptr %i.ev, i64 108
  %.val = load i32, ptr %i.ey, align 4, !tbaa !243
  %i.ez = sub i32 %.281.val102, %.281.val103
  %i.fa = add i32 %i.ez, %.val                    ; 2 uses
  %i.fb = load i32, ptr %i.bl, align 8, !tbaa !169 ; 2 uses
  %i.fc = load i32, ptr %i.be, align 4, !tbaa !186
  %.not.i115 = icmp ult i32 %i.fb, %i.fc
  br i1 %.not.i115, label %bb.aa, label %bb.z, !prof !187

bb.z:                                             ; preds = %bb.y
  call void @_ZN4llvm23SmallVectorTemplateBaseIjLb1EE15growAndPushBackEj(ptr noundef nonnull align 8 dereferenceable(16) %i.bd, i32 noundef %i.fa)
  br label %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit116

bb.aa:                                            ; preds = %bb.y
  %i.fd = zext i32 %i.fb to i64
  %i.fe = load ptr, ptr %i.bd, align 8, !tbaa !170
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.fe, i64 %i.fd
  store i32 %i.fa, ptr %i.ff, align 1
  %i.fg = load i32, ptr %i.bl, align 8, !tbaa !169
  %i.fh = add i32 %i.fg, 1
  store i32 %i.fh, ptr %i.bl, align 8, !tbaa !169
  br label %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit116

_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit116: ; preds = %bb.z, %bb.aa
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ev, i64 216
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !161 ; 6 uses
  %.not88 = icmp eq ptr %i.fj, null
  br i1 %.not88, label %.critedge2, label %bb.ab

bb.ab:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit116
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 64
  %i.fl = load i16, ptr %i.fk, align 8
  %i.fm = and i16 %i.fl, 1
  %.not89 = icmp eq i16 %i.fm, 0
  br i1 %.not89, label %bb.ac, label %.critedge2

bb.ac:                                            ; preds = %bb.ab
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fj, i64 16
  %i.fo = load i16, ptr %i.fn, align 8, !tbaa !50
  %i.fp = icmp eq i16 %i.fo, 4
  br i1 %i.fp, label %bb.ad, label %.critedge2

bb.ad:                                            ; preds = %bb.ac
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fj, i64 67
  %i.fr = load i8, ptr %i.fq, align 1, !tbaa !49
  %i.fs = icmp eq i8 %i.fr, 83
  br i1 %i.fs, label %_ZNK5clang6format11FormatToken17isTrailingCommentEv.exit118.thread, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fj, i64 216
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !161 ; 2 uses
  %.not.i117 = icmp eq ptr %i.fu, null
  br i1 %.not.i117, label %_ZNK5clang6format11FormatToken17isTrailingCommentEv.exit118.thread, label %_ZNK5clang6format11FormatToken17isTrailingCommentEv.exit118

_ZNK5clang6format11FormatToken17isTrailingCommentEv.exit118: ; preds = %bb.ae
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 72
  %i.fw = load i32, ptr %i.fv, align 8, !tbaa !172
  %.not154 = icmp eq i32 %i.fw, 0
  br i1 %.not154, label %.critedge2, label %_ZNK5clang6format11FormatToken17isTrailingCommentEv.exit118.thread

_ZNK5clang6format11FormatToken17isTrailingCommentEv.exit118.thread: ; preds = %bb.ad, %bb.ae, %_ZNK5clang6format11FormatToken17isTrailingCommentEv.exit118
  br label %.critedge2

.critedge2:                                       ; preds = %_ZNK5clang6format11FormatToken17isTrailingCommentEv.exit114, %bb.x, %bb.ac, %_ZNK5clang6format11FormatToken17isTrailingCommentEv.exit114.thread, %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit116, %bb.ab, %_ZNK5clang6format11FormatToken17isTrailingCommentEv.exit118, %_ZNK5clang6format11FormatToken17isTrailingCommentEv.exit118.thread
  %.2 = phi ptr [ %i.ev, %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit116 ], [ %i.ev, %bb.ab ], [ %i.fj, %_ZNK5clang6format11FormatToken17isTrailingCommentEv.exit118.thread ], [ %i.ev, %_ZNK5clang6format11FormatToken17isTrailingCommentEv.exit118 ], [ %i.es, %_ZNK5clang6format11FormatToken17isTrailingCommentEv.exit114.thread ], [ %i.ev, %bb.ac ], [ %.071, %bb.x ], [ %.071, %_ZNK5clang6format11FormatToken17isTrailingCommentEv.exit114 ] ; 3 uses
  %i.fx = getelementptr i8, ptr %.281.lcssa, i64 84
  %.281.val = load i32, ptr %i.fx, align 4, !tbaa !168
  %i.fy = getelementptr i8, ptr %.281.lcssa, i64 108
  %.281.val101 = load i32, ptr %i.fy, align 4, !tbaa !243
  %i.fz = getelementptr i8, ptr %.2, i64 108
  %.2.val = load i32, ptr %i.fz, align 4, !tbaa !243
  %i.ga = sub i32 %.281.val, %.281.val101
  %i.gb = add i32 %i.ga, %.2.val                  ; 2 uses
  %i.gc = load i32, ptr %i.ar, align 8, !tbaa !169 ; 2 uses
  %i.gd = load i32, ptr %i.as, align 4, !tbaa !186
  %.not.i119 = icmp ult i32 %i.gc, %i.gd
  br i1 %.not.i119, label %bb.ag, label %bb.af, !prof !187

bb.af:                                            ; preds = %.critedge2
  call void @_ZN4llvm23SmallVectorTemplateBaseIjLb1EE15growAndPushBackEj(ptr noundef nonnull align 8 dereferenceable(16) %3, i32 noundef %i.gb)
  br label %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit120.preheader

bb.ag:                                            ; preds = %.critedge2
  %i.ge = zext i32 %i.gc to i64
  %i.gf = load ptr, ptr %3, align 8, !tbaa !170
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.gf, i64 %i.ge
  store i32 %i.gb, ptr %i.gg, align 1
  %i.gh = load i32, ptr %i.ar, align 8, !tbaa !169
  %i.gi = add i32 %i.gh, 1
  store i32 %i.gi, ptr %i.ar, align 8, !tbaa !169
  br label %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit120.preheader

_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit120.preheader: ; preds = %bb.af, %bb.ag
  br label %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit120

_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit120: ; preds = %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit120.preheader, %bb.ah
  %.pn.i121 = phi ptr [ %.0.i123, %bb.ah ], [ %.2, %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit120.preheader ]
  %.0.in.i122 = getelementptr inbounds nuw i8, ptr %.pn.i121, i64 216
  %.0.i123 = load ptr, ptr %.0.in.i122, align 8, !tbaa !161 ; 4 uses
  %.not.i124 = icmp eq ptr %.0.i123, null
  br i1 %.not.i124, label %_ZNK5clang6format11FormatToken17getNextNonCommentEv.exit, label %bb.ah

bb.ah:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit120
  %i.gj = getelementptr inbounds nuw i8, ptr %.0.i123, i64 16
  %i.gk = load i16, ptr %i.gj, align 8, !tbaa !50
  %i.gl = icmp eq i16 %i.gk, 4
  br i1 %i.gl, label %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit120, label %_ZNK5clang6format11FormatToken17getNextNonCommentEv.exit, !llvm.loop !215

_ZNK5clang6format11FormatToken17getNextNonCommentEv.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit120, %bb.ah
  %i.gm = load ptr, ptr %i.a, align 8, !tbaa !158
  %.not93 = icmp eq ptr %.0.i123, %i.gm
  br i1 %.not93, label %.critedge98.loopexit, label %bb.ai

bb.ai:                                            ; preds = %_ZNK5clang6format11FormatToken17getNextNonCommentEv.exit
  %i.gn = getelementptr inbounds nuw i8, ptr %.2, i64 216
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !161
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.not86 = icmp eq i64 %indvars.iv, %i.bm
  br i1 %.not86, label %.critedge98.loopexit, label %.preheader, !llvm.loop !216

.critedge98.loopexit:                             ; preds = %_ZNK5clang6format11FormatToken17getNextNonCommentEv.exit, %bb.ai
  %.pre217 = load i32, ptr %i.au, align 8, !tbaa !169
  br label %.critedge98

.critedge98:                                      ; preds = %.critedge98.loopexit, %_ZN4llvm15SmallVectorImplIjE7reserveEm.exit107
  %i.gp = phi i32 [ -1, %_ZN4llvm15SmallVectorImplIjE7reserveEm.exit107 ], [ %.pre217, %.critedge98.loopexit ] ; 2 uses
  %.278 = phi i1 [ false, %_ZN4llvm15SmallVectorImplIjE7reserveEm.exit107 ], [ %.177.lcssa, %.critedge98.loopexit ]
  %i.gq = icmp ult i32 %i.gp, 5
  %or.cond = select i1 %i.gq, i1 true, i1 %.278
  br i1 %or.cond, label %bb.aw, label %bb.aj

bb.aj:                                            ; preds = %.critedge98
  %i.gr = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !244
  %.not94 = icmp eq i32 %i.gs, 0
  br i1 %.not94, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.gt = load i16, ptr %i.c, align 8, !tbaa !50
  %i.gu = icmp eq i16 %i.gt, 24
  %i.gv = icmp ult i32 %i.gp, 19
  %or.cond149 = and i1 %i.gv, %i.gu
  br i1 %or.cond149, label %bb.aw, label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.gw = load ptr, ptr %i.i, align 8, !tbaa !164, !nonnull !165, !align !166
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 248
  %i.gy = load i32, ptr %i.gx, align 8, !tbaa !167 ; 3 uses
  %i.gz = udiv i32 %i.gy, 3                       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.ha = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  store ptr %i.ha, ptr %4, align 8, !tbaa !170
  %i.hb = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 5 uses
  store i32 0, ptr %i.hb, align 8, !tbaa !169
  %i.hc = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 2 uses
  store i32 12, ptr %i.hc, align 4, !tbaa !186
  %i.hd = icmp ugt i32 %i.gy, 38
  br i1 %i.hd, label %_ZN4llvm15SmallVectorImplIjE7reserveEm.exit125.thread, label %_ZN4llvm15SmallVectorImplIjE7reserveEm.exit125

_ZN4llvm15SmallVectorImplIjE7reserveEm.exit125.thread: ; preds = %bb.al
  %i.he = zext nneg i32 %i.gz to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull %i.ha, i64 noundef %i.he, i64 noundef 4) #16
  br label %.lr.ph195

_ZN4llvm15SmallVectorImplIjE7reserveEm.exit125:   ; preds = %bb.al
  %.not95193 = icmp samesign ult i32 %i.gy, 3
  br i1 %.not95193, label %._crit_edge196, label %.lr.ph195

.lr.ph195:                                        ; preds = %_ZN4llvm15SmallVectorImplIjE7reserveEm.exit125.thread, %_ZN4llvm15SmallVectorImplIjE7reserveEm.exit125
  %i.hf = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 5 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 4 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 3 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %5, i64 28
  %i.hj = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.hl = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 8 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.hn = add nuw nsw i32 %i.gz, 1
  %wide.trip.count208 = zext nneg i32 %i.hn to i64
  br label %bb.am

bb.am:                                            ; preds = %.lr.ph195, %_ZN5clang6format18CommaSeparatedList12ColumnFormatD2Ev.exit.jt13
  %indvar = phi i64 [ 0, %.lr.ph195 ], [ %indvar.next, %_ZN5clang6format18CommaSeparatedList12ColumnFormatD2Ev.exit.jt13 ] ; 2 uses
  %indvars.iv205 = phi i64 [ 1, %.lr.ph195 ], [ %indvars.iv.next206, %_ZN5clang6format18CommaSeparatedList12ColumnFormatD2Ev.exit.jt13 ] ; 19 uses
  %i.ho = shl i64 %indvar, 2
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  store ptr %i.hg, ptr %i.hf, align 8, !tbaa !170
  store i32 0, ptr %i.hh, align 8, !tbaa !169
  store i32 8, ptr %i.hi, align 4, !tbaa !186
  %i.hp = trunc nuw nsw i64 %indvars.iv205 to i32 ; 3 uses
  store i32 %i.hp, ptr %5, align 8, !tbaa !180
  %i.hq = icmp samesign ugt i64 %indvars.iv205, 8
  br i1 %i.hq, label %_ZN4llvm15SmallVectorImplIjE7reserveEm.exit.i.i, label %.lr.ph.preheader.i.i

_ZN4llvm15SmallVectorImplIjE7reserveEm.exit.i.i:  ; preds = %bb.am
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.hf, ptr noundef nonnull %i.hg, i64 noundef %indvars.iv205, i64 noundef 4) #16
  %.pre.i.i = load i32, ptr %i.hh, align 8, !tbaa !169
  %.pre13.i.i = zext i32 %.pre.i.i to i64         ; 2 uses
  %.not11.i.i = icmp samesign eq i64 %indvars.iv205, %.pre13.i.i
  br i1 %.not11.i.i, label %.sink.split.i.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.am, %_ZN4llvm15SmallVectorImplIjE7reserveEm.exit.i.i
  %.pre-phi.i.i249 = phi i64 [ %.pre13.i.i, %_ZN4llvm15SmallVectorImplIjE7reserveEm.exit.i.i ], [ 0, %bb.am ] ; 2 uses
  %i.hr = load ptr, ptr %i.hf, align 8, !tbaa !170
  %i.hs = getelementptr [4 x i8], ptr %i.hr, i64 %.pre-phi.i.i249
  %i.ht = sub nsw i64 %indvars.iv205, %.pre-phi.i.i249
  %i.hu = shl nsw i64 %i.ht, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.hs, i8 0, i64 %i.hu, i1 false), !tbaa !173
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %.lr.ph.preheader.i.i, %_ZN4llvm15SmallVectorImplIjE7reserveEm.exit.i.i
  store i32 %i.hp, ptr %i.hh, align 8, !tbaa !169
  %i.hv = load i32, ptr %i.hc, align 4, !tbaa !186
  %i.hw = zext i32 %i.hv to i64
  %i.hx = icmp samesign ugt i64 %indvars.iv205, %i.hw
  br i1 %i.hx, label %_ZN4llvm15SmallVectorImplIjE6assignEmj.exit.loopexit, label %bb.an

_ZN4llvm15SmallVectorImplIjE6assignEmj.exit.loopexit: ; preds = %.sink.split.i.i
  store i32 0, ptr %i.hb, align 8, !tbaa !169
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull %i.ha, i64 noundef %indvars.iv205, i64 noundef 4) #16
  %i.hy = load ptr, ptr %4, align 8, !tbaa !170   ; 2 uses
  br label %_ZN4llvm15SmallVectorImplIjE6assignEmj.exit.sink.split

bb.an:                                            ; preds = %.sink.split.i.i
  %i.hz = load ptr, ptr %4, align 8, !tbaa !170   ; 4 uses
  %i.ia = load i32, ptr %i.hb, align 8, !tbaa !169 ; 2 uses
  %i.ib = icmp eq i32 %i.ia, 0
  br i1 %i.ib, label %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.i, label %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i

_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i:   ; preds = %bb.an
  %i.ic = zext i32 %i.ia to i64
  %.sroa.speculated.i = call i64 @llvm.umin.i64(i64 %indvars.iv205, i64 %i.ic)
  %.idx.i.i.i = shl nuw nsw i64 %.sroa.speculated.i, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.hz, i8 -1, i64 %.idx.i.i.i, i1 false), !tbaa !173
  %.pre.i = load i32, ptr %i.hb, align 8, !tbaa !169
  %.pre13.i = zext i32 %.pre.i to i64
  br label %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.i

_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.i:            ; preds = %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i, %bb.an
  %.pre-phi.i = phi i64 [ %.pre13.i, %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i ], [ 0, %bb.an ] ; 3 uses
  %i.id = icmp samesign ult i64 %.pre-phi.i, %indvars.iv205
  br i1 %i.id, label %_ZN4llvm15SmallVectorImplIjE6assignEmj.exit.loopexit198, label %_ZN4llvm15SmallVectorImplIjE6assignEmj.exit

_ZN4llvm15SmallVectorImplIjE6assignEmj.exit.loopexit198: ; preds = %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.i
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %i.hz, i64 %.pre-phi.i
  %i.if = sub nuw nsw i64 %indvars.iv205, %.pre-phi.i
  br label %_ZN4llvm15SmallVectorImplIjE6assignEmj.exit.sink.split

_ZN4llvm15SmallVectorImplIjE6assignEmj.exit.sink.split: ; preds = %_ZN4llvm15SmallVectorImplIjE6assignEmj.exit.loopexit, %_ZN4llvm15SmallVectorImplIjE6assignEmj.exit.loopexit198
  %.sink252 = phi i64 [ %i.if, %_ZN4llvm15SmallVectorImplIjE6assignEmj.exit.loopexit198 ], [ %indvars.iv205, %_ZN4llvm15SmallVectorImplIjE6assignEmj.exit.loopexit ]
  %.sink = phi ptr [ %i.ie, %_ZN4llvm15SmallVectorImplIjE6assignEmj.exit.loopexit198 ], [ %i.hy, %_ZN4llvm15SmallVectorImplIjE6assignEmj.exit.loopexit ]
  %.ph = phi ptr [ %i.hz, %_ZN4llvm15SmallVectorImplIjE6assignEmj.exit.loopexit198 ], [ %i.hy, %_ZN4llvm15SmallVectorImplIjE6assignEmj.exit.loopexit ]
  %.idx.i.i.i.i.i = shl nuw nsw i64 %.sink252, 2
  call void @llvm.memset.p0.i64(ptr align 4 %.sink, i8 -1, i64 %.idx.i.i.i.i.i, i1 false), !tbaa !173
  br label %_ZN4llvm15SmallVectorImplIjE6assignEmj.exit

_ZN4llvm15SmallVectorImplIjE6assignEmj.exit:      ; preds = %_ZN4llvm15SmallVectorImplIjE6assignEmj.exit.sink.split, %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.i
  %i.ig = phi ptr [ %i.hz, %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.i ], [ %.ph, %_ZN4llvm15SmallVectorImplIjE6assignEmj.exit.sink.split ] ; 2 uses
  store i32 %i.hp, ptr %i.hb, align 8, !tbaa !169
  store i32 1, ptr %i.hj, align 8, !tbaa !182
  %i.ih = load i32, ptr %i.hk, align 8, !tbaa !169 ; 2 uses
  %.not96183 = icmp eq i32 %i.ih, 0
  %.pre219 = load ptr, ptr %i.hf, align 8, !tbaa !170 ; 14 uses
  br i1 %.not96183, label %"_ZZN5clang6format18CommaSeparatedList25precomputeFormattingInfosEPKNS0_11FormatTokenEENK3$_0clEv.exit.jt11", label %.lr.ph187

.lr.ph187:                                        ; preds = %_ZN4llvm15SmallVectorImplIjE6assignEmj.exit
  %i.ii = load ptr, ptr %2, align 8, !tbaa !184
  %i.ij = add nsw i64 %indvars.iv205, -1          ; 5 uses
  %i.ik = zext i32 %i.ih to i64
  br label %bb.ao

._crit_edge:                                      ; preds = %bb.aq
  br i1 %spec.select, label %.lr.ph191, label %"_ZZN5clang6format18CommaSeparatedList25precomputeFormattingInfosEPKNS0_11FormatTokenEENK3$_0clEv.exit.jt11"

bb.ao:                                            ; preds = %.lr.ph187, %bb.aq
  %indvars.iv200 = phi i64 [ 0, %.lr.ph187 ], [ %indvars.iv.next201, %bb.aq ] ; 3 uses
  %.068185 = phi i32 [ 0, %.lr.ph187 ], [ %i.iz, %bb.aq ] ; 2 uses
  %.069184 = phi i1 [ false, %.lr.ph187 ], [ %spec.select, %bb.aq ]
  %i.il = getelementptr inbounds nuw i8, ptr %i.ii, i64 %indvars.iv200
  %i.im = load i8, ptr %i.il, align 1, !tbaa !245, !range !157, !noundef !165
  %i.in = trunc nuw i8 %i.im to i1
  %i.io = zext i32 %.068185 to i64
  %i.ip = icmp eq i64 %indvars.iv205, %i.io
  %or.cond100 = or i1 %i.ip, %i.in
  br i1 %or.cond100, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.iq = load i32, ptr %i.hj, align 8, !tbaa !182
  %i.ir = add i32 %i.iq, 1
  store i32 %i.ir, ptr %i.hj, align 8, !tbaa !182
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ao, %bb.ap
  %.1 = phi i32 [ 0, %bb.ap ], [ %.068185, %bb.ao ] ; 2 uses
  %i.is = zext i32 %.1 to i64                     ; 3 uses
  %i.it = icmp eq i64 %i.ij, %i.is                ; 2 uses
  %spec.select = select i1 %i.it, i1 true, i1 %.069184 ; 2 uses
  %. = select i1 %i.it, ptr %3, ptr %i.bd
  %.pn156 = load ptr, ptr %., align 8, !tbaa !170
  %.in = getelementptr inbounds nuw [4 x i8], ptr %.pn156, i64 %indvars.iv200
  %i.iu = load i32, ptr %.in, align 4, !tbaa !173 ; 2 uses
  %i.iv = getelementptr inbounds nuw [4 x i8], ptr %.pre219, i64 %i.is ; 2 uses
  %i.iw = load i32, ptr %i.iv, align 4, !tbaa !173
  %.sroa.speculated131 = call i32 @llvm.umax.i32(i32 %i.iw, i32 %i.iu)
  store i32 %.sroa.speculated131, ptr %i.iv, align 4, !tbaa !173
  %i.ix = getelementptr inbounds nuw [4 x i8], ptr %i.ig, i64 %i.is ; 2 uses
  %i.iy = load i32, ptr %i.ix, align 4, !tbaa !173
  %.sroa.speculated = call i32 @llvm.umin.i32(i32 %i.iu, i32 %i.iy)
  store i32 %.sroa.speculated, ptr %i.ix, align 4, !tbaa !173
  %i.iz = add i32 %.1, 1
  %indvars.iv.next201 = add nuw nsw i64 %indvars.iv200, 1 ; 2 uses
  %.not96 = icmp eq i64 %indvars.iv.next201, %i.ik
  br i1 %.not96, label %._crit_edge, label %bb.ao, !llvm.loop !217

.lr.ph191:                                        ; preds = %._crit_edge
  %i.ja = trunc nuw nsw i64 %i.ij to i32          ; 4 uses
  store i32 %i.ja, ptr %i.hl, align 4, !tbaa !181
  %min.iters.check = icmp samesign ult i64 %indvars.iv205, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph191
  %i.jb = getelementptr i8, ptr %.pre219, i64 %i.ho
  %scevgep = getelementptr i8, ptr %i.jb, i64 4
  %bound0 = icmp ult ptr %i.hl, %scevgep
  %bound1 = icmp ult ptr %.pre219, %i.hj
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %indvars.iv205, 9223372036854775800 ; 3 uses
  %i.jc = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.ja, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.jc, %vector.ph ], [ %i.jf, %vector.body ]
  %vec.phi262 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.jg, %vector.body ]
  %i.jd = getelementptr inbounds nuw [4 x i8], ptr %.pre219, i64 %index ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 16
  %wide.load = load <4 x i32>, ptr %i.jd, align 4, !tbaa !173, !alias.scope !246
  %wide.load263 = load <4 x i32>, ptr %i.je, align 4, !tbaa !173, !alias.scope !246
  %i.jf = add <4 x i32> %vec.phi, %wide.load      ; 2 uses
  %i.jg = add <4 x i32> %vec.phi262, %wide.load263 ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.jh = icmp eq i64 %index.next, %n.vec
  br i1 %i.jh, label %middle.block, label %vector.body, !llvm.loop !220

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.jg, %i.jf
  %i.ji = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 3 uses
  store i32 %i.ji, ptr %i.hl, align 4, !tbaa !181, !alias.scope !249, !noalias !246
  %cmp.n = icmp eq i64 %indvars.iv205, %n.vec
  br i1 %cmp.n, label %._crit_edge192, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph191, %middle.block
  %indvars.iv202.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph191 ], [ %n.vec, %middle.block ] ; 3 uses
  %.ph264 = phi i32 [ %i.ja, %vector.memcheck ], [ %i.ja, %.lr.ph191 ], [ %i.ji, %middle.block ] ; 2 uses
  %i.jj = sub i64 %i.ij, %indvars.iv202.ph
  %xtraiter = and i64 %indvars.iv205, 3           ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv202.prol = phi i64 [ %indvars.iv.next203.prol, %scalar.ph.prol ], [ %indvars.iv202.ph, %scalar.ph.preheader ] ; 2 uses
  %i.jk = phi i32 [ %i.jn, %scalar.ph.prol ], [ %.ph264, %scalar.ph.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.jl = getelementptr inbounds nuw [4 x i8], ptr %.pre219, i64 %indvars.iv202.prol
  %i.jm = load i32, ptr %i.jl, align 4, !tbaa !173
  %i.jn = add i32 %i.jk, %i.jm                    ; 4 uses
  store i32 %i.jn, ptr %i.hl, align 4, !tbaa !181
  %indvars.iv.next203.prol = add nuw nsw i64 %indvars.iv202.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !222

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa267.unr = phi i32 [ poison, %scalar.ph.preheader ], [ %i.jn, %scalar.ph.prol ]
  %indvars.iv202.unr = phi i64 [ %indvars.iv202.ph, %scalar.ph.preheader ], [ %indvars.iv.next203.prol, %scalar.ph.prol ]
  %.unr = phi i32 [ %.ph264, %scalar.ph.preheader ], [ %i.jn, %scalar.ph.prol ]
  %i.jo = icmp ult i64 %i.jj, 3
  br i1 %i.jo, label %._crit_edge192, label %scalar.ph

._crit_edge192:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %.lcssa253 = phi i32 [ %i.ji, %middle.block ], [ %.lcssa267.unr, %scalar.ph.prol.loopexit ], [ %i.kk, %scalar.ph ]
  %.not.i127 = icmp eq i64 %i.ij, 0
  br i1 %.not.i127, label %.thread, label %.lr.ph.i

bb.ar:                                            ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.ij
  br i1 %exitcond.not.i, label %bb.as, label %.lr.ph.i, !llvm.loop !223

.lr.ph.i:                                         ; preds = %._crit_edge192, %bb.ar
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.ar ], [ 0, %._crit_edge192 ] ; 3 uses
  %i.jp = getelementptr inbounds nuw [4 x i8], ptr %.pre219, i64 %indvars.iv.i
  %i.jq = load i32, ptr %i.jp, align 4, !tbaa !173
  %i.jr = getelementptr inbounds nuw [4 x i8], ptr %i.ig, i64 %indvars.iv.i
  %i.js = load i32, ptr %i.jr, align 4, !tbaa !173
  %i.jt = sub i32 %i.jq, %i.js
  %i.ju = icmp ugt i32 %i.jt, 10
  br i1 %i.ju, label %"_ZZN5clang6format18CommaSeparatedList25precomputeFormattingInfosEPKNS0_11FormatTokenEENK3$_0clEv.exit.jt13", label %bb.ar

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv202 = phi i64 [ %indvars.iv.next203.3, %scalar.ph ], [ %indvars.iv202.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.jv = phi i32 [ %i.kk, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ]
  %i.jw = getelementptr inbounds nuw [4 x i8], ptr %.pre219, i64 %indvars.iv202
  %i.jx = load i32, ptr %i.jw, align 4, !tbaa !173
  %i.jy = add i32 %i.jv, %i.jx                    ; 2 uses
  store i32 %i.jy, ptr %i.hl, align 4, !tbaa !181
  %i.jz = getelementptr inbounds nuw [4 x i8], ptr %.pre219, i64 %indvars.iv202
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 4
  %i.kb = load i32, ptr %i.ka, align 4, !tbaa !173
  %i.kc = add i32 %i.jy, %i.kb                    ; 2 uses
  store i32 %i.kc, ptr %i.hl, align 4, !tbaa !181
  %i.kd = getelementptr inbounds nuw [4 x i8], ptr %.pre219, i64 %indvars.iv202
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 8
  %i.kf = load i32, ptr %i.ke, align 4, !tbaa !173
  %i.kg = add i32 %i.kc, %i.kf                    ; 2 uses
  store i32 %i.kg, ptr %i.hl, align 4, !tbaa !181
  %i.kh = getelementptr inbounds nuw [4 x i8], ptr %.pre219, i64 %indvars.iv202
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 12
  %i.kj = load i32, ptr %i.ki, align 4, !tbaa !173
  %i.kk = add i32 %i.kg, %i.kj                    ; 3 uses
  store i32 %i.kk, ptr %i.hl, align 4, !tbaa !181
  %indvars.iv.next203.3 = add nuw nsw i64 %indvars.iv202, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next203.3, %indvars.iv205
  br i1 %exitcond.not.3, label %._crit_edge192, label %scalar.ph, !llvm.loop !224

bb.as:                                            ; preds = %bb.ar
  %i.kl = load ptr, ptr %i.i, align 8, !tbaa !164, !nonnull !165, !align !166
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 248
  %i.kn = load i32, ptr %i.km, align 8, !tbaa !167
  %i.ko = icmp ugt i32 %.lcssa253, %i.kn
  br i1 %i.ko, label %"_ZZN5clang6format18CommaSeparatedList25precomputeFormattingInfosEPKNS0_11FormatTokenEENK3$_0clEv.exit.jt13", label %.thread

.thread:                                          ; preds = %._crit_edge192, %bb.as
  call void @_ZN4llvm23SmallVectorTemplateBaseIN5clang6format18CommaSeparatedList12ColumnFormatELb0EE9push_backERKS4_(ptr noundef nonnull align 8 dereferenceable(16) %i.hm, ptr noundef nonnull align 8 dereferenceable(64) %5)
  %.pre218 = load ptr, ptr %i.hf, align 8, !tbaa !170
  br label %"_ZZN5clang6format18CommaSeparatedList25precomputeFormattingInfosEPKNS0_11FormatTokenEENK3$_0clEv.exit.jt13"

"_ZZN5clang6format18CommaSeparatedList25precomputeFormattingInfosEPKNS0_11FormatTokenEENK3$_0clEv.exit.jt13": ; preds = %.lr.ph.i, %.thread, %bb.as
  %i.kp = phi ptr [ %.pre218, %.thread ], [ %.pre219, %bb.as ], [ %.pre219, %.lr.ph.i ] ; 2 uses
  %i.kq = icmp eq ptr %i.kp, %i.hg
  br i1 %i.kq, label %_ZN5clang6format18CommaSeparatedList12ColumnFormatD2Ev.exit.jt13, label %bb.at

"_ZZN5clang6format18CommaSeparatedList25precomputeFormattingInfosEPKNS0_11FormatTokenEENK3$_0clEv.exit.jt11": ; preds = %_ZN4llvm15SmallVectorImplIjE6assignEmj.exit, %._crit_edge
  %i.kr = icmp eq ptr %.pre219, %i.hg
  br i1 %i.kr, label %_ZN5clang6format18CommaSeparatedList12ColumnFormatD2Ev.exit.jt11, label %bb.au

bb.at:                                            ; preds = %"_ZZN5clang6format18CommaSeparatedList25precomputeFormattingInfosEPKNS0_11FormatTokenEENK3$_0clEv.exit.jt13"
  call void @free(ptr noundef %i.kp) #16
  br label %_ZN5clang6format18CommaSeparatedList12ColumnFormatD2Ev.exit.jt13

bb.au:                                            ; preds = %"_ZZN5clang6format18CommaSeparatedList25precomputeFormattingInfosEPKNS0_11FormatTokenEENK3$_0clEv.exit.jt11"
  call void @free(ptr noundef %.pre219) #16
  br label %_ZN5clang6format18CommaSeparatedList12ColumnFormatD2Ev.exit.jt11

_ZN5clang6format18CommaSeparatedList12ColumnFormatD2Ev.exit.jt13: ; preds = %bb.at, %"_ZZN5clang6format18CommaSeparatedList25precomputeFormattingInfosEPKNS0_11FormatTokenEENK3$_0clEv.exit.jt13"
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  %indvars.iv.next206 = add nuw nsw i64 %indvars.iv205, 1 ; 2 uses
  %exitcond209 = icmp eq i64 %indvars.iv.next206, %wide.trip.count208
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond209, label %._crit_edge196, label %bb.am, !llvm.loop !225

_ZN5clang6format18CommaSeparatedList12ColumnFormatD2Ev.exit.jt11: ; preds = %bb.au, %"_ZZN5clang6format18CommaSeparatedList25precomputeFormattingInfosEPKNS0_11FormatTokenEENK3$_0clEv.exit.jt11"
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  br label %._crit_edge196

._crit_edge196:                                   ; preds = %_ZN5clang6format18CommaSeparatedList12ColumnFormatD2Ev.exit.jt13, %_ZN5clang6format18CommaSeparatedList12ColumnFormatD2Ev.exit.jt11, %_ZN4llvm15SmallVectorImplIjE7reserveEm.exit125
  %i.ks = load ptr, ptr %4, align 8, !tbaa !170   ; 2 uses
  %i.kt = icmp eq ptr %i.ks, %i.ha
  br i1 %i.kt, label %_ZN4llvm11SmallVectorIjLj12EED2Ev.exit, label %bb.av

bb.av:                                            ; preds = %._crit_edge196
  call void @free(ptr noundef %i.ks) #16
  br label %_ZN4llvm11SmallVectorIjLj12EED2Ev.exit

_ZN4llvm11SmallVectorIjLj12EED2Ev.exit:           ; preds = %._crit_edge196, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  br label %bb.aw

bb.aw:                                            ; preds = %bb.ak, %.critedge98, %_ZN4llvm11SmallVectorIjLj12EED2Ev.exit
  %i.ku = load ptr, ptr %3, align 8, !tbaa !170   ; 2 uses
  %i.kv = icmp eq ptr %i.ku, %i.aq
  br i1 %i.kv, label %_ZN4llvm11SmallVectorIjLj8EED2Ev.exit, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  call void @free(ptr noundef %i.ku) #16
  br label %_ZN4llvm11SmallVectorIjLj8EED2Ev.exit

_ZN4llvm11SmallVectorIjLj8EED2Ev.exit:            ; preds = %bb.aw, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  %i.kw = load ptr, ptr %2, align 8, !tbaa !184   ; 2 uses
  %i.kx = icmp eq ptr %i.kw, %i.an
  br i1 %i.kx, label %_ZN4llvm11SmallVectorIbLj8EED2Ev.exit, label %bb.ay

bb.ay:                                            ; preds = %_ZN4llvm11SmallVectorIjLj8EED2Ev.exit
  call void @free(ptr noundef %i.kw) #16
  br label %_ZN4llvm11SmallVectorIbLj8EED2Ev.exit

_ZN4llvm11SmallVectorIbLj8EED2Ev.exit:            ; preds = %_ZN4llvm11SmallVectorIjLj8EED2Ev.exit, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  br label %bb.az

bb.az:                                            ; preds = %bb.i, %bb.h, %bb.e, %bb.f, %bb.a, %bb.b, %_ZN4llvm11SmallVectorIbLj8EED2Ev.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseIN5clang6format18CommaSeparatedList12ColumnFormatELb0EE9push_backERKS4_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !169  ; 2 uses
  %i.c = zext i32 %i.b to i64                     ; 2 uses
  %i.d = add nuw nsw i64 %i.c, 1                  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !186
  %.not.i.i.not = icmp ult i32 %i.b, %i.f
  %.pre3 = load ptr, ptr %0, align 8, !tbaa !170  ; 4 uses
  br i1 %.not.i.i.not, label %_ZN4llvm23SmallVectorTemplateBaseIN5clang6format18CommaSeparatedList12ColumnFormatELb0EE28reserveForParamAndGetAddressERKS4_m.exit, label %bb.b, !prof !187

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw [64 x i8], ptr %.pre3, i64 %i.c
  %i.h = icmp uge ptr %1, %.pre3
  %i.i = icmp ult ptr %1, %i.g
  %spec.select.i.i.i.i = and i1 %i.h, %i.i
  br i1 %spec.select.i.i.i.i, label %bb.c, label %.critedge.i.i, !prof !188

bb.c:                                             ; preds = %bb.b
  %i.j = ptrtoint ptr %1 to i64
  %i.k = ptrtoint ptr %.pre3 to i64
  %i.l = sub i64 %i.j, %i.k
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIN5clang6format18CommaSeparatedList12ColumnFormatELb0EE4growEm(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %i.d)
  %i.m = load ptr, ptr %0, align 8, !tbaa !170    ; 2 uses
  %i.n = getelementptr inbounds i8, ptr %i.m, i64 %i.l
  br label %_ZN4llvm23SmallVectorTemplateBaseIN5clang6format18CommaSeparatedList12ColumnFormatELb0EE28reserveForParamAndGetAddressERKS4_m.exit

.critedge.i.i:                                    ; preds = %bb.b
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIN5clang6format18CommaSeparatedList12ColumnFormatELb0EE4growEm(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %i.d)
  %.pre = load ptr, ptr %0, align 8, !tbaa !170
  br label %_ZN4llvm23SmallVectorTemplateBaseIN5clang6format18CommaSeparatedList12ColumnFormatELb0EE28reserveForParamAndGetAddressERKS4_m.exit

_ZN4llvm23SmallVectorTemplateBaseIN5clang6format18CommaSeparatedList12ColumnFormatELb0EE28reserveForParamAndGetAddressERKS4_m.exit: ; preds = %bb.a, %bb.c, %.critedge.i.i
  %i.o = phi ptr [ %.pre3, %bb.a ], [ %i.m, %bb.c ], [ %.pre, %.critedge.i.i ]
  %.016.i.i = phi ptr [ %1, %bb.a ], [ %i.n, %bb.c ], [ %1, %.critedge.i.i ] ; 4 uses
  %i.p = load i32, ptr %i.a, align 8, !tbaa !169
  %i.q = zext i32 %i.p to i64
  %i.r = getelementptr inbounds nuw [64 x i8], ptr %i.o, i64 %i.q ; 6 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.r, ptr noundef nonnull align 8 dereferenceable(64) %.016.i.i, i64 12, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.016.i.i, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 32 ; 3 uses
  store ptr %i.u, ptr %i.s, align 8, !tbaa !170
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 24 ; 2 uses
  store i32 0, ptr %i.v, align 8, !tbaa !169
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 28
  store i32 8, ptr %i.w, align 4, !tbaa !186
  %i.x = getelementptr inbounds nuw i8, ptr %.016.i.i, i64 24 ; 2 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !169  ; 5 uses
  %.not.i.i.i = icmp eq i32 %i.y, 0
  %i.z = icmp eq ptr %i.r, %.016.i.i
  %or.cond.i.i = or i1 %i.z, %.not.i.i.i
  br i1 %or.cond.i.i, label %_ZN5clang6format18CommaSeparatedList12ColumnFormatC2ERKS2_.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN5clang6format18CommaSeparatedList12ColumnFormatELb0EE28reserveForParamAndGetAddressERKS4_m.exit
  %i.aa = icmp ugt i32 %i.y, 8
  br i1 %i.aa, label %_ZSt4copyIPKjPjET0_T_S4_S3_.exit30.i.i.i, label %_ZSt4copyIPKjPjET0_T_S4_S3_.exit30.i.thread.i.i

_ZSt4copyIPKjPjET0_T_S4_S3_.exit30.i.i.i:         ; preds = %bb.d
  %i.ab = zext i32 %i.y to i64
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(48) %i.s, ptr noundef nonnull %i.u, i64 noundef %i.ab, i64 noundef 4) #16
  %.pre.i.i = load i32, ptr %i.x, align 8, !tbaa !169 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %.pre.i.i, 0
  br i1 %.not.i.i.i.i, label %.sink.split.i.i.i, label %_ZSt4copyIPKjPjET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKjPjET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i

_ZSt4copyIPKjPjET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKjPjET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i: ; preds = %_ZSt4copyIPKjPjET0_T_S4_S3_.exit30.i.i.i
  %.pre.i = load ptr, ptr %i.s, align 8, !tbaa !170
  br label %_ZSt4copyIPKjPjET0_T_S4_S3_.exit30.i.thread.i.i

_ZSt4copyIPKjPjET0_T_S4_S3_.exit30.i.thread.i.i:  ; preds = %_ZSt4copyIPKjPjET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKjPjET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i, %bb.d
  %i.ac = phi ptr [ %.pre.i, %_ZSt4copyIPKjPjET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKjPjET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i ], [ %i.u, %bb.d ]
  %i.ad = phi i32 [ %.pre.i.i, %_ZSt4copyIPKjPjET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKjPjET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i ], [ %i.y, %bb.d ]
  %i.ae = zext i32 %i.ad to i64
  %i.af = load ptr, ptr %i.t, align 8, !tbaa !170
  %gepdiff.i.i.i = shl nuw nsw i64 %i.ae, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ac, ptr align 4 %i.af, i64 %gepdiff.i.i.i, i1 false)
  br label %.sink.split.i.i.i

.sink.split.i.i.i:                                ; preds = %_ZSt4copyIPKjPjET0_T_S4_S3_.exit30.i.thread.i.i, %_ZSt4copyIPKjPjET0_T_S4_S3_.exit30.i.i.i
  store i32 %i.y, ptr %i.v, align 8, !tbaa !169
  br label %_ZN5clang6format18CommaSeparatedList12ColumnFormatC2ERKS2_.exit

_ZN5clang6format18CommaSeparatedList12ColumnFormatC2ERKS2_.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN5clang6format18CommaSeparatedList12ColumnFormatELb0EE28reserveForParamAndGetAddressERKS4_m.exit, %.sink.split.i.i.i
  %i.ag = load i32, ptr %i.a, align 8, !tbaa !169
  %i.ah = add i32 %i.ag, 1
  store i32 %i.ah, ptr %i.a, align 8, !tbaa !169
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZN5clang6format19startsNextParameterERKNS0_11FormatTokenERKNS0_11FormatStyleE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(305) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1208) %1) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !159  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 67
  %i.d = load i8, ptr %i.c, align 1, !tbaa !49    ; 4 uses
  %i.e = icmp eq i8 %i.d, 37
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.g = load i8, ptr %i.f, align 8, !tbaa !251
  %i.h = icmp eq i8 %i.g, 1
  br i1 %i.h, label %_ZNK5clang6format11FormatToken17isTrailingCommentEv.exit.thread, label %.thread14

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 527
  %i.j = load i8, ptr %i.i, align 1, !tbaa !160
  %i.k = icmp eq i8 %i.j, 8
  %i.l = icmp eq i8 %i.d, 118
  %or.cond = and i1 %i.l, %i.k
  %i.m = icmp eq i8 %i.d, 108
  %or.cond17 = or i1 %i.m, %or.cond
  br i1 %or.cond17, label %_ZNK5clang6format11FormatToken17isTrailingCommentEv.exit.thread, label %.thread14

.thread14:                                        ; preds = %bb.c, %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.o = load i16, ptr %i.n, align 8, !tbaa !50
  %i.p = icmp eq i16 %i.o, 67
  br i1 %i.p, label %bb.d, label %_ZNK5clang6format11FormatToken17isTrailingCommentEv.exit.thread

bb.d:                                             ; preds = %.thread14
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load i16, ptr %i.q, align 8, !tbaa !50
  %i.s = icmp eq i16 %i.r, 4
  br i1 %i.s, label %bb.e, label %_ZNK5clang6format11FormatToken17isTrailingCommentEv.exit.thread15

bb.e:                                             ; preds = %bb.d
  %i.t = icmp eq i8 %i.d, 83
  br i1 %i.t, label %_ZNK5clang6format11FormatToken17isTrailingCommentEv.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !161  ; 2 uses
  %.not.i = icmp eq ptr %i.v, null
  br i1 %.not.i, label %_ZNK5clang6format11FormatToken17isTrailingCommentEv.exit.thread, label %_ZNK5clang6format11FormatToken17isTrailingCommentEv.exit

_ZNK5clang6format11FormatToken17isTrailingCommentEv.exit: ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 72
  %i.x = load i32, ptr %i.w, align 8, !tbaa !172
  %.not18 = icmp eq i32 %i.x, 0
  br i1 %.not18, label %_ZNK5clang6format11FormatToken17isTrailingCommentEv.exit.thread15, label %_ZNK5clang6format11FormatToken17isTrailingCommentEv.exit.thread

_ZNK5clang6format11FormatToken17isTrailingCommentEv.exit.thread15: ; preds = %bb.d, %_ZNK5clang6format11FormatToken17isTrailingCommentEv.exit
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 67
  %i.z = load i8, ptr %i.y, align 1, !tbaa !49
  switch i8 %i.z, label %_ZNK5clang6format11FormatToken17isTrailingCommentEv.exit.thread [
    i8 37, label %_ZNK5clang6format11FormatToken17isTrailingCommentEv.exit.thread.sink.split
    i8 63, label %bb.g
  ]

bb.g:                                             ; preds = %_ZNK5clang6format11FormatToken17isTrailingCommentEv.exit.thread15
end_hunk_0
