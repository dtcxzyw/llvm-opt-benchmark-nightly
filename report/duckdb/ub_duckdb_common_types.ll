Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_common_types?download=true
inline.NumInlined: 41204
inline.NumDeleted: 6315
loop-unroll.NumCompletelyUnrolled: 156
loop-unroll.NumRuntimeUnrolled: 69
loop-unroll.NumUnrolled: 229
begin_hunk_0_@_ZN6duckdb8Interval14GetNanosecondsERKNS_10interval_tE:bb.a
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #46
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.f = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.g = load ptr, ptr %1, align 8, !tbaa !840    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.g) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #46
  br i1 %.0, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #46
  br i1 %.0, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn10 = phi { ptr, i32 } [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.d) #46
  br label %bb.g

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn9 = phi { ptr, i32 } [ %.pn10, %bb.f ], [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46
  resume { ptr, i32 } %.pn9

bb.h:                                             ; preds = %bb.a
  %i.j = load i64, ptr %i.a, align 8, !tbaa !850
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46
  ret i64 %i.j

bb.i:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define { i64, i64 } @_ZN6duckdb8Interval6GetAgeENS_19TimestampComponentsES1_b(ptr nofree noundef readonly byval(%"struct.duckdb::TimestampComponents") align 8 captures(none) %0, ptr nofree noundef readonly byval(%"struct.duckdb::TimestampComponents") align 8 captures(none) %1, i1 noundef zeroext %2) local_unnamed_addr #10 align 2 !guid !2733 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !2735
  %.fr81 = freeze i32 %i.a                        ; 4 uses
  %i.b = load i32, ptr %1, align 8, !tbaa !2735
  %.fr80 = freeze i32 %i.b                        ; 4 uses
  %i.c = sub nsw i32 %.fr81, %.fr80               ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.f = load <4 x i32>, ptr %i.d, align 4, !tbaa !172
  %i.g = load i32, ptr %i.d, align 4, !tbaa !2736
  %i.h = load <4 x i32>, ptr %i.e, align 4, !tbaa !172
  %i.i = load i32, ptr %i.e, align 4, !tbaa !2736
  %i.j = sub nsw <4 x i32> %i.f, %i.h             ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.l = load i32, ptr %i.k, align 4, !tbaa !2737
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.n = load i32, ptr %i.m, align 4, !tbaa !2737
  %i.o = sub nsw i32 %i.l, %i.n                   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load i32, ptr %i.p, align 8, !tbaa !2738
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.s = load i32, ptr %i.r, align 8, !tbaa !2738
  %i.t = sub nsw i32 %i.q, %i.s                   ; 2 uses
  br i1 %2, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.u = sub nsw i32 0, %i.c
  %i.v = sub nsw <4 x i32> zeroinitializer, %i.j
  %i.w = sub nsw i32 0, %i.o
  %i.x = sub nsw i32 0, %i.t
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.049 = phi i32 [ %i.w, %bb.b ], [ %i.o, %bb.a ] ; 2 uses
  %.046 = phi i32 [ %i.x, %bb.b ], [ %i.t, %bb.a ] ; 5 uses
  %.0 = phi i32 [ %i.u, %bb.b ], [ %i.c, %bb.a ]  ; 2 uses
  %i.y = phi <4 x i32> [ %i.v, %bb.b ], [ %i.j, %bb.a ] ; 10 uses
  %i.z = icmp slt i32 %.046, 0
  br i1 %i.z, label %.lr.ph.preheader, label %.preheader85

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.aa = tail call i32 @llvm.umax.i32(i32 %.046, i32 -1000000)
  %i.ab = add nsw i32 %i.aa, 999999
  %i.ac = sub i32 %i.ab, %.046
  %i.ad = udiv i32 %i.ac, 1000000                 ; 2 uses
  %i.ae = mul nuw i32 %i.ad, 1000000
  %i.af = add i32 %.046, %i.ae
  %i.ag = add i32 %i.af, 1000000
  %i.ah = xor i32 %i.ad, -1
  %i.ai = add i32 %.049, %i.ah
  br label %.preheader85

.preheader85:                                     ; preds = %.lr.ph.preheader, %bb.c
  %.150.lcssa = phi i32 [ %.049, %bb.c ], [ %i.ai, %.lr.ph.preheader ] ; 5 uses
  %.147.lcssa = phi i32 [ %.046, %bb.c ], [ %i.ag, %.lr.ph.preheader ] ; 2 uses
  %i.aj = icmp slt i32 %.150.lcssa, 0
  %i.ak = extractelement <4 x i32> %i.y, i64 3    ; 2 uses
  br i1 %i.aj, label %.lr.ph91.preheader, label %.preheader84

.lr.ph91.preheader:                               ; preds = %.preheader85
  %i.al = tail call i32 @llvm.umax.i32(i32 %.150.lcssa, i32 -60)
  %i.am = add nsw i32 %i.al, 59
  %i.an = sub i32 %i.am, %.150.lcssa
  %i.ao = udiv i32 %i.an, 60                      ; 2 uses
  %i.ap = mul nuw i32 %i.ao, 60
  %i.aq = add i32 %.150.lcssa, %i.ap
  %i.ar = add i32 %i.aq, 60
  %i.as = xor i32 %i.ao, -1
  %i.at = add i32 %i.ak, %i.as
  br label %.preheader84

.preheader84:                                     ; preds = %.lr.ph91.preheader, %.preheader85
  %.153.lcssa = phi i32 [ %i.ak, %.preheader85 ], [ %i.at, %.lr.ph91.preheader ] ; 5 uses
  %.251.lcssa = phi i32 [ %.150.lcssa, %.preheader85 ], [ %i.ar, %.lr.ph91.preheader ] ; 2 uses
  %i.au = icmp slt i32 %.153.lcssa, 0
  %i.av = extractelement <4 x i32> %i.y, i64 2    ; 2 uses
  br i1 %i.au, label %.lr.ph96.preheader, label %.preheader83

.lr.ph96.preheader:                               ; preds = %.preheader84
  %i.aw = tail call i32 @llvm.umax.i32(i32 %.153.lcssa, i32 -60)
  %i.ax = add nsw i32 %i.aw, 59
  %i.ay = sub i32 %i.ax, %.153.lcssa
  %i.az = udiv i32 %i.ay, 60                      ; 2 uses
  %i.ba = mul nuw i32 %i.az, 60
  %i.bb = add i32 %.153.lcssa, %i.ba
  %i.bc = add i32 %i.bb, 60
  %i.bd = xor i32 %i.az, -1
  %i.be = add i32 %i.av, %i.bd
  br label %.preheader83

.preheader83:                                     ; preds = %.lr.ph96.preheader, %.preheader84
  %.157.lcssa = phi i32 [ %i.av, %.preheader84 ], [ %i.be, %.lr.ph96.preheader ] ; 5 uses
  %.254.lcssa = phi i32 [ %.153.lcssa, %.preheader84 ], [ %i.bc, %.lr.ph96.preheader ] ; 2 uses
  %i.bf = icmp slt i32 %.157.lcssa, 0
  %i.bg = extractelement <4 x i32> %i.y, i64 1    ; 2 uses
  br i1 %i.bf, label %.lr.ph101.preheader, label %.preheader82

.lr.ph101.preheader:                              ; preds = %.preheader83
  %i.bh = tail call i32 @llvm.umax.i32(i32 %.157.lcssa, i32 -24)
  %i.bi = add nsw i32 %i.bh, 23
  %i.bj = sub i32 %i.bi, %.157.lcssa
  %i.bk = udiv i32 %i.bj, 24                      ; 2 uses
  %i.bl = mul nuw i32 %i.bk, 24
  %i.bm = add i32 %.157.lcssa, %i.bl
  %i.bn = add i32 %i.bm, 24
  %i.bo = xor i32 %i.bk, -1
  %i.bp = add i32 %i.bg, %i.bo
  br label %.preheader82

.preheader82:                                     ; preds = %.lr.ph101.preheader, %.preheader83
  %.161.lcssa = phi i32 [ %i.bg, %.preheader83 ], [ %i.bp, %.lr.ph101.preheader ] ; 20 uses
  %.258.lcssa = phi i32 [ %.157.lcssa, %.preheader83 ], [ %i.bn, %.lr.ph101.preheader ] ; 2 uses
  %i.bq = icmp slt i32 %.161.lcssa, 0
  %i.br = extractelement <4 x i32> %i.y, i64 0    ; 7 uses
  br i1 %i.bq, label %.lr.ph106, label %.preheader

.lr.ph106:                                        ; preds = %.preheader82
  %i.bs = sext i32 %i.i to i64                    ; 3 uses
  %i.bt = getelementptr inbounds [4 x i8], ptr @_ZN6duckdb4Date11NORMAL_DAYSE, i64 %i.bs
  %i.bu = srem i32 %.fr80, 100
  %.not.i70 = icmp eq i32 %i.bu, 0
  %i.bv = getelementptr inbounds [4 x i8], ptr @_ZN6duckdb4Date9LEAP_DAYSE, i64 %i.bs
  %i.bw = srem i32 %.fr80, 400
  %i.bx = icmp eq i32 %i.bw, 0
  %spec.select79.v = select i1 %i.bx, ptr @_ZN6duckdb4Date9LEAP_DAYSE, ptr @_ZN6duckdb4Date11NORMAL_DAYSE
  %spec.select79 = getelementptr inbounds [4 x i8], ptr %spec.select79.v, i64 %i.bs
  %i.by = sext i32 %i.g to i64                    ; 3 uses
  %i.bz = getelementptr inbounds [4 x i8], ptr @_ZN6duckdb4Date11NORMAL_DAYSE, i64 %i.by
  %i.ca = srem i32 %.fr81, 100
  %.not.i = icmp eq i32 %i.ca, 0
  %i.cb = getelementptr inbounds [4 x i8], ptr @_ZN6duckdb4Date9LEAP_DAYSE, i64 %i.by
  %i.cc = srem i32 %.fr81, 400
  %i.cd = icmp eq i32 %i.cc, 0
  %spec.select.v = select i1 %i.cd, ptr @_ZN6duckdb4Date9LEAP_DAYSE, ptr @_ZN6duckdb4Date11NORMAL_DAYSE
  %spec.select = getelementptr inbounds [4 x i8], ptr %spec.select.v, i64 %i.by
  br i1 %2, label %.lr.ph106.split.us, label %.lr.ph106.split

.lr.ph106.split.us:                               ; preds = %.lr.ph106
  %i.ce = and i32 %.fr81, 3
  %i.cf = icmp eq i32 %i.ce, 0
  br i1 %i.cf, label %.lr.ph106.split.us.split.us, label %.lr.ph106.split.us.split

.lr.ph106.split.us.split.us:                      ; preds = %.lr.ph106.split.us
  br i1 %.not.i, label %.lr.ph106.split.us.split.us.split.us, label %.lr.ph106.split.us.split.us.split

.lr.ph106.split.us.split.us.split.us:             ; preds = %.lr.ph106.split.us.split.us
  %.pn.us.us.us = load i32, ptr %spec.select, align 4, !tbaa !172 ; 4 uses
  %i.cg = add nsw i32 %.161.lcssa, %.pn.us.us.us  ; 3 uses
  %i.ch = tail call i32 @llvm.smax.i32(i32 %i.cg, i32 0)
  %.lobit233 = lshr i32 %i.cg, 31                 ; 2 uses
  %i.ci = add i32 %.lobit233, %i.cg
  %i.cj = sub i32 %i.ch, %i.ci
  %3 = tail call i32 @llvm.umax.i32(i32 %.pn.us.us.us, i32 1)
  %i.ck = udiv i32 %i.cj, %3
  %i.cl = add i32 %.lobit233, %i.ck
  %i.cm = add i32 %i.cl, 1                        ; 3 uses
  %min.iters.check216 = icmp ult i32 %i.cm, 8
  br i1 %min.iters.check216, label %_ZN6duckdb4Date10IsLeapYearEi.exit.us.us.us.preheader, label %vector.ph217

vector.ph217:                                     ; preds = %.lr.ph106.split.us.split.us.split.us
  %n.vec218 = and i32 %i.cm, -8                   ; 3 uses
  %i.cn = mul i32 %n.vec218, %.pn.us.us.us
  %i.co = add i32 %.161.lcssa, %i.cn              ; 2 uses
  %i.cp = shufflevector <4 x i32> %i.y, <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  br label %vector.body219

vector.body219:                                   ; preds = %vector.body219, %vector.ph217
  %index220 = phi i32 [ 0, %vector.ph217 ], [ %index.next223, %vector.body219 ]
  %vec.phi221 = phi <4 x i32> [ %i.cp, %vector.ph217 ], [ %i.cq, %vector.body219 ]
  %vec.phi222 = phi <4 x i32> [ zeroinitializer, %vector.ph217 ], [ %i.cr, %vector.body219 ]
  %i.cq = add <4 x i32> %vec.phi221, splat (i32 -1) ; 2 uses
  %i.cr = add <4 x i32> %vec.phi222, splat (i32 -1) ; 2 uses
  %index.next223 = add nuw i32 %index220, 8       ; 2 uses
  %i.cs = icmp eq i32 %index.next223, %n.vec218
  br i1 %i.cs, label %middle.block224, label %vector.body219, !llvm.loop !2721

middle.block224:                                  ; preds = %vector.body219
  %bin.rdx225 = add <4 x i32> %i.cr, %i.cq
  %i.ct = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx225) ; 2 uses
  %cmp.n226 = icmp eq i32 %i.cm, %n.vec218
  br i1 %cmp.n226, label %.preheader, label %_ZN6duckdb4Date10IsLeapYearEi.exit.us.us.us.preheader

