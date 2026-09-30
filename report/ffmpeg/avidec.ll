Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/avidec?download=true
inline.NumInlined: 22
inline.NumDeleted: 15
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 7
begin_hunk_0_@avi_read_header:bb.a
  %i.aiy = getelementptr [24 x i8], ptr %i.aiw, i64 %i.aix
  %i.aiz = getelementptr i8, ptr %i.aiy, i64 -16
  %i.aja = load i64, ptr %i.aiz, align 8, !tbaa !82
  %i.ajb = getelementptr inbounds nuw i8, ptr %i.aiu, i64 28
  %i.ajc = load i32, ptr %i.ajb, align 4, !tbaa !55
  %narrow.i.i = call i32 @llvm.smax.i32(i32 %i.ajc, i32 1)
  %spec.select105.i.i = zext nneg i32 %narrow.i.i to i64
  %i.ajd = sdiv i64 %i.aja, %spec.select105.i.i
  %i.aje = getelementptr inbounds nuw i8, ptr %i.ais, i64 32
  %i.ajf = load i64, ptr %i.aje, align 8
  %i.ajg = call i64 @av_rescale_q(i64 noundef %i.ajd, i64 %i.ajf, i64 4294967296000001) #13 ; 2 uses
  %i.ajh = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.ajg, i64 %.190.i.i) ; 2 uses
  %i.aji = extractvalue { i64, i1 } %i.ajh, 1
  %i.ajj = extractvalue { i64, i1 } %i.ajh, 0     ; 2 uses
  %i.ajk = icmp slt i64 %i.ajj, 0
  %i.ajl = select i1 %i.ajk, i64 9223372036854775807, i64 -9223372036854775808
  %i.ajm = select i1 %i.aji, i64 %i.ajl, i64 %i.ajj
  %i.ajn = call i64 @llvm.smax.i64(i64 %.091118.i.i, i64 %i.ajg)
  %i.ajo = getelementptr inbounds nuw i8, ptr %i.ais, i64 16
  %i.ajp = load ptr, ptr %i.ajo, align 8, !tbaa !57
  %i.ajq = getelementptr inbounds nuw i8, ptr %i.ajp, i64 48
  %i.ajr = load i64, ptr %i.ajq, align 8, !tbaa !135
  %i.ajs = call i64 @av_rescale(i64 noundef %i.ajm, i64 noundef %i.ajr, i64 noundef 1000000) #13
  %i.ajt = call i64 @llvm.smax.i64(i64 %.087119.i.i, i64 %i.ajs)
  br label %bb.gt

bb.gt:                                            ; preds = %bb.gs, %.lr.ph121.split.i.i
  %.192.i.i = phi i64 [ %i.ajn, %bb.gs ], [ %.091118.i.i, %.lr.ph121.split.i.i ] ; 2 uses
  %.188.i.i = phi i64 [ %i.ajt, %bb.gs ], [ %.087119.i.i, %.lr.ph121.split.i.i ] ; 2 uses
  %indvars.iv.next139.i.i = add nuw nsw i64 %indvars.iv138.i.i, 1 ; 2 uses
  %exitcond142.not.i.i = icmp eq i64 %indvars.iv.next139.i.i, %wide.trip.count136.i.i
  br i1 %exitcond142.not.i.i, label %.critedge107.loopexit130.i.i, label %.lr.ph121.split.i.i, !llvm.loop !107

.critedge107.loopexit130.i.i:                     ; preds = %bb.gt
  %i.aju = icmp slt i64 %.188.i.i, 67108865
  %i.ajv = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %.192.i.i, i64 %.190.i.i)
  br label %.critedge107.i.i

.critedge107.i.i:                                 ; preds = %.critedge107.loopexit130.i.i, %.preheader.i.i
  %.091.lcssa.i.i = phi { i64, i1 } [ %i.ajv, %.critedge107.loopexit130.i.i ], [ { i64 -9223372036854775807, i1 false }, %.preheader.i.i ] ; 2 uses
  %.087.lcssa.i.i = phi i1 [ %i.aju, %.critedge107.loopexit130.i.i ], [ true, %.preheader.i.i ]
  %i.ajw = extractvalue { i64, i1 } %.091.lcssa.i.i, 1
  %i.ajx = extractvalue { i64, i1 } %.091.lcssa.i.i, 0 ; 2 uses
  %i.ajy = icmp slt i64 %i.ajx, 0
  %i.ajz = select i1 %i.ajy, i64 9223372036854775807, i64 -9223372036854775808
  %i.aka = select i1 %i.ajw, i64 %i.ajz, i64 %i.ajx
  %i.akb = icmp slt i64 %i.aka, 2000001
  %or.cond3.not.i.i = select i1 %i.akb, i1 %.087.lcssa.i.i, i1 false
  br i1 %or.cond3.not.i.i, label %bb.gn, label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %.critedge107.i.i, %bb.gn, %.preheader110.i.i
  %.us-phi.i = phi i32 [ 0, %.preheader110.i.i ], [ 0, %bb.gn ], [ 1, %.critedge107.i.i ]
  call void @av_free(ptr noundef nonnull %i.ahl) #12
  br label %bb.gu

