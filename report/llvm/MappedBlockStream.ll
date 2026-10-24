Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/MappedBlockStream?download=true
inline.NumInlined: 1235
inline.NumDeleted: 666
begin_hunk_0_@_ZN4llvm3msf17MappedBlockStream9readBytesEmmRNS_8ArrayRefIhEE:bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !19, !noalias !183
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !noalias !183
  %i.d = tail call noundef i64 %i.c(ptr noundef nonnull align 8 dereferenceable(8) %1) #17, !noalias !183, !inline_history !1
  %i.e = icmp ugt i64 %2, %i.d
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %1, align 8, !tbaa !19, !noalias !183
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !noalias !183
  %i.i = tail call noundef i64 %i.h(ptr noundef nonnull align 8 dereferenceable(8) %1) #17, !noalias !183, !inline_history !1
  %i.j = add i64 %3, %2                           ; 3 uses
  %i.k = icmp ult i64 %i.i, %i.j
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink6.i = phi i32 [ 3, %bb.a ], [ 1, %bb.b ]
  %i.l = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #16, !noalias !183 ; 2 uses
  tail call void @_ZN4llvm17BinaryStreamErrorC1ENS_17stream_error_codeE(ptr noundef nonnull align 8 dereferenceable(44) %i.l, i32 noundef %.sink6.i) #17, !noalias !183
  br label %.critedge45.sink.split

bb.d:                                             ; preds = %bb.b
  store ptr null, ptr %0, align 8, !tbaa !87, !alias.scope !183
  %i.m = tail call noundef zeroext i1 @_ZN4llvm3msf17MappedBlockStream19tryReadContiguouslyEmmRNS_8ArrayRefIhEE(ptr noundef nonnull align 8 dereferenceable(128) %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(16) %4)
  br i1 %i.m, label %.critedge45.sink.split, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 3 uses
  %i.o = trunc i64 %2 to i32                      ; 3 uses
  %i.p = load ptr, ptr %i.n, align 8, !tbaa !88, !noalias !184 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !89, !noalias !184 ; 6 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 124 ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !90, !noalias !184 ; 4 uses
  %i.u = icmp eq i32 %i.t, 0                      ; 2 uses
  br i1 %i.u, label %.loopexit.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = add i32 %i.t, -1                         ; 2 uses
  %i.w = mul i32 %i.o, 37
  %.017.i.i.i.i = and i32 %i.v, %i.w              ; 3 uses
  %i.x = zext i32 %.017.i.i.i.i to i64            ; 2 uses
  %i.y = lshr i64 %i.x, 5
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !57, !noalias !185
  %i.ab = and i32 %.017.i.i.i.i, 31
  %i.ac = lshr i32 %i.aa, %i.ab
  %i.ad = trunc i32 %i.ac to i1
  br i1 %i.ad, label %.lr.ph.i.i.i.i, label %.loopexit.i.i, !prof !91

bb.g:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ae = add nuw i32 %.018.i.i.i.i, 1
  %.0.i.i.i.i = and i32 %i.ae, %i.v               ; 3 uses
  %i.af = zext i32 %.0.i.i.i.i to i64             ; 2 uses
  %i.ag = lshr i64 %i.af, 5
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !57, !noalias !185
  %i.aj = and i32 %.0.i.i.i.i, 31
  %i.ak = lshr i32 %i.ai, %i.aj
  %i.al = trunc i32 %i.ak to i1
  br i1 %i.al, label %.lr.ph.i.i.i.i, label %.loopexit.i.i, !prof !92

.lr.ph.i.i.i.i:                                   ; preds = %bb.f, %bb.g
  %i.am = phi i64 [ %i.af, %bb.g ], [ %i.x, %bb.f ]
  %.018.i.i.i.i = phi i32 [ %.0.i.i.i.i, %bb.g ], [ %.017.i.i.i.i, %bb.f ]
  %i.an = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %i.am ; 2 uses
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !57, !noalias !185
  %i.ap = icmp eq i32 %i.ao, %i.o
  br i1 %i.ap, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt6vectorINS_15MutableArrayRefIhEESaIS4_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS6_EEEEjS6_S8_SB_E4findERKj.exit.loopexit, label %bb.g, !prof !53

.loopexit.i.i:                                    ; preds = %bb.g, %bb.f, %bb.e
  %i.aq = zext i32 %i.t to i64                    ; 2 uses
  %i.ar = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %i.aq
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt6vectorINS_15MutableArrayRefIhEESaIS4_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS6_EEEEjS6_S8_SB_E4findERKj.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt6vectorINS_15MutableArrayRefIhEESaIS4_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS6_EEEEjS6_S8_SB_E4findERKj.exit.loopexit: ; preds = %.lr.ph.i.i.i.i
  %.pre = zext i32 %i.t to i64
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt6vectorINS_15MutableArrayRefIhEESaIS4_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS6_EEEEjS6_S8_SB_E4findERKj.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt6vectorINS_15MutableArrayRefIhEESaIS4_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS6_EEEEjS6_S8_SB_E4findERKj.exit: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt6vectorINS_15MutableArrayRefIhEESaIS4_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS6_EEEEjS6_S8_SB_E4findERKj.exit.loopexit, %.loopexit.i.i
  %.pre-phi = phi i64 [ %.pre, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt6vectorINS_15MutableArrayRefIhEESaIS4_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS6_EEEEjS6_S8_SB_E4findERKj.exit.loopexit ], [ %i.aq, %.loopexit.i.i ] ; 4 uses
  %.lcssa.sink.i.i = phi ptr [ %i.an, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt6vectorINS_15MutableArrayRefIhEESaIS4_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS6_EEEEjS6_S8_SB_E4findERKj.exit.loopexit ], [ %i.ar, %.loopexit.i.i ] ; 7 uses
  %.idx250 = shl nuw nsw i64 %.pre-phi, 5         ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx250
  %.not171 = icmp eq ptr %.lcssa.sink.i.i, %i.as
  br i1 %.not171, label %.critedge39, label %bb.h

bb.h:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt6vectorINS_15MutableArrayRefIhEESaIS4_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS6_EEEEjS6_S8_SB_E4findERKj.exit
  %i.at = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !94 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !94 ; 2 uses
  %.not172189 = icmp eq ptr %i.au, %i.aw
  br i1 %.not172189, label %.critedge39, label %.lr.ph

.lr.ph:                                           ; preds = %bb.h, %.critedge
  %.sroa.0133.0190 = phi ptr [ %i.ba, %.critedge ], [ %i.au, %bb.h ] ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.0133.0190, i64 8
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !97
  %.not = icmp ult i64 %i.ay, %3
  br i1 %.not, label %.critedge, label %_ZN4llvm5ErrorD2Ev.exit51

_ZN4llvm5ErrorD2Ev.exit51:                        ; preds = %.lr.ph
  %i.az = load ptr, ptr %.sroa.0133.0190, align 8, !tbaa !98
  store ptr %i.az, ptr %4, align 8, !tbaa !99
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %3, ptr %.sroa.414.0..sroa_idx, align 8, !tbaa !100
  br label %.critedge45.sink.split

.critedge:                                        ; preds = %.lr.ph
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.0133.0190, i64 16 ; 2 uses
  %.not172 = icmp eq ptr %i.ba, %i.aw
  br i1 %.not172, label %.critedge39, label %.lr.ph

.critedge39:                                      ; preds = %.critedge, %bb.h, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt6vectorINS_15MutableArrayRefIhEESaIS4_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS6_EEEEjS6_S8_SB_E4findERKj.exit
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !101, !noalias !186
  %i.bd = icmp eq i32 %i.bc, 0
  %or.cond = or i1 %i.bd, %i.u
  br i1 %or.cond, label %.critedge43, label %bb.i

bb.i:                                             ; preds = %.critedge39
  %i.be = add nuw nsw i64 %.pre-phi, 31
  %i.bf = lshr i64 %i.be, 5                       ; 2 uses
  %i.bg = load i32, ptr %i.r, align 4, !tbaa !57, !noalias !187 ; 2 uses
  %i.bh = icmp eq i32 %i.bg, 0
  br i1 %i.bh, label %.lr.ph.i.i.i.preheader, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt6vectorINS_15MutableArrayRefIhEESaIS4_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS6_EEEEjS6_S8_SB_E5beginEv.exit

.lr.ph.i.i.i.preheader:                           ; preds = %bb.i
  %i.bi = icmp eq i64 %i.bf, 1
  br i1 %i.bi, label %.critedge43, label %.lr.ph267

.lr.ph.i.i.i:                                     ; preds = %.lr.ph267
  %i.bj = add nuw nsw i64 %i.bl, 1                ; 2 uses
  %i.bk = icmp eq i64 %i.bj, %i.bf
  br i1 %i.bk, label %.critedge43, label %.lr.ph267, !llvm.loop !170

