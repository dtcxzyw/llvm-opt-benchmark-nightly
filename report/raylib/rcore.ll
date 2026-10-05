Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raylib/original/rcore?download=true
inline.NumInlined: 1934
inline.NumDeleted: 137
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 45
begin_hunk_0_@zsinflate:bb.a
  %i.ak = add i32 %i.af, %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %.16063.i, i64 4
  %i.am = load i8, ptr %i.al, align 1
  %i.an = zext i8 %i.am to i32
  %i.ao = add i32 %i.aj, %i.an                    ; 2 uses
  %i.ap = add i32 %i.ak, %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %.16063.i, i64 5
  %i.ar = load i8, ptr %i.aq, align 1
  %i.as = zext i8 %i.ar to i32
  %i.at = add i32 %i.ao, %i.as                    ; 2 uses
  %i.au = add i32 %i.ap, %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %.16063.i, i64 6
  %i.aw = load i8, ptr %i.av, align 1
  %i.ax = zext i8 %i.aw to i32
  %i.ay = add i32 %i.at, %i.ax                    ; 2 uses
  %i.az = add i32 %i.au, %i.ay
  %i.ba = getelementptr inbounds nuw i8, ptr %.16063.i, i64 7
  %i.bb = load i8, ptr %i.ba, align 1
  %i.bc = zext i8 %i.bb to i32
  %i.bd = add i32 %i.ay, %i.bc                    ; 3 uses
  %i.be = add i32 %i.az, %i.bd                    ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.16063.i, i64 8 ; 2 uses
  %i.bg = add i32 %.066.i, 8                      ; 3 uses
  %i.bh = or disjoint i32 %i.bg, 7
  %i.bi = icmp ult i32 %i.bh, %.05283.i
  br i1 %i.bi, label %.lr.ph.i, label %.preheader.i

.lr.ph74.i:                                       ; preds = %.lr.ph74.i.prol.loopexit, %.lr.ph74.i
  %.173.i = phi i32 [ %i.cd, %.lr.ph74.i ], [ %.173.i.unr, %.lr.ph74.i.prol.loopexit ]
  %.272.i = phi i32 [ %i.cc, %.lr.ph74.i ], [ %.272.i.unr, %.lr.ph74.i.prol.loopexit ]
  %.25771.i = phi i32 [ %i.cb, %.lr.ph74.i ], [ %.25771.i.unr, %.lr.ph74.i.prol.loopexit ]
  %.26170.i = phi ptr [ %i.by, %.lr.ph74.i ], [ %.26170.i.unr, %.lr.ph74.i.prol.loopexit ] ; 5 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.26170.i, i64 1
  %i.bk = load i8, ptr %.26170.i, align 1
  %i.bl = zext i8 %i.bk to i32
  %i.bm = add i32 %.25771.i, %i.bl                ; 2 uses
  %i.bn = add i32 %i.bm, %.272.i
  %i.bo = getelementptr inbounds nuw i8, ptr %.26170.i, i64 2
  %i.bp = load i8, ptr %i.bj, align 1
  %i.bq = zext i8 %i.bp to i32
  %i.br = add i32 %i.bm, %i.bq                    ; 2 uses
  %i.bs = add i32 %i.br, %i.bn
  %i.bt = getelementptr inbounds nuw i8, ptr %.26170.i, i64 3
  %i.bu = load i8, ptr %i.bo, align 1
  %i.bv = zext i8 %i.bu to i32
  %i.bw = add i32 %i.br, %i.bv                    ; 2 uses
  %i.bx = add i32 %i.bw, %i.bs
  %i.by = getelementptr inbounds nuw i8, ptr %.26170.i, i64 4 ; 2 uses
  %i.bz = load i8, ptr %i.bt, align 1
  %i.ca = zext i8 %i.bz to i32
  %i.cb = add i32 %i.bw, %i.ca                    ; 3 uses
  %i.cc = add i32 %i.cb, %i.bx                    ; 2 uses
  %i.cd = add nuw i32 %.173.i, 4                  ; 2 uses
  %exitcond.not.i.3 = icmp eq i32 %i.cd, %.05283.i
  br i1 %exitcond.not.i.3, label %._crit_edge.i, label %.lr.ph74.i

._crit_edge.i:                                    ; preds = %.lr.ph74.i.prol.loopexit, %.lr.ph74.i, %.preheader.i
  %.261.lcssa.i = phi ptr [ %.160.lcssa.i, %.preheader.i ], [ %.lcssa58.unr, %.lr.ph74.i.prol.loopexit ], [ %i.by, %.lr.ph74.i ]
  %.257.lcssa.i = phi i32 [ %.156.lcssa.i, %.preheader.i ], [ %.lcssa57.unr, %.lr.ph74.i.prol.loopexit ], [ %i.cb, %.lr.ph74.i ]
  %.2.lcssa.i = phi i32 [ %.154.lcssa.i, %.preheader.i ], [ %.lcssa56.unr, %.lr.ph74.i.prol.loopexit ], [ %i.cc, %.lr.ph74.i ]
  %i.ce = urem i32 %.257.lcssa.i, 65521           ; 2 uses
  %i.cf = urem i32 %.2.lcssa.i, 65521             ; 2 uses
  %i.cg = sub i32 %.05880.i, %.05283.i            ; 2 uses
  %.not.i = icmp eq i32 %i.cg, 0
  br i1 %.not.i, label %._crit_edge84.loopexit.i, label %.preheader62.i

._crit_edge84.loopexit.i:                         ; preds = %._crit_edge.i
  %i.ch = shl nuw i32 %i.cf, 16
  %i.ci = or disjoint i32 %i.ch, %i.ce
  br label %sinfl_adler32.exit