bb.gu:                                            ; preds = %._crit_edge.i716, %.sink.split.i.i
  %.041.i.ph = phi i32 [ %.us-phi.i, %.sink.split.i.i ], [ 1, %._crit_edge.i716 ]
  %i.akc = load i32, ptr %i.ax, align 8, !tbaa !134
  %i.akd = and i32 %i.akc, 65536
  %i.ake = load i32, ptr %i.bb, align 8, !tbaa !38
  %i.akf = or i32 %i.ake, %.041.i.ph
  %i.akg = or i32 %i.akf, %i.akd
  store i32 %i.akg, ptr %i.bb, align 8, !tbaa !38
  %i.akh = load ptr, ptr %i.av, align 8, !tbaa !138
  %i.aki = call ptr @av_dict_get(ptr noundef %i.akh, ptr noundef nonnull @.str.35, ptr noundef null, i32 noundef 0) #12 ; 2 uses
  %.not689 = icmp eq ptr %i.aki, null
  br i1 %.not689, label %..loopexit_crit_edge, label %bb.gv

..loopexit_crit_edge:                             ; preds = %bb.gu
  %.pre922 = load i32, ptr %i.as, align 4, !tbaa !46
  br label %.loopexit

bb.gv:                                            ; preds = %bb.gu
  %i.akj = getelementptr inbounds nuw i8, ptr %i.aki, i64 8
  %i.akk = load ptr, ptr %i.akj, align 8, !tbaa !140
  %i.akl = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.akk, ptr noundef nonnull dereferenceable(11) @.str.36) #15
  %.not690 = icmp eq i32 %i.akl, 0
  %.pre923 = load i32, ptr %i.as, align 4, !tbaa !46 ; 8 uses
  br i1 %.not690, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.gv
  %.not848 = icmp eq i32 %.pre923, 0
  br i1 %.not848, label %._crit_edge841, label %.lr.ph837

.lr.ph837:                                        ; preds = %.preheader
  %i.akm = load ptr, ptr %i.at, align 8, !tbaa !47 ; 3 uses
  %wide.trip.count898 = zext i32 %.pre923 to i64  ; 2 uses
  %xtraiter1152 = and i64 %wide.trip.count898, 1
  %i.akn = icmp eq i32 %.pre923, 1
  br i1 %i.akn, label %.epil.preheader1151, label %.lr.ph837.new

.lr.ph837.new:                                    ; preds = %.lr.ph837
  %unroll_iter1156 = and i64 %wide.trip.count898, 4294967294
  br label %bb.gw

bb.gw:                                            ; preds = %bb.ha, %.lr.ph837.new
  %indvars.iv895 = phi i64 [ 0, %.lr.ph837.new ], [ %indvars.iv.next896.1, %bb.ha ] ; 3 uses
  %niter1157 = phi i64 [ 0, %.lr.ph837.new ], [ %niter1157.next.1, %bb.ha ]
  %i.ako = getelementptr inbounds nuw [8 x i8], ptr %i.akm, i64 %indvars.iv895
  %i.akp = load ptr, ptr %i.ako, align 8, !tbaa !49 ; 2 uses
  %i.akq = getelementptr inbounds nuw i8, ptr %i.akp, i64 16
  %i.akr = load ptr, ptr %i.akq, align 8, !tbaa !57
  %i.aks = getelementptr inbounds nuw i8, ptr %i.akr, i64 4
  %i.akt = load i32, ptr %i.aks, align 4, !tbaa !61
  %.off = add i32 %i.akt, -1
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %bb.gx, label %bb.gy

bb.gx:                                            ; preds = %bb.gw
  %i.aku = getelementptr inbounds nuw i8, ptr %i.akp, i64 808
  store i32 1, ptr %i.aku, align 8, !tbaa !130
  br label %bb.gy