.lr.ph267:                                        ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %i.bl = phi i64 [ %i.bj, %.lr.ph.i.i.i ], [ 1, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.bl
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !57, !noalias !187 ; 2 uses
  %i.bo = icmp eq i32 %i.bn, 0
  br i1 %i.bo, label %.lr.ph.i.i.i, label %._crit_edge.i.loopexit.i.i, !llvm.loop !170

._crit_edge.i.loopexit.i.i:                       ; preds = %.lr.ph267
  %i.bp = shl i64 %i.bl, 10
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt6vectorINS_15MutableArrayRefIhEESaIS4_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS6_EEEEjS6_S8_SB_E5beginEv.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt6vectorINS_15MutableArrayRefIhEESaIS4_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS6_EEEEjS6_S8_SB_E5beginEv.exit: ; preds = %bb.i, %._crit_edge.i.loopexit.i.i
  %.012.lcssa.i.i.i = phi i64 [ 0, %bb.i ], [ %i.bp, %._crit_edge.i.loopexit.i.i ]
  %.0.lcssa.i.i.i = phi i32 [ %i.bg, %bb.i ], [ %i.bn, %._crit_edge.i.loopexit.i.i ]
  %i.bq = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i.i, i1 true)
  %i.br = shl nuw nsw i32 %i.bq, 5
  %.idx = zext nneg i32 %i.br to i64
  %i.bs = or disjoint i64 %.012.lcssa.i.i.i, %.idx ; 2 uses
  %.not173193 = icmp eq i64 %i.bs, %.idx250
  br i1 %.not173193, label %.critedge43, label %.lr.ph195

.lr.ph195:                                        ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt6vectorINS_15MutableArrayRefIhEESaIS4_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS6_EEEEjS6_S8_SB_E5beginEv.exit
  %i.bt = add nuw nsw i64 %.pre-phi, 31
  %i.bu = lshr i64 %i.bt, 5                       ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph195, %_ZN4llvm16DenseMapIteratorIjSt6vectorINS_15MutableArrayRefIhEESaIS3_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EELb0EEppEv.exit
  %.pn = phi i64 [ %i.bs, %.lr.ph195 ], [ %i.di, %_ZN4llvm16DenseMapIteratorIjSt6vectorINS_15MutableArrayRefIhEESaIS3_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EELb0EEppEv.exit ] ; 2 uses
  %.sroa.0126.0194 = getelementptr i8, ptr %i.p, i64 %.pn ; 3 uses
  %i.bv = load i32, ptr %.sroa.0126.0194, align 8, !tbaa !108
  %i.bw = zext i32 %i.bv to i64                   ; 6 uses
  %i.bx = icmp ne i64 %2, %i.bw
  %.not36 = icmp ugt i64 %i.j, %i.bw
  %or.cond170 = and i1 %i.bx, %.not36
  br i1 %or.cond170, label %bb.k, label %.critedge41

bb.k:                                             ; preds = %bb.j
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.0126.0194, i64 8
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !94
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.0126.0194, i64 16
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !94 ; 3 uses
  %i.cc = icmp eq ptr %i.bz, %i.cb
  br i1 %i.cc, label %.critedge41, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cd = getelementptr inbounds i8, ptr %i.cb, i64 -8
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !97
  %i.cf = add i64 %i.ce, %i.bw                    ; 2 uses
  %i.cg = add i64 %i.cf, %i.bw
  %.not37 = icmp ult i64 %2, %i.cg
  br i1 %.not37, label %bb.m, label %.critedge41

bb.m:                                             ; preds = %bb.l
  %i.ch = tail call i64 @llvm.umax.i64(i64 %i.bw, i64 %2)
  %i.ci = icmp ne i64 %i.ch, %2
  %i.cj = icmp ugt i64 %i.j, %i.cf
  %.not3.i = or i1 %i.ci, %i.cj
  br i1 %.not3.i, label %.critedge41, label %_ZN4llvm5ErrorD2Ev.exit58

_ZN4llvm5ErrorD2Ev.exit58:                        ; preds = %bb.m
  %i.ck = getelementptr inbounds i8, ptr %i.cb, i64 -16
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !98
  %i.cm = sub nuw i64 %2, %i.bw
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.cm
  store ptr %i.cn, ptr %4, align 8, !tbaa !99
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %3, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !100
  br label %.critedge45.sink.split

.critedge41:                                      ; preds = %bb.m, %bb.l, %bb.j, %bb.k
  %i.co = add i64 %.pn, 32
  %i.cp = ashr exact i64 %i.co, 5                 ; 3 uses
  %.not.i.i = icmp ult i64 %i.cp, %.pre-phi
  br i1 %.not.i.i, label %bb.n, label %.critedge43

bb.n:                                             ; preds = %.critedge41
  %i.cq = lshr i64 %i.cp, 5                       ; 3 uses
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.cq
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !57
  %i.ct = trunc nuw i64 %i.cp to i32
  %i.cu = and i32 %i.ct, 31
  %i.cv = shl nsw i32 -1, %i.cu
  %i.cw = and i32 %i.cs, %i.cv                    ; 2 uses
  %i.cx = icmp eq i32 %i.cw, 0
  br i1 %i.cx, label %.lr.ph.i.i.preheader, label %_ZN4llvm16DenseMapIteratorIjSt6vectorINS_15MutableArrayRefIhEESaIS3_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EELb0EEppEv.exit

.lr.ph.i.i.preheader:                             ; preds = %bb.n
  %i.cy = add nuw nsw i64 %i.cq, 1                ; 2 uses
  %i.cz = icmp eq i64 %i.cy, %i.bu
  br i1 %i.cz, label %.critedge43, label %.lr.ph268

.lr.ph.i.i:                                       ; preds = %.lr.ph268
  %i.da = add i64 %i.dc, 1                        ; 2 uses
  %i.db = icmp eq i64 %i.da, %i.bu
  br i1 %i.db, label %.critedge43, label %.lr.ph268, !llvm.loop !170

.lr.ph268:                                        ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %i.dc = phi i64 [ %i.da, %.lr.ph.i.i ], [ %i.cy, %.lr.ph.i.i.preheader ] ; 3 uses
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.dc
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !57 ; 2 uses
  %i.df = icmp eq i32 %i.de, 0
  br i1 %i.df, label %.lr.ph.i.i, label %_ZN4llvm16DenseMapIteratorIjSt6vectorINS_15MutableArrayRefIhEESaIS3_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EELb0EEppEv.exit, !llvm.loop !170

_ZN4llvm16DenseMapIteratorIjSt6vectorINS_15MutableArrayRefIhEESaIS3_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EELb0EEppEv.exit: ; preds = %.lr.ph268, %bb.n
  %.012.lcssa.i.i = phi i64 [ %i.cq, %bb.n ], [ %i.dc, %.lr.ph268 ]
  %.0.lcssa.i.i = phi i32 [ %i.cw, %bb.n ], [ %i.de, %.lr.ph268 ]
  %i.dg = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i, i1 true)
  %.idx.i.i = shl i64 %.012.lcssa.i.i, 10
  %i.dh = shl nuw nsw i32 %i.dg, 5
  %.idx251 = zext nneg i32 %i.dh to i64
  %i.di = or disjoint i64 %.idx.i.i, %.idx251     ; 2 uses
  %.not173 = icmp eq i64 %i.di, %.idx250
  br i1 %.not173, label %.critedge43, label %bb.j

.critedge43:                                      ; preds = %.lr.ph.i.i.i, %.critedge41, %_ZN4llvm16DenseMapIteratorIjSt6vectorINS_15MutableArrayRefIhEESaIS3_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EELb0EEppEv.exit, %.lr.ph.i.i.preheader, %.lr.ph.i.i, %.lr.ph.i.i.i.preheader, %.critedge39, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt6vectorINS_15MutableArrayRefIhEESaIS4_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS6_EEEEjS6_S8_SB_E5beginEv.exit
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !188, !nonnull !109, !align !189 ; 4 uses
  %i.dl = add i64 %3, 7
  %i.dm = and i64 %i.dl, -8                       ; 2 uses
  %i.dn = load ptr, ptr %i.dk, align 8, !tbaa !120 ; 2 uses
  %i.do = ptrtoint ptr %i.dn to i64
  %i.dp = add i64 %i.dm, %i.do                    ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !121
  %i.ds = icmp ult i64 %i.dp, %i.dr
  br i1 %i.ds, label %bb.o, label %bb.p, !prof !53

bb.o:                                             ; preds = %.critedge43
  %i.dt = inttoptr i64 %i.dp to ptr
  store ptr %i.dt, ptr %i.dk, align 8, !tbaa !120
  br label %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE8AllocateEmm.exit

bb.p:                                             ; preds = %.critedge43
  %i.du = tail call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.dk, i64 noundef %3, i64 noundef %i.dm, i8 3)
  br label %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE8AllocateEmm.exit

_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE8AllocateEmm.exit: ; preds = %bb.o, %bb.p
  %.0.i.i = phi ptr [ %i.dn, %bb.o ], [ %i.du, %bb.p ] ; 5 uses
  tail call void @_ZN4llvm3msf17MappedBlockStream9readBytesEmNS_15MutableArrayRefIhEE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Error") align 8 %0, ptr noundef nonnull align 8 dereferenceable(128) %1, i64 noundef %2, ptr %.0.i.i, i64 %3)
  %i.dv = load ptr, ptr %0, align 8, !tbaa !87
  %.not174 = icmp eq ptr %i.dv, null
  br i1 %.not174, label %_ZN4llvm5ErrorD2Ev.exit59, label %.critedge45

_ZN4llvm5ErrorD2Ev.exit59:                        ; preds = %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE8AllocateEmm.exit
  %i.dw = load ptr, ptr %i.n, align 8, !tbaa !88, !noalias !190
  %i.dx = load i32, ptr %i.s, align 4, !tbaa !90, !noalias !190
  %i.dy = zext i32 %i.dx to i64
  %i.dz = getelementptr inbounds nuw [32 x i8], ptr %i.dw, i64 %i.dy
  %.not175 = icmp eq ptr %.lcssa.sink.i.i, %i.dz
  br i1 %.not175, label %_ZNSt6vectorIN4llvm15MutableArrayRefIhEESaIS2_EE12emplace_backIJRPhRmEEERS2_DpOT_.exit73, label %bb.q

