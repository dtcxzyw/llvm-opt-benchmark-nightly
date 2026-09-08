Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/harfbuzz?download=true
inline.NumInlined: 35471
inline.NumDeleted: 12449
loop-unroll.NumCompletelyUnrolled: 169
loop-unroll.NumRuntimeUnrolled: 286
loop-unroll.NumUnrolled: 485
begin_hunk_0_@hb_feature_from_string:bb.a
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !280
  switch i8 %i.dp, label %_ZL11parse_spacePPKcS0_.exit.i11.i.i.loopexit [
    i8 32, label %bb.ah
    i8 13, label %bb.ah
    i8 12, label %bb.ah
    i8 10, label %bb.ah
    i8 9, label %bb.ah
    i8 11, label %bb.ah
  ]

bb.ah:                                            ; preds = %.lr.ph.i.i13.i.i, %.lr.ph.i.i13.i.i, %.lr.ph.i.i13.i.i, %.lr.ph.i.i13.i.i, %.lr.ph.i.i13.i.i, %.lr.ph.i.i13.i.i
  %i.dq = getelementptr inbounds nuw i8, ptr %i.do, i64 1 ; 2 uses
  %exitcond.not.i.i14.i.i = icmp eq ptr %i.dq, %i.m
  br i1 %exitcond.not.i.i14.i.i, label %_ZL11parse_spacePPKcS0_.exit.i11.i.i.loopexit, label %.lr.ph.i.i13.i.i, !llvm.loop !31

_ZL11parse_spacePPKcS0_.exit.i11.i.i.loopexit:    ; preds = %.lr.ph.i.i13.i.i, %bb.ah
  %i.dr = phi ptr [ %scevgep27, %bb.ah ], [ %i.do, %.lr.ph.i.i13.i.i ] ; 2 uses
  store ptr %i.dr, ptr %i.h, align 8
  br label %_ZL11parse_spacePPKcS0_.exit.i11.i.i

_ZL11parse_spacePPKcS0_.exit.i11.i.i:             ; preds = %_ZL11parse_spacePPKcS0_.exit.i11.i.i.loopexit, %bb.ag
  %i.ds = phi ptr [ %.promoted18, %bb.ag ], [ %i.dr, %_ZL11parse_spacePPKcS0_.exit.i11.i.i.loopexit ] ; 12 uses
  %i.dt = icmp ult ptr %i.ds, %i.m
  br i1 %i.dt, label %.lr.ph.preheader.i.i.i, label %.critedge.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %_ZL11parse_spacePPKcS0_.exit.i11.i.i
  %i.du = ptrtoaddr ptr %i.ds to i64
  %i.dv = sub i64 %i.cy, %i.du
  %scevgep.i.i.i = getelementptr i8, ptr %i.ds, i64 %i.dv
  br label %.lr.ph.i.i26.i

.lr.ph.i.i26.i:                                   ; preds = %bb.ai, %.lr.ph.preheader.i.i.i
  %i.dw = phi ptr [ %i.eb, %bb.ai ], [ %i.ds, %.lr.ph.preheader.i.i.i ] ; 4 uses
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !280
  %i.dy = and i8 %i.dx, -33
  %i.dz = add i8 %i.dy, -65
  %i.ea = icmp ult i8 %i.dz, 26
  br i1 %i.ea, label %bb.ai, label %.critedge.i.i.i

bb.ai:                                            ; preds = %.lr.ph.i.i26.i
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dw, i64 1 ; 4 uses
  store ptr %i.eb, ptr %i.h, align 8, !tbaa !629
  %exitcond.not.i.i27.i = icmp eq ptr %i.eb, %i.m
  br i1 %exitcond.not.i.i27.i, label %.critedge.i.i.i, label %.lr.ph.i.i26.i, !llvm.loop !2353

