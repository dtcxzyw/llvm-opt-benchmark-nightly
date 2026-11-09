Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/harfbuzz?download=true
inline.NumInlined: 35466
inline.NumDeleted: 12449
loop-unroll.NumCompletelyUnrolled: 167
loop-unroll.NumRuntimeUnrolled: 271
loop-unroll.NumUnrolled: 468
begin_hunk_0_@hb_buffer_add_utf16:bb.a
bb.r:                                             ; preds = %bb.q
  %i.df = getelementptr inbounds i8, ptr %.1.i.i.3, i64 -4
  %i.dg = load i16, ptr %i.df, align 2, !tbaa !647
  %i.dh = zext i16 %i.dg to i32                   ; 2 uses
  %i.di = and i32 %i.dh, 64512
  %i.dj = icmp eq i32 %i.di, 55296
  br i1 %i.dj, label %.thread.i.i.4, label %_ZN13hb_utf16_xe_tItE4prevEPKtS2_Pjj.exit.i.4, !prof !268

.thread.i.i.4:                                    ; preds = %bb.r
  %i.dk = shl nuw nsw i32 %i.dh, 10
  %i.dl = add nuw nsw i32 %i.cz, -56613888
  %i.dm = add nsw i32 %i.dl, %i.dk
  br label %_ZN13hb_utf16_xe_tItE4prevEPKtS2_Pjj.exit.i.4

_ZN13hb_utf16_xe_tItE4prevEPKtS2_Pjj.exit.i.4:    ; preds = %.thread.i.i.4, %bb.r, %bb.q, %bb.p
  %.sink.i.i.4 = phi i32 [ %i.dm, %.thread.i.i.4 ], [ %i.cz, %bb.p ], [ %i.b, %bb.r ], [ %i.b, %bb.q ]
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i32 %.sink.i.i.4, ptr %i.dn, align 8, !tbaa !324
  br label %.critedge.i.loopexit

.critedge.i.loopexit:                             ; preds = %_ZN13hb_utf16_xe_tItE4prevEPKtS2_Pjj.exit.i.4, %_ZN13hb_utf16_xe_tItE4prevEPKtS2_Pjj.exit.i.3, %_ZN13hb_utf16_xe_tItE4prevEPKtS2_Pjj.exit.i.2, %_ZN13hb_utf16_xe_tItE4prevEPKtS2_Pjj.exit.i.1, %_ZN13hb_utf16_xe_tItE4prevEPKtS2_Pjj.exit.i
  %indvars.iv.next.lcssa = phi i32 [ 1, %_ZN13hb_utf16_xe_tItE4prevEPKtS2_Pjj.exit.i ], [ 2, %_ZN13hb_utf16_xe_tItE4prevEPKtS2_Pjj.exit.i.1 ], [ 3, %_ZN13hb_utf16_xe_tItE4prevEPKtS2_Pjj.exit.i.2 ], [ 4, %_ZN13hb_utf16_xe_tItE4prevEPKtS2_Pjj.exit.i.3 ], [ 5, %_ZN13hb_utf16_xe_tItE4prevEPKtS2_Pjj.exit.i.4 ]
  store i32 %indvars.iv.next.lcssa, ptr %i.aa, align 8, !tbaa !324
  br label %.critedge.i

.critedge.i:                                      ; preds = %_ZN11hb_buffer_t6ensureEj.exit.thread.i..critedge.i_crit_edge, %.critedge.i.loopexit
  %.pre-phi = phi i64 [ %.pre, %_ZN11hb_buffer_t6ensureEj.exit.thread.i..critedge.i_crit_edge ], [ %i.ab, %.critedge.i.loopexit ]
  %i.do = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.pre-phi ; 3 uses
  %i.dp = shl nuw nsw i32 %.sroa.speculated.i, 1
  %.idx96.i = zext nneg i32 %i.dp to i64
  %i.dq = getelementptr inbounds nuw i8, ptr %i.do, i64 %.idx96.i ; 2 uses
  %.not.i = icmp eq i32 %.sroa.speculated.i, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph91.i

.lr.ph91.i:                                       ; preds = %.critedge.i
  %i.dr = ptrtoint ptr %1 to i64
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 112
  br label %bb.s

bb.s:                                             ; preds = %_ZN11hb_buffer_t3addEjj.exit.i, %.lr.ph91.i
  %.04990.i = phi ptr [ %i.do, %.lr.ph91.i ], [ %.1.i60.i, %_ZN11hb_buffer_t3addEjj.exit.i ] ; 4 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.04990.i, i64 2 ; 5 uses
  %i.du = load i16, ptr %.04990.i, align 2, !tbaa !647 ; 2 uses
  %i.dv = zext i16 %i.du to i32                   ; 3 uses
  %i.dw = and i32 %i.dv, 63488
  %i.dx = icmp eq i32 %i.dw, 55296
  br i1 %i.dx, label %bb.t, label %_ZN13hb_utf16_xe_tItE4nextEPKtS2_Pjj.exit.i, !prof !267

bb.t:                                             ; preds = %bb.s
  %i.dy = icmp ult i16 %i.du, -9216
  %i.dz = icmp ult ptr %i.dt, %i.dq
  %i.ea = select i1 %i.dy, i1 %i.dz, i1 false, !prof !268
  br i1 %i.ea, label %bb.u, label %_ZN13hb_utf16_xe_tItE4nextEPKtS2_Pjj.exit.i, !prof !268

bb.u:                                             ; preds = %bb.t
  %i.eb = load i16, ptr %i.dt, align 2, !tbaa !647
  %i.ec = zext i16 %i.eb to i32                   ; 2 uses
  %i.ed = and i32 %i.ec, 64512
  %i.ee = icmp eq i32 %i.ed, 56320
  br i1 %i.ee, label %.thread.i61.i, label %_ZN13hb_utf16_xe_tItE4nextEPKtS2_Pjj.exit.i, !prof !268

.thread.i61.i:                                    ; preds = %bb.u
  %i.ef = shl nuw nsw i32 %i.dv, 10
  %i.eg = add nsw i32 %i.ef, -56613888
  %i.eh = add nuw nsw i32 %i.eg, %i.ec
  %i.ei = getelementptr inbounds nuw i8, ptr %.04990.i, i64 4
  br label %_ZN13hb_utf16_xe_tItE4nextEPKtS2_Pjj.exit.i

_ZN13hb_utf16_xe_tItE4nextEPKtS2_Pjj.exit.i:      ; preds = %.thread.i61.i, %bb.u, %bb.t, %bb.s
  %.086.i = phi i32 [ %i.eh, %.thread.i61.i ], [ %i.dv, %bb.s ], [ %i.b, %bb.u ], [ %i.b, %bb.t ]
  %.1.i60.i = phi ptr [ %i.ei, %.thread.i61.i ], [ %i.dt, %bb.s ], [ %i.dt, %bb.u ], [ %i.dt, %bb.t ] ; 3 uses
  %i.ej = ptrtoint ptr %.04990.i to i64
  %i.ek = sub i64 %i.ej, %i.dr
  %i.el = lshr exact i64 %i.ek, 1
  %i.em = trunc i64 %i.el to i32
  %i.en = load i32, ptr %i.o, align 8, !tbaa !607 ; 2 uses
  %i.eo = add i32 %i.en, 1                        ; 3 uses
  %.not.i.i62.i = icmp eq i32 %i.eo, 0
  %i.ep = load i32, ptr %i.s, align 8
  %i.eq = icmp ult i32 %i.eo, %i.ep
  %i.er = select i1 %.not.i.i62.i, i1 true, i1 %i.eq
  br i1 %i.er, label %_ZN11hb_buffer_t6ensureEj.exit.thread.i.i, label %_ZN11hb_buffer_t6ensureEj.exit.i.i, !prof !268

_ZN11hb_buffer_t6ensureEj.exit.i.i:               ; preds = %_ZN13hb_utf16_xe_tItE4nextEPKtS2_Pjj.exit.i
  %i.es = tail call noundef zeroext i1 @_ZN11hb_buffer_t7enlargeEj(ptr noundef nonnull align 8 dereferenceable(276) %0, i32 noundef %i.eo)
  br i1 %i.es, label %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i.i, label %_ZN11hb_buffer_t3addEjj.exit.i, !prof !318

_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i.i: ; preds = %_ZN11hb_buffer_t6ensureEj.exit.i.i
  %.pre.i.i = load i32, ptr %i.o, align 8, !tbaa !607
  br label %_ZN11hb_buffer_t6ensureEj.exit.thread.i.i

_ZN11hb_buffer_t6ensureEj.exit.thread.i.i:        ; preds = %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i.i, %_ZN13hb_utf16_xe_tItE4nextEPKtS2_Pjj.exit.i
  %i.et = phi i32 [ %.pre.i.i, %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i.i ], [ %i.en, %_ZN13hb_utf16_xe_tItE4nextEPKtS2_Pjj.exit.i ]
  %i.eu = load ptr, ptr %i.ds, align 8, !tbaa !589
  %i.ev = zext i32 %i.et to i64
  %i.ew = getelementptr inbounds nuw [20 x i8], ptr %i.eu, i64 %i.ev ; 4 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 12
  store i64 0, ptr %i.ex, align 1
  store i32 %.086.i, ptr %i.ew, align 4, !tbaa !637
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ew, i64 4
  store i32 0, ptr %i.ey, align 4, !tbaa !591
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  store i32 %i.em, ptr %i.ez, align 4, !tbaa !608
  %i.fa = load i32, ptr %i.o, align 8, !tbaa !607
  %i.fb = add i32 %i.fa, 1
  store i32 %i.fb, ptr %i.o, align 8, !tbaa !607
  br label %_ZN11hb_buffer_t3addEjj.exit.i

_ZN11hb_buffer_t3addEjj.exit.i:                   ; preds = %_ZN11hb_buffer_t6ensureEj.exit.thread.i.i, %_ZN11hb_buffer_t6ensureEj.exit.i.i
  %i.fc = icmp ult ptr %.1.i60.i, %i.dq
  br i1 %i.fc, label %bb.s, label %._crit_edge.i, !llvm.loop !2308

._crit_edge.i:                                    ; preds = %_ZN11hb_buffer_t3addEjj.exit.i, %.critedge.i
  %.049.lcssa.i = phi ptr [ %i.do, %.critedge.i ], [ %.1.i60.i, %_ZN11hb_buffer_t3addEjj.exit.i ] ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 180 ; 3 uses
  store i32 0, ptr %i.fd, align 4, !tbaa !324
  %i.fe = sext i32 %.0.i to i64
  %i.ff = getelementptr inbounds [2 x i8], ptr %1, i64 %i.fe ; 3 uses
  %i.fg = icmp ult ptr %.049.lcssa.i, %i.ff
  br i1 %i.fg, label %.lr.ph94.i, label %.critedge5.i

.lr.ph94.i:                                       ; preds = %._crit_edge.i
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 156
  br label %bb.v

bb.v:                                             ; preds = %_ZN13hb_utf16_xe_tItE4nextEPKtS2_Pjj.exit65.i, %.lr.ph94.i
  %.192.i = phi ptr [ %.049.lcssa.i, %.lr.ph94.i ], [ %.1.i63.i, %_ZN13hb_utf16_xe_tItE4nextEPKtS2_Pjj.exit65.i ] ; 3 uses
  %i.fi = load i32, ptr %i.fd, align 4, !tbaa !324 ; 3 uses
  %i.fj = icmp ult i32 %i.fi, 5
  br i1 %i.fj, label %bb.w, label %.critedge5.i

bb.w:                                             ; preds = %bb.v
  %i.fk = getelementptr inbounds nuw i8, ptr %.192.i, i64 2 ; 5 uses
  %i.fl = load i16, ptr %.192.i, align 2, !tbaa !647 ; 2 uses
  %i.fm = zext i16 %i.fl to i32                   ; 3 uses
  %i.fn = and i32 %i.fm, 63488
  %i.fo = icmp eq i32 %i.fn, 55296
  br i1 %i.fo, label %bb.x, label %_ZN13hb_utf16_xe_tItE4nextEPKtS2_Pjj.exit65.i, !prof !267