_ZN6duckdb4Date10IsLeapYearEi.exit.us.us.us.preheader: ; preds = %.lr.ph106.split.us.split.us.split.us, %middle.block224
  %.262105.us.us.us.ph = phi i32 [ %.161.lcssa, %.lr.ph106.split.us.split.us.split.us ], [ %i.co, %middle.block224 ]
  %.165104.us.us.us.ph = phi i32 [ %i.br, %.lr.ph106.split.us.split.us.split.us ], [ %i.ct, %middle.block224 ]
  br label %_ZN6duckdb4Date10IsLeapYearEi.exit.us.us.us

_ZN6duckdb4Date10IsLeapYearEi.exit.us.us.us:      ; preds = %_ZN6duckdb4Date10IsLeapYearEi.exit.us.us.us.preheader, %_ZN6duckdb4Date10IsLeapYearEi.exit.us.us.us
  %.262105.us.us.us = phi i32 [ %.363.us.us.us, %_ZN6duckdb4Date10IsLeapYearEi.exit.us.us.us ], [ %.262105.us.us.us.ph, %_ZN6duckdb4Date10IsLeapYearEi.exit.us.us.us.preheader ]
  %.165104.us.us.us = phi i32 [ %.266.us.us.us, %_ZN6duckdb4Date10IsLeapYearEi.exit.us.us.us ], [ %.165104.us.us.us.ph, %_ZN6duckdb4Date10IsLeapYearEi.exit.us.us.us.preheader ]
  %.363.us.us.us = add nsw i32 %.pn.us.us.us, %.262105.us.us.us ; 3 uses
  %.266.us.us.us = add nsw i32 %.165104.us.us.us, -1 ; 2 uses
  %i.cu = icmp slt i32 %.363.us.us.us, 0
  br i1 %i.cu, label %_ZN6duckdb4Date10IsLeapYearEi.exit.us.us.us, label %.preheader, !llvm.loop !2722

