Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btMultiBodyDynamicsWorld?download=true
inline.NumInlined: 901
inline.NumDeleted: 283
loop-unroll.NumRuntimeUnrolled: 47
loop-unroll.NumUnrolled: 47
begin_hunk_0_@_ZN24btMultiBodyDynamicsWorld26calculateSimulationIslandsEv:bb.a
  store i32 %i.dl, ptr %i.di, align 4, !tbaa !233
  %i.dm = sext i32 %i.dl to i64
  %i.dn = getelementptr inbounds [8 x i8], ptr %i.cs, i64 %i.dm ; 2 uses
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !233 ; 2 uses
  %.not.i11.i98 = icmp eq i32 %i.dl, %i.do
  br i1 %.not.i11.i98, label %_ZN11btUnionFind4findEi.exit13.i99, label %.lr.ph.i10.i97, !llvm.loop !218

_ZN11btUnionFind4findEi.exit13.i99:               ; preds = %.lr.ph.i10.i97, %_ZN11btUnionFind4findEi.exit.i94
  %.0.lcssa.i12.i100 = phi i32 [ %i.cq, %_ZN11btUnionFind4findEi.exit.i94 ], [ %i.dl, %.lr.ph.i10.i97 ] ; 3 uses
  %i.dp = icmp eq i32 %.0.lcssa.i.i95, %.0.lcssa.i12.i100
  br i1 %i.dp, label %_ZN11btUnionFind5uniteEii.exit101, label %bb.k

bb.k:                                             ; preds = %_ZN11btUnionFind4findEi.exit13.i99
  %i.dq = sext i32 %.0.lcssa.i.i95 to i64
  %i.dr = getelementptr inbounds [8 x i8], ptr %i.cs, i64 %i.dq ; 2 uses
  store i32 %.0.lcssa.i12.i100, ptr %i.dr, align 4, !tbaa !233
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 4
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !234
  %i.du = sext i32 %.0.lcssa.i12.i100 to i64
  %i.dv = getelementptr inbounds [8 x i8], ptr %i.cs, i64 %i.du
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 4 ; 2 uses
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !234
  %i.dy = add nsw i32 %i.dx, %i.dt
  store i32 %i.dy, ptr %i.dw, align 4, !tbaa !234
  br label %_ZN11btUnionFind5uniteEii.exit101

_ZN11btUnionFind5uniteEii.exit101:                ; preds = %bb.k, %_ZN11btUnionFind4findEi.exit13.i99, %bb.h, %bb.i, %bb.g
  %indvars.iv.next160 = add nuw nsw i64 %indvars.iv159, 1 ; 2 uses
  %exitcond163.not = icmp eq i64 %indvars.iv.next160, %wide.trip.count162
  br i1 %exitcond163.not, label %.preheader127, label %bb.g, !llvm.loop !220

.preheader:                                       ; preds = %._crit_edge144, %.preheader127
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 548 ; 2 uses
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !132
  %i.eb = icmp sgt i32 %i.ea, 0
  br i1 %i.eb, label %.lr.ph148, label %._crit_edge149

.lr.ph148:                                        ; preds = %.preheader
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 560
  br label %bb.r

bb.l:                                             ; preds = %.lr.ph146, %._crit_edge144
  %indvars.iv169 = phi i64 [ 0, %.lr.ph146 ], [ %indvars.iv.next170, %._crit_edge144 ] ; 2 uses
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %indvars.iv169
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !24 ; 3 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 180
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !61 ; 2 uses
  %i.eh = icmp sgt i32 %i.eg, 0
  br i1 %i.eh, label %.lr.ph143, label %._crit_edge144

.lr.ph143:                                        ; preds = %bb.l
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !52
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ee, i64 192
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !62
  %wide.trip.count167 = zext nneg i32 %i.eg to i64
  br label %bb.m

._crit_edge144:                                   ; preds = %.critedge, %bb.l
  %indvars.iv.next170 = add nuw nsw i64 %indvars.iv169, 1 ; 2 uses
  %exitcond173.not = icmp eq i64 %indvars.iv.next170, %wide.trip.count172
  br i1 %exitcond173.not, label %.preheader, label %bb.l, !llvm.loop !221

