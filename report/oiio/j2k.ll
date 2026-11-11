Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/j2k?download=true
inline.NumInlined: 159
inline.NumDeleted: 67
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
define internal fastcc void @opj_j2k_check_poc_val(ptr nofree noundef nonnull readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6) unnamed_addr #3 !guid !632 {
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
  br i1 %i.w, label %middle.block, label %vector.body, !llvm.loop !623

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
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !624

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
  br i1 %exitcond123.not.3, label %._crit_edge95.us.us.us, label %scalar.ph, !llvm.loop !625

._crit_edge95.us.us.us:                           ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %.lcssa = phi i32 [ %i.x, %middle.block ], [ %.lcssa10.unr, %scalar.ph.prol.loopexit ], [ %i.bi, %scalar.ph ] ; 3 uses
  %i.bl = add i32 %4, %.27397.us.us.us
  %i.bm = add nuw i32 %.17098.us.us.us, 1         ; 2 uses
  %exitcond124.not = icmp eq i32 %i.bm, %3
  br i1 %exitcond124.not, label %._crit_edge100.split.us.us.us, label %.preheader.us.us.us, !llvm.loop !626

._crit_edge100.split.us.us.us:                    ; preds = %._crit_edge95.us.us.us
  %i.bn = add i32 %i.a, %.172104.us.us
  %i.bo = add nuw i32 %.166105.us.us, 1           ; 2 uses
  %exitcond125.not = icmp eq i32 %i.bo, %5
  br i1 %exitcond125.not, label %._crit_edge107, label %.preheader76.us.us, !llvm.loop !627

bb.c:                                             ; preds = %.lr.ph90, %.loopexit
  %indvars.iv = phi i64 [ 0, %.lr.ph90 ], [ %indvars.iv.next, %.loopexit ] ; 2 uses
  %i.bp = getelementptr inbounds nuw [148 x i8], ptr %0, i64 %indvars.iv ; 6 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 48
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !419
  %i.bs = icmp eq i32 %i.g, %i.br
  br i1 %i.bs, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.bt = load i32, ptr %i.bp, align 4, !tbaa !421 ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bp, i64 12 ; 2 uses
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !452 ; 2 uses
  %i.bw = tail call noundef i32 @llvm.umin.i32(i32 %i.bv, i32 %3)
  %i.bx = icmp ult i32 %i.bt, %i.bw
  br i1 %i.bx, label %.lr.ph88, label %.loopexit

.lr.ph88:                                         ; preds = %bb.d
  %i.by = mul i32 %i.bt, %4
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bp, i64 4 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bp, i64 16 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bp, i64 8 ; 2 uses
  %.pre126 = load i32, ptr %i.bz, align 4, !tbaa !420
  %.pre.a = load i32, ptr %i.ca, align 4, !tbaa !422 ; 2 uses
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
  %.pre126.a = load i32, ptr %i.cb, align 4, !tbaa !451
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
  %i.cp = load i32, ptr %i.cb, align 4, !tbaa !451 ; 2 uses
  %i.cq = tail call noundef i32 @llvm.umin.i32(i32 %i.cp, i32 %5)
  %i.cr = icmp ult i32 %i.co, %i.cq
  br i1 %i.cr, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !628

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre127 = load i32, ptr %i.ca, align 4, !tbaa !422
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader78
  %i.cs = phi i32 [ %.pre127, %._crit_edge.loopexit ], [ %i.ci, %.preheader78 ] ; 4 uses
  %i.ct = phi i32 [ %i.cp, %._crit_edge.loopexit ], [ %i.cj, %.preheader78 ]
  %i.cu = add i32 %.06283, 1
  %i.cv = add nuw i32 %.06782, 1                  ; 2 uses
  %i.cw = tail call noundef i32 @llvm.umin.i32(i32 %i.cs, i32 %4)
  %i.cx = icmp ult i32 %i.cv, %i.cw
  br i1 %i.cx, label %.preheader78, label %._crit_edge84.loopexit, !llvm.loop !629

._crit_edge84.loopexit:                           ; preds = %._crit_edge
  %.pre = load i32, ptr %i.bz, align 4, !tbaa !420
  %.pre128 = load i32, ptr %i.bu, align 4, !tbaa !452
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
  br i1 %i.de, label %bb.e, label %.loopexit, !llvm.loop !630

.loopexit:                                        ; preds = %._crit_edge84, %bb.d, %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader77, label %bb.c, !llvm.loop !631

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
define range(i32 0, 2) i32 @opj_j2k_setup_mct_encoding(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #3 !guid !639 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !416
  %.not = icmp eq i32 %i.b, 2
  br i1 %.not, label %bb.b, label %bb.u

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 5640 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !427
  %.not152 = icmp eq ptr %i.d, null
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 5664 ; 9 uses
  %.pre176 = load i32, ptr %.phi.trans.insert, align 8, !tbaa !456 ; 4 uses
  br i1 %.not152, label %._crit_edge175, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 5668 ; 3 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !457
  %i.g = icmp eq i32 %.pre176, %i.f
  br i1 %i.g, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.h = add i32 %.pre176, 10                     ; 2 uses
  store i32 %i.h, ptr %i.e, align 4, !tbaa !457
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 5656 ; 4 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !458
  %i.k = zext i32 %i.h to i64
  %i.l = shl nuw nsw i64 %i.k, 5
  %i.m = tail call ptr @opj_realloc(ptr noundef %i.j, i64 noundef %i.l) #21 ; 3 uses
  %.not153.not = icmp eq ptr %i.m, null
  br i1 %.not153.not, label %.thread, label %bb.e

.thread:                                          ; preds = %bb.d
  %i.n = load ptr, ptr %i.i, align 8, !tbaa !458
  tail call void @opj_free(ptr noundef %i.n) #21
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  br label %bb.u

bb.e:                                             ; preds = %bb.d
  store ptr %i.m, ptr %i.i, align 8, !tbaa !458
  %i.o = load i32, ptr %.phi.trans.insert, align 8, !tbaa !456 ; 2 uses
  %i.p = zext i32 %i.o to i64
  %i.q = getelementptr inbounds nuw [32 x i8], ptr %i.m, i64 %i.p
  %i.r = load i32, ptr %i.e, align 4, !tbaa !457
  %i.s = sub i32 %i.r, %i.o
  %i.t = zext i32 %i.s to i64
  %i.u = shl nuw nsw i64 %i.t, 5
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.q, i8 0, i64 %i.u, i1 false)
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !456
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c
  %i.v = phi i32 [ %.pre, %bb.e ], [ %.pre176, %bb.c ]
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 5656
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !458
  %i.y = zext i32 %i.v to i64
  %i.z = getelementptr inbounds nuw [32 x i8], ptr %i.x, i64 %i.y ; 7 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 3 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !460 ; 2 uses
  %.not154 = icmp eq ptr %i.ab, null
  br i1 %.not154, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @opj_free(ptr noundef nonnull %i.ab) #21
  store ptr null, ptr %i.aa, align 8, !tbaa !460
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store i32 1, ptr %i.ac, align 8, !tbaa !461
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  store i32 1, ptr %i.ad, align 4, !tbaa !462
  store i32 2, ptr %i.z, align 8, !tbaa !463
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !385 ; 2 uses
  %i.ag = mul i32 %i.af, %i.af                    ; 6 uses
  %i.ah = shl i32 %i.ag, 2                        ; 2 uses
  %i.ai = zext i32 %i.ah to i64
  %i.aj = tail call ptr @opj_malloc(i64 noundef %i.ai) #21 ; 6 uses
  store ptr %i.aj, ptr %i.aa, align 8, !tbaa !460
  %.not155 = icmp eq ptr %i.aj, null
  br i1 %.not155, label %bb.u, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ak = load i32, ptr %i.z, align 8, !tbaa !463
  %i.al = load ptr, ptr %i.c, align 8, !tbaa !427 ; 4 uses
  %.not.i = icmp eq i32 %i.ag, 0                  ; 4 uses
  switch i32 %i.ak, label %default.switch.case.unreachable [
    i32 0, label %call.0
    i32 1, label %call.1
    i32 2, label %call.2
    i32 3, label %call.3
  ], !prof !464