bb.gy:                                            ; preds = %bb.gw, %bb.gx
  %i.akv = getelementptr inbounds nuw [8 x i8], ptr %i.akm, i64 %indvars.iv895
  %i.akw = getelementptr inbounds nuw i8, ptr %i.akv, i64 8
  %i.akx = load ptr, ptr %i.akw, align 8, !tbaa !49 ; 2 uses
  %i.aky = getelementptr inbounds nuw i8, ptr %i.akx, i64 16
  %i.akz = load ptr, ptr %i.aky, align 8, !tbaa !57
  %i.ala = getelementptr inbounds nuw i8, ptr %i.akz, i64 4
  %i.alb = load i32, ptr %i.ala, align 4, !tbaa !61
  %.off.1 = add i32 %i.alb, -1
  %switch.1 = icmp ult i32 %.off.1, 2
  br i1 %switch.1, label %bb.gz, label %bb.ha

bb.gz:                                            ; preds = %bb.gy
  %i.alc = getelementptr inbounds nuw i8, ptr %i.akx, i64 808
  store i32 1, ptr %i.alc, align 8, !tbaa !130
  br label %bb.ha

bb.ha:                                            ; preds = %bb.gz, %bb.gy
  %indvars.iv.next896.1 = add nuw nsw i64 %indvars.iv895, 2 ; 2 uses
  %niter1157.next.1 = add i64 %niter1157, 2       ; 2 uses
  %niter1157.ncmp.1 = icmp eq i64 %niter1157.next.1, %unroll_iter1156
  br i1 %niter1157.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.gw, !llvm.loop !108

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.ha
  %lcmp.mod1154.not = icmp eq i64 %xtraiter1152, 0
  br i1 %lcmp.mod1154.not, label %.loopexit, label %.epil.preheader1151

.epil.preheader1151:                              ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph837
  %indvars.iv895.epil.init = phi i64 [ 0, %.lr.ph837 ], [ %indvars.iv.next896.1, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod1155 = trunc i32 %.pre923 to i1
  call void @llvm.assume(i1 %lcmp.mod1155)
  %i.ald = getelementptr inbounds nuw [8 x i8], ptr %i.akm, i64 %indvars.iv895.epil.init
  %i.ale = load ptr, ptr %i.ald, align 8, !tbaa !49 ; 2 uses
  %i.alf = getelementptr inbounds nuw i8, ptr %i.ale, i64 16
  %i.alg = load ptr, ptr %i.alf, align 8, !tbaa !57
  %i.alh = getelementptr inbounds nuw i8, ptr %i.alg, i64 4
  %i.ali = load i32, ptr %i.alh, align 4, !tbaa !61
  %.off.epil = add i32 %i.ali, -1
  %switch.epil = icmp ult i32 %.off.epil, 2
  br i1 %switch.epil, label %bb.hb, label %.loopexit

bb.hb:                                            ; preds = %.epil.preheader1151
  %i.alj = getelementptr inbounds nuw i8, ptr %i.ale, i64 808
  store i32 1, ptr %i.alj, align 8, !tbaa !130
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %bb.hb, %.epil.preheader1151, %..loopexit_crit_edge, %bb.gv
  %i.alk = phi i32 [ %.pre922, %..loopexit_crit_edge ], [ %.pre923, %bb.gv ], [ %.pre923, %.epil.preheader1151 ], [ %.pre923, %bb.hb ], [ %.pre923, %.loopexit.loopexit.unr-lcssa ] ; 3 uses
  %.not849 = icmp eq i32 %i.alk, 0
  br i1 %.not849, label %._crit_edge841, label %.lr.ph840

.lr.ph840:                                        ; preds = %.loopexit
  %i.all = load ptr, ptr %i.at, align 8, !tbaa !47
  %wide.trip.count903 = zext i32 %i.alk to i64
  br label %bb.hc

bb.hc:                                            ; preds = %.lr.ph840, %bb.hd
  %indvars.iv900 = phi i64 [ 0, %.lr.ph840 ], [ %indvars.iv.next901, %bb.hd ] ; 3 uses
  %i.alm = getelementptr inbounds nuw [8 x i8], ptr %i.all, i64 %indvars.iv900
  %i.aln = load ptr, ptr %i.alm, align 8, !tbaa !49
  %i.alo = getelementptr inbounds nuw i8, ptr %i.aln, i64 328
  %i.alp = load i32, ptr %i.alo, align 8, !tbaa !78
  %.not691 = icmp eq i32 %i.alp, 0
  br i1 %.not691, label %bb.hd, label %._crit_edge841.loopexit.split.loop.exit

bb.hd:                                            ; preds = %bb.hc
  %indvars.iv.next901 = add nuw nsw i64 %indvars.iv900, 1 ; 2 uses
  %exitcond904.not = icmp eq i64 %indvars.iv.next901, %wide.trip.count903
  br i1 %exitcond904.not, label %._crit_edge841, label %bb.hc, !llvm.loop !109

._crit_edge841.loopexit.split.loop.exit:          ; preds = %bb.hc
  %i.alq = trunc nuw nsw i64 %indvars.iv900 to i32
  %i.alr = icmp eq i32 %i.alk, %i.alq
  br label %._crit_edge841

._crit_edge841:                                   ; preds = %bb.hd, %._crit_edge841.loopexit.split.loop.exit, %.preheader, %.loopexit
  %.2581.lcssa = phi i1 [ true, %.loopexit ], [ true, %.preheader ], [ %i.alr, %._crit_edge841.loopexit.split.loop.exit ], [ true, %bb.hd ]
  %i.als = load ptr, ptr %i.az, align 8, !tbaa !50
  %.not692 = icmp eq ptr %i.als, null
  br i1 %.not692, label %bb.hf, label %bb.he

bb.he:                                            ; preds = %._crit_edge841
  store i32 0, ptr %i.bb, align 8, !tbaa !38
  br label %bb.hf

bb.hf:                                            ; preds = %bb.he, %._crit_edge841
  %i.alt = load i32, ptr %i.bb, align 8, !tbaa !38
  %.not693 = icmp eq i32 %i.alt, 0
  br i1 %.not693, label %.thread756, label %bb.hg

bb.hg:                                            ; preds = %bb.hf
  br i1 %.2581.lcssa, label %bb.hh, label %bb.hi

bb.hh:                                            ; preds = %bb.hg
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 24, ptr noundef nonnull @.str.37) #12
  store i32 0, ptr %i.bb, align 8, !tbaa !38
  br label %.thread756

