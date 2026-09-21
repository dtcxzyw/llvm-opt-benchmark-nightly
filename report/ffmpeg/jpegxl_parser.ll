Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/jpegxl_parser?download=true
inline.NumInlined: 192
inline.NumDeleted: 28
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 8
begin_hunk_0_@jpegxl_parse:bb.a
  br label %.thread549.i.i

.thread549.i.i:                                   ; preds = %bb.fj, %bb.fd, %bb.bi
  %i.amx = phi i32 [ %spec.select.i.i.i, %bb.bi ], [ %i.amw, %bb.fj ], [ %.val26.i430.i.i, %bb.fd ] ; 4 uses
  %.1241561.i.i = phi i32 [ %i.fb, %bb.bi ], [ %.0240.i.i, %bb.fj ], [ %.0240.i.i, %bb.fd ]
  %.1243560.i.i = phi i32 [ %i.fa, %bb.bi ], [ %.0242.i.i, %bb.fj ], [ %.0242.i.i, %bb.fd ]
  %.1249559.i.i = phi i32 [ 1, %bb.bi ], [ %.0248477.i.i, %bb.fj ], [ %.0248477.i.i, %bb.fd ] ; 2 uses
  %.1258558.i.i = phi i32 [ 0, %bb.bi ], [ %.0257496.i.i, %bb.fj ], [ %.0257496.i.i, %bb.fd ] ; 2 uses
  %.1260557.i.i = phi i32 [ 1, %bb.bi ], [ %.0259.i.i, %bb.fj ], [ %.0259.i.i, %bb.fd ] ; 2 uses
  %.1262556.i.i = phi i32 [ 1, %bb.bi ], [ %.0261489495.i.i, %bb.fj ], [ %.0261489495.i.i, %bb.fd ] ; 2 uses
  %i.amy = add i32 %.1243560.i.i, -1
  %i.amz = udiv i32 %i.amy, %.1249559.i.i
  %i.ana = lshr i32 %i.amz, %.1258558.i.i         ; 3 uses
  %i.anb = add i32 %i.ana, 1                      ; 2 uses
  %i.anc = add i32 %.1241561.i.i, -1
  %i.and = udiv i32 %i.anc, %.1249559.i.i
  %i.ane = lshr i32 %i.and, %.1258558.i.i         ; 3 uses
  %i.anf = add i32 %i.ane, 1                      ; 2 uses
  %i.ang = add nuw nsw i32 %.1260557.i.i, 7       ; 2 uses
  %i.anh = lshr i32 %i.ana, %i.ang
  %i.ani = add nuw nsw i32 %i.anh, 1
  %i.anj = lshr i32 %i.ane, %i.ang
  %i.ank = add nuw nsw i32 %i.anj, 1
  %i.anl = mul i32 %i.ank, %i.ani                 ; 2 uses
  %i.anm = icmp eq i32 %i.anl, 1
  %i.ann = icmp eq i32 %.1262556.i.i, 1
  %or.cond19.i.i = and i1 %i.ann, %i.anm
  br i1 %or.cond19.i.i, label %bb.fl, label %bb.fk

bb.fk:                                            ; preds = %.thread549.i.i
  %i.ano = add nuw nsw i32 %.1260557.i.i, 10      ; 2 uses
  %i.anp = lshr i32 %i.ana, %i.ano
  %i.anq = add nuw nsw i32 %i.anp, 1
  %i.anr = lshr i32 %i.ane, %i.ano
  %i.ans = add nuw nsw i32 %i.anr, 1
  %i.ant = mul i32 %i.ans, %i.anq
  %i.anu = add i32 %i.ant, 2
  %i.anv = mul i32 %i.anl, %.1262556.i.i
  %i.anw = add i32 %i.anu, %i.anv
  br label %bb.fl