.lr.ph106.split.us.split.us.split:                ; preds = %.lr.ph106.split.us.split.us
  %.pn.us.us = load i32, ptr %i.cb, align 4, !tbaa !172 ; 4 uses
  %i.cv = add nsw i32 %.161.lcssa, %.pn.us.us     ; 3 uses
  %i.cw = tail call i32 @llvm.smax.i32(i32 %i.cv, i32 0)
  %.lobit232 = lshr i32 %i.cv, 31                 ; 2 uses
  %i.cx = add i32 %.lobit232, %i.cv
  %i.cy = sub i32 %i.cw, %i.cx
  %4 = tail call i32 @llvm.umax.i32(i32 %.pn.us.us, i32 1)
  %i.cz = udiv i32 %i.cy, %4
  %i.da = add i32 %.lobit232, %i.cz
  %i.db = add i32 %i.da, 1                        ; 3 uses
  %min.iters.check202 = icmp ult i32 %i.db, 8
  br i1 %min.iters.check202, label %_ZN6duckdb4Date10IsLeapYearEi.exit.thread.us.us.preheader, label %vector.ph203

vector.ph203:                                     ; preds = %.lr.ph106.split.us.split.us.split
  %n.vec204 = and i32 %i.db, -8                   ; 3 uses
  %i.dc = mul i32 %n.vec204, %.pn.us.us
  %i.dd = add i32 %.161.lcssa, %i.dc              ; 2 uses
  %i.de = shufflevector <4 x i32> %i.y, <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  br label %vector.body205

vector.body205:                                   ; preds = %vector.body205, %vector.ph203
  %index206 = phi i32 [ 0, %vector.ph203 ], [ %index.next209, %vector.body205 ]
  %vec.phi207 = phi <4 x i32> [ %i.de, %vector.ph203 ], [ %i.df, %vector.body205 ]
  %vec.phi208 = phi <4 x i32> [ zeroinitializer, %vector.ph203 ], [ %i.dg, %vector.body205 ]
  %i.df = add <4 x i32> %vec.phi207, splat (i32 -1) ; 2 uses
  %i.dg = add <4 x i32> %vec.phi208, splat (i32 -1) ; 2 uses
  %index.next209 = add nuw i32 %index206, 8       ; 2 uses
  %i.dh = icmp eq i32 %index.next209, %n.vec204
  br i1 %i.dh, label %middle.block210, label %vector.body205, !llvm.loop !2723

middle.block210:                                  ; preds = %vector.body205
  %bin.rdx211 = add <4 x i32> %i.dg, %i.df
  %i.di = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx211) ; 2 uses
  %cmp.n212 = icmp eq i32 %i.db, %n.vec204
  br i1 %cmp.n212, label %.preheader, label %_ZN6duckdb4Date10IsLeapYearEi.exit.thread.us.us.preheader

_ZN6duckdb4Date10IsLeapYearEi.exit.thread.us.us.preheader: ; preds = %.lr.ph106.split.us.split.us.split, %middle.block210
  %.262105.us.us.ph = phi i32 [ %.161.lcssa, %.lr.ph106.split.us.split.us.split ], [ %i.dd, %middle.block210 ]
  %.165104.us.us.ph = phi i32 [ %i.br, %.lr.ph106.split.us.split.us.split ], [ %i.di, %middle.block210 ]
  br label %_ZN6duckdb4Date10IsLeapYearEi.exit.thread.us.us

