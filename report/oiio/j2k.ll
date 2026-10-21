Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/j2k?download=true
inline.NumInlined: 157
inline.NumDeleted: 65
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 29
loop-unroll.NumUnrolled: 34
begin_hunk_0_@opj_j2k_is_imf_compliant:bb.a
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none)) local_unnamed_addr #7

declare ptr @opj_version() local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define internal fastcc void @opj_j2k_check_poc_val(ptr nofree noundef nonnull readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6) unnamed_addr #3 {
bb.a:
  %i.a = mul i32 %4, %3                           ; 3 uses
  %i.b = zext i32 %i.a to i64
  %i.c = zext i32 %5 to i64
  %i.d = mul nuw i64 %i.b, %i.c
  %i.e = tail call ptr @opj_calloc(i64 noundef %i.d, i64 noundef 4) #21 ; 9 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.b, label %.preheader79

.preheader79:                                     ; preds = %bb.a
  %.not114 = icmp eq i32 %2, 0
  br i1 %.not114, label %.preheader77, label %.lr.ph90

.lr.ph90:                                         ; preds = %.preheader79
  %i.g = add i32 %1, 1
  %wide.trip.count = zext i32 %2 to i64
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %6, i32 noundef 1, ptr noundef nonnull @.str.156) #21 ; 0 uses
  br label %bb.g

.preheader77:                                     ; preds = %.loopexit, %.preheader79
  %.not116 = icmp eq i32 %5, 0
  %.not117 = icmp eq i32 %3, 0
  %or.cond = or i1 %.not116, %.not117
  %.not118 = icmp eq i32 %4, 0
  %or.cond143 = or i1 %or.cond, %.not118
  br i1 %or.cond143, label %._crit_edge107.thread, label %.preheader76.us.us.preheader

.preheader76.us.us.preheader:                     ; preds = %.preheader77
  %min.iters.check = icmp ult i32 %4, 8
  %i.i = sub i32 0, %4
  %n.vec = and i32 %4, -8                         ; 4 uses
  %cmp.n = icmp eq i32 %4, %n.vec
  %xtraiter = and i32 %4, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br label %.preheader76.us.us

.preheader76.us.us:                               ; preds = %.preheader76.us.us.preheader, %._crit_edge100.split.us.us.us
  %.063106.us.us = phi i32 [ %.lcssa, %._crit_edge100.split.us.us.us ], [ 0, %.preheader76.us.us.preheader ]
  %.166105.us.us = phi i32 [ %i.bo, %._crit_edge100.split.us.us.us ], [ 0, %.preheader76.us.us.preheader ]
  %.172104.us.us = phi i32 [ %i.bn, %._crit_edge100.split.us.us.us ], [ 0, %.preheader76.us.us.preheader ] ; 2 uses
  br label %.preheader.us.us.us