bb.hi:                                            ; preds = %bb.hg
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 32, ptr noundef nonnull @.str.38) #12
  call fastcc void @clean_index(ptr noundef nonnull %0)
  br label %.thread756

.thread756:                                       ; preds = %bb.hf, %bb.hh, %bb.hi
  call void @ff_metadata_conv_ctx(ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull @avi_metadata_conv) #12
  call void @ff_metadata_conv_ctx(ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull @ff_riff_info_conv) #12
  br label %guess_ni_flag.exit

guess_ni_flag.exit:                               ; preds = %avi_read_nikon.exit, %bb.m, %bb.ez, %avi_read_tag.exit, %bb.eo, %bb.as, %bb.ar, %bb.au, %bb.av, %bb.f, %bb.ax, %bb.bo, %bb.gm, %avi_read_tag.exit.thread, %.loopexit758, %get_riff.exit, %bb.fp, %bb.fm, %.thread756
  %.6 = phi i32 [ %.0.i707.ph, %avi_read_tag.exit.thread ], [ -1094995529, %get_riff.exit ], [ -12, %bb.ax ], [ -1094995529, %bb.fm ], [ -1094995529, %bb.fp ], [ 0, %.thread756 ], [ -1094995529, %bb.bo ], [ -12, %bb.gm ], [ %.3, %.loopexit758 ], [ -1094995529, %bb.f ], [ %i.vm, %bb.eo ], [ -12, %bb.as ], [ -12, %bb.ar ], [ -1094995529, %bb.au ], [ %i.yo, %avi_read_tag.exit ], [ -1094995529, %avi_read_nikon.exit ], [ -1094995529, %bb.ez ], [ -1094995529, %bb.m ], [ -1094995529, %bb.av ]
  ret i32 %.6
}

; Function Attrs: nounwind uwtable
define internal i32 @avi_read_packet(ptr noundef %0, ptr noundef %1) #1 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 6 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %2 = alloca %struct.AVProbeData, align 8        ; 9 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !27   ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !28   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 72 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !50   ; 2 uses
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = tail call i32 @avpriv_dv_get_packet(ptr noundef nonnull %i.j, ptr noundef %1) #12 ; 2 uses
  %i.l = icmp slt i32 %i.k, 0
  br i1 %i.l, label %.preheader, label %ni_prepare_read.exit.thread