bb.fl:                                            ; preds = %bb.fk, %.thread549.i.i
  %.0239.i.i = phi i32 [ %i.anw, %bb.fk ], [ 1, %.thread549.i.i ] ; 7 uses
  %i.anx = load ptr, ptr %7, align 8, !tbaa !18
  %i.any = lshr i32 %i.amx, 3
  %i.anz = zext nneg i32 %i.any to i64
  %i.aoa = getelementptr inbounds nuw i8, ptr %i.anx, i64 %i.anz
  %i.aob = load i8, ptr %i.aoa, align 1, !tbaa !15
  %i.aoc = load i32, ptr %i.du, align 8, !tbaa !20
  %i.aod = icmp slt i32 %i.amx, %i.aoc
  %i.aoe = zext i1 %i.aod to i32
  %spec.select.i450.i.i = add i32 %i.amx, %i.aoe  ; 2 uses
  %i.aof = zext i8 %i.aob to i32
  %i.aog = and i32 %i.amx, 7
  store i32 %spec.select.i450.i.i, ptr %i.dv, align 8, !tbaa !21
  %i.aoh = shl nuw nsw i32 1, %i.aog
  %i.aoi = and i32 %i.aoh, %i.aof
  %.not303.i.i = icmp eq i32 %i.aoi, 0
  br i1 %.not303.i.i, label %bb.fw, label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10
  %i.aoj = shl i32 %i.fa, 3                       ; 2 uses
  %i.aok = icmp ugt i32 %i.anb, %i.aoj
  %.pre671.i.i = shl i32 %i.fb, 3                 ; 2 uses
  %i.aol = icmp ugt i32 %i.anf, %.pre671.i.i
  %or.cond736.i.i = select i1 %i.aok, i1 true, i1 %i.aol
  br i1 %or.cond736.i.i, label %._crit_edge670.i.i, label %bb.fn

._crit_edge670.i.i:                               ; preds = %bb.fm
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %1, i32 noundef 24, ptr noundef nonnull @.str, i32 noundef %i.anb, i32 noundef %i.anf, i32 noundef %i.aoj, i32 noundef %.pre671.i.i) #10
  br label %.thread593.i.i

bb.fn:                                            ; preds = %bb.fm
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.et, i8 0, i64 88, i1 false)
  store ptr %1, ptr %i.eu, align 8, !tbaa !28
  store i64 -1, ptr %6, align 8, !tbaa !29
  %i.aom = call fastcc i32 @read_distribution_bundle(ptr noundef nonnull %7, ptr noundef nonnull %6, ptr noundef %i.ev, i32 noundef 8, i32 noundef 0)
  %i.aon = icmp slt i32 %i.aom, 0
  br i1 %i.aon, label %bb.fo, label %entropy_decoder_init.exit.i.i

bb.fo:                                            ; preds = %bb.fn
  %i.aoo = getelementptr inbounds nuw i8, ptr %6, i64 24
  call void @av_freep(ptr noundef nonnull %i.aoo) #10
  %i.aop = getelementptr inbounds nuw i8, ptr %6, i64 84
  %i.aoq = load i32, ptr %i.aop, align 4, !tbaa !30
  %.not.i.i.i.i.i = icmp eq i32 %i.aoq, 0
  br i1 %.not.i.i.i.i.i, label %entropy_decoder_init.exit.thread.i.i, label %bb.fp

bb.fp:                                            ; preds = %bb.fo
  %i.aor = getelementptr inbounds nuw i8, ptr %6, i64 72 ; 2 uses
  %i.aos = load ptr, ptr %i.aor, align 8, !tbaa !31
  %.not8.i.i.i.i.i = icmp eq ptr %i.aos, null
  br i1 %.not8.i.i.i.i.i, label %entropy_decoder_init.exit.thread.i.i, label %.preheader.i.i.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %bb.fp
  %i.aot = getelementptr inbounds nuw i8, ptr %6, i64 80 ; 2 uses
  %i.aou = load i32, ptr %i.aot, align 8, !tbaa !32
  %i.aov = icmp sgt i32 %i.aou, 0
  br i1 %i.aov, label %.lr.ph.i.i.i.i.i, label %entropy_decoder_init.exit.thread.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.preheader.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %indvars.iv.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ 0, %.preheader.i.i.i.i.i ] ; 2 uses
  %i.aow = load ptr, ptr %i.aor, align 8, !tbaa !31
  %i.aox = getelementptr inbounds nuw [2640 x i8], ptr %i.aow, i64 %indvars.iv.i.i.i.i.i
  %i.aoy = getelementptr inbounds nuw i8, ptr %i.aox, i64 24
  call void @ff_vlc_free(ptr noundef nonnull %i.aoy) #10
  %indvars.iv.next.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i, 1 ; 2 uses
  %i.aoz = load i32, ptr %i.aot, align 8, !tbaa !32
  %i.apa = sext i32 %i.aoz to i64
  %i.apb = icmp slt i64 %indvars.iv.next.i.i.i.i.i, %i.apa
  br i1 %i.apb, label %.lr.ph.i.i.i.i.i, label %entropy_decoder_init.exit.thread.i.i, !llvm.loop !0