default.switch.case.unreachable:                  ; preds = %bb.i
  unreachable

call.0:                                           ; preds = %bb.i
  br i1 %.not.i, label %.tail, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %call.0, %.lr.ph.i
  %.012.i = phi i32 [ %i.aq, %.lr.ph.i ], [ 0, %call.0 ]
  %.0811.i = phi ptr [ %i.am, %.lr.ph.i ], [ %i.al, %call.0 ] ; 2 uses
  %.0910.i = phi ptr [ %i.ap, %.lr.ph.i ], [ %i.aj, %call.0 ] ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.0811.i, i64 4
  %i.an = load float, ptr %.0811.i, align 4, !tbaa !391
  %i.ao = fptoui float %i.an to i32
  tail call void @opj_write_bytes_LE(ptr noundef nonnull %.0910.i, i32 noundef %i.ao, i32 noundef 2) #21
  %i.ap = getelementptr inbounds nuw i8, ptr %.0910.i, i64 2
  %i.aq = add nuw i32 %.012.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.aq, %i.ag
  br i1 %exitcond.not.i, label %.tail, label %.lr.ph.i, !llvm.loop !633

call.1:                                           ; preds = %bb.i
  br i1 %.not.i, label %.tail, label %.lr.ph.i192

.lr.ph.i192:                                      ; preds = %call.1, %.lr.ph.i192
  %.012.i193 = phi i32 [ %i.av, %.lr.ph.i192 ], [ 0, %call.1 ]
  %.0811.i194 = phi ptr [ %i.ar, %.lr.ph.i192 ], [ %i.al, %call.1 ] ; 2 uses
  %.0910.i195 = phi ptr [ %i.au, %.lr.ph.i192 ], [ %i.aj, %call.1 ] ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.0811.i194, i64 4
  %i.as = load float, ptr %.0811.i194, align 4, !tbaa !391
  %i.at = fptoui float %i.as to i32
  tail call void @opj_write_bytes_LE(ptr noundef nonnull %.0910.i195, i32 noundef %i.at, i32 noundef 4) #21
  %i.au = getelementptr inbounds nuw i8, ptr %.0910.i195, i64 4
  %i.av = add nuw i32 %.012.i193, 1               ; 2 uses
  %exitcond.not.i196 = icmp eq i32 %i.av, %i.ag
  br i1 %exitcond.not.i196, label %.tail, label %.lr.ph.i192, !llvm.loop !634

call.2:                                           ; preds = %bb.i
  br i1 %.not.i, label %.tail, label %.lr.ph.i198

.lr.ph.i198:                                      ; preds = %call.2, %.lr.ph.i198
  %.012.i199 = phi i32 [ %i.az, %.lr.ph.i198 ], [ 0, %call.2 ]
  %.0811.i200 = phi ptr [ %i.aw, %.lr.ph.i198 ], [ %i.al, %call.2 ] ; 2 uses
  %.0910.i201 = phi ptr [ %i.ay, %.lr.ph.i198 ], [ %i.aj, %call.2 ] ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.0811.i200, i64 4
  %i.ax = load float, ptr %.0811.i200, align 4, !tbaa !391
  tail call void @opj_write_float_LE(ptr noundef nonnull %.0910.i201, float noundef %i.ax) #21
  %i.ay = getelementptr inbounds nuw i8, ptr %.0910.i201, i64 4
  %i.az = add nuw i32 %.012.i199, 1               ; 2 uses
  %exitcond.not.i202 = icmp eq i32 %i.az, %i.ag
  br i1 %exitcond.not.i202, label %.tail, label %.lr.ph.i198, !llvm.loop !635

call.3:                                           ; preds = %bb.i
  br i1 %.not.i, label %.tail, label %.lr.ph.i204

.lr.ph.i204:                                      ; preds = %call.3, %.lr.ph.i204
  %.012.i205 = phi i32 [ %i.be, %.lr.ph.i204 ], [ 0, %call.3 ]
  %.0811.i206 = phi ptr [ %i.ba, %.lr.ph.i204 ], [ %i.al, %call.3 ] ; 2 uses
  %.0910.i207 = phi ptr [ %i.bd, %.lr.ph.i204 ], [ %i.aj, %call.3 ] ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.0811.i206, i64 4
  %i.bb = load float, ptr %.0811.i206, align 4, !tbaa !391
  %i.bc = fpext float %i.bb to double
  tail call void @opj_write_double_LE(ptr noundef nonnull %.0910.i207, double noundef %i.bc) #21
  %i.bd = getelementptr inbounds nuw i8, ptr %.0910.i207, i64 8
  %i.be = add nuw i32 %.012.i205, 1               ; 2 uses
  %exitcond.not.i208 = icmp eq i32 %i.be, %i.ag
  br i1 %exitcond.not.i208, label %.tail, label %.lr.ph.i204, !llvm.loop !636

.tail:                                            ; preds = %.lr.ph.i204, %.lr.ph.i198, %.lr.ph.i192, %.lr.ph.i, %call.3, %call.2, %call.1, %call.0
  %i.bf = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  store i32 %i.ah, ptr %i.bf, align 8, !tbaa !465
  %i.bg = load i32, ptr %.phi.trans.insert, align 8, !tbaa !456
  %i.bh = add i32 %i.bg, 1                        ; 2 uses
  store i32 %i.bh, ptr %.phi.trans.insert, align 8, !tbaa !456
  br label %._crit_edge175

end_hunk_0
begin_hunk_1_@opj_j2k_read_tile_header:bb.a
  %i.a = alloca [10 x i8], align 1                ; 13 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 8 uses
  %i.d = alloca i32, align 4                      ; 6 uses
  %i.e = alloca i32, align 4                      ; 8 uses
  %i.f = alloca i32, align 4                      ; 6 uses
  %i.g = alloca i32, align 4                      ; 6 uses
  %i.h = alloca i32, align 4                      ; 18 uses
  %i.i = alloca i32, align 4                      ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #21
  store i32 65424, ptr %i.h, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #21
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !493
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 188 ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !494
  %i.n = mul i32 %i.m, %i.k                       ; 9 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 12 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !343
  switch i32 %i.p, label %.critedge278 [
    i32 256, label %.thread593
    i32 8, label %bb.b
  ]

.thread593:                                       ; preds = %bb.a
  store i32 65497, ptr %i.h, align 4, !tbaa !10
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 128
  br label %.loopexit325.thread591

bb.b:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 16 uses
  %i.s = load i8, ptr %i.r, align 8
  %i.t = and i8 %i.s, 1
  %.not239464 = icmp eq i8 %i.t, 0
  br i1 %.not239464, label %.lr.ph466, label %.loopexit325.thread591

.lr.ph466:                                        ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 16 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 12 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 8 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  %.not = icmp ne i32 %i.n, 0                     ; 2 uses
  %wide.trip.count = zext i32 %i.n to i64         ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.al = icmp eq i32 %i.n, 1
  %unroll_iter = and i64 %wide.trip.count, 4294967294
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod735 = trunc i32 %i.n to i1
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph466, %.backedge
  %i.am = phi i32 [ 65424, %.lr.ph466 ], [ %i.pa, %.backedge ]
  %i.an = load i32, ptr %i.u, align 4, !tbaa !343 ; 2 uses
  %.not240 = icmp eq i32 %i.an, 0
  br i1 %.not240, label %bb.k, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ao = load i32, ptr %i.v, align 8, !tbaa !343 ; 3 uses
  %i.ap = icmp ult i32 %i.ao, %i.an
  br i1 %i.ap, label %bb.e, label %bb.k

