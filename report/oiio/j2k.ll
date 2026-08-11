inline.NumInlined: 157
inline.NumDeleted: 65
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 29
loop-unroll.NumUnrolled: 34
begin_hunk_0_@opj_j2k_is_imf_compliant:bb.a
bb.bd:                                            ; preds = %bb.bc
  %i.fu = call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %2, i32 noundef 2, ptr noundef nonnull @.str.144, i32 noundef %i.ft) #21 ; 0 uses
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %.19 = phi i32 [ 0, %bb.bd ], [ %.18, %bb.bc ]  ; 12 uses
  switch i8 %trunc, label %default.unreachable [
    i8 4, label %bb.bf
    i8 5, label %bb.bg
    i8 6, label %bb.bh
    i8 7, label %bb.bi
    i8 8, label %bb.bl
    i8 9, label %bb.bq
  ]

bb.bf:                                            ; preds = %bb.be
  %i.fv = add i32 %i.j, -2
  %or.cond19 = icmp ult i32 %i.fv, 5
  br i1 %or.cond19, label %bb.bx, label %.sink.split407

bb.bg:                                            ; preds = %bb.be
  %i.fw = add i32 %i.j, -2
  %or.cond21 = icmp ult i32 %i.fw, 6
  br i1 %or.cond21, label %bb.bx, label %.sink.split407

bb.bh:                                            ; preds = %bb.be
  %i.fx = add i32 %i.j, -2
  %or.cond23 = icmp ult i32 %i.fx, 7
  br i1 %or.cond23, label %bb.bx, label %.sink.split407

bb.bi:                                            ; preds = %bb.be
  %i.fy = icmp ugt i32 %i.o, 2047
  br i1 %i.fy, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.fz = add i32 %i.j, -2
  %or.cond25 = icmp ult i32 %i.fz, 5
  br i1 %or.cond25, label %bb.bx, label %.sink.split407

bb.bk:                                            ; preds = %bb.bi
  %i.ga = icmp samesign ult i32 %i.o, 1024
  %i.gb = add i32 %i.j, -2
  %or.cond27 = icmp ult i32 %i.gb, 4
  %or.cond316 = select i1 %i.ga, i1 true, i1 %or.cond27
  br i1 %or.cond316, label %bb.bx, label %.sink.split407

bb.bl:                                            ; preds = %bb.be
  %i.gc = icmp ugt i32 %i.o, 4095
  br i1 %i.gc, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.gd = add i32 %i.j, -2
  %or.cond29 = icmp ult i32 %i.gd, 6
  br i1 %or.cond29, label %bb.bx, label %.sink.split407

bb.bn:                                            ; preds = %bb.bl
  %i.ge = icmp samesign ugt i32 %i.o, 2047
  br i1 %i.ge, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.gf = add i32 %i.j, -2
  %or.cond31 = icmp ult i32 %i.gf, 5
  br i1 %or.cond31, label %bb.bx, label %.sink.split407

bb.bp:                                            ; preds = %bb.bn
  %i.gg = icmp samesign ult i32 %i.o, 1024
  %i.gh = add i32 %i.j, -2
  %or.cond33 = icmp ult i32 %i.gh, 4
  %or.cond317 = select i1 %i.gg, i1 true, i1 %or.cond33
  br i1 %or.cond317, label %bb.bx, label %.sink.split407

bb.bq:                                            ; preds = %bb.be
  %i.gi = icmp ugt i32 %i.o, 8191
  br i1 %i.gi, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  %i.gj = add i32 %i.j, -2
  %or.cond35 = icmp ult i32 %i.gj, 7
  br i1 %or.cond35, label %bb.bx, label %.sink.split407

bb.bs:                                            ; preds = %bb.bq
  %i.gk = icmp samesign ugt i32 %i.o, 4095
  br i1 %i.gk, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %i.gl = add i32 %i.j, -2
  %or.cond37 = icmp ult i32 %i.gl, 6
  br i1 %or.cond37, label %bb.bx, label %.sink.split407