entropy_decoder_init.exit.thread.i.i:             ; preds = %.lr.ph.i.i.i.i.i, %.preheader.i.i.i.i.i, %bb.fp, %bb.fo
  %i.apc = getelementptr inbounds nuw i8, ptr %6, i64 72
  call void @av_freep(ptr noundef nonnull %i.apc) #10
  %i.apd = getelementptr inbounds nuw i8, ptr %6, i64 56
  call void @av_freep(ptr noundef nonnull %i.apd) #10
  br label %.thread593.i.i

entropy_decoder_init.exit.i.i:                    ; preds = %bb.fn
  %.val354.i.i = load i32, ptr %i.dv, align 8, !tbaa !21
  %.val355.i.i = load i32, ptr %i.ds, align 4, !tbaa !19
  %i.ape = icmp slt i32 %.val355.i.i, %.val354.i.i
  br i1 %i.ape, label %bb.fq, label %bb.fs

bb.fq:                                            ; preds = %entropy_decoder_init.exit.i.i
  %i.apf = getelementptr inbounds nuw i8, ptr %6, i64 24
  call void @av_freep(ptr noundef nonnull %i.apf) #10
  %i.apg = getelementptr inbounds nuw i8, ptr %6, i64 84
  %i.aph = load i32, ptr %i.apg, align 4, !tbaa !30
  %.not.i.i.i.i = icmp eq i32 %i.aph, 0
  br i1 %.not.i.i.i.i, label %entropy_decoder_close.exit.i.i, label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  %i.api = getelementptr inbounds nuw i8, ptr %6, i64 72 ; 2 uses
  %i.apj = load ptr, ptr %i.api, align 8, !tbaa !31
  %.not8.i.i.i.i = icmp eq ptr %i.apj, null
  br i1 %.not8.i.i.i.i, label %entropy_decoder_close.exit.i.i, label %.preheader.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %bb.fr
  %i.apk = getelementptr inbounds nuw i8, ptr %6, i64 80 ; 2 uses
  %i.apl = load i32, ptr %i.apk, align 8, !tbaa !32
  %i.apm = icmp sgt i32 %i.apl, 0
  br i1 %i.apm, label %.lr.ph.i.i.i.i, label %entropy_decoder_close.exit.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.preheader.i.i.i.i, %.lr.ph.i.i.i.i
  %indvars.iv.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %.preheader.i.i.i.i ] ; 2 uses
  %i.apn = load ptr, ptr %i.api, align 8, !tbaa !31
  %i.apo = getelementptr inbounds nuw [2640 x i8], ptr %i.apn, i64 %indvars.iv.i.i.i.i
  %i.app = getelementptr inbounds nuw i8, ptr %i.apo, i64 24
  call void @ff_vlc_free(ptr noundef nonnull %i.app) #10
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %i.apq = load i32, ptr %i.apk, align 8, !tbaa !32
  %i.apr = sext i32 %i.apq to i64
  %i.aps = icmp slt i64 %indvars.iv.next.i.i.i.i, %i.apr
  br i1 %i.aps, label %.lr.ph.i.i.i.i, label %entropy_decoder_close.exit.i.i, !llvm.loop !0

entropy_decoder_close.exit.i.i:                   ; preds = %.lr.ph.i.i.i.i, %.preheader.i.i.i.i, %bb.fr, %bb.fq
  %i.apt = getelementptr inbounds nuw i8, ptr %6, i64 72
  call void @av_freep(ptr noundef nonnull %i.apt) #10
  %i.apu = getelementptr inbounds nuw i8, ptr %6, i64 56
  call void @av_freep(ptr noundef nonnull %i.apu) #10
  br label %.thread593.i.i

