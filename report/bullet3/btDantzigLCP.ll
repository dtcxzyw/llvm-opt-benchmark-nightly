Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btDantzigLCP?download=true
inline.NumInlined: 132
inline.NumDeleted: 60
loop-unroll.NumRuntimeUnrolled: 68
loop-unroll.NumUnrolled: 68
begin_hunk_0_@_ZN5btLCP15transfer_i_to_CEi:bb.a
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !45
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !46
  %i.cx = load i32, ptr %0, align 8, !tbaa !29
  tail call fastcc void @_ZL13btSwapProblemPPfS_S_S_S_S_PiPbS1_iiiii(ptr noundef nonnull %i.cg, ptr noundef %i.ci, ptr noundef %i.ck, ptr noundef %i.cm, ptr noundef %i.co, ptr noundef %i.cq, ptr noundef %i.cs, ptr noundef %i.cu, ptr noundef %i.cw, i32 noundef %i.cx, i32 noundef %i.b, i32 noundef %1, i32 noundef 1)
  %i.cy = load i32, ptr %i.a, align 4, !tbaa !32  ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !48
  %i.db = sext i32 %i.cy to i64
  %i.dc = getelementptr inbounds [4 x i8], ptr %i.da, i64 %i.db
  store i32 %i.cy, ptr %i.dc, align 4, !tbaa !50
  %i.dd = add nsw i32 %i.cy, 1
  store i32 %i.dd, ptr %i.a, align 4, !tbaa !32
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN5btLCP22transfer_i_from_N_to_CEi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(144) %0, i32 noundef %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 4 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !32   ; 5 uses
  %i.c = icmp sgt i32 %i.b, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !34   ; 2 uses
  %i.f = sext i32 %1 to i64                       ; 6 uses
  %i.g = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.f
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !49   ; 13 uses
  %i.i = ptrtoaddr ptr %i.h to i64
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !42   ; 13 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !48   ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load i32, ptr %i.n, align 8, !tbaa !31   ; 6 uses
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %.lr.ph.preheader, label %.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.q = ptrtoaddr ptr %i.k to i64
  %wide.trip.count = zext nneg i32 %i.o to i64    ; 5 uses
  %min.iters.check = icmp ult i32 %i.o, 8
  %i.r = sub i64 %i.i, %i.q
  %diff.check = icmp ugt i64 %i.r, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.preheader98, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %index ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %wide.load = load <4 x float>, ptr %i.s, align 4, !tbaa !17
  %wide.load73 = load <4 x float>, ptr %i.t, align 4, !tbaa !17
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %index ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store <4 x float> %wide.load, ptr %i.u, align 4, !tbaa !17
  store <4 x float> %wide.load73, ptr %i.v, align 4, !tbaa !17
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.w = icmp eq i64 %index.next, %n.vec
  br i1 %i.w, label %middle.block, label %vector.body, !llvm.loop !130

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.preheader, label %.lr.ph.preheader98

.lr.ph.preheader98:                               ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader98, %.lr.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.prol ], [ %indvars.iv.ph, %.lr.ph.preheader98 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader98 ]
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.prol
  %i.y = load float, ptr %i.x, align 4, !tbaa !17
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv.prol
  store float %i.y, ptr %i.z, align 4, !tbaa !17
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !131

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader98
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader98 ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.aa = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.ab = icmp ugt i64 %i.aa, -4
  br i1 %i.ab, label %.preheader, label %.lr.ph

.preheader:                                       ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.b
  %.038.lcssa = phi i32 [ 0, %bb.b ], [ %i.o, %middle.block ], [ %i.o, %.lr.ph ], [ %i.o, %.lr.ph.prol.loopexit ] ; 2 uses
  %i.ac = icmp samesign ult i32 %.038.lcssa, %i.b
  br i1 %i.ac, label %.lr.ph41.preheader, label %._crit_edge

.lr.ph41.preheader:                               ; preds = %.preheader
  %i.ad = zext nneg i32 %.038.lcssa to i64        ; 4 uses
  %wide.trip.count51 = zext nneg i32 %i.b to i64  ; 3 uses
  %i.ae = sub nsw i64 %wide.trip.count51, %i.ad
  %xtraiter99 = and i64 %i.ae, 3                  ; 2 uses
  %lcmp.mod100.not = icmp eq i64 %xtraiter99, 0
  br i1 %lcmp.mod100.not, label %.lr.ph41.prol.loopexit, label %.lr.ph41.prol

.lr.ph41.prol:                                    ; preds = %.lr.ph41.preheader, %.lr.ph41.prol
  %indvars.iv48.prol = phi i64 [ %indvars.iv.next49.prol, %.lr.ph41.prol ], [ %i.ad, %.lr.ph41.preheader ] ; 3 uses
  %prol.iter101 = phi i64 [ %prol.iter101.next, %.lr.ph41.prol ], [ 0, %.lr.ph41.preheader ]
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv48.prol
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !50
  %i.ah = sext i32 %i.ag to i64
  %i.ai = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.ah
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !17
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv48.prol
  store float %i.aj, ptr %i.ak, align 4, !tbaa !17
  %indvars.iv.next49.prol = add nuw nsw i64 %indvars.iv48.prol, 1 ; 2 uses
  %prol.iter101.next = add i64 %prol.iter101, 1   ; 2 uses
  %prol.iter101.cmp.not = icmp eq i64 %prol.iter101.next, %xtraiter99
  br i1 %prol.iter101.cmp.not, label %.lr.ph41.prol.loopexit, label %.lr.ph41.prol, !llvm.loop !132

.lr.ph41.prol.loopexit:                           ; preds = %.lr.ph41.prol, %.lr.ph41.preheader
  %indvars.iv48.unr = phi i64 [ %i.ad, %.lr.ph41.preheader ], [ %indvars.iv.next49.prol, %.lr.ph41.prol ]
  %i.al = sub nsw i64 %i.ad, %wide.trip.count51
  %i.am = icmp ugt i64 %i.al, -4
  br i1 %i.am, label %._crit_edge, label %.lr.ph41

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 6 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv
  %i.ao = load float, ptr %i.an, align 4, !tbaa !17
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv
  store float %i.ao, ptr %i.ap, align 4, !tbaa !17
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.next
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !17
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv.next
  store float %i.ar, ptr %i.as, align 4, !tbaa !17
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.next.1
  %i.au = load float, ptr %i.at, align 4, !tbaa !17
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv.next.1
  store float %i.au, ptr %i.av, align 4, !tbaa !17
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.next.2
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !17
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv.next.2
  store float %i.ax, ptr %i.ay, align 4, !tbaa !17
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %.preheader, label %.lr.ph, !llvm.loop !133