bb.bu:                                            ; preds = %bb.bs
  %i.gm = icmp samesign ugt i32 %i.o, 2047
  br i1 %i.gm, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  %i.gn = add i32 %i.j, -2
  %or.cond39 = icmp ult i32 %i.gn, 5
  br i1 %or.cond39, label %bb.bx, label %.sink.split407

bb.bw:                                            ; preds = %bb.bu
  %i.go = icmp samesign ult i32 %i.o, 1024
  %i.gp = add i32 %i.j, -2
  %or.cond41 = icmp ult i32 %i.gp, 4
  %or.cond318 = select i1 %i.go, i1 true, i1 %or.cond41
  br i1 %or.cond318, label %bb.bx, label %.sink.split407

default.unreachable:                              ; preds = %bb.be
  unreachable

.sink.split407:                                   ; preds = %bb.bw, %bb.bv, %bb.bt, %bb.br, %bb.bp, %bb.bo, %bb.bm, %bb.bk, %bb.bj, %bb.bh, %bb.bg, %bb.bf
  %.str.153.sink = phi ptr [ @.str.152, %bb.bp ], [ @.str.154, %bb.bt ], [ @.str.151, %bb.bv ], [ @.str.153, %bb.br ], [ @.str.149, %bb.bk ], [ @.str.151, %bb.bo ], [ @.str.150, %bb.bm ], [ @.str.147, %bb.bh ], [ @.str.148, %bb.bj ], [ @.str.146, %bb.bg ], [ @.str.145, %bb.bf ], [ @.str.152, %bb.bw ]
  %i.gq = call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %2, i32 noundef 2, ptr noundef nonnull %.str.153.sink, i32 noundef %i.k) #21 ; 0 uses
  br label %bb.bx

bb.bx:                                            ; preds = %.sink.split407, %bb.br, %bb.bv, %bb.bw, %bb.bt, %bb.bm, %bb.bp, %bb.bo, %bb.bj, %bb.bk, %bb.bh, %bb.bg, %bb.bf
  %.20 = phi i32 [ %.19, %bb.bm ], [ %.19, %bb.bf ], [ %.19, %bb.bp ], [ %.19, %bb.bg ], [ %.19, %bb.bo ], [ %.19, %bb.bh ], [ %.19, %bb.br ], [ %.19, %bb.bj ], [ %.19, %bb.bv ], [ %.19, %bb.bw ], [ %.19, %bb.bt ], [ %.19, %bb.bk ], [ 0, %.sink.split407 ] ; 3 uses
  %i.gr = load i32, ptr %i.i, align 8, !tbaa !48
  %i.gs = icmp eq i32 %i.gr, 1
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 5628 ; 2 uses
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !138 ; 3 uses
  br i1 %i.gs, label %bb.by, label %.preheader

.preheader:                                       ; preds = %bb.bx
  %i.gv = icmp sgt i32 %i.gu, 0
  br i1 %i.gv, label %.lr.ph332, label %.loopexit

.lr.ph332:                                        ; preds = %.preheader
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 5632
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 5764
  br label %bb.cc

bb.by:                                            ; preds = %bb.bx
  %.not305 = icmp eq i32 %i.gu, 1
  br i1 %.not305, label %bb.bz, label %bb.cb

bb.bz:                                            ; preds = %bb.by
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 5632
  %i.gz = load i32, ptr %i.gy, align 8, !tbaa !3
  %.not306 = icmp eq i32 %i.gz, 128
  br i1 %.not306, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 5764
  %i.hb = load i32, ptr %i.ha, align 4, !tbaa !3
  %.not307 = icmp eq i32 %i.hb, 128
  br i1 %.not307, label %.loopexit, label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz, %bb.by
  %i.hc = call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %2, i32 noundef 2, ptr noundef nonnull @.str.155) #21 ; 0 uses
  br label %.loopexit

