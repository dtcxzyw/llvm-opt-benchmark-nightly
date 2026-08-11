inline.NumInlined: 125
inline.NumDeleted: 26
loop-unroll.NumCompletelyUnrolled: 26
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 45
begin_hunk_0_@mp_decode_frame:bb.a
  tail call fastcc void @compute_imdct(ptr noundef nonnull %0, ptr noundef nonnull %gep548.i, ptr noundef nonnull %gep550.i, ptr noundef nonnull %i.ehf)
  %indvars.iv.next717.i = add nuw nsw i64 %indvars.iv716.i, 1 ; 2 uses
  %i.ehg = load i32, ptr %i.ahh, align 8, !tbaa !41 ; 2 uses
  %i.ehh = sext i32 %i.ehg to i64
  %i.ehi = icmp slt i64 %indvars.iv.next717.i, %i.ehh
  br i1 %i.ehi, label %bb.fn, label %._crit_edge546.i, !llvm.loop !282

._crit_edge546.i:                                 ; preds = %compute_antialias.exit.i, %compute_stereo.exit.i
  %i.ehj = phi i32 [ %i.dtw, %compute_stereo.exit.i ], [ %i.ehg, %compute_antialias.exit.i ]
  %indvars.iv.next720.i = add nuw nsw i64 %indvars.iv719.i, 1
  %indvar.next.i = add nuw nsw i64 %indvar.i, 1   ; 2 uses
  %exitcond723.not.i = icmp eq i64 %indvar.next.i, %wide.trip.count722.i
  br i1 %exitcond723.not.i, label %._crit_edge552.i, label %.preheader472.i, !llvm.loop !283

._crit_edge552.i:                                 ; preds = %._crit_edge546.i, %bb.by
  %.val358.i = load i32, ptr %i.o, align 8, !tbaa !103
  %i.ehk = icmp slt i32 %.val358.i, 0
  br i1 %i.ehk, label %bb.fu, label %bb.fv

bb.fu:                                            ; preds = %._crit_edge552.i
  %i.ehl = load i32, ptr %i.n, align 16, !tbaa !102
  %i.ehm = tail call i32 @llvm.smin.i32(i32 %i.ehl, i32 0)
  store i32 %i.ehm, ptr %i.o, align 8, !tbaa !103
  br label %bb.fv

bb.fv:                                            ; preds = %bb.fu, %._crit_edge552.i
  %i.ehn = mul nuw nsw i32 %.0299.i, 18
  br label %mp_decode_layer3.exit

mp_decode_layer3.exit:                            ; preds = %.loopexit477.i, %bb.az, %bb.be, %bb.fv
  %.0.i131 = phi i32 [ %i.ehn, %bb.fv ], [ -1094995529, %bb.az ], [ -1094995529, %bb.be ], [ %.0326.i, %.loopexit477.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  %i.eho = getelementptr inbounds nuw i8, ptr %0, i64 1088 ; 5 uses
  store i32 0, ptr %i.eho, align 16, !tbaa !56
  %i.ehp = getelementptr inbounds nuw i8, ptr %0, i64 1128 ; 3 uses
  %i.ehq = load ptr, ptr %i.ehp, align 8, !tbaa !162
  %.not109 = icmp eq ptr %i.ehq, null
  %.val.i147.pre270 = load i32, ptr %i.o, align 8, !tbaa !103 ; 4 uses
  br i1 %.not109, label %bb.gb, label %bb.fw

bb.fw:                                            ; preds = %mp_decode_layer3.exit
  %i.ehr = sub nsw i32 0, %.val.i147.pre270
  %i.ehs = and i32 %i.ehr, 7                      ; 2 uses
  %.not.i146 = icmp eq i32 %i.ehs, 0
  br i1 %.not.i146, label %align_get_bits.exit, label %bb.fx

bb.fx:                                            ; preds = %bb.fw
  %i.eht = load i32, ptr %i.n, align 16, !tbaa !102
  %i.ehu = add i32 %i.ehs, %.val.i147.pre270
  %i.ehv = tail call i32 @llvm.umin.i32(i32 %i.eht, i32 %i.ehu) ; 2 uses
  store i32 %i.ehv, ptr %i.o, align 8, !tbaa !103
  br label %align_get_bits.exit

align_get_bits.exit:                              ; preds = %bb.fw, %bb.fx
  %.val114 = phi i32 [ %.val.i147.pre270, %bb.fw ], [ %i.ehv, %bb.fx ] ; 2 uses
  %.val115 = load i32, ptr %i.l, align 4, !tbaa !101
  %i.ehw = sub nsw i32 %.val115, %.val114
  %i.ehx = ashr i32 %i.ehw, 3
  %i.ehy = getelementptr inbounds nuw i8, ptr %0, i64 1092 ; 2 uses
  %i.ehz = load i32, ptr %i.ehy, align 4, !tbaa !157
  %i.eia = sub nsw i32 %i.ehx, %i.ehz             ; 4 uses
  %or.cond = icmp ult i32 %i.eia, 513
  br i1 %or.cond, label %bb.fy, label %bb.fz

bb.fy:                                            ; preds = %align_get_bits.exit
  %i.eib = load ptr, ptr %i.h, align 16, !tbaa !100
  %i.eic = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.eid = ashr i32 %.val114, 3
  %i.eie = sext i32 %i.eid to i64
  %i.eif = getelementptr inbounds i8, ptr %i.eib, i64 %i.eie
  %i.eig = zext nneg i32 %i.eia to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.eic, ptr align 1 %i.eif, i64 %i.eig, i1 false)
  store i32 %i.eia, ptr %i.eho, align 16, !tbaa !56
  br label %bb.ga

bb.fz:                                            ; preds = %align_get_bits.exit
  %i.eih = getelementptr inbounds nuw i8, ptr %0, i64 32928
  %i.eii = load ptr, ptr %i.eih, align 16, !tbaa !72
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.eii, i32 noundef 16, ptr noundef nonnull @.str.20, i32 noundef %i.eia) #14
  br label %bb.ga

bb.ga:                                            ; preds = %bb.fz, %bb.fy
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.ehp, i64 24, i1 false), !tbaa.struct !158
  store ptr null, ptr %i.ehp, align 8, !tbaa !162
  store i32 0, ptr %i.ehy, align 4, !tbaa !157
  %.val.i147.pre = load i32, ptr %i.o, align 8, !tbaa !103
  br label %bb.gb