.critedge.i.i.i:                                  ; preds = %bb.ai, %.lr.ph.i.i26.i, %_ZL11parse_spacePPKcS0_.exit.i11.i.i
  %.promoted.i48.i = phi ptr [ %i.ds, %_ZL11parse_spacePPKcS0_.exit.i11.i.i ], [ %i.dw, %.lr.ph.i.i26.i ], [ %i.eb, %bb.ai ] ; 3 uses
  %.lcssa.i.i.i = phi ptr [ %i.ds, %_ZL11parse_spacePPKcS0_.exit.i11.i.i ], [ %i.dw, %.lr.ph.i.i26.i ], [ %scevgep.i.i.i, %bb.ai ]
  %i.ec = ptrtoint ptr %.lcssa.i.i.i to i64
  %i.ed = ptrtoint ptr %i.ds to i64
  %i.ee = sub i64 %i.ec, %i.ed
  switch i64 %i.ee, label %_ZL27parse_feature_value_postfixPPKcS0_P12hb_feature_t.exit.i [
    i64 2, label %bb.aj
    i64 3, label %bb.al
  ]

bb.aj:                                            ; preds = %.critedge.i.i.i
  %i.ef = load i8, ptr %i.ds, align 1, !tbaa !280 ; 3 uses
  %i.eg = add i8 %i.ef, -65
  %or.cond.i.i.i.i = icmp ult i8 %i.eg, 26
  %i.eh = add nuw nsw i8 %i.ef, 32
  %i.ei = select i1 %or.cond.i.i.i.i, i8 %i.eh, i8 %i.ef
  %i.ej = icmp eq i8 %i.ei, 111
  br i1 %i.ej, label %bb.ak, label %_ZL27parse_feature_value_postfixPPKcS0_P12hb_feature_t.exit.i

bb.ak:                                            ; preds = %bb.aj
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ds, i64 1
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !280 ; 3 uses
  %i.em = add i8 %i.el, -65
  %or.cond.i20.i.i.i = icmp ult i8 %i.em, 26
  %i.en = add nuw nsw i8 %i.el, 32
  %i.eo = select i1 %or.cond.i20.i.i.i, i8 %i.en, i8 %i.el
  %i.ep = icmp eq i8 %i.eo, 110
  br i1 %i.ep, label %_ZL27parse_feature_value_postfixPPKcS0_P12hb_feature_t.exit.thread.i, label %_ZL27parse_feature_value_postfixPPKcS0_P12hb_feature_t.exit.i

bb.al:                                            ; preds = %.critedge.i.i.i
  %i.eq = load i8, ptr %i.ds, align 1, !tbaa !280 ; 3 uses
  %i.er = add i8 %i.eq, -65
  %or.cond.i21.i.i.i = icmp ult i8 %i.er, 26
  %i.es = add nuw nsw i8 %i.eq, 32
  %i.et = select i1 %or.cond.i21.i.i.i, i8 %i.es, i8 %i.eq
  %i.eu = icmp eq i8 %i.et, 111
  br i1 %i.eu, label %bb.am, label %_ZL27parse_feature_value_postfixPPKcS0_P12hb_feature_t.exit.i

bb.am:                                            ; preds = %bb.al
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ds, i64 1
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !280 ; 3 uses
  %i.ex = add i8 %i.ew, -65
  %or.cond.i22.i.i.i = icmp ult i8 %i.ex, 26
  %i.ey = add nuw nsw i8 %i.ew, 32
  %i.ez = select i1 %or.cond.i22.i.i.i, i8 %i.ey, i8 %i.ew
  %i.fa = icmp eq i8 %i.ez, 102
  br i1 %i.fa, label %bb.an, label %_ZL27parse_feature_value_postfixPPKcS0_P12hb_feature_t.exit.i

bb.an:                                            ; preds = %bb.am
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ds, i64 2
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !280 ; 3 uses
  %i.fd = add i8 %i.fc, -65
  %or.cond.i23.i.i.i = icmp ult i8 %i.fd, 26
  %i.fe = add nuw nsw i8 %i.fc, 32
  %i.ff = select i1 %or.cond.i23.i.i.i, i8 %i.fe, i8 %i.fc
  %i.fg = icmp eq i8 %i.ff, 102
  br i1 %i.fg, label %_ZL27parse_feature_value_postfixPPKcS0_P12hb_feature_t.exit.thread.i, label %_ZL27parse_feature_value_postfixPPKcS0_P12hb_feature_t.exit.i