.lr.ph41:                                         ; preds = %.lr.ph41.prol.loopexit, %.lr.ph41
  %indvars.iv48 = phi i64 [ %indvars.iv.next49.3, %.lr.ph41 ], [ %indvars.iv48.unr, %.lr.ph41.prol.loopexit ] ; 6 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv48
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !50
  %i.bb = sext i32 %i.ba to i64
  %i.bc = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.bb
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !17
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv48
  store float %i.bd, ptr %i.be, align 4, !tbaa !17
  %indvars.iv.next49 = add nuw nsw i64 %indvars.iv48, 1 ; 2 uses
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv.next49
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !50
  %i.bh = sext i32 %i.bg to i64
  %i.bi = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.bh
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !17
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv.next49
  store float %i.bj, ptr %i.bk, align 4, !tbaa !17
  %indvars.iv.next49.1 = add nuw nsw i64 %indvars.iv48, 2 ; 2 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv.next49.1
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !50
  %i.bn = sext i32 %i.bm to i64
  %i.bo = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.bn
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !17
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv.next49.1
  store float %i.bp, ptr %i.bq, align 4, !tbaa !17
  %indvars.iv.next49.2 = add nuw nsw i64 %indvars.iv48, 3 ; 2 uses
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv.next49.2
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !50
  %i.bt = sext i32 %i.bs to i64
  %i.bu = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.bt
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !17
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv.next49.2
  store float %i.bv, ptr %i.bw, align 4, !tbaa !17
  %indvars.iv.next49.3 = add nuw nsw i64 %indvars.iv48, 4 ; 2 uses
  %exitcond52.not.3 = icmp eq i64 %indvars.iv.next49.3, %wide.trip.count51
  br i1 %exitcond52.not.3, label %._crit_edge, label %.lr.ph41, !llvm.loop !134

._crit_edge:                                      ; preds = %.lr.ph41.prol.loopexit, %.lr.ph41, %.preheader
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !40
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !30
  tail call void @_Z9btSolveL1PKfPfii(ptr noundef %i.by, ptr noundef %i.k, i32 noundef %i.b, i32 noundef %i.ca)
  %i.cb = load i32, ptr %i.a, align 4, !tbaa !32  ; 9 uses
  %i.cc = load ptr, ptr %i.bx, align 8, !tbaa !40 ; 2 uses
  %i.cd = ptrtoaddr ptr %i.cc to i64              ; 2 uses
  %i.ce = load i32, ptr %i.bz, align 4, !tbaa !30
  %i.cf = mul i32 %i.ce, %i.cb
  %i.cg = sext i32 %i.cf to i64                   ; 2 uses
  %i.ch = getelementptr inbounds [4 x i8], ptr %i.cc, i64 %i.cg ; 4 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !43 ; 8 uses
  %i.ck = ptrtoaddr ptr %i.cj to i64              ; 3 uses
  %i.cl = load ptr, ptr %i.j, align 8, !tbaa !42  ; 8 uses
  %i.cm = ptrtoaddr ptr %i.cl to i64              ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !41 ; 6 uses
  %i.cp = ptrtoaddr ptr %i.co to i64              ; 2 uses
  %i.cq = icmp sgt i32 %i.cb, 0
  br i1 %i.cq, label %.lr.ph44.preheader, label %._crit_edge.i.thread68

._crit_edge.i.thread68:                           ; preds = %._crit_edge
  %i.cr = load ptr, ptr %i.d, align 8, !tbaa !34  ; 2 uses
  %i.cs = getelementptr inbounds [8 x i8], ptr %i.cr, i64 %i.f
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !49
  %i.cu = getelementptr inbounds [4 x i8], ptr %i.ct, i64 %i.f
  %i.cv = load float, ptr %i.cu, align 4, !tbaa !17
  br label %_Z10btLargeDotPKfS0_i.exit

.lr.ph44.preheader:                               ; preds = %._crit_edge
  %wide.trip.count56 = zext nneg i32 %i.cb to i64 ; 5 uses
  %min.iters.check84 = icmp ult i32 %i.cb, 28
  br i1 %min.iters.check84, label %.lr.ph44.preheader97, label %vector.memcheck74

vector.memcheck74:                                ; preds = %.lr.ph44.preheader
  %i.cw = shl nsw i64 %i.cg, 2                    ; 2 uses
  %i.cx = add i64 %i.cw, %i.cd
  %i.cy = sub i64 %i.ck, %i.cx
  %diff.check75 = icmp ugt i64 %i.cy, -32
  %i.cz = sub i64 %i.cm, %i.ck
  %diff.check76 = icmp ugt i64 %i.cz, -32
  %conflict.rdx = or i1 %diff.check75, %diff.check76
  %i.da = sub i64 %i.cp, %i.ck
  %diff.check77 = icmp ugt i64 %i.da, -32
  %conflict.rdx78 = or i1 %conflict.rdx, %diff.check77
  %2 = add i64 %i.cw, %i.cd                       ; 2 uses
  %i.db = sub i64 %i.cm, %2
  %diff.check79 = icmp ugt i64 %i.db, -32
  %conflict.rdx80 = or i1 %conflict.rdx78, %diff.check79
  %i.dc = sub i64 %i.cp, %2
  %diff.check81 = icmp ugt i64 %i.dc, -32
  %conflict.rdx82 = or i1 %conflict.rdx80, %diff.check81
  br i1 %conflict.rdx82, label %.lr.ph44.preheader97, label %vector.ph85

vector.ph85:                                      ; preds = %vector.memcheck74
  %n.vec86 = and i64 %wide.trip.count56, 2147483640 ; 3 uses
  br label %vector.body87