bb.q:                                             ; preds = %_ZN4llvm5ErrorD2Ev.exit59
  %i.ea = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i, i64 8 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i, i64 16 ; 3 uses
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !191 ; 7 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i, i64 24 ; 3 uses
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !122
  %.not.i = icmp eq ptr %i.ec, %i.ee
  br i1 %.not.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  store ptr %.0.i.i, ptr %i.ec, align 8, !tbaa !98
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  store i64 %3, ptr %i.ef, align 8, !tbaa !97
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  store ptr %i.eg, ptr %i.eb, align 8, !tbaa !191
  br label %_ZN4llvm5ErrorD2Ev.exit76

bb.s:                                             ; preds = %bb.q
  %i.eh = load ptr, ptr %i.ea, align 8, !tbaa !123 ; 5 uses
  %i.ei = ptrtoint ptr %i.ec to i64
  %i.ej = ptrtoint ptr %i.eh to i64               ; 2 uses
  %i.ek = sub i64 %i.ei, %i.ej                    ; 3 uses
  %i.el = icmp eq i64 %i.ek, 9223372036854775792
  br i1 %i.el, label %bb.t, label %_ZNKSt6vectorIN4llvm15MutableArrayRefIhEESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.t:                                             ; preds = %bb.s
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #15
  unreachable

_ZNKSt6vectorIN4llvm15MutableArrayRefIhEESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.s
  %i.em = ashr exact i64 %i.ek, 4                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.em, i64 1)
  %i.en = add nsw i64 %.sroa.speculated.i.i.i, %i.em ; 2 uses
  %i.eo = icmp ult i64 %i.en, %i.em
  %i.ep = tail call i64 @llvm.umin.i64(i64 %i.en, i64 576460752303423487)
  %i.eq = select i1 %i.eo, i64 576460752303423487, i64 %i.ep ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.eq, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.er = shl nuw nsw i64 %i.eq, 4
  %i.es = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.er) #16 ; 5 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 %i.ek ; 2 uses
  store ptr %.0.i.i, ptr %i.et, align 8, !tbaa !98
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  store i64 %3, ptr %i.eu, align 8, !tbaa !97
  %.not10.i.i.i.i.i = icmp eq ptr %i.eh, %i.ec
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN4llvm15MutableArrayRefIhEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit23.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorIN4llvm15MutableArrayRefIhEESaIS2_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ew, %.lr.ph.i.i.i.i.i ], [ %i.es, %_ZNKSt6vectorIN4llvm15MutableArrayRefIhEESaIS2_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ev, %.lr.ph.i.i.i.i.i ], [ %i.eh, %_ZNKSt6vectorIN4llvm15MutableArrayRefIhEESaIS2_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i, i64 16, i1 false), !alias.scope !192
  %i.ev = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 16 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ev, %i.ec
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN4llvm15MutableArrayRefIhEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit23.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !176

_ZNSt6vectorIN4llvm15MutableArrayRefIhEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit23.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorIN4llvm15MutableArrayRefIhEESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.es, %_ZNKSt6vectorIN4llvm15MutableArrayRefIhEESaIS2_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.ew, %.lr.ph.i.i.i.i.i ]
  %i.ex = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 16
  %.not.i24.i.i = icmp eq ptr %i.eh, null
  br i1 %.not.i24.i.i, label %_ZNSt6vectorIN4llvm15MutableArrayRefIhEESaIS2_EE17_M_realloc_insertIJRPhRmEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.u

bb.u:                                             ; preds = %_ZNSt6vectorIN4llvm15MutableArrayRefIhEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit23.i.i
  %i.ey = load ptr, ptr %i.ed, align 8, !tbaa !122
  %i.ez = ptrtoint ptr %i.ey to i64
  %i.fa = sub i64 %i.ez, %i.ej
  tail call void @_ZdlPvm(ptr noundef nonnull %i.eh, i64 noundef %i.fa) #18
  br label %_ZNSt6vectorIN4llvm15MutableArrayRefIhEESaIS2_EE17_M_realloc_insertIJRPhRmEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIN4llvm15MutableArrayRefIhEESaIS2_EE17_M_realloc_insertIJRPhRmEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.u, %_ZNSt6vectorIN4llvm15MutableArrayRefIhEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit23.i.i
  store ptr %i.es, ptr %i.ea, align 8, !tbaa !123
  store ptr %i.ex, ptr %i.eb, align 8, !tbaa !191
  %i.fb = getelementptr inbounds nuw [16 x i8], ptr %i.es, i64 %i.eq
  store ptr %i.fb, ptr %i.ed, align 8, !tbaa !122
  br label %_ZN4llvm5ErrorD2Ev.exit76

_ZNSt6vectorIN4llvm15MutableArrayRefIhEESaIS2_EE12emplace_backIJRPhRmEEERS2_DpOT_.exit73: ; preds = %_ZN4llvm5ErrorD2Ev.exit59
  %i.fc = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #16 ; 4 uses
  store ptr %.0.i.i, ptr %i.fc, align 8, !tbaa !98
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 8
  store i64 %3, ptr %i.fd, align 8, !tbaa !97
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  %i.fe = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #16, !noalias !193 ; 3 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 16 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fe, ptr noundef nonnull align 8 dereferenceable(16) %i.fc, i64 16, i1 false), !noalias !193
  store i32 %i.o, ptr %5, align 8, !tbaa !108
  %i.fg = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  store ptr %i.fe, ptr %i.fg, align 8, !tbaa !123
  %i.fh = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.ff, ptr %i.fh, align 8, !tbaa !191
  %i.fi = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  store ptr %i.ff, ptr %i.fi, align 8, !tbaa !122
  %i.fj = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt6vectorINS_15MutableArrayRefIhEESaIS4_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS6_EEEEjS6_S8_SB_E24lookupOrInsertIntoBucketIjJS6_EEESt4pairIPSB_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.n, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(24) %i.fg), !noalias !194 ; 0 uses
  %i.fk = load ptr, ptr %i.fg, align 8, !tbaa !123 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.fk, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN4llvm15MutableArrayRefIhEESaIS2_EED2Ev.exit, label %bb.v

bb.v:                                             ; preds = %_ZNSt6vectorIN4llvm15MutableArrayRefIhEESaIS2_EE12emplace_backIJRPhRmEEERS2_DpOT_.exit73
  %i.fl = load ptr, ptr %i.fi, align 8, !tbaa !122
  %i.fm = ptrtoint ptr %i.fl to i64
  %i.fn = ptrtoint ptr %i.fk to i64
  %i.fo = sub i64 %i.fm, %i.fn
  call void @_ZdlPvm(ptr noundef nonnull %i.fk, i64 noundef %i.fo) #18
  br label %_ZNSt6vectorIN4llvm15MutableArrayRefIhEESaIS2_EED2Ev.exit

_ZNSt6vectorIN4llvm15MutableArrayRefIhEESaIS2_EED2Ev.exit: ; preds = %bb.v, %_ZNSt6vectorIN4llvm15MutableArrayRefIhEESaIS2_EE12emplace_backIJRPhRmEEERS2_DpOT_.exit73
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  call void @_ZdlPvm(ptr noundef nonnull %i.fc, i64 noundef 16) #18
  br label %_ZN4llvm5ErrorD2Ev.exit76

_ZN4llvm5ErrorD2Ev.exit76:                        ; preds = %_ZNSt6vectorIN4llvm15MutableArrayRefIhEESaIS2_EED2Ev.exit, %bb.r, %_ZNSt6vectorIN4llvm15MutableArrayRefIhEESaIS2_EE17_M_realloc_insertIJRPhRmEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i
  store ptr %.0.i.i, ptr %4, align 8, !tbaa !99
  %.sroa.4.0..sroa_idx79 = getelementptr inbounds nuw i8, ptr %4, i64 8
end_hunk_0
begin_hunk_1_@_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt6vectorINS_15MutableArrayRefIhEESaIS4_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS6_EEEEjS6_S8_SB_E16shrink_and_clearEv:bb.a

bb.c:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjSt6vectorINS_15MutableArrayRefIhEESaIS4_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS6_EEEEjS6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i, %.lr.ph.i
  %.0.i3.i = phi i32 [ %i.q, %.lr.ph.i ], [ %i.ae, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjSt6vectorINS_15MutableArrayRefIhEESaIS4_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS6_EEEEjS6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i ] ; 3 uses
  %i.s = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i, i1 true)
  %i.t = or disjoint i32 %i.s, %i.r
  %i.u = zext i32 %i.t to i64
  %i.v = getelementptr inbounds nuw [32 x i8], ptr %i.j, i64 %i.u ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !123  ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i.i.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjSt6vectorINS_15MutableArrayRefIhEESaIS4_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS6_EEEEjS6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !122
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = ptrtoint ptr %i.x to i64
  %i.ac = sub i64 %i.aa, %i.ab
  tail call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef %i.ac) #18
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjSt6vectorINS_15MutableArrayRefIhEESaIS4_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS6_EEEEjS6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIjSt6vectorINS_15MutableArrayRefIhEESaIS4_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS6_EEEEjS6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i: ; preds = %bb.d, %bb.c
  %i.ad = add i32 %.0.i3.i, -1
  %i.ae = and i32 %i.ad, %.0.i3.i                 ; 2 uses
  %.not11.i.i = icmp eq i32 %i.ae, 0
  br i1 %.not11.i.i, label %._crit_edge.i, label %bb.c, !llvm.loop !3