bb.fs:                                            ; preds = %entropy_decoder_init.exit.i.i
  %.not.i.i451.i.i = icmp ult i32 %.0239.i.i, 65536 ; 2 uses
  %i.apv = lshr i32 %.0239.i.i, 16
  %spec.select.i.i.i.i = select i1 %.not.i.i451.i.i, i32 %.0239.i.i, i32 %i.apv ; 3 uses
  %spec.select12.i.i.i.i = select i1 %.not.i.i451.i.i, i32 0, i32 16 ; 2 uses
  %.not11.i.i.i.i = icmp samesign ult i32 %spec.select.i.i.i.i, 256 ; 2 uses
  %i.apw = lshr i32 %spec.select.i.i.i.i, 8
  %i.apx = or disjoint i32 %spec.select12.i.i.i.i, 8
  %.110.i.i.i.i = select i1 %.not11.i.i.i.i, i32 %spec.select.i.i.i.i, i32 %i.apw
  %.1.i.i.i.i = select i1 %.not11.i.i.i.i, i32 %spec.select12.i.i.i.i, i32 %i.apx
  %i.apy = zext nneg i32 %.110.i.i.i.i to i64
  %i.apz = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.apy
  %i.aqa = load i8, ptr %i.apz, align 1, !tbaa !15
  %i.aqb = zext i8 %i.aqa to i32
  %i.aqc = icmp ne i32 %.0239.i.i, 0
  %i.aqd = zext i1 %i.aqc to i32
  %i.aqe = or disjoint i32 %.1.i.i.i.i, %i.aqd
  %i.aqf = add nuw nsw i32 %i.aqe, %i.aqb
  %spec.select.i452.i.i = call range(i32 0, 8) i32 @llvm.umin.i32(i32 %i.aqf, i32 7)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  %i.aqg = call fastcc i32 @decode_hybrid_varlen_uint(ptr noundef nonnull %7, ptr noundef nonnull %6, ptr noundef %i.ev, i32 noundef range(i32 0, 41) %spec.select.i452.i.i, ptr noundef %i.b) ; 2 uses
  %i.aqh = icmp slt i32 %i.aqg, 0
  %i.aqi = sext i32 %i.aqg to i64
  %i.aqj = load i32, ptr %i.b, align 4
  %i.aqk = zext i32 %i.aqj to i64
  %.0.i453.i.i = select i1 %i.aqh, i64 %i.aqi, i64 %i.aqk ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  %i.aql = icmp slt i64 %.0.i453.i.i, 0
  %i.aqm = zext i32 %.0239.i.i to i64
  %i.aqn = icmp sgt i64 %.0.i453.i.i, %i.aqm
  %or.cond312.i.i = select i1 %i.aql, i1 true, i1 %i.aqn
  br i1 %or.cond312.i.i, label %bb.ft, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.fs
  %.not304616.not.i.i = icmp eq i64 %.0.i453.i.i, 0
  br i1 %.not304616.not.i.i, label %._crit_edge.i.i, label %.lr.ph619.i.i

bb.ft:                                            ; preds = %bb.fs
  call fastcc void @entropy_decoder_close(ptr noundef %6)
  br label %.thread593.i.i

bb.fu:                                            ; preds = %bb.fv
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i.i, %.0.i453.i.i
  br i1 %exitcond.not.i, label %._crit_edge.i.i, label %.lr.ph619.i.i, !llvm.loop !56

.lr.ph619.i.i:                                    ; preds = %.preheader.i.i, %bb.fu
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.fu ], [ 0, %.preheader.i.i ]
  %.0227617.i.i = phi i64 [ %.0.i461.i.i, %bb.fu ], [ 0, %.preheader.i.i ] ; 3 uses
  %i.aqo = trunc nuw i64 %.0227617.i.i to i32     ; 2 uses
  %.not.i.i454.i.i = icmp samesign ult i64 %.0227617.i.i, 65536 ; 2 uses
  %i.aqp = lshr i32 %i.aqo, 16
  %spec.select.i.i455.i.i = select i1 %.not.i.i454.i.i, i32 %i.aqo, i32 %i.aqp ; 3 uses
  %spec.select12.i.i456.i.i = select i1 %.not.i.i454.i.i, i32 0, i32 16 ; 2 uses
  %.not11.i.i457.i.i = icmp samesign ult i32 %spec.select.i.i455.i.i, 256 ; 2 uses
  %i.aqq = lshr i32 %spec.select.i.i455.i.i, 8
  %i.aqr = or disjoint i32 %spec.select12.i.i456.i.i, 8
  %.110.i.i458.i.i = select i1 %.not11.i.i457.i.i, i32 %spec.select.i.i455.i.i, i32 %i.aqq
  %.1.i.i459.i.i = select i1 %.not11.i.i457.i.i, i32 %spec.select12.i.i456.i.i, i32 %i.aqr
  %i.aqs = zext nneg i32 %.110.i.i458.i.i to i64
  %i.aqt = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.aqs
  %i.aqu = load i8, ptr %i.aqt, align 1, !tbaa !15
  %i.aqv = zext i8 %i.aqu to i32
  %i.aqw = icmp ne i64 %.0227617.i.i, 0
  %i.aqx = zext i1 %i.aqw to i32
  %i.aqy = add nuw nsw i32 %i.aqv, %i.aqx
  %i.aqz = add nuw nsw i32 %i.aqy, %.1.i.i459.i.i
  %spec.select.i460.i.i = call range(i32 0, 8) i32 @llvm.umin.i32(i32 %i.aqz, i32 7)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.ara = call fastcc i32 @decode_hybrid_varlen_uint(ptr noundef nonnull %7, ptr noundef nonnull %6, ptr noundef %i.ev, i32 noundef range(i32 0, 41) %spec.select.i460.i.i, ptr noundef %i.a) ; 2 uses
  %i.arb = icmp slt i32 %i.ara, 0
  %i.arc = sext i32 %i.ara to i64
  %i.ard = load i32, ptr %i.a, align 4
  %i.are = zext i32 %i.ard to i64
  %.0.i461.i.i = select i1 %i.arb, i64 %i.arc, i64 %i.are ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  %i.arf = icmp slt i64 %.0.i461.i.i, 0
  br i1 %i.arf, label %.thread590.i.i, label %bb.fv