_ZL27parse_feature_value_postfixPPKcS0_P12hb_feature_t.exit.thread.i: ; preds = %bb.an, %bb.ak, %_ZL12parse_uint32PPKcS0_Pj.exit.thread.i.i
  %.promoted.i47.i = phi ptr [ %i.dk, %_ZL12parse_uint32PPKcS0_Pj.exit.thread.i.i ], [ %.promoted.i48.i, %bb.ak ], [ %.promoted.i48.i, %bb.an ]
  %storemerge.i.sink.i.i = phi i32 [ %i.dh, %_ZL12parse_uint32PPKcS0_Pj.exit.thread.i.i ], [ 1, %bb.ak ], [ 0, %bb.an ]
  store i32 %storemerge.i.sink.i.i, ptr %i.ac, align 4, !tbaa !324
  br label %bb.ao

_ZL27parse_feature_value_postfixPPKcS0_P12hb_feature_t.exit.i: ; preds = %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %.critedge.i.i.i
  br i1 %not..i.i, label %bb.ao, label %_ZL17parse_one_featurePPKcS0_P12hb_feature_t.exit.thread, !prof !523

bb.ao:                                            ; preds = %_ZL27parse_feature_value_postfixPPKcS0_P12hb_feature_t.exit.i, %_ZL27parse_feature_value_postfixPPKcS0_P12hb_feature_t.exit.thread.i
  %.promoted.i.i = phi ptr [ %.promoted.i47.i, %_ZL27parse_feature_value_postfixPPKcS0_P12hb_feature_t.exit.thread.i ], [ %.promoted.i48.i, %_ZL27parse_feature_value_postfixPPKcS0_P12hb_feature_t.exit.i ] ; 3 uses
  %i.fh = icmp ult ptr %.promoted.i.i, %i.m
  br i1 %i.fh, label %.lr.ph.i.i, label %_ZL17parse_one_featurePPKcS0_P12hb_feature_t.exit

.lr.ph.i.i:                                       ; preds = %bb.ao, %bb.ap
  %i.fi = phi ptr [ %i.fk, %bb.ap ], [ %.promoted.i.i, %bb.ao ] ; 3 uses
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !280
  switch i8 %i.fj, label %_ZL17parse_one_featurePPKcS0_P12hb_feature_t.exit [
    i8 32, label %bb.ap
    i8 13, label %bb.ap
    i8 12, label %bb.ap
    i8 10, label %bb.ap
    i8 9, label %bb.ap
    i8 11, label %bb.ap
  ]

bb.ap:                                            ; preds = %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fi, i64 1 ; 3 uses
  store ptr %i.fk, ptr %i.h, align 8, !tbaa !629
  %exitcond.not.i.i = icmp eq ptr %i.fk, %i.m
  br i1 %exitcond.not.i.i, label %_ZL17parse_one_featurePPKcS0_P12hb_feature_t.exit.thread10, label %.lr.ph.i.i, !llvm.loop !31

_ZL17parse_one_featurePPKcS0_P12hb_feature_t.exit: ; preds = %.lr.ph.i.i, %bb.ao
  %i.fl = phi ptr [ %.promoted.i.i, %bb.ao ], [ %i.fi, %.lr.ph.i.i ]
  %i.fm = icmp eq ptr %i.fl, %i.m
  br i1 %i.fm, label %_ZL17parse_one_featurePPKcS0_P12hb_feature_t.exit.thread10, label %_ZL17parse_one_featurePPKcS0_P12hb_feature_t.exit.thread, !prof !672

_ZL17parse_one_featurePPKcS0_P12hb_feature_t.exit.thread10: ; preds = %bb.ap, %_ZL17parse_one_featurePPKcS0_P12hb_feature_t.exit
  %.not9 = icmp eq ptr %2, null
  br i1 %.not9, label %bb.as, label %bb.aq