._crit_edge.i:                                    ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjSt6vectorINS_15MutableArrayRefIhEESaIS4_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS6_EEEEjS6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i, %.lr.ph7.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.not.i.i = icmp eq i64 %indvars.iv.next.i, %i.o
  br i1 %.not.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt6vectorINS_15MutableArrayRefIhEESaIS4_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS6_EEEEjS6_S8_SB_E10destroyAllEv.exit, label %.lr.ph7.i, !llvm.loop !4

_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt6vectorINS_15MutableArrayRefIhEESaIS4_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS6_EEEEjS6_S8_SB_E10destroyAllEv.exit: ; preds = %._crit_edge.i, %_ZNK4llvm8DenseMapIjSt6vectorINS_15MutableArrayRefIhEESaIS3_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEE18planShrinkAndClearEv.exit
  br i1 %.not, label %bb.e, label %bb.g

bb.e:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt6vectorINS_15MutableArrayRefIhEESaIS4_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS6_EEEEjS6_S8_SB_E10destroyAllEv.exit
  store i32 0, ptr %i.a, align 8, !tbaa !101
  %i.af = load i32, ptr %i.g, align 4, !tbaa !90  ; 2 uses
  %.not.i3 = icmp eq i32 %i.af, 0
  br i1 %.not.i3, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt6vectorINS_15MutableArrayRefIhEESaIS4_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS6_EEEEjS6_S8_SB_E9initEmptyEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !89
  %i.ai = zext i32 %i.af to i64
  %i.aj = add nuw nsw i64 %i.ai, 31
  %i.ak = lshr i64 %i.aj, 3
  %i.al = and i64 %i.ak, 1073741820
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ah, i8 0, i64 %i.al, i1 false)
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt6vectorINS_15MutableArrayRefIhEESaIS4_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS6_EEEEjS6_S8_SB_E9initEmptyEv.exit

bb.g:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt6vectorINS_15MutableArrayRefIhEESaIS4_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS6_EEEEjS6_S8_SB_E10destroyAllEv.exit
  %i.am = load i32, ptr %i.g, align 4, !tbaa !90  ; 2 uses
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %_ZN4llvm8DenseMapIjSt6vectorINS_15MutableArrayRefIhEESaIS3_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEE17deallocateBucketsEv.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ao = load ptr, ptr %0, align 8, !tbaa !88
  %i.ap = zext i32 %i.am to i64                   ; 2 uses
  %i.aq = shl nuw nsw i64 %i.ap, 5
  %i.ar = add nuw nsw i64 %i.ap, 31
  %i.as = lshr i64 %i.ar, 3
  %i.at = and i64 %i.as, 1073741820
  %i.au = add nuw nsw i64 %i.at, %i.aq
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ao, i64 noundef %i.au, i64 noundef 8) #17
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIjSt6vectorINS_15MutableArrayRefIhEESaIS3_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEE17deallocateBucketsEv.exit

_ZN4llvm8DenseMapIjSt6vectorINS_15MutableArrayRefIhEESaIS3_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEE17deallocateBucketsEv.exit: ; preds = %bb.g, %bb.h
  store i32 %.0.i, ptr %i.g, align 4, !tbaa !90
  %.not.i4 = icmp eq i32 %.0.i, 0
  br i1 %.not.i4, label %bb.k, label %bb.i

bb.i:                                             ; preds = %_ZN4llvm8DenseMapIjSt6vectorINS_15MutableArrayRefIhEESaIS3_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEE17deallocateBucketsEv.exit
  %i.av = shl nuw nsw i64 %.sroa.39.0.insert.ext.i, 5
  %i.aw = add nuw nsw i64 %.sroa.39.0.insert.ext.i, 31
  %i.ax = lshr i64 %i.aw, 3
  %i.ay = and i64 %i.ax, 1073741820
  %i.az = add nuw nsw i64 %i.ay, %i.av
  %i.ba = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.az, i64 noundef 8) #17 ; 2 uses
  %i.bb = load i32, ptr %i.g, align 4, !tbaa !90  ; 2 uses
  %i.bc = zext i32 %i.bb to i64                   ; 2 uses
  %i.bd = shl nuw nsw i64 %i.bc, 5
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.bd ; 2 uses
  store ptr %i.ba, ptr %0, align 8, !tbaa !88
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.be, ptr %i.bf, align 8, !tbaa !89
  store i32 0, ptr %i.a, align 8, !tbaa !101
  %.not.i.i5 = icmp eq i32 %i.bb, 0
  br i1 %.not.i.i5, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt6vectorINS_15MutableArrayRefIhEESaIS4_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS6_EEEEjS6_S8_SB_E9initEmptyEv.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bg = add nuw nsw i64 %i.bc, 31
  %i.bh = lshr i64 %i.bg, 3
  %i.bi = and i64 %i.bh, 1073741820
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.be, i8 0, i64 %i.bi, i1 false)
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt6vectorINS_15MutableArrayRefIhEESaIS4_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS6_EEEEjS6_S8_SB_E9initEmptyEv.exit

bb.k:                                             ; preds = %_ZN4llvm8DenseMapIjSt6vectorINS_15MutableArrayRefIhEESaIS3_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEE17deallocateBucketsEv.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %0, i8 0, i64 20, i1 false)
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt6vectorINS_15MutableArrayRefIhEESaIS4_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS6_EEEEjS6_S8_SB_E9initEmptyEv.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt6vectorINS_15MutableArrayRefIhEESaIS4_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS6_EEEEjS6_S8_SB_E9initEmptyEv.exit: ; preds = %bb.k, %bb.j, %bb.i, %bb.f, %bb.e
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZNK4llvm3msf17MappedBlockStream18fixCacheAfterWriteEmNS_8ArrayRefIhEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %0, i64 noundef %1, ptr nofree readonly captures(none) %2, i64 %3) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !88, !noalias !210
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !89, !noalias !210 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.f = load i32, ptr %i.e, align 4, !tbaa !90, !noalias !210 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.h = load i32, ptr %i.g, align 8, !tbaa !101, !noalias !210
  %i.i = icmp eq i32 %i.h, 0
  %i.j = zext i32 %i.f to i64                     ; 4 uses
  %.idx80 = shl nuw nsw i64 %i.j, 5               ; 2 uses
  %.not.i.not.i.i = icmp eq i32 %i.f, 0
  %or.cond = select i1 %i.i, i1 true, i1 %.not.i.not.i.i
  br i1 %or.cond, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = add nuw nsw i64 %i.j, 31
  %i.l = lshr i64 %i.k, 5                         ; 2 uses
  %i.m = load i32, ptr %i.d, align 4, !tbaa !57, !noalias !211 ; 2 uses
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %.lr.ph.i.i.i.preheader, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIjSt6vectorINS_15MutableArrayRefIhEESaIS4_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS6_EEEEjS6_S8_SB_E5beginEv.exit

.lr.ph.i.i.i.preheader:                           ; preds = %bb.b
  %i.o = icmp eq i64 %i.l, 1
  br i1 %i.o, label %._crit_edge, label %.lr.ph88

.lr.ph.i.i.i:                                     ; preds = %.lr.ph88
  %i.p = add nuw nsw i64 %i.r, 1                  ; 2 uses
  %i.q = icmp eq i64 %i.p, %i.l
  br i1 %i.q, label %._crit_edge, label %.lr.ph88, !llvm.loop !209

.lr.ph88:                                         ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %i.r = phi i64 [ %i.p, %.lr.ph.i.i.i ], [ 1, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.r
  %i.t = load i32, ptr %i.s, align 4, !tbaa !57, !noalias !211 ; 2 uses
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %.lr.ph.i.i.i, label %._crit_edge.i.loopexit.i.i, !llvm.loop !209

._crit_edge.i.loopexit.i.i:                       ; preds = %.lr.ph88
  %i.v = shl i64 %i.r, 10
  br label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIjSt6vectorINS_15MutableArrayRefIhEESaIS4_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS6_EEEEjS6_S8_SB_E5beginEv.exit

_ZNK4llvm12DenseMapBaseINS_8DenseMapIjSt6vectorINS_15MutableArrayRefIhEESaIS4_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS6_EEEEjS6_S8_SB_E5beginEv.exit: ; preds = %bb.b, %._crit_edge.i.loopexit.i.i
  %.012.lcssa.i.i.i = phi i64 [ 0, %bb.b ], [ %i.v, %._crit_edge.i.loopexit.i.i ]
  %.0.lcssa.i.i.i = phi i32 [ %i.m, %bb.b ], [ %i.t, %._crit_edge.i.loopexit.i.i ]
  %i.w = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i.i, i1 true)
  %i.x = shl nuw nsw i32 %i.w, 5
  %.idx = zext nneg i32 %i.x to i64
  %i.y = or disjoint i64 %.012.lcssa.i.i.i, %.idx ; 2 uses
  %.not49 = icmp eq i64 %i.y, %.idx80
  br i1 %.not49, label %._crit_edge, label %.lr.ph51

.lr.ph51:                                         ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapIjSt6vectorINS_15MutableArrayRefIhEESaIS4_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS6_EEEEjS6_S8_SB_E5beginEv.exit
  %i.z = add i64 %3, %1                           ; 2 uses
  %i.aa = add nuw nsw i64 %i.j, 31
  %i.ab = lshr i64 %i.aa, 5                       ; 2 uses
  br label %bb.c