_ZN6duckdb4Date10IsLeapYearEi.exit.thread.us.us:  ; preds = %_ZN6duckdb4Date10IsLeapYearEi.exit.thread.us.us.preheader, %_ZN6duckdb4Date10IsLeapYearEi.exit.thread.us.us
  %.262105.us.us = phi i32 [ %.363.us.us, %_ZN6duckdb4Date10IsLeapYearEi.exit.thread.us.us ], [ %.262105.us.us.ph, %_ZN6duckdb4Date10IsLeapYearEi.exit.thread.us.us.preheader ]
  %.165104.us.us = phi i32 [ %.266.us.us, %_ZN6duckdb4Date10IsLeapYearEi.exit.thread.us.us ], [ %.165104.us.us.ph, %_ZN6duckdb4Date10IsLeapYearEi.exit.thread.us.us.preheader ]
  %.363.us.us = add nsw i32 %.pn.us.us, %.262105.us.us ; 3 uses
  %.266.us.us = add nsw i32 %.165104.us.us, -1    ; 2 uses
  %i.dj = icmp slt i32 %.363.us.us, 0
  br i1 %i.dj, label %_ZN6duckdb4Date10IsLeapYearEi.exit.thread.us.us, label %.preheader, !llvm.loop !2724

.lr.ph106.split.us.split:                         ; preds = %.lr.ph106.split.us
  %.pn.us = load i32, ptr %i.bz, align 4, !tbaa !172 ; 4 uses
  %i.dk = add nsw i32 %.161.lcssa, %.pn.us        ; 3 uses
  %i.dl = tail call i32 @llvm.smax.i32(i32 %i.dk, i32 0)
  %.lobit231 = lshr i32 %i.dk, 31                 ; 2 uses
  %i.dm = add i32 %.lobit231, %i.dk
  %i.dn = sub i32 %i.dl, %i.dm
  %5 = tail call i32 @llvm.umax.i32(i32 %.pn.us, i32 1)
  %i.do = udiv i32 %i.dn, %5
  %i.dp = add i32 %.lobit231, %i.do
  %i.dq = add i32 %i.dp, 1                        ; 3 uses
  %min.iters.check188 = icmp ult i32 %i.dq, 8
  br i1 %min.iters.check188, label %_ZN6duckdb4Date10IsLeapYearEi.exit.thread73.us.preheader, label %vector.ph189

vector.ph189:                                     ; preds = %.lr.ph106.split.us.split
  %n.vec190 = and i32 %i.dq, -8                   ; 3 uses
  %i.dr = mul i32 %n.vec190, %.pn.us
  %i.ds = add i32 %.161.lcssa, %i.dr              ; 2 uses
  %i.dt = shufflevector <4 x i32> %i.y, <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  br label %vector.body191

vector.body191:                                   ; preds = %vector.body191, %vector.ph189
  %index192 = phi i32 [ 0, %vector.ph189 ], [ %index.next195, %vector.body191 ]
  %vec.phi193 = phi <4 x i32> [ %i.dt, %vector.ph189 ], [ %i.du, %vector.body191 ]
  %vec.phi194 = phi <4 x i32> [ zeroinitializer, %vector.ph189 ], [ %i.dv, %vector.body191 ]
  %i.du = add <4 x i32> %vec.phi193, splat (i32 -1) ; 2 uses
  %i.dv = add <4 x i32> %vec.phi194, splat (i32 -1) ; 2 uses
  %index.next195 = add nuw i32 %index192, 8       ; 2 uses
  %i.dw = icmp eq i32 %index.next195, %n.vec190
  br i1 %i.dw, label %middle.block196, label %vector.body191, !llvm.loop !2725

middle.block196:                                  ; preds = %vector.body191
  %bin.rdx197 = add <4 x i32> %i.dv, %i.du
  %i.dx = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx197) ; 2 uses
  %cmp.n198 = icmp eq i32 %i.dq, %n.vec190
  br i1 %cmp.n198, label %.preheader, label %_ZN6duckdb4Date10IsLeapYearEi.exit.thread73.us.preheader

_ZN6duckdb4Date10IsLeapYearEi.exit.thread73.us.preheader: ; preds = %.lr.ph106.split.us.split, %middle.block196
  %.262105.us.ph = phi i32 [ %.161.lcssa, %.lr.ph106.split.us.split ], [ %i.ds, %middle.block196 ]
  %.165104.us.ph = phi i32 [ %i.br, %.lr.ph106.split.us.split ], [ %i.dx, %middle.block196 ]
  br label %_ZN6duckdb4Date10IsLeapYearEi.exit.thread73.us

_ZN6duckdb4Date10IsLeapYearEi.exit.thread73.us:   ; preds = %_ZN6duckdb4Date10IsLeapYearEi.exit.thread73.us.preheader, %_ZN6duckdb4Date10IsLeapYearEi.exit.thread73.us
  %.262105.us = phi i32 [ %.363.us, %_ZN6duckdb4Date10IsLeapYearEi.exit.thread73.us ], [ %.262105.us.ph, %_ZN6duckdb4Date10IsLeapYearEi.exit.thread73.us.preheader ]
  %.165104.us = phi i32 [ %.266.us, %_ZN6duckdb4Date10IsLeapYearEi.exit.thread73.us ], [ %.165104.us.ph, %_ZN6duckdb4Date10IsLeapYearEi.exit.thread73.us.preheader ]
  %.363.us = add nsw i32 %.pn.us, %.262105.us     ; 3 uses
  %.266.us = add nsw i32 %.165104.us, -1          ; 2 uses
  %i.dy = icmp slt i32 %.363.us, 0
  br i1 %i.dy, label %_ZN6duckdb4Date10IsLeapYearEi.exit.thread73.us, label %.preheader, !llvm.loop !2726

.lr.ph106.split:                                  ; preds = %.lr.ph106
  %i.dz = and i32 %.fr80, 3
  %i.ea = icmp eq i32 %i.dz, 0
  br i1 %i.ea, label %.lr.ph106.split.split.us, label %.lr.ph106.split.split

.lr.ph106.split.split.us:                         ; preds = %.lr.ph106.split
  br i1 %.not.i70, label %.lr.ph106.split.split.us.split.us, label %.lr.ph106.split.split.us.split

.lr.ph106.split.split.us.split.us:                ; preds = %.lr.ph106.split.split.us
  %.pn.us113.us = load i32, ptr %spec.select79, align 4, !tbaa !172 ; 4 uses
  %i.eb = add nsw i32 %.161.lcssa, %.pn.us113.us  ; 3 uses
  %i.ec = tail call i32 @llvm.smax.i32(i32 %i.eb, i32 0)
  %.lobit230 = lshr i32 %i.eb, 31                 ; 2 uses
  %i.ed = add i32 %.lobit230, %i.eb
  %i.ee = sub i32 %i.ec, %i.ed
  %6 = tail call i32 @llvm.umax.i32(i32 %.pn.us113.us, i32 1)
  %i.ef = udiv i32 %i.ee, %6
  %i.eg = add i32 %.lobit230, %i.ef
  %i.eh = add i32 %i.eg, 1                        ; 3 uses
  %min.iters.check174 = icmp ult i32 %i.eh, 8
  br i1 %min.iters.check174, label %_ZN6duckdb4Date10IsLeapYearEi.exit71.us.us.preheader, label %vector.ph175