.preheader.us.us.us:                              ; preds = %._crit_edge95.us.us.us, %.preheader76.us.us
  %.199.us.us.us = phi i32 [ %.063106.us.us, %.preheader76.us.us ], [ %.lcssa, %._crit_edge95.us.us.us ] ; 2 uses
  %.17098.us.us.us = phi i32 [ 0, %.preheader76.us.us ], [ %i.bm, %._crit_edge95.us.us.us ]
  %.27397.us.us.us = phi i32 [ %.172104.us.us, %.preheader76.us.us ], [ %i.bl, %._crit_edge95.us.us.us ] ; 5 uses
  %i.j = icmp ugt i32 %.27397.us.us.us, %i.i
  %or.cond7 = select i1 %min.iters.check, i1 true, i1 %i.j
  br i1 %or.cond7, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader.us.us.us
  %i.k = add i32 %.27397.us.us.us, %n.vec
  %i.l = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.199.us.us.us, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.l, %vector.ph ], [ %i.u, %vector.body ]
  %vec.phi3 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.v, %vector.body ]
  %i.m = add i32 %.27397.us.us.us, %index
  %i.n = zext i32 %i.m to i64
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.n ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %wide.load = load <4 x i32>, ptr %i.o, align 4, !tbaa !10
  %wide.load4 = load <4 x i32>, ptr %i.p, align 4, !tbaa !10
  %i.q = icmp ne <4 x i32> %wide.load, splat (i32 1)
  %i.r = icmp ne <4 x i32> %wide.load4, splat (i32 1)
  %i.s = zext <4 x i1> %i.q to <4 x i32>
  %i.t = zext <4 x i1> %i.r to <4 x i32>
  %i.u = or <4 x i32> %vec.phi, %i.s              ; 2 uses
  %i.v = or <4 x i32> %vec.phi3, %i.t             ; 2 uses
  %index.next = add nuw i32 %index, 8             ; 2 uses
  %i.w = icmp eq i32 %index.next, %n.vec
  br i1 %i.w, label %middle.block, label %vector.body, !llvm.loop !280

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <4 x i32> %i.v, %i.u
  %i.x = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  br i1 %cmp.n, label %._crit_edge95.us.us.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.us.us.us, %middle.block
  %.293.us.us.us.ph = phi i32 [ %.199.us.us.us, %.preheader.us.us.us ], [ %i.x, %middle.block ] ; 2 uses
  %.16892.us.us.us.ph = phi i32 [ 0, %.preheader.us.us.us ], [ %n.vec, %middle.block ] ; 3 uses
  %.391.us.us.us.ph = phi i32 [ %.27397.us.us.us, %.preheader.us.us.us ], [ %i.k, %middle.block ] ; 2 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.293.us.us.us.prol = phi i32 [ %i.ad, %scalar.ph.prol ], [ %.293.us.us.us.ph, %scalar.ph.preheader ]
  %.16892.us.us.us.prol = phi i32 [ %i.af, %scalar.ph.prol ], [ %.16892.us.us.us.ph, %scalar.ph.preheader ]
  %.391.us.us.us.prol = phi i32 [ %i.ae, %scalar.ph.prol ], [ %.391.us.us.us.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.y = zext i32 %.391.us.us.us.prol to i64
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !10
  %i.ab = icmp ne i32 %i.aa, 1
  %i.ac = zext i1 %i.ab to i32
  %i.ad = or i32 %.293.us.us.us.prol, %i.ac       ; 3 uses
  %i.ae = add i32 %.391.us.us.us.prol, 1          ; 2 uses
  %i.af = add nuw i32 %.16892.us.us.us.prol, 1    ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !281

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa10.unr = phi i32 [ poison, %scalar.ph.preheader ], [ %i.ad, %scalar.ph.prol ]
  %.293.us.us.us.unr = phi i32 [ %.293.us.us.us.ph, %scalar.ph.preheader ], [ %i.ad, %scalar.ph.prol ]
  %.16892.us.us.us.unr = phi i32 [ %.16892.us.us.us.ph, %scalar.ph.preheader ], [ %i.af, %scalar.ph.prol ]
  %.391.us.us.us.unr = phi i32 [ %.391.us.us.us.ph, %scalar.ph.preheader ], [ %i.ae, %scalar.ph.prol ]
  %i.ag = sub i32 %.16892.us.us.us.ph, %4
  %i.ah = icmp ugt i32 %i.ag, -4
  br i1 %i.ah, label %._crit_edge95.us.us.us, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.293.us.us.us = phi i32 [ %i.bi, %scalar.ph ], [ %.293.us.us.us.unr, %scalar.ph.prol.loopexit ]
  %.16892.us.us.us = phi i32 [ %i.bk, %scalar.ph ], [ %.16892.us.us.us.unr, %scalar.ph.prol.loopexit ]
  %.391.us.us.us = phi i32 [ %i.bj, %scalar.ph ], [ %.391.us.us.us.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.ai = zext i32 %.391.us.us.us to i64
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !10
  %i.al = icmp ne i32 %i.ak, 1
  %i.am = zext i1 %i.al to i32
  %i.an = or i32 %.293.us.us.us, %i.am
  %i.ao = add i32 %.391.us.us.us, 1
  %i.ap = zext i32 %i.ao to i64
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.ap
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !10
  %i.as = icmp ne i32 %i.ar, 1
  %i.at = zext i1 %i.as to i32
  %i.au = or i32 %i.an, %i.at
  %i.av = add i32 %.391.us.us.us, 2
  %i.aw = zext i32 %i.av to i64
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.aw
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !10
  %i.az = icmp ne i32 %i.ay, 1
  %i.ba = zext i1 %i.az to i32
  %i.bb = or i32 %i.au, %i.ba
  %i.bc = add i32 %.391.us.us.us, 3
  %i.bd = zext i32 %i.bc to i64
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.bd
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !10
  %i.bg = icmp ne i32 %i.bf, 1
  %i.bh = zext i1 %i.bg to i32
  %i.bi = or i32 %i.bb, %i.bh                     ; 2 uses
  %i.bj = add i32 %.391.us.us.us, 4
  %i.bk = add nuw i32 %.16892.us.us.us, 4         ; 2 uses
  %exitcond123.not.3 = icmp eq i32 %i.bk, %4
  br i1 %exitcond123.not.3, label %._crit_edge95.us.us.us, label %scalar.ph, !llvm.loop !282

._crit_edge95.us.us.us:                           ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %.lcssa = phi i32 [ %i.x, %middle.block ], [ %.lcssa10.unr, %scalar.ph.prol.loopexit ], [ %i.bi, %scalar.ph ] ; 3 uses
  %i.bl = add i32 %4, %.27397.us.us.us
  %i.bm = add nuw i32 %.17098.us.us.us, 1         ; 2 uses
  %exitcond124.not = icmp eq i32 %i.bm, %3
  br i1 %exitcond124.not, label %._crit_edge100.split.us.us.us, label %.preheader.us.us.us, !llvm.loop !283

._crit_edge100.split.us.us.us:                    ; preds = %._crit_edge95.us.us.us
  %i.bn = add i32 %i.a, %.172104.us.us
  %i.bo = add nuw i32 %.166105.us.us, 1           ; 2 uses
  %exitcond125.not = icmp eq i32 %i.bo, %5
  br i1 %exitcond125.not, label %._crit_edge107, label %.preheader76.us.us, !llvm.loop !284

bb.c:                                             ; preds = %.lr.ph90, %.loopexit
  %indvars.iv = phi i64 [ 0, %.lr.ph90 ], [ %indvars.iv.next, %.loopexit ] ; 2 uses
  %i.bp = getelementptr inbounds nuw [148 x i8], ptr %0, i64 %indvars.iv ; 6 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 48
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !87
  %i.bs = icmp eq i32 %i.g, %i.br
  br i1 %i.bs, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.bt = load i32, ptr %i.bp, align 4, !tbaa !89 ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bp, i64 12 ; 2 uses
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !120 ; 2 uses
  %i.bw = tail call noundef i32 @llvm.umin.i32(i32 %i.bv, i32 %3)
  %i.bx = icmp ult i32 %i.bt, %i.bw
  br i1 %i.bx, label %.lr.ph88, label %.loopexit

.lr.ph88:                                         ; preds = %bb.d
  %i.by = mul i32 %i.bt, %4
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bp, i64 4 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bp, i64 16 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bp, i64 8 ; 2 uses
  %.pre126 = load i32, ptr %i.bz, align 4, !tbaa !88
  %.pre.a = load i32, ptr %i.ca, align 4, !tbaa !90 ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph88, %._crit_edge84
  %i.cc = phi i32 [ %i.bv, %.lr.ph88 ], [ %i.cy, %._crit_edge84 ]
  %i.cd = phi i32 [ %.pre.a, %.lr.ph88 ], [ %i.cz, %._crit_edge84 ] ; 2 uses
  %i.ce = phi i32 [ %.pre.a, %.lr.ph88 ], [ %i.da, %._crit_edge84 ] ; 2 uses
  %.06986.a = phi i32 [ %.pre126, %.lr.ph88 ], [ %7, %._crit_edge84 ] ; 4 uses
  %.07185.a = phi i32 [ %i.bt, %.lr.ph88 ], [ %i.dc, %._crit_edge84 ]
  %.07185 = phi i32 [ %i.by, %.lr.ph88 ], [ %i.db, %._crit_edge84 ] ; 2 uses
  %i.cf = tail call noundef i32 @llvm.umin.i32(i32 %i.ce, i32 %4)
  %i.cg = icmp ult i32 %.06986.a, %i.cf
  br i1 %i.cg, label %.preheader78.preheader, label %._crit_edge84

.preheader78.preheader:                           ; preds = %bb.e
  %i.ch = add i32 %.06986.a, %.07185
  %.pre126.a = load i32, ptr %i.cb, align 4, !tbaa !119
  br label %.preheader78

.preheader78:                                     ; preds = %.preheader78.preheader, %._crit_edge
  %i.ci = phi i32 [ %i.cs, %._crit_edge ], [ %i.cd, %.preheader78.preheader ]
  %i.cj = phi i32 [ %i.ct, %._crit_edge ], [ %.pre126.a, %.preheader78.preheader ] ; 2 uses
  %.06283 = phi i32 [ %i.cu, %._crit_edge ], [ %i.ch, %.preheader78.preheader ] ; 2 uses
  %.06782 = phi i32 [ %i.cv, %._crit_edge ], [ %.06986.a, %.preheader78.preheader ]
  %i.ck = tail call noundef i32 @llvm.umin.i32(i32 %i.cj, i32 %5)
  %.not115 = icmp eq i32 %i.ck, 0
  br i1 %.not115, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader78, %.lr.ph
  %.081 = phi i32 [ %i.cn, %.lr.ph ], [ %.06283, %.preheader78 ] ; 2 uses
  %.06580 = phi i32 [ %i.co, %.lr.ph ], [ 0, %.preheader78 ]
  %i.cl = zext i32 %.081 to i64
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.cl
  store i32 1, ptr %i.cm, align 4, !tbaa !10
  %i.cn = add i32 %.081, %i.a
  %i.co = add nuw i32 %.06580, 1                  ; 2 uses
  %i.cp = load i32, ptr %i.cb, align 4, !tbaa !119 ; 2 uses
  %i.cq = tail call noundef i32 @llvm.umin.i32(i32 %i.cp, i32 %5)
  %i.cr = icmp ult i32 %i.co, %i.cq
  br i1 %i.cr, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !285

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre127 = load i32, ptr %i.ca, align 4, !tbaa !90
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader78
  %i.cs = phi i32 [ %.pre127, %._crit_edge.loopexit ], [ %i.ci, %.preheader78 ] ; 4 uses
  %i.ct = phi i32 [ %i.cp, %._crit_edge.loopexit ], [ %i.cj, %.preheader78 ]
  %i.cu = add i32 %.06283, 1
  %i.cv = add nuw i32 %.06782, 1                  ; 2 uses
  %i.cw = tail call noundef i32 @llvm.umin.i32(i32 %i.cs, i32 %4)
  %i.cx = icmp ult i32 %i.cv, %i.cw
  br i1 %i.cx, label %.preheader78, label %._crit_edge84.loopexit, !llvm.loop !286

._crit_edge84.loopexit:                           ; preds = %._crit_edge
  %.pre = load i32, ptr %i.bz, align 4, !tbaa !88
  %.pre128 = load i32, ptr %i.bu, align 4, !tbaa !120
  br label %._crit_edge84

._crit_edge84:                                    ; preds = %._crit_edge84.loopexit, %bb.e
  %i.cy = phi i32 [ %.pre128, %._crit_edge84.loopexit ], [ %i.cc, %bb.e ] ; 2 uses
  %i.cz = phi i32 [ %i.cs, %._crit_edge84.loopexit ], [ %i.cd, %bb.e ]
  %i.da = phi i32 [ %i.cs, %._crit_edge84.loopexit ], [ %i.ce, %bb.e ]
  %7 = phi i32 [ %.pre, %._crit_edge84.loopexit ], [ %.06986.a, %bb.e ]
  %i.db = add i32 %.07185, %4
  %i.dc = add nuw i32 %.07185.a, 1                ; 2 uses
  %i.dd = tail call noundef i32 @llvm.umin.i32(i32 %i.cy, i32 %3)
  %i.de = icmp ult i32 %i.dc, %i.dd
  br i1 %i.de, label %bb.e, label %.loopexit, !llvm.loop !287

.loopexit:                                        ; preds = %._crit_edge84, %bb.d, %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader77, label %bb.c, !llvm.loop !288

._crit_edge107:                                   ; preds = %._crit_edge100.split.us.us.us
  %i.df = icmp eq i32 %.lcssa, 0
  br i1 %i.df, label %._crit_edge107.thread, label %bb.f

bb.f:                                             ; preds = %._crit_edge107
  %i.dg = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %6, i32 noundef 1, ptr noundef nonnull @.str.157) #21 ; 0 uses
  br label %._crit_edge107.thread

._crit_edge107.thread:                            ; preds = %.preheader77, %bb.f, %._crit_edge107
  tail call void @opj_free(ptr noundef nonnull %i.e) #21
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge107.thread, %bb.b
  ret void
}