._crit_edge:                                      ; preds = %.lr.ph.i.i.i, %.loopexit, %_ZN4llvm16DenseMapIteratorIjSt6vectorINS_15MutableArrayRefIhEESaIS3_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EELb1EEppEv.exit, %.lr.ph.i.i.preheader, %.lr.ph.i.i, %.lr.ph.i.i.i.preheader, %bb.a, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIjSt6vectorINS_15MutableArrayRefIhEESaIS4_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS6_EEEEjS6_S8_SB_E5beginEv.exit
  ret void

bb.c:                                             ; preds = %.lr.ph51, %_ZN4llvm16DenseMapIteratorIjSt6vectorINS_15MutableArrayRefIhEESaIS3_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EELb1EEppEv.exit
  %.pn = phi i64 [ %i.y, %.lr.ph51 ], [ %i.bt, %_ZN4llvm16DenseMapIteratorIjSt6vectorINS_15MutableArrayRefIhEESaIS3_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EELb1EEppEv.exit ] ; 2 uses
  %.sroa.033.050 = getelementptr i8, ptr %i.b, i64 %.pn ; 4 uses
  %i.ac = load i32, ptr %.sroa.033.050, align 8, !tbaa !108 ; 2 uses
  %i.ad = zext i32 %i.ac to i64
  %i.ae = icmp ult i64 %i.z, %i.ad
  br i1 %i.ae, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.033.050, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !94 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.033.050, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !94 ; 2 uses
  %.not4247 = icmp eq ptr %i.ag, %i.ai
  br i1 %.not4247, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %bb.f
  %i.aj = phi i32 [ %i.ax, %bb.f ], [ %i.ac, %bb.d ] ; 2 uses
  %.sroa.027.048 = phi ptr [ %i.ay, %bb.f ], [ %i.ag, %bb.d ] ; 3 uses
  %i.ak = zext i32 %i.aj to i64                   ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.027.048, i64 8
  %i.am = load i64, ptr %i.al, align 8, !tbaa !97
  %i.an = add i64 %i.am, %i.ak                    ; 2 uses
  %i.ao = icmp ult i64 %i.an, %1
  br i1 %i.ao, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %i.ap = tail call i64 @llvm.umax.i64(i64 %1, i64 %i.ak) ; 3 uses
  %i.aq = tail call i64 @llvm.umin.i64(i64 %i.an, i64 %i.z)
  %i.ar = sub i64 %i.aq, %i.ap
  %i.as = sub nuw i64 %i.ap, %1
  %i.at = sub nuw i64 %i.ap, %i.ak
  %i.au = load ptr, ptr %.sroa.027.048, align 8, !tbaa !98
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.at
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 %i.as
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.av, ptr align 1 %i.aw, i64 %i.ar, i1 false)
  %.pre = load i32, ptr %.sroa.033.050, align 8, !tbaa !108
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.e
  %i.ax = phi i32 [ %i.aj, %.lr.ph ], [ %.pre, %bb.e ]
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.027.048, i64 16 ; 2 uses
  %.not42 = icmp eq ptr %i.ay, %i.ai
  br i1 %.not42, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %bb.f, %bb.d, %bb.c
  %i.az = add i64 %.pn, 32
  %i.ba = ashr exact i64 %i.az, 5                 ; 3 uses
  %.not.i.i = icmp ult i64 %i.ba, %i.j
  br i1 %.not.i.i, label %bb.g, label %._crit_edge

bb.g:                                             ; preds = %.loopexit
  %i.bb = lshr i64 %i.ba, 5                       ; 3 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.bb
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !57
  %i.be = trunc nuw i64 %i.ba to i32
  %i.bf = and i32 %i.be, 31
  %i.bg = shl nsw i32 -1, %i.bf
  %i.bh = and i32 %i.bd, %i.bg                    ; 2 uses
  %i.bi = icmp eq i32 %i.bh, 0
  br i1 %i.bi, label %.lr.ph.i.i.preheader, label %_ZN4llvm16DenseMapIteratorIjSt6vectorINS_15MutableArrayRefIhEESaIS3_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EELb1EEppEv.exit

.lr.ph.i.i.preheader:                             ; preds = %bb.g
  %i.bj = add nuw nsw i64 %i.bb, 1                ; 2 uses
  %i.bk = icmp eq i64 %i.bj, %i.ab
  br i1 %i.bk, label %._crit_edge, label %.lr.ph89

.lr.ph.i.i:                                       ; preds = %.lr.ph89
  %i.bl = add i64 %i.bn, 1                        ; 2 uses
  %i.bm = icmp eq i64 %i.bl, %i.ab
  br i1 %i.bm, label %._crit_edge, label %.lr.ph89, !llvm.loop !209

.lr.ph89:                                         ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %i.bn = phi i64 [ %i.bl, %.lr.ph.i.i ], [ %i.bj, %.lr.ph.i.i.preheader ] ; 3 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.bn
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !57 ; 2 uses
  %i.bq = icmp eq i32 %i.bp, 0
  br i1 %i.bq, label %.lr.ph.i.i, label %_ZN4llvm16DenseMapIteratorIjSt6vectorINS_15MutableArrayRefIhEESaIS3_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EELb1EEppEv.exit, !llvm.loop !209

_ZN4llvm16DenseMapIteratorIjSt6vectorINS_15MutableArrayRefIhEESaIS3_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EELb1EEppEv.exit: ; preds = %.lr.ph89, %bb.g
  %.012.lcssa.i.i = phi i64 [ %i.bb, %bb.g ], [ %i.bn, %.lr.ph89 ]
  %.0.lcssa.i.i = phi i32 [ %i.bh, %bb.g ], [ %i.bp, %.lr.ph89 ]
  %i.br = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i, i1 true)
  %.idx.i.i = shl i64 %.012.lcssa.i.i, 10
  %i.bs = shl nuw nsw i32 %i.br, 5
  %.idx81 = zext nneg i32 %i.bs to i64
  %i.bt = or disjoint i64 %.idx.i.i, %.idx81      ; 2 uses
  %.not = icmp eq i64 %i.bt, %.idx80
  br i1 %.not, label %._crit_edge, label %bb.c
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm3msf25WritableMappedBlockStreamC2EjRKNS0_15MSFStreamLayoutENS_23WritableBinaryStreamRefERNS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEE(ptr noundef nonnull align 8 dereferenceable(184) initializes((0, 8)) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr nofree noundef align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(80) %4) unnamed_addr #0 align 2 {
bb.a:
  %5 = alloca %"class.llvm::BinaryStreamRef", align 8 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN4llvm3msf25WritableMappedBlockStreamE, i64 16), ptr %0, align 8, !tbaa !19
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_ZNK4llvm23WritableBinaryStreamRefcvNS_15BinaryStreamRefEEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::BinaryStreamRef") align 8 %5, ptr noundef nonnull align 8 dereferenceable(48) %3) #17
  call void @_ZN4llvm3msf17MappedBlockStreamC1EjRKNS0_15MSFStreamLayoutENS_15BinaryStreamRefERNS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEE(ptr noundef nonnull align 8 dereferenceable(128) %i.a, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr nofree noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull align 8 dereferenceable(80) %4) #17
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !55   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZN4llvm19BinaryStreamRefBaseINS_15BinaryStreamRefENS_12BinaryStreamEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  %i.e = load atomic i64, ptr %i.d acquire, align 8 ; 2 uses
  %i.f = icmp eq i64 %i.e, 4294967297
  %i.g = trunc i64 %i.e to i32                    ; 2 uses
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.d, align 8, !tbaa !60
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store i32 0, ptr %i.h, align 4, !tbaa !61
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !19
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  call void %i.k(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #17, !inline_history !0
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !19
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8
  call void %i.n(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #17, !inline_history !0
  br label %_ZN4llvm19BinaryStreamRefBaseINS_15BinaryStreamRefENS_12BinaryStreamEED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.o = load i8, ptr @__libc_single_threaded, align 1, !tbaa !54
  %.not.i.i.i.i = icmp eq i8 %i.o, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = add nsw i32 %i.g, -1
  store i32 %i.p, ptr %i.d, align 8, !tbaa !57
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.q = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i = phi i32 [ %i.g, %bb.e ], [ %i.q, %bb.f ]
  %i.r = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.r, label %bb.g, label %_ZN4llvm19BinaryStreamRefBaseINS_15BinaryStreamRefENS_12BinaryStreamEED2Ev.exit, !prof !50

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #17
  br label %_ZN4llvm19BinaryStreamRefBaseINS_15BinaryStreamRefENS_12BinaryStreamEED2Ev.exit

_ZN4llvm19BinaryStreamRefBaseINS_15BinaryStreamRefENS_12BinaryStreamEED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !55   ; 2 uses
  %i.v = load <2 x ptr>, ptr %3, align 8, !tbaa !56
  store <2 x ptr> %i.v, ptr %i.s, align 8, !tbaa !56
  %.not.i.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i.i, label %_ZN4llvm23WritableBinaryStreamRefC2ERKS0_.exit, label %bb.h

bb.h:                                             ; preds = %_ZN4llvm19BinaryStreamRefBaseINS_15BinaryStreamRefENS_12BinaryStreamEED2Ev.exit
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 3 uses
  %i.x = load i8, ptr @__libc_single_threaded, align 1, !tbaa !54
  %.not.i.i.i.i.i.i = icmp eq i8 %i.x, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = load i32, ptr %i.w, align 4, !tbaa !57
  %i.z = add nsw i32 %i.y, 1
  store i32 %i.z, ptr %i.w, align 4, !tbaa !57
  br label %_ZN4llvm23WritableBinaryStreamRefC2ERKS0_.exit

bb.j:                                             ; preds = %bb.h
  %i.aa = atomicrmw volatile add ptr %i.w, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN4llvm23WritableBinaryStreamRefC2ERKS0_.exit

_ZN4llvm23WritableBinaryStreamRefC2ERKS0_.exit:   ; preds = %_ZN4llvm19BinaryStreamRefBaseINS_15BinaryStreamRefENS_12BinaryStreamEED2Ev.exit, %bb.i, %bb.j
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ab, ptr noundef nonnull align 8 dereferenceable(32) %i.ac, i64 32, i1 false)
  ret void
}