bb.e:                                             ; preds = %bb.d
  %i.aq = load ptr, ptr %i.w, align 8, !tbaa !343
  %i.ar = zext i32 %i.ao to i64
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.ar
  %i.at = load i64, ptr %i.as, align 8, !tbaa !495
  %i.au = add nuw i32 %i.ao, 1
  store i32 %i.au, ptr %i.v, align 8, !tbaa !343
  %i.av = call i32 @opj_stream_read_seek(ptr noundef %9, i64 noundef %i.at, ptr noundef %10) #21
  %.not241 = icmp eq i32 %i.av, 0
  br i1 %.not241, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aw = call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %10, i32 noundef 1, ptr noundef nonnull @.str.36) #21 ; 0 uses
  br label %.critedge278

bb.g:                                             ; preds = %bb.e
  %i.ax = load ptr, ptr %i.x, align 8, !tbaa !343
  %i.ay = call i64 @opj_stream_read_data(ptr noundef %9, ptr noundef %i.ax, i64 noundef 2, ptr noundef %10) #21
  %.not242 = icmp eq i64 %i.ay, 2
  br i1 %.not242, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.az = call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %10, i32 noundef 1, ptr noundef nonnull @.str.37) #21 ; 0 uses
  br label %.critedge278

bb.i:                                             ; preds = %bb.g
  %i.ba = load ptr, ptr %i.x, align 8, !tbaa !343
  call void @opj_read_bytes_LE(ptr noundef %i.ba, ptr noundef nonnull %i.h, i32 noundef 2) #21
  %i.bb = load i32, ptr %i.h, align 4, !tbaa !10
  %.not243 = icmp eq i32 %i.bb, 65424
  br i1 %.not243, label %.lr.ph.preheader, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bc = call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %10, i32 noundef 1, ptr noundef nonnull @.str.38) #21 ; 0 uses
  br label %.critedge278

bb.k:                                             ; preds = %bb.d, %bb.c
  %.not244461 = icmp eq i32 %i.am, 65427
  br i1 %.not244461, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.i, %bb.k
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.bb
  %i.bd = call i64 @opj_stream_get_number_byte_left(ptr noundef %9) #21
  %i.be = icmp eq i64 %i.bd, 0
  br i1 %i.be, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.lr.ph
  store i32 64, ptr %i.o, align 8, !tbaa !343
  br label %.loopexit

bb.m:                                             ; preds = %.lr.ph
  %i.bf = load ptr, ptr %i.x, align 8, !tbaa !343
  %i.bg = call i64 @opj_stream_read_data(ptr noundef %9, ptr noundef %i.bf, i64 noundef 2, ptr noundef %10) #21
  %.not245 = icmp eq i64 %i.bg, 2
  br i1 %.not245, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bh = call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %10, i32 noundef 1, ptr noundef nonnull @.str.37) #21 ; 0 uses
  br label %.critedge278

bb.o:                                             ; preds = %bb.m
  %i.bi = load ptr, ptr %i.x, align 8, !tbaa !343
  call void @opj_read_bytes_LE(ptr noundef %i.bi, ptr noundef nonnull %i.i, i32 noundef 2) #21
  %i.bj = load i32, ptr %i.i, align 4, !tbaa !10
  %i.bk = icmp ult i32 %i.bj, 2
  br i1 %i.bk, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bl = call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %10, i32 noundef 1, ptr noundef nonnull @.str.39) #21 ; 0 uses
  br label %.critedge278

bb.q:                                             ; preds = %bb.o
  %i.bm = load i32, ptr %i.h, align 4, !tbaa !10
  %i.bn = icmp eq i32 %i.bm, 32896
  br i1 %i.bn, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.bo = call i64 @opj_stream_get_number_byte_left(ptr noundef %9) #21
  %i.bp = icmp eq i64 %i.bo, 0
  br i1 %i.bp, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store i32 64, ptr %i.o, align 8, !tbaa !343
  br label %.loopexit

bb.t:                                             ; preds = %bb.r, %bb.q
  %i.bq = load i32, ptr %i.o, align 8, !tbaa !343 ; 2 uses
  %i.br = and i32 %i.bq, 16
  %.not246 = icmp eq i32 %i.br, 0
  br i1 %.not246, label %._crit_edge533, label %bb.u

._crit_edge533:                                   ; preds = %bb.t
  %.pre = load i32, ptr %i.i, align 4, !tbaa !10
  br label %bb.y

bb.u:                                             ; preds = %bb.t
  %i.bs = load i32, ptr %i.y, align 4, !tbaa !343 ; 3 uses
  %.not247 = icmp eq i32 %i.bs, 0
  %.pre534 = load i32, ptr %i.i, align 4, !tbaa !10 ; 3 uses
  br i1 %.not247, label %bb.y, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bt = add i32 %.pre534, 2                     ; 2 uses
  %i.bu = icmp ult i32 %i.bs, %i.bt
  br i1 %i.bu, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.bv = call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %10, i32 noundef 1, ptr noundef nonnull @.str.40) #21 ; 0 uses
  br label %.critedge278

bb.x:                                             ; preds = %bb.v
  %i.bw = sub nuw i32 %i.bs, %i.bt
  store i32 %i.bw, ptr %i.y, align 4, !tbaa !343
  br label %bb.y

bb.y:                                             ; preds = %._crit_edge533, %bb.x, %bb.u
  %i.bx = phi i32 [ %.pre, %._crit_edge533 ], [ %.pre534, %bb.x ], [ %.pre534, %bb.u ]
  %i.by = add i32 %i.bx, -2                       ; 4 uses
  store i32 %i.by, ptr %i.i, align 4, !tbaa !10
  %i.bz = load i32, ptr %i.h, align 4, !tbaa !10
  br label %bb.z

bb.z:                                             ; preds = %bb.z, %bb.y
  %.0.i = phi ptr [ @j2k_memory_marker_handler_tab, %bb.y ], [ %i.cc, %bb.z ] ; 4 uses
  %i.ca = load i32, ptr %.0.i, align 16, !tbaa !497 ; 4 uses
  %.not.i = icmp eq i32 %i.ca, 0
  %i.cb = icmp eq i32 %i.ca, %i.bz
  %or.cond.i = or i1 %.not.i, %i.cb
  %i.cc = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  br i1 %or.cond.i, label %opj_j2k_get_marker_handler.exit, label %bb.z, !llvm.loop !3

opj_j2k_get_marker_handler.exit:                  ; preds = %bb.z
  %i.cd = getelementptr inbounds nuw i8, ptr %.0.i, i64 4
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !498
  %i.cf = and i32 %i.ce, %i.bq
  %.not248 = icmp eq i32 %i.cf, 0
  br i1 %.not248, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %opj_j2k_get_marker_handler.exit
  %i.cg = call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %10, i32 noundef 1, ptr noundef nonnull @.str.41) #21 ; 0 uses
  br label %.critedge278

bb.ab:                                            ; preds = %opj_j2k_get_marker_handler.exit
  %i.ch = load i32, ptr %i.z, align 8, !tbaa !343
  %i.ci = icmp ugt i32 %i.by, %i.ch
  br i1 %i.ci, label %bb.ac, label %._crit_edge535

._crit_edge535:                                   ; preds = %bb.ab
  %.pre536 = load ptr, ptr %i.x, align 8, !tbaa !343
  br label %bb.ah

bb.ac:                                            ; preds = %bb.ab
  %i.cj = zext i32 %i.by to i64
  %i.ck = call i64 @opj_stream_get_number_byte_left(ptr noundef %9) #21
  %i.cl = icmp slt i64 %i.ck, %i.cj
  br i1 %i.cl, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.cm = call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %10, i32 noundef 1, ptr noundef nonnull @.str.42) #21 ; 0 uses
  br label %.critedge278