bb.m:                                             ; preds = %.lr.ph143, %.critedge
  %indvars.iv164 = phi i64 [ 0, %.lr.ph143 ], [ %indvars.iv.next165, %.critedge ] ; 2 uses
  %.065140 = phi ptr [ %i.ej, %.lr.ph143 ], [ %.1, %.critedge ] ; 5 uses
  %i.em = getelementptr inbounds nuw [688 x i8], ptr %i.el, i64 %indvars.iv164
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 544
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !67 ; 4 uses
  %.not82 = icmp eq ptr %i.eo, null
  br i1 %.not82, label %.critedge, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 224
  %i.eq = load i32, ptr %i.ep, align 8, !tbaa !227
  %i.er = and i32 %i.eq, 3
  %i.es = icmp ne i32 %i.er, 0                    ; 2 uses
  %i.et = icmp eq ptr %.065140, null
  %or.cond7.not = select i1 %i.es, i1 true, i1 %i.et
  br i1 %or.cond7.not, label %_ZN11btUnionFind5uniteEii.exit112, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.eu = getelementptr inbounds nuw i8, ptr %.065140, i64 224
  %i.ev = load i32, ptr %i.eu, align 8, !tbaa !227
  %i.ew = and i32 %i.ev, 3
  %.not = icmp eq i32 %i.ew, 0
  br i1 %.not, label %bb.p, label %_ZN11btUnionFind5uniteEii.exit112

bb.p:                                             ; preds = %bb.o
  %i.ex = getelementptr inbounds nuw i8, ptr %.065140, i64 228
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !120 ; 3 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.eo, i64 228
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !120 ; 3 uses
  %i.fb = load ptr, ptr %i.a, align 8, !tbaa !108
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 24
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !231 ; 8 uses
  %i.fe = sext i32 %i.ey to i64
  %i.ff = getelementptr inbounds [8 x i8], ptr %i.fd, i64 %i.fe ; 2 uses
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !233 ; 2 uses
  %.not7.i.i102 = icmp eq i32 %i.ey, %i.fg
  br i1 %.not7.i.i102, label %_ZN11btUnionFind4findEi.exit.i105, label %.lr.ph.i.i103

.lr.ph.i.i103:                                    ; preds = %bb.p, %.lr.ph.i.i103
  %i.fh = phi i32 [ %i.fo, %.lr.ph.i.i103 ], [ %i.fg, %bb.p ]
  %i.fi = phi ptr [ %i.fn, %.lr.ph.i.i103 ], [ %i.ff, %bb.p ]
  %i.fj = sext i32 %i.fh to i64
  %i.fk = getelementptr inbounds [8 x i8], ptr %i.fd, i64 %i.fj
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !233 ; 4 uses
  store i32 %i.fl, ptr %i.fi, align 4, !tbaa !233
  %i.fm = sext i32 %i.fl to i64
  %i.fn = getelementptr inbounds [8 x i8], ptr %i.fd, i64 %i.fm ; 2 uses
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !233 ; 2 uses
  %.not.i.i104 = icmp eq i32 %i.fl, %i.fo
  br i1 %.not.i.i104, label %_ZN11btUnionFind4findEi.exit.i105, label %.lr.ph.i.i103, !llvm.loop !218

_ZN11btUnionFind4findEi.exit.i105:                ; preds = %.lr.ph.i.i103, %bb.p
  %.0.lcssa.i.i106 = phi i32 [ %i.ey, %bb.p ], [ %i.fl, %.lr.ph.i.i103 ] ; 2 uses
  %i.fp = sext i32 %i.fa to i64
  %i.fq = getelementptr inbounds [8 x i8], ptr %i.fd, i64 %i.fp ; 2 uses
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !233 ; 2 uses
  %.not7.i9.i107 = icmp eq i32 %i.fa, %i.fr
  br i1 %.not7.i9.i107, label %_ZN11btUnionFind4findEi.exit13.i110, label %.lr.ph.i10.i108