declare void @_ZNK4llvm23WritableBinaryStreamRefcvNS_15BinaryStreamRefEEv(ptr dead_on_unwind writable sret(%"class.llvm::BinaryStreamRef") align 8, ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm3msf25WritableMappedBlockStream12createStreamEjRKNS0_15MSFStreamLayoutENS_23WritableBinaryStreamRefERNS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::unique_ptr.46") align 8 captures(none) initializes((0, 8)) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr nofree noundef readonly align 8 captures(none) dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(80) %4) local_unnamed_addr #0 align 2 {
bb.a:
  %5 = alloca %"class.llvm::WritableBinaryStreamRef", align 16 ; 6 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(184) ptr @_Znwm(i64 noundef 184) #16, !noalias !215 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5), !noalias !215
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !55, !noalias !215 ; 2 uses
  %i.e = load <2 x ptr>, ptr %3, align 8, !tbaa !56, !noalias !215
  store <2 x ptr> %i.e, ptr %5, align 16, !tbaa !56, !noalias !215
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN4llvm23WritableBinaryStreamRefC2ERKS0_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  %i.g = load i8, ptr @__libc_single_threaded, align 1, !tbaa !54, !noalias !215
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.g, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load i32, ptr %i.f, align 4, !tbaa !57, !noalias !215
  %i.i = add nsw i32 %i.h, 1
  store i32 %i.i, ptr %i.f, align 4, !tbaa !57, !noalias !215
  br label %_ZN4llvm23WritableBinaryStreamRefC2ERKS0_.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.j = atomicrmw volatile add ptr %i.f, i32 1 acq_rel, align 4, !noalias !215 ; 0 uses
  br label %_ZN4llvm23WritableBinaryStreamRefC2ERKS0_.exit.i.i

_ZN4llvm23WritableBinaryStreamRefC2ERKS0_.exit.i.i: ; preds = %bb.d, %bb.c, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.k, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.l, i64 32, i1 false), !noalias !215
  call void @_ZN4llvm3msf25WritableMappedBlockStreamC2EjRKNS0_15MSFStreamLayoutENS_23WritableBinaryStreamRefERNS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEE(ptr noundef nonnull align 8 dereferenceable(184) %i.a, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr nofree noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull align 8 dereferenceable(80) %4), !noalias !215
  %i.m = load ptr, ptr %i.b, align 8, !tbaa !55, !noalias !215 ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10unique_ptrIN12_GLOBAL__N_121MappedBlockStreamImplIN4llvm3msf25WritableMappedBlockStreamEEESt14default_deleteIS5_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm23WritableBinaryStreamRefC2ERKS0_.exit.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 4 uses
  %i.o = load atomic i64, ptr %i.n acquire, align 8, !noalias !215 ; 2 uses
  %i.p = icmp eq i64 %i.o, 4294967297
  %i.q = trunc i64 %i.o to i32                    ; 2 uses
  br i1 %i.p, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.n, align 8, !tbaa !60, !noalias !215
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  store i32 0, ptr %i.r, align 4, !tbaa !61, !noalias !215
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !19, !noalias !215
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !noalias !215
end_hunk_1
begin_hunk_2_@_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt6vectorINS_15MutableArrayRefIhEESaIS4_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS6_EEEEjS6_S8_SB_E8moveFromERSC_:bb.a
  %i.y = lshr i64 %i.x, 5                         ; 2 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !57
  %i.ab = and i32 %.0.i7, 31                      ; 2 uses
  %i.ac = lshr i32 %i.aa, %i.ab
  %i.ad = trunc i32 %i.ac to i1
  %i.ae = add i32 %.0.i7, 1
  br i1 %i.ad, label %bb.c, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjSt6vectorINS_15MutableArrayRefIhEESaIS4_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS6_EEEEjS6_S8_SB_E8moveFromERSC_ENKUljE_clEj.exit, !llvm.loop !343

_ZZN4llvm12DenseMapBaseINS_8DenseMapIjSt6vectorINS_15MutableArrayRefIhEESaIS4_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS6_EEEEjS6_S8_SB_E8moveFromERSC_ENKUljE_clEj.exit: ; preds = %bb.c
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.y ; 2 uses
  %i.ag = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %i.x ; 3 uses
  store i32 %i.v, ptr %i.ag, align 4, !tbaa !57
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  %i.aj = load <2 x ptr>, ptr %i.ai, align 8, !tbaa !94
  store <2 x ptr> %i.aj, ptr %i.ah, align 8, !tbaa !94
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.al = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !122
  store ptr %i.am, ptr %i.ak, align 8, !tbaa !122
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, i8 0, i64 24, i1 false)
  %i.an = shl nuw i32 1, %i.ab
  %i.ao = load i32, ptr %i.af, align 4, !tbaa !57
  %i.ap = or i32 %i.ao, %i.an
  store i32 %i.ap, ptr %i.af, align 4, !tbaa !57
  %i.aq = add i32 %.0.i19, -1
  %i.ar = and i32 %i.aq, %.0.i19                  ; 2 uses
  %.not11.i = icmp eq i32 %i.ar, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !344

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjSt6vectorINS_15MutableArrayRefIhEESaIS4_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS6_EEEEjS6_S8_SB_E8moveFromERSC_ENKUljE_clEj.exit, %.lr.ph23
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjSt6vectorINS_15MutableArrayRefIhEESaIS7_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS9_EEEEjS9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph23, !llvm.loop !345

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjSt6vectorINS_15MutableArrayRefIhEESaIS7_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS9_EEEEjS9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !90
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjSt6vectorINS_15MutableArrayRefIhEESaIS7_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS9_EEEEjS9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjSt6vectorINS_15MutableArrayRefIhEESaIS7_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS9_EEEEjS9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjSt6vectorINS_15MutableArrayRefIhEESaIS7_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS9_EEEEjS9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.as = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjSt6vectorINS_15MutableArrayRefIhEESaIS7_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS9_EEEEjS9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.au = load i32, ptr %i.at, align 8, !tbaa !101
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.au, ptr %i.av, align 8, !tbaa !101
  %i.aw = icmp eq i32 %i.as, 0
  br i1 %i.aw, label %_ZN4llvm8DenseMapIjSt6vectorINS_15MutableArrayRefIhEESaIS3_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEE4killEv.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjSt6vectorINS_15MutableArrayRefIhEESaIS7_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS9_EEEEjS9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit
  %i.ax = load ptr, ptr %1, align 8, !tbaa !88
  %i.ay = zext i32 %i.as to i64                   ; 2 uses
  %i.az = shl nuw nsw i64 %i.ay, 5
  %i.ba = add nuw nsw i64 %i.ay, 31
  %i.bb = lshr i64 %i.ba, 3
  %i.bc = and i64 %i.bb, 1073741820
  %i.bd = add nuw nsw i64 %i.bc, %i.az
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ax, i64 noundef %i.bd, i64 noundef 8) #17
  store i32 0, ptr %i.d, align 4, !tbaa !90
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIjSt6vectorINS_15MutableArrayRefIhEESaIS3_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEE4killEv.exit

_ZN4llvm8DenseMapIjSt6vectorINS_15MutableArrayRefIhEESaIS3_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjSt6vectorINS_15MutableArrayRefIhEESaIS7_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS9_EEEEjS9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit, %bb.d
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #12

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm3msf25WritableMappedBlockStreamD2Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN4llvm3msf25WritableMappedBlockStreamE, i64 16), ptr %0, align 8, !tbaa !19
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !55   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN4llvm19BinaryStreamRefBaseINS_23WritableBinaryStreamRefENS_20WritableBinaryStreamEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !60
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !61
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !19
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #17, !inline_history !5
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !19
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #17, !inline_history !5
  br label %_ZN4llvm19BinaryStreamRefBaseINS_23WritableBinaryStreamRefENS_20WritableBinaryStreamEED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !54
  %.not.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !57
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZN4llvm19BinaryStreamRefBaseINS_23WritableBinaryStreamRefENS_20WritableBinaryStreamEED2Ev.exit, !prof !50

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #17
  br label %_ZN4llvm19BinaryStreamRefBaseINS_23WritableBinaryStreamRefENS_20WritableBinaryStreamEED2Ev.exit