vector.ph175:                                     ; preds = %.lr.ph106.split.split.us.split.us
  %n.vec176 = and i32 %i.eh, -8                   ; 3 uses
  %i.ei = mul i32 %n.vec176, %.pn.us113.us
  %i.ej = add i32 %.161.lcssa, %i.ei              ; 2 uses
  %i.ek = shufflevector <4 x i32> %i.y, <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  br label %vector.body177

vector.body177:                                   ; preds = %vector.body177, %vector.ph175
  %index178 = phi i32 [ 0, %vector.ph175 ], [ %index.next181, %vector.body177 ]
  %vec.phi179 = phi <4 x i32> [ %i.ek, %vector.ph175 ], [ %i.el, %vector.body177 ]
  %vec.phi180 = phi <4 x i32> [ zeroinitializer, %vector.ph175 ], [ %i.em, %vector.body177 ]
  %i.el = add <4 x i32> %vec.phi179, splat (i32 -1) ; 2 uses
  %i.em = add <4 x i32> %vec.phi180, splat (i32 -1) ; 2 uses
  %index.next181 = add nuw i32 %index178, 8       ; 2 uses
  %i.en = icmp eq i32 %index.next181, %n.vec176
  br i1 %i.en, label %middle.block182, label %vector.body177, !llvm.loop !2727

middle.block182:                                  ; preds = %vector.body177
  %bin.rdx183 = add <4 x i32> %i.em, %i.el
  %i.eo = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx183) ; 2 uses
  %cmp.n184 = icmp eq i32 %i.eh, %n.vec176
  br i1 %cmp.n184, label %.preheader, label %_ZN6duckdb4Date10IsLeapYearEi.exit71.us.us.preheader

_ZN6duckdb4Date10IsLeapYearEi.exit71.us.us.preheader: ; preds = %.lr.ph106.split.split.us.split.us, %middle.block182
  %.262105.us110.us.ph = phi i32 [ %.161.lcssa, %.lr.ph106.split.split.us.split.us ], [ %i.ej, %middle.block182 ]
  %.165104.us111.us.ph = phi i32 [ %i.br, %.lr.ph106.split.split.us.split.us ], [ %i.eo, %middle.block182 ]
  br label %_ZN6duckdb4Date10IsLeapYearEi.exit71.us.us

_ZN6duckdb4Date10IsLeapYearEi.exit71.us.us:       ; preds = %_ZN6duckdb4Date10IsLeapYearEi.exit71.us.us.preheader, %_ZN6duckdb4Date10IsLeapYearEi.exit71.us.us
  %.262105.us110.us = phi i32 [ %.363.us114.us, %_ZN6duckdb4Date10IsLeapYearEi.exit71.us.us ], [ %.262105.us110.us.ph, %_ZN6duckdb4Date10IsLeapYearEi.exit71.us.us.preheader ]
  %.165104.us111.us = phi i32 [ %.266.us115.us, %_ZN6duckdb4Date10IsLeapYearEi.exit71.us.us ], [ %.165104.us111.us.ph, %_ZN6duckdb4Date10IsLeapYearEi.exit71.us.us.preheader ]
  %.363.us114.us = add nsw i32 %.pn.us113.us, %.262105.us110.us ; 3 uses
  %.266.us115.us = add nsw i32 %.165104.us111.us, -1 ; 2 uses
  %i.ep = icmp slt i32 %.363.us114.us, 0
  br i1 %i.ep, label %_ZN6duckdb4Date10IsLeapYearEi.exit71.us.us, label %.preheader, !llvm.loop !2728

.lr.ph106.split.split.us.split:                   ; preds = %.lr.ph106.split.split.us
  %.pn.us113 = load i32, ptr %i.bv, align 4, !tbaa !172 ; 4 uses
  %i.eq = add nsw i32 %.161.lcssa, %.pn.us113     ; 3 uses
  %i.er = tail call i32 @llvm.smax.i32(i32 %i.eq, i32 0)
  %.lobit229 = lshr i32 %i.eq, 31                 ; 2 uses
  %i.es = add i32 %.lobit229, %i.eq
  %i.et = sub i32 %i.er, %i.es
  %7 = tail call i32 @llvm.umax.i32(i32 %.pn.us113, i32 1)
  %i.eu = udiv i32 %i.et, %7
  %i.ev = add i32 %.lobit229, %i.eu
  %i.ew = add i32 %i.ev, 1                        ; 3 uses
  %min.iters.check160 = icmp ult i32 %i.ew, 8
  br i1 %min.iters.check160, label %_ZN6duckdb4Date10IsLeapYearEi.exit71.thread.us.preheader, label %vector.ph161

vector.ph161:                                     ; preds = %.lr.ph106.split.split.us.split
  %n.vec162 = and i32 %i.ew, -8                   ; 3 uses
  %i.ex = mul i32 %n.vec162, %.pn.us113
  %i.ey = add i32 %.161.lcssa, %i.ex              ; 2 uses
  %i.ez = shufflevector <4 x i32> %i.y, <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  br label %vector.body163

vector.body163:                                   ; preds = %vector.body163, %vector.ph161
  %index164 = phi i32 [ 0, %vector.ph161 ], [ %index.next167, %vector.body163 ]
  %vec.phi165 = phi <4 x i32> [ %i.ez, %vector.ph161 ], [ %i.fa, %vector.body163 ]
  %vec.phi166 = phi <4 x i32> [ zeroinitializer, %vector.ph161 ], [ %i.fb, %vector.body163 ]
  %i.fa = add <4 x i32> %vec.phi165, splat (i32 -1) ; 2 uses
  %i.fb = add <4 x i32> %vec.phi166, splat (i32 -1) ; 2 uses
  %index.next167 = add nuw i32 %index164, 8       ; 2 uses
  %i.fc = icmp eq i32 %index.next167, %n.vec162
  br i1 %i.fc, label %middle.block168, label %vector.body163, !llvm.loop !2729