bb.ae:                                            ; preds = %bb.ac
  %i.cn = load ptr, ptr %i.x, align 8, !tbaa !343
  %i.co = load i32, ptr %i.i, align 4, !tbaa !10
  %i.cp = zext i32 %i.co to i64
  %i.cq = call ptr @opj_realloc(ptr noundef %i.cn, i64 noundef %i.cp) #21 ; 3 uses
  %.not249 = icmp eq ptr %i.cq, null
  br i1 %.not249, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.cr = load ptr, ptr %i.x, align 8, !tbaa !343
  call void @opj_free(ptr noundef %i.cr) #21
  store ptr null, ptr %i.x, align 8, !tbaa !343
  store i32 0, ptr %i.z, align 8, !tbaa !343
  %i.cs = call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %10, i32 noundef 1, ptr noundef nonnull @.str.43) #21 ; 0 uses
  br label %.critedge278

bb.ag:                                            ; preds = %bb.ae
  store ptr %i.cq, ptr %i.x, align 8, !tbaa !343
  %i.ct = load i32, ptr %i.i, align 4, !tbaa !10  ; 2 uses
  store i32 %i.ct, ptr %i.z, align 8, !tbaa !343
  br label %bb.ah

bb.ah:                                            ; preds = %._crit_edge535, %bb.ag
  %i.cu = phi i32 [ %i.by, %._crit_edge535 ], [ %i.ct, %bb.ag ]
  %i.cv = phi ptr [ %.pre536, %._crit_edge535 ], [ %i.cq, %bb.ag ]
  %i.cw = zext i32 %i.cu to i64
  %i.cx = call i64 @opj_stream_read_data(ptr noundef %9, ptr noundef %i.cv, i64 noundef %i.cw, ptr noundef %10) #21
  %i.cy = load i32, ptr %i.i, align 4, !tbaa !10  ; 2 uses
  %i.cz = zext i32 %i.cy to i64
  %.not250 = icmp eq i64 %i.cx, %i.cz
  br i1 %.not250, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.da = call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %10, i32 noundef 1, ptr noundef nonnull @.str.37) #21 ; 0 uses
  br label %.critedge278

bb.aj:                                            ; preds = %bb.ah
  %i.db = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !499 ; 2 uses
  %.not251 = icmp eq ptr %i.dc, null
  br i1 %.not251, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.dd = call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %10, i32 noundef 1, ptr noundef nonnull @.str.44) #21 ; 0 uses
  br label %.critedge278

bb.al:                                            ; preds = %bb.aj
  %i.de = load ptr, ptr %i.x, align 8, !tbaa !343
  %i.df = call i32 %i.dc(ptr noundef nonnull %0, ptr noundef %i.de, i32 noundef %i.cy, ptr noundef %10) #21
  %.not252 = icmp eq i32 %i.df, 0
  br i1 %.not252, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.dg = load i32, ptr %i.h, align 4, !tbaa !10
  %i.dh = call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %10, i32 noundef 1, ptr noundef nonnull @.str.45, i32 noundef %i.dg) #21 ; 0 uses
  br label %.critedge278

bb.an:                                            ; preds = %bb.al
  %i.di = load i32, ptr %i.aa, align 8, !tbaa !500
  %i.dj = load ptr, ptr %i.ab, align 8, !tbaa !374
  %i.dk = call i64 @opj_stream_tell(ptr noundef %9) #21
  %i.dl = trunc i64 %i.dk to i32
  %i.dm = load i32, ptr %i.i, align 4, !tbaa !10  ; 2 uses
  %i.dn = sub i32 %i.dl, %i.dm
  %i.do = add i32 %i.dn, -4                       ; 2 uses
  %i.dp = zext i32 %i.do to i64
  %i.dq = add i32 %i.dm, 4
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dj, i64 48 ; 3 uses
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !485 ; 2 uses
  %i.dt = zext i32 %i.di to i64                   ; 4 uses
  %i.du = getelementptr inbounds nuw [56 x i8], ptr %i.ds, i64 %i.dt ; 4 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 24
  %i.dw = load i32, ptr %i.dv, align 8, !tbaa !501 ; 2 uses
  %i.dx = add i32 %i.dw, 1                        ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.du, i64 40 ; 2 uses
  %i.dz = load i32, ptr %i.dy, align 8, !tbaa !502 ; 2 uses
  %i.ea = icmp ugt i32 %i.dx, %i.dz
  br i1 %i.ea, label %bb.ao, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.an
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.du, i64 32
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !492
  br label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.eb = uitofp i32 %i.dz to float
  %i.ec = fadd float %i.eb, 1.000000e+02
  %i.ed = fptoui float %i.ec to i32               ; 2 uses
  store i32 %i.ed, ptr %i.dy, align 8, !tbaa !502
  %i.ee = getelementptr inbounds nuw i8, ptr %i.du, i64 32
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !492
  %i.eg = zext i32 %i.ed to i64
  %i.eh = mul nuw nsw i64 %i.eg, 24
  %i.ei = call ptr @opj_realloc(ptr noundef %i.ef, i64 noundef %i.eh) #21 ; 3 uses
  %.not.i287 = icmp eq ptr %i.ei, null
  %i.ej = load ptr, ptr %i.dr, align 8, !tbaa !485 ; 2 uses
  %i.ek = getelementptr inbounds nuw [56 x i8], ptr %i.ej, i64 %i.dt ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 32 ; 2 uses
  br i1 %.not.i287, label %bb.at, label %.thread.i

.thread.i:                                        ; preds = %bb.ao
  store ptr %i.ei, ptr %i.el, align 8, !tbaa !492
  %.phi.trans.insert60.i = getelementptr inbounds nuw i8, ptr %i.ek, i64 24
  %.pre61.i = load i32, ptr %.phi.trans.insert60.i, align 8, !tbaa !501 ; 2 uses
  %.pre62.i = add i32 %.pre61.i, 1
  br label %bb.ap

bb.ap:                                            ; preds = %.thread.i, %._crit_edge.i
  %.pre-phi.i = phi i32 [ %i.dx, %._crit_edge.i ], [ %.pre62.i, %.thread.i ]
  %i.em = phi i32 [ %i.dw, %._crit_edge.i ], [ %.pre61.i, %.thread.i ]
  %i.en = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.ei, %.thread.i ]
  %i.eo = phi ptr [ %i.ds, %._crit_edge.i ], [ %i.ej, %.thread.i ]
  %i.ep = trunc i32 %i.ca to i16
  %i.eq = getelementptr inbounds nuw [56 x i8], ptr %i.eo, i64 %i.dt ; 4 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 24
  %i.es = zext i32 %i.em to i64
  %i.et = getelementptr inbounds nuw [24 x i8], ptr %i.en, i64 %i.es ; 3 uses
  store i16 %i.ep, ptr %i.et, align 8, !tbaa !504
  %i.eu = sext i32 %i.do to i64
  %i.ev = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  store i64 %i.eu, ptr %i.ev, align 8, !tbaa !505
  %i.ew = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  store i32 %i.dq, ptr %i.ew, align 8, !tbaa !506
  store i32 %.pre-phi.i, ptr %i.er, align 8, !tbaa !501
  %i.ex = icmp eq i32 %i.ca, 65424
  br i1 %i.ex, label %bb.aq, label %bb.aw

bb.aq:                                            ; preds = %bb.ap
  %i.ey = getelementptr inbounds nuw i8, ptr %i.eq, i64 12
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !507 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.eq, i64 16
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !491 ; 2 uses
  %.not59.i = icmp eq ptr %i.fb, null
  br i1 %.not59.i, label %bb.au, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.fc = getelementptr inbounds nuw i8, ptr %i.eq, i64 4
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !508
  %i.fe = icmp ult i32 %i.ez, %i.fd
  br i1 %i.fe, label %bb.as, label %bb.au