bb.x:                                             ; preds = %bb.w
  %i.fp = icmp ult i16 %i.fl, -9216
  %i.fq = icmp ult ptr %i.fk, %i.ff
  %i.fr = select i1 %i.fp, i1 %i.fq, i1 false, !prof !268
  br i1 %i.fr, label %bb.y, label %_ZN13hb_utf16_xe_tItE4nextEPKtS2_Pjj.exit65.i, !prof !268

bb.y:                                             ; preds = %bb.x
  %i.fs = load i16, ptr %i.fk, align 2, !tbaa !647
  %i.ft = zext i16 %i.fs to i32                   ; 2 uses
  %i.fu = and i32 %i.ft, 64512
  %i.fv = icmp eq i32 %i.fu, 56320
  br i1 %i.fv, label %.thread.i64.i, label %_ZN13hb_utf16_xe_tItE4nextEPKtS2_Pjj.exit65.i, !prof !268

.thread.i64.i:                                    ; preds = %bb.y
  %i.fw = shl nuw nsw i32 %i.fm, 10
  %i.fx = add nsw i32 %i.fw, -56613888
  %i.fy = add nuw nsw i32 %i.fx, %i.ft
  %i.fz = getelementptr inbounds nuw i8, ptr %.192.i, i64 4
  br label %_ZN13hb_utf16_xe_tItE4nextEPKtS2_Pjj.exit65.i

_ZN13hb_utf16_xe_tItE4nextEPKtS2_Pjj.exit65.i:    ; preds = %.thread.i64.i, %bb.y, %bb.x, %bb.w
  %.085.i = phi i32 [ %i.fy, %.thread.i64.i ], [ %i.fm, %bb.w ], [ %i.b, %bb.y ], [ %i.b, %bb.x ]
  %.1.i63.i = phi ptr [ %i.fz, %.thread.i64.i ], [ %i.fk, %bb.w ], [ %i.fk, %bb.y ], [ %i.fk, %bb.x ] ; 2 uses
  %i.ga = add nuw nsw i32 %i.fi, 1
  store i32 %i.ga, ptr %i.fd, align 4, !tbaa !324
  %i.gb = zext nneg i32 %i.fi to i64
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.fh, i64 %i.gb
  store i32 %.085.i, ptr %i.gc, align 4, !tbaa !324
  %i.gd = icmp ult ptr %.1.i63.i, %i.ff
  br i1 %i.gd, label %bb.v, label %.critedge5.i, !llvm.loop !2309

.critedge5.i:                                     ; preds = %_ZN13hb_utf16_xe_tItE4nextEPKtS2_Pjj.exit65.i, %bb.v, %._crit_edge.i
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 1, ptr %i.ge, align 8, !tbaa !646
  br label %_ZL17hb_buffer_add_utfI13hb_utf16_xe_tItEEvP11hb_buffer_tPKNT_11codepoint_tEiji.exit

_ZL17hb_buffer_add_utfI13hb_utf16_xe_tItEEvP11hb_buffer_tPKNT_11codepoint_tEiji.exit: ; preds = %bb.a, %_ZN13hb_utf16_xe_tItE6strlenEPKt.exit.i, %_ZN11hb_buffer_t6ensureEj.exit.i, %.critedge5.i
  ret void
}