sinfl_adler32.exit:                               ; preds = %bb.b, %._crit_edge84.loopexit.i
  %i.cj = phi i32 [ 1, %bb.b ], [ %i.ci, %._crit_edge84.loopexit.i ]
  %i.ck = load i32, ptr %i.d, align 1
  %i.cl = tail call i32 @llvm.bswap.i32(i32 %i.ck)
  %i.cm = icmp eq i32 %i.cj, %i.cl
  %i.cn = select i1 %i.cm, i32 %i.f, i32 -1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %sinfl_adler32.exit
  %.0 = phi i32 [ %i.cn, %sinfl_adler32.exit ], [ -1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden i32 @sdeflate(ptr noundef initializes((0, 131080)) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #30 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.a, align 4
  store i32 0, ptr %0, align 4
  %i.b = tail call fastcc i32 @sdefl_compr(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4)
  ret i32 %i.b
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i32 @sdefl_compr(ptr nofree noundef initializes((8, 131080)) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4) unnamed_addr #30 {
.preheader213:
  %i.a = alloca [320 x i8], align 16              ; 6 uses
  %i.b = alloca [19 x i32], align 16              ; 4 uses
  %i.c = alloca [19 x i8], align 16               ; 24 uses
  %i.d = alloca [19 x i32], align 16              ; 15 uses
  %i.e = alloca [320 x i32], align 16             ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(131072) %i.f, i8 -1, i64 131072, i1 false)
  %i.g = icmp slt i32 %4, 8
  %i.h = add nsw i32 %4, 1
  %i.i = shl nuw nsw i32 1, %i.h
  %i.j = select i1 %i.g, i32 %i.i, i32 8192       ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 961212 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 962236 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 962492 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 963772 ; 5 uses
  %i.o = sext i32 %4 to i64
  %i.p = getelementptr inbounds i8, ptr @sdefl_compr.pref, i64 %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 131080 ; 3 uses
  %i.r = icmp sgt i32 %4, 4
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 262156 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 262152 ; 11 uses
  %i.u = getelementptr i8, ptr %0, i64 962240     ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 962364 ; 3 uses
  %i.w = icmp sgt i32 %4, 1
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 964060 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 963644 ; 2 uses
  %i.z = getelementptr i8, ptr %0, i64 964059
  %i.aa = getelementptr i8, ptr %0, i64 964058
  %i.ab = getelementptr i8, ptr %0, i64 964057
  %i.ac = getelementptr i8, ptr %0, i64 964056
  %i.ad = getelementptr i8, ptr %0, i64 964055
  %i.ae = getelementptr i8, ptr %0, i64 964054    ; 2 uses
  %i.af = getelementptr i8, ptr %0, i64 964053
  %i.ag = getelementptr i8, ptr %0, i64 964052
  %i.ah = getelementptr i8, ptr %0, i64 964051
  %i.ai = getelementptr i8, ptr %0, i64 964050
  %i.aj = getelementptr i8, ptr %0, i64 964049
  %i.ak = getelementptr i8, ptr %0, i64 964048
  %i.al = getelementptr i8, ptr %0, i64 964047
  %i.am = getelementptr i8, ptr %0, i64 964046    ; 2 uses
  %i.an = getelementptr i8, ptr %0, i64 964045
  %i.ao = getelementptr i8, ptr %0, i64 964044
  %i.ap = getelementptr i8, ptr %0, i64 964043
  %i.aq = getelementptr i8, ptr %0, i64 964042
  %i.ar = getelementptr i8, ptr %0, i64 964041
  %i.as = getelementptr i8, ptr %0, i64 964040
  %i.at = getelementptr i8, ptr %0, i64 964039
  %i.au = getelementptr i8, ptr %0, i64 964038
  %i.av = getelementptr i8, ptr %0, i64 964037
  %i.aw = getelementptr i8, ptr %0, i64 964036
  %i.ax = getelementptr i8, ptr %0, i64 964035
  %i.ay = getelementptr i8, ptr %0, i64 964034
  %i.az = getelementptr i8, ptr %0, i64 964033
  %i.ba = getelementptr i8, ptr %0, i64 964032
  %i.bb = getelementptr i8, ptr %0, i64 964031
  %i.bc = getelementptr i8, ptr %0, i64 964030    ; 2 uses
  %i.bd = getelementptr i8, ptr %0, i64 964029    ; 2 uses
  %i.be = getelementptr i8, ptr %0, i64 964091
  %i.bf = getelementptr i8, ptr %0, i64 964090
  %i.bg = getelementptr i8, ptr %0, i64 964089    ; 2 uses
  %i.bh = getelementptr i8, ptr %0, i64 964088    ; 2 uses
  %i.bi = getelementptr i8, ptr %0, i64 964087
  %i.bj = getelementptr i8, ptr %0, i64 964086
  %i.bk = getelementptr i8, ptr %0, i64 964085
  %i.bl = getelementptr i8, ptr %0, i64 964084
  %i.bm = getelementptr i8, ptr %0, i64 964083
  %i.bn = getelementptr i8, ptr %0, i64 964082
  %i.bo = getelementptr i8, ptr %0, i64 964081
  %i.bp = getelementptr i8, ptr %0, i64 964080
  %i.bq = getelementptr i8, ptr %0, i64 964079
  %i.br = getelementptr i8, ptr %0, i64 964078
  %i.bs = getelementptr i8, ptr %0, i64 964077
  %i.bt = getelementptr i8, ptr %0, i64 964076
  %i.bu = getelementptr i8, ptr %0, i64 964075
  %i.bv = getelementptr i8, ptr %0, i64 964074
  %i.bw = getelementptr i8, ptr %0, i64 964073
  %i.bx = getelementptr i8, ptr %0, i64 964072
  %i.by = getelementptr i8, ptr %0, i64 964071
  %i.bz = getelementptr i8, ptr %0, i64 964070
  %i.ca = getelementptr i8, ptr %0, i64 964069
  %i.cb = getelementptr i8, ptr %0, i64 964068
  %i.cc = getelementptr i8, ptr %0, i64 964067
  %i.cd = getelementptr i8, ptr %0, i64 964066
  %i.ce = getelementptr i8, ptr %0, i64 964065
  %i.cf = getelementptr i8, ptr %0, i64 964064    ; 2 uses
  %i.cg = getelementptr i8, ptr %0, i64 964063
  %i.ch = getelementptr i8, ptr %0, i64 964062
  %i.ci = getelementptr i8, ptr %0, i64 964061
  %i.cj = getelementptr inbounds nuw i8, ptr %i.d, i64 64 ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.d, i64 72 ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.d, i64 68 ; 3 uses
  %i.cm = ptrtoint ptr %i.e to i64
  %i.cn = getelementptr inbounds nuw i8, ptr %i.c, i64 15
  %i.co = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.cp = getelementptr inbounds nuw i8, ptr %i.c, i64 14 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.c, i64 2 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.c, i64 13 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.c, i64 3
  %i.ct = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.cu = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.cv = getelementptr inbounds nuw i8, ptr %i.c, i64 11
  %i.cw = getelementptr inbounds nuw i8, ptr %i.c, i64 5
  %i.cx = getelementptr inbounds nuw i8, ptr %i.c, i64 10
  %i.cy = getelementptr inbounds nuw i8, ptr %i.c, i64 6 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.c, i64 9 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.c, i64 7
  %i.db = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.dc = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.dd = getelementptr inbounds nuw i8, ptr %i.d, i64 36
  %i.de = getelementptr inbounds nuw i8, ptr %i.d, i64 52
  %i.df = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.dg = getelementptr inbounds nuw i8, ptr %i.d, i64 60
  %i.dh = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.di = getelementptr inbounds nuw i8, ptr %i.c, i64 17
  %i.dj = getelementptr inbounds nuw i8, ptr %i.c, i64 18
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 964028 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 962244
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 962380
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 962476
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 962480
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 63 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 963516
  br label %bb.a

bb.a:                                             ; preds = %.preheader213, %sdefl_flush.exit
  %.0198 = phi ptr [ %.43, %sdefl_flush.exit ], [ %1, %.preheader213 ] ; 4 uses
  %.089 = phi i32 [ %.190.lcssa397, %sdefl_flush.exit ], [ 0, %.preheader213 ] ; 6 uses
  %i.dr = add nsw i32 %.089, 262144               ; 2 uses
  %i.ds = call i32 @llvm.smin.i32(i32 %i.dr, i32 %3) ; 3 uses
  %i.dt = icmp sgt i32 %3, %.089
  br i1 %i.dt, label %.lr.ph276, label %._crit_edge.thread

.lr.ph276:                                        ; preds = %bb.a
  %i.du = load i8, ptr %i.p, align 1
  %i.dv = zext i8 %i.du to i32                    ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph276, %.loopexit
  %.188275 = phi i32 [ 0, %.lr.ph276 ], [ %.3384, %.loopexit ] ; 4 uses
  %.190274 = phi i32 [ %.089, %.lr.ph276 ], [ %.392, %.loopexit ] ; 11 uses
  %i.dw = sub nsw i32 %i.ds, %.190274             ; 3 uses
  %i.dx = call i32 @llvm.smin.i32(i32 %i.dw, i32 258) ; 5 uses
  %i.dy = icmp sgt i32 %i.dw, %i.dv
  %. = select i1 %i.dy, i32 %i.dv, i32 %i.dx      ; 2 uses
  %i.dz = icmp sgt i32 %i.dw, 4
  %i.ea = sext i32 %.190274 to i64
  %i.eb = getelementptr inbounds i8, ptr %2, i64 %i.ea ; 3 uses
  br i1 %i.dz, label %bb.c, label %..thread_crit_edge

..thread_crit_edge:                               ; preds = %bb.b
  %.pre345 = load i8, ptr %i.eb, align 1
  br label %.thread380

bb.c:                                             ; preds = %bb.b
  %.val43.i = load i32, ptr %i.eb, align 1        ; 3 uses
  %i.ec = mul i32 %.val43.i, -1640531575
  %i.ed = lshr i32 %i.ec, 17
  %i.ee = zext nneg i32 %i.ed to i64
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.ee
  %i.eg = call i32 @llvm.smax.i32(i32 %.190274, i32 32767)
  %i.eh = add nsw i32 %i.eg, -32768               ; 2 uses
  %.03948.i = load i32, ptr %i.ef, align 4        ; 2 uses
  %i.ei = icmp sgt i32 %.03948.i, %i.eh
  %i.ej = trunc i32 %.val43.i to i8               ; 4 uses
  br i1 %i.ei, label %.lr.ph51.i, label %.thread380

.lr.ph51.i:                                       ; preds = %bb.c
  %wide.trip.count.i = zext nneg i32 %i.dx to i64
  br label %.lr.ph51.split.us.i

.lr.ph51.split.us.i:                              ; preds = %bb.g, %.lr.ph51.i
  %.sroa.8.4 = phi i32 [ 0, %.lr.ph51.i ], [ %.sroa.8.5, %bb.g ] ; 3 uses
  %.sroa.0167.3 = phi i32 [ 0, %.lr.ph51.i ], [ %.sroa.0167.4, %bb.g ] ; 3 uses
  %i.ek = phi i32 [ 0, %.lr.ph51.i ], [ %i.fe, %bb.g ] ; 6 uses
  %.03950.us.i = phi i32 [ %.03948.i, %.lr.ph51.i ], [ %.039.us.i, %bb.g ] ; 4 uses
  %.04049.us.i = phi i32 [ %i.j, %.lr.ph51.i ], [ %i.ff, %bb.g ]
  %i.el = add nuw nsw i32 %.03950.us.i, %i.ek
  %i.em = zext nneg i32 %i.el to i64
  %i.en = getelementptr inbounds nuw i8, ptr %2, i64 %i.em
  %i.eo = load i8, ptr %i.en, align 1
  %i.ep = add nsw i32 %i.ek, %.190274
  %i.eq = sext i32 %i.ep to i64
  %i.er = getelementptr inbounds i8, ptr %2, i64 %i.eq
  %i.es = load i8, ptr %i.er, align 1
  %i.et = icmp eq i8 %i.eo, %i.es
  br i1 %i.et, label %bb.d, label %.thread.us.i

bb.d:                                             ; preds = %.lr.ph51.split.us.i
  %i.eu = zext nneg i32 %.03950.us.i to i64
  %i.ev = getelementptr inbounds nuw i8, ptr %2, i64 %i.eu ; 2 uses
  %.val42.us.i = load i32, ptr %i.ev, align 1
  %i.ew = icmp eq i32 %.val42.us.i, %.val43.i
  br i1 %i.ew, label %.preheader.us.i, label %.thread.us.i

.preheader.us.i:                                  ; preds = %bb.d, %bb.e
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.e ], [ 4, %bb.d ] ; 4 uses
  %gep.i = getelementptr inbounds nuw i8, ptr %i.ev, i64 %indvars.iv.i
  %i.ex = load i8, ptr %gep.i, align 1
  %gep83.i = getelementptr i8, ptr %i.eb, i64 %indvars.iv.i
  %i.ey = load i8, ptr %gep83.i, align 1
  %i.ez = icmp eq i8 %i.ex, %i.ey
  br i1 %i.ez, label %bb.e, label %.critedge.us.split.loop.exit.i