declare void @opj_free(ptr noundef) local_unnamed_addr #4

declare i32 @opj_matrix_inversion_f(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare void @opj_calculate_norms(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @opj_j2k_setup_mct_encoding(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !84
  %.not = icmp eq i32 %i.b, 2
  br i1 %.not, label %bb.b, label %bb.u

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 5640 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !95
  %.not152 = icmp eq ptr %i.d, null
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 5664 ; 9 uses
  %.pre176 = load i32, ptr %.phi.trans.insert, align 8, !tbaa !124 ; 4 uses
  br i1 %.not152, label %._crit_edge175, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 5668 ; 3 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !125
  %i.g = icmp eq i32 %.pre176, %i.f
  br i1 %i.g, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.h = add i32 %.pre176, 10                     ; 2 uses
  store i32 %i.h, ptr %i.e, align 4, !tbaa !125
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 5656 ; 4 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !126
  %i.k = zext i32 %i.h to i64
  %i.l = shl nuw nsw i64 %i.k, 5
  %i.m = tail call ptr @opj_realloc(ptr noundef %i.j, i64 noundef %i.l) #21 ; 3 uses
  %.not153.not = icmp eq ptr %i.m, null
  br i1 %.not153.not, label %.thread, label %bb.e

.thread:                                          ; preds = %bb.d
  %i.n = load ptr, ptr %i.i, align 8, !tbaa !126
  tail call void @opj_free(ptr noundef %i.n) #21
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  br label %bb.u

bb.e:                                             ; preds = %bb.d
  store ptr %i.m, ptr %i.i, align 8, !tbaa !126
  %i.o = load i32, ptr %.phi.trans.insert, align 8, !tbaa !124 ; 2 uses
  %i.p = zext i32 %i.o to i64
  %i.q = getelementptr inbounds nuw [32 x i8], ptr %i.m, i64 %i.p
  %i.r = load i32, ptr %i.e, align 4, !tbaa !125
  %i.s = sub i32 %i.r, %i.o
  %i.t = zext i32 %i.s to i64
  %i.u = shl nuw nsw i64 %i.t, 5
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.q, i8 0, i64 %i.u, i1 false)
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !124
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c
  %i.v = phi i32 [ %.pre, %bb.e ], [ %.pre176, %bb.c ]
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 5656
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !126
  %i.y = zext i32 %i.v to i64
  %i.z = getelementptr inbounds nuw [32 x i8], ptr %i.x, i64 %i.y ; 7 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 3 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !128 ; 2 uses
  %.not154 = icmp eq ptr %i.ab, null
  br i1 %.not154, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @opj_free(ptr noundef nonnull %i.ab) #21
  store ptr null, ptr %i.aa, align 8, !tbaa !128
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store i32 1, ptr %i.ac, align 8, !tbaa !129
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  store i32 1, ptr %i.ad, align 4, !tbaa !130
  store i32 2, ptr %i.z, align 8, !tbaa !131
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !53 ; 2 uses
  %i.ag = mul i32 %i.af, %i.af                    ; 6 uses
  %i.ah = shl i32 %i.ag, 2                        ; 2 uses
  %i.ai = zext i32 %i.ah to i64
  %i.aj = tail call ptr @opj_malloc(i64 noundef %i.ai) #21 ; 6 uses
  store ptr %i.aj, ptr %i.aa, align 8, !tbaa !128
  %.not155 = icmp eq ptr %i.aj, null
  br i1 %.not155, label %bb.u, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ak = load i32, ptr %i.z, align 8, !tbaa !131
  %i.al = load ptr, ptr %i.c, align 8, !tbaa !95  ; 4 uses
  %.not.i = icmp eq i32 %i.ag, 0                  ; 4 uses
  switch i32 %i.ak, label %default.switch.case.unreachable [
    i32 0, label %call.0
    i32 1, label %call.1
    i32 2, label %call.2
    i32 3, label %call.3
  ], !prof !132

default.switch.case.unreachable:                  ; preds = %bb.i
  unreachable

call.0:                                           ; preds = %bb.i
  br i1 %.not.i, label %.tail, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %call.0, %.lr.ph.i
  %.012.i = phi i32 [ %i.aq, %.lr.ph.i ], [ 0, %call.0 ]
  %.0811.i = phi ptr [ %i.am, %.lr.ph.i ], [ %i.al, %call.0 ] ; 2 uses
  %.0910.i = phi ptr [ %i.ap, %.lr.ph.i ], [ %i.aj, %call.0 ] ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.0811.i, i64 4
  %i.an = load float, ptr %.0811.i, align 4, !tbaa !59
  %i.ao = fptoui float %i.an to i32
  tail call void @opj_write_bytes_LE(ptr noundef nonnull %.0910.i, i32 noundef %i.ao, i32 noundef 2) #21
  %i.ap = getelementptr inbounds nuw i8, ptr %.0910.i, i64 2
  %i.aq = add nuw i32 %.012.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.aq, %i.ag
  br i1 %exitcond.not.i, label %.tail, label %.lr.ph.i, !llvm.loop !289

call.1:                                           ; preds = %bb.i
  br i1 %.not.i, label %.tail, label %.lr.ph.i192

.lr.ph.i192:                                      ; preds = %call.1, %.lr.ph.i192
  %.012.i193 = phi i32 [ %i.av, %.lr.ph.i192 ], [ 0, %call.1 ]
  %.0811.i194 = phi ptr [ %i.ar, %.lr.ph.i192 ], [ %i.al, %call.1 ] ; 2 uses
  %.0910.i195 = phi ptr [ %i.au, %.lr.ph.i192 ], [ %i.aj, %call.1 ] ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.0811.i194, i64 4
  %i.as = load float, ptr %.0811.i194, align 4, !tbaa !59
  %i.at = fptoui float %i.as to i32
  tail call void @opj_write_bytes_LE(ptr noundef nonnull %.0910.i195, i32 noundef %i.at, i32 noundef 4) #21
  %i.au = getelementptr inbounds nuw i8, ptr %.0910.i195, i64 4
  %i.av = add nuw i32 %.012.i193, 1               ; 2 uses
  %exitcond.not.i196 = icmp eq i32 %i.av, %i.ag
  br i1 %exitcond.not.i196, label %.tail, label %.lr.ph.i192, !llvm.loop !290

call.2:                                           ; preds = %bb.i
  br i1 %.not.i, label %.tail, label %.lr.ph.i198

.lr.ph.i198:                                      ; preds = %call.2, %.lr.ph.i198
  %.012.i199 = phi i32 [ %i.az, %.lr.ph.i198 ], [ 0, %call.2 ]
  %.0811.i200 = phi ptr [ %i.aw, %.lr.ph.i198 ], [ %i.al, %call.2 ] ; 2 uses
  %.0910.i201 = phi ptr [ %i.ay, %.lr.ph.i198 ], [ %i.aj, %call.2 ] ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.0811.i200, i64 4
  %i.ax = load float, ptr %.0811.i200, align 4, !tbaa !59
  tail call void @opj_write_float_LE(ptr noundef nonnull %.0910.i201, float noundef %i.ax) #21
  %i.ay = getelementptr inbounds nuw i8, ptr %.0910.i201, i64 4
  %i.az = add nuw i32 %.012.i199, 1               ; 2 uses
  %exitcond.not.i202 = icmp eq i32 %i.az, %i.ag
  br i1 %exitcond.not.i202, label %.tail, label %.lr.ph.i198, !llvm.loop !291

call.3:                                           ; preds = %bb.i
  br i1 %.not.i, label %.tail, label %.lr.ph.i204

.lr.ph.i204:                                      ; preds = %call.3, %.lr.ph.i204
  %.012.i205 = phi i32 [ %i.be, %.lr.ph.i204 ], [ 0, %call.3 ]
  %.0811.i206 = phi ptr [ %i.ba, %.lr.ph.i204 ], [ %i.al, %call.3 ] ; 2 uses
  %.0910.i207 = phi ptr [ %i.bd, %.lr.ph.i204 ], [ %i.aj, %call.3 ] ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.0811.i206, i64 4
  %i.bb = load float, ptr %.0811.i206, align 4, !tbaa !59
  %i.bc = fpext float %i.bb to double
  tail call void @opj_write_double_LE(ptr noundef nonnull %.0910.i207, double noundef %i.bc) #21
  %i.bd = getelementptr inbounds nuw i8, ptr %.0910.i207, i64 8
  %i.be = add nuw i32 %.012.i205, 1               ; 2 uses
  %exitcond.not.i208 = icmp eq i32 %i.be, %i.ag
  br i1 %exitcond.not.i208, label %.tail, label %.lr.ph.i204, !llvm.loop !292

.tail:                                            ; preds = %.lr.ph.i204, %.lr.ph.i198, %.lr.ph.i192, %.lr.ph.i, %call.3, %call.2, %call.1, %call.0
  %i.bf = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  store i32 %i.ah, ptr %i.bf, align 8, !tbaa !133
  %i.bg = load i32, ptr %.phi.trans.insert, align 8, !tbaa !124
  %i.bh = add i32 %i.bg, 1                        ; 2 uses
  store i32 %i.bh, ptr %.phi.trans.insert, align 8, !tbaa !124
  br label %._crit_edge175

end_hunk_0