; Function Attrs: mustprogress nounwind memory(readwrite, target_mem: none) uwtable
define void @hb_buffer_add_utf32(ptr nofree noundef captures(none) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #16 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i32, ptr %i.a, align 8, !tbaa !702  ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load atomic i8, ptr %i.c monotonic, align 4, !range !380, !noundef !293
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %_ZL17hb_buffer_add_utfI13hb_utf32_xe_tIjLb1EEEvP11hb_buffer_tPKNT_11codepoint_tEiji.exit, !prof !268

bb.b:                                             ; preds = %bb.a
  %i.f = icmp eq i32 %2, -1
  br i1 %i.f, label %bb.c, label %_ZN13hb_utf32_xe_tIjLb1EE6strlenEPKj.exit.i

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %1, align 4, !tbaa !324
  %.not3.i.i = icmp eq i32 %i.g, 0
  br i1 %.not3.i.i, label %_ZN13hb_utf32_xe_tIjLb1EE6strlenEPKj.exit.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.c
  %scevgep.i.i = getelementptr i8, ptr %1, i64 4
  %wcslen.i.i = tail call i64 @wcslen(ptr %scevgep.i.i)
  %i.h = trunc i64 %wcslen.i.i to i32
  %i.i = add i32 %i.h, 1
  br label %_ZN13hb_utf32_xe_tIjLb1EE6strlenEPKj.exit.i

_ZN13hb_utf32_xe_tIjLb1EE6strlenEPKj.exit.i:      ; preds = %.lr.ph.preheader.i.i, %bb.c, %bb.b
  %.0.i = phi i32 [ %2, %bb.b ], [ 0, %bb.c ], [ %i.i, %.lr.ph.preheader.i.i ] ; 4 uses
  %i.j = icmp eq i32 %4, -1
  %i.k = sub i32 %.0.i, %3
  %spec.select.i = select i1 %i.j, i32 %i.k, i32 %4
  %.sroa.speculated69.i = tail call i32 @llvm.umin.i32(i32 %3, i32 %.0.i) ; 5 uses
  %i.l = sub nuw nsw i32 %.0.i, %.sroa.speculated69.i
  %i.m = tail call i32 @llvm.smax.i32(i32 %spec.select.i, i32 0)
  %.sroa.speculated.i = tail call i32 @llvm.smin.i32(i32 %i.m, i32 %i.l) ; 4 uses
  %or.cond.i = icmp ugt i32 %.sroa.speculated.i, 268435455
  br i1 %or.cond.i, label %_ZL17hb_buffer_add_utfI13hb_utf32_xe_tIjLb1EEEvP11hb_buffer_tPKNT_11codepoint_tEiji.exit, label %bb.d, !prof !408

bb.d:                                             ; preds = %_ZN13hb_utf32_xe_tIjLb1EE6strlenEPKj.exit.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 6 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !607  ; 2 uses
  %i.p = add i32 %i.o, %.sroa.speculated.i        ; 3 uses
  %.not.i58.i = icmp eq i32 %i.p, 0
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.r = load i32, ptr %i.q, align 8
  %i.s = icmp ult i32 %i.p, %i.r
  %i.t = select i1 %.not.i58.i, i1 true, i1 %i.s
  br i1 %i.t, label %_ZN11hb_buffer_t6ensureEj.exit.thread.i, label %_ZN11hb_buffer_t6ensureEj.exit.i, !prof !268

_ZN11hb_buffer_t6ensureEj.exit.i:                 ; preds = %bb.d
  %i.u = tail call noundef zeroext i1 @_ZN11hb_buffer_t7enlargeEj(ptr noundef nonnull align 8 dereferenceable(276) %0, i32 noundef %i.p)
  br i1 %i.u, label %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i, label %_ZL17hb_buffer_add_utfI13hb_utf32_xe_tIjLb1EEEvP11hb_buffer_tPKNT_11codepoint_tEiji.exit, !prof !318

_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i: ; preds = %_ZN11hb_buffer_t6ensureEj.exit.i
  %.pre.i = load i32, ptr %i.n, align 8, !tbaa !607
  br label %_ZN11hb_buffer_t6ensureEj.exit.thread.i

_ZN11hb_buffer_t6ensureEj.exit.thread.i:          ; preds = %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i, %bb.d
  %i.v = phi i32 [ %.pre.i, %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i ], [ %i.o, %bb.d ]
  %i.w = icmp eq i32 %i.v, 0
  %i.x = icmp ne i32 %.sroa.speculated69.i, 0
  %or.cond3.i = and i1 %i.x, %i.w
  br i1 %or.cond3.i, label %.lr.ph.i, label %_ZN11hb_buffer_t6ensureEj.exit.thread.i..critedge.i_crit_edge

_ZN11hb_buffer_t6ensureEj.exit.thread.i..critedge.i_crit_edge: ; preds = %_ZN11hb_buffer_t6ensureEj.exit.thread.i
  %.pre = zext i32 %.sroa.speculated69.i to i64
  br label %.critedge.i

.lr.ph.i:                                         ; preds = %_ZN11hb_buffer_t6ensureEj.exit.thread.i
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 6 uses
  store i32 0, ptr %i.y, align 8, !tbaa !324
  %i.z = zext i32 %.sroa.speculated69.i to i64    ; 6 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 136
  %.idx.i = shl nuw nsw i64 %i.z, 2
  %i.ab = getelementptr i8, ptr %1, i64 %.idx.i   ; 5 uses
  %i.ac = getelementptr i8, ptr %i.ab, i64 -4
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !324 ; 3 uses
  %i.ae = icmp ugt i32 %i.ad, 55295
  %i.af = add i32 %i.ad, -1114112
  %i.ag = icmp ult i32 %i.af, -1056768
  %i.ah = and i1 %i.ae, %i.ag
  br i1 %i.ah, label %bb.e, label %_ZN13hb_utf32_xe_tIjLb1EE4prevEPKjS2_Pjj.exit.i, !prof !267

bb.e:                                             ; preds = %.lr.ph.i
  br label %_ZN13hb_utf32_xe_tIjLb1EE4prevEPKjS2_Pjj.exit.i

_ZN13hb_utf32_xe_tIjLb1EE4prevEPKjS2_Pjj.exit.i:  ; preds = %bb.e, %.lr.ph.i
  %storemerge.i.i = phi i32 [ %i.b, %bb.e ], [ %i.ad, %.lr.ph.i ]
  store i32 1, ptr %i.y, align 8, !tbaa !324
  store i32 %storemerge.i.i, ptr %i.aa, align 8, !tbaa !324
  %i.ai = icmp ugt i32 %.sroa.speculated69.i, 1
  br i1 %i.ai, label %bb.f, label %.critedge.i

bb.f:                                             ; preds = %_ZN13hb_utf32_xe_tIjLb1EE4prevEPKjS2_Pjj.exit.i
  %i.aj = getelementptr i8, ptr %i.ab, i64 -8     ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !324 ; 3 uses
  %i.al = icmp ugt i32 %i.ak, 55295
  %i.am = add i32 %i.ak, -1114112
  %i.an = icmp ult i32 %i.am, -1056768
  %i.ao = and i1 %i.al, %i.an
  br i1 %i.ao, label %bb.g, label %_ZN13hb_utf32_xe_tIjLb1EE4prevEPKjS2_Pjj.exit.i.1, !prof !267

bb.g:                                             ; preds = %bb.f
  br label %_ZN13hb_utf32_xe_tIjLb1EE4prevEPKjS2_Pjj.exit.i.1

_ZN13hb_utf32_xe_tIjLb1EE4prevEPKjS2_Pjj.exit.i.1: ; preds = %bb.g, %bb.f
  %storemerge.i.i.1 = phi i32 [ %i.b, %bb.g ], [ %i.ak, %bb.f ]
  store i32 2, ptr %i.y, align 8, !tbaa !324
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 140
  store i32 %storemerge.i.i.1, ptr %i.ap, align 4, !tbaa !324
  %i.aq = icmp ult ptr %1, %i.aj
  br i1 %i.aq, label %bb.h, label %.critedge.i

bb.h:                                             ; preds = %_ZN13hb_utf32_xe_tIjLb1EE4prevEPKjS2_Pjj.exit.i.1
  %i.ar = getelementptr i8, ptr %i.ab, i64 -12    ; 2 uses
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !324 ; 3 uses
  %i.at = icmp ugt i32 %i.as, 55295
  %i.au = add i32 %i.as, -1114112
  %i.av = icmp ult i32 %i.au, -1056768
  %i.aw = and i1 %i.at, %i.av
  br i1 %i.aw, label %bb.i, label %_ZN13hb_utf32_xe_tIjLb1EE4prevEPKjS2_Pjj.exit.i.2, !prof !267

bb.i:                                             ; preds = %bb.h
  br label %_ZN13hb_utf32_xe_tIjLb1EE4prevEPKjS2_Pjj.exit.i.2

_ZN13hb_utf32_xe_tIjLb1EE4prevEPKjS2_Pjj.exit.i.2: ; preds = %bb.i, %bb.h
  %storemerge.i.i.2 = phi i32 [ %i.b, %bb.i ], [ %i.as, %bb.h ]
  store i32 3, ptr %i.y, align 8, !tbaa !324
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i32 %storemerge.i.i.2, ptr %i.ax, align 8, !tbaa !324
  %i.ay = icmp ult ptr %1, %i.ar
  br i1 %i.ay, label %bb.j, label %.critedge.i

bb.j:                                             ; preds = %_ZN13hb_utf32_xe_tIjLb1EE4prevEPKjS2_Pjj.exit.i.2
  %i.az = getelementptr i8, ptr %i.ab, i64 -16    ; 2 uses
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !324 ; 3 uses
  %i.bb = icmp ugt i32 %i.ba, 55295
  %i.bc = add i32 %i.ba, -1114112
  %i.bd = icmp ult i32 %i.bc, -1056768
  %i.be = and i1 %i.bb, %i.bd
  br i1 %i.be, label %bb.k, label %_ZN13hb_utf32_xe_tIjLb1EE4prevEPKjS2_Pjj.exit.i.3, !prof !267

bb.k:                                             ; preds = %bb.j
  br label %_ZN13hb_utf32_xe_tIjLb1EE4prevEPKjS2_Pjj.exit.i.3

_ZN13hb_utf32_xe_tIjLb1EE4prevEPKjS2_Pjj.exit.i.3: ; preds = %bb.k, %bb.j
  %storemerge.i.i.3 = phi i32 [ %i.b, %bb.k ], [ %i.ba, %bb.j ]
  store i32 4, ptr %i.y, align 8, !tbaa !324
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 148
  store i32 %storemerge.i.i.3, ptr %i.bf, align 4, !tbaa !324
  %i.bg = icmp ult ptr %1, %i.az
  br i1 %i.bg, label %bb.l, label %.critedge.i

bb.l:                                             ; preds = %_ZN13hb_utf32_xe_tIjLb1EE4prevEPKjS2_Pjj.exit.i.3
  %i.bh = getelementptr i8, ptr %i.ab, i64 -20
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !324 ; 3 uses
  %i.bj = icmp ugt i32 %i.bi, 55295
  %i.bk = add i32 %i.bi, -1114112
  %i.bl = icmp ult i32 %i.bk, -1056768
  %i.bm = and i1 %i.bj, %i.bl
  br i1 %i.bm, label %bb.m, label %_ZN13hb_utf32_xe_tIjLb1EE4prevEPKjS2_Pjj.exit.i.4, !prof !267

bb.m:                                             ; preds = %bb.l
  br label %_ZN13hb_utf32_xe_tIjLb1EE4prevEPKjS2_Pjj.exit.i.4

_ZN13hb_utf32_xe_tIjLb1EE4prevEPKjS2_Pjj.exit.i.4: ; preds = %bb.m, %bb.l
  %storemerge.i.i.4 = phi i32 [ %i.b, %bb.m ], [ %i.bi, %bb.l ]
  store i32 5, ptr %i.y, align 8, !tbaa !324
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i32 %storemerge.i.i.4, ptr %i.bn, align 8, !tbaa !324
  br label %.critedge.i

.critedge.i:                                      ; preds = %_ZN13hb_utf32_xe_tIjLb1EE4prevEPKjS2_Pjj.exit.i, %_ZN13hb_utf32_xe_tIjLb1EE4prevEPKjS2_Pjj.exit.i.1, %_ZN13hb_utf32_xe_tIjLb1EE4prevEPKjS2_Pjj.exit.i.2, %_ZN13hb_utf32_xe_tIjLb1EE4prevEPKjS2_Pjj.exit.i.3, %_ZN13hb_utf32_xe_tIjLb1EE4prevEPKjS2_Pjj.exit.i.4, %_ZN11hb_buffer_t6ensureEj.exit.thread.i..critedge.i_crit_edge
  %.pre-phi = phi i64 [ %.pre, %_ZN11hb_buffer_t6ensureEj.exit.thread.i..critedge.i_crit_edge ], [ %i.z, %_ZN13hb_utf32_xe_tIjLb1EE4prevEPKjS2_Pjj.exit.i.4 ], [ %i.z, %_ZN13hb_utf32_xe_tIjLb1EE4prevEPKjS2_Pjj.exit.i.3 ], [ %i.z, %_ZN13hb_utf32_xe_tIjLb1EE4prevEPKjS2_Pjj.exit.i.2 ], [ %i.z, %_ZN13hb_utf32_xe_tIjLb1EE4prevEPKjS2_Pjj.exit.i.1 ], [ %i.z, %_ZN13hb_utf32_xe_tIjLb1EE4prevEPKjS2_Pjj.exit.i ]
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.pre-phi ; 3 uses
  %i.bp = shl nuw nsw i32 %.sroa.speculated.i, 2
  %.idx91.i = zext nneg i32 %i.bp to i64
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 %.idx91.i
  %.not.i = icmp eq i32 %.sroa.speculated.i, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph86.i

.lr.ph86.i:                                       ; preds = %.critedge.i
  %i.br = ptrtoint ptr %1 to i64
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 112
  br label %bb.n

bb.n:                                             ; preds = %_ZN11hb_buffer_t3addEjj.exit.i, %.lr.ph86.i
  %.04985.i = phi ptr [ %i.bo, %.lr.ph86.i ], [ %i.by, %_ZN11hb_buffer_t3addEjj.exit.i ] ; 3 uses
  %i.bt = load i32, ptr %.04985.i, align 4, !tbaa !324 ; 3 uses
  %i.bu = icmp ugt i32 %i.bt, 55295
  %i.bv = add i32 %i.bt, -1114112
  %i.bw = icmp ult i32 %i.bv, -1056768
  %i.bx = and i1 %i.bu, %i.bw
  br i1 %i.bx, label %bb.o, label %_ZN13hb_utf32_xe_tIjLb1EE4nextEPKjS2_Pjj.exit.i, !prof !267

bb.o:                                             ; preds = %bb.n
  br label %_ZN13hb_utf32_xe_tIjLb1EE4nextEPKjS2_Pjj.exit.i

_ZN13hb_utf32_xe_tIjLb1EE4nextEPKjS2_Pjj.exit.i:  ; preds = %bb.o, %bb.n
  %storemerge.i59.i = phi i32 [ %i.b, %bb.o ], [ %i.bt, %bb.n ]
  %i.by = getelementptr inbounds nuw i8, ptr %.04985.i, i64 4 ; 3 uses
  %i.bz = ptrtoint ptr %.04985.i to i64
  %i.ca = sub i64 %i.bz, %i.br
  %i.cb = lshr exact i64 %i.ca, 2
  %i.cc = trunc i64 %i.cb to i32
  %i.cd = load i32, ptr %i.n, align 8, !tbaa !607 ; 2 uses
  %i.ce = add i32 %i.cd, 1                        ; 3 uses
  %.not.i.i60.i = icmp eq i32 %i.ce, 0
  %i.cf = load i32, ptr %i.q, align 8
  %i.cg = icmp ult i32 %i.ce, %i.cf
  %i.ch = select i1 %.not.i.i60.i, i1 true, i1 %i.cg
  br i1 %i.ch, label %_ZN11hb_buffer_t6ensureEj.exit.thread.i.i, label %_ZN11hb_buffer_t6ensureEj.exit.i.i, !prof !268

_ZN11hb_buffer_t6ensureEj.exit.i.i:               ; preds = %_ZN13hb_utf32_xe_tIjLb1EE4nextEPKjS2_Pjj.exit.i
  %i.ci = tail call noundef zeroext i1 @_ZN11hb_buffer_t7enlargeEj(ptr noundef nonnull align 8 dereferenceable(276) %0, i32 noundef %i.ce)
  br i1 %i.ci, label %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i.i, label %_ZN11hb_buffer_t3addEjj.exit.i, !prof !318

_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i.i: ; preds = %_ZN11hb_buffer_t6ensureEj.exit.i.i
  %.pre.i.i = load i32, ptr %i.n, align 8, !tbaa !607
  br label %_ZN11hb_buffer_t6ensureEj.exit.thread.i.i

_ZN11hb_buffer_t6ensureEj.exit.thread.i.i:        ; preds = %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i.i, %_ZN13hb_utf32_xe_tIjLb1EE4nextEPKjS2_Pjj.exit.i
end_hunk_0
begin_hunk_1_@hb_buffer_add_latin1:bb.a
  %.not.i58.i = icmp eq i32 %i.p, 0
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.r = load i32, ptr %i.q, align 8
  %i.s = icmp ult i32 %i.p, %i.r
  %i.t = select i1 %.not.i58.i, i1 true, i1 %i.s
  br i1 %i.t, label %_ZN11hb_buffer_t6ensureEj.exit.thread.i, label %_ZN11hb_buffer_t6ensureEj.exit.i, !prof !268

_ZN11hb_buffer_t6ensureEj.exit.i:                 ; preds = %bb.d
  %i.u = tail call noundef zeroext i1 @_ZN11hb_buffer_t7enlargeEj(ptr noundef nonnull align 8 dereferenceable(276) %0, i32 noundef %i.p)
  br i1 %i.u, label %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i, label %_ZL17hb_buffer_add_utfI11hb_latin1_tEvP11hb_buffer_tPKNT_11codepoint_tEiji.exit, !prof !318

_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i: ; preds = %_ZN11hb_buffer_t6ensureEj.exit.i
  %.pre.i = load i32, ptr %i.m, align 8, !tbaa !607
  br label %_ZN11hb_buffer_t6ensureEj.exit.thread.i

_ZN11hb_buffer_t6ensureEj.exit.thread.i:          ; preds = %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i, %bb.d
  %i.v = phi i32 [ %.pre.i, %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i ], [ %i.n, %bb.d ]
  %i.w = icmp eq i32 %i.v, 0
  %i.x = icmp ne i32 %.sroa.speculated66.i, 0
  %or.cond3.i = and i1 %i.x, %i.w
  br i1 %or.cond3.i, label %.lr.ph.i, label %_ZN11hb_buffer_t6ensureEj.exit.thread.i..critedge.i_crit_edge

_ZN11hb_buffer_t6ensureEj.exit.thread.i..critedge.i_crit_edge: ; preds = %_ZN11hb_buffer_t6ensureEj.exit.thread.i
  %.pre = zext i32 %.sroa.speculated66.i to i64
  br label %.critedge.i

.lr.ph.i:                                         ; preds = %_ZN11hb_buffer_t6ensureEj.exit.thread.i
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 6 uses
  store i32 0, ptr %i.y, align 8, !tbaa !324
  %i.z = zext i32 %.sroa.speculated66.i to i64    ; 6 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ab = getelementptr i8, ptr %1, i64 %i.z      ; 5 uses
  %i.ac = getelementptr i8, ptr %i.ab, i64 -1
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !280
  %i.ae = zext i8 %i.ad to i32
  store i32 1, ptr %i.y, align 8, !tbaa !324
  store i32 %i.ae, ptr %i.aa, align 8, !tbaa !324
  %i.af = icmp ugt i32 %.sroa.speculated66.i, 1
  br i1 %i.af, label %bb.e, label %.critedge.i

bb.e:                                             ; preds = %.lr.ph.i
  %i.ag = getelementptr i8, ptr %i.ab, i64 -2     ; 2 uses
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !280
  %i.ai = zext i8 %i.ah to i32
  store i32 2, ptr %i.y, align 8, !tbaa !324
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 140
  store i32 %i.ai, ptr %i.aj, align 4, !tbaa !324
  %i.ak = icmp ult ptr %1, %i.ag
  br i1 %i.ak, label %bb.f, label %.critedge.i

bb.f:                                             ; preds = %bb.e
  %i.al = getelementptr i8, ptr %i.ab, i64 -3     ; 2 uses
  %i.am = load i8, ptr %i.al, align 1, !tbaa !280
  %i.an = zext i8 %i.am to i32
  store i32 3, ptr %i.y, align 8, !tbaa !324
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i32 %i.an, ptr %i.ao, align 8, !tbaa !324
  %i.ap = icmp ult ptr %1, %i.al
  br i1 %i.ap, label %bb.g, label %.critedge.i

bb.g:                                             ; preds = %bb.f
  %i.aq = getelementptr i8, ptr %i.ab, i64 -4     ; 2 uses
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !280
  %i.as = zext i8 %i.ar to i32
  store i32 4, ptr %i.y, align 8, !tbaa !324
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 148
  store i32 %i.as, ptr %i.at, align 4, !tbaa !324
  %i.au = icmp ult ptr %1, %i.aq
  br i1 %i.au, label %bb.h, label %.critedge.i

bb.h:                                             ; preds = %bb.g
  %i.av = getelementptr i8, ptr %i.ab, i64 -5
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !280
  %i.ax = zext i8 %i.aw to i32
  store i32 5, ptr %i.y, align 8, !tbaa !324
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i32 %i.ax, ptr %i.ay, align 8, !tbaa !324
  br label %.critedge.i

.critedge.i:                                      ; preds = %.lr.ph.i, %bb.e, %bb.f, %bb.g, %bb.h, %_ZN11hb_buffer_t6ensureEj.exit.thread.i..critedge.i_crit_edge
  %.pre-phi = phi i64 [ %.pre, %_ZN11hb_buffer_t6ensureEj.exit.thread.i..critedge.i_crit_edge ], [ %i.z, %bb.h ], [ %i.z, %bb.g ], [ %i.z, %bb.f ], [ %i.z, %bb.e ], [ %i.z, %.lr.ph.i ]
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 %.pre-phi ; 3 uses
  %i.ba = zext nneg i32 %.sroa.speculated.i to i64
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.ba
  %.not.i = icmp eq i32 %.sroa.speculated.i, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph83.i

.lr.ph83.i:                                       ; preds = %.critedge.i
  %i.bc = ptrtoint ptr %1 to i64
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 112
  br label %bb.i

bb.i:                                             ; preds = %_ZN11hb_buffer_t3addEjj.exit.i, %.lr.ph83.i
  %.04982.i = phi ptr [ %i.az, %.lr.ph83.i ], [ %i.be, %_ZN11hb_buffer_t3addEjj.exit.i ] ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.04982.i, i64 1 ; 3 uses
  %i.bf = load i8, ptr %.04982.i, align 1, !tbaa !280
  %i.bg = zext i8 %i.bf to i32
  %i.bh = ptrtoint ptr %.04982.i to i64
  %i.bi = sub i64 %i.bh, %i.bc
  %i.bj = trunc i64 %i.bi to i32
  %i.bk = load i32, ptr %i.m, align 8, !tbaa !607 ; 2 uses
  %i.bl = add i32 %i.bk, 1                        ; 3 uses
  %.not.i.i59.i = icmp eq i32 %i.bl, 0
  %i.bm = load i32, ptr %i.q, align 8
  %i.bn = icmp ult i32 %i.bl, %i.bm
  %i.bo = select i1 %.not.i.i59.i, i1 true, i1 %i.bn
  br i1 %i.bo, label %_ZN11hb_buffer_t6ensureEj.exit.thread.i.i, label %_ZN11hb_buffer_t6ensureEj.exit.i.i, !prof !268

_ZN11hb_buffer_t6ensureEj.exit.i.i:               ; preds = %bb.i
  %i.bp = tail call noundef zeroext i1 @_ZN11hb_buffer_t7enlargeEj(ptr noundef nonnull align 8 dereferenceable(276) %0, i32 noundef %i.bl)
  br i1 %i.bp, label %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i.i, label %_ZN11hb_buffer_t3addEjj.exit.i, !prof !318

_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i.i: ; preds = %_ZN11hb_buffer_t6ensureEj.exit.i.i
  %.pre.i.i = load i32, ptr %i.m, align 8, !tbaa !607
  br label %_ZN11hb_buffer_t6ensureEj.exit.thread.i.i

_ZN11hb_buffer_t6ensureEj.exit.thread.i.i:        ; preds = %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i.i, %bb.i
  %i.bq = phi i32 [ %.pre.i.i, %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i.i ], [ %i.bk, %bb.i ]
  %i.br = load ptr, ptr %i.bd, align 8, !tbaa !589
  %i.bs = zext i32 %i.bq to i64
  %i.bt = getelementptr inbounds nuw [20 x i8], ptr %i.br, i64 %i.bs ; 4 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 12
  store i64 0, ptr %i.bu, align 1
  store i32 %i.bg, ptr %i.bt, align 4, !tbaa !637
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 4
  store i32 0, ptr %i.bv, align 4, !tbaa !591
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  store i32 %i.bj, ptr %i.bw, align 4, !tbaa !608
  %i.bx = load i32, ptr %i.m, align 8, !tbaa !607
  %i.by = add i32 %i.bx, 1
  store i32 %i.by, ptr %i.m, align 8, !tbaa !607
  br label %_ZN11hb_buffer_t3addEjj.exit.i

_ZN11hb_buffer_t3addEjj.exit.i:                   ; preds = %_ZN11hb_buffer_t6ensureEj.exit.thread.i.i, %_ZN11hb_buffer_t6ensureEj.exit.i.i
  %i.bz = icmp ult ptr %i.be, %i.bb
  br i1 %i.bz, label %bb.i, label %._crit_edge.i, !llvm.loop !2312

._crit_edge.i:                                    ; preds = %_ZN11hb_buffer_t3addEjj.exit.i, %.critedge.i
  %.049.lcssa.i = phi ptr [ %i.az, %.critedge.i ], [ %i.be, %_ZN11hb_buffer_t3addEjj.exit.i ] ; 4 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 180 ; 3 uses
  store i32 0, ptr %i.ca, align 4, !tbaa !324
  %i.cb = sext i32 %.0.i to i64                   ; 2 uses
  %i.cc = getelementptr inbounds i8, ptr %1, i64 %i.cb
  %i.cd = icmp ult ptr %.049.lcssa.i, %i.cc
  br i1 %i.cd, label %.lr.ph86.i, label %.critedge5.i

.lr.ph86.i:                                       ; preds = %._crit_edge.i
  %.049.lcssa88.i = ptrtoaddr ptr %.049.lcssa.i to i64
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.cf = add i64 %i.cb, %i.a
  %i.cg = sub i64 %i.cf, %.049.lcssa88.i
  %scevgep.i = getelementptr i8, ptr %.049.lcssa.i, i64 %i.cg
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %.lr.ph86.i
  %.184.i = phi ptr [ %.049.lcssa.i, %.lr.ph86.i ], [ %i.cj, %bb.k ] ; 2 uses
  %i.ch = load i32, ptr %i.ca, align 4, !tbaa !324 ; 3 uses
  %i.ci = icmp ult i32 %i.ch, 5
  br i1 %i.ci, label %bb.k, label %.critedge5.i

bb.k:                                             ; preds = %bb.j
  %i.cj = getelementptr inbounds nuw i8, ptr %.184.i, i64 1 ; 2 uses
  %i.ck = load i8, ptr %.184.i, align 1, !tbaa !280
  %i.cl = zext i8 %i.ck to i32
  %i.cm = add nuw nsw i32 %i.ch, 1
  store i32 %i.cm, ptr %i.ca, align 4, !tbaa !324
  %i.cn = zext nneg i32 %i.ch to i64
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %i.cn
  store i32 %i.cl, ptr %i.co, align 4, !tbaa !324
  %exitcond.not.i = icmp eq ptr %i.cj, %scevgep.i
  br i1 %exitcond.not.i, label %.critedge5.i, label %bb.j, !llvm.loop !2313

.critedge5.i:                                     ; preds = %bb.k, %bb.j, %._crit_edge.i
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 1, ptr %i.cp, align 8, !tbaa !646
  br label %_ZL17hb_buffer_add_utfI11hb_latin1_tEvP11hb_buffer_tPKNT_11codepoint_tEiji.exit

_ZL17hb_buffer_add_utfI11hb_latin1_tEvP11hb_buffer_tPKNT_11codepoint_tEiji.exit: ; preds = %bb.a, %_ZN11hb_latin1_t6strlenEPKh.exit.i, %_ZN11hb_buffer_t6ensureEj.exit.i, %.critedge5.i
  ret void
}