bb.e:                                             ; preds = %.preheader.us.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.critedge.us.i, label %.preheader.us.i

.critedge.us.split.loop.exit.i:                   ; preds = %.preheader.us.i
  %i.fa = trunc nuw nsw i64 %indvars.iv.i to i32
  br label %.critedge.us.i

.critedge.us.i:                                   ; preds = %bb.e, %.critedge.us.split.loop.exit.i
  %.038.lcssa.us.i = phi i32 [ %i.fa, %.critedge.us.split.loop.exit.i ], [ %i.dx, %bb.e ] ; 4 uses
  %i.fb = icmp sgt i32 %.038.lcssa.us.i, %i.ek
  br i1 %i.fb, label %bb.f, label %.thread.us.i

bb.f:                                             ; preds = %.critedge.us.i
  %i.fc = sub nsw i32 %.190274, %.03950.us.i      ; 2 uses
  %i.fd = icmp eq i32 %.038.lcssa.us.i, %i.dx
  br i1 %i.fd, label %sdefl_fnd.exit, label %.thread.us.i

.thread.us.i:                                     ; preds = %bb.f, %.critedge.us.i, %bb.d, %.lr.ph51.split.us.i
  %.sroa.8.5 = phi i32 [ %.038.lcssa.us.i, %bb.f ], [ %.sroa.8.4, %.critedge.us.i ], [ %.sroa.8.4, %bb.d ], [ %.sroa.8.4, %.lr.ph51.split.us.i ] ; 3 uses
  %.sroa.0167.4 = phi i32 [ %i.fc, %bb.f ], [ %.sroa.0167.3, %.critedge.us.i ], [ %.sroa.0167.3, %bb.d ], [ %.sroa.0167.3, %.lr.ph51.split.us.i ] ; 3 uses
  %i.fe = phi i32 [ %.038.lcssa.us.i, %bb.f ], [ %i.ek, %.critedge.us.i ], [ %i.ek, %bb.d ], [ %i.ek, %.lr.ph51.split.us.i ]
  %i.ff = add nsw i32 %.04049.us.i, -1            ; 2 uses
  %.not.us.i = icmp eq i32 %i.ff, 0
  br i1 %.not.us.i, label %sdefl_fnd.exit, label %bb.g