middle.block168:                                  ; preds = %vector.body163
  %bin.rdx169 = add <4 x i32> %i.fb, %i.fa
  %i.fd = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx169) ; 2 uses
  %cmp.n170 = icmp eq i32 %i.ew, %n.vec162
  br i1 %cmp.n170, label %.preheader, label %_ZN6duckdb4Date10IsLeapYearEi.exit71.thread.us.preheader

_ZN6duckdb4Date10IsLeapYearEi.exit71.thread.us.preheader: ; preds = %.lr.ph106.split.split.us.split, %middle.block168
  %.262105.us110.ph = phi i32 [ %.161.lcssa, %.lr.ph106.split.split.us.split ], [ %i.ey, %middle.block168 ]
  %.165104.us111.ph = phi i32 [ %i.br, %.lr.ph106.split.split.us.split ], [ %i.fd, %middle.block168 ]
  br label %_ZN6duckdb4Date10IsLeapYearEi.exit71.thread.us

_ZN6duckdb4Date10IsLeapYearEi.exit71.thread.us:   ; preds = %_ZN6duckdb4Date10IsLeapYearEi.exit71.thread.us.preheader, %_ZN6duckdb4Date10IsLeapYearEi.exit71.thread.us
  %.262105.us110 = phi i32 [ %.363.us114, %_ZN6duckdb4Date10IsLeapYearEi.exit71.thread.us ], [ %.262105.us110.ph, %_ZN6duckdb4Date10IsLeapYearEi.exit71.thread.us.preheader ]
  %.165104.us111 = phi i32 [ %.266.us115, %_ZN6duckdb4Date10IsLeapYearEi.exit71.thread.us ], [ %.165104.us111.ph, %_ZN6duckdb4Date10IsLeapYearEi.exit71.thread.us.preheader ]
  %.363.us114 = add nsw i32 %.pn.us113, %.262105.us110 ; 3 uses
  %.266.us115 = add nsw i32 %.165104.us111, -1    ; 2 uses
  %i.fe = icmp slt i32 %.363.us114, 0
  br i1 %i.fe, label %_ZN6duckdb4Date10IsLeapYearEi.exit71.thread.us, label %.preheader, !llvm.loop !2730

.lr.ph106.split.split:                            ; preds = %.lr.ph106.split
  %.pn = load i32, ptr %i.bt, align 4, !tbaa !172 ; 4 uses
  %i.ff = add nsw i32 %.161.lcssa, %.pn           ; 3 uses
  %i.fg = tail call i32 @llvm.smax.i32(i32 %i.ff, i32 0)
  %.lobit = lshr i32 %i.ff, 31                    ; 2 uses
  %i.fh = add i32 %.lobit, %i.ff
  %i.fi = sub i32 %i.fg, %i.fh
  %8 = tail call i32 @llvm.umax.i32(i32 %.pn, i32 1)
  %i.fj = udiv i32 %i.fi, %8
  %i.fk = add i32 %.lobit, %i.fj
  %i.fl = add i32 %i.fk, 1                        ; 3 uses
  %min.iters.check = icmp ult i32 %i.fl, 8
  br i1 %min.iters.check, label %_ZN6duckdb4Date10IsLeapYearEi.exit71.thread77.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph106.split.split
  %n.vec = and i32 %i.fl, -8                      ; 3 uses
  %i.fm = mul i32 %n.vec, %.pn
  %i.fn = add i32 %.161.lcssa, %i.fm              ; 2 uses
  %i.fo = shufflevector <4 x i32> %i.y, <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ %i.fo, %vector.ph ], [ %i.fp, %vector.body ]
  %vec.phi158 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.fq, %vector.body ]
  %i.fp = add <4 x i32> %vec.phi, splat (i32 -1)  ; 2 uses
  %i.fq = add <4 x i32> %vec.phi158, splat (i32 -1) ; 2 uses
  %index.next = add nuw i32 %index, 8             ; 2 uses
  %i.fr = icmp eq i32 %index.next, %n.vec
  br i1 %i.fr, label %middle.block, label %vector.body, !llvm.loop !2731

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.fq, %i.fp
  %i.fs = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i32 %i.fl, %n.vec
  br i1 %cmp.n, label %.preheader, label %_ZN6duckdb4Date10IsLeapYearEi.exit71.thread77.preheader

_ZN6duckdb4Date10IsLeapYearEi.exit71.thread77.preheader: ; preds = %.lr.ph106.split.split, %middle.block
  %.262105.ph = phi i32 [ %.161.lcssa, %.lr.ph106.split.split ], [ %i.fn, %middle.block ]
  %.165104.ph = phi i32 [ %i.br, %.lr.ph106.split.split ], [ %i.fs, %middle.block ]
  br label %_ZN6duckdb4Date10IsLeapYearEi.exit71.thread77

.preheader:                                       ; preds = %_ZN6duckdb4Date10IsLeapYearEi.exit71.thread77, %_ZN6duckdb4Date10IsLeapYearEi.exit71.thread.us, %_ZN6duckdb4Date10IsLeapYearEi.exit71.us.us, %_ZN6duckdb4Date10IsLeapYearEi.exit.thread73.us, %_ZN6duckdb4Date10IsLeapYearEi.exit.thread.us.us, %_ZN6duckdb4Date10IsLeapYearEi.exit.us.us.us, %middle.block, %middle.block168, %middle.block182, %middle.block196, %middle.block210, %middle.block224, %.preheader82
  %.165.lcssa = phi i32 [ %i.br, %.preheader82 ], [ %.266.us115, %_ZN6duckdb4Date10IsLeapYearEi.exit71.thread.us ], [ %.266.us115.us, %_ZN6duckdb4Date10IsLeapYearEi.exit71.us.us ], [ %.266.us, %_ZN6duckdb4Date10IsLeapYearEi.exit.thread73.us ], [ %.266.us.us, %_ZN6duckdb4Date10IsLeapYearEi.exit.thread.us.us ], [ %.266.us.us.us, %_ZN6duckdb4Date10IsLeapYearEi.exit.us.us.us ], [ %i.ct, %middle.block224 ], [ %i.di, %middle.block210 ], [ %i.dx, %middle.block196 ], [ %i.eo, %middle.block182 ], [ %i.fd, %middle.block168 ], [ %i.fs, %middle.block ], [ %.266, %_ZN6duckdb4Date10IsLeapYearEi.exit71.thread77 ] ; 5 uses
  %.262.lcssa = phi i32 [ %.161.lcssa, %.preheader82 ], [ %.363.us114, %_ZN6duckdb4Date10IsLeapYearEi.exit71.thread.us ], [ %.363.us114.us, %_ZN6duckdb4Date10IsLeapYearEi.exit71.us.us ], [ %.363.us, %_ZN6duckdb4Date10IsLeapYearEi.exit.thread73.us ], [ %.363.us.us, %_ZN6duckdb4Date10IsLeapYearEi.exit.thread.us.us ], [ %.363.us.us.us, %_ZN6duckdb4Date10IsLeapYearEi.exit.us.us.us ], [ %i.co, %middle.block224 ], [ %i.dd, %middle.block210 ], [ %i.ds, %middle.block196 ], [ %i.ej, %middle.block182 ], [ %i.ey, %middle.block168 ], [ %i.fn, %middle.block ], [ %.363, %_ZN6duckdb4Date10IsLeapYearEi.exit71.thread77 ] ; 2 uses
  %i.ft = icmp slt i32 %.165.lcssa, 0
  br i1 %i.ft, label %.lr.ph128.preheader, label %._crit_edge