bb.aq:                                            ; preds = %_ZL17parse_one_featurePPKcS0_P12hb_feature_t.exit.thread10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !2354
  br label %bb.as

_ZL17parse_one_featurePPKcS0_P12hb_feature_t.exit.thread: ; preds = %bb.z, %_ZL11parse_spacePPKcS0_.exit.i47.i.i, %_ZL26parse_feature_value_prefixPPKcS0_P12hb_feature_t.exit.i, %_ZL27parse_feature_value_postfixPPKcS0_P12hb_feature_t.exit.i, %_ZL17parse_one_featurePPKcS0_P12hb_feature_t.exit
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %_ZL17parse_one_featurePPKcS0_P12hb_feature_t.exit.thread
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  br label %bb.as

bb.as:                                            ; preds = %_ZL17parse_one_featurePPKcS0_P12hb_feature_t.exit.thread, %bb.ar, %_ZL17parse_one_featurePPKcS0_P12hb_feature_t.exit.thread10, %bb.aq
  %.0 = phi i32 [ 1, %_ZL17parse_one_featurePPKcS0_P12hb_feature_t.exit.thread10 ], [ 1, %bb.aq ], [ 0, %bb.ar ], [ 0, %_ZL17parse_one_featurePPKcS0_P12hb_feature_t.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #63
  ret i32 %.0
}

; Function Attrs: mustprogress nofree nounwind uwtable
define void @hb_feature_to_string(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2) local_unnamed_addr #14 {
bb.a:
  %i.a = alloca [128 x i8], align 16              ; 19 uses
  %.not = icmp eq i32 %2, 0
  %.0.sroa.gep = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  br i1 %.not, label %bb.t, label %bb.b, !prof !267

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #63
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !559  ; 2 uses
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i8 45, ptr %i.a, align 16, !tbaa !280
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0.sroa.phi = phi ptr [ %.0.sroa.gep, %bb.c ], [ %i.a, %bb.b ] ; 4 uses
  %.0 = phi i64 [ 5, %bb.c ], [ 4, %bb.b ]        ; 6 uses
  %i.e = load i32, ptr %0, align 4, !tbaa !556    ; 4 uses
  %i.f = lshr i32 %i.e, 24
  %i.g = trunc nuw i32 %i.f to i8
  store i8 %i.g, ptr %.0.sroa.phi, align 1, !tbaa !280
  %i.h = lshr i32 %i.e, 16
  %i.i = trunc i32 %i.h to i8
  %i.j = getelementptr inbounds nuw i8, ptr %.0.sroa.phi, i64 1
  store i8 %i.i, ptr %i.j, align 1, !tbaa !280
  %i.k = lshr i32 %i.e, 8
  %i.l = trunc i32 %i.k to i8
  %i.m = getelementptr inbounds nuw i8, ptr %.0.sroa.phi, i64 2
  store i8 %i.l, ptr %i.m, align 1, !tbaa !280
  %i.n = trunc i32 %i.e to i8
  %i.o = getelementptr inbounds nuw i8, ptr %.0.sroa.phi, i64 3
  store i8 %i.n, ptr %i.o, align 1, !tbaa !280
  %i.p = add nsw i64 %.0, -1                      ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.p
  %i.r = load i8, ptr %i.q, align 1, !tbaa !280
  %i.s = icmp eq i8 %i.r, 32
  br i1 %i.s, label %bb.e, label %.critedge.split.loop.exit70, !llvm.loop !2355

bb.e:                                             ; preds = %bb.d
  %i.t = add nsw i64 %.0, -2                      ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.t
  %i.v = load i8, ptr %i.u, align 1, !tbaa !280
  %i.w = icmp eq i8 %i.v, 32
  br i1 %i.w, label %bb.f, label %.critedge.split.loop.exit70, !llvm.loop !2355

bb.f:                                             ; preds = %bb.e
  %i.x = add nsw i64 %.0, -3                      ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.x
  %i.z = load i8, ptr %i.y, align 1, !tbaa !280
  %i.aa = icmp eq i8 %i.z, 32
  br i1 %i.aa, label %bb.g, label %.critedge.split.loop.exit70, !llvm.loop !2355