bb.g:                                             ; preds = %.thread.us.i
  %i.fg = and i32 %.03950.us.i, 32767
  %i.fh = zext nneg i32 %i.fg to i64
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.fh
  %.039.us.i = load i32, ptr %i.fi, align 4       ; 2 uses
  %i.fj = icmp sgt i32 %.039.us.i, %i.eh
  br i1 %i.fj, label %.lr.ph51.split.us.i, label %sdefl_fnd.exit

sdefl_fnd.exit:                                   ; preds = %bb.g, %.thread.us.i, %bb.f
  %.sroa.8.0 = phi i32 [ %.sroa.8.5, %bb.g ], [ %i.dx, %bb.f ], [ %.sroa.8.5, %.thread.us.i ] ; 9 uses
  %.sroa.0167.0 = phi i32 [ %.sroa.0167.4, %bb.g ], [ %i.fc, %bb.f ], [ %.sroa.0167.4, %.thread.us.i ] ; 3 uses
  %i.fk = icmp sgt i32 %.sroa.8.0, 3              ; 2 uses
  %or.cond = select i1 %i.r, i1 %i.fk, i1 false
  %i.fl = add nuw nsw i32 %.sroa.8.0, 1           ; 4 uses
  %i.fm = icmp slt i32 %i.fl, %.
  %or.cond106 = select i1 %or.cond, i1 %i.fm, i1 false
  br i1 %or.cond106, label %bb.h, label %bb.m

bb.h:                                             ; preds = %sdefl_fnd.exit
  %i.fn = add nsw i32 %.190274, 1                 ; 3 uses
  %i.fo = sext i32 %i.fn to i64
  %i.fp = getelementptr inbounds i8, ptr %2, i64 %i.fo ; 2 uses
  %.val43.i109 = load i32, ptr %i.fp, align 1     ; 2 uses
  %i.fq = mul i32 %.val43.i109, -1640531575
  %i.fr = lshr i32 %i.fq, 17
  %i.fs = zext nneg i32 %i.fr to i64
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.fs
  %i.fu = call i32 @llvm.smax.i32(i32 %i.fn, i32 32767)
  %i.fv = add nsw i32 %i.fu, -32768               ; 2 uses
  %.03948.i110 = load i32, ptr %i.ft, align 4     ; 2 uses
  %i.fw = icmp sgt i32 %.03948.i110, %i.fv
  br i1 %i.fw, label %.lr.ph51.split.us.preheader.i132, label %sdefl_fnd.exit155.thread

.lr.ph51.split.us.preheader.i132:                 ; preds = %bb.h
  %wide.trip.count.i134 = zext nneg i32 %i.fl to i64
  br label %.lr.ph51.split.us.i136

.lr.ph51.split.us.i136:                           ; preds = %bb.l, %.lr.ph51.split.us.preheader.i132
  %.sroa.6.2 = phi i32 [ 0, %.lr.ph51.split.us.preheader.i132 ], [ %.sroa.6.3, %bb.l ] ; 3 uses
  %i.fx = phi i32 [ 0, %.lr.ph51.split.us.preheader.i132 ], [ %i.gq, %bb.l ] ; 6 uses
  %.03950.us.i137 = phi i32 [ %.03948.i110, %.lr.ph51.split.us.preheader.i132 ], [ %.039.us.i141, %bb.l ] ; 3 uses
  %.04049.us.i138 = phi i32 [ %i.j, %.lr.ph51.split.us.preheader.i132 ], [ %i.gr, %bb.l ]
  %i.fy = add nuw nsw i32 %.03950.us.i137, %i.fx
  %i.fz = zext nneg i32 %i.fy to i64
  %i.ga = getelementptr inbounds nuw i8, ptr %2, i64 %i.fz
  %i.gb = load i8, ptr %i.ga, align 1
  %i.gc = add nsw i32 %i.fx, %i.fn
  %i.gd = sext i32 %i.gc to i64
  %i.ge = getelementptr inbounds i8, ptr %2, i64 %i.gd
  %i.gf = load i8, ptr %i.ge, align 1
  %i.gg = icmp eq i8 %i.gb, %i.gf
  br i1 %i.gg, label %bb.i, label %.thread.us.i139

bb.i:                                             ; preds = %.lr.ph51.split.us.i136
  %i.gh = zext nneg i32 %.03950.us.i137 to i64
  %i.gi = getelementptr inbounds nuw i8, ptr %2, i64 %i.gh ; 2 uses
  %.val42.us.i142 = load i32, ptr %i.gi, align 1
  %i.gj = icmp eq i32 %.val42.us.i142, %.val43.i109
  br i1 %i.gj, label %.preheader.us.i146, label %.thread.us.i139

.preheader.us.i146:                               ; preds = %bb.i, %bb.j
  %indvars.iv.i147 = phi i64 [ %indvars.iv.next.i153, %bb.j ], [ 4, %bb.i ] ; 4 uses
  %gep.i148 = getelementptr inbounds nuw i8, ptr %i.gi, i64 %indvars.iv.i147
  %i.gk = load i8, ptr %gep.i148, align 1
  %gep83.i149 = getelementptr i8, ptr %i.fp, i64 %indvars.iv.i147
  %i.gl = load i8, ptr %gep83.i149, align 1
  %i.gm = icmp eq i8 %i.gk, %i.gl
  br i1 %i.gm, label %bb.j, label %.critedge.us.split.loop.exit.i150

bb.j:                                             ; preds = %.preheader.us.i146
  %indvars.iv.next.i153 = add nuw nsw i64 %indvars.iv.i147, 1 ; 2 uses
  %exitcond.not.i154 = icmp eq i64 %indvars.iv.next.i153, %wide.trip.count.i134
  br i1 %exitcond.not.i154, label %.critedge.us.i151, label %.preheader.us.i146

end_hunk_0
begin_hunk_1_@sdefl_compr:.preheader213
  %i.ny = zext i8 %i.mu to i64
  %i.nz = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ny ; 2 uses
  %i.oa = load i32, ptr %i.nz, align 4
  %i.ob = add i32 %i.oa, 1
  store i32 %i.ob, ptr %i.nz, align 4
  %i.oc = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 4
  store i32 %i.mv, ptr %.0.i.i, align 4
  %i.od = add nuw i32 %.077.i.i, 1
  %i.oe = add i32 %.082.lcssa.i.i, -2
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cg, %bb.cf
  %.279.i.i = phi i32 [ %i.od, %bb.cf ], [ %i.ol, %bb.cg ] ; 2 uses
  %.2.i.i = phi ptr [ %i.oc, %bb.cf ], [ %i.oj, %bb.cg ] ; 2 uses
  %i.of = sub i32 %i.oe, %.279.i.i
  %i.og = call i32 @llvm.umin.i32(i32 %i.of, i32 3) ; 2 uses
  %i.oh = shl nuw nsw i32 %i.og, 5
  %i.oi = or disjoint i32 %i.oh, 16
  %i.oj = getelementptr inbounds nuw i8, ptr %.2.i.i, i64 4 ; 2 uses
  store i32 %i.oi, ptr %.2.i.i, align 4
  %i.ok = add i32 %.279.i.i, 3
  %i.ol = add i32 %i.ok, %i.og                    ; 3 uses
  %i.om = load i32, ptr %i.cj, align 16
  %i.on = add i32 %i.om, 1
  store i32 %i.on, ptr %i.cj, align 16
  %i.oo = sub i32 %.lcssa.i.i, %i.ol
  %i.op = icmp ugt i32 %i.oo, 2
  br i1 %i.op, label %bb.cg, label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %bb.cg, %bb.ce, %._crit_edge.i.i
  %.380.i.i = phi i32 [ %.178.lcssa.i.i, %._crit_edge.i.i ], [ %.077.i.i, %bb.ce ], [ %i.ol, %bb.cg ] ; 5 uses
  %.3.i.i = phi ptr [ %.1.lcssa.i.i, %._crit_edge.i.i ], [ %.0.i.i, %bb.ce ], [ %i.oj, %bb.cg ] ; 3 uses
  %.not93104.i.i = icmp eq i32 %.380.i.i, %.lcssa.i.i
  br i1 %.not93104.i.i, label %._crit_edge109.i.i, label %.lr.ph108.i.i