bb.gb:                                            ; preds = %bb.ga, %mp_decode_layer3.exit
  %.val.i147 = phi i32 [ %.val.i147.pre, %bb.ga ], [ %.val.i147.pre270, %mp_decode_layer3.exit ] ; 3 uses
  %i.eij = sub nsw i32 0, %.val.i147
  %i.eik = and i32 %i.eij, 7                      ; 2 uses
  %.not.i148 = icmp eq i32 %i.eik, 0
  br i1 %.not.i148, label %align_get_bits.exit149, label %bb.gc

bb.gc:                                            ; preds = %bb.gb
  %i.eil = load i32, ptr %i.n, align 16, !tbaa !102
  %i.eim = add i32 %i.eik, %.val.i147
  %i.ein = tail call i32 @llvm.umin.i32(i32 %i.eil, i32 %i.eim) ; 2 uses
  store i32 %i.ein, ptr %i.o, align 8, !tbaa !103
  br label %align_get_bits.exit149

align_get_bits.exit149:                           ; preds = %bb.gb, %bb.gc
  %.val112 = phi i32 [ %.val.i147, %bb.gb ], [ %i.ein, %bb.gc ]
  %.val113 = load i32, ptr %i.l, align 4, !tbaa !101
  %i.eio = sub nsw i32 %.val113, %.val112
  %i.eip = ashr i32 %i.eio, 3
  %i.eiq = getelementptr inbounds nuw i8, ptr %0, i64 1092
  %i.eir = load i32, ptr %i.eiq, align 4, !tbaa !157
  %i.eis = sub nsw i32 %i.eip, %i.eir             ; 4 uses
  %or.cond3 = icmp ugt i32 %i.eis, 512
  %i.eit = icmp slt i32 %.0.i131, 0
  %or.cond5 = select i1 %or.cond3, i1 true, i1 %i.eit
  br i1 %or.cond5, label %bb.gd, label %bb.gg

bb.gd:                                            ; preds = %align_get_bits.exit149
  %i.eiu = icmp slt i32 %i.eis, 0
  br i1 %i.eiu, label %bb.ge, label %bb.gf

bb.ge:                                            ; preds = %bb.gd
  %i.eiv = getelementptr inbounds nuw i8, ptr %0, i64 32928
  %i.eiw = load ptr, ptr %i.eiv, align 16, !tbaa !72
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.eiw, i32 noundef 16, ptr noundef nonnull @.str.21, i32 noundef %i.eis) #14
  br label %bb.gf

bb.gf:                                            ; preds = %bb.ge, %bb.gd
  %i.eix = tail call i32 @llvm.smin.i32(i32 %i.j, i32 512)
  br label %bb.gg

bb.gg:                                            ; preds = %align_get_bits.exit149, %bb.gf
  %.098 = phi i32 [ %i.eix, %bb.gf ], [ %i.eis, %align_get_bits.exit149 ] ; 2 uses
  %i.eiy = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.eiz = load i32, ptr %i.eho, align 16, !tbaa !56
  %i.eja = sext i32 %i.eiz to i64
  %i.ejb = getelementptr inbounds i8, ptr %i.eiy, i64 %i.eja
  %i.ejc = load ptr, ptr %i.h, align 16, !tbaa !284
  %i.ejd = sext i32 %3 to i64
  %i.eje = getelementptr inbounds i8, ptr %i.ejc, i64 %i.ejd
  %i.ejf = getelementptr inbounds i8, ptr %i.eje, i64 -4
  %i.ejg = sext i32 %.098 to i64                  ; 2 uses
  %i.ejh = sub nsw i64 0, %i.ejg
  %i.eji = getelementptr inbounds i8, ptr %i.ejf, i64 %i.ejh
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ejb, ptr nonnull align 1 %i.eji, i64 %i.ejg, i1 false)
  %i.ejj = load i32, ptr %i.eho, align 16, !tbaa !56
  %i.ejk = add nsw i32 %i.ejj, %.098
  store i32 %i.ejk, ptr %i.eho, align 16, !tbaa !56
  br label %bb.gh

bb.gh:                                            ; preds = %bb.gg, %mp_decode_layer2.exit, %mp_decode_layer1.exit
  %.097 = phi i32 [ %.0.i131, %bb.gg ], [ %.0.i116, %mp_decode_layer1.exit ], [ %.0.i117, %mp_decode_layer2.exit ] ; 5 uses
  %i.ejl = icmp slt i32 %.097, 0
  br i1 %i.ejl, label %bb.gt, label %bb.gi

bb.gi:                                            ; preds = %bb.gh
  %.not110 = icmp eq ptr %1, null
  br i1 %.not110, label %bb.gj, label %bb.gn

bb.gj:                                            ; preds = %bb.gi
  %i.ejm = getelementptr inbounds nuw i8, ptr %0, i64 32992 ; 2 uses
  %i.ejn = load ptr, ptr %i.ejm, align 16, !tbaa !46 ; 3 uses
  %.not111 = icmp eq ptr %i.ejn, null
  br i1 %.not111, label %bb.gk, label %bb.gl

bb.gk:                                            ; preds = %bb.gj
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.24, i32 noundef 1528) #14
  tail call void @abort() #16
  unreachable

bb.gl:                                            ; preds = %bb.gj
  %i.ejo = getelementptr inbounds nuw i8, ptr %0, i64 32928
  %i.ejp = load ptr, ptr %i.ejo, align 16, !tbaa !72 ; 2 uses
  %i.ejq = getelementptr inbounds nuw i8, ptr %i.ejp, i64 376
  %i.ejr = load i32, ptr %i.ejq, align 8, !tbaa !47
  %i.ejs = getelementptr inbounds nuw i8, ptr %i.ejn, i64 112
  store i32 %i.ejr, ptr %i.ejs, align 8, !tbaa !48
  %i.ejt = tail call i32 @ff_get_buffer(ptr noundef %i.ejp, ptr noundef nonnull %i.ejn, i32 noundef 0) #14 ; 2 uses
  %i.eju = icmp slt i32 %i.ejt, 0
  br i1 %i.eju, label %bb.gt, label %bb.gm

bb.gm:                                            ; preds = %bb.gl
  %i.ejv = load ptr, ptr %i.ejm, align 16, !tbaa !46
  %i.ejw = getelementptr inbounds nuw i8, ptr %i.ejv, i64 96
  %i.ejx = load ptr, ptr %i.ejw, align 8, !tbaa !76
  br label %bb.gn