.lr.ph128.preheader:                              ; preds = %.preheader
  %i.fu = tail call i32 @llvm.umax.i32(i32 %.165.lcssa, i32 -12)
  %i.fv = add nsw i32 %i.fu, 11
  %i.fw = sub i32 %i.fv, %.165.lcssa
  %i.fx = udiv i32 %i.fw, 12                      ; 2 uses
  %i.fy = mul nuw i32 %i.fx, 12
  %i.fz = add i32 %.165.lcssa, %i.fy
  %i.ga = add i32 %i.fz, 12
  %i.gb = xor i32 %i.fx, -1
  %i.gc = add i32 %.0, %i.gb
  br label %._crit_edge

_ZN6duckdb4Date10IsLeapYearEi.exit71.thread77:    ; preds = %_ZN6duckdb4Date10IsLeapYearEi.exit71.thread77.preheader, %_ZN6duckdb4Date10IsLeapYearEi.exit71.thread77
  %.262105 = phi i32 [ %.363, %_ZN6duckdb4Date10IsLeapYearEi.exit71.thread77 ], [ %.262105.ph, %_ZN6duckdb4Date10IsLeapYearEi.exit71.thread77.preheader ]
  %.165104 = phi i32 [ %.266, %_ZN6duckdb4Date10IsLeapYearEi.exit71.thread77 ], [ %.165104.ph, %_ZN6duckdb4Date10IsLeapYearEi.exit71.thread77.preheader ]
  %.363 = add nsw i32 %.pn, %.262105              ; 3 uses
  %.266 = add nsw i32 %.165104, -1                ; 2 uses
  %i.gd = icmp slt i32 %.363, 0
  br i1 %i.gd, label %_ZN6duckdb4Date10IsLeapYearEi.exit71.thread77, label %.preheader, !llvm.loop !2732

._crit_edge:                                      ; preds = %.lr.ph128.preheader, %.preheader
  %.367.lcssa = phi i32 [ %.165.lcssa, %.preheader ], [ %i.ga, %.lr.ph128.preheader ] ; 2 uses
  %.1.lcssa = phi i32 [ %.0, %.preheader ], [ %i.gc, %.lr.ph128.preheader ] ; 2 uses
  br i1 %2, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge
  %i.ge = sub nsw i32 0, %.1.lcssa
  %i.gf = sub nsw i32 0, %.367.lcssa
  %i.gg = sub nsw i32 0, %.262.lcssa
  %i.gh = sub nsw i32 0, %.258.lcssa
  %i.gi = sub nsw i32 0, %.254.lcssa
  %i.gj = sub nsw i32 0, %.251.lcssa
  %i.gk = sub nsw i32 0, %.147.lcssa
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge
  %.468 = phi i32 [ %i.gf, %bb.d ], [ %.367.lcssa, %._crit_edge ]
  %.4 = phi i32 [ %i.gg, %bb.d ], [ %.262.lcssa, %._crit_edge ]
  %.359 = phi i32 [ %i.gh, %bb.d ], [ %.258.lcssa, %._crit_edge ]
  %.355 = phi i32 [ %i.gi, %bb.d ], [ %.254.lcssa, %._crit_edge ]
  %.3 = phi i32 [ %i.gj, %bb.d ], [ %.251.lcssa, %._crit_edge ]
  %.248 = phi i32 [ %i.gk, %bb.d ], [ %.147.lcssa, %._crit_edge ]
  %.2 = phi i32 [ %i.ge, %bb.d ], [ %.1.lcssa, %._crit_edge ]
  %i.gl = mul nsw i32 %.2, 12
  %i.gm = add nsw i32 %i.gl, %.468
  %i.gn = sext i32 %.359 to i64
  %i.go = mul nsw i64 %i.gn, 60
  %i.gp = sext i32 %.355 to i64
  %i.gq = add nsw i64 %i.go, %i.gp
  %i.gr = mul nsw i64 %i.gq, 60
  %i.gs = sext i32 %.3 to i64
  %i.gt = add nsw i64 %i.gr, %i.gs
  %i.gu = mul nsw i64 %i.gt, 1000000
  %i.gv = sext i32 %.248 to i64
  %i.gw = add nsw i64 %i.gu, %i.gv
  %.sroa.2.0.insert.ext = zext i32 %.4 to i64
  %.sroa.2.0.insert.shift = shl nuw i64 %.sroa.2.0.insert.ext, 32
  %.sroa.044.0.insert.ext = zext i32 %i.gm to i64
  %.sroa.044.0.insert.insert = or disjoint i64 %.sroa.2.0.insert.shift, %.sroa.044.0.insert.ext
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.044.0.insert.insert, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %i.gw, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define range(i64 -7861937637475483648, 7861937633814483648) i64 @_ZN6duckdb4Time8FromTimeEiiii(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #9 align 2 !guid !2739 {
bb.a:
  %i.a = sext i32 %0 to i64
  %i.b = mul nsw i64 %i.a, 60
  %i.c = sext i32 %1 to i64
  %i.d = add nsw i64 %i.b, %i.c
  %i.e = mul nsw i64 %i.d, 60
  %i.f = sext i32 %2 to i64
  %i.g = add nsw i64 %i.e, %i.f
  %i.h = mul nsw i64 %i.g, 1000000
  %i.i = sext i32 %3 to i64
  %i.j = add nsw i64 %i.h, %i.i
  ret i64 %i.j
}