vector.body87:                                    ; preds = %vector.body87, %vector.ph85
  %index88 = phi i64 [ 0, %vector.ph85 ], [ %index.next93, %vector.body87 ] ; 5 uses
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %index88 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  %wide.load89 = load <4 x float>, ptr %i.dd, align 4, !tbaa !17
  %wide.load90 = load <4 x float>, ptr %i.de, align 4, !tbaa !17
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %index88 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  %wide.load91 = load <4 x float>, ptr %i.df, align 4, !tbaa !17
  %wide.load92 = load <4 x float>, ptr %i.dg, align 4, !tbaa !17
  %i.dh = fmul <4 x float> %wide.load89, %wide.load91 ; 2 uses
  %i.di = fmul <4 x float> %wide.load90, %wide.load92 ; 2 uses
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %index88 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  store <4 x float> %i.dh, ptr %i.dj, align 4, !tbaa !17
  store <4 x float> %i.di, ptr %i.dk, align 4, !tbaa !17
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %index88 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  store <4 x float> %i.dh, ptr %i.dl, align 4, !tbaa !17
  store <4 x float> %i.di, ptr %i.dm, align 4, !tbaa !17
  %index.next93 = add nuw i64 %index88, 8         ; 2 uses
  %i.dn = icmp eq i64 %index.next93, %n.vec86
  br i1 %i.dn, label %middle.block94, label %vector.body87, !llvm.loop !135

middle.block94:                                   ; preds = %vector.body87
  %cmp.n95 = icmp eq i64 %n.vec86, %wide.trip.count56
  br i1 %cmp.n95, label %._crit_edge45, label %.lr.ph44.preheader97

.lr.ph44.preheader97:                             ; preds = %vector.memcheck74, %.lr.ph44.preheader, %middle.block94
  %indvars.iv53.ph = phi i64 [ 0, %vector.memcheck74 ], [ 0, %.lr.ph44.preheader ], [ %n.vec86, %middle.block94 ] ; 7 uses
  %xtraiter102 = and i64 %wide.trip.count56, 1
  %lcmp.mod103.not = icmp eq i64 %xtraiter102, 0
  br i1 %lcmp.mod103.not, label %.lr.ph44.prol.loopexit, label %.lr.ph44.prol

.lr.ph44.prol:                                    ; preds = %.lr.ph44.preheader97
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %indvars.iv53.ph
  %i.dp = load float, ptr %i.do, align 4, !tbaa !17
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %indvars.iv53.ph
  %i.dr = load float, ptr %i.dq, align 4, !tbaa !17
  %i.ds = fmul float %i.dp, %i.dr                 ; 2 uses
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %indvars.iv53.ph
  store float %i.ds, ptr %i.dt, align 4, !tbaa !17
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %indvars.iv53.ph
  store float %i.ds, ptr %i.du, align 4, !tbaa !17
  %indvars.iv.next54.prol = or disjoint i64 %indvars.iv53.ph, 1
  br label %.lr.ph44.prol.loopexit

.lr.ph44.prol.loopexit:                           ; preds = %.lr.ph44.prol, %.lr.ph44.preheader97
  %indvars.iv53.unr = phi i64 [ %indvars.iv53.ph, %.lr.ph44.preheader97 ], [ %indvars.iv.next54.prol, %.lr.ph44.prol ]
  %i.dv = add nsw i64 %wide.trip.count56, -1
  %i.dw = icmp eq i64 %indvars.iv53.ph, %i.dv
  br i1 %i.dw, label %._crit_edge45, label %.lr.ph44

._crit_edge45:                                    ; preds = %.lr.ph44.prol.loopexit, %.lr.ph44, %middle.block94
  %i.dx = load ptr, ptr %i.d, align 8, !tbaa !34  ; 3 uses
  %i.dy = getelementptr inbounds [8 x i8], ptr %i.dx, i64 %i.f
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !49
  %i.ea = getelementptr inbounds [4 x i8], ptr %i.dz, i64 %i.f
  %i.eb = load float, ptr %i.ea, align 4, !tbaa !17 ; 2 uses
  %.02531.i = add nsw i32 %i.cb, -2               ; 3 uses
  %.not = icmp eq i32 %i.cb, 1
  br i1 %.not, label %.lr.ph43.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge45, %.lr.ph.i
  %.02535.i = phi i32 [ %.025.i, %.lr.ph.i ], [ %.02531.i, %._crit_edge45 ] ; 2 uses
  %.034.i = phi float [ %i.ei, %.lr.ph.i ], [ 0.000000e+00, %._crit_edge45 ]
  %.02733.i = phi ptr [ %i.ek, %.lr.ph.i ], [ %i.cl, %._crit_edge45 ] ; 2 uses
  %.02932.i = phi ptr [ %i.ej, %.lr.ph.i ], [ %i.cj, %._crit_edge45 ] ; 2 uses
  %i.ec = load <2 x float>, ptr %.02932.i, align 4, !tbaa !17
  %i.ed = load <2 x float>, ptr %.02733.i, align 4, !tbaa !17
  %i.ee = fmul <2 x float> %i.ec, %i.ed           ; 2 uses
  %i.ef = extractelement <2 x float> %i.ee, i64 0
  %i.eg = fadd float %.034.i, %i.ef
  %i.eh = extractelement <2 x float> %i.ee, i64 1
  %i.ei = fadd float %i.eg, %i.eh                 ; 3 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %.02932.i, i64 8
  %i.ek = getelementptr inbounds nuw i8, ptr %.02733.i, i64 8
  %.025.i = add nsw i32 %.02535.i, -2
  %i.el = icmp samesign ugt i32 %.02535.i, 1
  br i1 %i.el, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !0

._crit_edge.i:                                    ; preds = %.lr.ph.i
  %i.em = lshr i32 %.02531.i, 1
  %i.en = zext nneg i32 %i.em to i64
  %i.eo = shl nuw nsw i64 %i.en, 3
  %i.ep = add nuw nsw i64 %i.eo, 8                ; 2 uses
  %scevgep.i = getelementptr i8, ptr %i.cj, i64 %i.ep
  %scevgep49.i = getelementptr i8, ptr %i.cl, i64 %i.ep
  %i.eq = add nsw i32 %i.cb, -4
  %i.er = and i32 %.02531.i, -2
  %i.es = sub nsw i32 %i.eq, %i.er
  %i.et = icmp eq i32 %i.es, -1
  br i1 %i.et, label %.lr.ph43.i, label %_Z10btLargeDotPKfS0_i.exit