bb.fv:                                            ; preds = %.lr.ph619.i.i
  %.val352.i.i = load i32, ptr %i.dv, align 8, !tbaa !21
  %.val353.i.i = load i32, ptr %i.ds, align 4, !tbaa !19
  %i.arg = icmp slt i32 %.val353.i.i, %.val352.i.i
  br i1 %i.arg, label %.thread590.i.i, label %bb.fu

.thread590.i.i:                                   ; preds = %bb.fv, %.lr.ph619.i.i
  call fastcc void @entropy_decoder_close(ptr noundef %6)
  br label %.thread593.i.i

.thread593.i.i:                                   ; preds = %.thread590.i.i, %bb.ft, %entropy_decoder_close.exit.i.i, %entropy_decoder_init.exit.thread.i.i, %._crit_edge670.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  br label %try_parse.exit.thread

._crit_edge.i.i:                                  ; preds = %bb.fu, %.preheader.i.i
  call fastcc void @entropy_decoder_close(ptr noundef %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  %.val.i462.pre.i.i = load i32, ptr %i.dv, align 8, !tbaa !21
  br label %bb.fw

bb.fw:                                            ; preds = %._crit_edge.i.i, %bb.fl
  %.val.i462.i.i = phi i32 [ %.val.i462.pre.i.i, %._crit_edge.i.i ], [ %spec.select.i450.i.i, %bb.fl ] ; 3 uses
  %i.arh = sub nsw i32 0, %.val.i462.i.i
  %i.ari = and i32 %i.arh, 7                      ; 2 uses
  %.not.i463.i.i = icmp eq i32 %i.ari, 0
  br i1 %.not.i463.i.i, label %align_get_bits.exit.i.i, label %bb.fx

bb.fx:                                            ; preds = %bb.fw
  %i.arj = load i32, ptr %i.du, align 8, !tbaa !20
  %i.ark = add i32 %i.ari, %.val.i462.i.i
  %i.arl = call i32 @llvm.umin.i32(i32 %i.arj, i32 %i.ark) ; 2 uses
  store i32 %i.arl, ptr %i.dv, align 8, !tbaa !21
  br label %align_get_bits.exit.i.i

align_get_bits.exit.i.i:                          ; preds = %bb.fx, %bb.fw
  %.promoted624.i.i = phi i32 [ %.val.i462.i.i, %bb.fw ], [ %i.arl, %bb.fx ] ; 2 uses
  %i.arm = load ptr, ptr %7, align 8, !tbaa !18   ; 4 uses
  %.not305620.not.i.i = icmp eq i32 %.0239.i.i, 0
  br i1 %.not305620.not.i.i, label %._crit_edge623.i.i, label %.lr.ph622.i.i

.lr.ph622.i.i:                                    ; preds = %align_get_bits.exit.i.i
  %i.arn = load i32, ptr %i.du, align 8, !tbaa !20 ; 4 uses
  %.val351.i.i = load i32, ptr %i.ds, align 4, !tbaa !19
  %.promoted625.i.i = load i32, ptr %i.ew, align 4, !tbaa !113
  br label %bb.fz

bb.fy:                                            ; preds = %jxl_u32.exit.i.i
  %i.aro = add nuw i32 %.0621.i.i, 1              ; 2 uses
  %exitcond639.not.i.i = icmp eq i32 %i.aro, %.0239.i.i
  br i1 %exitcond639.not.i.i, label %._crit_edge623.i.i, label %bb.fz, !llvm.loop !57

bb.fz:                                            ; preds = %bb.fy, %.lr.ph622.i.i
  %i.arp = phi i32 [ %.promoted625.i.i, %.lr.ph622.i.i ], [ %i.atl, %bb.fy ]
  %i.arq = phi i32 [ %.promoted624.i.i, %.lr.ph622.i.i ], [ %i.atj, %bb.fy ] ; 3 uses
  %.0621.i.i = phi i32 [ 0, %.lr.ph622.i.i ], [ %i.aro, %bb.fy ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y) #10
  store <4 x i32> <i32 0, i32 1024, i32 17408, i32 4211712>, ptr %i.y, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z) #10
  store <4 x i32> <i32 10, i32 14, i32 22, i32 30>, ptr %i.z, align 16, !tbaa !13
  %i.arr = lshr i32 %i.arq, 3
  %i.ars = zext nneg i32 %i.arr to i64
  %i.art = getelementptr inbounds nuw i8, ptr %i.arm, i64 %i.ars
  %i.aru = load i32, ptr %i.art, align 1, !tbaa !15
  %i.arv = and i32 %i.arq, 7
  %i.arw = lshr i32 %i.aru, %i.arv
  %i.arx = and i32 %i.arw, 3
  %i.ary = add i32 %i.arq, 2
  %i.arz = call i32 @llvm.umin.i32(i32 %i.arn, i32 %i.ary) ; 6 uses
  store i32 %i.arz, ptr %i.dv, align 8, !tbaa !21
  %i.asa = zext nneg i32 %i.arx to i64            ; 2 uses
  %i.asb = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.asa
  %i.asc = load i32, ptr %i.asb, align 4, !tbaa !13 ; 2 uses
  %i.asd = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.asa
  %i.ase = load i32, ptr %i.asd, align 4, !tbaa !13 ; 6 uses
  %.not.i.i.i = icmp eq i32 %i.ase, 0
  br i1 %.not.i.i.i, label %jxl_u32.exit.i.i, label %bb.ga