; Function Attrs: mustprogress uwtable
define { i64, i64 } @_ZN6duckdb8Interval6GetAgeENS_11timestamp_tES1_(i64 %0, i64 %1) local_unnamed_addr #3 align 2 !guid !2740 {
bb.a:
  %2 = alloca %"struct.duckdb::TimestampComponents", align 8 ; 2 uses
  %3 = alloca %"struct.duckdb::TimestampComponents", align 8 ; 2 uses
  call void @_ZN6duckdb9Timestamp13GetComponentsENS_11timestamp_tE(ptr dead_on_unwind nonnull writable sret(%"struct.duckdb::TimestampComponents") align 4 %2, i64 %0)
  call void @_ZN6duckdb9Timestamp13GetComponentsENS_11timestamp_tE(ptr dead_on_unwind nonnull writable sret(%"struct.duckdb::TimestampComponents") align 4 %3, i64 %1)
  %i.a = icmp slt i64 %0, %1
  %i.b = tail call { i64, i64 } @_ZN6duckdb8Interval6GetAgeENS_19TimestampComponentsES1_b(ptr noundef nonnull byval(%"struct.duckdb::TimestampComponents") align 8 %2, ptr noundef nonnull byval(%"struct.duckdb::TimestampComponents") align 8 %3, i1 noundef zeroext %i.a)
  ret { i64, i64 } %i.b
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb9Timestamp13GetComponentsENS_11timestamp_tE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"struct.duckdb::TimestampComponents") align 4 captures(none) %0, i64 %1) local_unnamed_addr #3 align 2 !guid !2741 {
bb.a:
  %2 = alloca %"struct.duckdb::date_t", align 4   ; 4 uses
  %3 = alloca %"struct.duckdb::dtime_t", align 8  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #46
  call void @_ZN6duckdb9Timestamp7ConvertENS_11timestamp_tERNS_6date_tERNS_7dtime_tE(i64 %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 8 dereferenceable(8) %3)
  %.sroa.01.0.copyload = load i32, ptr %2, align 4, !tbaa !172 ; 7 uses
  %i.a = icmp slt i32 %.sroa.01.0.copyload, 0
  br i1 %i.a, label %.lr.ph.i.preheader.i, label %.preheader.i.i

.lr.ph.i.preheader.i:                             ; preds = %bb.a
  %reass.sub = tail call i32 @llvm.usub.sat.i32(i32 -146097, i32 %.sroa.01.0.copyload)
  %i.b = add nuw nsw i32 %reass.sub, 146096
  %i.c = udiv i32 %i.b, 146097                    ; 2 uses
  %i.d = mul nuw nsw i32 %i.c, 146097
  %i.e = add nsw i32 %.sroa.01.0.copyload, 146097
  %i.f = add i32 %i.e, %i.d
  %.neg32.i = mul nsw i32 %i.c, -400
  %i.g = add nsw i32 %.neg32.i, 1570
  br label %._crit_edge.i.i

.preheader.i.i:                                   ; preds = %bb.a
  %i.h = icmp samesign ugt i32 %.sroa.01.0.copyload, 146096
  br i1 %i.h, label %.lr.ph17.i.preheader.i, label %._crit_edge.i.i

.lr.ph17.i.preheader.i:                           ; preds = %.preheader.i.i
  %i.i = add nsw i32 %.sroa.01.0.copyload, -146097
  %i.j = tail call i32 @llvm.usub.sat.i32(i32 %.sroa.01.0.copyload, i32 292193)
  %i.k = add nuw nsw i32 %i.j, 146096
  %i.l = udiv i32 %i.k, 146097                    ; 2 uses
  %.neg.i = mul nsw i32 %i.l, -146097
  %i.m = add nsw i32 %i.i, %.neg.i
  %i.n = mul nuw nsw i32 %i.l, 400
  %i.o = add nuw nsw i32 %i.n, 2370
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph17.i.preheader.i, %.preheader.i.i, %.lr.ph.i.preheader.i
  %i.p = phi i32 [ %i.g, %.lr.ph.i.preheader.i ], [ 1970, %.preheader.i.i ], [ %i.o, %.lr.ph17.i.preheader.i ]
  %.1.i = phi i32 [ %i.f, %.lr.ph.i.preheader.i ], [ %.sroa.01.0.copyload, %.preheader.i.i ], [ %i.m, %.lr.ph17.i.preheader.i ] ; 3 uses
  %i.q = udiv i32 %.1.i, 365
  %i.r = zext nneg i32 %i.q to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %._crit_edge.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.b ], [ %i.r, %._crit_edge.i.i ] ; 3 uses
  %i.s = getelementptr inbounds [4 x i8], ptr @_ZN6duckdb4Date20CUMULATIVE_YEAR_DAYSE, i64 %indvars.iv.i.i ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !172  ; 3 uses
  %i.u = icmp slt i32 %.1.i, %i.t
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, -1
  br i1 %i.u, label %bb.b, label %_ZN6duckdb4Date7ConvertENS_6date_tERiS2_S2_.exit, !llvm.loop !39

_ZN6duckdb4Date7ConvertENS_6date_tERiS2_S2_.exit: ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.x = trunc nsw i64 %indvars.iv.i.i to i32
  %i.y = add nsw i32 %i.p, %i.x
  store i32 %i.y, ptr %0, align 4, !tbaa !172
  %i.z = sub nsw i32 %.1.i, %i.t                  ; 2 uses
  %i.aa = getelementptr i8, ptr %i.s, i64 4
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !172
  %i.ac = sub nsw i32 %i.ab, %i.t
  %i.ad = icmp eq i32 %i.ac, 366                  ; 2 uses
  %i.ae = zext nneg i32 %i.z to i64
  %_ZN6duckdb4Date26LEAP_MONTH_PER_DAY_OF_YEARE._ZN6duckdb4Date21MONTH_PER_DAY_OF_YEARE.i = select i1 %i.ad, ptr @_ZN6duckdb4Date26LEAP_MONTH_PER_DAY_OF_YEARE, ptr @_ZN6duckdb4Date21MONTH_PER_DAY_OF_YEARE
  %_ZN6duckdb4Date20CUMULATIVE_LEAP_DAYSE._ZN6duckdb4Date15CUMULATIVE_DAYSE.i = select i1 %i.ad, ptr @_ZN6duckdb4Date20CUMULATIVE_LEAP_DAYSE, ptr @_ZN6duckdb4Date15CUMULATIVE_DAYSE
  %i.af = getelementptr inbounds nuw i8, ptr %_ZN6duckdb4Date26LEAP_MONTH_PER_DAY_OF_YEARE._ZN6duckdb4Date21MONTH_PER_DAY_OF_YEARE.i, i64 %i.ae
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !878 ; 2 uses
end_hunk_0