.lr.ph43.i:                                       ; preds = %._crit_edge45, %._crit_edge.i
  %.0.lcssa.i67 = phi float [ %i.ei, %._crit_edge.i ], [ 0.000000e+00, %._crit_edge45 ]
  %.027.lcssa.i66 = phi ptr [ %scevgep49.i, %._crit_edge.i ], [ %i.cl, %._crit_edge45 ]
  %.029.lcssa.i65 = phi ptr [ %scevgep.i, %._crit_edge.i ], [ %i.cj, %._crit_edge45 ]
  %i.eu = load float, ptr %.029.lcssa.i65, align 4, !tbaa !17
  %i.ev = load float, ptr %.027.lcssa.i66, align 4, !tbaa !17
  %i.ew = tail call float @llvm.fmuladd.f32(float %i.eu, float %i.ev, float %.0.lcssa.i67)
  br label %_Z10btLargeDotPKfS0_i.exit

_Z10btLargeDotPKfS0_i.exit:                       ; preds = %._crit_edge.i.thread68, %._crit_edge.i, %.lr.ph43.i
  %i.ex = phi ptr [ %i.dx, %.lr.ph43.i ], [ %i.dx, %._crit_edge.i ], [ %i.cr, %._crit_edge.i.thread68 ]
  %i.ey = phi float [ %i.eb, %.lr.ph43.i ], [ %i.eb, %._crit_edge.i ], [ %i.cv, %._crit_edge.i.thread68 ]
  %.1.lcssa.i = phi float [ %i.ew, %.lr.ph43.i ], [ %i.ei, %._crit_edge.i ], [ 0.000000e+00, %._crit_edge.i.thread68 ]
  %i.ez = fsub float %i.ey, %.1.lcssa.i
  %i.fa = fdiv float 1.000000e+00, %i.ez
  %i.fb = sext i32 %i.cb to i64
  %i.fc = getelementptr inbounds [4 x i8], ptr %i.co, i64 %i.fb
  store float %i.fa, ptr %i.fc, align 4, !tbaa !17
  br label %bb.d

.lr.ph44:                                         ; preds = %.lr.ph44.prol.loopexit, %.lr.ph44
  %indvars.iv53 = phi i64 [ %indvars.iv.next54.1, %.lr.ph44 ], [ %indvars.iv53.unr, %.lr.ph44.prol.loopexit ] ; 6 uses
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %indvars.iv53
  %i.fe = load float, ptr %i.fd, align 4, !tbaa !17
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %indvars.iv53
  %i.fg = load float, ptr %i.ff, align 4, !tbaa !17
  %i.fh = fmul float %i.fe, %i.fg                 ; 2 uses
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %indvars.iv53
  store float %i.fh, ptr %i.fi, align 4, !tbaa !17
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %indvars.iv53
  store float %i.fh, ptr %i.fj, align 4, !tbaa !17
  %indvars.iv.next54 = add nuw nsw i64 %indvars.iv53, 1 ; 4 uses
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %indvars.iv.next54
  %i.fl = load float, ptr %i.fk, align 4, !tbaa !17
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %indvars.iv.next54
  %i.fn = load float, ptr %i.fm, align 4, !tbaa !17
  %i.fo = fmul float %i.fl, %i.fn                 ; 2 uses
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %indvars.iv.next54
  store float %i.fo, ptr %i.fp, align 4, !tbaa !17
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %indvars.iv.next54
  store float %i.fo, ptr %i.fq, align 4, !tbaa !17
  %indvars.iv.next54.1 = add nuw nsw i64 %indvars.iv53, 2 ; 2 uses
  %exitcond57.not.1 = icmp eq i64 %indvars.iv.next54.1, %wide.trip.count56
  br i1 %exitcond57.not.1, label %._crit_edge45, label %.lr.ph44, !llvm.loop !136

bb.c:                                             ; preds = %bb.a
  %i.fr = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.f
  %i.fs = load float, ptr %i.fr, align 4, !tbaa !17
  %i.ft = fdiv float 1.000000e+00, %i.fs
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !41
  store float %i.ft, ptr %i.fv, align 4, !tbaa !17
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_Z10btLargeDotPKfS0_i.exit
  %i.fw = phi i32 [ %i.b, %bb.c ], [ %i.cb, %_Z10btLargeDotPKfS0_i.exit ]
  %i.fx = phi ptr [ %i.e, %bb.c ], [ %i.ex, %_Z10btLargeDotPKfS0_i.exit ]
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !35
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !36
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !37
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !38
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !39
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !47
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !45
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !46
  %i.go = load i32, ptr %0, align 8, !tbaa !29
  tail call fastcc void @_ZL13btSwapProblemPPfS_S_S_S_S_PiPbS1_iiiii(ptr noundef nonnull %i.fx, ptr noundef %i.fz, ptr noundef %i.gb, ptr noundef %i.gd, ptr noundef %i.gf, ptr noundef %i.gh, ptr noundef %i.gj, ptr noundef %i.gl, ptr noundef %i.gn, i32 noundef %i.go, i32 noundef %i.fw, i32 noundef %1, i32 noundef 1)
  %i.gp = load i32, ptr %i.a, align 4, !tbaa !32  ; 3 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !48
  %i.gs = sext i32 %i.gp to i64
  %i.gt = getelementptr inbounds [4 x i8], ptr %i.gr, i64 %i.gs
  store i32 %i.gp, ptr %i.gt, align 4, !tbaa !50
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.gv = load i32, ptr %i.gu, align 8, !tbaa !33
  %i.gw = add nsw i32 %i.gv, -1
  store i32 %i.gw, ptr %i.gu, align 8, !tbaa !33
  %i.gx = add nsw i32 %i.gp, 1
  store i32 %i.gx, ptr %i.a, align 4, !tbaa !32
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @_Z14btRemoveRowColPfiii(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = add nsw i32 %1, -1                       ; 3 uses
  %.not = icmp slt i32 %3, %i.a
  br i1 %.not, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
end_hunk_0
begin_hunk_1_@_Z12btLDLTRemovePPfPKiS_S_iiiiR20btAlignedObjectArrayIfE:bb.a

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i.i.prol, %scalar.ph.prol ]
  %i.af = sub nsw i64 %indvars.iv.i.i.i.ph, %wide.trip.count.i.i.i
  %i.ag = icmp ugt i64 %i.af, -4
  br i1 %i.ag, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.3, %scalar.ph ], [ %indvars.iv.i.i.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv.i.i.i
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !17
  store float %i.aj, ptr %i.ah, align 4, !tbaa !17
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv.next.i.i.i
  %i.am = load float, ptr %i.al, align 4, !tbaa !17
  store float %i.am, ptr %i.ak, align 4, !tbaa !17
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i.1
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv.next.i.i.i.1
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !17
  store float %i.ap, ptr %i.an, align 4, !tbaa !17
  %indvars.iv.next.i.i.i.2 = add nuw nsw i64 %indvars.iv.i.i.i, 3 ; 2 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i.2
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv.next.i.i.i.2
  %i.as = load float, ptr %i.ar, align 4, !tbaa !17
  store float %i.as, ptr %i.aq, align 4, !tbaa !17
  %indvars.iv.next.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.3, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i.3, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i, label %scalar.ph, !llvm.loop !150

_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i: ; preds = %_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i
  %.not.i5.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i5.i.i, label %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i

_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.au = load i8, ptr %i.at, align 8, !tbaa !60, !range !53, !noundef !54
  %i.av = trunc nuw i8 %i.au to i1
  br i1 %i.av, label %bb.f, label %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i

bb.f:                                             ; preds = %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.u)
  br label %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i