.lr.ph.i10.i108:                                  ; preds = %_ZN11btUnionFind4findEi.exit.i105, %.lr.ph.i10.i108
  %i.fs = phi i32 [ %i.fz, %.lr.ph.i10.i108 ], [ %i.fr, %_ZN11btUnionFind4findEi.exit.i105 ]
  %i.ft = phi ptr [ %i.fy, %.lr.ph.i10.i108 ], [ %i.fq, %_ZN11btUnionFind4findEi.exit.i105 ]
  %i.fu = sext i32 %i.fs to i64
  %i.fv = getelementptr inbounds [8 x i8], ptr %i.fd, i64 %i.fu
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !233 ; 4 uses
  store i32 %i.fw, ptr %i.ft, align 4, !tbaa !233
  %i.fx = sext i32 %i.fw to i64
  %i.fy = getelementptr inbounds [8 x i8], ptr %i.fd, i64 %i.fx ; 2 uses
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !233 ; 2 uses
  %.not.i11.i109 = icmp eq i32 %i.fw, %i.fz
  br i1 %.not.i11.i109, label %_ZN11btUnionFind4findEi.exit13.i110, label %.lr.ph.i10.i108, !llvm.loop !218

_ZN11btUnionFind4findEi.exit13.i110:              ; preds = %.lr.ph.i10.i108, %_ZN11btUnionFind4findEi.exit.i105
  %.0.lcssa.i12.i111 = phi i32 [ %i.fa, %_ZN11btUnionFind4findEi.exit.i105 ], [ %i.fw, %.lr.ph.i10.i108 ] ; 3 uses
  %i.ga = icmp eq i32 %.0.lcssa.i.i106, %.0.lcssa.i12.i111
  br i1 %i.ga, label %_ZN11btUnionFind5uniteEii.exit112, label %bb.q

bb.q:                                             ; preds = %_ZN11btUnionFind4findEi.exit13.i110
  %i.gb = sext i32 %.0.lcssa.i.i106 to i64
  %i.gc = getelementptr inbounds [8 x i8], ptr %i.fd, i64 %i.gb ; 2 uses
  store i32 %.0.lcssa.i12.i111, ptr %i.gc, align 4, !tbaa !233
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 4
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !234
  %i.gf = sext i32 %.0.lcssa.i12.i111 to i64
  %i.gg = getelementptr inbounds [8 x i8], ptr %i.fd, i64 %i.gf
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 4 ; 2 uses
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !234
  %i.gj = add nsw i32 %i.gi, %i.ge
  store i32 %i.gj, ptr %i.gh, align 4, !tbaa !234
  br label %_ZN11btUnionFind5uniteEii.exit112

_ZN11btUnionFind5uniteEii.exit112:                ; preds = %bb.n, %bb.o, %_ZN11btUnionFind4findEi.exit13.i110, %bb.q
  %spec.select = select i1 %i.es, ptr %.065140, ptr %i.eo
  br label %.critedge

.critedge:                                        ; preds = %_ZN11btUnionFind5uniteEii.exit112, %bb.m
  %.1 = phi ptr [ %.065140, %bb.m ], [ %spec.select, %_ZN11btUnionFind5uniteEii.exit112 ]
  %indvars.iv.next165 = add nuw nsw i64 %indvars.iv164, 1 ; 2 uses
  %exitcond168.not = icmp eq i64 %indvars.iv.next165, %wide.trip.count167
  br i1 %exitcond168.not, label %._crit_edge144, label %bb.m, !llvm.loop !222

._crit_edge149:                                   ; preds = %_ZN11btUnionFind5uniteEii.exit123, %.preheader
  %i.gk = load ptr, ptr %i.a, align 8, !tbaa !108 ; 2 uses
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !111
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 24
  %i.gn = load ptr, ptr %i.gm, align 8
  invoke void %i.gn(ptr noundef nonnull align 8 dereferenceable(105) %i.gk, ptr noundef nonnull %0)
          to label %bb.w unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.r:                                             ; preds = %.lr.ph148, %_ZN11btUnionFind5uniteEii.exit123
  %indvars.iv174 = phi i64 [ 0, %.lr.ph148 ], [ %indvars.iv.next175, %_ZN11btUnionFind5uniteEii.exit123 ] ; 2 uses
  %i.go = load ptr, ptr %i.ec, align 8, !tbaa !133
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %i.go, i64 %indvars.iv174
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !135 ; 4 uses
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !111
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 40
  %i.gt = load ptr, ptr %i.gs, align 8
  %i.gu = invoke noundef i32 %i.gt(ptr noundef nonnull align 8 dereferenceable(96) %i.gq)
          to label %bb.s unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