bb.c:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %i.n = load i32, ptr %i.m, align 8, !tbaa !38
  %.not152 = icmp eq i32 %i.n, 0
  br i1 %.not152, label %.preheader, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !46   ; 2 uses
  %.not89.i = icmp eq i32 %i.p, 0
  br i1 %.not89.i, label %ni_prepare_read.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %bb.e

bb.e:                                             ; preds = %bb.i, %.lr.ph.i
  %i.r = phi i32 [ %i.p, %.lr.ph.i ], [ %i.aw, %bb.i ] ; 2 uses
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.i ] ; 3 uses
  %.06386.i = phi i64 [ 9223372036854775807, %.lr.ph.i ], [ %.2.i, %bb.i ] ; 4 uses
  %.06585.i = phi ptr [ null, %.lr.ph.i ], [ %.267.i, %bb.i ] ; 3 uses
  %.06884.i = phi i32 [ 0, %.lr.ph.i ], [ %.270.i, %bb.i ] ; 3 uses
  %i.s = load ptr, ptr %i.q, align 8, !tbaa !47
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.i
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !49   ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !45   ; 3 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !56   ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 328
  %i.z = load i32, ptr %i.y, align 8, !tbaa !78   ; 2 uses
  %.not78.i = icmp eq i32 %i.z, 0
  br i1 %.not78.i, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !83
  %.not79.i = icmp eq i32 %i.ab, 0
  br i1 %.not79.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %i.u, i64 320
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !79
  %i.ae = sext i32 %i.z to i64
  %i.af = getelementptr [24 x i8], ptr %i.ad, i64 %i.ae
  %i.ag = getelementptr i8, ptr %i.af, i64 -16
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !82
  %i.ai = icmp sgt i64 %i.x, %i.ah
  br i1 %i.ai, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.aj = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.ak = getelementptr inbounds nuw i8, ptr %i.w, i64 28
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !55 ; 2 uses
  %i.am = icmp slt i32 %i.al, 1
  %i.an = zext nneg i32 %i.al to i64
  %i.ao = or disjoint i64 %i.an, 4294967296000000
  %.sroa.0.0.insert.ext.i = select i1 %i.am, i64 4294967296000001, i64 %i.ao
  %i.ap = load i64, ptr %i.aj, align 8            ; 3 uses
  %i.aq = tail call i64 @av_rescale_q(i64 noundef %i.x, i64 %i.ap, i64 %.sroa.0.0.insert.ext.i) #13 ; 3 uses
  %i.ar = trunc i64 %i.ap to i32
  %i.as = lshr i64 %i.ap, 32
  %i.at = trunc nuw i64 %i.as to i32
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 56, ptr noundef nonnull @.str.80, i64 noundef %i.aq, i32 noundef %i.ar, i32 noundef %i.at, i64 noundef %i.x) #12
  %i.au = icmp slt i64 %i.aq, %.06386.i           ; 2 uses
  %i.av = trunc nuw nsw i64 %indvars.iv.i to i32
  %.169.i = select i1 %i.au, i32 %i.av, i32 %.06884.i
  %.166.i = select i1 %i.au, ptr %i.u, ptr %.06585.i
  %.164.i = tail call i64 @llvm.smin.i64(i64 %i.aq, i64 %.06386.i)
  %.pre.i = load i32, ptr %i.o, align 4, !tbaa !46
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.e
  %i.aw = phi i32 [ %.pre.i, %bb.h ], [ %i.r, %bb.e ], [ %i.r, %bb.g ] ; 2 uses
  %.270.i = phi i32 [ %.169.i, %bb.h ], [ %.06884.i, %bb.e ], [ %.06884.i, %bb.g ] ; 2 uses
  %.267.i = phi ptr [ %.166.i, %bb.h ], [ %.06585.i, %bb.e ], [ %.06585.i, %bb.g ] ; 8 uses
  %.2.i = phi i64 [ %.164.i, %bb.h ], [ %.06386.i, %bb.e ], [ %.06386.i, %bb.g ]
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ax = zext i32 %i.aw to i64
  %i.ay = icmp samesign ult i64 %indvars.iv.next.i, %i.ax
  br i1 %i.ay, label %bb.e, label %._crit_edge.i, !llvm.loop !141

._crit_edge.i:                                    ; preds = %bb.i
  %.not.i = icmp eq ptr %.267.i, null
  br i1 %.not.i, label %ni_prepare_read.exit.thread, label %bb.j