_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i: ; preds = %bb.f, %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i, %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %8, i64 24
  store i8 1, ptr %i.aw, align 8, !tbaa !60
  store ptr %.0.i.i.i, ptr %i.t, align 8, !tbaa !58
  store i32 %i.h, ptr %i.l, align 8, !tbaa !59
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %..lr.ph.i_crit_edge, %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i
  %i.ax = phi ptr [ %.pre, %..lr.ph.i_crit_edge ], [ %.0.i.i.i, %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i ] ; 2 uses
  %i.ay = sext i32 %i.j to i64                    ; 2 uses
  %wide.trip.count.i = sext i32 %i.h to i64
  %i.az = shl nsw i64 %i.ay, 2
  %scevgep = getelementptr i8, ptr %i.ax, i64 %i.az
  %i.ba = sub nsw i64 %wide.trip.count.i, %i.ay
  %i.bb = shl nsw i64 %i.ba, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep, i8 0, i64 %i.bb, i1 false), !tbaa !17
  br label %_ZN20btAlignedObjectArrayIfE6resizeEiRKf.exit

_ZN20btAlignedObjectArrayIfE6resizeEiRKf.exit:    ; preds = %._ZN20btAlignedObjectArrayIfE6resizeEiRKf.exit_crit_edge, %.lr.ph.i
  %i.bc = phi ptr [ %.pre144, %._ZN20btAlignedObjectArrayIfE6resizeEiRKf.exit_crit_edge ], [ %i.ax, %.lr.ph.i ] ; 2 uses
  %i.bd = ptrtoaddr ptr %i.bc to i64
  store i32 %i.h, ptr %i.i, align 4, !tbaa !57
  %i.be = icmp eq i32 %6, 0
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.g ; 18 uses
  br i1 %i.be, label %bb.g, label %bb.q

bb.g:                                             ; preds = %_ZN20btAlignedObjectArrayIfE6resizeEiRKf.exit
  %i.bg = load i32, ptr %1, align 4, !tbaa !50    ; 4 uses
  %i.bh = icmp sgt i32 %5, 0
  br i1 %i.bh, label %.lr.ph130, label %._crit_edge131

.lr.ph130:                                        ; preds = %bb.g
  %i.bi = sext i32 %i.bg to i64                   ; 4 uses
  %i.bj = getelementptr inbounds [8 x i8], ptr %0, i64 %i.bi ; 3 uses
  %wide.trip.count141 = zext nneg i32 %5 to i64   ; 2 uses
  %xtraiter179 = and i64 %wide.trip.count141, 1
  %i.bk = icmp eq i32 %5, 1
  br i1 %i.bk, label %.epil.preheader, label %.lr.ph130.new

.lr.ph130.new:                                    ; preds = %.lr.ph130
  %unroll_iter = and i64 %wide.trip.count141, 2147483646
  br label %bb.j