bb.cc:                                            ; preds = %.lr.ph332, %bb.cf
  %i.hd = phi i32 [ %i.gu, %.lr.ph332 ], [ %i.hj, %bb.cf ]
  %indvars.iv351 = phi i64 [ 0, %.lr.ph332 ], [ %indvars.iv.next352, %bb.cf ] ; 3 uses
  %.21330 = phi i32 [ %.20, %.lr.ph332 ], [ %.22, %bb.cf ]
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %i.gw, i64 %indvars.iv351
  %i.hf = load i32, ptr %i.he, align 4, !tbaa !3
  %.not303 = icmp eq i32 %i.hf, 256
  br i1 %.not303, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %i.gx, i64 %indvars.iv351
  %i.hh = load i32, ptr %i.hg, align 4, !tbaa !3
  %.not304 = icmp eq i32 %i.hh, 256
  br i1 %.not304, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.cc
  %i.hi = call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %2, i32 noundef 2, ptr noundef nonnull @.str.155) #21 ; 0 uses
  %.pre370 = load i32, ptr %i.gt, align 4, !tbaa !138
  br label %bb.cf

bb.cf:                                            ; preds = %bb.cd, %bb.ce
  %i.hj = phi i32 [ %.pre370, %bb.ce ], [ %i.hd, %bb.cd ] ; 2 uses
  %.22 = phi i32 [ 0, %bb.ce ], [ %.21330, %bb.cd ] ; 2 uses
  %indvars.iv.next352 = add nuw nsw i64 %indvars.iv351, 1 ; 2 uses
  %i.hk = sext i32 %i.hj to i64
  %i.hl = icmp slt i64 %indvars.iv.next352, %i.hk
  br i1 %i.hl, label %bb.cc, label %.loopexit, !llvm.loop !161

.loopexit:                                        ; preds = %bb.cf, %.preheader, %bb.cb, %bb.ca, %._crit_edge
  %.0264 = phi i32 [ 0, %._crit_edge ], [ 0, %bb.cb ], [ %.20, %bb.ca ], [ %.20, %.preheader ], [ %.22, %bb.cf ]
  ret i32 %.0264
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
  %.1106.us.us = phi i32 [ %i.bn, %._crit_edge100.split.us.us.us ], [ 0, %.preheader76.us.us.preheader ] ; 2 uses
  %.065105.us.us = phi i32 [ %.lcssa, %._crit_edge100.split.us.us.us ], [ 0, %.preheader76.us.us.preheader ]
  %.173104.us.us = phi i32 [ %i.bo, %._crit_edge100.split.us.us.us ], [ 0, %.preheader76.us.us.preheader ]
  br label %.preheader.us.us.us