.lr.ph108.i.i:                                    ; preds = %.loopexit.i.i
  %i.oq = zext i8 %i.mu to i64
  %i.or = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.oq ; 10 uses
  %i.os = add i32 %.082.lcssa.i.i, 1
  %i.ot = sub i32 %i.os, %.380.i.i
  %i.ou = sub i32 %.082.lcssa.i.i, %.380.i.i
  %xtraiter = and i32 %i.ot, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph108.i.i, %.prol.preheader
  %.4106.i.i.prol = phi ptr [ %i.ox, %.prol.preheader ], [ %.3.i.i, %.lr.ph108.i.i ] ; 2 uses
  %.481105.i.i.prol = phi i32 [ %i.oy, %.prol.preheader ], [ %.380.i.i, %.lr.ph108.i.i ]
  %prol.iter = phi i32 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph108.i.i ]
  %i.ov = load i32, ptr %i.or, align 4
  %i.ow = add i32 %i.ov, 1
  store i32 %i.ow, ptr %i.or, align 4
  %i.ox = getelementptr inbounds nuw i8, ptr %.4106.i.i.prol, i64 4 ; 3 uses
  store i32 %i.mv, ptr %.4106.i.i.prol, align 4
  %i.oy = add i32 %.481105.i.i.prol, 1            ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !230

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph108.i.i
  %.lcssa598.unr = phi ptr [ poison, %.lr.ph108.i.i ], [ %i.ox, %.prol.preheader ]
  %.4106.i.i.unr = phi ptr [ %.3.i.i, %.lr.ph108.i.i ], [ %i.ox, %.prol.preheader ]
  %.481105.i.i.unr = phi i32 [ %.380.i.i, %.lr.ph108.i.i ], [ %i.oy, %.prol.preheader ]
  %i.oz = icmp ult i32 %i.ou, 3
  br i1 %i.oz, label %._crit_edge109.loopexit.i.i, label %.lr.ph108.i.i.new

.lr.ph108.i.i.new:                                ; preds = %.prol.loopexit, %.lr.ph108.i.i.new
  %.4106.i.i = phi ptr [ %i.pm, %.lr.ph108.i.i.new ], [ %.4106.i.i.unr, %.prol.loopexit ] ; 5 uses
  %.481105.i.i = phi i32 [ %i.pn, %.lr.ph108.i.i.new ], [ %.481105.i.i.unr, %.prol.loopexit ] ; 2 uses
  %i.pa = load i32, ptr %i.or, align 4
  %i.pb = add i32 %i.pa, 1
  store i32 %i.pb, ptr %i.or, align 4
  %i.pc = getelementptr inbounds nuw i8, ptr %.4106.i.i, i64 4
  store i32 %i.mv, ptr %.4106.i.i, align 4
  %i.pd = load i32, ptr %i.or, align 4
  %i.pe = add i32 %i.pd, 1
  store i32 %i.pe, ptr %i.or, align 4
  %i.pf = getelementptr inbounds nuw i8, ptr %.4106.i.i, i64 8
  store i32 %i.mv, ptr %i.pc, align 4
  %i.pg = load i32, ptr %i.or, align 4
  %i.ph = add i32 %i.pg, 1
  store i32 %i.ph, ptr %i.or, align 4
  %i.pi = getelementptr inbounds nuw i8, ptr %.4106.i.i, i64 12
  store i32 %i.mv, ptr %i.pf, align 4
  %i.pj = add i32 %.481105.i.i, 3
  %i.pk = load i32, ptr %i.or, align 4
  %i.pl = add i32 %i.pk, 1
  store i32 %i.pl, ptr %i.or, align 4
  %i.pm = getelementptr inbounds nuw i8, ptr %.4106.i.i, i64 16 ; 2 uses
  store i32 %i.mv, ptr %i.pi, align 4
  %i.pn = add i32 %.481105.i.i, 4
  %.not93.i.i.3 = icmp eq i32 %i.pj, %.082.lcssa.i.i
  br i1 %.not93.i.i.3, label %._crit_edge109.loopexit.i.i, label %.lr.ph108.i.i.new

._crit_edge109.loopexit.i.i:                      ; preds = %.lr.ph108.i.i.new, %.prol.loopexit
  %.lcssa598 = phi ptr [ %.lcssa598.unr, %.prol.loopexit ], [ %i.pm, %.lr.ph108.i.i.new ]
  %i.po = add i32 %.082.lcssa.i.i, 1
  br label %._crit_edge109.i.i

._crit_edge109.i.i:                               ; preds = %._crit_edge109.loopexit.i.i, %.loopexit.i.i, %.loopexit.thread.i.i
  %.481.lcssa.i.i = phi i32 [ %.lcssa.i.i, %.loopexit.i.i ], [ %i.po, %._crit_edge109.loopexit.i.i ], [ %.lcssa.i.i, %.loopexit.thread.i.i ] ; 2 uses
  %.4.lcssa.i.i = phi ptr [ %.3.i.i, %.loopexit.i.i ], [ %.lcssa598, %._crit_edge109.loopexit.i.i ], [ %i.nw, %.loopexit.thread.i.i ] ; 2 uses
  %.not94.i.i = icmp eq i32 %.481.lcssa.i.i, %i.mn
  br i1 %.not94.i.i, label %sdefl_precode.exit.i, label %bb.cc

sdefl_precode.exit.i:                             ; preds = %._crit_edge109.i.i
  %i.pp = ptrtoint ptr %.4.lcssa.i.i to i64
  %i.pq = sub i64 %i.pp, %i.cm
  %i.pr = lshr i64 %i.pq, 2                       ; 2 uses
  %i.ps = trunc i64 %i.pr to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #56
  call fastcc void @sdefl_huff(ptr noundef nonnull %i.c, ptr noundef nonnull %i.b, ptr noundef nonnull %i.d, i32 noundef 19, i32 noundef 7)
  %i.pt = load i8, ptr %i.cn, align 1             ; 2 uses
  %.not.i157 = icmp eq i8 %i.pt, 0
  %i.pu = load i8, ptr %i.co, align 1             ; 3 uses
  br i1 %.not.i157, label %bb.ch, label %sdefl_precode.exit.i.sdefl_precode.exit._crit_edge.i_crit_edge