._crit_edge131.loopexit.unr-lcssa:                ; preds = %bb.p
  %lcmp.mod180.not = icmp eq i64 %xtraiter179, 0
  br i1 %lcmp.mod180.not, label %._crit_edge131, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge131.loopexit.unr-lcssa, %.lr.ph130
  %indvars.iv138.epil.init = phi i64 [ 0, %.lr.ph130 ], [ %indvars.iv.next139.1, %._crit_edge131.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod181 = trunc i32 %5 to i1
  tail call void @llvm.assume(i1 %lcmp.mod181)
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv138.epil.init
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !50 ; 3 uses
  %i.bn = icmp sgt i32 %i.bm, %i.bg
  br i1 %i.bn, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.epil.preheader
  %i.bo = load ptr, ptr %i.bj, align 8, !tbaa !49
  %i.bp = sext i32 %i.bm to i64
  %i.bq = getelementptr inbounds [4 x i8], ptr %i.bo, i64 %i.bp
  br label %._crit_edge131.loopexit.epilog-lcssa

bb.i:                                             ; preds = %.epil.preheader
  %i.br = sext i32 %i.bm to i64
  %i.bs = getelementptr inbounds [8 x i8], ptr %0, i64 %i.br
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !49
  %i.bu = getelementptr inbounds [4 x i8], ptr %i.bt, i64 %i.bi
  br label %._crit_edge131.loopexit.epilog-lcssa

._crit_edge131.loopexit.epilog-lcssa:             ; preds = %bb.i, %bb.h
  %.in117.epil = phi ptr [ %i.bu, %bb.i ], [ %i.bq, %bb.h ]
  %i.bv = load float, ptr %.in117.epil, align 4, !tbaa !17
  %i.bw = fneg float %i.bv
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv138.epil.init
  store float %i.bw, ptr %i.bx, align 4, !tbaa !17
  br label %._crit_edge131

._crit_edge131:                                   ; preds = %._crit_edge131.loopexit.epilog-lcssa, %._crit_edge131.loopexit.unr-lcssa, %bb.g
  %i.by = load float, ptr %i.bf, align 4, !tbaa !17
  %i.bz = fadd float %i.by, 1.000000e+00
  store float %i.bz, ptr %i.bf, align 4, !tbaa !17
  tail call void @_Z11btLDLTAddTLPfS_PKfiiR20btAlignedObjectArrayIfE(ptr noundef %2, ptr noundef %3, ptr noundef nonnull %i.bf, i32 noundef %5, i32 noundef %7, ptr noundef nonnull align 8 dereferenceable(25) %8)
  br label %bb.v

bb.j:                                             ; preds = %bb.p, %.lr.ph130.new
  %indvars.iv138 = phi i64 [ 0, %.lr.ph130.new ], [ %indvars.iv.next139.1, %bb.p ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph130.new ], [ %niter.next.1, %bb.p ]
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv138
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !50 ; 3 uses
  %i.cc = icmp sgt i32 %i.cb, %i.bg
  br i1 %i.cc, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.cd = sext i32 %i.cb to i64
  %i.ce = getelementptr inbounds [8 x i8], ptr %0, i64 %i.cd
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !49
  %i.cg = getelementptr inbounds [4 x i8], ptr %i.cf, i64 %i.bi
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.ch = load ptr, ptr %i.bj, align 8, !tbaa !49
  %i.ci = sext i32 %i.cb to i64
  %i.cj = getelementptr inbounds [4 x i8], ptr %i.ch, i64 %i.ci
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.in117 = phi ptr [ %i.cg, %bb.k ], [ %i.cj, %bb.l ]
  %i.ck = load float, ptr %.in117, align 4, !tbaa !17
  %i.cl = fneg float %i.ck
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv138
  store float %i.cl, ptr %i.cm, align 4, !tbaa !17
  %indvars.iv.next139 = or disjoint i64 %indvars.iv138, 1 ; 2 uses
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next139
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !50 ; 3 uses
  %i.cp = icmp sgt i32 %i.co, %i.bg
  br i1 %i.cp, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cq = load ptr, ptr %i.bj, align 8, !tbaa !49
  %i.cr = sext i32 %i.co to i64
  %i.cs = getelementptr inbounds [4 x i8], ptr %i.cq, i64 %i.cr
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.ct = sext i32 %i.co to i64
  %i.cu = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ct
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !49
  %i.cw = getelementptr inbounds [4 x i8], ptr %i.cv, i64 %i.bi
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.in117.1 = phi ptr [ %i.cw, %bb.o ], [ %i.cs, %bb.n ]
  %i.cx = load float, ptr %.in117.1, align 4, !tbaa !17
  %i.cy = fneg float %i.cx
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv.next139
  store float %i.cy, ptr %i.cz, align 4, !tbaa !17
  %indvars.iv.next139.1 = add nuw nsw i64 %indvars.iv138, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge131.loopexit.unr-lcssa, label %bb.j, !llvm.loop !151

bb.q:                                             ; preds = %_ZN20btAlignedObjectArrayIfE6resizeEiRKf.exit
  %i.da = mul i32 %7, %6
  %i.db = sext i32 %i.da to i64                   ; 2 uses
  %i.dc = getelementptr inbounds [4 x i8], ptr %2, i64 %i.db ; 6 uses
  %i.dd = icmp sgt i32 %6, 0
  br i1 %i.dd, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.q
  %wide.trip.count = zext nneg i32 %6 to i64      ; 5 uses
  %min.iters.check160 = icmp ult i32 %6, 4
  br i1 %min.iters.check160, label %.lr.ph.preheader172, label %vector.memcheck156

vector.memcheck156:                               ; preds = %.lr.ph.preheader
  %9 = add i64 %i.g, %i.bd                        ; 2 uses
  %10 = shl nsw i64 %i.db, 2
  %i.de = add i64 %10, %i.b
  %i.df = sub i64 %i.de, %9
  %diff.check157 = icmp ugt i64 %i.df, -16
  %i.dg = sub i64 %i.a, %9
  %diff.check158 = icmp ugt i64 %i.dg, -16
  %conflict.rdx = or i1 %diff.check157, %diff.check158
  br i1 %conflict.rdx, label %.lr.ph.preheader172, label %vector.ph161

vector.ph161:                                     ; preds = %vector.memcheck156
  %n.vec162 = and i64 %wide.trip.count, 2147483644 ; 4 uses
  %i.dh = shl nuw nsw i64 %n.vec162, 2
  %i.di = getelementptr i8, ptr %i.dc, i64 %i.dh
  br label %vector.body163

vector.body163:                                   ; preds = %vector.body163, %vector.ph161
  %index164 = phi i64 [ 0, %vector.ph161 ], [ %index.next167, %vector.body163 ] ; 4 uses
  %i.dj = shl i64 %index164, 2
  %next.gep = getelementptr i8, ptr %i.dc, i64 %i.dj
  %wide.load165 = load <4 x float>, ptr %next.gep, align 4, !tbaa !17
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index164
  %wide.load166 = load <4 x float>, ptr %i.dk, align 4, !tbaa !17
  %i.dl = fdiv <4 x float> %wide.load165, %wide.load166
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %index164
  store <4 x float> %i.dl, ptr %i.dm, align 4, !tbaa !17
  %index.next167 = add nuw i64 %index164, 4       ; 2 uses
  %i.dn = icmp eq i64 %index.next167, %n.vec162
  br i1 %i.dn, label %middle.block168, label %vector.body163, !llvm.loop !152

middle.block168:                                  ; preds = %vector.body163
  %cmp.n169 = icmp eq i64 %n.vec162, %wide.trip.count
  br i1 %cmp.n169, label %._crit_edge, label %.lr.ph.preheader172

.lr.ph.preheader172:                              ; preds = %vector.memcheck156, %.lr.ph.preheader, %middle.block168
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck156 ], [ 0, %.lr.ph.preheader ], [ %n.vec162, %middle.block168 ] ; 3 uses
  %.0104121.ph = phi ptr [ %i.dc, %vector.memcheck156 ], [ %i.dc, %.lr.ph.preheader ], [ %i.di, %middle.block168 ] ; 2 uses
  %xtraiter173 = and i64 %wide.trip.count, 3      ; 2 uses
  %lcmp.mod174.not = icmp eq i64 %xtraiter173, 0
  br i1 %lcmp.mod174.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader172, %.lr.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.prol ], [ %indvars.iv.ph, %.lr.ph.preheader172 ] ; 3 uses
  %.0104121.prol = phi ptr [ %i.dt, %.lr.ph.prol ], [ %.0104121.ph, %.lr.ph.preheader172 ] ; 2 uses
  %prol.iter175 = phi i64 [ %prol.iter175.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader172 ]
  %i.do = load float, ptr %.0104121.prol, align 4, !tbaa !17
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.prol
  %i.dq = load float, ptr %i.dp, align 4, !tbaa !17
  %i.dr = fdiv float %i.do, %i.dq
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv.prol
  store float %i.dr, ptr %i.ds, align 4, !tbaa !17
  %i.dt = getelementptr inbounds nuw i8, ptr %.0104121.prol, i64 4 ; 2 uses
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter175.next = add i64 %prol.iter175, 1   ; 2 uses
  %prol.iter175.cmp.not = icmp eq i64 %prol.iter175.next, %xtraiter173
  br i1 %prol.iter175.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !153

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader172
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader172 ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %.0104121.unr = phi ptr [ %.0104121.ph, %.lr.ph.preheader172 ], [ %i.dt, %.lr.ph.prol ]
  %i.du = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.dv = icmp ugt i64 %i.du, -4
  br i1 %i.dv, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block168, %bb.q
  %i.dw = sext i32 %6 to i64                      ; 4 uses
  %i.dx = getelementptr inbounds [4 x i8], ptr %i.bf, i64 %i.dw ; 4 uses
  %i.dy = getelementptr inbounds [4 x i8], ptr %1, i64 %i.dw ; 2 uses
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !50 ; 2 uses
  %i.ea = sub nsw i32 %5, %6                      ; 3 uses
  %i.eb = icmp sgt i32 %i.ea, 0
  br i1 %i.eb, label %.lr.ph126, label %._crit_edge127