bb.ga:                                            ; preds = %bb.fz
  %i.asf = icmp slt i32 %i.ase, 26
  %i.asg = lshr i32 %i.arz, 3
  %i.ash = zext nneg i32 %i.asg to i64
  %i.asi = getelementptr inbounds nuw i8, ptr %i.arm, i64 %i.ash
  %i.asj = load i32, ptr %i.asi, align 1, !tbaa !15
  %i.ask = and i32 %i.arz, 7
  %i.asl = lshr i32 %i.asj, %i.ask                ; 2 uses
  br i1 %i.asf, label %bb.gb, label %bb.gc

bb.gb:                                            ; preds = %bb.ga
  %i.asm = sub i32 32, %i.ase
  %i.asn = lshr i32 -1, %i.asm
  %i.aso = and i32 %i.asl, %i.asn
  %i.asp = add i32 %i.ase, %i.arz
  %i.asq = call i32 @llvm.umin.i32(i32 %i.arn, i32 %i.asp)
  br label %get_bits_long.exit466.i.i

bb.gc:                                            ; preds = %bb.ga
  %i.asr = and i32 %i.asl, 65535
  %i.ass = add i32 %i.arz, 16
  %i.ast = call i32 @llvm.umin.i32(i32 %i.arn, i32 %i.ass) ; 4 uses
  store i32 %i.ast, ptr %i.dv, align 8, !tbaa !21
  %i.asu = lshr i32 %i.ast, 3
  %i.asv = zext nneg i32 %i.asu to i64
  %i.asw = getelementptr inbounds nuw i8, ptr %i.arm, i64 %i.asv
  %i.asx = load i32, ptr %i.asw, align 1, !tbaa !15
  %i.asy = and i32 %i.ast, 7
  %i.asz = lshr i32 %i.asx, %i.asy
  %i.ata = sub nsw i32 48, %i.ase
  %i.atb = lshr i32 -1, %i.ata
  %i.atc = and i32 %i.asz, %i.atb
  %i.atd = add i32 %i.ast, -16
  %i.ate = add i32 %i.atd, %i.ase
  %i.atf = call i32 @llvm.umin.i32(i32 %i.arn, i32 %i.ate)
  %i.atg = shl i32 %i.atc, 16
  %i.ath = or disjoint i32 %i.atg, %i.asr
  br label %get_bits_long.exit466.i.i