bb.s:                                             ; preds = %bb.r
  %i.gv = load ptr, ptr %i.gq, align 8, !tbaa !111
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 48
  %i.gx = load ptr, ptr %i.gw, align 8
  %i.gy = invoke noundef i32 %i.gx(ptr noundef nonnull align 8 dereferenceable(96) %i.gq)
          to label %bb.t unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

bb.t:                                             ; preds = %bb.s
  %i.gz = or i32 %i.gy, %i.gu
  %or.cond9 = icmp sgt i32 %i.gz, -1
  br i1 %or.cond9, label %bb.u, label %_ZN11btUnionFind5uniteEii.exit123

bb.u:                                             ; preds = %bb.t
  %i.ha = load ptr, ptr %i.a, align 8, !tbaa !108
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 24
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !231 ; 8 uses
  %2 = zext nneg i32 %i.gu to i64
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr %i.hc, i64 %2 ; 2 uses
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !233 ; 2 uses
  %.not7.i.i113 = icmp eq i32 %i.gu, %i.he
  br i1 %.not7.i.i113, label %_ZN11btUnionFind4findEi.exit.i116, label %.lr.ph.i.i114

.lr.ph.i.i114:                                    ; preds = %bb.u, %.lr.ph.i.i114
  %i.hf = phi i32 [ %i.hm, %.lr.ph.i.i114 ], [ %i.he, %bb.u ]
  %i.hg = phi ptr [ %i.hl, %.lr.ph.i.i114 ], [ %i.hd, %bb.u ]
  %i.hh = sext i32 %i.hf to i64
  %i.hi = getelementptr inbounds [8 x i8], ptr %i.hc, i64 %i.hh
  %i.hj = load i32, ptr %i.hi, align 4, !tbaa !233 ; 4 uses
  store i32 %i.hj, ptr %i.hg, align 4, !tbaa !233
  %i.hk = sext i32 %i.hj to i64
  %i.hl = getelementptr inbounds [8 x i8], ptr %i.hc, i64 %i.hk ; 2 uses
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !233 ; 2 uses
  %.not.i.i115 = icmp eq i32 %i.hj, %i.hm
  br i1 %.not.i.i115, label %_ZN11btUnionFind4findEi.exit.i116, label %.lr.ph.i.i114, !llvm.loop !218

_ZN11btUnionFind4findEi.exit.i116:                ; preds = %.lr.ph.i.i114, %bb.u
  %.0.lcssa.i.i117 = phi i32 [ %i.gu, %bb.u ], [ %i.hj, %.lr.ph.i.i114 ] ; 2 uses
  %3 = zext nneg i32 %i.gy to i64
  %i.hn = getelementptr inbounds nuw [8 x i8], ptr %i.hc, i64 %3 ; 2 uses
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !233 ; 2 uses
  %.not7.i9.i118 = icmp eq i32 %i.gy, %i.ho
  br i1 %.not7.i9.i118, label %_ZN11btUnionFind4findEi.exit13.i121, label %.lr.ph.i10.i119