bb.gn:                                            ; preds = %bb.gm, %bb.gi
  %.0100 = phi ptr [ %1, %bb.gi ], [ %i.ejx, %bb.gm ] ; 2 uses
  %i.ejy = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ejz = load i32, ptr %i.ejy, align 8, !tbaa !41 ; 3 uses
  %i.eka = icmp sgt i32 %i.ejz, 0
  br i1 %i.eka, label %.lr.ph208, label %._crit_edge209

.lr.ph208:                                        ; preds = %bb.gn
  %i.ekb = getelementptr inbounds nuw i8, ptr %0, i64 32928
  %.not210 = icmp eq i32 %.097, 0
  %i.ekc = getelementptr inbounds nuw i8, ptr %0, i64 32936
  %i.ekd = getelementptr inbounds nuw i8, ptr %0, i64 1152
  %i.eke = getelementptr inbounds nuw i8, ptr %0, i64 9344
  %i.ekf = getelementptr inbounds nuw i8, ptr %0, i64 32916
  %i.ekg = getelementptr inbounds nuw i8, ptr %0, i64 9360
  %wide.trip.count = zext nneg i32 %.097 to i64
  br label %bb.go

bb.go:                                            ; preds = %.lr.ph208, %._crit_edge
  %i.ekh = phi i32 [ %i.ejz, %.lr.ph208 ], [ %i.eky, %._crit_edge ] ; 2 uses
  %indvars.iv251 = phi i64 [ 0, %.lr.ph208 ], [ %indvars.iv.next252, %._crit_edge ] ; 6 uses
  %i.eki = load ptr, ptr %i.ekb, align 16, !tbaa !72
  %i.ekj = getelementptr inbounds nuw i8, ptr %i.eki, i64 348
  %i.ekk = load i32, ptr %i.ekj, align 4, !tbaa !86
  %i.ekl = icmp eq i32 %i.ekk, 8
  br i1 %i.ekl, label %bb.gp, label %bb.gq

bb.gp:                                            ; preds = %bb.go
  %i.ekm = getelementptr inbounds nuw [8 x i8], ptr %.0100, i64 %indvars.iv251
  %i.ekn = load ptr, ptr %i.ekm, align 8, !tbaa !78
  br label %bb.gr

bb.gq:                                            ; preds = %bb.go
  %i.eko = load ptr, ptr %.0100, align 8, !tbaa !78
  %i.ekp = getelementptr inbounds nuw [4 x i8], ptr %i.eko, i64 %indvars.iv251
  br label %bb.gr

bb.gr:                                            ; preds = %bb.gq, %bb.gp
  %.094 = phi ptr [ %i.ekn, %bb.gp ], [ %i.ekp, %bb.gq ]
  %.0 = phi i32 [ 1, %bb.gp ], [ %i.ekh, %bb.gq ] ; 2 uses
  br i1 %.not210, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.gr
  %i.ekq = getelementptr inbounds nuw [4096 x i8], ptr %i.ekd, i64 %indvars.iv251
  %i.ekr = getelementptr inbounds nuw [4 x i8], ptr %i.eke, i64 %indvars.iv251
  %i.eks = sext i32 %.0 to i64
  %i.ekt = getelementptr inbounds nuw [4608 x i8], ptr %i.ekg, i64 %indvars.iv251
  %i.eku = shl nsw i32 %.0, 5
  %i.ekv = sext i32 %i.eku to i64
  br label %bb.gs

bb.gs:                                            ; preds = %.lr.ph, %bb.gs
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.gs ] ; 2 uses
  %.1205 = phi ptr [ %.094, %.lr.ph ], [ %i.ekx, %bb.gs ] ; 2 uses
  %i.ekw = getelementptr inbounds nuw [128 x i8], ptr %i.ekt, i64 %indvars.iv
  tail call void @ff_mpa_synth_filter_float(ptr noundef nonnull %i.ekc, ptr noundef nonnull %i.ekq, ptr noundef nonnull %i.ekr, ptr noundef nonnull @ff_mpa_synth_window_float, ptr noundef nonnull %i.ekf, ptr noundef %.1205, i64 noundef %i.eks, ptr noundef nonnull %i.ekw) #14
  %i.ekx = getelementptr inbounds [4 x i8], ptr %.1205, i64 %i.ekv
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %bb.gs, !llvm.loop !285

._crit_edge.loopexit:                             ; preds = %bb.gs
  %.pre273 = load i32, ptr %i.ejy, align 8, !tbaa !41
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.gr
  %i.eky = phi i32 [ %.pre273, %._crit_edge.loopexit ], [ %i.ekh, %bb.gr ] ; 3 uses
  %indvars.iv.next252 = add nuw nsw i64 %indvars.iv251, 1 ; 2 uses
  %i.ekz = sext i32 %i.eky to i64
  %i.ela = icmp slt i64 %indvars.iv.next252, %i.ekz
  br i1 %i.ela, label %bb.go, label %._crit_edge209, !llvm.loop !286

._crit_edge209:                                   ; preds = %._crit_edge, %bb.gn
  %.lcssa = phi i32 [ %i.ejz, %bb.gn ], [ %i.eky, %._crit_edge ]
  %i.elb = shl i32 %.097, 7
  %i.elc = mul i32 %i.elb, %.lcssa
  br label %bb.gt

bb.gt:                                            ; preds = %bb.gl, %bb.gh, %._crit_edge209
  %.095 = phi i32 [ %.097, %bb.gh ], [ %i.elc, %._crit_edge209 ], [ %i.ejt, %bb.gl ]
  ret i32 %.095
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #4

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #9

declare i32 @ff_get_buffer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