bb.g:                                             ; preds = %bb.f
  %i.ab = add nsw i64 %.0, -4                     ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ab
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !280
  %i.ae = icmp eq i8 %i.ad, 32
  br i1 %i.ae, label %bb.h, label %.critedge.split.loop.exit70, !llvm.loop !2355

bb.h:                                             ; preds = %bb.g
  %.not15.3 = icmp eq i64 %i.ab, 0
  br i1 %.not15.3, label %.critedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = getelementptr i8, ptr %i.a, i64 %.0
  %i.ag = getelementptr i8, ptr %i.af, i64 -5
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !280
  %i.ai = icmp eq i8 %i.ah, 32
  br i1 %i.ai, label %.critedge, label %.critedge.split.loop.exit70, !llvm.loop !2355

.critedge.split.loop.exit70:                      ; preds = %bb.i, %bb.g, %bb.f, %bb.e, %bb.d
  %indvars.iv73.lcssa = phi i64 [ %.0, %bb.d ], [ %i.p, %bb.e ], [ %i.t, %bb.f ], [ %i.x, %bb.g ], [ %i.ab, %bb.i ]
  %i.aj = trunc nuw i64 %indvars.iv73.lcssa to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.h, %bb.i, %.critedge.split.loop.exit70
  %storemerge.lcssa = phi i32 [ %i.aj, %.critedge.split.loop.exit70 ], [ 0, %bb.i ], [ 0, %bb.h ] ; 6 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !709 ; 2 uses
  %.not16 = icmp eq i32 %i.al, 0
  br i1 %.not16, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.critedge
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.an = load i32, ptr %i.am, align 4, !tbaa !710 ; 2 uses
  %.not17 = icmp eq i32 %i.an, -1
  br i1 %.not17, label %bb.p, label %.thread

.thread:                                          ; preds = %bb.j
  %i.ao = add nuw nsw i32 %storemerge.lcssa, 1
  %i.ap = zext i32 %storemerge.lcssa to i64
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ap
  store i8 91, ptr %i.aq, align 1, !tbaa !280
  br label %bb.l

bb.k:                                             ; preds = %.critedge
  %i.ar = add nuw nsw i32 %storemerge.lcssa, 1    ; 2 uses
  %i.as = zext i32 %storemerge.lcssa to i64
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.as
  store i8 91, ptr %i.at, align 1, !tbaa !280
  %i.au = zext i32 %i.ar to i64
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.au
  %i.aw = sub nuw i32 127, %storemerge.lcssa
  %i.ax = zext nneg i32 %i.aw to i64
  %i.ay = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.av, i64 noundef %i.ax, ptr noundef nonnull @.str.21, i32 noundef %i.al) #63
  %.sroa.speculated39 = tail call i32 @llvm.smax.i32(i32 %i.ay, i32 0)
  %i.az = add i32 %.sroa.speculated39, %i.ar
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !710
  %.pre63 = load i32, ptr %i.ak, align 4, !tbaa !709
  %i.ba = add i32 %.pre63, 1
  br label %bb.l