get_bits_long.exit466.i.i:                        ; preds = %bb.gc, %bb.gb
  %.sink650.i.i = phi i32 [ %i.asq, %bb.gb ], [ %i.atf, %bb.gc ] ; 2 uses
  %.0.i465.i.i = phi i32 [ %i.aso, %bb.gb ], [ %i.ath, %bb.gc ]
  store i32 %.sink650.i.i, ptr %i.dv, align 8, !tbaa !21
  %i.ati = add i32 %.0.i465.i.i, %i.asc
  br label %jxl_u32.exit.i.i

jxl_u32.exit.i.i:                                 ; preds = %get_bits_long.exit466.i.i, %bb.fz
  %i.atj = phi i32 [ %.sink650.i.i, %get_bits_long.exit466.i.i ], [ %i.arz, %bb.fz ] ; 3 uses
  %.0.i.i89.i = phi i32 [ %i.ati, %get_bits_long.exit466.i.i ], [ %i.asc, %bb.fz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y) #10
  %i.atk = shl i32 %.0.i.i89.i, 3
  %i.atl = add i32 %i.atk, %i.arp                 ; 2 uses
  store i32 %i.atl, ptr %i.ew, align 4, !tbaa !113
  %i.atm = icmp slt i32 %.val351.i.i, %i.atj
  br i1 %i.atm, label %try_parse.exit.thread, label %bb.fy

._crit_edge623.i.i:                               ; preds = %bb.fy, %align_get_bits.exit.i.i
  %.val.i467.i.i = phi i32 [ %.promoted624.i.i, %align_get_bits.exit.i.i ], [ %i.atj, %bb.fy ] ; 3 uses
  %i.atn = sub nsw i32 0, %.val.i467.i.i
  %i.ato = and i32 %i.atn, 7                      ; 2 uses
  %.not.i468.i.i = icmp eq i32 %i.ato, 0
  br i1 %.not.i468.i.i, label %bb.ge, label %bb.gd

bb.gd:                                            ; preds = %._crit_edge623.i.i
  %i.atp = load i32, ptr %i.du, align 8, !tbaa !20
  %i.atq = add i32 %i.ato, %.val.i467.i.i
  %i.atr = call i32 @llvm.umin.i32(i32 %i.atp, i32 %i.atq)
  br label %bb.ge

bb.ge:                                            ; preds = %bb.gd, %._crit_edge623.i.i
  %.val81.i = phi i32 [ %.val.i467.i.i, %._crit_edge623.i.i ], [ %i.atr, %bb.gd ] ; 5 uses
  %i.ats = load i32, ptr %i.ew, align 4, !tbaa !113 ; 4 uses
  %i.att = sub i32 %i.ats, %.val349.i.i
  %i.atu = add i32 %i.att, %.val81.i              ; 2 uses
  store i32 %i.atu, ptr %i.ex, align 8, !tbaa !114
  %i.atv = zext i32 %i.atu to i64
  %i.atw = load i64, ptr %i.bh, align 8, !tbaa !71
  %i.atx = add nsw i64 %i.atw, %i.atv             ; 2 uses
  store i64 %i.atx, ptr %i.bh, align 8, !tbaa !71
  %i.aty = load i32, ptr %i.en, align 8, !tbaa !115
  %.not79.i = icmp eq i32 %i.aty, 0
  br i1 %.not79.i, label %bb.gg, label %bb.gf

bb.gf:                                            ; preds = %bb.ge
  %i.atz = sdiv i64 %i.atx, 8
  br label %try_parse.exit

bb.gg:                                            ; preds = %bb.ge
  %.val82.i = load i32, ptr %i.ds, align 4, !tbaa !19
  %i.aua = sub nsw i32 %.val82.i, %.val81.i
  %.not80.i = icmp ugt i32 %i.aua, %i.ats
  br i1 %.not80.i, label %bb.gh, label %try_parse.exit.thread
end_hunk_0