declare hidden void @ff_mpa_synth_filter_float(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1094995529, 1) i32 @handle_crc(ptr nofree noundef readonly captures(none) %0, i32 noundef range(i32 -2147483648, 2147483632) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !104
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32920 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !88
  %i.f = and i32 %i.e, 1
  %.not25 = icmp eq i32 %i.f, 0
  br i1 %.not25, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1104
  %i.h = load ptr, ptr %i.g, align 16, !tbaa !284 ; 3 uses
  %i.i = ashr i32 %1, 3
  %i.j = and i32 %1, 7                            ; 2 uses
  %i.k = tail call ptr @av_crc_get_table(i32 noundef 1) #14 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.l = getelementptr inbounds i8, ptr %i.h, i64 -2
  %i.m = tail call i32 @av_crc(ptr noundef %i.k, i32 noundef 65535, ptr noundef nonnull %i.l, i64 noundef 2) #17
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 2
  %i.o = sext i32 %i.i to i64                     ; 2 uses
  %i.p = tail call i32 @av_crc(ptr noundef %i.k, i32 noundef %i.m, ptr noundef nonnull %i.n, i64 noundef %i.o) #17
  %i.q = getelementptr i8, ptr %i.h, i64 %i.o
  %i.r = getelementptr i8, ptr %i.q, i64 2
  %i.s = load i8, ptr %i.r, align 1, !tbaa !32
  %i.t = zext i8 %i.s to i32
  %i.u = lshr exact i32 65280, %i.j
  %i.v = and i32 %i.u, %i.t
  %i.w = shl nuw i32 %i.v, 24
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 33000
  %i.y = load i32, ptr %i.x, align 8, !tbaa !105
  %i.z = shl i32 %i.y, 16
  %i.aa = lshr exact i32 %i.z, %i.j
  %i.ab = add i32 %i.w, %i.aa
  %i.ac = tail call i32 @llvm.bswap.i32(i32 %i.ab)
  store i32 %i.ac, ptr %i.a, align 4, !tbaa !32
  %i.ad = call i32 @av_crc(ptr noundef %i.k, i32 noundef %i.p, ptr noundef nonnull %i.a, i64 noundef 3) #17 ; 2 uses
  %.not26 = icmp eq i32 %i.ad, 0
  br i1 %.not26, label %.sink.split, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32928
  %i.af = load ptr, ptr %i.ae, align 16, !tbaa !72
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.af, i32 noundef 16, ptr noundef nonnull @.str.25, i32 noundef %i.ad) #14
  %i.ag = load i32, ptr %i.d, align 8, !tbaa !88
  %i.ah = and i32 %i.ag, 8
  %.not27 = icmp eq i32 %i.ah, 0
  %spec.select = select i1 %.not27, i32 0, i32 -1094995529
  br label %.sink.split

.sink.split:                                      ; preds = %bb.d, %bb.c
  %.1.ph = phi i32 [ %spec.select, %bb.d ], [ 0, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %bb.e

bb.e:                                             ; preds = %.sink.split, %bb.a, %bb.b
  %.1 = phi i32 [ 0, %bb.b ], [ 0, %bb.a ], [ %.1.ph, %.sink.split ]
  ret i32 %.1
}