sdefl_precode.exit.i.sdefl_precode.exit._crit_edge.i_crit_edge: ; preds = %sdefl_precode.exit.i
  %.pre346 = load i8, ptr %i.cp, align 2
  br label %vector.ph

bb.ch:                                            ; preds = %sdefl_precode.exit.i
  %.not.1.i = icmp eq i8 %i.pu, 0
  %.pre347 = load i8, ptr %i.cp, align 2          ; 3 uses
  br i1 %.not.1.i, label %bb.ci, label %vector.ph

bb.ci:                                            ; preds = %bb.ch
  %.not.2.i = icmp eq i8 %.pre347, 0
  br i1 %.not.2.i, label %bb.cj, label %vector.ph

bb.cj:                                            ; preds = %bb.ci
  %i.pv = load i8, ptr %i.cq, align 2
  %.not.3.i = icmp eq i8 %i.pv, 0
  br i1 %.not.3.i, label %bb.ck, label %vector.ph

bb.ck:                                            ; preds = %bb.cj
  %i.pw = load i8, ptr %i.cr, align 1
  %.not.4.i = icmp eq i8 %i.pw, 0
  br i1 %.not.4.i, label %bb.cl, label %vector.ph

bb.cl:                                            ; preds = %bb.ck
  %i.px = load i8, ptr %i.cs, align 1
  %.not.5.i = icmp eq i8 %i.px, 0
  br i1 %.not.5.i, label %bb.cm, label %vector.ph

bb.cm:                                            ; preds = %bb.cl
  %i.py = load i8, ptr %i.ct, align 4
  %.not.6.i = icmp eq i8 %i.py, 0
  br i1 %.not.6.i, label %bb.cn, label %vector.ph

bb.cn:                                            ; preds = %bb.cm
  %i.pz = load i8, ptr %i.cu, align 4
  %.not.7.i = icmp eq i8 %i.pz, 0
  br i1 %.not.7.i, label %bb.co, label %vector.ph

bb.co:                                            ; preds = %bb.cn
  %i.qa = load i8, ptr %i.cv, align 1
  %.not.8.i = icmp eq i8 %i.qa, 0
  br i1 %.not.8.i, label %bb.cp, label %vector.ph

bb.cp:                                            ; preds = %bb.co
  %i.qb = load i8, ptr %i.cw, align 1
  %.not.9.i = icmp eq i8 %i.qb, 0
  br i1 %.not.9.i, label %bb.cq, label %vector.ph

bb.cq:                                            ; preds = %bb.cp
  %i.qc = load i8, ptr %i.cx, align 2
  %.not.10.i = icmp eq i8 %i.qc, 0
  br i1 %.not.10.i, label %bb.cr, label %vector.ph

bb.cr:                                            ; preds = %bb.cq
  %i.qd = load i8, ptr %i.cy, align 2
  %.not.11.i = icmp eq i8 %i.qd, 0
  br i1 %.not.11.i, label %bb.cs, label %vector.ph

bb.cs:                                            ; preds = %bb.cr
  %i.qe = load i8, ptr %i.cz, align 1
  %.not.12.i = icmp eq i8 %i.qe, 0
  br i1 %.not.12.i, label %bb.ct, label %vector.ph

bb.ct:                                            ; preds = %bb.cs
  %i.qf = load i8, ptr %i.da, align 1
  %.not.13.i = icmp eq i8 %i.qf, 0
  br i1 %.not.13.i, label %bb.cu, label %vector.ph

bb.cu:                                            ; preds = %bb.ct
  %i.qg = load i8, ptr %i.db, align 8
  %.not.14.i = icmp eq i8 %i.qg, 0
  %spec.select.i = select i1 %.not.14.i, i32 4, i32 5
  br label %vector.ph