_ZN4llvm19BinaryStreamRefBaseINS_23WritableBinaryStreamRefENS_20WritableBinaryStreamEED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN4llvm3msf17MappedBlockStreamD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %i.r) #17
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_121MappedBlockStreamImplIN4llvm3msf25WritableMappedBlockStreamEED0Ev(ptr noundef nonnull align 8 dereferenceable(184) initializes((0, 8)) %0) unnamed_addr #6 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN4llvm3msf25WritableMappedBlockStreamE, i64 16), ptr %0, align 8, !tbaa !19
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !55   ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZN4llvm3msf25WritableMappedBlockStreamD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !60
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !61
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !19
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #17, !inline_history !7
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !19
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #17, !inline_history !7
  br label %_ZN4llvm3msf25WritableMappedBlockStreamD2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !54
  %.not.i.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !57
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZN4llvm3msf25WritableMappedBlockStreamD2Ev.exit, !prof !50

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #17, !inline_history !128
  br label %_ZN4llvm3msf25WritableMappedBlockStreamD2Ev.exit

_ZN4llvm3msf25WritableMappedBlockStreamD2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN4llvm3msf17MappedBlockStreamD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %i.r) #17, !inline_history !128
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 184) #18
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #14

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { noreturn nounwind }
attributes #16 = { builtin nounwind allocsize(0) }
attributes #17 = { nounwind }
attributes #18 = { builtin nounwind }

!llvm.module.flags = !{!10, !11}
!llvm.ident = !{!12}
!llvm.errno.tbaa = !{!17}