.lr.ph.i10.i119:                                  ; preds = %_ZN11btUnionFind4findEi.exit.i116, %.lr.ph.i10.i119
  %i.hp = phi i32 [ %i.hw, %.lr.ph.i10.i119 ], [ %i.ho, %_ZN11btUnionFind4findEi.exit.i116 ]
  %i.hq = phi ptr [ %i.hv, %.lr.ph.i10.i119 ], [ %i.hn, %_ZN11btUnionFind4findEi.exit.i116 ]
  %i.hr = sext i32 %i.hp to i64
  %i.hs = getelementptr inbounds [8 x i8], ptr %i.hc, i64 %i.hr
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !233 ; 4 uses
  store i32 %i.ht, ptr %i.hq, align 4, !tbaa !233
  %i.hu = sext i32 %i.ht to i64
  %i.hv = getelementptr inbounds [8 x i8], ptr %i.hc, i64 %i.hu ; 2 uses
  %i.hw = load i32, ptr %i.hv, align 4, !tbaa !233 ; 2 uses
  %.not.i11.i120 = icmp eq i32 %i.ht, %i.hw
  br i1 %.not.i11.i120, label %_ZN11btUnionFind4findEi.exit13.i121, label %.lr.ph.i10.i119, !llvm.loop !218

_ZN11btUnionFind4findEi.exit13.i121:              ; preds = %.lr.ph.i10.i119, %_ZN11btUnionFind4findEi.exit.i116
  %.0.lcssa.i12.i122 = phi i32 [ %i.gy, %_ZN11btUnionFind4findEi.exit.i116 ], [ %i.ht, %.lr.ph.i10.i119 ] ; 3 uses
  %i.hx = icmp eq i32 %.0.lcssa.i.i117, %.0.lcssa.i12.i122
  br i1 %i.hx, label %_ZN11btUnionFind5uniteEii.exit123, label %bb.v

bb.v:                                             ; preds = %_ZN11btUnionFind4findEi.exit13.i121
  %i.hy = sext i32 %.0.lcssa.i.i117 to i64
  %i.hz = getelementptr inbounds [8 x i8], ptr %i.hc, i64 %i.hy ; 2 uses
  store i32 %.0.lcssa.i12.i122, ptr %i.hz, align 4, !tbaa !233
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 4
  %i.ib = load i32, ptr %i.ia, align 4, !tbaa !234
  %i.ic = sext i32 %.0.lcssa.i12.i122 to i64
  %i.id = getelementptr inbounds [8 x i8], ptr %i.hc, i64 %i.ic
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 4 ; 2 uses
  %i.if = load i32, ptr %i.ie, align 4, !tbaa !234
  %i.ig = add nsw i32 %i.if, %i.ib
  store i32 %i.ig, ptr %i.ie, align 4, !tbaa !234
  br label %_ZN11btUnionFind5uniteEii.exit123

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.r, %bb.s, %._crit_edge149, %bb.a
  %lpad.loopexit.split-lp221 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN14CProfileSampleD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %1) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  resume { ptr, i32 } %lpad.loopexit.split-lp221

_ZN11btUnionFind5uniteEii.exit123:                ; preds = %bb.v, %_ZN11btUnionFind4findEi.exit13.i121, %bb.t
  %indvars.iv.next175 = add nuw nsw i64 %indvars.iv174, 1 ; 2 uses
  %i.ih = load i32, ptr %i.dz, align 4, !tbaa !132
  %i.ii = sext i32 %i.ih to i64
  %i.ij = icmp slt i64 %indvars.iv.next175, %i.ii
  br i1 %i.ij, label %bb.r, label %._crit_edge149, !llvm.loop !223

bb.w:                                             ; preds = %._crit_edge149
  call void @_ZN14CProfileSampleD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %1) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