bb.j:                                             ; preds = %._crit_edge.i
  %i.az = getelementptr inbounds nuw i8, ptr %.267.i, i64 24
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !45 ; 4 uses
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !56 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 8 ; 4 uses
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !83
  %.not75.i = icmp eq i32 %i.bd, 0
  br i1 %.not75.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.be = tail call i32 @av_index_search_timestamp(ptr noundef nonnull %.267.i, i64 noundef %i.bb, i32 noundef 4) #12 ; 2 uses
  %i.bf = icmp sgt i32 %i.be, -1
  br i1 %i.bf, label %.thread.i, label %ni_prepare_read.exit.thread

.thread.i:                                        ; preds = %bb.k
  %i.bg = getelementptr inbounds nuw i8, ptr %.267.i, i64 320
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !79 ; 2 uses
  %i.bi = zext nneg i32 %i.be to i64              ; 2 uses
  %i.bj = getelementptr inbounds nuw [24 x i8], ptr %i.bh, i64 %i.bi
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !82
  store i64 %i.bl, ptr %i.ba, align 8, !tbaa !56
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.bm = tail call i32 @av_index_search_timestamp(ptr noundef nonnull %.267.i, i64 noundef %i.bb, i32 noundef 5) #12 ; 2 uses
  %i.bn = icmp sgt i32 %i.bm, -1
  br i1 %i.bn, label %._crit_edge91.i, label %ni_prepare_read.exit.thread

._crit_edge91.i:                                  ; preds = %bb.l
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.267.i, i64 320
  %.pre92.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !79
  %.pre93.i = zext nneg i32 %i.bm to i64
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge91.i, %.thread.i
  %.pre-phi.i = phi i64 [ %.pre93.i, %._crit_edge91.i ], [ %i.bi, %.thread.i ] ; 2 uses
  %i.bo = phi ptr [ %.pre92.i, %._crit_edge91.i ], [ %i.bh, %.thread.i ]
  %i.bp = getelementptr inbounds nuw i8, ptr %.267.i, i64 320
  %i.bq = getelementptr inbounds nuw [24 x i8], ptr %i.bo, i64 %.pre-phi.i
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !81
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ba, i64 12 ; 3 uses
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !84
  %i.bu = load i32, ptr %i.bc, align 8, !tbaa !83
  %i.bv = sub nsw i32 %i.bt, %i.bu
  %i.bw = sext i32 %i.bv to i64
  %i.bx = load ptr, ptr %i.g, align 8, !tbaa !28
  %i.by = add i64 %i.br, 8
  %i.bz = add i64 %i.by, %i.bw
  %i.ca = tail call i64 @avio_seek(ptr noundef %i.bx, i64 noundef %i.bz, i32 noundef 0) #12
  %i.cb = icmp sgt i64 %i.ca, -1
  br i1 %i.cb, label %bb.n, label %ni_prepare_read.exit.thread

bb.n:                                             ; preds = %bb.m
  %i.cc = load i32, ptr %i.bc, align 8, !tbaa !83 ; 2 uses
  %i.cd = load i32, ptr %i.bs, align 4, !tbaa !84
  %.not76.i = icmp sgt i32 %i.cc, %i.cd
  br i1 %.not76.i, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.14, i32 noundef 1465) #12
  tail call void @abort() #14
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.ce = getelementptr inbounds nuw i8, ptr %i.f, i64 68
  store i32 %.270.i, ptr %i.ce, align 4, !tbaa !31
  %.not77.i = icmp eq i32 %i.cc, 0
  br i1 %.not77.i, label %bb.q, label %.preheader

bb.q:                                             ; preds = %bb.p
  %i.cf = load ptr, ptr %i.bp, align 8, !tbaa !79
  %i.cg = getelementptr inbounds nuw [24 x i8], ptr %i.cf, i64 %.pre-phi.i
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %i.ci = load i32, ptr %i.ch, align 8
  %i.cj = ashr i32 %i.ci, 2                       ; 2 uses
  store i32 %i.cj, ptr %i.bc, align 8, !tbaa !83
  store i32 %i.cj, ptr %i.bs, align 4, !tbaa !84
  br label %.preheader

.preheader:                                       ; preds = %bb.c, %bb.p, %bb.q, %bb.b
  %i.ck = getelementptr inbounds nuw i8, ptr %i.f, i64 68 ; 4 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 44
end_hunk_0