.lr.ph126:                                        ; preds = %._crit_edge
  %.02531.i = add i32 %6, -2                      ; 6 uses
  %i.ec = icmp sgt i32 %6, 1
  %i.ed = lshr i32 %.02531.i, 1
  %i.ee = zext nneg i32 %i.ed to i64
  %i.ef = shl nuw nsw i64 %i.ee, 3
  %i.eg = add nuw nsw i64 %i.ef, 8                ; 2 uses
  %scevgep49.i = getelementptr i8, ptr %i.bf, i64 %i.eg
  %i.eh = add nsw i32 %6, -4
  %i.ei = and i32 %.02531.i, -2
  %i.ej = sub i32 %i.eh, %i.ei
  %i.ek = sext i32 %i.dz to i64                   ; 2 uses
  %i.el = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ek
  %i.em = sext i32 %7 to i64
  %wide.trip.count136 = zext nneg i32 %i.ea to i64
  %i.en = and i32 %.02531.i, 2
  %lcmp.mod177.not.not = icmp eq i32 %i.en, 0
  %i.eo = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %.025.i.prol = add nsw i32 %6, -4
  %i.ep = icmp ult i32 %.02531.i, 2
  br label %bb.r

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 6 uses
  %.0104121 = phi ptr [ %i.fn, %.lr.ph ], [ %.0104121.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %i.eq = load float, ptr %.0104121, align 4, !tbaa !17
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv
  %i.es = load float, ptr %i.er, align 4, !tbaa !17
  %i.et = fdiv float %i.eq, %i.es
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv
  store float %i.et, ptr %i.eu, align 4, !tbaa !17
  %i.ev = getelementptr inbounds nuw i8, ptr %.0104121, i64 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ew = load float, ptr %i.ev, align 4, !tbaa !17
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next
  %i.ey = load float, ptr %i.ex, align 4, !tbaa !17
  %i.ez = fdiv float %i.ew, %i.ey
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv.next
  store float %i.ez, ptr %i.fa, align 4, !tbaa !17
  %i.fb = getelementptr inbounds nuw i8, ptr %.0104121, i64 8
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.fc = load float, ptr %i.fb, align 4, !tbaa !17
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next.1
  %i.fe = load float, ptr %i.fd, align 4, !tbaa !17
  %i.ff = fdiv float %i.fc, %i.fe
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv.next.1
  store float %i.ff, ptr %i.fg, align 4, !tbaa !17
  %i.fh = getelementptr inbounds nuw i8, ptr %.0104121, i64 12
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.fi = load float, ptr %i.fh, align 4, !tbaa !17
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next.2
  %i.fk = load float, ptr %i.fj, align 4, !tbaa !17
  %i.fl = fdiv float %i.fi, %i.fk
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv.next.2
  store float %i.fl, ptr %i.fm, align 4, !tbaa !17
  %i.fn = getelementptr inbounds nuw i8, ptr %.0104121, i64 16
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph, !llvm.loop !154

._crit_edge127:                                   ; preds = %bb.u, %._crit_edge
  %i.fo = load float, ptr %i.dx, align 4, !tbaa !17
  %i.fp = fadd float %i.fo, 1.000000e+00
  store float %i.fp, ptr %i.dx, align 4, !tbaa !17
  %i.fq = getelementptr inbounds [4 x i8], ptr %i.dc, i64 %i.dw
  %i.fr = getelementptr inbounds [4 x i8], ptr %3, i64 %i.dw
  tail call void @_Z11btLDLTAddTLPfS_PKfiiR20btAlignedObjectArrayIfE(ptr noundef nonnull %i.fq, ptr noundef nonnull %i.fr, ptr noundef nonnull %i.dx, i32 noundef %i.ea, i32 noundef %7, ptr noundef nonnull align 8 dereferenceable(25) %8)
  br label %bb.v

bb.r:                                             ; preds = %.lr.ph126, %bb.u
  %indvars.iv133 = phi i64 [ 0, %.lr.ph126 ], [ %indvars.iv.next134, %bb.u ] ; 3 uses
  %.0102123 = phi ptr [ %i.dc, %.lr.ph126 ], [ %i.hk, %bb.u ] ; 6 uses
  br i1 %i.ec, label %.lr.ph.i118.preheader, label %._crit_edge.i

.lr.ph.i118.preheader:                            ; preds = %bb.r
  br i1 %lcmp.mod177.not.not, label %.lr.ph.i118.prol, label %.lr.ph.i118.prol.loopexit

.lr.ph.i118.prol:                                 ; preds = %.lr.ph.i118.preheader
  %i.fs = load <2 x float>, ptr %.0102123, align 4, !tbaa !17
  %i.ft = load <2 x float>, ptr %i.bf, align 4, !tbaa !17
  %i.fu = fmul <2 x float> %i.fs, %i.ft           ; 2 uses
  %i.fv = extractelement <2 x float> %i.fu, i64 0
  %i.fw = fadd float %i.fv, 0.000000e+00
  %i.fx = extractelement <2 x float> %i.fu, i64 1
  %i.fy = fadd float %i.fw, %i.fx                 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %.0102123, i64 8
  br label %.lr.ph.i118.prol.loopexit

.lr.ph.i118.prol.loopexit:                        ; preds = %.lr.ph.i118.prol, %.lr.ph.i118.preheader
  %.02535.i.unr = phi i32 [ %.02531.i, %.lr.ph.i118.preheader ], [ %.025.i.prol, %.lr.ph.i118.prol ]
  %.034.i.unr = phi float [ 0.000000e+00, %.lr.ph.i118.preheader ], [ %i.fy, %.lr.ph.i118.prol ]
  %.02733.i.unr = phi ptr [ %i.bf, %.lr.ph.i118.preheader ], [ %i.eo, %.lr.ph.i118.prol ]
  %.02932.i.unr = phi ptr [ %.0102123, %.lr.ph.i118.preheader ], [ %i.fz, %.lr.ph.i118.prol ]
  %.lcssa.unr = phi float [ poison, %.lr.ph.i118.preheader ], [ %i.fy, %.lr.ph.i118.prol ]
  br i1 %i.ep, label %._crit_edge.loopexit.i, label %.lr.ph.i118

.lr.ph.i118:                                      ; preds = %.lr.ph.i118.prol.loopexit, %.lr.ph.i118
  %.02535.i = phi i32 [ %.025.i.1, %.lr.ph.i118 ], [ %.02535.i.unr, %.lr.ph.i118.prol.loopexit ] ; 2 uses
  %.034.i = phi float [ %i.gp, %.lr.ph.i118 ], [ %.034.i.unr, %.lr.ph.i118.prol.loopexit ]
  %.02733.i = phi ptr [ %i.gr, %.lr.ph.i118 ], [ %.02733.i.unr, %.lr.ph.i118.prol.loopexit ] ; 3 uses
  %.02932.i = phi ptr [ %i.gq, %.lr.ph.i118 ], [ %.02932.i.unr, %.lr.ph.i118.prol.loopexit ] ; 3 uses
  %i.ga = load <2 x float>, ptr %.02932.i, align 4, !tbaa !17
  %i.gb = load <2 x float>, ptr %.02733.i, align 4, !tbaa !17
  %i.gc = fmul <2 x float> %i.ga, %i.gb           ; 2 uses
  %i.gd = extractelement <2 x float> %i.gc, i64 0
  %i.ge = fadd float %.034.i, %i.gd
  %i.gf = extractelement <2 x float> %i.gc, i64 1
  %i.gg = fadd float %i.ge, %i.gf
  %i.gh = getelementptr inbounds nuw i8, ptr %.02932.i, i64 8
  %i.gi = getelementptr inbounds nuw i8, ptr %.02733.i, i64 8
  %i.gj = load <2 x float>, ptr %i.gh, align 4, !tbaa !17
  %i.gk = load <2 x float>, ptr %i.gi, align 4, !tbaa !17
  %i.gl = fmul <2 x float> %i.gj, %i.gk           ; 2 uses
  %i.gm = extractelement <2 x float> %i.gl, i64 0
  %i.gn = fadd float %i.gg, %i.gm
  %i.go = extractelement <2 x float> %i.gl, i64 1
  %i.gp = fadd float %i.gn, %i.go                 ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %.02932.i, i64 16
  %i.gr = getelementptr inbounds nuw i8, ptr %.02733.i, i64 16
  %.025.i.1 = add nsw i32 %.02535.i, -4
  %i.gs = icmp sgt i32 %.02535.i, 3
  br i1 %i.gs, label %.lr.ph.i118, label %._crit_edge.loopexit.i, !llvm.loop !0

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i118, %.lr.ph.i118.prol.loopexit
  %.lcssa = phi float [ %.lcssa.unr, %.lr.ph.i118.prol.loopexit ], [ %i.gp, %.lr.ph.i118 ]
  %scevgep.i = getelementptr i8, ptr %.0102123, i64 %i.eg
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.r
  %.029.lcssa.i = phi ptr [ %.0102123, %bb.r ], [ %scevgep.i, %._crit_edge.loopexit.i ]
  %.027.lcssa.i = phi ptr [ %i.bf, %bb.r ], [ %scevgep49.i, %._crit_edge.loopexit.i ]
  %.0.lcssa.i = phi float [ 0.000000e+00, %bb.r ], [ %.lcssa, %._crit_edge.loopexit.i ] ; 2 uses
  %.025.lcssa.i = phi i32 [ %.02531.i, %bb.r ], [ %i.ej, %._crit_edge.loopexit.i ]
end_hunk_1