bb.as:                                            ; preds = %bb.ar
  %i.ff = zext i32 %i.ez to i64
  %i.fg = getelementptr inbounds nuw [24 x i8], ptr %i.fb, i64 %i.ff
  store i64 %i.dp, ptr %i.fg, align 8, !tbaa !510
  br label %bb.au

bb.at:                                            ; preds = %bb.ao
  %i.fh = load ptr, ptr %i.el, align 8, !tbaa !492
  call void @opj_free(ptr noundef %i.fh) #21
  %i.fi = load ptr, ptr %i.dr, align 8, !tbaa !485
  %i.fj = getelementptr inbounds nuw [56 x i8], ptr %i.fi, i64 %i.dt ; 3 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 32
  store ptr null, ptr %i.fk, align 8, !tbaa !492
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fj, i64 40
  store i32 0, ptr %i.fl, align 8, !tbaa !502
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fj, i64 24
  store i32 0, ptr %i.fm, align 8, !tbaa !501
  %i.fn = call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %10, i32 noundef 1, ptr noundef nonnull @.str.46) #21 ; 0 uses
  br label %.critedge278

bb.au:                                            ; preds = %bb.aq, %bb.ar, %bb.as
  %i.fo = call i64 @opj_stream_tell(ptr noundef %9) #21
  %i.fp = trunc i64 %i.fo to i32
end_hunk_1
begin_hunk_2_@opj_j2k_write_tile:bb.a
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !385
  %.not = icmp eq i32 %i.ab, 0
  br i1 %.not, label %._crit_edge, label %.critedge

bb.b:                                             ; preds = %opj_j2k_pre_write_tile.exit.thread, %opj_j2k_pre_write_tile.exit
  %i.ac = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %5, i32 noundef 1, ptr noundef nonnull @.str.105, i32 noundef %1) #21 ; 0 uses
  br label %.thread

bb.c:                                             ; preds = %.critedge
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ad = load ptr, ptr %i.s, align 8, !tbaa !358 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !551
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !385
  %i.ai = zext i32 %i.ah to i64
  %i.aj = icmp samesign ult i64 %indvars.iv.next, %i.ai
  br i1 %i.aj, label %.critedge, label %._crit_edge, !llvm.loop !781

.critedge:                                        ; preds = %.preheader, %bb.c
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.c ], [ 0, %.preheader ] ; 2 uses
  %i.ak = phi ptr [ %i.ad, %bb.c ], [ %i.x, %.preheader ]
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !522
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !525
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !553
  %i.aq = getelementptr inbounds nuw [112 x i8], ptr %i.ap, i64 %indvars.iv
  %i.ar = tail call i32 @opj_alloc_tile_component_data(ptr noundef %i.aq) #21
  %.not29.not = icmp eq i32 %i.ar, 0
  br i1 %.not29.not, label %bb.d, label %bb.c

bb.d:                                             ; preds = %.critedge
  %i.as = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %5, i32 noundef 1, ptr noundef nonnull @.str.101) #21 ; 0 uses
  br label %.thread

._crit_edge:                                      ; preds = %bb.c, %.preheader
  %.lcssa = phi ptr [ %i.x, %.preheader ], [ %i.ad, %bb.c ]
  %i.at = zext i32 %3 to i64
  %i.au = tail call i32 @opj_tcd_copy_tile_data(ptr noundef nonnull %.lcssa, ptr noundef %2, i64 noundef %i.at) #21
  %.not27 = icmp eq i32 %i.au, 0
  br i1 %.not27, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge
  %i.av = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %5, i32 noundef 1, ptr noundef nonnull @.str.103) #21 ; 0 uses
  br label %.thread

bb.f:                                             ; preds = %._crit_edge
  %i.aw = tail call fastcc i32 @opj_j2k_post_write_tile(ptr noundef nonnull %0, ptr noundef %4, ptr noundef %5)
  %.not28 = icmp eq i32 %i.aw, 0
  br i1 %.not28, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f
  %i.ax = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %5, i32 noundef 1, ptr noundef nonnull @.str.106, i32 noundef %1) #21 ; 0 uses
  br label %.thread

.thread:                                          ; preds = %bb.g, %bb.e, %bb.d, %bb.f, %bb.b
  %.3 = phi i32 [ 0, %bb.b ], [ 1, %bb.f ], [ 0, %bb.d ], [ 0, %bb.e ], [ 0, %bb.g ]
  ret i32 %.3
}

; Function Attrs: nofree nounwind memory(read)
declare noundef ptr @getenv(ptr noundef captures(none)) local_unnamed_addr #12

declare i32 @opj_get_num_cpus() local_unnamed_addr #4

declare i32 @opj_procedure_list_add_procedure(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @opj_j2k_read_header_procedure(ptr noundef initializes((8, 12)) %0, ptr noundef %1, ptr noundef %2) #3 !guid !784 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca [2 x i8], align 1                 ; 5 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 8 uses
  %i.e = alloca i32, align 4                      ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #21
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  store i32 1, ptr %i.f, align 8, !tbaa !343
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  %i.g = call i64 @opj_stream_read_data(ptr noundef %1, ptr noundef nonnull %i.b, i64 noundef 2, ptr noundef %2) #21
  %.not.i = icmp eq i64 %i.g, 2
  br i1 %.not.i, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  call void @opj_read_bytes_LE(ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, i32 noundef 2) #21
  %i.h = load i32, ptr %i.c, align 4, !tbaa !10
  %.not10.i = icmp eq i32 %i.h, 65359
  br i1 %.not10.i, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  store i32 2, ptr %i.f, align 8, !tbaa !343
  %i.i = call i64 @opj_stream_tell(ptr noundef %1) #21
  %i.j = add nsw i64 %i.i, -2                     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 5 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !374
  store i64 %i.j, ptr %i.l, align 8, !tbaa !538
  %i.m = call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %2, i32 noundef 4, ptr noundef nonnull @.str.169, i64 noundef %i.j) #21 ; 0 uses
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !374  ; 5 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !538
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 24 ; 4 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !533  ; 2 uses
  %i.r = add i32 %i.q, 1                          ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 40 ; 3 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !532  ; 2 uses
  %i.u = icmp ugt i32 %i.r, %i.t
  br i1 %i.u, label %bb.d, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.c
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !484
  br label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.v = uitofp i32 %i.t to float
  %i.w = fadd float %i.v, 1.000000e+02
  %i.x = fptoui float %i.w to i32                 ; 2 uses
  store i32 %i.x, ptr %i.s, align 8, !tbaa !532
  %i.y = getelementptr inbounds nuw i8, ptr %i.n, i64 32 ; 4 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !484
  %i.aa = zext i32 %i.x to i64
  %i.ab = mul nuw nsw i64 %i.aa, 24
  %i.ac = call ptr @opj_realloc(ptr noundef %i.z, i64 noundef %i.ab) #21 ; 3 uses
  %.not.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i, label %bb.e, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.d
  store ptr %i.ac, ptr %i.y, align 8, !tbaa !484
  %.pre27.i.i = load i32, ptr %i.p, align 8, !tbaa !533 ; 2 uses
  %.pre28.i.i = add i32 %.pre27.i.i, 1
  br label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.ad = load ptr, ptr %i.y, align 8, !tbaa !484
  call void @opj_free(ptr noundef %i.ad) #21
  store ptr null, ptr %i.y, align 8, !tbaa !484
  store i32 0, ptr %i.s, align 8, !tbaa !532
  store i32 0, ptr %i.p, align 8, !tbaa !533
  %i.ae = call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %2, i32 noundef 1, ptr noundef nonnull @.str.163) #21 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.a, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  %i.af = call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %2, i32 noundef 1, ptr noundef nonnull @.str.158) #21 ; 0 uses
  br label %bb.as