vector.ph:                                        ; preds = %bb.ch, %bb.ci, %bb.cj, %bb.ck, %bb.cl, %bb.cm, %bb.cn, %bb.co, %bb.cp, %bb.cq, %bb.cr, %bb.cs, %bb.ct, %bb.cu, %sdefl_precode.exit.i.sdefl_precode.exit._crit_edge.i_crit_edge
  %i.qh = phi i8 [ 0, %bb.cr ], [ %.pre346, %sdefl_precode.exit.i.sdefl_precode.exit._crit_edge.i_crit_edge ], [ %.pre347, %bb.ch ], [ 0, %bb.cu ], [ %.pre347, %bb.ci ], [ 0, %bb.co ], [ 0, %bb.cj ], [ 0, %bb.ct ], [ 0, %bb.ck ], [ 0, %bb.cq ], [ 0, %bb.cl ], [ 0, %bb.cs ], [ 0, %bb.cm ], [ 0, %bb.cp ], [ 0, %bb.cn ]
  %i.qi = phi i8 [ 0, %bb.cr ], [ %i.pu, %sdefl_precode.exit.i.sdefl_precode.exit._crit_edge.i_crit_edge ], [ %i.pu, %bb.ch ], [ 0, %bb.cu ], [ 0, %bb.ci ], [ 0, %bb.co ], [ 0, %bb.cj ], [ 0, %bb.ct ], [ 0, %bb.ck ], [ 0, %bb.cq ], [ 0, %bb.cl ], [ 0, %bb.cs ], [ 0, %bb.cm ], [ 0, %bb.cp ], [ 0, %bb.cn ]
  %.0116.lcssa.i = phi i32 [ 8, %bb.cr ], [ 19, %sdefl_precode.exit.i.sdefl_precode.exit._crit_edge.i_crit_edge ], [ 18, %bb.ch ], [ %spec.select.i, %bb.cu ], [ 17, %bb.ci ], [ 11, %bb.co ], [ 16, %bb.cj ], [ 6, %bb.ct ], [ 15, %bb.ck ], [ 9, %bb.cq ], [ 14, %bb.cl ], [ 7, %bb.cs ], [ 13, %bb.cm ], [ 10, %bb.cp ], [ 12, %bb.cn ] ; 3 uses
  %i.qj = mul nuw nsw i32 %.0116.lcssa.i, 3
  %i.qk = load i32, ptr %i.d, align 16
  %i.ql = load i8, ptr %i.c, align 16
  %i.qm = zext i8 %i.ql to i32
  %i.qn = mul i32 %i.qk, %i.qm
  %5 = load <4 x i8>, ptr %i.cq, align 2
  %i.qo = load <8 x i32>, ptr %i.dc, align 4
  %6 = load <4 x i8>, ptr %i.cy, align 2
  %7 = shufflevector <4 x i8> %5, <4 x i8> %6, <8 x i32> <i32 poison, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6>
  %8 = insertelement <8 x i8> %7, i8 %i.qi, i64 0
  %i.qp = zext <8 x i8> %8 to <8 x i32>
  %i.qq = mul <8 x i32> %i.qo, %i.qp
  %i.qr = load <4 x i32>, ptr %i.dd, align 4
  %i.qs = load <4 x i8>, ptr %i.cz, align 1
  %i.qt = zext <4 x i8> %i.qs to <4 x i32>
  %i.qu = mul <4 x i32> %i.qr, %i.qt
  %i.qv = load i32, ptr %i.de, align 4
  %i.qw = load i8, ptr %i.cr, align 1
  %i.qx = zext i8 %i.qw to i32
  %i.qy = mul i32 %i.qv, %i.qx
  %i.qz = load i32, ptr %i.df, align 8
  %i.ra = zext i8 %i.qh to i32
  %i.rb = mul i32 %i.qz, %i.ra
  %i.rc = load i32, ptr %i.dg, align 4
  %i.rd = zext i8 %i.pt to i32
  %i.re = mul i32 %i.rc, %i.rd
  %i.rf = load i8, ptr %i.dh, align 16
  %i.rg = zext i8 %i.rf to i32
  %i.rh = add nuw nsw i32 %i.rg, 2
  %i.ri = load i32, ptr %i.cj, align 16
  %i.rj = mul i32 %i.rh, %i.ri
  %i.rk = load i8, ptr %i.di, align 1
  %i.rl = zext i8 %i.rk to i32
  %i.rm = add nuw nsw i32 %i.rl, 3
  %i.rn = load i32, ptr %i.cl, align 4
  %i.ro = mul i32 %i.rm, %i.rn
  %i.rp = load i8, ptr %i.dj, align 2
  %i.rq = zext i8 %i.rp to i32
  %i.rr = add nuw nsw i32 %i.rq, 7
  %i.rs = load i32, ptr %i.ck, align 8
  %i.rt = mul i32 %i.rr, %i.rs
  %i.ru = call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.qq)
  %i.rv = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.qu)
  %op.rdx577 = add i32 %i.rv, %i.qj
  %op.rdx578 = add i32 %i.qn, %i.qy
  %op.rdx579 = add i32 %i.rb, %i.re
  %op.rdx580 = add i32 %i.rj, %i.ro
  %op.rdx581 = add i32 %i.rt, 14
  %op.rdx582 = add i32 %op.rdx577, %op.rdx578
  %op.rdx583 = add i32 %op.rdx579, %op.rdx580
  %op.rdx584 = add i32 %op.rdx581, %i.ru
  %op.rdx585 = add i32 %op.rdx582, %op.rdx583
  %op.rdx586 = add i32 %op.rdx585, %op.rdx584
  %i.rw = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %op.rdx586, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <4 x i32> [ %i.rw, %vector.ph ], [ %i.sf, %vector.body ]
  %vec.phi556 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.sg, %vector.body ]
  %i.rx = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %index ; 2 uses
  %i.ry = getelementptr inbounds nuw i8, ptr %i.rx, i64 16
  %wide.load = load <4 x i32>, ptr %i.rx, align 4
  %wide.load557 = load <4 x i32>, ptr %i.ry, align 4
  %i.rz = getelementptr inbounds nuw i8, ptr %i.n, i64 %index ; 2 uses
  %i.sa = getelementptr inbounds nuw i8, ptr %i.rz, i64 4
  %wide.load558 = load <4 x i8>, ptr %i.rz, align 1
  %wide.load559 = load <4 x i8>, ptr %i.sa, align 1
  %i.sb = zext <4 x i8> %wide.load558 to <4 x i32>
  %i.sc = zext <4 x i8> %wide.load559 to <4 x i32>
  %i.sd = mul <4 x i32> %wide.load, %i.sb
  %i.se = mul <4 x i32> %wide.load557, %i.sc
  %i.sf = add <4 x i32> %i.sd, %vec.phi           ; 2 uses
  %i.sg = add <4 x i32> %i.se, %vec.phi556        ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.sh = icmp eq i64 %index.next, 256
  br i1 %i.sh, label %sdefl_blk_type.exit.i, label %vector.body, !llvm.loop !231

sdefl_blk_type.exit.i:                            ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.sg, %i.sf
  %i.si = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx)
  %i.sj = load i8, ptr %i.dk, align 4
  %i.sk = zext i8 %i.sj to i32
  %i.sl = load i32, ptr %i.u, align 4
  %i.sm = load i8, ptr %i.bd, align 1
  %i.sn = zext i8 %i.sm to i32
  %i.so = mul i32 %i.sl, %i.sn
  %i.sp = load <16 x i8>, ptr %i.bc, align 2
  %i.sq = load <8 x i8>, ptr %i.am, align 2
  %i.sr = load <28 x i32>, ptr %i.dl, align 4
  %i.ss = load <4 x i8>, ptr %i.ae, align 2
  %i.st = load <4 x i32>, ptr %i.v, align 4
  %i.su = load <4 x i8>, ptr %i.x, align 4
  %i.sv = shufflevector <4 x i8> %i.ss, <4 x i8> %i.su, <32 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.sw = shufflevector <16 x i8> %i.sp, <16 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.sx = shufflevector <32 x i8> %i.sw, <32 x i8> %i.sv, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.sy = shufflevector <8 x i8> %i.sq, <8 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.sz = shufflevector <32 x i8> %i.sx, <32 x i8> %i.sy, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.ta = zext <32 x i8> %i.sz to <32 x i32>
  %i.tb = add nuw nsw <32 x i32> %i.ta, <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 2, i32 2, i32 2, i32 2, i32 3, i32 3, i32 3, i32 3, i32 4, i32 4, i32 4, i32 4, i32 5, i32 5, i32 5, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0>
  %i.tc = shufflevector <28 x i32> %i.sr, <28 x i32> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.td = shufflevector <4 x i32> %i.st, <4 x i32> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.te = shufflevector <32 x i32> %i.tc, <32 x i32> %i.td, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 32, i32 33, i32 34, i32 35>
  %i.tf = mul <32 x i32> %i.te, %i.tb             ; 2 uses
  %i.tg = load <24 x i32>, ptr %i.dm, align 4
  %i.th = load <24 x i8>, ptr %i.cf, align 4
  %i.ti = zext <24 x i8> %i.th to <24 x i32>
  %i.tj = add nuw nsw <24 x i32> %i.ti, <i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 4, i32 4, i32 5, i32 5, i32 6, i32 6, i32 7, i32 7, i32 8, i32 8, i32 9, i32 9, i32 10, i32 10, i32 11, i32 11, i32 12, i32 12>
  %i.tk = mul <24 x i32> %i.tj, %i.tg
  %i.tl = load i32, ptr %i.dn, align 4
  %i.tm = load i8, ptr %i.bh, align 4
  %i.tn = zext i8 %i.tm to i32
  %i.to = add nuw nsw i32 %i.tn, 13
  %i.tp = mul i32 %i.to, %i.tl
  %i.tq = load i32, ptr %i.do, align 4
  %i.tr = load i8, ptr %i.bg, align 1
  %i.ts = zext i8 %i.tr to i32
  %i.tt = add nuw nsw i32 %i.ts, 13
  %i.tu = mul i32 %i.tt, %i.tq
  %i.tv = shufflevector <24 x i32> %i.tk, <24 x i32> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.tw = add <32 x i32> %i.tf, %i.tv
  %i.tx = shufflevector <32 x i32> %i.tw, <32 x i32> %i.tf, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.ty = call i32 @llvm.vector.reduce.add.v32i32(<32 x i32> %i.tx)
  %op.rdx = add i32 %i.ty, %i.so
  %op.rdx560 = add i32 %i.tp, %i.tu
  %op.rdx561 = add i32 %i.si, %i.sk
  %op.rdx562 = add i32 %op.rdx, %op.rdx560
  %op.rdx563 = add i32 %op.rdx562, %op.rdx561
  %i.tz = add nsw i32 %i.ka, 65534
  %i.ua = sdiv i32 %i.tz, 65535                   ; 3 uses
  %i.ub = mul nsw i32 %i.ua, 5
  %i.uc = add nsw i32 %i.ub, %i.ka
  %i.ud = shl i32 %i.uc, 3
  %i.ue = add i32 %i.ud, 24
  %.not212.i = icmp slt i32 %op.rdx563, %i.ue
  br i1 %.not212.i, label %bb.cw, label %.preheader218.i