bb.l:                                             ; preds = %.thread, %bb.k
  %i.bb = phi i32 [ 1, %.thread ], [ %i.ba, %bb.k ]
  %i.bc = phi i32 [ %i.an, %.thread ], [ %.pre, %bb.k ] ; 3 uses
  %.1 = phi i32 [ %i.ao, %.thread ], [ %i.az, %bb.k ] ; 4 uses
  %.not19 = icmp eq i32 %i.bc, %i.bb
  br i1 %.not19, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bd = add nuw i32 %.1, 1                      ; 3 uses
  %i.be = zext i32 %.1 to i64
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.be
  store i8 58, ptr %i.bf, align 1, !tbaa !280
  %.not20 = icmp eq i32 %i.bc, -1
  br i1 %.not20, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bg = zext i32 %i.bd to i64
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bg
  %i.bi = sub nuw i32 127, %.1
  %i.bj = zext nneg i32 %i.bi to i64
  %i.bk = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.bh, i64 noundef %i.bj, ptr noundef nonnull @.str.21, i32 noundef %i.bc) #63
  %.sroa.speculated33 = tail call i32 @llvm.smax.i32(i32 %i.bk, i32 0)
  %i.bl = add i32 %.sroa.speculated33, %i.bd
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n, %bb.l
  %.2 = phi i32 [ %.1, %bb.l ], [ %i.bd, %bb.m ], [ %i.bl, %bb.n ] ; 2 uses
  %i.bm = add nuw i32 %.2, 1
  %i.bn = zext i32 %.2 to i64
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bn
  store i8 93, ptr %i.bo, align 1, !tbaa !280
  %.pre64 = load i32, ptr %i.b, align 4, !tbaa !559
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.j
  %i.bp = phi i32 [ %i.c, %bb.j ], [ %.pre64, %bb.o ] ; 2 uses
  %.3 = phi i32 [ %storemerge.lcssa, %bb.j ], [ %i.bm, %bb.o ] ; 4 uses
  %i.bq = icmp ugt i32 %i.bp, 1
  br i1 %i.bq, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.br = add nuw i32 %.3, 1                      ; 2 uses
  %i.bs = zext i32 %.3 to i64
  %i.bt = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bs
  store i8 61, ptr %i.bt, align 1, !tbaa !280
  %i.bu = zext i32 %i.br to i64
  %i.bv = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bu
  %i.bw = sub nuw i32 127, %.3
  %i.bx = zext nneg i32 %i.bw to i64
  %i.by = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.bv, i64 noundef %i.bx, ptr noundef nonnull @.str.21, i32 noundef %i.bp) #63
  %.sroa.speculated27 = tail call i32 @llvm.smax.i32(i32 %i.by, i32 0)
  %i.bz = add i32 %.sroa.speculated27, %i.br
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.4 = phi i32 [ %i.bz, %bb.q ], [ %.3, %bb.p ]
  %i.ca = add i32 %2, -1
  %.sroa.speculated = tail call i32 @llvm.umin.i32(i32 %.4, i32 %i.ca) ; 2 uses
  %i.cb = zext i32 %.sroa.speculated to i64       ; 2 uses
  %.not.i24 = icmp eq i32 %.sroa.speculated, 0
  br i1 %.not.i24, label %_ZL9hb_memcpyPvPKvm.exit, label %bb.s, !prof !267

bb.s:                                             ; preds = %bb.r
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr nonnull readonly align 16 %i.a, i64 %i.cb, i1 false), !alias.scope !2359
  br label %_ZL9hb_memcpyPvPKvm.exit

_ZL9hb_memcpyPvPKvm.exit:                         ; preds = %bb.r, %bb.s
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 %i.cb
  store i8 0, ptr %i.cc, align 1, !tbaa !280
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #63
  br label %bb.t