bb.g:                                             ; preds = %.thread.i.i, %._crit_edge.i.i
  %.pre-phi.i.i = phi i32 [ %i.r, %._crit_edge.i.i ], [ %.pre28.i.i, %.thread.i.i ]
  %i.ag = phi i32 [ %i.q, %._crit_edge.i.i ], [ %.pre27.i.i, %.thread.i.i ]
  %i.ah = phi ptr [ %.pre.i.i, %._crit_edge.i.i ], [ %i.ac, %.thread.i.i ]
  %i.ai = zext i32 %i.ag to i64
  %i.aj = getelementptr inbounds nuw [24 x i8], ptr %i.ah, i64 %i.ai ; 3 uses
  store i16 -177, ptr %i.aj, align 8, !tbaa !504
  %i.ak = shl i64 %i.o, 32
  %i.al = ashr exact i64 %i.ak, 32
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store i64 %i.al, ptr %i.am, align 8, !tbaa !505
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store i32 2, ptr %i.an, align 8, !tbaa !506
  store i32 %.pre-phi.i.i, ptr %i.p, align 8, !tbaa !533
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 14 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !343
  %i.aq = call i64 @opj_stream_read_data(ptr noundef %1, ptr noundef %i.ap, i64 noundef 2, ptr noundef %2) #21
  %.not85 = icmp eq i64 %i.aq, 2
  br i1 %.not85, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ar = call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %2, i32 noundef 1, ptr noundef nonnull @.str.37) #21 ; 0 uses
  br label %bb.as

bb.i:                                             ; preds = %bb.g
  %i.as = load ptr, ptr %i.ao, align 8, !tbaa !343
  call void @opj_read_bytes_LE(ptr noundef %i.as, ptr noundef nonnull %i.d, i32 noundef 2) #21
  %i.at = load i32, ptr %i.d, align 4, !tbaa !10  ; 2 uses
  %.not86201 = icmp eq i32 %i.at, 65424
  br i1 %.not86201, label %.loopexit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.i
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph, %bb.ak
  %i.av = phi i32 [ %i.at, %.lr.ph ], [ %i.fp, %bb.ak ] ; 3 uses
  %.072204 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.ak ] ; 3 uses
  %.073203 = phi i32 [ 0, %.lr.ph ], [ %.174, %bb.ak ] ; 3 uses
  %.075202 = phi i32 [ 0, %.lr.ph ], [ %spec.select, %bb.ak ] ; 3 uses
  %i.aw = icmp ult i32 %i.av, 65280
  br i1 %i.aw, label %bb.k, label %.preheader121

bb.k:                                             ; preds = %bb.j
  %i.ax = call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %2, i32 noundef 1, ptr noundef nonnull @.str.159, i32 noundef %i.av) #21 ; 0 uses
  br label %bb.as

.preheader121:                                    ; preds = %bb.j, %.preheader121
  %.0.i95 = phi ptr [ %i.ba, %.preheader121 ], [ @j2k_memory_marker_handler_tab, %bb.j ] ; 3 uses
  %i.ay = load i32, ptr %.0.i95, align 16, !tbaa !497 ; 3 uses
  %.not.i96 = icmp eq i32 %i.ay, 0                ; 2 uses
  %i.az = icmp eq i32 %i.ay, %i.av
  %or.cond.i = or i1 %.not.i96, %i.az
  %i.ba = getelementptr inbounds nuw i8, ptr %.0.i95, i64 16
  br i1 %or.cond.i, label %opj_j2k_get_marker_handler.exit, label %.preheader121, !llvm.loop !3

opj_j2k_get_marker_handler.exit:                  ; preds = %.preheader121
  br i1 %.not.i96, label %bb.l, label %opj_j2k_get_marker_handler.exit110

bb.l:                                             ; preds = %opj_j2k_get_marker_handler.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.bb = call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %2, i32 noundef 2, ptr noundef nonnull @.str.170) #21 ; 0 uses
  %i.bc = load ptr, ptr %i.ao, align 8, !tbaa !343
  %i.bd = call i64 @opj_stream_read_data(ptr noundef %1, ptr noundef %i.bc, i64 noundef 2, ptr noundef %2) #21
  %.not40.i = icmp eq i64 %i.bd, 2
  br i1 %.not40.i, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.l, %bb.r
  %.02141.i = phi i32 [ %.1.i, %bb.r ], [ 2, %bb.l ] ; 4 uses
  %i.be = load ptr, ptr %i.ao, align 8, !tbaa !343
  call void @opj_read_bytes_LE(ptr noundef %i.be, ptr noundef nonnull %i.a, i32 noundef 2) #21
  %i.bf = load i32, ptr %i.a, align 4, !tbaa !10  ; 2 uses
  %i.bg = icmp ult i32 %i.bf, 65280
  br i1 %i.bg, label %bb.r, label %.preheader.i

.preheader.i:                                     ; preds = %.lr.ph.i, %.preheader.i
  %.0.i.i = phi ptr [ %i.bj, %.preheader.i ], [ @j2k_memory_marker_handler_tab, %.lr.ph.i ] ; 3 uses
  %i.bh = load i32, ptr %.0.i.i, align 16, !tbaa !497 ; 6 uses
  %.not.i.i97 = icmp eq i32 %i.bh, 0
  %i.bi = icmp eq i32 %i.bh, %i.bf
  %or.cond.i.i = or i1 %.not.i.i97, %i.bi
  %i.bj = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16
  br i1 %or.cond.i.i, label %opj_j2k_get_marker_handler.exit.i, label %.preheader.i, !llvm.loop !3

opj_j2k_get_marker_handler.exit.i:                ; preds = %.preheader.i
  %i.bk = load i32, ptr %i.f, align 8, !tbaa !343
  %i.bl = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 4
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !498
  %i.bn = and i32 %i.bm, %i.bk
  %.not26.i = icmp eq i32 %i.bn, 0
  br i1 %.not26.i, label %._crit_edge.i, label %bb.m

bb.m:                                             ; preds = %opj_j2k_get_marker_handler.exit.i
  switch i32 %i.bh, label %bb.n [
    i32 0, label %bb.q
    i32 65424, label %.thread
  ]

.thread:                                          ; preds = %bb.m
  store i32 65424, ptr %i.d, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %.loopexit

bb.n:                                             ; preds = %bb.m
  %i.bo = load ptr, ptr %i.k, align 8, !tbaa !374 ; 4 uses
  %i.bp = call i64 @opj_stream_tell(ptr noundef %1) #21
  %i.bq = trunc i64 %i.bp to i32
  %i.br = sub i32 %i.bq, %.02141.i
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bo, i64 24 ; 4 uses
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !533 ; 2 uses
  %i.bu = add i32 %i.bt, 1                        ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bo, i64 40 ; 3 uses
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !532 ; 2 uses
  %i.bx = icmp ugt i32 %i.bu, %i.bw
  br i1 %i.bx, label %bb.o, label %._crit_edge.i.i99

._crit_edge.i.i99:                                ; preds = %bb.n
  %.phi.trans.insert.i.i100 = getelementptr inbounds nuw i8, ptr %i.bo, i64 32
  %.pre.i.i101 = load ptr, ptr %.phi.trans.insert.i.i100, align 8, !tbaa !484
  br label %bb.s

bb.o:                                             ; preds = %bb.n
  %i.by = uitofp i32 %i.bw to float
  %i.bz = fadd float %i.by, 1.000000e+02
  %i.ca = fptoui float %i.bz to i32               ; 2 uses
  store i32 %i.ca, ptr %i.bv, align 8, !tbaa !532
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bo, i64 32 ; 4 uses
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !484
  %i.cd = zext i32 %i.ca to i64
  %i.ce = mul nuw nsw i64 %i.cd, 24
  %i.cf = call ptr @opj_realloc(ptr noundef %i.cc, i64 noundef %i.ce) #21 ; 3 uses
  %.not.i30.i = icmp eq ptr %i.cf, null
  br i1 %.not.i30.i, label %bb.p, label %.thread.i.i104