!0 = distinct !{null, null, null, null}
!1 = distinct !{null}
!2 = distinct !{null}
!3 = distinct !{!3, !102}
!4 = distinct !{!4, !102}
!5 = distinct !{null, null, null, null}
!6 = distinct !{ptr @_ZN4llvm18BinaryStreamWriterD2Ev, null, null, null, null}
!7 = distinct !{ptr @_ZN4llvm3msf25WritableMappedBlockStreamD2Ev, null, null, null, null}
!8 = distinct !{null, null}
!9 = distinct !{!9, !102}
!10 = !{i32 8, !"PIC Level", i32 2}
!11 = !{i32 7, !"uwtable", i32 2}
!12 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!13 = !{!"Simple C++ TBAA"}
!14 = !{!"omnipotent char", !13, i64 0}
!15 = !{!"int", !14, i64 0}
!16 = !{!"__libc_errno", !15, i64 0}
!17 = !{!16, !15, i64 0}
!18 = !{!"vtable pointer", !13, i64 0}
!19 = !{!18, !18, i64 0}
!20 = !{!"_ZTSN4llvm12BinaryStreamE"}
!21 = !{!"any pointer", !14, i64 0}
!22 = !{!"p1 _ZTSN4llvm7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEE", !21, i64 0}
!23 = !{!"_ZTSNSt12_Vector_baseIN4llvm7support6detail31packed_endian_specific_integralIjLNS0_10endiannessE1ELm1ELm1EEESaIS5_EE17_Vector_impl_dataE", !22, i64 0, !22, i64 8, !22, i64 16}
!24 = !{!"_ZTSNSt12_Vector_baseIN4llvm7support6detail31packed_endian_specific_integralIjLNS0_10endiannessE1ELm1ELm1EEESaIS5_EE12_Vector_implE", !23, i64 0}
!25 = !{!"_ZTSSt12_Vector_baseIN4llvm7support6detail31packed_endian_specific_integralIjLNS0_10endiannessE1ELm1ELm1EEESaIS5_EE", !24, i64 0}
!26 = !{!"_ZTSSt6vectorIN4llvm7support6detail31packed_endian_specific_integralIjLNS0_10endiannessE1ELm1ELm1EEESaIS5_EE", !25, i64 0}
!27 = !{!"_ZTSN4llvm3msf15MSFStreamLayoutE", !15, i64 0, !26, i64 8}
!28 = !{!"p1 _ZTSN4llvm12BinaryStreamE", !21, i64 0}
!29 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !21, i64 0}
!30 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !29, i64 0}
!31 = !{!"_ZTSSt12__shared_ptrIN4llvm12BinaryStreamELN9__gnu_cxx12_Lock_policyE2EE", !28, i64 0, !30, i64 8}
!32 = !{!"_ZTSSt10shared_ptrIN4llvm12BinaryStreamEE", !31, i64 0}
!33 = !{!"long", !14, i64 0}
!34 = !{!"bool", !14, i64 0}
!35 = !{!"_ZTSSt22_Optional_payload_baseImE", !14, i64 0, !34, i64 8}
!36 = !{!"_ZTSSt17_Optional_payloadImLb1ELb1ELb1EE", !35, i64 0}
!37 = !{!"_ZTSSt14_Optional_baseImLb1ELb1EE", !36, i64 0}
!38 = !{!"_ZTSSt8optionalImE", !37, i64 0}
!39 = !{!"_ZTSN4llvm19BinaryStreamRefBaseINS_15BinaryStreamRefENS_12BinaryStreamEEE", !32, i64 0, !28, i64 16, !33, i64 24, !38, i64 32}
!40 = !{!"_ZTSN4llvm15BinaryStreamRefE", !39, i64 0}
!41 = !{!"p1 _ZTSN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEE", !21, i64 0}
!42 = !{!"p1 _ZTSN4llvm6detail12DenseMapPairIjSt6vectorINS_15MutableArrayRefIhEESaIS4_EEEE", !21, i64 0}
!43 = !{!"p1 int", !21, i64 0}
!44 = !{!"_ZTSN4llvm8DenseMapIjSt6vectorINS_15MutableArrayRefIhEESaIS3_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEE", !42, i64 0, !43, i64 8, !15, i64 16, !15, i64 20}
!45 = !{!"_ZTSN4llvm3msf17MappedBlockStreamE", !20, i64 0, !15, i64 8, !27, i64 16, !40, i64 48, !41, i64 96, !44, i64 104}
!46 = !{!45, !15, i64 8}
!47 = !{!27, !15, i64 0}
!48 = !{!23, !22, i64 8}
!49 = !{!23, !22, i64 0}
!50 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!51 = !{!23, !22, i64 16}
!52 = !{!22, !22, i64 0}
!53 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!54 = !{!14, !14, i64 0}
!55 = !{!30, !29, i64 0}
!56 = !{!21, !21, i64 0}
!57 = !{!15, !15, i64 0}
!58 = !{!41, !41, i64 0}
!59 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !15, i64 8, !15, i64 12}
!60 = !{!59, !15, i64 8}
!61 = !{!59, !15, i64 12}
!62 = !{!"p1 _ZTSN4llvm3msf17MappedBlockStreamE", !21, i64 0}
!63 = !{!"_ZTSSt10_Head_baseILm0EPN4llvm3msf17MappedBlockStreamELb0EE", !62, i64 0}
!64 = !{!63, !62, i64 0}
!65 = !{!"p1 _ZTSN4llvm8ArrayRefINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEEE", !21, i64 0}
!66 = !{!"_ZTSNSt12_Vector_baseIN4llvm8ArrayRefINS0_7support6detail31packed_endian_specific_integralIjLNS0_10endiannessE1ELm1ELm1EEEEESaIS7_EE17_Vector_impl_dataE", !65, i64 0, !65, i64 8, !65, i64 16}
!67 = !{!66, !65, i64 0}
!68 = !{!"_ZTSN4llvm8ArrayRefINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEEE", !22, i64 0, !33, i64 8}
!69 = !{!68, !22, i64 0}
!70 = !{!68, !33, i64 8}
!71 = !{!"branch_weights", !"expected", i32 0, i32 -2147483648}
!72 = !{!"p1 _ZTSN4llvm3msf10SuperBlockE", !21, i64 0}
!73 = !{!"_ZTSN4llvm15SmallVectorBaseIjEE", !21, i64 0, !15, i64 8, !15, i64 12}
!74 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonImvEE", !73, i64 0}
!75 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseImLb1EEE", !74, i64 0}
!76 = !{!"_ZTSN4llvm15SmallVectorImplImEE", !75, i64 0}
!77 = !{!"_ZTSN4llvm18SmallVectorStorageImLj6EEE", !14, i64 0}
!78 = !{!"_ZTSN4llvm11SmallVectorImLj6EEE", !76, i64 0, !77, i64 16}
!79 = !{!"_ZTSN4llvm9BitVectorE", !78, i64 0, !15, i64 64}
!80 = !{!"_ZTSNSt12_Vector_baseIN4llvm8ArrayRefINS0_7support6detail31packed_endian_specific_integralIjLNS0_10endiannessE1ELm1ELm1EEEEESaIS7_EE12_Vector_implE", !66, i64 0}
!81 = !{!"_ZTSSt12_Vector_baseIN4llvm8ArrayRefINS0_7support6detail31packed_endian_specific_integralIjLNS0_10endiannessE1ELm1ELm1EEEEESaIS7_EE", !80, i64 0}
!82 = !{!"_ZTSSt6vectorIN4llvm8ArrayRefINS0_7support6detail31packed_endian_specific_integralIjLNS0_10endiannessE1ELm1ELm1EEEEESaIS7_EE", !81, i64 0}
!83 = !{!"_ZTSN4llvm3msf9MSFLayoutE", !72, i64 0, !79, i64 8, !68, i64 80, !68, i64 96, !82, i64 112}
!84 = !{!83, !72, i64 0}
!85 = !{!"p1 _ZTSN4llvm13ErrorInfoBaseE", !21, i64 0}
!86 = !{!"_ZTSN4llvm5ErrorE", !85, i64 0}
!87 = !{!86, !85, i64 0}
!88 = !{!44, !42, i64 0}
!89 = !{!44, !43, i64 8}
!90 = !{!44, !15, i64 20}
!91 = !{!"branch_weights", i32 1, i32 1999}
!92 = !{!"branch_weights", i32 0, i32 1}
!93 = !{!"p1 _ZTSN4llvm15MutableArrayRefIhEE", !21, i64 0}
!94 = !{!93, !93, i64 0}
!95 = !{!"p1 omnipotent char", !21, i64 0}
!96 = !{!"_ZTSN4llvm8ArrayRefIhEE", !95, i64 0, !33, i64 8}
!97 = !{!96, !33, i64 8}
!98 = !{!96, !95, i64 0}
!99 = !{!95, !95, i64 0}
!100 = !{!33, !33, i64 0}
!101 = !{!44, !15, i64 16}
!102 = !{!"llvm.loop.mustprogress"}
!103 = !{!"_ZTSNSt12_Vector_baseIN4llvm15MutableArrayRefIhEESaIS2_EE17_Vector_impl_dataE", !93, i64 0, !93, i64 8, !93, i64 16}
!104 = !{!"_ZTSNSt12_Vector_baseIN4llvm15MutableArrayRefIhEESaIS2_EE12_Vector_implE", !103, i64 0}
!105 = !{!"_ZTSSt12_Vector_baseIN4llvm15MutableArrayRefIhEESaIS2_EE", !104, i64 0}
!106 = !{!"_ZTSSt6vectorIN4llvm15MutableArrayRefIhEESaIS2_EE", !105, i64 0}
!107 = !{!"_ZTSSt4pairIjSt6vectorIN4llvm15MutableArrayRefIhEESaIS3_EEE", !15, i64 0, !106, i64 8}
!108 = !{!107, !15, i64 0}
!109 = !{}
!110 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonIPvvEE", !73, i64 0}
!111 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseIPvLb1EEE", !110, i64 0}
!112 = !{!"_ZTSN4llvm15SmallVectorImplIPvEE", !111, i64 0}
!113 = !{!"_ZTSN4llvm18SmallVectorStorageIPvLj4EEE", !14, i64 0}
!114 = !{!"_ZTSN4llvm11SmallVectorIPvLj4EEE", !112, i64 0, !113, i64 16}
!115 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonISt4pairIPvmEvEE", !73, i64 0}
!116 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseISt4pairIPvmELb1EEE", !115, i64 0}
!117 = !{!"_ZTSN4llvm15SmallVectorImplISt4pairIPvmEEE", !116, i64 0}
!118 = !{!"_ZTSN4llvm11SmallVectorISt4pairIPvmELj0EEE", !117, i64 0}
!119 = !{!"_ZTSN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEE", !95, i64 0, !33, i64 8, !114, i64 16, !118, i64 64}
!120 = !{!119, !95, i64 0}
!121 = !{!119, !33, i64 8}
!122 = !{!103, !93, i64 16}
!123 = !{!103, !93, i64 0}
!124 = !{!"llvm.loop.peeled.count", i32 1}
!125 = !{!45, !15, i64 16}
!126 = !{!"p1 _ZTSN4llvm3msf25WritableMappedBlockStreamE", !21, i64 0}
!127 = !{ptr @_ZN4llvm18BinaryStreamWriterD2Ev}
!128 = !{ptr @_ZN4llvm3msf25WritableMappedBlockStreamD2Ev}
!129 = !{!73, !15, i64 8}
!130 = !{!73, !21, i64 0}
!131 = !{!"p1 _ZTSSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EE", !21, i64 0}
!132 = !{!131, !131, i64 0}
!133 = !{!85, !85, i64 0}
!134 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE17_Vector_impl_dataE", !131, i64 0, !131, i64 8, !131, i64 16}
!135 = !{!134, !131, i64 8}
!136 = !{!134, !131, i64 16}
!137 = !{!134, !131, i64 0}
!138 = !{!"llvm.loop.isvectorized", i32 1}
!139 = !{!"llvm.loop.unroll.runtime.disable"}
!140 = !{!42, !42, i64 0}
!141 = distinct !{!141, i1 true, !"_ZSt11make_uniqueIN12_GLOBAL__N_121MappedBlockStreamImplIN4llvm3msf17MappedBlockStreamEEEJRjRKNS3_15MSFStreamLayoutERNS2_15BinaryStreamRefERNS2_20BumpPtrAllocatorImplINS2_15MallocAllocatorELm4096ELm4096ELm128ELm8EEEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!142 = distinct !{!142, !141, !"_ZSt11make_uniqueIN12_GLOBAL__N_121MappedBlockStreamImplIN4llvm3msf17MappedBlockStreamEEEJRjRKNS3_15MSFStreamLayoutERNS2_15BinaryStreamRefERNS2_20BumpPtrAllocatorImplINS2_15MallocAllocatorELm4096ELm4096ELm128ELm8EEEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!143 = distinct !{null, null, null, null, null, null}
!144 = !{!142}
!145 = distinct !{!145, i1 true, !"_ZNK4llvm8ArrayRefINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEEcvSt6vectorIS5_SaIS5_EEEv"}
!146 = distinct !{!146, !145, !"_ZNK4llvm8ArrayRefINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEEcvSt6vectorIS5_SaIS5_EEEv: argument 0"}
!147 = distinct !{!147, i1 true, !"_ZSt11make_uniqueIN12_GLOBAL__N_121MappedBlockStreamImplIN4llvm3msf17MappedBlockStreamEEEJRKNS2_7support6detail31packed_endian_specific_integralIjLNS2_10endiannessE1ELm1ELm1EEERNS3_15MSFStreamLayoutERNS2_15BinaryStreamRefERNS2_20BumpPtrAllocatorImplINS2_15MallocAllocatorELm4096ELm4096ELm128ELm8EEEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!148 = distinct !{!148, !147, !"_ZSt11make_uniqueIN12_GLOBAL__N_121MappedBlockStreamImplIN4llvm3msf17MappedBlockStreamEEEJRKNS2_7support6detail31packed_endian_specific_integralIjLNS2_10endiannessE1ELm1ELm1EEERNS3_15MSFStreamLayoutERNS2_15BinaryStreamRefERNS2_20BumpPtrAllocatorImplINS2_15MallocAllocatorELm4096ELm4096ELm128ELm8EEEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!149 = distinct !{null, null, null, null, null, null}
!150 = !{!146}
!151 = !{!148}
!152 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!153 = distinct !{!153, i1 true, !"_ZNK4llvm8ArrayRefINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEEcvSt6vectorIS5_SaIS5_EEEv"}
!154 = distinct !{!154, !153, !"_ZNK4llvm8ArrayRefINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEEcvSt6vectorIS5_SaIS5_EEEv: argument 0"}
!155 = !{!154}
!156 = distinct !{!156, i1 true, !"_ZN4llvm12BinaryStream18checkOffsetForReadEmm"}
!157 = distinct !{!157, !156, !"_ZN4llvm12BinaryStream18checkOffsetForReadEmm: argument 0"}
!158 = distinct !{!158, i1 true, !"_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt6vectorINS_15MutableArrayRefIhEESaIS4_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS6_EEEEjS6_S8_SB_E4findERKj"}
!159 = distinct !{!159, !158, !"_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt6vectorINS_15MutableArrayRefIhEESaIS4_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS6_EEEEjS6_S8_SB_E4findERKj: argument 0"}
!160 = distinct !{!160, i1 true, !"_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt6vectorINS_15MutableArrayRefIhEESaIS4_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS6_EEEEjS6_S8_SB_E7find_asIjEENS_16DenseMapIteratorIjS6_S8_SB_Lb0EEERKT_"}
!161 = distinct !{!161, !160, !"_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt6vectorINS_15MutableArrayRefIhEESaIS4_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS6_EEEEjS6_S8_SB_E7find_asIjEENS_16DenseMapIteratorIjS6_S8_SB_Lb0EEERKT_: argument 0"}
!162 = distinct !{!162, i1 true, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIjSt6vectorINS_15MutableArrayRefIhEESaIS4_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS6_EEEEjS6_S8_SB_E6getRepEv"}
!163 = distinct !{!163, !162, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIjSt6vectorINS_15MutableArrayRefIhEESaIS4_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS6_EEEEjS6_S8_SB_E6getRepEv: argument 0"}
!164 = distinct !{!164, i1 true, !"_ZNK4llvm8DenseMapIjSt6vectorINS_15MutableArrayRefIhEESaIS3_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEE6getRepEv"}
!165 = distinct !{!165, !164, !"_ZNK4llvm8DenseMapIjSt6vectorINS_15MutableArrayRefIhEESaIS3_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEE6getRepEv: argument 0"}
!166 = distinct !{!166, i1 true, !"_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt6vectorINS_15MutableArrayRefIhEESaIS4_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS6_EEEEjS6_S8_SB_E5beginEv"}
!167 = distinct !{!167, !166, !"_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt6vectorINS_15MutableArrayRefIhEESaIS4_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS6_EEEEjS6_S8_SB_E5beginEv: argument 0"}
!168 = distinct !{!168, i1 true, !"_ZN4llvm16DenseMapIteratorIjSt6vectorINS_15MutableArrayRefIhEESaIS3_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EELb0EE9makeBeginEPSA_PKjjbRKNS_14DebugEpochBaseE"}
!169 = distinct !{!169, !168, !"_ZN4llvm16DenseMapIteratorIjSt6vectorINS_15MutableArrayRefIhEESaIS3_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EELb0EE9makeBeginEPSA_PKjjbRKNS_14DebugEpochBaseE: argument 0"}
end_hunk_2