; Function Attrs: mustprogress nounwind memory(readwrite, target_mem: none) uwtable
define void @hb_buffer_add_codepoints(ptr nofree noundef captures(none) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #16 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load atomic i8, ptr %i.a monotonic, align 1, !range !380, !noundef !293
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %_ZL17hb_buffer_add_utfI13hb_utf32_xe_tIjLb0EEEvP11hb_buffer_tPKNT_11codepoint_tEiji.exit, !prof !268

bb.b:                                             ; preds = %bb.a
  %i.d = icmp eq i32 %2, -1
  br i1 %i.d, label %bb.c, label %_ZN13hb_utf32_xe_tIjLb0EE6strlenEPKj.exit.i

bb.c:                                             ; preds = %bb.b
  %i.e = load i32, ptr %1, align 4, !tbaa !324
  %.not3.i.i = icmp eq i32 %i.e, 0
  br i1 %.not3.i.i, label %_ZN13hb_utf32_xe_tIjLb0EE6strlenEPKj.exit.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.c
  %scevgep.i.i = getelementptr i8, ptr %1, i64 4
  %wcslen.i.i = tail call i64 @wcslen(ptr %scevgep.i.i)
  %i.f = trunc i64 %wcslen.i.i to i32
  %i.g = add i32 %i.f, 1
  br label %_ZN13hb_utf32_xe_tIjLb0EE6strlenEPKj.exit.i

_ZN13hb_utf32_xe_tIjLb0EE6strlenEPKj.exit.i:      ; preds = %.lr.ph.preheader.i.i, %bb.c, %bb.b
  %.0.i = phi i32 [ %2, %bb.b ], [ 0, %bb.c ], [ %i.g, %.lr.ph.preheader.i.i ] ; 4 uses
  %i.h = icmp eq i32 %4, -1
  %i.i = sub i32 %.0.i, %3
  %spec.select.i = select i1 %i.h, i32 %i.i, i32 %4
  %.sroa.speculated66.i = tail call i32 @llvm.umin.i32(i32 %3, i32 %.0.i) ; 5 uses
  %i.j = sub nuw nsw i32 %.0.i, %.sroa.speculated66.i
  %i.k = tail call i32 @llvm.smax.i32(i32 %spec.select.i, i32 0)
  %.sroa.speculated.i = tail call i32 @llvm.smin.i32(i32 %i.k, i32 %i.j) ; 4 uses
  %or.cond.i = icmp ugt i32 %.sroa.speculated.i, 268435455
  br i1 %or.cond.i, label %_ZL17hb_buffer_add_utfI13hb_utf32_xe_tIjLb0EEEvP11hb_buffer_tPKNT_11codepoint_tEiji.exit, label %bb.d, !prof !408

bb.d:                                             ; preds = %_ZN13hb_utf32_xe_tIjLb0EE6strlenEPKj.exit.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 6 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !607  ; 2 uses
  %i.n = add i32 %i.m, %.sroa.speculated.i        ; 3 uses
  %.not.i58.i = icmp eq i32 %i.n, 0
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8
  %i.q = icmp ult i32 %i.n, %i.p
  %i.r = select i1 %.not.i58.i, i1 true, i1 %i.q
  br i1 %i.r, label %_ZN11hb_buffer_t6ensureEj.exit.thread.i, label %_ZN11hb_buffer_t6ensureEj.exit.i, !prof !268

_ZN11hb_buffer_t6ensureEj.exit.i:                 ; preds = %bb.d
  %i.s = tail call noundef zeroext i1 @_ZN11hb_buffer_t7enlargeEj(ptr noundef nonnull align 8 dereferenceable(276) %0, i32 noundef %i.n)
  br i1 %i.s, label %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i, label %_ZL17hb_buffer_add_utfI13hb_utf32_xe_tIjLb0EEEvP11hb_buffer_tPKNT_11codepoint_tEiji.exit, !prof !318

_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i: ; preds = %_ZN11hb_buffer_t6ensureEj.exit.i
  %.pre.i = load i32, ptr %i.l, align 8, !tbaa !607
  br label %_ZN11hb_buffer_t6ensureEj.exit.thread.i

_ZN11hb_buffer_t6ensureEj.exit.thread.i:          ; preds = %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i, %bb.d
  %i.t = phi i32 [ %.pre.i, %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i ], [ %i.m, %bb.d ]
  %i.u = icmp eq i32 %i.t, 0
  %i.v = icmp ne i32 %.sroa.speculated66.i, 0
  %or.cond3.i = and i1 %i.v, %i.u
  br i1 %or.cond3.i, label %.lr.ph.i, label %_ZN11hb_buffer_t6ensureEj.exit.thread.i..critedge.i_crit_edge

_ZN11hb_buffer_t6ensureEj.exit.thread.i..critedge.i_crit_edge: ; preds = %_ZN11hb_buffer_t6ensureEj.exit.thread.i
  %.pre = zext i32 %.sroa.speculated66.i to i64
  br label %.critedge.i

.lr.ph.i:                                         ; preds = %_ZN11hb_buffer_t6ensureEj.exit.thread.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 6 uses
  store i32 0, ptr %i.w, align 8, !tbaa !324
  %i.x = zext i32 %.sroa.speculated66.i to i64    ; 6 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 136
  %.idx.i = shl nuw nsw i64 %i.x, 2
  %i.z = getelementptr i8, ptr %1, i64 %.idx.i    ; 5 uses
  %i.aa = getelementptr i8, ptr %i.z, i64 -4
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !324
  store i32 1, ptr %i.w, align 8, !tbaa !324
  store i32 %i.ab, ptr %i.y, align 8, !tbaa !324
  %i.ac = icmp ugt i32 %.sroa.speculated66.i, 1
  br i1 %i.ac, label %bb.e, label %.critedge.i

bb.e:                                             ; preds = %.lr.ph.i
  %i.ad = getelementptr i8, ptr %i.z, i64 -8      ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !324
  store i32 2, ptr %i.w, align 8, !tbaa !324
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 140
  store i32 %i.ae, ptr %i.af, align 4, !tbaa !324
  %i.ag = icmp ult ptr %1, %i.ad
  br i1 %i.ag, label %bb.f, label %.critedge.i

bb.f:                                             ; preds = %bb.e
  %i.ah = getelementptr i8, ptr %i.z, i64 -12     ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !324
  store i32 3, ptr %i.w, align 8, !tbaa !324
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i32 %i.ai, ptr %i.aj, align 8, !tbaa !324
  %i.ak = icmp ult ptr %1, %i.ah
  br i1 %i.ak, label %bb.g, label %.critedge.i

bb.g:                                             ; preds = %bb.f
  %i.al = getelementptr i8, ptr %i.z, i64 -16     ; 2 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !324
  store i32 4, ptr %i.w, align 8, !tbaa !324
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 148
  store i32 %i.am, ptr %i.an, align 4, !tbaa !324
  %i.ao = icmp ult ptr %1, %i.al
  br i1 %i.ao, label %bb.h, label %.critedge.i

bb.h:                                             ; preds = %bb.g
  %i.ap = getelementptr i8, ptr %i.z, i64 -20
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !324
  store i32 5, ptr %i.w, align 8, !tbaa !324
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i32 %i.aq, ptr %i.ar, align 8, !tbaa !324
  br label %.critedge.i

.critedge.i:                                      ; preds = %.lr.ph.i, %bb.e, %bb.f, %bb.g, %bb.h, %_ZN11hb_buffer_t6ensureEj.exit.thread.i..critedge.i_crit_edge
  %.pre-phi = phi i64 [ %.pre, %_ZN11hb_buffer_t6ensureEj.exit.thread.i..critedge.i_crit_edge ], [ %i.x, %bb.h ], [ %i.x, %bb.g ], [ %i.x, %bb.f ], [ %i.x, %bb.e ], [ %i.x, %.lr.ph.i ]
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.pre-phi ; 3 uses
  %i.at = shl nuw nsw i32 %.sroa.speculated.i, 2
  %.idx88.i = zext nneg i32 %i.at to i64
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 %.idx88.i
  %.not.i = icmp eq i32 %.sroa.speculated.i, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph83.i

.lr.ph83.i:                                       ; preds = %.critedge.i
  %i.av = ptrtoint ptr %1 to i64
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 112
  br label %bb.i

bb.i:                                             ; preds = %_ZN11hb_buffer_t3addEjj.exit.i, %.lr.ph83.i
  %.04982.i = phi ptr [ %i.as, %.lr.ph83.i ], [ %i.ax, %_ZN11hb_buffer_t3addEjj.exit.i ] ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.04982.i, i64 4 ; 3 uses
  %i.ay = load i32, ptr %.04982.i, align 4, !tbaa !324
  %i.az = ptrtoint ptr %.04982.i to i64
  %i.ba = sub i64 %i.az, %i.av
  %i.bb = lshr exact i64 %i.ba, 2
  %i.bc = trunc i64 %i.bb to i32
  %i.bd = load i32, ptr %i.l, align 8, !tbaa !607 ; 2 uses
  %i.be = add i32 %i.bd, 1                        ; 3 uses
  %.not.i.i59.i = icmp eq i32 %i.be, 0
  %i.bf = load i32, ptr %i.o, align 8
  %i.bg = icmp ult i32 %i.be, %i.bf
  %i.bh = select i1 %.not.i.i59.i, i1 true, i1 %i.bg
  br i1 %i.bh, label %_ZN11hb_buffer_t6ensureEj.exit.thread.i.i, label %_ZN11hb_buffer_t6ensureEj.exit.i.i, !prof !268

_ZN11hb_buffer_t6ensureEj.exit.i.i:               ; preds = %bb.i
  %i.bi = tail call noundef zeroext i1 @_ZN11hb_buffer_t7enlargeEj(ptr noundef nonnull align 8 dereferenceable(276) %0, i32 noundef %i.be)
  br i1 %i.bi, label %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i.i, label %_ZN11hb_buffer_t3addEjj.exit.i, !prof !318

_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i.i: ; preds = %_ZN11hb_buffer_t6ensureEj.exit.i.i
  %.pre.i.i = load i32, ptr %i.l, align 8, !tbaa !607
  br label %_ZN11hb_buffer_t6ensureEj.exit.thread.i.i

_ZN11hb_buffer_t6ensureEj.exit.thread.i.i:        ; preds = %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i.i, %bb.i
  %i.bj = phi i32 [ %.pre.i.i, %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i.i ], [ %i.bd, %bb.i ]
  %i.bk = load ptr, ptr %i.aw, align 8, !tbaa !589
  %i.bl = zext i32 %i.bj to i64
  %i.bm = getelementptr inbounds nuw [20 x i8], ptr %i.bk, i64 %i.bl ; 4 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 12
  store i64 0, ptr %i.bn, align 1
  store i32 %i.ay, ptr %i.bm, align 4, !tbaa !637
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 4
  store i32 0, ptr %i.bo, align 4, !tbaa !591
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  store i32 %i.bc, ptr %i.bp, align 4, !tbaa !608
  %i.bq = load i32, ptr %i.l, align 8, !tbaa !607
  %i.br = add i32 %i.bq, 1
  store i32 %i.br, ptr %i.l, align 8, !tbaa !607
  br label %_ZN11hb_buffer_t3addEjj.exit.i

_ZN11hb_buffer_t3addEjj.exit.i:                   ; preds = %_ZN11hb_buffer_t6ensureEj.exit.thread.i.i, %_ZN11hb_buffer_t6ensureEj.exit.i.i
  %i.bs = icmp ult ptr %i.ax, %i.au
  br i1 %i.bs, label %bb.i, label %._crit_edge.i, !llvm.loop !2314

._crit_edge.i:                                    ; preds = %_ZN11hb_buffer_t3addEjj.exit.i, %.critedge.i
  %.049.lcssa.i = phi ptr [ %i.as, %.critedge.i ], [ %i.ax, %_ZN11hb_buffer_t3addEjj.exit.i ] ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 180 ; 3 uses
  store i32 0, ptr %i.bt, align 4, !tbaa !324
  %i.bu = sext i32 %.0.i to i64
  %i.bv = getelementptr inbounds [4 x i8], ptr %1, i64 %i.bu ; 2 uses
  %i.bw = icmp ult ptr %.049.lcssa.i, %i.bv
  br i1 %i.bw, label %.lr.ph86.i, label %.critedge5.i

.lr.ph86.i:                                       ; preds = %._crit_edge.i
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 156
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %.lr.ph86.i
  %.184.i = phi ptr [ %.049.lcssa.i, %.lr.ph86.i ], [ %i.ca, %bb.k ] ; 2 uses
  %i.by = load i32, ptr %i.bt, align 4, !tbaa !324 ; 3 uses
  %i.bz = icmp ult i32 %i.by, 5
  br i1 %i.bz, label %bb.k, label %.critedge5.i

bb.k:                                             ; preds = %bb.j
  %i.ca = getelementptr inbounds nuw i8, ptr %.184.i, i64 4 ; 2 uses
  %i.cb = load i32, ptr %.184.i, align 4, !tbaa !324
  %i.cc = add nuw nsw i32 %i.by, 1
  store i32 %i.cc, ptr %i.bt, align 4, !tbaa !324
  %i.cd = zext nneg i32 %i.by to i64
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %i.cd
  store i32 %i.cb, ptr %i.ce, align 4, !tbaa !324
  %i.cf = icmp ult ptr %i.ca, %i.bv
  br i1 %i.cf, label %bb.j, label %.critedge5.i, !llvm.loop !2315

.critedge5.i:                                     ; preds = %bb.k, %bb.j, %._crit_edge.i
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 1, ptr %i.cg, align 8, !tbaa !646
  br label %_ZL17hb_buffer_add_utfI13hb_utf32_xe_tIjLb0EEEvP11hb_buffer_tPKNT_11codepoint_tEiji.exit

_ZL17hb_buffer_add_utfI13hb_utf32_xe_tIjLb0EEEvP11hb_buffer_tPKNT_11codepoint_tEiji.exit: ; preds = %bb.a, %_ZN13hb_utf32_xe_tIjLb0EE6strlenEPKj.exit.i, %_ZN11hb_buffer_t6ensureEj.exit.i, %.critedge5.i
  ret void
}