.thread.i.i104:                                   ; preds = %bb.o
  store ptr %i.cf, ptr %i.cb, align 8, !tbaa !484
  %.pre27.i.i105 = load i32, ptr %i.bs, align 8, !tbaa !533 ; 2 uses
  %.pre28.i.i106 = add i32 %.pre27.i.i105, 1
  br label %bb.s

bb.p:                                             ; preds = %bb.o
  %i.cg = load ptr, ptr %i.cb, align 8, !tbaa !484
  call void @opj_free(ptr noundef %i.cg) #21
  store ptr null, ptr %i.cb, align 8, !tbaa !484
  store i32 0, ptr %i.bv, align 8, !tbaa !532
  store i32 0, ptr %i.bs, align 8, !tbaa !533
  br label %._crit_edge.i

bb.q:                                             ; preds = %bb.m
  %i.ch = add i32 %.02141.i, 2
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.lr.ph.i
  %.1.i = phi i32 [ %.02141.i, %.lr.ph.i ], [ %i.ch, %bb.q ]
  %i.ci = load ptr, ptr %i.ao, align 8, !tbaa !343
  %i.cj = call i64 @opj_stream_read_data(ptr noundef %1, ptr noundef %i.ci, i64 noundef 2, ptr noundef %2) #21
  %.not.i98 = icmp eq i64 %i.cj, 2
  br i1 %.not.i98, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.l, %opj_j2k_get_marker_handler.exit.i, %bb.r, %bb.p
  %.str.37.sink = phi ptr [ @.str.37, %bb.r ], [ @.str.163, %bb.p ], [ @.str.41, %opj_j2k_get_marker_handler.exit.i ], [ @.str.37, %bb.l ]
  %i.ck = call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %2, i32 noundef 1, ptr noundef nonnull %.str.37.sink) #21 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.cl = call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %2, i32 noundef 1, ptr noundef nonnull @.str.160) #21 ; 0 uses
  br label %bb.as

bb.s:                                             ; preds = %._crit_edge.i.i99, %.thread.i.i104
  %.pre-phi.i.i103 = phi i32 [ %i.bu, %._crit_edge.i.i99 ], [ %.pre28.i.i106, %.thread.i.i104 ]
  %i.cm = phi i32 [ %i.bt, %._crit_edge.i.i99 ], [ %.pre27.i.i105, %.thread.i.i104 ]
  %i.cn = phi ptr [ %.pre.i.i101, %._crit_edge.i.i99 ], [ %i.cf, %.thread.i.i104 ]
  %i.co = zext i32 %i.cm to i64
  %i.cp = getelementptr inbounds nuw [24 x i8], ptr %i.cn, i64 %i.co ; 3 uses
  store i16 0, ptr %i.cp, align 8, !tbaa !504
  %i.cq = sext i32 %i.br to i64
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  store i64 %i.cq, ptr %i.cr, align 8, !tbaa !505
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  store i32 %.02141.i, ptr %i.cs, align 8, !tbaa !506
  store i32 %.pre-phi.i.i103, ptr %i.bs, align 8, !tbaa !533
  store i32 %i.bh, ptr %i.d, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.ct = icmp eq i32 %i.bh, 65424
  br i1 %i.ct, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.s, %.preheader
  %.0.i107 = phi ptr [ %i.cw, %.preheader ], [ @j2k_memory_marker_handler_tab, %bb.s ] ; 3 uses
  %i.cu = load i32, ptr %.0.i107, align 16, !tbaa !497 ; 3 uses
  %.not.i108 = icmp eq i32 %i.cu, 0
  %i.cv = icmp eq i32 %i.cu, %i.bh
  %or.cond.i109 = or i1 %.not.i108, %i.cv
  %i.cw = getelementptr inbounds nuw i8, ptr %.0.i107, i64 16
  br i1 %or.cond.i109, label %opj_j2k_get_marker_handler.exit110, label %.preheader, !llvm.loop !3

opj_j2k_get_marker_handler.exit110:               ; preds = %.preheader, %opj_j2k_get_marker_handler.exit
  %i.cx = phi i32 [ %i.ay, %opj_j2k_get_marker_handler.exit ], [ %i.cu, %.preheader ] ; 4 uses
  %.077 = phi ptr [ %.0.i95, %opj_j2k_get_marker_handler.exit ], [ %.0.i107, %.preheader ] ; 2 uses
  %i.cy = icmp eq i32 %i.cx, 65361
  %spec.select = select i1 %i.cy, i32 1, i32 %.075202 ; 2 uses
  %i.cz = icmp eq i32 %i.cx, 65362
  %.174 = select i1 %i.cz, i32 1, i32 %.073203    ; 2 uses
  %i.da = icmp eq i32 %i.cx, 65372
  %.1 = select i1 %i.da, i32 1, i32 %.072204      ; 2 uses
  %i.db = load i32, ptr %i.f, align 8, !tbaa !343
  %i.dc = getelementptr inbounds nuw i8, ptr %.077, i64 4
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !498
  %i.de = and i32 %i.dd, %i.db
  %.not88 = icmp eq i32 %i.de, 0
  br i1 %.not88, label %bb.t, label %bb.u

bb.t:                                             ; preds = %opj_j2k_get_marker_handler.exit110
  %i.df = call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %2, i32 noundef 1, ptr noundef nonnull @.str.41) #21 ; 0 uses
  br label %bb.as

bb.u:                                             ; preds = %opj_j2k_get_marker_handler.exit110
  %i.dg = load ptr, ptr %i.ao, align 8, !tbaa !343
  %i.dh = call i64 @opj_stream_read_data(ptr noundef %1, ptr noundef %i.dg, i64 noundef 2, ptr noundef %2) #21
  %.not89 = icmp eq i64 %i.dh, 2
  br i1 %.not89, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.di = call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %2, i32 noundef 1, ptr noundef nonnull @.str.37) #21 ; 0 uses
  br label %bb.as

bb.w:                                             ; preds = %bb.u
  %i.dj = load ptr, ptr %i.ao, align 8, !tbaa !343
  call void @opj_read_bytes_LE(ptr noundef %i.dj, ptr noundef nonnull %i.e, i32 noundef 2) #21
  %i.dk = load i32, ptr %i.e, align 4, !tbaa !10  ; 2 uses
  %i.dl = icmp ult i32 %i.dk, 2
  br i1 %i.dl, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.dm = call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %2, i32 noundef 1, ptr noundef nonnull @.str.161) #21 ; 0 uses
  br label %bb.as

bb.y:                                             ; preds = %bb.w
  %i.dn = add i32 %i.dk, -2                       ; 4 uses
  store i32 %i.dn, ptr %i.e, align 4, !tbaa !10
  %i.do = load i32, ptr %i.au, align 8, !tbaa !343
  %i.dp = icmp ugt i32 %i.dn, %i.do
  %.pre = load ptr, ptr %i.ao, align 8, !tbaa !343 ; 2 uses
  br i1 %i.dp, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %bb.y
  %i.dq = zext i32 %i.dn to i64
  %i.dr = call ptr @opj_realloc(ptr noundef %.pre, i64 noundef %i.dq) #21 ; 3 uses
  %.not90.not = icmp eq ptr %i.dr, null
  br i1 %.not90.not, label %.thread118, label %bb.aa

.thread118:                                       ; preds = %bb.z
  %i.ds = load ptr, ptr %i.ao, align 8, !tbaa !343
  call void @opj_free(ptr noundef %i.ds) #21
  store ptr null, ptr %i.ao, align 8, !tbaa !343
  store i32 0, ptr %i.au, align 8, !tbaa !343
  %i.dt = call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %2, i32 noundef 1, ptr noundef nonnull @.str.43) #21 ; 0 uses
  br label %bb.as