.preheader.us.us.us:                              ; preds = %._crit_edge95.us.us.us, %.preheader76.us.us
  %.299.us.us.us = phi i32 [ %.1106.us.us, %.preheader76.us.us ], [ %i.bl, %._crit_edge95.us.us.us ] ; 5 uses
  %.16698.us.us.us = phi i32 [ %.065105.us.us, %.preheader76.us.us ], [ %.lcssa, %._crit_edge95.us.us.us ] ; 2 uses
  %.16997.us.us.us = phi i32 [ 0, %.preheader76.us.us ], [ %i.bm, %._crit_edge95.us.us.us ]
  %i.j = icmp ugt i32 %.299.us.us.us, %i.i
  %or.cond7 = select i1 %min.iters.check, i1 true, i1 %i.j
  br i1 %or.cond7, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader.us.us.us
  %i.k = add i32 %.299.us.us.us, %n.vec
  %i.l = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.16698.us.us.us, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.l, %vector.ph ], [ %i.u, %vector.body ]
  %vec.phi3 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.v, %vector.body ]
  %i.m = add i32 %.299.us.us.us, %index
  %i.n = zext i32 %i.m to i64
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.n ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %wide.load = load <4 x i32>, ptr %i.o, align 4, !tbaa !3
  %wide.load4 = load <4 x i32>, ptr %i.p, align 4, !tbaa !3
  %i.q = icmp ne <4 x i32> %wide.load, splat (i32 1)
  %i.r = icmp ne <4 x i32> %wide.load4, splat (i32 1)
  %i.s = zext <4 x i1> %i.q to <4 x i32>
  %i.t = zext <4 x i1> %i.r to <4 x i32>
  %i.u = or <4 x i32> %vec.phi, %i.s              ; 2 uses
  %i.v = or <4 x i32> %vec.phi3, %i.t             ; 2 uses
  %index.next = add nuw i32 %index, 8             ; 2 uses
  %i.w = icmp eq i32 %index.next, %n.vec
  br i1 %i.w, label %middle.block, label %vector.body, !llvm.loop !162

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <4 x i32> %i.v, %i.u
  %i.x = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  br i1 %cmp.n, label %._crit_edge95.us.us.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.us.us.us, %middle.block
  %.393.us.us.us.ph = phi i32 [ %.299.us.us.us, %.preheader.us.us.us ], [ %i.k, %middle.block ] ; 2 uses
  %.26792.us.us.us.ph = phi i32 [ %.16698.us.us.us, %.preheader.us.us.us ], [ %i.x, %middle.block ] ; 2 uses
  %.17191.us.us.us.ph = phi i32 [ 0, %.preheader.us.us.us ], [ %n.vec, %middle.block ] ; 3 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.393.us.us.us.prol = phi i32 [ %i.ae, %scalar.ph.prol ], [ %.393.us.us.us.ph, %scalar.ph.preheader ] ; 2 uses
  %.26792.us.us.us.prol = phi i32 [ %i.ad, %scalar.ph.prol ], [ %.26792.us.us.us.ph, %scalar.ph.preheader ]
  %.17191.us.us.us.prol = phi i32 [ %i.af, %scalar.ph.prol ], [ %.17191.us.us.us.ph, %scalar.ph.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.y = zext i32 %.393.us.us.us.prol to i64
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !3
  %i.ab = icmp ne i32 %i.aa, 1
  %i.ac = zext i1 %i.ab to i32
  %i.ad = or i32 %.26792.us.us.us.prol, %i.ac     ; 3 uses
  %i.ae = add i32 %.393.us.us.us.prol, 1          ; 2 uses
  %i.af = add nuw i32 %.17191.us.us.us.prol, 1    ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !163

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa10.unr = phi i32 [ poison, %scalar.ph.preheader ], [ %i.ad, %scalar.ph.prol ]
  %.393.us.us.us.unr = phi i32 [ %.393.us.us.us.ph, %scalar.ph.preheader ], [ %i.ae, %scalar.ph.prol ]
  %.26792.us.us.us.unr = phi i32 [ %.26792.us.us.us.ph, %scalar.ph.preheader ], [ %i.ad, %scalar.ph.prol ]
  %.17191.us.us.us.unr = phi i32 [ %.17191.us.us.us.ph, %scalar.ph.preheader ], [ %i.af, %scalar.ph.prol ]
  %i.ag = sub i32 %.17191.us.us.us.ph, %4
  %i.ah = icmp ugt i32 %i.ag, -4
  br i1 %i.ah, label %._crit_edge95.us.us.us, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.393.us.us.us = phi i32 [ %i.bj, %scalar.ph ], [ %.393.us.us.us.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %.26792.us.us.us = phi i32 [ %i.bi, %scalar.ph ], [ %.26792.us.us.us.unr, %scalar.ph.prol.loopexit ]
  %.17191.us.us.us = phi i32 [ %i.bk, %scalar.ph ], [ %.17191.us.us.us.unr, %scalar.ph.prol.loopexit ]
  %i.ai = zext i32 %.393.us.us.us to i64
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !3
  %i.al = icmp ne i32 %i.ak, 1
  %i.am = zext i1 %i.al to i32
  %i.an = or i32 %.26792.us.us.us, %i.am
  %i.ao = add i32 %.393.us.us.us, 1
  %i.ap = zext i32 %i.ao to i64
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.ap
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !3
  %i.as = icmp ne i32 %i.ar, 1
  %i.at = zext i1 %i.as to i32
  %i.au = or i32 %i.an, %i.at
  %i.av = add i32 %.393.us.us.us, 2
  %i.aw = zext i32 %i.av to i64
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.aw
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !3
  %i.az = icmp ne i32 %i.ay, 1
  %i.ba = zext i1 %i.az to i32
  %i.bb = or i32 %i.au, %i.ba
  %i.bc = add i32 %.393.us.us.us, 3
  %i.bd = zext i32 %i.bc to i64
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.bd
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !3
  %i.bg = icmp ne i32 %i.bf, 1
  %i.bh = zext i1 %i.bg to i32
  %i.bi = or i32 %i.bb, %i.bh                     ; 2 uses
  %i.bj = add i32 %.393.us.us.us, 4
  %i.bk = add nuw i32 %.17191.us.us.us, 4         ; 2 uses
  %exitcond123.not.3 = icmp eq i32 %i.bk, %4
  br i1 %exitcond123.not.3, label %._crit_edge95.us.us.us, label %scalar.ph, !llvm.loop !164

._crit_edge95.us.us.us:                           ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %.lcssa = phi i32 [ %i.x, %middle.block ], [ %.lcssa10.unr, %scalar.ph.prol.loopexit ], [ %i.bi, %scalar.ph ] ; 3 uses
  %i.bl = add i32 %4, %.299.us.us.us
  %i.bm = add nuw i32 %.16997.us.us.us, 1         ; 2 uses
  %exitcond124.not = icmp eq i32 %i.bm, %3
  br i1 %exitcond124.not, label %._crit_edge100.split.us.us.us, label %.preheader.us.us.us, !llvm.loop !165

._crit_edge100.split.us.us.us:                    ; preds = %._crit_edge95.us.us.us
  %i.bn = add i32 %i.a, %.1106.us.us
  %i.bo = add nuw i32 %.173104.us.us, 1           ; 2 uses
  %exitcond125.not = icmp eq i32 %i.bo, %5
  br i1 %exitcond125.not, label %._crit_edge107, label %.preheader76.us.us, !llvm.loop !166

bb.c:                                             ; preds = %.lr.ph90, %.loopexit
  %indvars.iv = phi i64 [ 0, %.lr.ph90 ], [ %indvars.iv.next, %.loopexit ] ; 2 uses
  %i.bp = getelementptr inbounds nuw [148 x i8], ptr %0, i64 %indvars.iv ; 6 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 48
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !101
  %i.bs = icmp eq i32 %i.g, %i.br
  br i1 %i.bs, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.bt = load i32, ptr %i.bp, align 4, !tbaa !104 ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bp, i64 12 ; 2 uses
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !148 ; 2 uses
  %i.bw = tail call noundef i32 @llvm.umin.i32(i32 %i.bv, i32 %3)
  %i.bx = icmp ult i32 %i.bt, %i.bw
  br i1 %i.bx, label %.lr.ph88, label %.loopexit

.lr.ph88:                                         ; preds = %bb.d
  %i.by = mul i32 %i.bt, %4
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bp, i64 4
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bp, i64 16 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bp, i64 8 ; 2 uses
  %.pre = load i32, ptr %i.ca, align 4, !tbaa !105 ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph88, %._crit_edge84
  %i.cc = phi i32 [ %i.bv, %.lr.ph88 ], [ %i.cz, %._crit_edge84 ]
  %i.cd = phi i32 [ %.pre, %.lr.ph88 ], [ %i.da, %._crit_edge84 ] ; 2 uses
  %i.ce = phi i32 [ %.pre, %.lr.ph88 ], [ %i.db, %._crit_edge84 ] ; 2 uses
  %.06486 = phi i32 [ %i.by, %.lr.ph88 ], [ %i.dc, %._crit_edge84 ] ; 2 uses
  %.06885 = phi i32 [ %i.bt, %.lr.ph88 ], [ %i.dd, %._crit_edge84 ]
  %i.cf = load i32, ptr %i.bz, align 4, !tbaa !103 ; 3 uses
  %i.cg = tail call noundef i32 @llvm.umin.i32(i32 %i.ce, i32 %4)
  %i.ch = icmp ult i32 %i.cf, %i.cg
  br i1 %i.ch, label %.preheader78.preheader, label %._crit_edge84

.preheader78.preheader:                           ; preds = %bb.e
  %i.ci = add i32 %i.cf, %.06486
  %.pre126 = load i32, ptr %i.cb, align 4, !tbaa !147
  br label %.preheader78

.preheader78:                                     ; preds = %.preheader78.preheader, %._crit_edge
  %i.cj = phi i32 [ %i.ct, %._crit_edge ], [ %i.cd, %.preheader78.preheader ]
  %i.ck = phi i32 [ %i.cu, %._crit_edge ], [ %.pre126, %.preheader78.preheader ] ; 2 uses
  %.06383 = phi i32 [ %i.cv, %._crit_edge ], [ %i.ci, %.preheader78.preheader ] ; 2 uses
  %.07082 = phi i32 [ %i.cw, %._crit_edge ], [ %i.cf, %.preheader78.preheader ]
  %i.cl = tail call noundef i32 @llvm.umin.i32(i32 %i.ck, i32 %5)
  %.not115 = icmp eq i32 %i.cl, 0
  br i1 %.not115, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader78, %.lr.ph
  %.081 = phi i32 [ %i.co, %.lr.ph ], [ %.06383, %.preheader78 ] ; 2 uses
  %.07280 = phi i32 [ %i.cp, %.lr.ph ], [ 0, %.preheader78 ]
  %i.cm = zext i32 %.081 to i64
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.cm
  store i32 1, ptr %i.cn, align 4, !tbaa !3
  %i.co = add i32 %.081, %i.a
  %i.cp = add nuw i32 %.07280, 1                  ; 2 uses
  %i.cq = load i32, ptr %i.cb, align 4, !tbaa !147 ; 2 uses
  %i.cr = tail call noundef i32 @llvm.umin.i32(i32 %i.cq, i32 %5)
  %i.cs = icmp ult i32 %i.cp, %i.cr
  br i1 %i.cs, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !167

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre127 = load i32, ptr %i.ca, align 4, !tbaa !105
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader78
  %i.ct = phi i32 [ %.pre127, %._crit_edge.loopexit ], [ %i.cj, %.preheader78 ] ; 4 uses
  %i.cu = phi i32 [ %i.cq, %._crit_edge.loopexit ], [ %i.ck, %.preheader78 ]
  %i.cv = add i32 %.06383, 1
  %i.cw = add nuw i32 %.07082, 1                  ; 2 uses
  %i.cx = tail call noundef i32 @llvm.umin.i32(i32 %i.ct, i32 %4)
  %i.cy = icmp ult i32 %i.cw, %i.cx
  br i1 %i.cy, label %.preheader78, label %._crit_edge84.loopexit, !llvm.loop !168

._crit_edge84.loopexit:                           ; preds = %._crit_edge
  %.pre128 = load i32, ptr %i.bu, align 4, !tbaa !148
  br label %._crit_edge84

._crit_edge84:                                    ; preds = %._crit_edge84.loopexit, %bb.e
  %i.cz = phi i32 [ %.pre128, %._crit_edge84.loopexit ], [ %i.cc, %bb.e ] ; 2 uses
  %i.da = phi i32 [ %i.ct, %._crit_edge84.loopexit ], [ %i.cd, %bb.e ]
  %i.db = phi i32 [ %i.ct, %._crit_edge84.loopexit ], [ %i.ce, %bb.e ]
  %i.dc = add i32 %.06486, %4
  %i.dd = add nuw i32 %.06885, 1                  ; 2 uses
  %i.de = tail call noundef i32 @llvm.umin.i32(i32 %i.cz, i32 %3)
  %i.df = icmp ult i32 %i.dd, %i.de
  br i1 %i.df, label %bb.e, label %.loopexit, !llvm.loop !169

.loopexit:                                        ; preds = %._crit_edge84, %bb.d, %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader77, label %bb.c, !llvm.loop !170

._crit_edge107:                                   ; preds = %._crit_edge100.split.us.us.us
  %i.dg = icmp eq i32 %.lcssa, 0
  br i1 %i.dg, label %._crit_edge107.thread, label %bb.f

bb.f:                                             ; preds = %._crit_edge107
  %i.dh = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %6, i32 noundef 1, ptr noundef nonnull @.str.157) #21 ; 0 uses
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
  %i.b = load i32, ptr %i.a, align 8, !tbaa !99
  %.not = icmp eq i32 %i.b, 2
  br i1 %.not, label %bb.b, label %bb.u

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 5640 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !112
  %.not151 = icmp eq ptr %i.d, null
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 5664 ; 9 uses
  %.pre175 = load i32, ptr %.phi.trans.insert, align 8, !tbaa !171 ; 4 uses
  br i1 %.not151, label %._crit_edge174, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 5668 ; 3 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !172
  %i.g = icmp eq i32 %.pre175, %i.f
  br i1 %i.g, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.h = add i32 %.pre175, 10                     ; 2 uses
  store i32 %i.h, ptr %i.e, align 4, !tbaa !172
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 5656 ; 4 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !173
  %i.k = zext i32 %i.h to i64
  %i.l = shl nuw nsw i64 %i.k, 5
  %i.m = tail call ptr @opj_realloc(ptr noundef %i.j, i64 noundef %i.l) #21 ; 3 uses
  %.not152.not = icmp eq ptr %i.m, null
  br i1 %.not152.not, label %.thread, label %bb.e

.thread:                                          ; preds = %bb.d
  %i.n = load ptr, ptr %i.i, align 8, !tbaa !173
  tail call void @opj_free(ptr noundef %i.n) #21
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  br label %bb.u

bb.e:                                             ; preds = %bb.d
  store ptr %i.m, ptr %i.i, align 8, !tbaa !173
  %i.o = load i32, ptr %.phi.trans.insert, align 8, !tbaa !171 ; 2 uses
  %i.p = zext i32 %i.o to i64
  %i.q = getelementptr inbounds nuw [32 x i8], ptr %i.m, i64 %i.p
  %i.r = load i32, ptr %i.e, align 4, !tbaa !172
  %i.s = sub i32 %i.r, %i.o
  %i.t = zext i32 %i.s to i64
  %i.u = shl nuw nsw i64 %i.t, 5
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.q, i8 0, i64 %i.u, i1 false)
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !171
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c
  %i.v = phi i32 [ %.pre, %bb.e ], [ %.pre175, %bb.c ]
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 5656
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !173
  %i.y = zext i32 %i.v to i64
  %i.z = getelementptr inbounds nuw [32 x i8], ptr %i.x, i64 %i.y ; 7 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 3 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !174 ; 2 uses
  %.not153 = icmp eq ptr %i.ab, null
  br i1 %.not153, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @opj_free(ptr noundef nonnull %i.ab) #21
  store ptr null, ptr %i.aa, align 8, !tbaa !174
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store i32 1, ptr %i.ac, align 8, !tbaa !176
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  store i32 1, ptr %i.ad, align 4, !tbaa !177
  store i32 2, ptr %i.z, align 8, !tbaa !178
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !57 ; 2 uses
  %i.ag = mul i32 %i.af, %i.af                    ; 6 uses
  %i.ah = shl i32 %i.ag, 2                        ; 2 uses
  %i.ai = zext i32 %i.ah to i64
  %i.aj = tail call ptr @opj_malloc(i64 noundef %i.ai) #21 ; 6 uses
  store ptr %i.aj, ptr %i.aa, align 8, !tbaa !174
  %.not154 = icmp eq ptr %i.aj, null
end_hunk_0