bb.t:                                             ; preds = %bb.a, %_ZL9hb_memcpyPvPKvm.exit
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #23

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 2) i32 @hb_variation_from_string(ptr noundef %0, i32 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #24 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = alloca double, align 8                   ; 5 uses
  %i.c = alloca ptr, align 8                      ; 7 uses
  %3 = alloca %struct.hb_variation_t, align 8     ; 5 uses
  store ptr %0, ptr %i.c, align 8, !tbaa !629
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #63
  %i.d = icmp slt i32 %1, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #68
  %i.f = trunc i64 %i.e to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.06 = phi i32 [ %i.f, %bb.b ], [ %1, %bb.a ]
  %i.g = sext i32 %.06 to i64                     ; 2 uses
  %i.h = getelementptr inbounds i8, ptr %0, i64 %i.g ; 8 uses
  %i.i = call fastcc noundef zeroext i1 @_ZL9parse_tagPPKcS0_Pj(ptr noundef nonnull %i.c, ptr noundef readnone %i.h, ptr noundef nonnull %3)
  br i1 %i.i, label %bb.d, label %_ZL19parse_one_variationPPKcS0_P14hb_variation_t.exit.thread, !prof !523

bb.d:                                             ; preds = %bb.c
  %.promoted.i.i.i.i = load ptr, ptr %i.c, align 8, !tbaa !629 ; 5 uses
  %i.j = icmp ult ptr %.promoted.i.i.i.i, %i.h
  br i1 %i.j, label %.lr.ph.i.i.i.i.preheader, label %_ZL11parse_spacePPKcS0_.exit.i.i.i

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.d
  %.promoted.i.i.i.i19 = ptrtoaddr ptr %.promoted.i.i.i.i to i64
  %i.k = add i64 %i.a, %i.g
  %i.l = sub i64 %i.k, %.promoted.i.i.i.i19
  %scevgep = getelementptr i8, ptr %.promoted.i.i.i.i, i64 %i.l
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader, %bb.e
  %i.m = phi ptr [ %i.o, %bb.e ], [ %.promoted.i.i.i.i, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  %i.n = load i8, ptr %i.m, align 1, !tbaa !280
  switch i8 %i.n, label %_ZL11parse_spacePPKcS0_.exit.i.i.i.loopexit [
    i8 32, label %bb.e
    i8 13, label %bb.e
    i8 12, label %bb.e
    i8 10, label %bb.e
    i8 9, label %bb.e
    i8 11, label %bb.e
  ]

bb.e:                                             ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 1 ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq ptr %i.o, %i.h
  br i1 %exitcond.not.i.i.i.i, label %_ZL11parse_spacePPKcS0_.exit.i.i.i.loopexit, label %.lr.ph.i.i.i.i, !llvm.loop !31

_ZL11parse_spacePPKcS0_.exit.i.i.i.loopexit:      ; preds = %.lr.ph.i.i.i.i, %bb.e
  %i.p = phi ptr [ %scevgep, %bb.e ], [ %i.m, %.lr.ph.i.i.i.i ] ; 2 uses
  store ptr %i.p, ptr %i.c, align 8
  br label %_ZL11parse_spacePPKcS0_.exit.i.i.i

_ZL11parse_spacePPKcS0_.exit.i.i.i:               ; preds = %_ZL11parse_spacePPKcS0_.exit.i.i.i.loopexit, %bb.d
  %i.q = phi ptr [ %.promoted.i.i.i.i, %bb.d ], [ %i.p, %_ZL11parse_spacePPKcS0_.exit.i.i.i.loopexit ] ; 3 uses
  %i.r = icmp eq ptr %i.q, %i.h
  br i1 %i.r, label %_ZL10parse_charPPKcS0_c.exit.i.i, label %bb.f

bb.f:                                             ; preds = %_ZL11parse_spacePPKcS0_.exit.i.i.i
  %i.s = load i8, ptr %i.q, align 1, !tbaa !280
  %.not.i.i.i = icmp eq i8 %i.s, 61
  br i1 %.not.i.i.i, label %bb.g, label %_ZL10parse_charPPKcS0_c.exit.i.i

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  store ptr %i.t, ptr %i.c, align 8, !tbaa !629
  br label %_ZL10parse_charPPKcS0_c.exit.i.i

_ZL10parse_charPPKcS0_c.exit.i.i:                 ; preds = %bb.g, %bb.f, %_ZL11parse_spacePPKcS0_.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #63
  %i.u = call noundef zeroext i1 @_Z15hb_parse_doublePPKcS0_Pdb(ptr noundef nonnull %i.c, ptr noundef readnone %i.h, ptr noundef nonnull %i.b, i1 noundef zeroext false)
  br i1 %i.u, label %bb.h, label %_ZL21parse_variation_valuePPKcS0_P14hb_variation_t.exit.i, !prof !268

_ZL21parse_variation_valuePPKcS0_P14hb_variation_t.exit.i: ; preds = %_ZL10parse_charPPKcS0_c.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #63
  br label %_ZL19parse_one_variationPPKcS0_P14hb_variation_t.exit.thread

bb.h:                                             ; preds = %_ZL10parse_charPPKcS0_c.exit.i.i
  %i.v = load double, ptr %i.b, align 8, !tbaa !712
  %i.w = fptrunc double %i.v to float
end_hunk_0