bb.aa:                                            ; preds = %bb.z
  store ptr %i.dr, ptr %i.ao, align 8, !tbaa !343
  %i.du = load i32, ptr %i.e, align 4, !tbaa !10  ; 2 uses
  store i32 %i.du, ptr %i.au, align 8, !tbaa !343
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.y
  %i.dv = phi i32 [ %i.du, %bb.aa ], [ %i.dn, %bb.y ]
  %i.dw = phi ptr [ %i.dr, %bb.aa ], [ %.pre, %bb.y ]
  %i.dx = zext i32 %i.dv to i64
  %i.dy = call i64 @opj_stream_read_data(ptr noundef %1, ptr noundef %i.dw, i64 noundef %i.dx, ptr noundef %2) #21
  %i.dz = load i32, ptr %i.e, align 4, !tbaa !10  ; 2 uses
  %i.ea = zext i32 %i.dz to i64
  %.not91 = icmp eq i64 %i.dy, %i.ea
  br i1 %.not91, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.eb = call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %2, i32 noundef 1, ptr noundef nonnull @.str.37) #21 ; 0 uses
  br label %bb.as

bb.ad:                                            ; preds = %bb.ab
  %i.ec = getelementptr inbounds nuw i8, ptr %.077, i64 8
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !499
  %i.ee = load ptr, ptr %i.ao, align 8, !tbaa !343
  %i.ef = call i32 %i.ed(ptr noundef nonnull %0, ptr noundef %i.ee, i32 noundef %i.dz, ptr noundef %2) #21
  %.not92 = icmp eq i32 %i.ef, 0
  br i1 %.not92, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.eg = call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %2, i32 noundef 1, ptr noundef nonnull @.str.162) #21 ; 0 uses
  br label %bb.as

bb.af:                                            ; preds = %bb.ad
  %i.eh = load ptr, ptr %i.k, align 8, !tbaa !374 ; 4 uses
  %i.ei = call i64 @opj_stream_tell(ptr noundef %1) #21
  %i.ej = trunc i64 %i.ei to i32
  %i.ek = load i32, ptr %i.e, align 4, !tbaa !10  ; 2 uses
  %reass.sub = sub i32 %i.ej, %i.ek
  %i.el = add i32 %reass.sub, -4
  %i.em = add i32 %i.ek, 4
  %i.en = getelementptr inbounds nuw i8, ptr %i.eh, i64 24 ; 4 uses
  %i.eo = load i32, ptr %i.en, align 8, !tbaa !533 ; 2 uses
  %i.ep = add i32 %i.eo, 1                        ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.eh, i64 40 ; 3 uses
  %i.er = load i32, ptr %i.eq, align 8, !tbaa !532 ; 2 uses
  %i.es = icmp ugt i32 %i.ep, %i.er
  br i1 %i.es, label %bb.ag, label %._crit_edge.i111

._crit_edge.i111:                                 ; preds = %bb.af
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.eh, i64 32
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !484
  br label %bb.ai

bb.ag:                                            ; preds = %bb.af
  %i.et = uitofp i32 %i.er to float
  %i.eu = fadd float %i.et, 1.000000e+02
  %i.ev = fptoui float %i.eu to i32               ; 2 uses
  store i32 %i.ev, ptr %i.eq, align 8, !tbaa !532
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eh, i64 32 ; 4 uses
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !484
  %i.ey = zext i32 %i.ev to i64
  %i.ez = mul nuw nsw i64 %i.ey, 24
  %i.fa = call ptr @opj_realloc(ptr noundef %i.ex, i64 noundef %i.ez) #21 ; 3 uses
  %.not.i113 = icmp eq ptr %i.fa, null
  br i1 %.not.i113, label %bb.ah, label %.thread.i

.thread.i:                                        ; preds = %bb.ag
  store ptr %i.fa, ptr %i.ew, align 8, !tbaa !484
  %.pre27.i = load i32, ptr %i.en, align 8, !tbaa !533 ; 2 uses
  %.pre28.i = add i32 %.pre27.i, 1
  br label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.fb = load ptr, ptr %i.ew, align 8, !tbaa !484
  call void @opj_free(ptr noundef %i.fb) #21
  store ptr null, ptr %i.ew, align 8, !tbaa !484
  store i32 0, ptr %i.eq, align 8, !tbaa !532
  store i32 0, ptr %i.en, align 8, !tbaa !533
  %i.fc = call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %2, i32 noundef 1, ptr noundef nonnull @.str.163) #21 ; 0 uses
  br label %bb.as

bb.ai:                                            ; preds = %.thread.i, %._crit_edge.i111
  %.pre-phi.i = phi i32 [ %i.ep, %._crit_edge.i111 ], [ %.pre28.i, %.thread.i ]
  %i.fd = phi i32 [ %i.eo, %._crit_edge.i111 ], [ %.pre27.i, %.thread.i ]
  %i.fe = phi ptr [ %.pre.i, %._crit_edge.i111 ], [ %i.fa, %.thread.i ]
  %i.ff = trunc i32 %i.cx to i16
  %i.fg = zext i32 %i.fd to i64
  %i.fh = getelementptr inbounds nuw [24 x i8], ptr %i.fe, i64 %i.fg ; 3 uses
  store i16 %i.ff, ptr %i.fh, align 8, !tbaa !504
  %i.fi = sext i32 %i.el to i64
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  store i64 %i.fi, ptr %i.fj, align 8, !tbaa !505
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fh, i64 16
  store i32 %i.em, ptr %i.fk, align 8, !tbaa !506
  store i32 %.pre-phi.i, ptr %i.en, align 8, !tbaa !533
  %i.fl = load ptr, ptr %i.ao, align 8, !tbaa !343
  %i.fm = call i64 @opj_stream_read_data(ptr noundef %1, ptr noundef %i.fl, i64 noundef 2, ptr noundef %2) #21
  %.not93 = icmp eq i64 %i.fm, 2
  br i1 %.not93, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.fn = call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %2, i32 noundef 1, ptr noundef nonnull @.str.37) #21 ; 0 uses
  br label %bb.as

bb.ak:                                            ; preds = %bb.ai
  %i.fo = load ptr, ptr %i.ao, align 8, !tbaa !343
  call void @opj_read_bytes_LE(ptr noundef %i.fo, ptr noundef nonnull %i.d, i32 noundef 2) #21
  %i.fp = load i32, ptr %i.d, align 4, !tbaa !10  ; 2 uses
  %.not86 = icmp eq i32 %i.fp, 65424
  br i1 %.not86, label %.loopexit, label %bb.j, !llvm.loop !783

.loopexit:                                        ; preds = %bb.ak, %bb.s, %.thread
  %.075191 = phi i32 [ %.075202, %.thread ], [ %.075202, %bb.s ], [ %spec.select, %bb.ak ]
  %.073176 = phi i32 [ %.073203, %.thread ], [ %.073203, %bb.s ], [ %.174, %bb.ak ]
  %.072161 = phi i32 [ %.072204, %.thread ], [ %.072204, %bb.s ], [ %.1, %bb.ak ]
  %i.fq = icmp eq i32 %.075191, 0
  br i1 %i.fq, label %.loopexit.thread, label %bb.al

.loopexit.thread:                                 ; preds = %bb.i, %.loopexit
  %i.fr = call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %2, i32 noundef 1, ptr noundef nonnull @.str.164) #21 ; 0 uses
  br label %bb.as

bb.al:                                            ; preds = %.loopexit
  %i.fs = icmp eq i32 %.073176, 0
  br i1 %i.fs, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.ft = call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %2, i32 noundef 1, ptr noundef nonnull @.str.165) #21 ; 0 uses
  br label %bb.as

bb.an:                                            ; preds = %bb.al
end_hunk_2