.preheader218.i:                                  ; preds = %sdefl_blk_type.exit.i
  %i.uf = icmp sgt i32 %i.ka, 0
  br i1 %i.uf, label %.lr.ph.i, label %sdefl_flush.exit

.lr.ph.i:                                         ; preds = %.preheader218.i
  %i.ug = sext i32 %.089 to i64
  %i.uh = getelementptr inbounds i8, ptr %2, i64 %i.ug
  %i.ui = zext nneg i32 %i.ua to i64
  %smax.i = call i32 @llvm.smax.i32(i32 %i.ua, i32 1)
  %wide.trip.count.i158 = zext nneg i32 %smax.i to i64
  br label %bb.cv

bb.cv:                                            ; preds = %sdefl_put.exit138.i, %.lr.ph.i
  %.2 = phi ptr [ %.0198, %.lr.ph.i ], [ %i.wf, %sdefl_put.exit138.i ] ; 2 uses
  %indvars.iv.i159 = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i160, %sdefl_put.exit138.i ] ; 2 uses
  %.0228.i = phi i32 [ %i.ka, %.lr.ph.i ], [ %i.wg, %sdefl_put.exit138.i ] ; 2 uses
  %indvars.iv.next.i160 = add nuw nsw i64 %indvars.iv.i159, 1 ; 3 uses
  %i.uj = icmp eq i64 %indvars.iv.next.i160, %i.ui
  %i.uk = select i1 %i.jy, i1 %i.uj, i1 false
  %i.ul = zext i1 %i.uk to i32
  %i.um = call i32 @llvm.smin.i32(i32 %.0228.i, i32 65535) ; 3 uses
  %i.un = load i32, ptr %i.dp, align 4            ; 3 uses
  %i.uo = shl nuw i32 %i.ul, %i.un
  %i.up = load i32, ptr %0, align 4
  %i.uq = or i32 %i.uo, %i.up                     ; 3 uses
  store i32 %i.uq, ptr %0, align 4
  %i.ur = add nsw i32 %i.un, 1                    ; 2 uses
  store i32 %i.ur, ptr %i.dp, align 4
  %i.us = icmp sgt i32 %i.un, 6
  br i1 %i.us, label %.lr.ph.i126.i, label %sdefl_put.exit.i

.lr.ph.i126.i:                                    ; preds = %bb.cv, %.lr.ph.i126.i
  %i.ut = phi i32 [ %i.uw, %.lr.ph.i126.i ], [ %i.uq, %bb.cv ]
  %.7 = phi ptr [ %i.uz, %.lr.ph.i126.i ], [ %.2, %bb.cv ] ; 2 uses
  %i.uu = trunc i32 %i.ut to i8
  store i8 %i.uu, ptr %.7, align 1
  %i.uv = load i32, ptr %0, align 4
  %i.uw = ashr i32 %i.uv, 8                       ; 3 uses
  store i32 %i.uw, ptr %0, align 4
  %i.ux = load i32, ptr %i.dp, align 4            ; 2 uses
  %i.uy = add nsw i32 %i.ux, -8                   ; 2 uses
  store i32 %i.uy, ptr %i.dp, align 4
  %i.uz = getelementptr inbounds nuw i8, ptr %.7, i64 1 ; 2 uses
  %i.va = icmp sgt i32 %i.ux, 15
  br i1 %i.va, label %.lr.ph.i126.i, label %sdefl_put.exit.i

sdefl_put.exit.i:                                 ; preds = %.lr.ph.i126.i, %bb.cv
  %i.vb = phi i32 [ %i.uq, %bb.cv ], [ %i.uw, %.lr.ph.i126.i ] ; 2 uses
  %.3200 = phi ptr [ %.2, %bb.cv ], [ %i.uz, %.lr.ph.i126.i ] ; 2 uses
  %i.vc = phi i32 [ %i.ur, %bb.cv ], [ %i.uy, %.lr.ph.i126.i ] ; 2 uses
  %i.vd = add nsw i32 %i.vc, 2                    ; 2 uses
  store i32 %i.vd, ptr %i.dp, align 4
  %i.ve = icmp sgt i32 %i.vc, 5
  br i1 %i.ve, label %.lr.ph.i130.i, label %sdefl_put.exit132.i

.lr.ph.i130.i:                                    ; preds = %sdefl_put.exit.i, %.lr.ph.i130.i
  %i.vf = phi i32 [ %i.vi, %.lr.ph.i130.i ], [ %i.vb, %sdefl_put.exit.i ]
  %.6 = phi ptr [ %i.vl, %.lr.ph.i130.i ], [ %.3200, %sdefl_put.exit.i ] ; 2 uses
  %i.vg = trunc i32 %i.vf to i8
  store i8 %i.vg, ptr %.6, align 1
  %i.vh = load i32, ptr %0, align 4
  %i.vi = ashr i32 %i.vh, 8                       ; 3 uses
  store i32 %i.vi, ptr %0, align 4
  %i.vj = load i32, ptr %i.dp, align 4            ; 2 uses
  %i.vk = add nsw i32 %i.vj, -8                   ; 2 uses
  store i32 %i.vk, ptr %i.dp, align 4
  %i.vl = getelementptr inbounds nuw i8, ptr %.6, i64 1 ; 2 uses
  %i.vm = icmp sgt i32 %i.vj, 15
  br i1 %i.vm, label %.lr.ph.i130.i, label %sdefl_put.exit132.i

sdefl_put.exit132.i:                              ; preds = %.lr.ph.i130.i, %sdefl_put.exit.i
  %i.vn = phi i32 [ %i.vb, %sdefl_put.exit.i ], [ %i.vi, %.lr.ph.i130.i ]
  %.4 = phi ptr [ %.3200, %sdefl_put.exit.i ], [ %i.vl, %.lr.ph.i130.i ] ; 2 uses
  %i.vo = phi i32 [ %i.vd, %sdefl_put.exit.i ], [ %i.vk, %.lr.ph.i130.i ]
end_hunk_1