declare ptr @av_crc_get_table(i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @av_crc(ptr noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #10

declare i32 @ff_mpa_l2_select_table(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

; Function Attrs: nounwind uwtable
define internal fastcc void @compute_imdct(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 3 uses
  br label %bb.d

bb.b:                                             ; preds = %bb.d
  %.not = icmp samesign ult i64 %.0108.idx184, 296
  br i1 %.not, label %.split.loop.exit127, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.0108.add.1 = add nsw i64 %.0108.idx184, -48   ; 2 uses
  %.ptr.1 = getelementptr inbounds i8, ptr %1, i64 %.0108.add.1 ; 4 uses
  %i.b = load <4 x i32>, ptr %.ptr.1, align 4, !tbaa !42
  %i.c = getelementptr inbounds nuw i8, ptr %.ptr.1, i64 16
  %i.d = load i32, ptr %i.c, align 4, !tbaa !42
  %i.e = getelementptr inbounds nuw i8, ptr %.ptr.1, i64 20
  %i.f = load i32, ptr %i.e, align 4, !tbaa !42
  %i.g = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.b)
  %op.rdx.1 = or i32 %i.g, %i.d
  %op.rdx185.1 = or i32 %op.rdx.1, %i.f
  %.not122.1 = icmp eq i32 %op.rdx185.1, 0
  br i1 %.not122.1, label %bb.d, label %.split.loop.exit

bb.d:                                             ; preds = %bb.c, %bb.a
  %.0108.idx184 = phi i64 [ 2432, %bb.a ], [ %.0108.add.1, %bb.c ] ; 3 uses
  %i.h = getelementptr i8, ptr %1, i64 %.0108.idx184 ; 4 uses
  %.ptr = getelementptr i8, ptr %i.h, i64 -24
  %i.i = load <4 x i32>, ptr %.ptr, align 4, !tbaa !42
  %i.j = getelementptr i8, ptr %i.h, i64 -8
  %i.k = load i32, ptr %i.j, align 4, !tbaa !42
  %i.l = getelementptr i8, ptr %i.h, i64 -4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !42
  %i.n = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.i)
  %op.rdx = or i32 %i.n, %i.k
  %op.rdx185 = or i32 %op.rdx, %i.m
  %.not122 = icmp eq i32 %op.rdx185, 0
  br i1 %.not122, label %bb.b, label %.split.loop.exit.loopexit.split.loop.exit187

.split.loop.exit127:                              ; preds = %bb.b
  %.0108.ptr.le = getelementptr inbounds nuw i8, ptr %1, i64 248
  br label %.split.loop.exit

.split.loop.exit.loopexit.split.loop.exit187:     ; preds = %bb.d
  %.ptr.le = getelementptr i8, ptr %i.h, i64 -24
  br label %.split.loop.exit

end_hunk_0
begin_hunk_1_@compute_imdct:bb.a
  %i.ja = fsub nsz float %i.iw, %i.iy             ; 2 uses
  %i.jb = tail call nsz float @llvm.fmuladd.f32(float %i.io, float 5.000000e-01, float %i.ic) ; 2 uses
  %i.jc = fadd nsz float %i.iu, %i.jb             ; 2 uses
  %i.jd = tail call nsz float @llvm.fmuladd.f32(float %i.if, float 2.000000e+00, float %i.is) ; 2 uses
  %i.je = fadd nsz float %i.iv, %i.jd
  %i.jf = fmul nsz float %i.je, f0x3E8483EE       ; 2 uses
  %i.jg = fadd nsz float %i.jc, %i.jf             ; 2 uses
  %i.jh = fsub nsz float %i.jc, %i.jf             ; 2 uses
  %i.ji = fsub nsz float %i.jb, %i.iu             ; 2 uses
  %i.jj = fsub nsz float %i.jd, %i.iv
  %i.jk = fmul nsz float %i.jj, f0x3F7746EA       ; 2 uses
  %i.jl = fsub nsz float %i.ji, %i.jk             ; 2 uses
  %i.jm = fadd nsz float %i.ji, %i.jk             ; 2 uses
  %i.jn = load float, ptr %i.bn, align 16, !tbaa !90
  %i.jo = load float, ptr %.0118136, align 4, !tbaa !90
  %i.jp = tail call nsz float @llvm.fmuladd.f32(float %i.jn, float %i.jl, float %i.jo)
  store float %i.jp, ptr %.0118136, align 4, !tbaa !90
  %i.jq = load float, ptr %i.dd, align 8, !tbaa !90
  %i.jr = fmul nsz float %i.jq, %i.jm
  store float %i.jr, ptr %i.da, align 4, !tbaa !90
  store float 0.000000e+00, ptr %i.dg, align 4, !tbaa !90
  %i.js = load float, ptr %i.di, align 4, !tbaa !90
  %i.jt = load float, ptr %i.av, align 4, !tbaa !90
  %i.ju = tail call nsz float @llvm.fmuladd.f32(float %i.js, float %i.ja, float %i.jt)
  store float %i.ju, ptr %i.av, align 4, !tbaa !90
  %i.jv = load float, ptr %i.dn, align 4, !tbaa !90
  %i.jw = fmul nsz float %i.jv, %i.iz
  store float %i.jw, ptr %i.dk, align 4, !tbaa !90
  store float 0.000000e+00, ptr %i.dq, align 4, !tbaa !90
  %i.jx = load float, ptr %i.ds, align 8, !tbaa !90
  %i.jy = load float, ptr %i.ay, align 4, !tbaa !90
  %i.jz = tail call nsz float @llvm.fmuladd.f32(float %i.jx, float %i.jh, float %i.jy)
  store float %i.jz, ptr %i.ay, align 4, !tbaa !90
  %i.ka = load float, ptr %i.dx, align 16, !tbaa !90
  %i.kb = fmul nsz float %i.ka, %i.jg
  store float %i.kb, ptr %i.du, align 4, !tbaa !90
  store float 0.000000e+00, ptr %i.ea, align 4, !tbaa !90
  %i.kc = load float, ptr %i.ec, align 4, !tbaa !90
  %i.kd = load float, ptr %i.bb, align 4, !tbaa !90
  %i.ke = tail call nsz float @llvm.fmuladd.f32(float %i.kc, float %i.jh, float %i.kd)
  store float %i.ke, ptr %i.bb, align 4, !tbaa !90
  %i.kf = load float, ptr %i.eh, align 4, !tbaa !90
  %i.kg = fmul nsz float %i.kf, %i.jg
  store float %i.kg, ptr %i.ee, align 4, !tbaa !90
  store float 0.000000e+00, ptr %i.ek, align 4, !tbaa !90
  %i.kh = load float, ptr %i.em, align 16, !tbaa !90
  %i.ki = load float, ptr %i.be, align 4, !tbaa !90
  %i.kj = tail call nsz float @llvm.fmuladd.f32(float %i.kh, float %i.ja, float %i.ki)
  store float %i.kj, ptr %i.be, align 4, !tbaa !90
  %i.kk = load float, ptr %i.er, align 8, !tbaa !90
  %i.kl = fmul nsz float %i.kk, %i.iz
  store float %i.kl, ptr %i.eo, align 4, !tbaa !90
  store float 0.000000e+00, ptr %i.eu, align 4, !tbaa !90
  %i.km = load float, ptr %i.ew, align 4, !tbaa !90
  %i.kn = tail call nsz float @llvm.fmuladd.f32(float %i.km, float %i.jl, float %i.ia)
  store float %i.kn, ptr %i.bh, align 4, !tbaa !90
  %i.ko = load float, ptr %i.fb, align 4, !tbaa !90
  %i.kp = fmul nsz float %i.ko, %i.jm
  store float %i.kp, ptr %i.ey, align 4, !tbaa !90
  store float 0.000000e+00, ptr %i.fe, align 4, !tbaa !90
  %i.kq = getelementptr inbounds nuw i8, ptr %.2110138, i64 72
  %i.kr = and i64 %indvars.iv, 3
  %.not125 = icmp eq i64 %i.kr, 3
  %i.ks = select i1 %.not125, i64 69, i64 1
  %i.kt = getelementptr inbounds nuw [4 x i8], ptr %.0118136, i64 %i.ks ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader, label %bb.e, !llvm.loop !288

.lr.ph143:                                        ; preds = %.lr.ph143.preheader, %.lr.ph143
  %indvars.iv156 = phi i64 [ %i.ar, %.lr.ph143.preheader ], [ %indvars.iv.next157, %.lr.ph143 ] ; 3 uses
  %.1119141 = phi ptr [ %.0118.lcssa, %.lr.ph143.preheader ], [ %i.mx, %.lr.ph143 ] ; 20 uses
  %i.ku = getelementptr inbounds [4 x i8], ptr %2, i64 %indvars.iv156 ; 18 uses
  %i.kv = load float, ptr %.1119141, align 4, !tbaa !90
  store float %i.kv, ptr %i.ku, align 4, !tbaa !90
  store float 0.000000e+00, ptr %.1119141, align 4, !tbaa !90
  %i.kw = getelementptr inbounds nuw i8, ptr %i.ku, i64 128
  %i.kx = getelementptr inbounds nuw i8, ptr %.1119141, i64 16 ; 2 uses
  %i.ky = load float, ptr %i.kx, align 4, !tbaa !90
  store float %i.ky, ptr %i.kw, align 4, !tbaa !90
  store float 0.000000e+00, ptr %i.kx, align 4, !tbaa !90
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ku, i64 256
  %i.la = getelementptr inbounds nuw i8, ptr %.1119141, i64 32 ; 2 uses
  %i.lb = load float, ptr %i.la, align 4, !tbaa !90
  store float %i.lb, ptr %i.kz, align 4, !tbaa !90
  store float 0.000000e+00, ptr %i.la, align 4, !tbaa !90
  %i.lc = getelementptr inbounds nuw i8, ptr %i.ku, i64 384
  %i.ld = getelementptr inbounds nuw i8, ptr %.1119141, i64 48 ; 2 uses
  %i.le = load float, ptr %i.ld, align 4, !tbaa !90
  store float %i.le, ptr %i.lc, align 4, !tbaa !90
  store float 0.000000e+00, ptr %i.ld, align 4, !tbaa !90
  %i.lf = getelementptr inbounds nuw i8, ptr %i.ku, i64 512
  %i.lg = getelementptr inbounds nuw i8, ptr %.1119141, i64 64 ; 2 uses
  %i.lh = load float, ptr %i.lg, align 4, !tbaa !90
  store float %i.lh, ptr %i.lf, align 4, !tbaa !90
  store float 0.000000e+00, ptr %i.lg, align 4, !tbaa !90
  %i.li = getelementptr inbounds nuw i8, ptr %i.ku, i64 640
  %i.lj = getelementptr inbounds nuw i8, ptr %.1119141, i64 80 ; 2 uses
  %i.lk = load float, ptr %i.lj, align 4, !tbaa !90
  store float %i.lk, ptr %i.li, align 4, !tbaa !90
  store float 0.000000e+00, ptr %i.lj, align 4, !tbaa !90
  %i.ll = getelementptr inbounds nuw i8, ptr %i.ku, i64 768
  %i.lm = getelementptr inbounds nuw i8, ptr %.1119141, i64 96 ; 2 uses
  %i.ln = load float, ptr %i.lm, align 4, !tbaa !90
  store float %i.ln, ptr %i.ll, align 4, !tbaa !90
  store float 0.000000e+00, ptr %i.lm, align 4, !tbaa !90
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ku, i64 896
  %i.lp = getelementptr inbounds nuw i8, ptr %.1119141, i64 112 ; 2 uses
  %i.lq = load float, ptr %i.lp, align 4, !tbaa !90
  store float %i.lq, ptr %i.lo, align 4, !tbaa !90
  store float 0.000000e+00, ptr %i.lp, align 4, !tbaa !90
  %i.lr = getelementptr inbounds nuw i8, ptr %i.ku, i64 1024
  %i.ls = getelementptr inbounds nuw i8, ptr %.1119141, i64 128 ; 2 uses
  %i.lt = load float, ptr %i.ls, align 4, !tbaa !90
  store float %i.lt, ptr %i.lr, align 4, !tbaa !90
  store float 0.000000e+00, ptr %i.ls, align 4, !tbaa !90
  %i.lu = getelementptr inbounds nuw i8, ptr %i.ku, i64 1152
  %i.lv = getelementptr inbounds nuw i8, ptr %.1119141, i64 144 ; 2 uses
  %i.lw = load float, ptr %i.lv, align 4, !tbaa !90
  store float %i.lw, ptr %i.lu, align 4, !tbaa !90
  store float 0.000000e+00, ptr %i.lv, align 4, !tbaa !90
  %i.lx = getelementptr inbounds nuw i8, ptr %i.ku, i64 1280
  %i.ly = getelementptr inbounds nuw i8, ptr %.1119141, i64 160 ; 2 uses
  %i.lz = load float, ptr %i.ly, align 4, !tbaa !90
  store float %i.lz, ptr %i.lx, align 4, !tbaa !90
  store float 0.000000e+00, ptr %i.ly, align 4, !tbaa !90
  %i.ma = getelementptr inbounds nuw i8, ptr %i.ku, i64 1408
  %i.mb = getelementptr inbounds nuw i8, ptr %.1119141, i64 176 ; 2 uses
  %i.mc = load float, ptr %i.mb, align 4, !tbaa !90
  store float %i.mc, ptr %i.ma, align 4, !tbaa !90
  store float 0.000000e+00, ptr %i.mb, align 4, !tbaa !90
  %i.md = getelementptr inbounds nuw i8, ptr %i.ku, i64 1536
  %i.me = getelementptr inbounds nuw i8, ptr %.1119141, i64 192 ; 2 uses
  %i.mf = load float, ptr %i.me, align 4, !tbaa !90
  store float %i.mf, ptr %i.md, align 4, !tbaa !90
  store float 0.000000e+00, ptr %i.me, align 4, !tbaa !90
  %i.mg = getelementptr inbounds nuw i8, ptr %i.ku, i64 1664
  %i.mh = getelementptr inbounds nuw i8, ptr %.1119141, i64 208 ; 2 uses
  %i.mi = load float, ptr %i.mh, align 4, !tbaa !90
  store float %i.mi, ptr %i.mg, align 4, !tbaa !90
  store float 0.000000e+00, ptr %i.mh, align 4, !tbaa !90
  %i.mj = getelementptr inbounds nuw i8, ptr %i.ku, i64 1792
  %i.mk = getelementptr inbounds nuw i8, ptr %.1119141, i64 224 ; 2 uses
  %i.ml = load float, ptr %i.mk, align 4, !tbaa !90
  store float %i.ml, ptr %i.mj, align 4, !tbaa !90
  store float 0.000000e+00, ptr %i.mk, align 4, !tbaa !90
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ku, i64 1920
  %i.mn = getelementptr inbounds nuw i8, ptr %.1119141, i64 240 ; 2 uses
  %i.mo = load float, ptr %i.mn, align 4, !tbaa !90
  store float %i.mo, ptr %i.mm, align 4, !tbaa !90
  store float 0.000000e+00, ptr %i.mn, align 4, !tbaa !90
  %i.mp = getelementptr inbounds nuw i8, ptr %i.ku, i64 2048
  %i.mq = getelementptr inbounds nuw i8, ptr %.1119141, i64 256 ; 2 uses
  %i.mr = load float, ptr %i.mq, align 4, !tbaa !90
  store float %i.mr, ptr %i.mp, align 4, !tbaa !90
  store float 0.000000e+00, ptr %i.mq, align 4, !tbaa !90
  %i.ms = getelementptr inbounds nuw i8, ptr %i.ku, i64 2176
  %i.mt = getelementptr inbounds nuw i8, ptr %.1119141, i64 272 ; 2 uses
  %i.mu = load float, ptr %i.mt, align 4, !tbaa !90
  store float %i.mu, ptr %i.ms, align 4, !tbaa !90
  store float 0.000000e+00, ptr %i.mt, align 4, !tbaa !90
  %i.mv = and i64 %indvars.iv156, 3
  %.not124 = icmp eq i64 %i.mv, 3
  %i.mw = select i1 %.not124, i64 69, i64 1
  %i.mx = getelementptr inbounds nuw [4 x i8], ptr %.1119141, i64 %i.mw
  %indvars.iv.next157 = add nsw i64 %indvars.iv156, 1 ; 2 uses
  %i.my = and i64 %indvars.iv.next157, 4294967295
  %exitcond159.not = icmp eq i64 %i.my, 32
  br i1 %exitcond159.not, label %._crit_edge, label %.lr.ph143, !llvm.loop !289

._crit_edge:                                      ; preds = %.lr.ph143, %.preheader
  ret void
}

declare void @avpriv_request_sample(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #7

declare i32 @avpriv_mpeg4audio_get_config2(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

declare i32 @av_channel_layout_from_mask(ptr noundef, i64 noundef) local_unnamed_addr #5

declare noalias ptr @av_calloc(i64 noundef, i64 noundef) local_unnamed_addr #5

declare void @av_freep(ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.or.v4i32(<4 x i32>) #7

attributes #0 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold mustprogress nofree norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold nofree norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold nofree norecurse nosync nounwind optsize memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(none) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold nofree noreturn nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind willreturn memory(read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { cold }
attributes #14 = { nounwind }
attributes #15 = { nounwind willreturn memory(none) }
attributes #16 = { noreturn nounwind }
attributes #17 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !12, i64 32}
!10 = !{!"AVCodecContext", !11, i64 0, !6, i64 8, !6, i64 12, !13, i64 16, !6, i64 24, !6, i64 28, !12, i64 32, !14, i64 40, !12, i64 48, !15, i64 56, !6, i64 64, !6, i64 68, !16, i64 72, !6, i64 80, !17, i64 84, !17, i64 92, !17, i64 100, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !17, i64 128, !6, i64 136, !6, i64 140, !6, i64 144, !6, i64 148, !6, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !6, i64 168, !6, i64 172, !6, i64 176, !12, i64 184, !12, i64 192, !6, i64 200, !18, i64 204, !18, i64 208, !18, i64 212, !18, i64 216, !18, i64 220, !18, i64 224, !18, i64 228, !18, i64 232, !18, i64 236, !6, i64 240, !6, i64 244, !6, i64 248, !6, i64 252, !6, i64 256, !6, i64 260, !6, i64 264, !6, i64 268, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !19, i64 288, !19, i64 296, !19, i64 304, !6, i64 312, !6, i64 316, !6, i64 320, !6, i64 324, !6, i64 328, !6, i64 332, !6, i64 336, !6, i64 340, !6, i64 344, !6, i64 348, !20, i64 352, !6, i64 376, !6, i64 380, !6, i64 384, !6, i64 388, !6, i64 392, !6, i64 396, !6, i64 400, !6, i64 404, !12, i64 408, !6, i64 416, !6, i64 420, !6, i64 424, !18, i64 428, !18, i64 432, !6, i64 436, !6, i64 440, !6, i64 444, !6, i64 448, !6, i64 452, !21, i64 456, !15, i64 464, !15, i64 472, !18, i64 480, !18, i64 484, !6, i64 488, !6, i64 492, !16, i64 496, !16, i64 504, !6, i64 512, !6, i64 516, !6, i64 520, !6, i64 524, !6, i64 528, !22, i64 536, !12, i64 544, !23, i64 552, !23, i64 560, !6, i64 568, !6, i64 572, !7, i64 576, !6, i64 640, !6, i64 644, !6, i64 648, !6, i64 652, !6, i64 656, !6, i64 660, !6, i64 664, !12, i64 672, !12, i64 680, !6, i64 688, !6, i64 692, !6, i64 696, !6, i64 700, !6, i64 704, !6, i64 708, !6, i64 712, !6, i64 716, !6, i64 720, !24, i64 728, !16, i64 736, !6, i64 744, !6, i64 748, !16, i64 752, !16, i64 760, !16, i64 768, !25, i64 776, !6, i64 784, !6, i64 788, !15, i64 792, !6, i64 800, !6, i64 804, !15, i64 808, !12, i64 816, !15, i64 824, !26, i64 832, !6, i64 840, !27, i64 848, !6, i64 856, !6, i64 860}
!11 = !{!"p1 _ZTS7AVClass", !12, i64 0}
!12 = !{!"any pointer", !7, i64 0}
!13 = !{!"p1 _ZTS7AVCodec", !12, i64 0}
!14 = !{!"p1 _ZTS15AVCodecInternal", !12, i64 0}
!15 = !{!"long", !7, i64 0}
!16 = !{!"p1 omnipotent char", !12, i64 0}
!17 = !{!"AVRational", !6, i64 0, !6, i64 4}
!18 = !{!"float", !7, i64 0}
!19 = !{!"p1 short", !12, i64 0}
!20 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !7, i64 8, !12, i64 16}
!21 = !{!"p1 _ZTS10RcOverride", !12, i64 0}
!22 = !{!"p1 _ZTS9AVHWAccel", !12, i64 0}
!23 = !{!"p1 _ZTS11AVBufferRef", !12, i64 0}
!24 = !{!"p1 _ZTS17AVCodecDescriptor", !12, i64 0}
!25 = !{!"p1 _ZTS16AVPacketSideData", !12, i64 0}
!26 = !{!"p1 int", !12, i64 0}
!27 = !{!"p2 _ZTS15AVFrameSideData", !28, i64 0}
!28 = !{!"any p2 pointer", !12, i64 0}
!29 = !{!30, !6, i64 32}
!30 = !{!"AVPacket", !23, i64 0, !15, i64 8, !15, i64 16, !16, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !25, i64 48, !6, i64 56, !15, i64 64, !15, i64 72, !12, i64 80, !23, i64 88, !17, i64 96}
!31 = !{!30, !16, i64 24}
!32 = !{!7, !7, i64 0}
!33 = distinct !{!33, !34}
!34 = !{!"llvm.loop.mustprogress"}
!35 = !{!36, !6, i64 0}
!36 = !{!"MPADecodeContext", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !7, i64 40, !6, i64 1088, !6, i64 1092, !6, i64 1096, !37, i64 1104, !37, i64 1128, !7, i64 1152, !7, i64 9344, !7, i64 9360, !7, i64 18576, !7, i64 23184, !6, i64 32912, !6, i64 32916, !6, i64 32920, !38, i64 32928, !39, i64 32936, !12, i64 32984, !40, i64 32992, !6, i64 33000}
!37 = !{!"GetBitContext", !16, i64 0, !6, i64 8, !6, i64 12, !6, i64 16}
!38 = !{!"p1 _ZTS14AVCodecContext", !12, i64 0}
!39 = !{!"MPADSPContext", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40}
!40 = !{!"p1 _ZTS7AVFrame", !12, i64 0}
!41 = !{!36, !6, i64 24}
!42 = !{!6, !6, i64 0}
!43 = !{!12, !12, i64 0}
!44 = !{!10, !15, i64 56}
!45 = !{!36, !6, i64 20}
!46 = !{!36, !40, i64 32992}
!47 = !{!10, !6, i64 376}
!48 = !{!49, !6, i64 112}
!49 = !{!"AVFrame", !7, i64 0, !7, i64 64, !50, i64 96, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !17, i64 124, !15, i64 136, !15, i64 144, !17, i64 152, !6, i64 160, !12, i64 168, !6, i64 176, !6, i64 180, !7, i64 184, !51, i64 248, !6, i64 256, !27, i64 264, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !6, i64 296, !15, i64 304, !52, i64 312, !6, i64 320, !23, i64 328, !23, i64 336, !15, i64 344, !15, i64 352, !15, i64 360, !15, i64 368, !12, i64 376, !20, i64 384, !15, i64 408, !6, i64 416}
!50 = !{!"p2 omnipotent char", !28, i64 0}
!51 = !{!"p2 _ZTS11AVBufferRef", !28, i64 0}
!52 = !{!"p1 _ZTS12AVDictionary", !12, i64 0}
!53 = !{!10, !6, i64 24}
!54 = !{!36, !6, i64 12}
!55 = !{!10, !6, i64 344}
!56 = !{!36, !6, i64 1088}
!57 = !{!36, !6, i64 32916}
!58 = !{!10, !6, i64 80}
!59 = !{!10, !16, i64 72}
!60 = !{!61, !6, i64 12}
!61 = !{!"MPEG4AudioConfig", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !6, i64 48}
!62 = !{!63, !6, i64 0}
!63 = !{!"MP3On4DecodeContext", !6, i64 0, !6, i64 4, !16, i64 8, !7, i64 16}
!64 = !{!63, !16, i64 8}
!65 = !{!66, !66, i64 0}
!66 = !{!"short", !7, i64 0}
!67 = !{!61, !6, i64 8}
!68 = !{!63, !6, i64 4}
!69 = !{!70, !70, i64 0}
!70 = !{!"p1 _ZTS16MPADecodeContext", !12, i64 0}
!71 = !{!36, !6, i64 32912}
!72 = !{!36, !38, i64 32928}
!73 = !{i64 0, i64 8, !43, i64 8, i64 8, !43, i64 16, i64 8, !43, i64 24, i64 8, !43, i64 32, i64 8, !43, i64 40, i64 8, !43}
!74 = !{!36, !12, i64 32984}
!75 = distinct !{!75, !34}
!76 = !{!49, !50, i64 96}
!77 = !{!10, !6, i64 356}
!78 = !{!79, !79, i64 0}
!79 = !{!"p1 float", !12, i64 0}
!80 = distinct !{!80, !34}
!81 = distinct !{!81, !34}
!82 = !{!10, !6, i64 64}
!83 = !{!84, !12, i64 64}
!84 = !{!"AVFloatDSPContext", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !12, i64 56, !12, i64 64, !12, i64 72, !12, i64 80, !12, i64 88}
!85 = !{!10, !6, i64 392}
!86 = !{!10, !6, i64 348}
!87 = !{!10, !6, i64 528}
!88 = !{!36, !6, i64 32920}
!89 = distinct !{!89, !34}
!90 = !{!18, !18, i64 0}
!91 = distinct !{!91, !34}
!92 = distinct !{!92, !34}
!93 = !{!94, !94, i64 0}
!94 = !{!"double", !7, i64 0}
!95 = distinct !{!95, !34}
!96 = distinct !{!96, !34, !97, !98}
!97 = !{!"llvm.loop.isvectorized", i32 1}
!98 = !{!"llvm.loop.unroll.runtime.disable"}
!99 = distinct !{!99, !34}
!100 = !{!37, !16, i64 0}
!101 = !{!37, !6, i64 12}
!102 = !{!37, !6, i64 16}
!103 = !{!37, !6, i64 8}
!104 = !{!36, !6, i64 4}
!105 = !{!36, !6, i64 33000}
!106 = !{!36, !6, i64 8}
!107 = !{!36, !6, i64 36}
!108 = !{!36, !6, i64 28}
!109 = !{!36, !6, i64 32}
!110 = distinct !{!110, !34}
!111 = distinct !{!111, !34}
!112 = distinct !{!112, !34}
!113 = distinct !{!113, !34}
!114 = distinct !{!114, !34}
!115 = distinct !{!115, !34}
!116 = distinct !{!116, !34}
!117 = distinct !{!117, !34}
!118 = distinct !{!118, !34}
!119 = distinct !{!119, !34}
!120 = !{!16, !16, i64 0}
!121 = distinct !{!121, !34}
!122 = distinct !{!122, !34}
!123 = distinct !{!123, !124}
!124 = !{!"llvm.loop.unroll.disable"}
!125 = distinct !{!125, !34}
!126 = distinct !{!126, !34}
!127 = distinct !{!127, !34}
!128 = distinct !{!128, !34}
!129 = distinct !{!129, !34}
!130 = !{!19, !19, i64 0}
!131 = distinct !{!131, !34}
!132 = distinct !{!132, !34}
!133 = distinct !{!133, !124}
!134 = distinct !{!134, !34}
!135 = distinct !{!135, !34}
!136 = distinct !{!136, !34}
!137 = distinct !{!137, !34}
!138 = distinct !{!138, !34}
!139 = !{!140, !7, i64 0}
!140 = !{!"GranuleDef", !7, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !7, i64 20, !7, i64 21, !7, i64 24, !7, i64 36, !7, i64 48, !7, i64 49, !7, i64 52, !6, i64 64, !6, i64 68, !6, i64 72, !7, i64 76, !7, i64 128}
!141 = distinct !{!141, !34}
!142 = !{!140, !6, i64 4}
!143 = !{!140, !6, i64 8}
!144 = !{!140, !6, i64 12}
!145 = !{!140, !6, i64 16}
!146 = !{!140, !7, i64 20}
!147 = !{!140, !7, i64 21}
!148 = !{!36, !6, i64 16}
!149 = !{!140, !6, i64 72}
!150 = !{!140, !6, i64 68}
!151 = !{!140, !6, i64 64}
!152 = !{!140, !7, i64 48}
!153 = !{!140, !7, i64 49}
!154 = distinct !{!154, !34}
!155 = distinct !{!155, !34, !156}
!156 = !{!"llvm.loop.unswitch.partial.disable"}
!157 = !{!36, !6, i64 1092}
!158 = !{i64 0, i64 8, !120, i64 8, i64 4, !42, i64 12, i64 4, !42, i64 16, i64 4, !42}
!159 = distinct !{!159, !34}
!160 = distinct !{!160, !34}
!161 = !{!36, !6, i64 1116}
!162 = !{!36, !16, i64 1128}
!163 = distinct !{!163, !34}
!164 = distinct !{!164, !34}
!165 = distinct !{!165, !34, !97, !98}
!166 = !{!"branch_weights", i32 4, i32 12}
!167 = distinct !{!167, !34, !97, !98}
!168 = distinct !{!168, !34, !98, !97}
end_hunk_1