declare void @_ZN14CProfileSampleC1EPKc(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef) unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: nounwind
declare void @_ZN14CProfileSampleD1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #4

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN24btMultiBodyDynamicsWorld21updateActivationStateEf(ptr noundef nonnull align 8 dereferenceable(848) %0, float noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.CProfileSample, align 1      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  call void @_ZN14CProfileSampleC1EPKc(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull @.str.1)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 516 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !20
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph76, label %._crit_edge

.lr.ph76:                                         ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 528
  br label %bb.b

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  invoke void @_ZN23btDiscreteDynamicsWorld21updateActivationStateEf(ptr noundef nonnull align 8 dereferenceable(508) %0, float noundef %1)
          to label %bb.w unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.b:                                             ; preds = %.lr.ph76, %.loopexit
  %indvars.iv88 = phi i64 [ 0, %.lr.ph76 ], [ %indvars.iv.next89, %.loopexit ] ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !22
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv88
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !24   ; 9 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN11btMultiBody29checkMotionAndSleepIfRequiredEf(ptr noundef nonnull align 8 dereferenceable(640) %i.g, float noundef %1)
          to label %bb.d unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 562
  %i.i = load i8, ptr %i.h, align 2, !tbaa !239, !range !30, !noundef !31
  %i.j = trunc nuw i8 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !52   ; 6 uses
  %.not56 = icmp eq ptr %i.l, null                ; 2 uses
  br i1 %i.j, label %bb.o, label %bb.e

bb.e:                                             ; preds = %bb.d
  br i1 %.not56, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 240
  %i.n = load i32, ptr %i.m, align 8, !tbaa !60
  %i.o = icmp eq i32 %i.n, 1
  br i1 %i.o, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.p = invoke noundef zeroext i1 @_ZNK11btMultiBody12hasFixedBaseEv(ptr noundef nonnull align 8 dereferenceable(640) %i.g)
          to label %.invoke unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.invoke:                                          ; preds = %bb.g
  %. = select i1 %i.p, i32 6, i32 3
  invoke void @_ZNK17btCollisionObject18setActivationStateEi(ptr noundef nonnull align 8 dereferenceable(372) %i.l, i32 noundef %.)
          to label %bb.h unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.h:                                             ; preds = %.invoke
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 244
  store float 0.000000e+00, ptr %i.q, align 4, !tbaa !240
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.f, %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 180 ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !61   ; 2 uses
  %i.t = icmp sgt i32 %i.s, 0
  br i1 %i.t, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 192
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph, %bb.n
  %i.v = phi i32 [ %i.s, %.lr.ph ], [ %i.ae, %bb.n ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.n ] ; 2 uses
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !62
  %i.x = getelementptr inbounds nuw [688 x i8], ptr %i.w, i64 %indvars.iv
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 544
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !67   ; 4 uses
  %.not53 = icmp eq ptr %i.z, null
  br i1 %.not53, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 240
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !60
  %i.ac = icmp eq i32 %i.ab, 1
  br i1 %i.ac, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  invoke void @_ZNK17btCollisionObject18setActivationStateEi(ptr noundef nonnull align 8 dereferenceable(372) %i.z, i32 noundef 3)
          to label %bb.m unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.m:                                             ; preds = %bb.l
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 244
  store float 0.000000e+00, ptr %i.ad, align 4, !tbaa !240
  %.pre = load i32, ptr %i.r, align 4, !tbaa !61
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.k, %bb.j
  %i.ae = phi i32 [ %.pre, %bb.m ], [ %i.v, %bb.k ], [ %i.v, %bb.j ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.af = sext i32 %i.ae to i64
  %i.ag = icmp slt i64 %indvars.iv.next, %i.af
  br i1 %i.ag, label %bb.j, label %.loopexit, !llvm.loop !236

bb.o:                                             ; preds = %bb.d
  br i1 %.not56, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ah = getelementptr inbounds nuw i8, ptr %i.l, i64 240
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !60
  %.not57 = icmp eq i32 %i.ai, 4
  br i1 %.not57, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  invoke void @_ZNK17btCollisionObject18setActivationStateEi(ptr noundef nonnull align 8 dereferenceable(372) %i.l, i32 noundef 1)
          to label %bb.r unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o
  %i.aj = getelementptr inbounds nuw i8, ptr %i.g, i64 180 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !61 ; 2 uses
  %i.al = icmp sgt i32 %i.ak, 0
  br i1 %i.al, label %.lr.ph74, label %.loopexit

.lr.ph74:                                         ; preds = %bb.r
  %i.am = getelementptr inbounds nuw i8, ptr %i.g, i64 192
  br label %bb.s

bb.s:                                             ; preds = %.lr.ph74, %bb.v
  %i.an = phi i32 [ %i.ak, %.lr.ph74 ], [ %i.au, %bb.v ] ; 2 uses
end_hunk_0