; Function Attrs: mustprogress nounwind memory(readwrite, target_mem: none) uwtable
define void @hb_buffer_append(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #16 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !607  ; 2 uses
  %spec.select = tail call i32 @llvm.umin.i32(i32 %3, i32 %i.b) ; 4 uses
  %.082 = tail call i32 @llvm.umin.i32(i32 %2, i32 %spec.select) ; 4 uses
end_hunk_1
begin_hunk_2_@hb_ot_layout_table_find_script:bb.a
  %.not1.i.i.i.not.i.i.i17 = icmp eq i16 %i.ae, 0
  br i1 %.not1.i.i.i.not.i.i.i17, label %.loopexit.i.i.i.i27, label %.lr.ph.preheader.i.i.i.i.i.i18

.lr.ph.preheader.i.i.i.i.i.i18:                   ; preds = %_ZNK2OT8GSUBGPOS15get_script_listEv.exit.i15
  %i.af = tail call noundef i16 @llvm.bswap.i16(i16 %i.ae)
  %.sroa.4.8.extract.trunc.i.i.i19 = zext i16 %i.af to i32
  %i.ag = add nsw i32 %.sroa.4.8.extract.trunc.i.i.i19, -1
  br label %.lr.ph.i.i.i.i.i.i20

.lr.ph.i.i.i.i.i.i20:                             ; preds = %bb.k, %.lr.ph.preheader.i.i.i.i.i.i18
  %.0203.i.i.i.i.i.i21 = phi i32 [ %.2.i.i.i.i.i.i25, %bb.k ], [ %i.ag, %.lr.ph.preheader.i.i.i.i.i.i18 ] ; 2 uses
  %.0212.i.i.i.i.i.i22 = phi i32 [ %.223.i.i.i.i.i.i24, %bb.k ], [ 0, %.lr.ph.preheader.i.i.i.i.i.i18 ] ; 2 uses
  %i.ah = add i32 %.0212.i.i.i.i.i.i22, %.0203.i.i.i.i.i.i21
  %i.ai = lshr i32 %i.ah, 1                       ; 4 uses
  %i.aj = zext nneg i32 %i.ai to i64
  %i.ak = mul nuw nsw i64 %i.aj, 6
  %i.al = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ak
  %i.am = load i32, ptr %i.al, align 1, !tbaa !278 ; 2 uses
  %i.an = tail call noundef i32 @llvm.bswap.i32(i32 %i.am)
  %i.ao = icmp ugt i32 %i.an, 1145457748
  br i1 %i.ao, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph.i.i.i.i.i.i20
  %i.ap = add nsw i32 %i.ai, -1
  br label %bb.k

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i.i20
  %.not28.i.i.i.i.i.i23 = icmp eq i32 %i.am, 1414284868
  br i1 %.not28.i.i.i.i.i.i23, label %_ZNK17hb_sorted_array_tIKN2OT6RecordINS0_6ScriptEEEE12bsearch_implIjJEEEbRKT_PjDpT0_.exit.i.i.i.i33, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aq = add nuw nsw i32 %i.ai, 1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.h
  %.223.i.i.i.i.i.i24 = phi i32 [ %i.aq, %bb.j ], [ %.0212.i.i.i.i.i.i22, %bb.h ] ; 2 uses
  %.2.i.i.i.i.i.i25 = phi i32 [ %.0203.i.i.i.i.i.i21, %bb.j ], [ %i.ap, %bb.h ] ; 2 uses
  %.not.not.i.i.i.i.i.i26 = icmp sgt i32 %.223.i.i.i.i.i.i24, %.2.i.i.i.i.i.i25
  br i1 %.not.not.i.i.i.i.i.i26, label %.loopexit.i.i.i.i27, label %.lr.ph.i.i.i.i.i.i20, !llvm.loop !94

_ZNK17hb_sorted_array_tIKN2OT6RecordINS0_6ScriptEEEE12bsearch_implIjJEEEbRKT_PjDpT0_.exit.i.i.i.i33: ; preds = %bb.i
  br i1 %.not.i.i.i.i, label %_ZNK2OT8GSUBGPOS17find_script_indexEjPj.exit.thread, label %_ZNK2OT8GSUBGPOS17find_script_indexEjPj.exit.thread.sink.split

.loopexit.i.i.i.i27:                              ; preds = %bb.k, %_ZNK2OT8GSUBGPOS15get_script_listEv.exit.i15
  br i1 %.not.i.i.i.i, label %_ZNK2OT8GSUBGPOS17find_script_indexEjPj.exit36.thread90, label %_ZNK2OT8GSUBGPOS17find_script_indexEjPj.exit36

_ZNK2OT8GSUBGPOS17find_script_indexEjPj.exit36:   ; preds = %.loopexit.i.i.i.i27
  store i32 65535, ptr %3, align 4, !tbaa !324
  br label %_ZNK2OT8GSUBGPOS17find_script_indexEjPj.exit36.thread90

_ZNK2OT8GSUBGPOS17find_script_indexEjPj.exit36.thread90: ; preds = %.loopexit.i.i.i.i27, %_ZNK2OT8GSUBGPOS17find_script_indexEjPj.exit36
  %i.ar = load i16, ptr %i.a, align 1, !tbaa !283
  %cond.i.i37 = icmp eq i16 %i.ar, 256
  br i1 %cond.i.i37, label %bb.l, label %_ZNK2OT8GSUBGPOS15get_script_listEv.exit.i38

bb.l:                                             ; preds = %_ZNK2OT8GSUBGPOS17find_script_indexEjPj.exit36.thread90
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !279
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.at = load i16, ptr %i.as, align 1, !tbaa !283 ; 2 uses
  %i.au = icmp eq i16 %i.at, 0
  %i.av = tail call i16 @llvm.bswap.i16(i16 %i.at)
  %i.aw = zext i16 %i.av to i64
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.aw
  %.0.i.i.i.i58 = select i1 %i.au, ptr @_hb_NullPool, ptr %i.ax, !prof !267
  br label %_ZNK2OT8GSUBGPOS15get_script_listEv.exit.i38

_ZNK2OT8GSUBGPOS15get_script_listEv.exit.i38:     ; preds = %bb.l, %_ZNK2OT8GSUBGPOS17find_script_indexEjPj.exit36.thread90
  %.0.i.i39 = phi ptr [ %.0.i.i.i.i58, %bb.l ], [ @_hb_NullPool, %_ZNK2OT8GSUBGPOS17find_script_indexEjPj.exit36.thread90 ] ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.0.i.i39, i64 2
  %i.az = load i16, ptr %.0.i.i39, align 1, !tbaa !283 ; 2 uses
  %.not1.i.i.i.not.i.i.i40 = icmp eq i16 %i.az, 0
  br i1 %.not1.i.i.i.not.i.i.i40, label %.loopexit.i.i.i.i50, label %.lr.ph.preheader.i.i.i.i.i.i41

.lr.ph.preheader.i.i.i.i.i.i41:                   ; preds = %_ZNK2OT8GSUBGPOS15get_script_listEv.exit.i38
  %i.ba = tail call noundef i16 @llvm.bswap.i16(i16 %i.az)
  %.sroa.4.8.extract.trunc.i.i.i42 = zext i16 %i.ba to i32
  %i.bb = add nsw i32 %.sroa.4.8.extract.trunc.i.i.i42, -1
  br label %.lr.ph.i.i.i.i.i.i43

.lr.ph.i.i.i.i.i.i43:                             ; preds = %bb.p, %.lr.ph.preheader.i.i.i.i.i.i41
  %.0203.i.i.i.i.i.i44 = phi i32 [ %.2.i.i.i.i.i.i48, %bb.p ], [ %i.bb, %.lr.ph.preheader.i.i.i.i.i.i41 ] ; 2 uses
  %.0212.i.i.i.i.i.i45 = phi i32 [ %.223.i.i.i.i.i.i47, %bb.p ], [ 0, %.lr.ph.preheader.i.i.i.i.i.i41 ] ; 2 uses
  %i.bc = add i32 %.0212.i.i.i.i.i.i45, %.0203.i.i.i.i.i.i44
  %i.bd = lshr i32 %i.bc, 1                       ; 4 uses
  %i.be = zext nneg i32 %i.bd to i64
  %i.bf = mul nuw nsw i64 %i.be, 6
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.bf
  %i.bh = load i32, ptr %i.bg, align 1, !tbaa !278 ; 2 uses
  %i.bi = tail call noundef i32 @llvm.bswap.i32(i32 %i.bh)
  %i.bj = icmp ugt i32 %i.bi, 1684434036
  br i1 %i.bj, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.lr.ph.i.i.i.i.i.i43
  %i.bk = add nsw i32 %i.bd, -1
  br label %bb.p

bb.n:                                             ; preds = %.lr.ph.i.i.i.i.i.i43
  %.not28.i.i.i.i.i.i46 = icmp eq i32 %i.bh, 1953261156
  br i1 %.not28.i.i.i.i.i.i46, label %_ZNK17hb_sorted_array_tIKN2OT6RecordINS0_6ScriptEEEE12bsearch_implIjJEEEbRKT_PjDpT0_.exit.i.i.i.i56, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bl = add nuw nsw i32 %i.bd, 1
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.m
  %.223.i.i.i.i.i.i47 = phi i32 [ %i.bl, %bb.o ], [ %.0212.i.i.i.i.i.i45, %bb.m ] ; 2 uses
  %.2.i.i.i.i.i.i48 = phi i32 [ %.0203.i.i.i.i.i.i44, %bb.o ], [ %i.bk, %bb.m ] ; 2 uses
  %.not.not.i.i.i.i.i.i49 = icmp sgt i32 %.223.i.i.i.i.i.i47, %.2.i.i.i.i.i.i48
  br i1 %.not.not.i.i.i.i.i.i49, label %.loopexit.i.i.i.i50, label %.lr.ph.i.i.i.i.i.i43, !llvm.loop !94

_ZNK17hb_sorted_array_tIKN2OT6RecordINS0_6ScriptEEEE12bsearch_implIjJEEEbRKT_PjDpT0_.exit.i.i.i.i56: ; preds = %bb.n
  br i1 %.not.i.i.i.i, label %_ZNK2OT8GSUBGPOS17find_script_indexEjPj.exit.thread, label %_ZNK2OT8GSUBGPOS17find_script_indexEjPj.exit.thread.sink.split

.loopexit.i.i.i.i50:                              ; preds = %bb.p, %_ZNK2OT8GSUBGPOS15get_script_listEv.exit.i38
  br i1 %.not.i.i.i.i, label %_ZNK2OT8GSUBGPOS17find_script_indexEjPj.exit59.thread96, label %_ZNK2OT8GSUBGPOS17find_script_indexEjPj.exit59

_ZNK2OT8GSUBGPOS17find_script_indexEjPj.exit59:   ; preds = %.loopexit.i.i.i.i50
  store i32 65535, ptr %3, align 4, !tbaa !324
  br label %_ZNK2OT8GSUBGPOS17find_script_indexEjPj.exit59.thread96

_ZNK2OT8GSUBGPOS17find_script_indexEjPj.exit59.thread96: ; preds = %.loopexit.i.i.i.i50, %_ZNK2OT8GSUBGPOS17find_script_indexEjPj.exit59
  %i.bm = load i16, ptr %i.a, align 1, !tbaa !283
  %cond.i.i60 = icmp eq i16 %i.bm, 256
  br i1 %cond.i.i60, label %bb.q, label %_ZNK2OT8GSUBGPOS15get_script_listEv.exit.i61

bb.q:                                             ; preds = %_ZNK2OT8GSUBGPOS17find_script_indexEjPj.exit59.thread96
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !279
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.bo = load i16, ptr %i.bn, align 1, !tbaa !283 ; 2 uses
  %i.bp = icmp eq i16 %i.bo, 0
  %i.bq = tail call i16 @llvm.bswap.i16(i16 %i.bo)
  %i.br = zext i16 %i.bq to i64
  %i.bs = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.br
  %.0.i.i.i.i81 = select i1 %i.bp, ptr @_hb_NullPool, ptr %i.bs, !prof !267
  br label %_ZNK2OT8GSUBGPOS15get_script_listEv.exit.i61

_ZNK2OT8GSUBGPOS15get_script_listEv.exit.i61:     ; preds = %bb.q, %_ZNK2OT8GSUBGPOS17find_script_indexEjPj.exit59.thread96
  %.0.i.i62 = phi ptr [ %.0.i.i.i.i81, %bb.q ], [ @_hb_NullPool, %_ZNK2OT8GSUBGPOS17find_script_indexEjPj.exit59.thread96 ] ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.0.i.i62, i64 2
  %i.bu = load i16, ptr %.0.i.i62, align 1, !tbaa !283 ; 2 uses
  %.not1.i.i.i.not.i.i.i63 = icmp eq i16 %i.bu, 0
  br i1 %.not1.i.i.i.not.i.i.i63, label %.loopexit.i.i.i.i73, label %.lr.ph.preheader.i.i.i.i.i.i64

.lr.ph.preheader.i.i.i.i.i.i64:                   ; preds = %_ZNK2OT8GSUBGPOS15get_script_listEv.exit.i61
  %i.bv = tail call noundef i16 @llvm.bswap.i16(i16 %i.bu)
  %.sroa.4.8.extract.trunc.i.i.i65 = zext i16 %i.bv to i32
  %i.bw = add nsw i32 %.sroa.4.8.extract.trunc.i.i.i65, -1
  br label %.lr.ph.i.i.i.i.i.i66

.lr.ph.i.i.i.i.i.i66:                             ; preds = %bb.u, %.lr.ph.preheader.i.i.i.i.i.i64
  %.0203.i.i.i.i.i.i67 = phi i32 [ %.2.i.i.i.i.i.i71, %bb.u ], [ %i.bw, %.lr.ph.preheader.i.i.i.i.i.i64 ] ; 2 uses
  %.0212.i.i.i.i.i.i68 = phi i32 [ %.223.i.i.i.i.i.i70, %bb.u ], [ 0, %.lr.ph.preheader.i.i.i.i.i.i64 ] ; 2 uses
  %i.bx = add i32 %.0212.i.i.i.i.i.i68, %.0203.i.i.i.i.i.i67
  %i.by = lshr i32 %i.bx, 1                       ; 4 uses
  %i.bz = zext nneg i32 %i.by to i64
  %i.ca = mul nuw nsw i64 %i.bz, 6
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.ca
  %i.cc = load i32, ptr %i.cb, align 1, !tbaa !278 ; 2 uses
  %i.cd = tail call noundef i32 @llvm.bswap.i32(i32 %i.cc)
  %i.ce = icmp ugt i32 %i.cd, 1818326126
  br i1 %i.ce, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.lr.ph.i.i.i.i.i.i66
  %i.cf = add nsw i32 %i.by, -1
  br label %bb.u

bb.s:                                             ; preds = %.lr.ph.i.i.i.i.i.i66
  %.not28.i.i.i.i.i.i69 = icmp eq i32 %i.cc, 1853120876
  br i1 %.not28.i.i.i.i.i.i69, label %_ZNK17hb_sorted_array_tIKN2OT6RecordINS0_6ScriptEEEE12bsearch_implIjJEEEbRKT_PjDpT0_.exit.i.i.i.i79, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cg = add nuw nsw i32 %i.by, 1
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.r
  %.223.i.i.i.i.i.i70 = phi i32 [ %i.cg, %bb.t ], [ %.0212.i.i.i.i.i.i68, %bb.r ] ; 2 uses
  %.2.i.i.i.i.i.i71 = phi i32 [ %.0203.i.i.i.i.i.i67, %bb.t ], [ %i.cf, %bb.r ] ; 2 uses
  %.not.not.i.i.i.i.i.i72 = icmp sgt i32 %.223.i.i.i.i.i.i70, %.2.i.i.i.i.i.i71
  br i1 %.not.not.i.i.i.i.i.i72, label %.loopexit.i.i.i.i73, label %.lr.ph.i.i.i.i.i.i66, !llvm.loop !94

_ZNK17hb_sorted_array_tIKN2OT6RecordINS0_6ScriptEEEE12bsearch_implIjJEEEbRKT_PjDpT0_.exit.i.i.i.i79: ; preds = %bb.s
  br i1 %.not.i.i.i.i, label %_ZNK2OT8GSUBGPOS17find_script_indexEjPj.exit.thread, label %_ZNK2OT8GSUBGPOS17find_script_indexEjPj.exit.thread.sink.split

.loopexit.i.i.i.i73:                              ; preds = %bb.u, %_ZNK2OT8GSUBGPOS15get_script_listEv.exit.i61
  br i1 %.not.i.i.i.i, label %_ZNK2OT8GSUBGPOS17find_script_indexEjPj.exit.thread, label %_ZNK2OT8GSUBGPOS17find_script_indexEjPj.exit.thread.sink.split

_ZNK2OT8GSUBGPOS17find_script_indexEjPj.exit.thread.sink.split: ; preds = %.loopexit.i.i.i.i73, %_ZNK17hb_sorted_array_tIKN2OT6RecordINS0_6ScriptEEEE12bsearch_implIjJEEEbRKT_PjDpT0_.exit.i.i.i.i79, %_ZNK17hb_sorted_array_tIKN2OT6RecordINS0_6ScriptEEEE12bsearch_implIjJEEEbRKT_PjDpT0_.exit.i.i.i.i56, %_ZNK17hb_sorted_array_tIKN2OT6RecordINS0_6ScriptEEEE12bsearch_implIjJEEEbRKT_PjDpT0_.exit.i.i.i.i33, %_ZNK17hb_sorted_array_tIKN2OT6RecordINS0_6ScriptEEEE12bsearch_implIjJEEEbRKT_PjDpT0_.exit.i.i.i.i
  %.sink = phi i32 [ %i.by, %_ZNK17hb_sorted_array_tIKN2OT6RecordINS0_6ScriptEEEE12bsearch_implIjJEEEbRKT_PjDpT0_.exit.i.i.i.i79 ], [ %i.bd, %_ZNK17hb_sorted_array_tIKN2OT6RecordINS0_6ScriptEEEE12bsearch_implIjJEEEbRKT_PjDpT0_.exit.i.i.i.i56 ], [ %i.ai, %_ZNK17hb_sorted_array_tIKN2OT6RecordINS0_6ScriptEEEE12bsearch_implIjJEEEbRKT_PjDpT0_.exit.i.i.i.i33 ], [ %i.n, %_ZNK17hb_sorted_array_tIKN2OT6RecordINS0_6ScriptEEEE12bsearch_implIjJEEEbRKT_PjDpT0_.exit.i.i.i.i ], [ 65535, %.loopexit.i.i.i.i73 ]
  %.0.ph = phi i32 [ 0, %_ZNK17hb_sorted_array_tIKN2OT6RecordINS0_6ScriptEEEE12bsearch_implIjJEEEbRKT_PjDpT0_.exit.i.i.i.i79 ], [ 0, %_ZNK17hb_sorted_array_tIKN2OT6RecordINS0_6ScriptEEEE12bsearch_implIjJEEEbRKT_PjDpT0_.exit.i.i.i.i56 ], [ 0, %_ZNK17hb_sorted_array_tIKN2OT6RecordINS0_6ScriptEEEE12bsearch_implIjJEEEbRKT_PjDpT0_.exit.i.i.i.i33 ], [ 1, %_ZNK17hb_sorted_array_tIKN2OT6RecordINS0_6ScriptEEEE12bsearch_implIjJEEEbRKT_PjDpT0_.exit.i.i.i.i ], [ 0, %.loopexit.i.i.i.i73 ]
  store i32 %.sink, ptr %3, align 4, !tbaa !324
  br label %_ZNK2OT8GSUBGPOS17find_script_indexEjPj.exit.thread

_ZNK2OT8GSUBGPOS17find_script_indexEjPj.exit.thread: ; preds = %_ZNK2OT8GSUBGPOS17find_script_indexEjPj.exit.thread.sink.split, %.loopexit.i.i.i.i73, %_ZNK17hb_sorted_array_tIKN2OT6RecordINS0_6ScriptEEEE12bsearch_implIjJEEEbRKT_PjDpT0_.exit.i.i.i.i79, %_ZNK17hb_sorted_array_tIKN2OT6RecordINS0_6ScriptEEEE12bsearch_implIjJEEEbRKT_PjDpT0_.exit.i.i.i.i56, %_ZNK17hb_sorted_array_tIKN2OT6RecordINS0_6ScriptEEEE12bsearch_implIjJEEEbRKT_PjDpT0_.exit.i.i.i.i33, %_ZNK17hb_sorted_array_tIKN2OT6RecordINS0_6ScriptEEEE12bsearch_implIjJEEEbRKT_PjDpT0_.exit.i.i.i.i
  %.0 = phi i32 [ 0, %_ZNK17hb_sorted_array_tIKN2OT6RecordINS0_6ScriptEEEE12bsearch_implIjJEEEbRKT_PjDpT0_.exit.i.i.i.i79 ], [ 1, %_ZNK17hb_sorted_array_tIKN2OT6RecordINS0_6ScriptEEEE12bsearch_implIjJEEEbRKT_PjDpT0_.exit.i.i.i.i ], [ 0, %_ZNK17hb_sorted_array_tIKN2OT6RecordINS0_6ScriptEEEE12bsearch_implIjJEEEbRKT_PjDpT0_.exit.i.i.i.i33 ], [ 0, %_ZNK17hb_sorted_array_tIKN2OT6RecordINS0_6ScriptEEEE12bsearch_implIjJEEEbRKT_PjDpT0_.exit.i.i.i.i56 ], [ 0, %.loopexit.i.i.i.i73 ], [ %.0.ph, %_ZNK2OT8GSUBGPOS17find_script_indexEjPj.exit.thread.sink.split ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define range(i32 0, 2) i32 @hb_ot_layout_table_choose_script(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(address_is_null) %3, ptr nofree noundef writeonly captures(address_is_null) %4) local_unnamed_addr #0 {
bb.a:
  %wcslen = tail call i64 @wcslen(ptr %2)
  %i.a = trunc i64 %wcslen to i32
  %i.b = tail call i32 @hb_ot_layout_table_select_script(ptr noundef %0, i32 noundef %1, i32 noundef %i.a, ptr noundef %2, ptr noundef %3, ptr noundef %4)
  ret i32 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define range(i32 0, 2) i32 @hb_ot_layout_table_select_script(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef writeonly captures(address_is_null) %4, ptr nofree noundef writeonly captures(address_is_null) %5) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc noundef nonnull align 1 dereferenceable(14) ptr @_ZL18get_gsubgpos_tableP9hb_face_tj(ptr noundef %0, i32 noundef %1) ; 12 uses
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %.not.i.i.i.i = icmp eq ptr %4, null            ; 2 uses
  %wide.trip.count = zext i32 %2 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNK2OT8GSUBGPOS17find_script_indexEjPj.exit.thread107
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNK2OT8GSUBGPOS17find_script_indexEjPj.exit.thread107 ] ; 3 uses
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv
  %i.d = load i32, ptr %i.c, align 4, !tbaa !324  ; 2 uses
  %i.e = load i16, ptr %i.a, align 1, !tbaa !283
  %cond.i.i = icmp eq i16 %i.e, 256
  br i1 %cond.i.i, label %bb.c, label %_ZNK2OT8GSUBGPOS15get_script_listEv.exit.i

bb.c:                                             ; preds = %bb.b
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !279
  %i.f = load i16, ptr %i.b, align 1, !tbaa !283  ; 2 uses
  %i.g = icmp eq i16 %i.f, 0
  %i.h = tail call i16 @llvm.bswap.i16(i16 %i.f)
  %i.i = zext i16 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.i
  %.0.i.i.i.i = select i1 %i.g, ptr @_hb_NullPool, ptr %i.j, !prof !267
  br label %_ZNK2OT8GSUBGPOS15get_script_listEv.exit.i

_ZNK2OT8GSUBGPOS15get_script_listEv.exit.i:       ; preds = %bb.c, %bb.b
  %.0.i.i = phi ptr [ %.0.i.i.i.i, %bb.c ], [ @_hb_NullPool, %bb.b ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 2
  %i.l = load i16, ptr %.0.i.i, align 1, !tbaa !283 ; 2 uses
  %.not1.i.i.i.not.i.i.i = icmp eq i16 %i.l, 0
  br i1 %.not1.i.i.i.not.i.i.i, label %.loopexit.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %_ZNK2OT8GSUBGPOS15get_script_listEv.exit.i
  %i.m = tail call noundef i16 @llvm.bswap.i16(i16 %i.l)
  %.sroa.4.8.extract.trunc.i.i.i = zext i16 %i.m to i32
  %i.n = add nsw i32 %.sroa.4.8.extract.trunc.i.i.i, -1
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.g, %.lr.ph.preheader.i.i.i.i.i.i
  %.0203.i.i.i.i.i.i = phi i32 [ %.2.i.i.i.i.i.i, %bb.g ], [ %i.n, %.lr.ph.preheader.i.i.i.i.i.i ] ; 2 uses
  %.0212.i.i.i.i.i.i = phi i32 [ %.223.i.i.i.i.i.i, %bb.g ], [ 0, %.lr.ph.preheader.i.i.i.i.i.i ] ; 2 uses
  %i.o = add i32 %.0212.i.i.i.i.i.i, %.0203.i.i.i.i.i.i
  %i.p = lshr i32 %i.o, 1                         ; 4 uses
  %i.q = zext nneg i32 %i.p to i64
  %i.r = mul nuw nsw i64 %i.q, 6
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.r
  %i.t = load i32, ptr %i.s, align 1, !tbaa !278
  %i.u = tail call noundef i32 @llvm.bswap.i32(i32 %i.t) ; 2 uses
  %i.v = icmp ult i32 %i.d, %i.u
  br i1 %i.v, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.w = add nsw i32 %i.p, -1
  br label %bb.g

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %.not28.i.i.i.i.i.i = icmp eq i32 %i.d, %i.u
  br i1 %.not28.i.i.i.i.i.i, label %_ZNK17hb_sorted_array_tIKN2OT6RecordINS0_6ScriptEEEE12bsearch_implIjJEEEbRKT_PjDpT0_.exit.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = add nuw nsw i32 %i.p, 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d
  %.223.i.i.i.i.i.i = phi i32 [ %i.x, %bb.f ], [ %.0212.i.i.i.i.i.i, %bb.d ] ; 2 uses
  %.2.i.i.i.i.i.i = phi i32 [ %.0203.i.i.i.i.i.i, %bb.f ], [ %i.w, %bb.d ] ; 2 uses
  %.not.not.i.i.i.i.i.i = icmp sgt i32 %.223.i.i.i.i.i.i, %.2.i.i.i.i.i.i
  br i1 %.not.not.i.i.i.i.i.i, label %.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !94

_ZNK17hb_sorted_array_tIKN2OT6RecordINS0_6ScriptEEEE12bsearch_implIjJEEEbRKT_PjDpT0_.exit.i.i.i.i: ; preds = %bb.e
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv
  br i1 %.not.i.i.i.i, label %_ZNK2OT8GSUBGPOS17find_script_indexEjPj.exit.thread, label %_ZNK2OT8GSUBGPOS17find_script_indexEjPj.exit.thread109

_ZNK2OT8GSUBGPOS17find_script_indexEjPj.exit.thread109: ; preds = %_ZNK17hb_sorted_array_tIKN2OT6RecordINS0_6ScriptEEEE12bsearch_implIjJEEEbRKT_PjDpT0_.exit.i.i.i.i
  store i32 %i.p, ptr %4, align 4, !tbaa !324
  br label %_ZNK2OT8GSUBGPOS17find_script_indexEjPj.exit.thread

.loopexit.i.i.i.i:                                ; preds = %bb.g, %_ZNK2OT8GSUBGPOS15get_script_listEv.exit.i
  br i1 %.not.i.i.i.i, label %_ZNK2OT8GSUBGPOS17find_script_indexEjPj.exit.thread107, label %_ZNK2OT8GSUBGPOS17find_script_indexEjPj.exit

_ZNK2OT8GSUBGPOS17find_script_indexEjPj.exit:     ; preds = %.loopexit.i.i.i.i
  store i32 65535, ptr %4, align 4, !tbaa !324
  br label %_ZNK2OT8GSUBGPOS17find_script_indexEjPj.exit.thread107

_ZNK2OT8GSUBGPOS17find_script_indexEjPj.exit.thread: ; preds = %_ZNK17hb_sorted_array_tIKN2OT6RecordINS0_6ScriptEEEE12bsearch_implIjJEEEbRKT_PjDpT0_.exit.i.i.i.i, %_ZNK2OT8GSUBGPOS17find_script_indexEjPj.exit.thread109
  %.not36 = icmp eq ptr %5, null
  br i1 %.not36, label %bb.y, label %bb.h

bb.h:                                             ; preds = %_ZNK2OT8GSUBGPOS17find_script_indexEjPj.exit.thread
  %i.z = load i32, ptr %i.y, align 4, !tbaa !324
  br label %.sink.split

_ZNK2OT8GSUBGPOS17find_script_indexEjPj.exit.thread107: ; preds = %.loopexit.i.i.i.i, %_ZNK2OT8GSUBGPOS17find_script_indexEjPj.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !2645

._crit_edge:                                      ; preds = %_ZNK2OT8GSUBGPOS17find_script_indexEjPj.exit.thread107, %bb.a
  %i.aa = load i16, ptr %i.a, align 1, !tbaa !283
  %cond.i.i37 = icmp eq i16 %i.aa, 256
  br i1 %cond.i.i37, label %bb.i, label %_ZNK2OT8GSUBGPOS15get_script_listEv.exit.i38

bb.i:                                             ; preds = %._crit_edge
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !279
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.ac = load i16, ptr %i.ab, align 1, !tbaa !283 ; 2 uses
  %i.ad = icmp eq i16 %i.ac, 0
  %i.ae = tail call i16 @llvm.bswap.i16(i16 %i.ac)
  %i.af = zext i16 %i.ae to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.af
  %.0.i.i.i.i58 = select i1 %i.ad, ptr @_hb_NullPool, ptr %i.ag, !prof !267
  br label %_ZNK2OT8GSUBGPOS15get_script_listEv.exit.i38

_ZNK2OT8GSUBGPOS15get_script_listEv.exit.i38:     ; preds = %bb.i, %._crit_edge
  %.0.i.i39 = phi ptr [ %.0.i.i.i.i58, %bb.i ], [ @_hb_NullPool, %._crit_edge ] ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.0.i.i39, i64 2
  %i.ai = load i16, ptr %.0.i.i39, align 1, !tbaa !283 ; 2 uses
  %.not1.i.i.i.not.i.i.i40 = icmp eq i16 %i.ai, 0
  br i1 %.not1.i.i.i.not.i.i.i40, label %.loopexit.i.i.i.i50, label %.lr.ph.preheader.i.i.i.i.i.i41

.lr.ph.preheader.i.i.i.i.i.i41:                   ; preds = %_ZNK2OT8GSUBGPOS15get_script_listEv.exit.i38
  %i.aj = tail call noundef i16 @llvm.bswap.i16(i16 %i.ai)
  %.sroa.4.8.extract.trunc.i.i.i42 = zext i16 %i.aj to i32
  %i.ak = add nsw i32 %.sroa.4.8.extract.trunc.i.i.i42, -1
  br label %.lr.ph.i.i.i.i.i.i43

.lr.ph.i.i.i.i.i.i43:                             ; preds = %bb.m, %.lr.ph.preheader.i.i.i.i.i.i41
  %.0203.i.i.i.i.i.i44 = phi i32 [ %.2.i.i.i.i.i.i48, %bb.m ], [ %i.ak, %.lr.ph.preheader.i.i.i.i.i.i41 ] ; 2 uses
  %.0212.i.i.i.i.i.i45 = phi i32 [ %.223.i.i.i.i.i.i47, %bb.m ], [ 0, %.lr.ph.preheader.i.i.i.i.i.i41 ] ; 2 uses
  %i.al = add i32 %.0212.i.i.i.i.i.i45, %.0203.i.i.i.i.i.i44
  %i.am = lshr i32 %i.al, 1                       ; 4 uses
  %i.an = zext nneg i32 %i.am to i64
  %i.ao = mul nuw nsw i64 %i.an, 6
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ao
  %i.aq = load i32, ptr %i.ap, align 1, !tbaa !278 ; 2 uses
  %i.ar = tail call noundef i32 @llvm.bswap.i32(i32 %i.aq)
  %i.as = icmp ugt i32 %i.ar, 1145457748
  br i1 %i.as, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.lr.ph.i.i.i.i.i.i43
  %i.at = add nsw i32 %i.am, -1
  br label %bb.m

bb.k:                                             ; preds = %.lr.ph.i.i.i.i.i.i43
  %.not28.i.i.i.i.i.i46 = icmp eq i32 %i.aq, 1414284868
  br i1 %.not28.i.i.i.i.i.i46, label %_ZNK17hb_sorted_array_tIKN2OT6RecordINS0_6ScriptEEEE12bsearch_implIjJEEEbRKT_PjDpT0_.exit.i.i.i.i56, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.au = add nuw nsw i32 %i.am, 1
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.j
  %.223.i.i.i.i.i.i47 = phi i32 [ %i.au, %bb.l ], [ %.0212.i.i.i.i.i.i45, %bb.j ] ; 2 uses
  %.2.i.i.i.i.i.i48 = phi i32 [ %.0203.i.i.i.i.i.i44, %bb.l ], [ %i.at, %bb.j ] ; 2 uses
  %.not.not.i.i.i.i.i.i49 = icmp sgt i32 %.223.i.i.i.i.i.i47, %.2.i.i.i.i.i.i48
  br i1 %.not.not.i.i.i.i.i.i49, label %.loopexit.i.i.i.i50, label %.lr.ph.i.i.i.i.i.i43, !llvm.loop !94

_ZNK17hb_sorted_array_tIKN2OT6RecordINS0_6ScriptEEEE12bsearch_implIjJEEEbRKT_PjDpT0_.exit.i.i.i.i56: ; preds = %bb.k
  %.not10.i.i.i.i57 = icmp eq ptr %4, null
  br i1 %.not10.i.i.i.i57, label %_ZNK2OT8GSUBGPOS17find_script_indexEjPj.exit59.thread, label %_ZNK2OT8GSUBGPOS17find_script_indexEjPj.exit59.thread115

_ZNK2OT8GSUBGPOS17find_script_indexEjPj.exit59.thread115: ; preds = %_ZNK17hb_sorted_array_tIKN2OT6RecordINS0_6ScriptEEEE12bsearch_implIjJEEEbRKT_PjDpT0_.exit.i.i.i.i56
  store i32 %i.am, ptr %4, align 4, !tbaa !324
  br label %_ZNK2OT8GSUBGPOS17find_script_indexEjPj.exit59.thread

.loopexit.i.i.i.i50:                              ; preds = %bb.m, %_ZNK2OT8GSUBGPOS15get_script_listEv.exit.i38
  %.not.i.i.i.i51 = icmp eq ptr %4, null          ; 5 uses
  br i1 %.not.i.i.i.i51, label %_ZNK2OT8GSUBGPOS17find_script_indexEjPj.exit59.thread113, label %_ZNK2OT8GSUBGPOS17find_script_indexEjPj.exit59

_ZNK2OT8GSUBGPOS17find_script_indexEjPj.exit59:   ; preds = %.loopexit.i.i.i.i50
  store i32 65535, ptr %4, align 4, !tbaa !324
  br label %_ZNK2OT8GSUBGPOS17find_script_indexEjPj.exit59.thread113

_ZNK2OT8GSUBGPOS17find_script_indexEjPj.exit59.thread: ; preds = %_ZNK17hb_sorted_array_tIKN2OT6RecordINS0_6ScriptEEEE12bsearch_implIjJEEEbRKT_PjDpT0_.exit.i.i.i.i56, %_ZNK2OT8GSUBGPOS17find_script_indexEjPj.exit59.thread115
  %.not35 = icmp eq ptr %5, null
  br i1 %.not35, label %bb.y, label %.sink.split

_ZNK2OT8GSUBGPOS17find_script_indexEjPj.exit59.thread113: ; preds = %.loopexit.i.i.i.i50, %_ZNK2OT8GSUBGPOS17find_script_indexEjPj.exit59
  %i.av = load i16, ptr %i.a, align 1, !tbaa !283
  %cond.i.i60 = icmp eq i16 %i.av, 256
  br i1 %cond.i.i60, label %bb.n, label %_ZNK2OT8GSUBGPOS15get_script_listEv.exit.i61

bb.n:                                             ; preds = %_ZNK2OT8GSUBGPOS17find_script_indexEjPj.exit59.thread113
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !279
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.ax = load i16, ptr %i.aw, align 1, !tbaa !283 ; 2 uses
  %i.ay = icmp eq i16 %i.ax, 0
  %i.az = tail call i16 @llvm.bswap.i16(i16 %i.ax)
  %i.ba = zext i16 %i.az to i64
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ba
  %.0.i.i.i.i81 = select i1 %i.ay, ptr @_hb_NullPool, ptr %i.bb, !prof !267
end_hunk_2
